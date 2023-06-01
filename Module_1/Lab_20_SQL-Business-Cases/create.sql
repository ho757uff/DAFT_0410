use lab_20;
CREATE TABLE cars (
                                                id int,
                                                VIN text,
                                                manufacturer text,
                                                model text,
                                                year int,
                                                colour text,
                                                PRIMARY KEY (id)); 
                                                
                                                
CREATE TABLE customers (
                                                id int,
                                                customer_id text,
                                                name text,
                                                phone_number text,
                                                Email text,
                                                address text,
                                                city text,
                                                state text,
                                                country text,
                                                postal_code int
                                                );
                                                
  CREATE TABLE salesperson (
                                                id int,
                                                staff_id varchar(10),
                                                name text,
                                                store text
                                                );
                                                                                           
                                                
  CREATE TABLE invoices (
                                                id int,
                                                invoice_number varchar(10),
                                                date date,
                                                car int,
                                                customer text,
                                                salesperson varchar(10)
                                                );