IF (OBJECT_ID('create_index') IS NOT NULL)
    DROP PROCEDURE [dbo].[create_index]
GO;

CREATE PROC [dbo].[create_index]
    @table VARCHAR(256),
    @column VARCHAR(50)
AS BEGIN
    DECLARE @sql NVARCHAR(1024);
    SET @sql = 'DROP INDEX IF EXISTS [' + @column + '_index] ON [' + @table + '];';
    PRINT @sql;
    EXEC sp_executesql @sql;
    SET @sql = 'CREATE NONCLUSTERED INDEX [' + @column + '_index] ON [' + @table + '] (' + @column + ');';
    PRINT @sql;
    EXEC sp_executesql @sql;
END
GO;

DROP TABLE [D_JURISDICTION];
CREATE TABLE [D_JURISDICTION] (
     JURISDICTION_ID        VARCHAR(500)
    , CODE                  VARCHAR(500)
    , JURISDICTION_NAME     VARCHAR(500)
    , TAX_RATE              DECIMAL(15,10)
    , TAX_YEAR              VARCHAR(500)
    , DATASET               VARCHAR(500)
);

DROP TABLE [D_JURISDICTION_EXEMPT];
CREATE TABLE [D_JURISDICTION_EXEMPT] (
    ACCOUNT_ID              VARCHAR(500)
    , JURISDICTION_ID       VARCHAR(500)
    , EXEMPT_CODE           VARCHAR(500)
    , EXEMPT_VALUE          DECIMAL(15)
);

DROP TABLE [F_JURISDICTION_TAX_VALUES]; 
CREATE TABLE [F_JURISDICTION_TAX_VALUES] (
    ACCOUNT_ID              VARCHAR(500)
    , JURISDICTION_ID       VARCHAR(500)
    , APPRAISED_VALUE       DECIMAL(15)
    , TAXABLE_VALUE         DECIMAL(15) 
    , TAXES                 DECIMAL(15) 
    , TAX_YEAR              VARCHAR(500)
    , DATASET               VARCHAR(500)
);

DROP TABLE [D_OWNER];
CREATE TABLE [D_OWNER] (
    OWNER_ID                VARCHAR(500)
    , NAME                  VARCHAR(500)
    , COUNTRY               VARCHAR(500)
    , STATE                 VARCHAR(500)
    , CITY                  VARCHAR(500)
    , ZIP                   VARCHAR(500)
    , ADDRESS               VARCHAR(500)
    , TAX_YEAR              VARCHAR(500)
    , DATASET               VARCHAR(500)
);

DROP TABLE [D_PROPERTY];
CREATE TABLE [D_PROPERTY] (
    ACCOUNT_ID              VARCHAR(500)
    , OWNER_ID              VARCHAR(500)
    , PROPERTY_DESCRIPTION  VARCHAR(700)
    , CITY                  VARCHAR(500)
    , ZIP                   VARCHAR(500)
    , ADDRESS               VARCHAR(500)
    , YEAR_BUILT            VARCHAR(500)
    , PROPERTY_TYPE         VARCHAR(500)
    , TOTAL_LAND_AREA       DECIMAL(15)
    , TOTAL_BUILDING_AREA   DECIMAL(15)
    , LAND_VALUE            DECIMAL(15)
    , IMPROVEMENT_VALUE     DECIMAL(15)
    , EXTRA_FEATURES_VALUE  DECIMAL(15)
    , ASSESSED_VALUE        DECIMAL(15)
    , APPRAISED_VALUE       DECIMAL(15)
    , TAX_YEAR              VARCHAR(500)
    , DATASET               VARCHAR(500)
    , TOTAL_TAXES           DECIMAL(15)
);

DROP TABLE [D_PROPERTY_GROUPS];
CREATE TABLE [D_PROPERTY_GROUPS] (
    GROUP_ID                VARCHAR(500)
    , GROUP_NAME            VARCHAR(500)
    , GROUP_TYPE            VARCHAR(500)
    , TAX_YEAR              VARCHAR(500)
    , DATASET               VARCHAR(500)
);

DROP TABLE [B_PROPERTY_GROUPS_MAPPING];
CREATE TABLE [B_PROPERTY_GROUPS_MAPPING] (
    ACCOUNT_ID              VARCHAR(500)
    , GROUP_ID              VARCHAR(500)
);