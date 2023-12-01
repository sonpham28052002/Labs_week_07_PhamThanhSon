package vn.edu.iuh.fit.labs_07_week_07_phamthanhson.id;

import lombok.*;
import vn.edu.iuh.fit.labs_07_week_07_phamthanhson.entities.Product;

import java.io.Serializable;

@AllArgsConstructor
@NoArgsConstructor
@Getter
@Setter
@EqualsAndHashCode
public class ProductImageID implements Serializable {
    private long image_id;
    private Product product;

}
