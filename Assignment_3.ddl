-- Generated by Oracle SQL Developer Data Modeler 24.3.1.351.0831
--   at:        2025-02-07 16:37:21 EST
--   site:      Oracle Database 21c
--   type:      Oracle Database 21c



-- predefined type, no DDL - MDSYS.SDO_GEOMETRY

-- predefined type, no DDL - XMLTYPE

CREATE TABLE consumer 
    ( 
     consumer_id      NUMBER  NOT NULL , 
     consumer_name    VARCHAR2 (255) , 
     consumer_email   VARCHAR2 (255) , 
     consumer_phone   NUMBER , 
     consumer_dob     TIMESTAMP , 
     consumer_address VARCHAR2 (255) 
    ) 
;

ALTER TABLE consumer 
    ADD 
    CHECK (consumer_id BETWEEN 1 AND 100000000000) 
;

ALTER TABLE consumer 
    ADD 
    CHECK (consumer_phone BETWEEN 1 AND 100000000000) 
;

ALTER TABLE consumer 
    ADD CONSTRAINT consumer_PK PRIMARY KEY ( consumer_id ) ;

CREATE TABLE distributor 
    ( 
     distributor_id    NUMBER  NOT NULL , 
     distributor_name  VARCHAR2 (255) , 
     distributor_email VARCHAR2 (255) , 
     distributor_phone NUMBER 
    ) 
;

ALTER TABLE distributor 
    ADD 
    CHECK (distributor_id BETWEEN 1 AND 100000000000) 
;

ALTER TABLE distributor 
    ADD 
    CHECK (distributor_phone BETWEEN 1 AND 100000000000) 
;

ALTER TABLE distributor 
    ADD CONSTRAINT distributor_PK PRIMARY KEY ( distributor_id ) ;

CREATE TABLE employee 
    ( 
     employee_id    NUMBER  NOT NULL , 
     employee_name  VARCHAR2 (255) , 
     employee_role  VARCHAR2 (255) , 
     store_store_id NUMBER  NOT NULL 
    ) 
;

ALTER TABLE employee 
    ADD 
    CHECK (employee_id BETWEEN 1 AND 100000000000) 
;

ALTER TABLE employee 
    ADD 
    CHECK (store_store_id BETWEEN 1 AND 100000000000) 
;

ALTER TABLE employee 
    ADD CONSTRAINT employee_PK PRIMARY KEY ( employee_id, store_store_id ) ;

CREATE TABLE inventory 
    ( 
     inventory_id   NUMBER  NOT NULL , 
     quantity       NUMBER , 
     inventory_date TIMESTAMP , 
     store_store_id NUMBER  NOT NULL 
    ) 
;

ALTER TABLE inventory 
    ADD 
    CHECK (inventory_id BETWEEN 1 AND 100000000000) 
;

ALTER TABLE inventory 
    ADD 
    CHECK (quantity = 1) 
;

ALTER TABLE inventory 
    ADD 
    CHECK (store_store_id BETWEEN 1 AND 100000000000) 
;

ALTER TABLE inventory 
    ADD CONSTRAINT inventory_PK PRIMARY KEY ( inventory_id ) ;

CREATE TABLE product 
    ( 
     product_id                 NUMBER  NOT NULL , 
     product_name               VARCHAR2 (255) , 
     product_description        VARCHAR2 (255) , 
     product_price              NUMBER , 
     distributor_distributor_id NUMBER  NOT NULL , 
     inventory_inventory_id     NUMBER  NOT NULL , 
     purchase_purchase_id       NUMBER  NOT NULL 
    ) 
;

ALTER TABLE product 
    ADD 
    CHECK (product_id BETWEEN 1 AND 100000000000) 
;

ALTER TABLE product 
    ADD 
    CHECK (distributor_distributor_id BETWEEN 1 AND 100000000000) 
;

ALTER TABLE product 
    ADD 
    CHECK (inventory_inventory_id BETWEEN 1 AND 100000000000) 
;

ALTER TABLE product 
    ADD 
    CHECK (purchase_purchase_id BETWEEN 1 AND 100000000000) 
;

ALTER TABLE product 
    ADD CONSTRAINT product_PK PRIMARY KEY ( product_id ) ;

CREATE TABLE purchase 
    ( 
     purchase_id          NUMBER  NOT NULL , 
     purchase_total       NUMBER , 
     purchase_date        TIMESTAMP , 
     consumer_consumer_id NUMBER  NOT NULL , 
     employee_employee_id NUMBER  NOT NULL , 
     employee_store_id    NUMBER  NOT NULL , 
     store_store_id       NUMBER  NOT NULL 
    ) 
;

ALTER TABLE purchase 
    ADD 
    CHECK (purchase_id BETWEEN 1 AND 100000000000) 
;

ALTER TABLE purchase 
    ADD 
    CHECK (consumer_consumer_id BETWEEN 1 AND 100000000000) 
;

ALTER TABLE purchase 
    ADD 
    CHECK (employee_employee_id BETWEEN 1 AND 100000000000) 
;

ALTER TABLE purchase 
    ADD 
    CHECK (employee_store_id BETWEEN 1 AND 100000000000) 
;

ALTER TABLE purchase 
    ADD 
    CHECK (store_store_id BETWEEN 1 AND 100000000000) 
;

ALTER TABLE purchase 
    ADD CONSTRAINT purchase_PK PRIMARY KEY ( purchase_id ) ;

CREATE TABLE store 
    ( 
     store_id       NUMBER  NOT NULL , 
     store_name     VARCHAR2 (255) , 
     store_location VARCHAR2 (255) 
    ) 
;

ALTER TABLE store 
    ADD 
    CHECK (store_id BETWEEN 1 AND 100000000000) 
;

ALTER TABLE store 
    ADD CONSTRAINT store_PK PRIMARY KEY ( store_id ) ;

ALTER TABLE employee 
    ADD CONSTRAINT employee_store_FK FOREIGN KEY 
    ( 
     store_store_id
    ) 
    REFERENCES store 
    ( 
     store_id
    ) 
;

ALTER TABLE inventory 
    ADD CONSTRAINT inventory_store_FK FOREIGN KEY 
    ( 
     store_store_id
    ) 
    REFERENCES store 
    ( 
     store_id
    ) 
;

ALTER TABLE product 
    ADD CONSTRAINT product_distributor_FK FOREIGN KEY 
    ( 
     distributor_distributor_id
    ) 
    REFERENCES distributor 
    ( 
     distributor_id
    ) 
;

ALTER TABLE product 
    ADD CONSTRAINT product_inventory_FK FOREIGN KEY 
    ( 
     inventory_inventory_id
    ) 
    REFERENCES inventory 
    ( 
     inventory_id
    ) 
;

ALTER TABLE product 
    ADD CONSTRAINT product_purchase_FK FOREIGN KEY 
    ( 
     purchase_purchase_id
    ) 
    REFERENCES purchase 
    ( 
     purchase_id
    ) 
;

ALTER TABLE purchase 
    ADD CONSTRAINT purchase_consumer_FK FOREIGN KEY 
    ( 
     consumer_consumer_id
    ) 
    REFERENCES consumer 
    ( 
     consumer_id
    ) 
;

ALTER TABLE purchase 
    ADD CONSTRAINT purchase_employee_FK FOREIGN KEY 
    ( 
     employee_employee_id,
     employee_store_id
    ) 
    REFERENCES employee 
    ( 
     employee_id,
     store_store_id
    ) 
;

ALTER TABLE purchase 
    ADD CONSTRAINT purchase_store_FK FOREIGN KEY 
    ( 
     store_store_id
    ) 
    REFERENCES store 
    ( 
     store_id
    ) 
;



-- Oracle SQL Developer Data Modeler Summary Report: 
-- 
-- CREATE TABLE                             7
-- CREATE INDEX                             0
-- ALTER TABLE                             34
-- CREATE VIEW                              0
-- ALTER VIEW                               0
-- CREATE PACKAGE                           0
-- CREATE PACKAGE BODY                      0
-- CREATE PROCEDURE                         0
-- CREATE FUNCTION                          0
-- CREATE TRIGGER                           0
-- ALTER TRIGGER                            0
-- CREATE COLLECTION TYPE                   0
-- CREATE STRUCTURED TYPE                   0
-- CREATE STRUCTURED TYPE BODY              0
-- CREATE CLUSTER                           0
-- CREATE CONTEXT                           0
-- CREATE DATABASE                          0
-- CREATE DIMENSION                         0
-- CREATE DIRECTORY                         0
-- CREATE DISK GROUP                        0
-- CREATE ROLE                              0
-- CREATE ROLLBACK SEGMENT                  0
-- CREATE SEQUENCE                          0
-- CREATE MATERIALIZED VIEW                 0
-- CREATE MATERIALIZED VIEW LOG             0
-- CREATE SYNONYM                           0
-- CREATE TABLESPACE                        0
-- CREATE USER                              0
-- 
-- DROP TABLESPACE                          0
-- DROP DATABASE                            0
-- 
-- REDACTION POLICY                         0
-- 
-- ORDS DROP SCHEMA                         0
-- ORDS ENABLE SCHEMA                       0
-- ORDS ENABLE OBJECT                       0
-- 
-- ERRORS                                   0
-- WARNINGS                                 0
