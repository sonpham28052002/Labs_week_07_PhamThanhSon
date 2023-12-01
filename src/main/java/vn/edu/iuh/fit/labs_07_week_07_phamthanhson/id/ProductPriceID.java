package vn.edu.iuh.fit.labs_07_week_07_phamthanhson.id;

import lombok.*;
import vn.edu.iuh.fit.labs_07_week_07_phamthanhson.entities.Product;

import java.io.Serializable;
import java.time.LocalDate;
@Getter
@Setter
@AllArgsConstructor
@NoArgsConstructor
@EqualsAndHashCode
public class ProductPriceID implements Serializable {
    private LocalDate priceDateTime;
    private Product product;
}
