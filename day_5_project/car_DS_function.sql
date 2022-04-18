select *
from cars;

CREATE OR REPLACE FUNCTION car_inserts(_car_serial_number integer, _age varchar, _make varchar, _model varchar, _customer_id integer)
RETURNS void
AS $$
BEGIN
	INSERT INTO cars(car_serial_number,age,make,model,customer_id)
	VALUES(_car_serial_number, _age,_make, _model, _customer_id);
END;
$$
LANGUAGE plpgsql;

select car_inserts(5,'2014','Mercedes Benz','c300',2);

select car_inserts(6,'2015','Mercedes Benz','c300',1);