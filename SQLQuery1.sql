CREATE TABLE [dbo].[usersTbl] (
    [userName] NVARCHAR (50) NOT NULL,
    [fullName] NVARCHAR (50) NOT NULL,
    [party]    NVARCHAR (50) NOT NULL,
    [pr]       NVARCHAR (50) NOT NULL,
    [email]    NVARCHAR (50) NULL,
    [gender]   NCHAR (1)     NULL,
    [password] NCHAR (10)    NOT NULL,
    PRIMARY KEY CLUSTERED ([userName] ASC)
);