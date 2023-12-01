package vn.edu.iuh.fit.labs_07_week_07_phamthanhson.entities;

import com.fasterxml.jackson.annotation.JsonIdentityInfo;
import com.fasterxml.jackson.annotation.JsonIgnoreProperties;
import com.fasterxml.jackson.annotation.ObjectIdGenerators;
import jakarta.persistence.*;
import lombok.*;
import vn.edu.iuh.fit.labs_07_week_07_phamthanhson.id.OrderDetailID;

import java.io.Serializable;

@Entity
@Table(name = "order_detail")
@IdClass(OrderDetailID.class)
@Getter
@Setter
@AllArgsConstructor
@NoArgsConstructor
@Builder
public class OrderDetail implements Serializable {
    @Id
    @JoinColumn(name = "order_id")
    @ManyToOne
    @JsonIdentityInfo(generator = ObjectIdGenerators.PropertyGenerator.class,property = "order_id")
    @JsonIgnoreProperties(value = {"orderDate","customer","employee","orderDetailList"})
    private Order order;

    @Id
    @JoinColumn(name = "product_id")
    @ManyToOne(fetch = FetchType.LAZY)
    @JsonIdentityInfo(generator = ObjectIdGenerators.PropertyGenerator.class,property = "productId")
    @JsonIgnoreProperties(value = {"productImageList","orderDetailList","productPriceList","description","manufacturer","name","status","unit"})
    private Product product;


    @Column(columnDefinition = "nvarchar(255)")
    private String note;

    @Column
    private double price;

    @Column
    private double quantity;


    @Override
    public String toString() {
        return "OrderDetail{" +
                "product=" + product +
                ", order=" + order +
                ", note='" + note + '\'' +
                ", price=" + price +
                ", quantity=" + quantity +
                '}';
    }


}
