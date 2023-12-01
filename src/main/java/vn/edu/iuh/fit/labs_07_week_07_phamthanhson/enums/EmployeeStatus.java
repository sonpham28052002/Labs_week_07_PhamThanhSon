package vn.edu.iuh.fit.labs_07_week_07_phamthanhson.enums;

import java.io.Serializable;

public enum EmployeeStatus implements Serializable {
    ACTIVE(1),
    IN_ACTIVE(0),
    TEMINATED(-1);
    private int values;

    EmployeeStatus(int values){
        this.values = values;
    }
    private int getValues(){
        return values;
    }
}
