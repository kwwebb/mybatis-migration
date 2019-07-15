-- // person table
CREATE TABLE person (
  id          	    BIGINT AUTO_INCREMENT NOT NULL,
  names             VARCHAR(250) NOT NULL,
  last_name         VARCHAR(25) NOT NULL,
  sa_id_number      CHAR(13) NULL,
  date_of_birth     DATE NULL,
  telephone_number  VARCHAR(12),
  address_physical  VARCHAR(250),
  address_postal    VARCHAR(250),
  PRIMARY KEY pk_person(id)
);


-- //@UNDO
DROP TABLE person;

