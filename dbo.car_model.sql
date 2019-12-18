CREATE TABLE [dbo].[car_model] (
    [car_Id]          INT           NOT NULL,
    [name]            VARCHAR (255) NOT NULL,
    [production_year] INT           NOT NULL,
    [doors]           INT           NOT NULL,
    [weight]          FLOAT (53)    NOT NULL,
    PRIMARY KEY CLUSTERED ([car_Id] ASC)
);

