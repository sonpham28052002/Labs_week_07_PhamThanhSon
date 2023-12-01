package vn.edu.iuh.fit.labs_07_week_07_phamthanhson.entities;

import com.fasterxml.jackson.annotation.JsonIdentityInfo;
import com.fasterxml.jackson.annotation.JsonIgnoreProperties;
import com.fasterxml.jackson.annotation.ObjectIdGenerators;
import jakarta.persistence.*;
import lombok.*;


import java.io.Serializable;
import java.util.ArrayList;
import java.util.List;

@Entity
@Table(name = "customer")
@JsonIdentityInfo(generator = ObjectIdGenerators.PropertyGenerator.class, property = "id")
@JsonIgnoreProperties(value = {"hibernateLazyInitializer", "handler"})
@Getter
@Setter
@NoArgsConstructor
@AllArgsConstructor
@EqualsAndHashCode(exclude = {"id"})
public class Customer implements Serializable {
    @Id
    @Column(name = "cust_id",columnDefinition = "bigint(20)")
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private long id;

    @Column(columnDefinition = "nvarchar(250)")
    private String address;
    @Column(columnDefinition = "nvarchar(150)")
    private String email;
    @Column(columnDefinition = "nvarchar(150)",name = "cust_name")
    private String name;
    @Column(columnDefinition = "nvarchar(15)")
    private String phone;

    @OneToMany(mappedBy = "customer")
    private List<Order> orderList = new ArrayList<>();
    @Override
    public String toString() {
        return "Customer{" +
                "id=" + id +
                ", address='" + address + '\'' +
                ", email='" + email + '\'' +
                ", name='" + name + '\'' +
                ", phone='" + phone + '\'' +
                '}';
    }
}
