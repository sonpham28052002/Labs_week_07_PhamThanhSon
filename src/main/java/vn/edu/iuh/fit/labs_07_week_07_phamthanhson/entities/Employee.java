package vn.edu.iuh.fit.labs_07_week_07_phamthanhson.entities;

import com.fasterxml.jackson.annotation.JsonFormat;
import com.fasterxml.jackson.annotation.JsonIdentityInfo;
import com.fasterxml.jackson.annotation.JsonIgnoreProperties;
import com.fasterxml.jackson.annotation.ObjectIdGenerators;
import com.fasterxml.jackson.databind.annotation.JsonSerialize;
import com.fasterxml.jackson.datatype.jsr310.ser.LocalDateSerializer;
import jakarta.persistence.*;
import lombok.*;
import vn.edu.iuh.fit.labs_07_week_07_phamthanhson.enums.EmployeeStatus;

import java.io.Serializable;
import java.time.LocalDate;
import java.util.ArrayList;
import java.util.List;

@Entity
@Table(name = "employee")
@JsonIdentityInfo(generator = ObjectIdGenerators.PropertyGenerator.class, property = "id")
@JsonIgnoreProperties(value = {"hibernateLazyInitializer", "handler"})
@Getter
@Setter
@NoArgsConstructor
@AllArgsConstructor
@EqualsAndHashCode(exclude = {"id"})
public class Employee implements Serializable {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "emp_id", columnDefinition = "bigint(20)")
    private long id;
    @Column(columnDefinition = "nvarchar(250)")
    private String address;
    @Column(columnDefinition = "datetime(6)")
    @JsonFormat(shape = JsonFormat.Shape.STRING, pattern = "yyyy-MM-dd")
    @JsonSerialize(using = LocalDateSerializer.class)
    private LocalDate dob;
    @Column(columnDefinition = "nvarchar(150)")
    private String email;
    @Column(columnDefinition = "nvarchar(150)")
    private String fullName;
    @Column(columnDefinition = "nvarchar(15)")
    private String phone;
    @Column(columnDefinition = "int(11)")
    private EmployeeStatus status;
    @OneToMany(mappedBy = "employee")
    private List<Order> orderList= new ArrayList<Order>();

    @Override
    public String toString() {
        return "Employee{" +
                "id=" + id +
                ", address='" + address + '\'' +
                ", dob=" + dob +
                ", email='" + email + '\'' +
                ", fullName='" + fullName + '\'' +
                ", phone='" + phone + '\'' +
                ", status=" + status +
                '}';
    }
}
