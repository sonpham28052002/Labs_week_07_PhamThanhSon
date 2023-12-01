package vn.edu.iuh.fit.labs_07_week_07_phamthanhson.repositories;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;
import vn.edu.iuh.fit.labs_07_week_07_phamthanhson.entities.OrderDetail;
import vn.edu.iuh.fit.labs_07_week_07_phamthanhson.id.OrderDetailID;
@Repository
public interface OrderDetailRepository extends JpaRepository<OrderDetail, OrderDetailID> {
}