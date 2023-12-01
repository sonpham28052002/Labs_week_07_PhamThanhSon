package vn.edu.iuh.fit.labs_07_week_07_phamthanhson.repositories;

import org.springframework.data.domain.Pageable;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;
import vn.edu.iuh.fit.labs_07_week_07_phamthanhson.entities.Order;

import java.util.List;

@Repository

public interface OrderRepository extends JpaRepository<Order, Long> {
    @Query("SELECT o.orderDate,sum(odt.price* odt.quantity) FROM Order o INNER JOIN OrderDetail odt ON o.order_id = odt.order.order_id where o.customer.id = ?1 GROUP BY o.orderDate order by o.orderDate desc ")
    public List<Object[]> thongKeSoTienDaMua(long cus_id, Pageable pageable);
}