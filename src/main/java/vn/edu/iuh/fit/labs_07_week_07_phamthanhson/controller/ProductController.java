package vn.edu.iuh.fit.labs_07_week_07_phamthanhson.controller;

import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import vn.edu.iuh.fit.labs_07_week_07_phamthanhson.entities.*;
import vn.edu.iuh.fit.labs_07_week_07_phamthanhson.repositories.EmployeeRepository;
import vn.edu.iuh.fit.labs_07_week_07_phamthanhson.repositories.OrderDetailRepository;
import vn.edu.iuh.fit.labs_07_week_07_phamthanhson.repositories.OrderRepository;
import vn.edu.iuh.fit.labs_07_week_07_phamthanhson.repositories.ProductRepository;

import java.time.LocalDate;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

@Controller
@RequestMapping("product")
public class ProductController {

    @Autowired
    private ProductRepository productRepository;
    @Autowired
    private OrderDetailRepository orderDetailRepository;
    @Autowired
    private OrderRepository orderRepository;
    @Autowired
    private EmployeeRepository employeeRepository;
    @GetMapping("/addProduct")
    public String addCart(HttpServletRequest request , Model model){
        HttpSession session = request.getSession();
        Map<Product,Integer> cart = (Map<Product, Integer>) session.getAttribute("cart");
        long product_id = Long.parseLong(request.getParameter("id"));
        int soLuong = Integer.parseInt(request.getParameter("soLuong"));
        Product product = productRepository.findById(product_id).get();
        System.out.println();
        System.out.println(product.getProductPriceList());
        System.out.println("cart");
        boolean check = false;
        cart.put(product,soLuong);
        for (Map.Entry<Product,Integer> entry: cart.entrySet()) {
            if (entry.getKey().equals(product)){
                cart.computeIfPresent(entry.getKey(), (k, v) -> soLuong);
                break;
            }
        }
        request.getSession().setAttribute("cart",cart);
        List<Product> products = productRepository.findAll();
        model.addAttribute("products",products);
        return "addProduct";
    }

    @GetMapping("/cart")
    public String cart(HttpServletRequest request ,Model model){
        HttpSession session = request.getSession();
        double total =0;
        Map<Product,Integer> cart = (Map<Product, Integer>) session.getAttribute("cart");
        for (Map.Entry<Product,Integer> i: cart.entrySet()) {
            double price = i.getKey().getProductPriceList().get(i.getKey().getProductPriceList().size()-1).getPrice();
            int quantity = i.getValue();
            total+=price*quantity;
        }
        session.setAttribute("total",total);
        return "cart";
    }
    @GetMapping("/continueShopping")
    public String continueShopping(Model model){
        List<Product> products = productRepository.findAll();
        model.addAttribute("products",products);
        return "addProduct";
    }

    @GetMapping("/Payment")
    public String payment(Model model, HttpServletRequest request){
        try {
            Customer customer = (Customer) request.getSession().getAttribute("user");
            long empl_id = 1;
            Employee employee = employeeRepository.findById(empl_id).get();
            System.out.println(customer);
            System.out.println(employee);

            Order orderNew = Order.builder().orderDate(LocalDate.now())
                    .customer(customer)
                    .employee(employee)
                    .build();
            Order order = orderRepository.save(orderNew);
            Map<Product,Integer> cart = (Map<Product, Integer>) request.getSession().getAttribute("cart");
            for (Map.Entry<Product,Integer> i: cart.entrySet()) {
                Product product = productRepository.findById(i.getKey().getProductId()).get();
                OrderDetail orderDetail= OrderDetail.builder()
                        .order(order)
                        .note("")
                        .product(product)
                        .price(product.getProductPriceList().get(product.getProductPriceList().size()-1).getPrice())
                        .quantity(i.getValue()).build();
                orderDetailRepository.save(orderDetail);
            }
            double total = (double) request.getSession().getAttribute("total");
            request.getSession().removeAttribute("cart");
            System.out.println("ASKASs");
            System.out.println(request.getSession().getAttribute("cart"));
            request.removeAttribute("total");
            model.addAttribute("total",total);
            return "orderSuccess";
        }catch (Exception exception){
            return "orderFail";
        }

    }

    @GetMapping("/successGoBack")
    public String successGoBack(Model model ,HttpServletRequest request){
        Map<Product,Integer> cart = new HashMap<>();
        request.getSession().setAttribute("cart",cart);
        List<Product> products = productRepository.findAll();
        model.addAttribute("products",products);
        return "addProduct";
    }

    @GetMapping("/thongkeMua")
    public String thongkeMua(){
        return "thongke";
    }
}
