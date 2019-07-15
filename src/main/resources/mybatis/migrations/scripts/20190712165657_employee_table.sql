-- // employee table
CREATE TABLE employee (
  id          	    BIGINT NOT NULL,
  company_id        BIGINT NOT NULL,
  employee_number   VARCHAR(12) NOT NULL,
  PRIMARY KEY pk_employee(id),
  CONSTRAINT fk_employee_company FOREIGN KEY (company_id) REFERENCES  company(id),
  CONSTRAINT fk_employee_person FOREIGN KEY (id) REFERENCES person(id)
);

-- //@UNDO
DROP TABLE employee;

