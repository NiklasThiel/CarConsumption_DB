CREATE TABLE [dbo].[drive_types] (
    [DT_Id]     INT           NOT NULL,
    [fuel_type] VARCHAR (255) NOT NULL,
    [power]     INT           NOT NULL,
    [torque]    INT           NOT NULL,
    PRIMARY KEY CLUSTERED ([DT_Id] ASC)
);

