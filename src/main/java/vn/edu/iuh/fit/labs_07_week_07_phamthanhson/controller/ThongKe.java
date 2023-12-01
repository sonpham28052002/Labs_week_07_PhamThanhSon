package vn.edu.iuh.fit.labs_07_week_07_phamthanhson.controller;

import jakarta.servlet.http.HttpServletRequest;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.PageRequest;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;
import vn.edu.iuh.fit.labs_07_week_07_phamthanhson.dto.ThongKeDTO;
import vn.edu.iuh.fit.labs_07_week_07_phamthanhson.entities.Customer;
import vn.edu.iuh.fit.labs_07_week_07_phamthanhson.repositories.OrderRepository;

import java.awt.print.Pageable;
import java.time.LocalDate;
import java.util.ArrayList;
import java.util.List;

@RestController
@RequestMapping("thongKe")
public class ThongKe {
    @Autowired
    private OrderRepository orderRepository;
    @GetMapping("/thongKeMua")
    public List<ThongKeDTO> thongKes(HttpServletRequest request){
        Customer customer = (Customer) request.getSession().getAttribute("user");
        List<ThongKeDTO> thongKes = new ArrayList<>();
        for (Object[] thongKe:orderRepository.thongKeSoTienDaMua(customer.getId(), PageRequest.of(0,3))) {
            ThongKeDTO thongKe1 = new ThongKeDTO(LocalDate.parse(thongKe[0].toString()),Double.parseDouble(thongKe[1].toString()));
            thongKes.add(thongKe1);
        }
        return thongKes;
    }

    @GetMapping("/thongKeAll")
    public List<ThongKeDTO> thongKeAll(HttpServletRequest request){
        Customer customer = (Customer) request.getSession().getAttribute("user");
        List<ThongKeDTO> thongKes = new ArrayList<>();
        for (Object[] thongKe:orderRepository.thongKeSoTienDaMua(customer.getId(), PageRequest.of(0,Integer.MAX_VALUE))) {
            ThongKeDTO thongKe1 = new ThongKeDTO(LocalDate.parse(thongKe[0].toString()),Double.parseDouble(thongKe[1].toString()));
            thongKes.add(thongKe1);
        }
        return thongKes;
    }
}
