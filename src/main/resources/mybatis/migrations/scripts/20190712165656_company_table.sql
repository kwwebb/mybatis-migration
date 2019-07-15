-- // company table
CREATE TABLE company (
  id          	    BIGINT AUTO_INCREMENT NOT NULL,
  name              VARCHAR(100) NOT NULL,
  vat_number        VARCHAR(12) NULL,
  address_physical  VARCHAR(250) NULL,
  address_postal    VARCHAR(250) NULL,
  telephone_number  VARCHAR(12) NULL,
  PRIMARY KEY pk_company(id)
);


-- //@UNDO
DROP TABLE employee;

