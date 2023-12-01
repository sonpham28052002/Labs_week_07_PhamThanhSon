package vn.edu.iuh.fit.labs_07_week_07_phamthanhson.entities;

import com.fasterxml.jackson.annotation.JsonIdentityInfo;
import com.fasterxml.jackson.annotation.JsonIgnoreProperties;
import com.fasterxml.jackson.annotation.JsonProperty;
import com.fasterxml.jackson.annotation.ObjectIdGenerators;
import jakarta.persistence.*;
import lombok.*;
import vn.edu.iuh.fit.labs_07_week_07_phamthanhson.id.ProductImageID;


@Entity
@Table(name = "product_image")
@AllArgsConstructor
@NoArgsConstructor
@Setter
@Getter
@Builder
@IdClass(ProductImageID.class)
@JsonIdentityInfo(generator = ObjectIdGenerators.PropertyGenerator.class, property = "image_id")
@JsonIgnoreProperties(value = {"hibernateLazyInitializer", "handler"})
public class ProductImage {
    @Id
    @Column(name = "image_id", columnDefinition = "bigint(20)")
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @JsonProperty("image_id")
    private long image_id;

    @Id
    @ManyToOne(fetch = FetchType.LAZY)
    @JoinColumn(name = "product_id")
    @JsonProperty("product")
    private Product product;

    @Column(columnDefinition = "nvarchar(250)")
    @JsonProperty("alternative")
    private String alternative;

    @Column(columnDefinition = "nvarchar(250)")
    @JsonProperty("path")
    private String path;

    @Override
    public String toString() {
        return "ProductImage{" +
                "image_id=" + this.image_id +
                ", alternative='" + this.alternative + '\'' +
                ", path='" + this.path + '\'' +
                '}';
    }
}
