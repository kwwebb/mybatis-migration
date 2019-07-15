-- // employee_department table
CREATE TABLE employee_department (
  employee_id     BIGINT NOT NULL,
  department_id   BIGINT NOT NULL,
  PRIMARY KEY pk_employee_department(employee_id, department_id),
  CONSTRAINT fk_employee_department_employee FOREIGN KEY (employee_id) REFERENCES employee(id),
  CONSTRAINT fk_employee_department_department FOREIGN KEY (department_id) REFERENCES department(id)
);


-- //@UNDO
DROP TABLE employee_department;

