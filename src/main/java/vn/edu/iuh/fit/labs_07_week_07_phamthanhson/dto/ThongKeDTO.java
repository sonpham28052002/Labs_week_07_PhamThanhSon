package vn.edu.iuh.fit.labs_07_week_07_phamthanhson.dto;

import lombok.*;

import java.io.Serializable;
import java.time.LocalDate;

@Getter
@Setter
@NoArgsConstructor
@AllArgsConstructor
@ToString
public class ThongKeDTO implements Serializable {
    private LocalDate date;
    private Double money;
}
