package vn.edu.iuh.fit.labs_07_week_07_phamthanhson.controller;

import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import vn.edu.iuh.fit.labs_07_week_07_phamthanhson.entities.Customer;
import vn.edu.iuh.fit.labs_07_week_07_phamthanhson.entities.Product;
import vn.edu.iuh.fit.labs_07_week_07_phamthanhson.repositories.CustomerRepository;
import vn.edu.iuh.fit.labs_07_week_07_phamthanhson.repositories.ProductRepository;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

@Controller("/login")
@RequestMapping("/login")
public class Login {
    @Autowired
    private CustomerRepository customerRepository;

    @Autowired
    private ProductRepository productRepository;
    @PostMapping
    public String login(HttpServletRequest request, Model model){



        String email = request.getParameter("email");
        Map<Product,Integer> cart = new HashMap<>();
        Customer customer = customerRepository.getCustomersByEmail(email);
        if (customer == null){
            return "index";
        }
        HttpSession session = request.getSession();
        session.setAttribute("user",customer);
        session.setAttribute("cart",cart);
        List<Product> products = productRepository.findAll();
        model.addAttribute("products",products);
        return "addProduct";
    }
    @GetMapping("/Logout")
    public String logout(HttpServletRequest request){
        request.getSession().removeAttribute("user");
        request.getSession().removeAttribute("cart");
        return "index";
    }
}
