package vn.edu.iuh.fit.labs_07_week_07_phamthanhson.entities;

import com.fasterxml.jackson.annotation.JsonFormat;
import com.fasterxml.jackson.annotation.JsonIdentityInfo;
import com.fasterxml.jackson.annotation.JsonIgnoreProperties;
import com.fasterxml.jackson.annotation.ObjectIdGenerators;
import com.fasterxml.jackson.databind.annotation.JsonSerialize;
import com.fasterxml.jackson.datatype.jsr310.ser.LocalDateSerializer;
import jakarta.persistence.*;
import lombok.*;

import java.io.Serializable;
import java.time.LocalDate;
import java.util.ArrayList;
import java.util.List;

@Entity
@Table(name = "orders")
@JsonIdentityInfo(generator = ObjectIdGenerators.PropertyGenerator.class, property = "order_id")
@JsonIgnoreProperties(value = {"hibernateLazyInitializer", "handler"})
@Getter
@Setter
@NoArgsConstructor
@AllArgsConstructor
@EqualsAndHashCode(exclude = {"order_id"})
@Builder
public class Order implements Serializable {
    @Id
    @Column( name = "order_id",columnDefinition = "bigint(20)")
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private long order_id;

    @Column(columnDefinition = "datetime(6)")
    @JsonFormat(shape = JsonFormat.Shape.STRING, pattern = "yyyy-MM-dd")
    @JsonSerialize(using = LocalDateSerializer.class)
    private LocalDate orderDate;
    @ManyToOne
    @JoinColumn(name = "cus_id")
    private Customer customer;
    @ManyToOne
    @JoinColumn(name = "employee_id", nullable = false)
    private Employee employee;

    @OneToMany(mappedBy = "order",cascade = CascadeType.ALL)
//    @JsonManagedReference
    private List<OrderDetail> orderDetailList = new ArrayList<OrderDetail>();

    @Override
    public String toString() {
        return "Order{" +
                "order_id=" + order_id +
                ", orderDate=" + orderDate +
                ", customer=" + customer +
                ", employee=" + employee +
                '}';
    }
}
