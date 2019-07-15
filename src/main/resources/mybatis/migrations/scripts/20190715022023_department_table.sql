-- // department table
CREATE TABLE department (
  id                  BIGINT AUTO_INCREMENT NOT NULL,
  company_id          BIGINT NOT NULL,
  name                VARCHAR(25) NOT NULL,
  telephone_number    VARCHAR(12) NULL,
  PRIMARY KEY pk_department(id),
  CONSTRAINT fk_department_company FOREIGN KEY (company_id) REFERENCES company(id)
);


-- //@UNDO
DROP TABLE department;


