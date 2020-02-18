
-- --------------------------------------------------
-- Entity Designer DDL Script for SQL Server 2005, 2008, 2012 and Azure
-- --------------------------------------------------
-- Date Created: 02/17/2020 20:10:31
-- Generated from EDMX file: C:\Users\Cuda\source\repos\QMS5\QMS6\QMS6.edmx
-- --------------------------------------------------

SET QUOTED_IDENTIFIER OFF;
GO
USE [QMS6];
GO
IF SCHEMA_ID(N'dbo') IS NULL EXECUTE(N'CREATE SCHEMA [dbo]');
GO

-- --------------------------------------------------
-- Dropping existing FOREIGN KEY constraints
-- --------------------------------------------------

IF OBJECT_ID(N'[dbo].[FK_IRMERAuditsAuditFrequencies]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[IRMERAudits] DROP CONSTRAINT [FK_IRMERAuditsAuditFrequencies];
GO
IF OBJECT_ID(N'[dbo].[FK_AuditsAuditTypes]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[Audits] DROP CONSTRAINT [FK_AuditsAuditTypes];
GO
IF OBJECT_ID(N'[dbo].[FK_AuditPresentationsAudits]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[AuditPresentations] DROP CONSTRAINT [FK_AuditPresentationsAudits];
GO
IF OBJECT_ID(N'[dbo].[FK_AuditActionPlansAudits]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[AuditActionPlans] DROP CONSTRAINT [FK_AuditActionPlansAudits];
GO
IF OBJECT_ID(N'[dbo].[FK_AuditSOPsAudits]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[AuditSOPs] DROP CONSTRAINT [FK_AuditSOPsAudits];
GO
IF OBJECT_ID(N'[dbo].[FK_AuditStandardsAudits]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[AuditStandards] DROP CONSTRAINT [FK_AuditStandardsAudits];
GO
IF OBJECT_ID(N'[dbo].[FK_AuditMethodsAudits]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[AuditMethods] DROP CONSTRAINT [FK_AuditMethodsAudits];
GO
IF OBJECT_ID(N'[dbo].[FK_AuditOutcomesAudits]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[AuditOutcomes] DROP CONSTRAINT [FK_AuditOutcomesAudits];
GO
IF OBJECT_ID(N'[dbo].[FK_AuditStatusAudits]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[AuditStatus] DROP CONSTRAINT [FK_AuditStatusAudits];
GO
IF OBJECT_ID(N'[dbo].[FK_StaffAudits]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[Staffs] DROP CONSTRAINT [FK_StaffAudits];
GO
IF OBJECT_ID(N'[dbo].[FK_StaffAudits1]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[Staffs] DROP CONSTRAINT [FK_StaffAudits1];
GO
IF OBJECT_ID(N'[dbo].[FK_AuditPresentationsStaff]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[AuditPresentations] DROP CONSTRAINT [FK_AuditPresentationsStaff];
GO
IF OBJECT_ID(N'[dbo].[FK_RegularAuditsAudits_RegularAudits]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[RegularAuditsAudits] DROP CONSTRAINT [FK_RegularAuditsAudits_RegularAudits];
GO
IF OBJECT_ID(N'[dbo].[FK_RegularAuditsAudits_Audits]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[RegularAuditsAudits] DROP CONSTRAINT [FK_RegularAuditsAudits_Audits];
GO
IF OBJECT_ID(N'[dbo].[FK_IRMERAuditsAudits1_IRMERAudits]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[IRMERAuditsAudits1] DROP CONSTRAINT [FK_IRMERAuditsAudits1_IRMERAudits];
GO
IF OBJECT_ID(N'[dbo].[FK_IRMERAuditsAudits1_Audits]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[IRMERAuditsAudits1] DROP CONSTRAINT [FK_IRMERAuditsAudits1_Audits];
GO

-- --------------------------------------------------
-- Dropping existing tables
-- --------------------------------------------------

IF OBJECT_ID(N'[dbo].[Audits]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Audits];
GO
IF OBJECT_ID(N'[dbo].[AuditStatus]', 'U') IS NOT NULL
    DROP TABLE [dbo].[AuditStatus];
GO
IF OBJECT_ID(N'[dbo].[AuditTypes]', 'U') IS NOT NULL
    DROP TABLE [dbo].[AuditTypes];
GO
IF OBJECT_ID(N'[dbo].[AuditPresentations]', 'U') IS NOT NULL
    DROP TABLE [dbo].[AuditPresentations];
GO
IF OBJECT_ID(N'[dbo].[Staffs]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Staffs];
GO
IF OBJECT_ID(N'[dbo].[AuditActionPlans]', 'U') IS NOT NULL
    DROP TABLE [dbo].[AuditActionPlans];
GO
IF OBJECT_ID(N'[dbo].[AuditMethods]', 'U') IS NOT NULL
    DROP TABLE [dbo].[AuditMethods];
GO
IF OBJECT_ID(N'[dbo].[AuditOutcomes]', 'U') IS NOT NULL
    DROP TABLE [dbo].[AuditOutcomes];
GO
IF OBJECT_ID(N'[dbo].[AuditFrequencies]', 'U') IS NOT NULL
    DROP TABLE [dbo].[AuditFrequencies];
GO
IF OBJECT_ID(N'[dbo].[AuditStandards]', 'U') IS NOT NULL
    DROP TABLE [dbo].[AuditStandards];
GO
IF OBJECT_ID(N'[dbo].[IRMERAudits]', 'U') IS NOT NULL
    DROP TABLE [dbo].[IRMERAudits];
GO
IF OBJECT_ID(N'[dbo].[RegularAudits]', 'U') IS NOT NULL
    DROP TABLE [dbo].[RegularAudits];
GO
IF OBJECT_ID(N'[dbo].[AuditSOPs]', 'U') IS NOT NULL
    DROP TABLE [dbo].[AuditSOPs];
GO
IF OBJECT_ID(N'[dbo].[RegularAuditsAudits]', 'U') IS NOT NULL
    DROP TABLE [dbo].[RegularAuditsAudits];
GO
IF OBJECT_ID(N'[dbo].[IRMERAuditsAudits1]', 'U') IS NOT NULL
    DROP TABLE [dbo].[IRMERAuditsAudits1];
GO

-- --------------------------------------------------
-- Creating all tables
-- --------------------------------------------------

-- Creating table 'Audits'
CREATE TABLE [dbo].[Audits] (
    [Id] int IDENTITY(1,1) NOT NULL,
    [TypeID] smallint  NOT NULL,
    [StatusID] smallint  NOT NULL,
    [MethodID] smallint  NOT NULL,
    [ActionPlanID] smallint  NOT NULL,
    [OutcomeID] smallint  NOT NULL,
    [PresentationID] smallint  NOT NULL,
    [StandardsID] smallint  NOT NULL,
    [AuthorID] smallint  NOT NULL,
    [ManagerID] smallint  NOT NULL,
    [Reference] nvarchar(max)  NOT NULL,
    [OwnerID] smallint  NOT NULL,
    [RoleID] smallint  NOT NULL,
    [AuditID] nvarchar(max)  NOT NULL,
    [IRMERAuditID] nvarchar(max)  NOT NULL,
    [AuditTypes_Id] int  NOT NULL
);
GO

-- Creating table 'AuditStatus'
CREATE TABLE [dbo].[AuditStatus] (
    [Id] int IDENTITY(1,1) NOT NULL,
    [Status] nvarchar(max)  NOT NULL,
    [Audits_Id] int  NOT NULL
);
GO

-- Creating table 'AuditTypes'
CREATE TABLE [dbo].[AuditTypes] (
    [Id] int IDENTITY(1,1) NOT NULL,
    [Type] bit  NOT NULL
);
GO

-- Creating table 'AuditPresentations'
CREATE TABLE [dbo].[AuditPresentations] (
    [Id] int IDENTITY(1,1) NOT NULL,
    [PresentationDate] nvarchar(max)  NOT NULL,
    [PresenterID] smallint  NOT NULL,
    [Presentation] nvarchar(max)  NOT NULL,
    [Audits_Id] int  NOT NULL,
    [Staffs_Id] int  NOT NULL
);
GO

-- Creating table 'Staffs'
CREATE TABLE [dbo].[Staffs] (
    [Id] int IDENTITY(1,1) NOT NULL,
    [FIrstName] nvarchar(max)  NOT NULL,
    [LastName] nvarchar(max)  NOT NULL,
    [EMail] nvarchar(max)  NOT NULL,
    [Author_Id] int  NOT NULL,
    [Manager_Id] int  NOT NULL
);
GO

-- Creating table 'AuditActionPlans'
CREATE TABLE [dbo].[AuditActionPlans] (
    [Id] int IDENTITY(1,1) NOT NULL,
    [ActionPlan] nvarchar(max)  NOT NULL,
    [Audits_Id] int  NOT NULL
);
GO

-- Creating table 'AuditMethods'
CREATE TABLE [dbo].[AuditMethods] (
    [Id] int IDENTITY(1,1) NOT NULL,
    [Method] nvarchar(max)  NOT NULL,
    [Audits_Id] int  NOT NULL
);
GO

-- Creating table 'AuditOutcomes'
CREATE TABLE [dbo].[AuditOutcomes] (
    [Id] int IDENTITY(1,1) NOT NULL,
    [Outcome] nvarchar(max)  NOT NULL,
    [Audits_Id] int  NOT NULL
);
GO

-- Creating table 'AuditFrequencies'
CREATE TABLE [dbo].[AuditFrequencies] (
    [Id] int IDENTITY(1,1) NOT NULL,
    [Frequency] nvarchar(max)  NOT NULL
);
GO

-- Creating table 'AuditStandards'
CREATE TABLE [dbo].[AuditStandards] (
    [Id] int IDENTITY(1,1) NOT NULL,
    [Audits_Id] int  NOT NULL
);
GO

-- Creating table 'IRMERAudits'
CREATE TABLE [dbo].[IRMERAudits] (
    [Id] int IDENTITY(1,1) NOT NULL,
    [Code] nvarchar(max)  NOT NULL,
    [Name] nvarchar(max)  NOT NULL,
    [Desscription] nvarchar(max)  NOT NULL,
    [FrequencyID] smallint  NOT NULL,
    [SOPID] smallint  NOT NULL,
    [AuditFrequencies_Id] int  NOT NULL
);
GO

-- Creating table 'RegularAudits'
CREATE TABLE [dbo].[RegularAudits] (
    [Id] int IDENTITY(1,1) NOT NULL,
    [CreationDate] nvarchar(max)  NOT NULL,
    [Name] nvarchar(max)  NOT NULL,
    [Description] nvarchar(max)  NOT NULL
);
GO

-- Creating table 'AuditSOPs'
CREATE TABLE [dbo].[AuditSOPs] (
    [Id] int IDENTITY(1,1) NOT NULL,
    [SOP] nvarchar(max)  NOT NULL,
    [Audits_Id] int  NOT NULL
);
GO

-- Creating table 'RegularAuditsAudits'
CREATE TABLE [dbo].[RegularAuditsAudits] (
    [RegularAudit_Id] int  NOT NULL,
    [Audits_Id] int  NOT NULL
);
GO

-- Creating table 'IRMERAuditsAudits1'
CREATE TABLE [dbo].[IRMERAuditsAudits1] (
    [IRMERAudit1_Id] int  NOT NULL,
    [AuditEvents_Id] int  NOT NULL
);
GO

-- --------------------------------------------------
-- Creating all PRIMARY KEY constraints
-- --------------------------------------------------

-- Creating primary key on [Id] in table 'Audits'
ALTER TABLE [dbo].[Audits]
ADD CONSTRAINT [PK_Audits]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Id] in table 'AuditStatus'
ALTER TABLE [dbo].[AuditStatus]
ADD CONSTRAINT [PK_AuditStatus]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Id] in table 'AuditTypes'
ALTER TABLE [dbo].[AuditTypes]
ADD CONSTRAINT [PK_AuditTypes]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Id] in table 'AuditPresentations'
ALTER TABLE [dbo].[AuditPresentations]
ADD CONSTRAINT [PK_AuditPresentations]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Id] in table 'Staffs'
ALTER TABLE [dbo].[Staffs]
ADD CONSTRAINT [PK_Staffs]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Id] in table 'AuditActionPlans'
ALTER TABLE [dbo].[AuditActionPlans]
ADD CONSTRAINT [PK_AuditActionPlans]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Id] in table 'AuditMethods'
ALTER TABLE [dbo].[AuditMethods]
ADD CONSTRAINT [PK_AuditMethods]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Id] in table 'AuditOutcomes'
ALTER TABLE [dbo].[AuditOutcomes]
ADD CONSTRAINT [PK_AuditOutcomes]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Id] in table 'AuditFrequencies'
ALTER TABLE [dbo].[AuditFrequencies]
ADD CONSTRAINT [PK_AuditFrequencies]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Id] in table 'AuditStandards'
ALTER TABLE [dbo].[AuditStandards]
ADD CONSTRAINT [PK_AuditStandards]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Id] in table 'IRMERAudits'
ALTER TABLE [dbo].[IRMERAudits]
ADD CONSTRAINT [PK_IRMERAudits]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Id] in table 'RegularAudits'
ALTER TABLE [dbo].[RegularAudits]
ADD CONSTRAINT [PK_RegularAudits]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Id] in table 'AuditSOPs'
ALTER TABLE [dbo].[AuditSOPs]
ADD CONSTRAINT [PK_AuditSOPs]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [RegularAudit_Id], [Audits_Id] in table 'RegularAuditsAudits'
ALTER TABLE [dbo].[RegularAuditsAudits]
ADD CONSTRAINT [PK_RegularAuditsAudits]
    PRIMARY KEY CLUSTERED ([RegularAudit_Id], [Audits_Id] ASC);
GO

-- Creating primary key on [IRMERAudit1_Id], [AuditEvents_Id] in table 'IRMERAuditsAudits1'
ALTER TABLE [dbo].[IRMERAuditsAudits1]
ADD CONSTRAINT [PK_IRMERAuditsAudits1]
    PRIMARY KEY CLUSTERED ([IRMERAudit1_Id], [AuditEvents_Id] ASC);
GO

-- --------------------------------------------------
-- Creating all FOREIGN KEY constraints
-- --------------------------------------------------

-- Creating foreign key on [AuditFrequencies_Id] in table 'IRMERAudits'
ALTER TABLE [dbo].[IRMERAudits]
ADD CONSTRAINT [FK_IRMERAuditsAuditFrequencies]
    FOREIGN KEY ([AuditFrequencies_Id])
    REFERENCES [dbo].[AuditFrequencies]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_IRMERAuditsAuditFrequencies'
CREATE INDEX [IX_FK_IRMERAuditsAuditFrequencies]
ON [dbo].[IRMERAudits]
    ([AuditFrequencies_Id]);
GO

-- Creating foreign key on [AuditTypes_Id] in table 'Audits'
ALTER TABLE [dbo].[Audits]
ADD CONSTRAINT [FK_AuditsAuditTypes]
    FOREIGN KEY ([AuditTypes_Id])
    REFERENCES [dbo].[AuditTypes]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_AuditsAuditTypes'
CREATE INDEX [IX_FK_AuditsAuditTypes]
ON [dbo].[Audits]
    ([AuditTypes_Id]);
GO

-- Creating foreign key on [Audits_Id] in table 'AuditPresentations'
ALTER TABLE [dbo].[AuditPresentations]
ADD CONSTRAINT [FK_AuditPresentationsAudits]
    FOREIGN KEY ([Audits_Id])
    REFERENCES [dbo].[Audits]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_AuditPresentationsAudits'
CREATE INDEX [IX_FK_AuditPresentationsAudits]
ON [dbo].[AuditPresentations]
    ([Audits_Id]);
GO

-- Creating foreign key on [Audits_Id] in table 'AuditActionPlans'
ALTER TABLE [dbo].[AuditActionPlans]
ADD CONSTRAINT [FK_AuditActionPlansAudits]
    FOREIGN KEY ([Audits_Id])
    REFERENCES [dbo].[Audits]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_AuditActionPlansAudits'
CREATE INDEX [IX_FK_AuditActionPlansAudits]
ON [dbo].[AuditActionPlans]
    ([Audits_Id]);
GO

-- Creating foreign key on [Audits_Id] in table 'AuditSOPs'
ALTER TABLE [dbo].[AuditSOPs]
ADD CONSTRAINT [FK_AuditSOPsAudits]
    FOREIGN KEY ([Audits_Id])
    REFERENCES [dbo].[Audits]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_AuditSOPsAudits'
CREATE INDEX [IX_FK_AuditSOPsAudits]
ON [dbo].[AuditSOPs]
    ([Audits_Id]);
GO

-- Creating foreign key on [Audits_Id] in table 'AuditStandards'
ALTER TABLE [dbo].[AuditStandards]
ADD CONSTRAINT [FK_AuditStandardsAudits]
    FOREIGN KEY ([Audits_Id])
    REFERENCES [dbo].[Audits]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_AuditStandardsAudits'
CREATE INDEX [IX_FK_AuditStandardsAudits]
ON [dbo].[AuditStandards]
    ([Audits_Id]);
GO

-- Creating foreign key on [Audits_Id] in table 'AuditMethods'
ALTER TABLE [dbo].[AuditMethods]
ADD CONSTRAINT [FK_AuditMethodsAudits]
    FOREIGN KEY ([Audits_Id])
    REFERENCES [dbo].[Audits]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_AuditMethodsAudits'
CREATE INDEX [IX_FK_AuditMethodsAudits]
ON [dbo].[AuditMethods]
    ([Audits_Id]);
GO

-- Creating foreign key on [Audits_Id] in table 'AuditOutcomes'
ALTER TABLE [dbo].[AuditOutcomes]
ADD CONSTRAINT [FK_AuditOutcomesAudits]
    FOREIGN KEY ([Audits_Id])
    REFERENCES [dbo].[Audits]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_AuditOutcomesAudits'
CREATE INDEX [IX_FK_AuditOutcomesAudits]
ON [dbo].[AuditOutcomes]
    ([Audits_Id]);
GO

-- Creating foreign key on [Audits_Id] in table 'AuditStatus'
ALTER TABLE [dbo].[AuditStatus]
ADD CONSTRAINT [FK_AuditStatusAudits]
    FOREIGN KEY ([Audits_Id])
    REFERENCES [dbo].[Audits]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_AuditStatusAudits'
CREATE INDEX [IX_FK_AuditStatusAudits]
ON [dbo].[AuditStatus]
    ([Audits_Id]);
GO

-- Creating foreign key on [Author_Id] in table 'Staffs'
ALTER TABLE [dbo].[Staffs]
ADD CONSTRAINT [FK_StaffAudits]
    FOREIGN KEY ([Author_Id])
    REFERENCES [dbo].[Audits]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_StaffAudits'
CREATE INDEX [IX_FK_StaffAudits]
ON [dbo].[Staffs]
    ([Author_Id]);
GO

-- Creating foreign key on [Manager_Id] in table 'Staffs'
ALTER TABLE [dbo].[Staffs]
ADD CONSTRAINT [FK_StaffAudits1]
    FOREIGN KEY ([Manager_Id])
    REFERENCES [dbo].[Audits]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_StaffAudits1'
CREATE INDEX [IX_FK_StaffAudits1]
ON [dbo].[Staffs]
    ([Manager_Id]);
GO

-- Creating foreign key on [Staffs_Id] in table 'AuditPresentations'
ALTER TABLE [dbo].[AuditPresentations]
ADD CONSTRAINT [FK_AuditPresentationsStaff]
    FOREIGN KEY ([Staffs_Id])
    REFERENCES [dbo].[Staffs]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_AuditPresentationsStaff'
CREATE INDEX [IX_FK_AuditPresentationsStaff]
ON [dbo].[AuditPresentations]
    ([Staffs_Id]);
GO

-- Creating foreign key on [RegularAudit_Id] in table 'RegularAuditsAudits'
ALTER TABLE [dbo].[RegularAuditsAudits]
ADD CONSTRAINT [FK_RegularAuditsAudits_RegularAudits]
    FOREIGN KEY ([RegularAudit_Id])
    REFERENCES [dbo].[RegularAudits]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating foreign key on [Audits_Id] in table 'RegularAuditsAudits'
ALTER TABLE [dbo].[RegularAuditsAudits]
ADD CONSTRAINT [FK_RegularAuditsAudits_Audits]
    FOREIGN KEY ([Audits_Id])
    REFERENCES [dbo].[Audits]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_RegularAuditsAudits_Audits'
CREATE INDEX [IX_FK_RegularAuditsAudits_Audits]
ON [dbo].[RegularAuditsAudits]
    ([Audits_Id]);
GO

-- Creating foreign key on [IRMERAudit1_Id] in table 'IRMERAuditsAudits1'
ALTER TABLE [dbo].[IRMERAuditsAudits1]
ADD CONSTRAINT [FK_IRMERAuditsAudits1_IRMERAudits]
    FOREIGN KEY ([IRMERAudit1_Id])
    REFERENCES [dbo].[IRMERAudits]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating foreign key on [AuditEvents_Id] in table 'IRMERAuditsAudits1'
ALTER TABLE [dbo].[IRMERAuditsAudits1]
ADD CONSTRAINT [FK_IRMERAuditsAudits1_Audits]
    FOREIGN KEY ([AuditEvents_Id])
    REFERENCES [dbo].[Audits]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_IRMERAuditsAudits1_Audits'
CREATE INDEX [IX_FK_IRMERAuditsAudits1_Audits]
ON [dbo].[IRMERAuditsAudits1]
    ([AuditEvents_Id]);
GO

-- --------------------------------------------------
-- Script has ended
-- --------------------------------------------------