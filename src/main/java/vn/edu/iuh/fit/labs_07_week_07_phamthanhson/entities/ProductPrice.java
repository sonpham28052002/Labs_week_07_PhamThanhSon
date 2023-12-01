package vn.edu.iuh.fit.labs_07_week_07_phamthanhson.entities;

import com.fasterxml.jackson.annotation.JsonBackReference;
import com.fasterxml.jackson.annotation.JsonFormat;
import com.fasterxml.jackson.databind.annotation.JsonSerialize;
import com.fasterxml.jackson.datatype.jsr310.ser.LocalDateSerializer;
import jakarta.persistence.*;
import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;
import vn.edu.iuh.fit.labs_07_week_07_phamthanhson.id.ProductPriceID;

import java.io.Serializable;
import java.time.LocalDate;

@Entity(name = "product_price")
@Table(name = "product_price")
@Getter
@Setter
@AllArgsConstructor
@NoArgsConstructor
@IdClass(ProductPriceID.class)
public class ProductPrice implements Serializable {
    @Id
    @Column(name = "price_date_time", columnDefinition = "datetime(6)")
    @JsonFormat(shape = JsonFormat.Shape.STRING, pattern = "yyyy-MM-dd")
    @JsonSerialize(using = LocalDateSerializer.class)
    private LocalDate priceDateTime;

    @Column(columnDefinition = "nvarchar(255)")
    private String note;

    private double price;
    @Id
    @ManyToOne(fetch = FetchType.LAZY)
    @JoinColumn(name = "product_id",columnDefinition = "bigint(20)")
    @JsonBackReference
    private Product product;

    @Override
    public String toString() {
        return "ProductPrice{" +
                "priceDateTime=" + priceDateTime +
                ", note='" + note + '\'' +
                ", price=" + price +
                ", product=" + product +
                '}';
    }
}
