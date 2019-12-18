CREATE TABLE [dbo].[Specs_Sheet] (
    car_ID INT NOT NULL,
    DT_ID  INT NOT NULL,
	price FLOAT NOT NULL,
	real_fuel_consumption FLOAT NOT NULL,
	test_cycle_fuel_consumption FLOAT NOT NULL,

    PRIMARY KEY (car_ID, DT_ID),
    FOREIGN KEY ([car_ID]) REFERENCES [dbo].[car_model] ([car_ID]),
    FOREIGN KEY ([DT_ID]) REFERENCES [dbo].[drive_types] ([DT_ID])
);

