package vn.edu.iuh.fit.labs_07_week_07_phamthanhson.id;

import lombok.*;
import vn.edu.iuh.fit.labs_07_week_07_phamthanhson.entities.Order;
import vn.edu.iuh.fit.labs_07_week_07_phamthanhson.entities.Product;

import java.io.Serializable;

@Getter
@Setter
@AllArgsConstructor
@NoArgsConstructor
@EqualsAndHashCode
public class OrderDetailID implements Serializable {
    private Product product;
    private Order order;
}
