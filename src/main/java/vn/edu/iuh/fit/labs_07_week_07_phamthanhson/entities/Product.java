package vn.edu.iuh.fit.labs_07_week_07_phamthanhson.entities;

import com.fasterxml.jackson.annotation.*;
import jakarta.persistence.*;
import lombok.*;
import vn.edu.iuh.fit.labs_07_week_07_phamthanhson.enums.ProductStatus;

import java.io.Serializable;
import java.util.ArrayList;
import java.util.List;
import java.util.Objects;

@Entity
@Table(name = "product")
@JsonIdentityInfo(generator = ObjectIdGenerators.PropertyGenerator.class, property = "productId")
@JsonIgnoreProperties(value = {"hibernateLazyInitializer", "handler"})
@Getter
@Setter
@NoArgsConstructor
@AllArgsConstructor
@EqualsAndHashCode(exclude = {"productId"})
public class Product implements Serializable {
    @Id
    @Column(name = "product_id", columnDefinition = "bigint(20)")
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @JsonProperty("productId")
    private long productId;
    @Column(columnDefinition = "nvarchar(250)")
    @JsonProperty("description")
    private String description;
    @Column(columnDefinition = "nvarchar(100)")
    @JsonProperty("manufacturer")
    private String manufacturer;
    @Column(columnDefinition = "nvarchar(100)")
    @JsonProperty("name")
    private String name;
    @Column(columnDefinition = "int(11)")
    @JsonProperty("status")
    private ProductStatus status;
    @Column(columnDefinition = "nvarchar(25)")
    @JsonProperty("unit")
    private String unit;

    @OneToMany(mappedBy = "product",cascade = CascadeType.ALL)
    private List<ProductImage> productImageList = new ArrayList<>();
    @OneToMany(mappedBy = "product",cascade = CascadeType.ALL)
//    @JsonManagedReference
    private List<OrderDetail> orderDetailList = new ArrayList<>();
    @OneToMany(mappedBy = "product",cascade = CascadeType.ALL)
    @JsonManagedReference
    private List<ProductPrice> productPriceList=new ArrayList<>();
    @Override
    public String toString() {
        return "Product{" +
                "productId=" + productId +
                ", description='" + description + '\'' +
                ", manufacturer='" + manufacturer + '\'' +
                ", name='" + name + '\'' +
                ", status=" + status +
                ", unit='" + unit + '\'' +
                '}';
    }

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (o == null || getClass() != o.getClass()) return false;
        Product product = (Product) o;
        return productId == product.productId;
    }

    @Override
    public int hashCode() {
        return Objects.hash(productId);
    }
}
