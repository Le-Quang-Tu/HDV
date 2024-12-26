IF OBJECT_ID(N'[__EFMigrationsHistory]') IS NULL
BEGIN
    CREATE TABLE [__EFMigrationsHistory] (
        [MigrationId] nvarchar(150) NOT NULL,
        [ProductVersion] nvarchar(32) NOT NULL,
        CONSTRAINT [PK___EFMigrationsHistory] PRIMARY KEY ([MigrationId])
    );
END;
GO

BEGIN TRANSACTION;
GO

IF NOT EXISTS(SELECT * FROM [__EFMigrationsHistory] WHERE [MigrationId] = N'00000000000000_CreateIdentitySchema')
BEGIN
    CREATE TABLE [AspNetRoles] (
        [Id] nvarchar(450) NOT NULL,
        [Name] nvarchar(256) NULL,
        [NormalizedName] nvarchar(256) NULL,
        [ConcurrencyStamp] nvarchar(max) NULL,
        CONSTRAINT [PK_AspNetRoles] PRIMARY KEY ([Id])
    );
END;
GO

IF NOT EXISTS(SELECT * FROM [__EFMigrationsHistory] WHERE [MigrationId] = N'00000000000000_CreateIdentitySchema')
BEGIN
    CREATE TABLE [AspNetUsers] (
        [Id] nvarchar(450) NOT NULL,
        [UserName] nvarchar(256) NULL,
        [NormalizedUserName] nvarchar(256) NULL,
        [Email] nvarchar(256) NULL,
        [NormalizedEmail] nvarchar(256) NULL,
        [EmailConfirmed] bit NOT NULL,
        [PasswordHash] nvarchar(max) NULL,
        [SecurityStamp] nvarchar(max) NULL,
        [ConcurrencyStamp] nvarchar(max) NULL,
        [PhoneNumber] nvarchar(max) NULL,
        [PhoneNumberConfirmed] bit NOT NULL,
        [TwoFactorEnabled] bit NOT NULL,
        [LockoutEnd] datetimeoffset NULL,
        [LockoutEnabled] bit NOT NULL,
        [AccessFailedCount] int NOT NULL,
        CONSTRAINT [PK_AspNetUsers] PRIMARY KEY ([Id])
    );
END;
GO

IF NOT EXISTS(SELECT * FROM [__EFMigrationsHistory] WHERE [MigrationId] = N'00000000000000_CreateIdentitySchema')
BEGIN
    CREATE TABLE [AspNetRoleClaims] (
        [Id] int NOT NULL IDENTITY,
        [RoleId] nvarchar(450) NOT NULL,
        [ClaimType] nvarchar(max) NULL,
        [ClaimValue] nvarchar(max) NULL,
        CONSTRAINT [PK_AspNetRoleClaims] PRIMARY KEY ([Id]),
        CONSTRAINT [FK_AspNetRoleClaims_AspNetRoles_RoleId] FOREIGN KEY ([RoleId]) REFERENCES [AspNetRoles] ([Id]) ON DELETE CASCADE
    );
END;
GO

IF NOT EXISTS(SELECT * FROM [__EFMigrationsHistory] WHERE [MigrationId] = N'00000000000000_CreateIdentitySchema')
BEGIN
    CREATE TABLE [AspNetUserClaims] (
        [Id] int NOT NULL IDENTITY,
        [UserId] nvarchar(450) NOT NULL,
        [ClaimType] nvarchar(max) NULL,
        [ClaimValue] nvarchar(max) NULL,
        CONSTRAINT [PK_AspNetUserClaims] PRIMARY KEY ([Id]),
        CONSTRAINT [FK_AspNetUserClaims_AspNetUsers_UserId] FOREIGN KEY ([UserId]) REFERENCES [AspNetUsers] ([Id]) ON DELETE CASCADE
    );
END;
GO

IF NOT EXISTS(SELECT * FROM [__EFMigrationsHistory] WHERE [MigrationId] = N'00000000000000_CreateIdentitySchema')
BEGIN
    CREATE TABLE [AspNetUserLogins] (
        [LoginProvider] nvarchar(128) NOT NULL,
        [ProviderKey] nvarchar(128) NOT NULL,
        [ProviderDisplayName] nvarchar(max) NULL,
        [UserId] nvarchar(450) NOT NULL,
        CONSTRAINT [PK_AspNetUserLogins] PRIMARY KEY ([LoginProvider], [ProviderKey]),
        CONSTRAINT [FK_AspNetUserLogins_AspNetUsers_UserId] FOREIGN KEY ([UserId]) REFERENCES [AspNetUsers] ([Id]) ON DELETE CASCADE
    );
END;
GO

IF NOT EXISTS(SELECT * FROM [__EFMigrationsHistory] WHERE [MigrationId] = N'00000000000000_CreateIdentitySchema')
BEGIN
    CREATE TABLE [AspNetUserRoles] (
        [UserId] nvarchar(450) NOT NULL,
        [RoleId] nvarchar(450) NOT NULL,
        CONSTRAINT [PK_AspNetUserRoles] PRIMARY KEY ([UserId], [RoleId]),
        CONSTRAINT [FK_AspNetUserRoles_AspNetRoles_RoleId] FOREIGN KEY ([RoleId]) REFERENCES [AspNetRoles] ([Id]) ON DELETE CASCADE,
        CONSTRAINT [FK_AspNetUserRoles_AspNetUsers_UserId] FOREIGN KEY ([UserId]) REFERENCES [AspNetUsers] ([Id]) ON DELETE CASCADE
    );
END;
GO

IF NOT EXISTS(SELECT * FROM [__EFMigrationsHistory] WHERE [MigrationId] = N'00000000000000_CreateIdentitySchema')
BEGIN
    CREATE TABLE [AspNetUserTokens] (
        [UserId] nvarchar(450) NOT NULL,
        [LoginProvider] nvarchar(128) NOT NULL,
        [Name] nvarchar(128) NOT NULL,
        [Value] nvarchar(max) NULL,
        CONSTRAINT [PK_AspNetUserTokens] PRIMARY KEY ([UserId], [LoginProvider], [Name]),
        CONSTRAINT [FK_AspNetUserTokens_AspNetUsers_UserId] FOREIGN KEY ([UserId]) REFERENCES [AspNetUsers] ([Id]) ON DELETE CASCADE
    );
END;
GO

IF NOT EXISTS(SELECT * FROM [__EFMigrationsHistory] WHERE [MigrationId] = N'00000000000000_CreateIdentitySchema')
BEGIN
    CREATE INDEX [IX_AspNetRoleClaims_RoleId] ON [AspNetRoleClaims] ([RoleId]);
END;
GO

IF NOT EXISTS(SELECT * FROM [__EFMigrationsHistory] WHERE [MigrationId] = N'00000000000000_CreateIdentitySchema')
BEGIN
    EXEC(N'CREATE UNIQUE INDEX [RoleNameIndex] ON [AspNetRoles] ([NormalizedName]) WHERE [NormalizedName] IS NOT NULL');
END;
GO

IF NOT EXISTS(SELECT * FROM [__EFMigrationsHistory] WHERE [MigrationId] = N'00000000000000_CreateIdentitySchema')
BEGIN
    CREATE INDEX [IX_AspNetUserClaims_UserId] ON [AspNetUserClaims] ([UserId]);
END;
GO

IF NOT EXISTS(SELECT * FROM [__EFMigrationsHistory] WHERE [MigrationId] = N'00000000000000_CreateIdentitySchema')
BEGIN
    CREATE INDEX [IX_AspNetUserLogins_UserId] ON [AspNetUserLogins] ([UserId]);
END;
GO

IF NOT EXISTS(SELECT * FROM [__EFMigrationsHistory] WHERE [MigrationId] = N'00000000000000_CreateIdentitySchema')
BEGIN
    CREATE INDEX [IX_AspNetUserRoles_RoleId] ON [AspNetUserRoles] ([RoleId]);
END;
GO

IF NOT EXISTS(SELECT * FROM [__EFMigrationsHistory] WHERE [MigrationId] = N'00000000000000_CreateIdentitySchema')
BEGIN
    CREATE INDEX [EmailIndex] ON [AspNetUsers] ([NormalizedEmail]);
END;
GO

IF NOT EXISTS(SELECT * FROM [__EFMigrationsHistory] WHERE [MigrationId] = N'00000000000000_CreateIdentitySchema')
BEGIN
    EXEC(N'CREATE UNIQUE INDEX [UserNameIndex] ON [AspNetUsers] ([NormalizedUserName]) WHERE [NormalizedUserName] IS NOT NULL');
END;
GO

IF NOT EXISTS(SELECT * FROM [__EFMigrationsHistory] WHERE [MigrationId] = N'00000000000000_CreateIdentitySchema')
BEGIN
    INSERT INTO [__EFMigrationsHistory] ([MigrationId], [ProductVersion])
    VALUES (N'00000000000000_CreateIdentitySchema', N'6.0.21');
END;
GO

COMMIT;
GO

BEGIN TRANSACTION;
GO

IF NOT EXISTS(SELECT * FROM [__EFMigrationsHistory] WHERE [MigrationId] = N'20240720081645_CreateEntities')
BEGIN
    CREATE TABLE [tb_Adv] (
        [Id] int NOT NULL IDENTITY,
        [Title] nvarchar(150) NOT NULL,
        [Description] nvarchar(500) NOT NULL,
        [Image] nvarchar(500) NOT NULL,
        [Link] nvarchar(500) NOT NULL,
        [Type] int NOT NULL,
        [CreatedBy] nvarchar(max) NOT NULL,
        [CreatedDate] datetime2 NOT NULL,
        [ModifiedDate] datetime2 NOT NULL,
        [ModifiedBy] nvarchar(max) NOT NULL,
        CONSTRAINT [PK_tb_Adv] PRIMARY KEY ([Id])
    );
END;
GO

IF NOT EXISTS(SELECT * FROM [__EFMigrationsHistory] WHERE [MigrationId] = N'20240720081645_CreateEntities')
BEGIN
    CREATE TABLE [tb_Category] (
        [Id] int NOT NULL IDENTITY,
        [Title] nvarchar(150) NOT NULL,
        [Alias] nvarchar(max) NOT NULL,
        [Link] nvarchar(max) NOT NULL,
        [Description] nvarchar(max) NOT NULL,
        [SeoTitle] nvarchar(150) NOT NULL,
        [SeoDescription] nvarchar(250) NOT NULL,
        [SeoKeywords] nvarchar(150) NOT NULL,
        [Position] int NOT NULL,
        [IsActive] bit NOT NULL,
        [CreatedBy] nvarchar(max) NOT NULL,
        [CreatedDate] datetime2 NOT NULL,
        [ModifiedDate] datetime2 NOT NULL,
        [ModifiedBy] nvarchar(max) NOT NULL,
        CONSTRAINT [PK_tb_Category] PRIMARY KEY ([Id])
    );
END;
GO

IF NOT EXISTS(SELECT * FROM [__EFMigrationsHistory] WHERE [MigrationId] = N'20240720081645_CreateEntities')
BEGIN
    CREATE TABLE [tb_Contact] (
        [Id] int NOT NULL IDENTITY,
        [Name] nvarchar(150) NOT NULL,
        [Email] nvarchar(150) NOT NULL,
        [Company] nvarchar(max) NOT NULL,
        [Message] nvarchar(4000) NOT NULL,
        [IsRead] bit NOT NULL,
        [CreatedBy] nvarchar(max) NOT NULL,
        [CreatedDate] datetime2 NOT NULL,
        [ModifiedDate] datetime2 NOT NULL,
        [ModifiedBy] nvarchar(max) NOT NULL,
        CONSTRAINT [PK_tb_Contact] PRIMARY KEY ([Id])
    );
END;
GO

IF NOT EXISTS(SELECT * FROM [__EFMigrationsHistory] WHERE [MigrationId] = N'20240720081645_CreateEntities')
BEGIN
    CREATE TABLE [tb_Order] (
        [Id] int NOT NULL IDENTITY,
        [Code] nvarchar(max) NOT NULL,
        [CustomerName] nvarchar(max) NOT NULL,
        [Phone] nvarchar(max) NOT NULL,
        [Address] nvarchar(max) NOT NULL,
        [Email] nvarchar(max) NOT NULL,
        [TotalAmount] decimal(18,2) NOT NULL,
        [Quantity] int NOT NULL,
        [TypePayment] int NOT NULL,
        [CustomerId] nvarchar(max) NOT NULL,
        [Status] int NOT NULL,
        [CreatedBy] nvarchar(max) NOT NULL,
        [CreatedDate] datetime2 NOT NULL,
        [ModifiedDate] datetime2 NOT NULL,
        [ModifiedBy] nvarchar(max) NOT NULL,
        CONSTRAINT [PK_tb_Order] PRIMARY KEY ([Id])
    );
END;
GO

IF NOT EXISTS(SELECT * FROM [__EFMigrationsHistory] WHERE [MigrationId] = N'20240720081645_CreateEntities')
BEGIN
    CREATE TABLE [tb_ProductCategory] (
        [Id] int NOT NULL IDENTITY,
        [Title] nvarchar(150) NOT NULL,
        [Alias] nvarchar(150) NOT NULL,
        [Description] nvarchar(max) NOT NULL,
        [Icon] nvarchar(250) NOT NULL,
        [SeoTitle] nvarchar(250) NOT NULL,
        [SeoDescription] nvarchar(500) NOT NULL,
        [SeoKeywords] nvarchar(250) NOT NULL,
        [CreatedBy] nvarchar(max) NOT NULL,
        [CreatedDate] datetime2 NOT NULL,
        [ModifiedDate] datetime2 NOT NULL,
        [ModifiedBy] nvarchar(max) NOT NULL,
        CONSTRAINT [PK_tb_ProductCategory] PRIMARY KEY ([Id])
    );
END;
GO

IF NOT EXISTS(SELECT * FROM [__EFMigrationsHistory] WHERE [MigrationId] = N'20240720081645_CreateEntities')
BEGIN
    CREATE TABLE [tb_Subscribe] (
        [Id] int NOT NULL IDENTITY,
        [Email] nvarchar(max) NOT NULL,
        [CreatedDate] datetime2 NOT NULL,
        CONSTRAINT [PK_tb_Subscribe] PRIMARY KEY ([Id])
    );
END;
GO

IF NOT EXISTS(SELECT * FROM [__EFMigrationsHistory] WHERE [MigrationId] = N'20240720081645_CreateEntities')
BEGIN
    CREATE TABLE [tb_SystemSetting] (
        [SettingKey] nvarchar(50) NOT NULL,
        [SettingValue] nvarchar(4000) NOT NULL,
        [SettingDescription] nvarchar(4000) NOT NULL,
        CONSTRAINT [PK_tb_SystemSetting] PRIMARY KEY ([SettingKey])
    );
END;
GO

IF NOT EXISTS(SELECT * FROM [__EFMigrationsHistory] WHERE [MigrationId] = N'20240720081645_CreateEntities')
BEGIN
    CREATE TABLE [tb_News] (
        [Id] int NOT NULL IDENTITY,
        [Title] nvarchar(150) NOT NULL,
        [Alias] nvarchar(max) NOT NULL,
        [Description] nvarchar(max) NOT NULL,
        [Detail] nvarchar(max) NOT NULL,
        [Image] nvarchar(max) NOT NULL,
        [CategoryID] int NOT NULL,
        [SeoTitle] nvarchar(max) NOT NULL,
        [SeoDescription] nvarchar(max) NOT NULL,
        [SeoKeywords] nvarchar(max) NOT NULL,
        [IsActive] bit NOT NULL,
        [CreatedBy] nvarchar(max) NOT NULL,
        [CreatedDate] datetime2 NOT NULL,
        [ModifiedDate] datetime2 NOT NULL,
        [ModifiedBy] nvarchar(max) NOT NULL,
        CONSTRAINT [PK_tb_News] PRIMARY KEY ([Id]),
        CONSTRAINT [FK_tb_News_tb_Category_CategoryID] FOREIGN KEY ([CategoryID]) REFERENCES [tb_Category] ([Id]) ON DELETE CASCADE
    );
END;
GO

IF NOT EXISTS(SELECT * FROM [__EFMigrationsHistory] WHERE [MigrationId] = N'20240720081645_CreateEntities')
BEGIN
    CREATE TABLE [tb_Posts] (
        [Id] int NOT NULL IDENTITY,
        [Title] nvarchar(150) NOT NULL,
        [Alias] nvarchar(150) NOT NULL,
        [Description] nvarchar(max) NOT NULL,
        [Detail] nvarchar(max) NOT NULL,
        [Image] nvarchar(250) NOT NULL,
        [CategoryID] int NOT NULL,
        [SeoTitle] nvarchar(250) NOT NULL,
        [SeoDescription] nvarchar(500) NOT NULL,
        [SeoKeywords] nvarchar(250) NOT NULL,
        [IsActive] bit NOT NULL,
        [CreatedBy] nvarchar(max) NOT NULL,
        [CreatedDate] datetime2 NOT NULL,
        [ModifiedDate] datetime2 NOT NULL,
        [ModifiedBy] nvarchar(max) NOT NULL,
        CONSTRAINT [PK_tb_Posts] PRIMARY KEY ([Id]),
        CONSTRAINT [FK_tb_Posts_tb_Category_CategoryID] FOREIGN KEY ([CategoryID]) REFERENCES [tb_Category] ([Id]) ON DELETE CASCADE
    );
END;
GO

IF NOT EXISTS(SELECT * FROM [__EFMigrationsHistory] WHERE [MigrationId] = N'20240720081645_CreateEntities')
BEGIN
    CREATE TABLE [tb_Product] (
        [Id] int NOT NULL IDENTITY,
        [Title] nvarchar(250) NOT NULL,
        [Alias] nvarchar(250) NOT NULL,
        [ProductCode] nvarchar(50) NOT NULL,
        [Description] nvarchar(max) NOT NULL,
        [Detail] nvarchar(max) NOT NULL,
        [Image] nvarchar(250) NOT NULL,
        [OriginalPrice] decimal(18,2) NOT NULL,
        [Price] decimal(18,2) NOT NULL,
        [PriceSale] decimal(18,2) NULL,
        [Quantity] int NOT NULL,
        [ViewCount] int NOT NULL,
        [IsHome] bit NOT NULL,
        [IsSale] bit NOT NULL,
        [IsFeature] bit NOT NULL,
        [IsHot] bit NOT NULL,
        [IsActive] bit NOT NULL,
        [ProductCategoryID] int NOT NULL,
        [SeoTitle] nvarchar(250) NOT NULL,
        [SeoDescription] nvarchar(500) NOT NULL,
        [SeoKeywords] nvarchar(250) NOT NULL,
        [CreatedBy] nvarchar(max) NOT NULL,
        [CreatedDate] datetime2 NOT NULL,
        [ModifiedDate] datetime2 NOT NULL,
        [ModifiedBy] nvarchar(max) NOT NULL,
        CONSTRAINT [PK_tb_Product] PRIMARY KEY ([Id]),
        CONSTRAINT [FK_tb_Product_tb_ProductCategory_ProductCategoryID] FOREIGN KEY ([ProductCategoryID]) REFERENCES [tb_ProductCategory] ([Id]) ON DELETE CASCADE
    );
END;
GO

IF NOT EXISTS(SELECT * FROM [__EFMigrationsHistory] WHERE [MigrationId] = N'20240720081645_CreateEntities')
BEGIN
    CREATE TABLE [tb_OrderDetail] (
        [OrderID] int NOT NULL,
        [ProductID] int NOT NULL,
        [Price] decimal(18,2) NOT NULL,
        [Quantity] int NOT NULL,
        CONSTRAINT [PK_tb_OrderDetail] PRIMARY KEY ([OrderID], [ProductID]),
        CONSTRAINT [FK_tb_OrderDetail_tb_Order_OrderID] FOREIGN KEY ([OrderID]) REFERENCES [tb_Order] ([Id]) ON DELETE CASCADE,
        CONSTRAINT [FK_tb_OrderDetail_tb_Product_ProductID] FOREIGN KEY ([ProductID]) REFERENCES [tb_Product] ([Id]) ON DELETE CASCADE
    );
END;
GO

IF NOT EXISTS(SELECT * FROM [__EFMigrationsHistory] WHERE [MigrationId] = N'20240720081645_CreateEntities')
BEGIN
    CREATE TABLE [tb_ProductImage] (
        [Id] int NOT NULL IDENTITY,
        [ProductId] int NOT NULL,
        [Image] nvarchar(max) NOT NULL,
        [IsDefault] bit NOT NULL,
        CONSTRAINT [PK_tb_ProductImage] PRIMARY KEY ([Id]),
        CONSTRAINT [FK_tb_ProductImage_tb_Product_ProductId] FOREIGN KEY ([ProductId]) REFERENCES [tb_Product] ([Id]) ON DELETE CASCADE
    );
END;
GO

IF NOT EXISTS(SELECT * FROM [__EFMigrationsHistory] WHERE [MigrationId] = N'20240720081645_CreateEntities')
BEGIN
    CREATE TABLE [tb_Review] (
        [Id] int NOT NULL IDENTITY,
        [ProductId] int NOT NULL,
        [UserName] nvarchar(max) NOT NULL,
        [FullName] nvarchar(max) NOT NULL,
        [Email] nvarchar(max) NOT NULL,
        [Content] nvarchar(max) NOT NULL,
        [Rate] int NOT NULL,
        [CreatedDate] datetime2 NOT NULL,
        [Avatar] nvarchar(max) NOT NULL,
        CONSTRAINT [PK_tb_Review] PRIMARY KEY ([Id]),
        CONSTRAINT [FK_tb_Review_tb_Product_ProductId] FOREIGN KEY ([ProductId]) REFERENCES [tb_Product] ([Id]) ON DELETE CASCADE
    );
END;
GO

IF NOT EXISTS(SELECT * FROM [__EFMigrationsHistory] WHERE [MigrationId] = N'20240720081645_CreateEntities')
BEGIN
    CREATE TABLE [tb_WishList] (
        [Id] int NOT NULL IDENTITY,
        [ProductId] int NOT NULL,
        [UserName] nvarchar(max) NOT NULL,
        [CreateDate] datetime2 NOT NULL,
        CONSTRAINT [PK_tb_WishList] PRIMARY KEY ([Id]),
        CONSTRAINT [FK_tb_WishList_tb_Product_ProductId] FOREIGN KEY ([ProductId]) REFERENCES [tb_Product] ([Id]) ON DELETE CASCADE
    );
END;
GO

IF NOT EXISTS(SELECT * FROM [__EFMigrationsHistory] WHERE [MigrationId] = N'20240720081645_CreateEntities')
BEGIN
    CREATE INDEX [IX_tb_News_CategoryID] ON [tb_News] ([CategoryID]);
END;
GO

IF NOT EXISTS(SELECT * FROM [__EFMigrationsHistory] WHERE [MigrationId] = N'20240720081645_CreateEntities')
BEGIN
    CREATE INDEX [IX_tb_OrderDetail_ProductID] ON [tb_OrderDetail] ([ProductID]);
END;
GO

IF NOT EXISTS(SELECT * FROM [__EFMigrationsHistory] WHERE [MigrationId] = N'20240720081645_CreateEntities')
BEGIN
    CREATE INDEX [IX_tb_Posts_CategoryID] ON [tb_Posts] ([CategoryID]);
END;
GO

IF NOT EXISTS(SELECT * FROM [__EFMigrationsHistory] WHERE [MigrationId] = N'20240720081645_CreateEntities')
BEGIN
    CREATE INDEX [IX_tb_Product_ProductCategoryID] ON [tb_Product] ([ProductCategoryID]);
END;
GO

IF NOT EXISTS(SELECT * FROM [__EFMigrationsHistory] WHERE [MigrationId] = N'20240720081645_CreateEntities')
BEGIN
    CREATE INDEX [IX_tb_ProductImage_ProductId] ON [tb_ProductImage] ([ProductId]);
END;
GO

IF NOT EXISTS(SELECT * FROM [__EFMigrationsHistory] WHERE [MigrationId] = N'20240720081645_CreateEntities')
BEGIN
    CREATE INDEX [IX_tb_Review_ProductId] ON [tb_Review] ([ProductId]);
END;
GO

IF NOT EXISTS(SELECT * FROM [__EFMigrationsHistory] WHERE [MigrationId] = N'20240720081645_CreateEntities')
BEGIN
    CREATE INDEX [IX_tb_WishList_ProductId] ON [tb_WishList] ([ProductId]);
END;
GO

IF NOT EXISTS(SELECT * FROM [__EFMigrationsHistory] WHERE [MigrationId] = N'20240720081645_CreateEntities')
BEGIN
    INSERT INTO [__EFMigrationsHistory] ([MigrationId], [ProductVersion])
    VALUES (N'20240720081645_CreateEntities', N'6.0.21');
END;
GO

COMMIT;
GO

BEGIN TRANSACTION;
GO

IF NOT EXISTS(SELECT * FROM [__EFMigrationsHistory] WHERE [MigrationId] = N'20240722131507_AddAllowNullInCommonAstract')
BEGIN
    DECLARE @var0 sysname;
    SELECT @var0 = [d].[name]
    FROM [sys].[default_constraints] [d]
    INNER JOIN [sys].[columns] [c] ON [d].[parent_column_id] = [c].[column_id] AND [d].[parent_object_id] = [c].[object_id]
    WHERE ([d].[parent_object_id] = OBJECT_ID(N'[tb_ProductCategory]') AND [c].[name] = N'ModifiedBy');
    IF @var0 IS NOT NULL EXEC(N'ALTER TABLE [tb_ProductCategory] DROP CONSTRAINT [' + @var0 + '];');
    ALTER TABLE [tb_ProductCategory] ALTER COLUMN [ModifiedBy] nvarchar(max) NULL;
END;
GO

IF NOT EXISTS(SELECT * FROM [__EFMigrationsHistory] WHERE [MigrationId] = N'20240722131507_AddAllowNullInCommonAstract')
BEGIN
    DECLARE @var1 sysname;
    SELECT @var1 = [d].[name]
    FROM [sys].[default_constraints] [d]
    INNER JOIN [sys].[columns] [c] ON [d].[parent_column_id] = [c].[column_id] AND [d].[parent_object_id] = [c].[object_id]
    WHERE ([d].[parent_object_id] = OBJECT_ID(N'[tb_ProductCategory]') AND [c].[name] = N'CreatedBy');
    IF @var1 IS NOT NULL EXEC(N'ALTER TABLE [tb_ProductCategory] DROP CONSTRAINT [' + @var1 + '];');
    ALTER TABLE [tb_ProductCategory] ALTER COLUMN [CreatedBy] nvarchar(max) NULL;
END;
GO

IF NOT EXISTS(SELECT * FROM [__EFMigrationsHistory] WHERE [MigrationId] = N'20240722131507_AddAllowNullInCommonAstract')
BEGIN
    DECLARE @var2 sysname;
    SELECT @var2 = [d].[name]
    FROM [sys].[default_constraints] [d]
    INNER JOIN [sys].[columns] [c] ON [d].[parent_column_id] = [c].[column_id] AND [d].[parent_object_id] = [c].[object_id]
    WHERE ([d].[parent_object_id] = OBJECT_ID(N'[tb_Product]') AND [c].[name] = N'ModifiedBy');
    IF @var2 IS NOT NULL EXEC(N'ALTER TABLE [tb_Product] DROP CONSTRAINT [' + @var2 + '];');
    ALTER TABLE [tb_Product] ALTER COLUMN [ModifiedBy] nvarchar(max) NULL;
END;
GO

IF NOT EXISTS(SELECT * FROM [__EFMigrationsHistory] WHERE [MigrationId] = N'20240722131507_AddAllowNullInCommonAstract')
BEGIN
    DECLARE @var3 sysname;
    SELECT @var3 = [d].[name]
    FROM [sys].[default_constraints] [d]
    INNER JOIN [sys].[columns] [c] ON [d].[parent_column_id] = [c].[column_id] AND [d].[parent_object_id] = [c].[object_id]
    WHERE ([d].[parent_object_id] = OBJECT_ID(N'[tb_Product]') AND [c].[name] = N'CreatedBy');
    IF @var3 IS NOT NULL EXEC(N'ALTER TABLE [tb_Product] DROP CONSTRAINT [' + @var3 + '];');
    ALTER TABLE [tb_Product] ALTER COLUMN [CreatedBy] nvarchar(max) NULL;
END;
GO

IF NOT EXISTS(SELECT * FROM [__EFMigrationsHistory] WHERE [MigrationId] = N'20240722131507_AddAllowNullInCommonAstract')
BEGIN
    DECLARE @var4 sysname;
    SELECT @var4 = [d].[name]
    FROM [sys].[default_constraints] [d]
    INNER JOIN [sys].[columns] [c] ON [d].[parent_column_id] = [c].[column_id] AND [d].[parent_object_id] = [c].[object_id]
    WHERE ([d].[parent_object_id] = OBJECT_ID(N'[tb_Posts]') AND [c].[name] = N'ModifiedBy');
    IF @var4 IS NOT NULL EXEC(N'ALTER TABLE [tb_Posts] DROP CONSTRAINT [' + @var4 + '];');
    ALTER TABLE [tb_Posts] ALTER COLUMN [ModifiedBy] nvarchar(max) NULL;
END;
GO

IF NOT EXISTS(SELECT * FROM [__EFMigrationsHistory] WHERE [MigrationId] = N'20240722131507_AddAllowNullInCommonAstract')
BEGIN
    DECLARE @var5 sysname;
    SELECT @var5 = [d].[name]
    FROM [sys].[default_constraints] [d]
    INNER JOIN [sys].[columns] [c] ON [d].[parent_column_id] = [c].[column_id] AND [d].[parent_object_id] = [c].[object_id]
    WHERE ([d].[parent_object_id] = OBJECT_ID(N'[tb_Posts]') AND [c].[name] = N'CreatedBy');
    IF @var5 IS NOT NULL EXEC(N'ALTER TABLE [tb_Posts] DROP CONSTRAINT [' + @var5 + '];');
    ALTER TABLE [tb_Posts] ALTER COLUMN [CreatedBy] nvarchar(max) NULL;
END;
GO

IF NOT EXISTS(SELECT * FROM [__EFMigrationsHistory] WHERE [MigrationId] = N'20240722131507_AddAllowNullInCommonAstract')
BEGIN
    DECLARE @var6 sysname;
    SELECT @var6 = [d].[name]
    FROM [sys].[default_constraints] [d]
    INNER JOIN [sys].[columns] [c] ON [d].[parent_column_id] = [c].[column_id] AND [d].[parent_object_id] = [c].[object_id]
    WHERE ([d].[parent_object_id] = OBJECT_ID(N'[tb_Order]') AND [c].[name] = N'ModifiedBy');
    IF @var6 IS NOT NULL EXEC(N'ALTER TABLE [tb_Order] DROP CONSTRAINT [' + @var6 + '];');
    ALTER TABLE [tb_Order] ALTER COLUMN [ModifiedBy] nvarchar(max) NULL;
END;
GO

IF NOT EXISTS(SELECT * FROM [__EFMigrationsHistory] WHERE [MigrationId] = N'20240722131507_AddAllowNullInCommonAstract')
BEGIN
    DECLARE @var7 sysname;
    SELECT @var7 = [d].[name]
    FROM [sys].[default_constraints] [d]
    INNER JOIN [sys].[columns] [c] ON [d].[parent_column_id] = [c].[column_id] AND [d].[parent_object_id] = [c].[object_id]
    WHERE ([d].[parent_object_id] = OBJECT_ID(N'[tb_Order]') AND [c].[name] = N'CreatedBy');
    IF @var7 IS NOT NULL EXEC(N'ALTER TABLE [tb_Order] DROP CONSTRAINT [' + @var7 + '];');
    ALTER TABLE [tb_Order] ALTER COLUMN [CreatedBy] nvarchar(max) NULL;
END;
GO

IF NOT EXISTS(SELECT * FROM [__EFMigrationsHistory] WHERE [MigrationId] = N'20240722131507_AddAllowNullInCommonAstract')
BEGIN
    DECLARE @var8 sysname;
    SELECT @var8 = [d].[name]
    FROM [sys].[default_constraints] [d]
    INNER JOIN [sys].[columns] [c] ON [d].[parent_column_id] = [c].[column_id] AND [d].[parent_object_id] = [c].[object_id]
    WHERE ([d].[parent_object_id] = OBJECT_ID(N'[tb_News]') AND [c].[name] = N'ModifiedBy');
    IF @var8 IS NOT NULL EXEC(N'ALTER TABLE [tb_News] DROP CONSTRAINT [' + @var8 + '];');
    ALTER TABLE [tb_News] ALTER COLUMN [ModifiedBy] nvarchar(max) NULL;
END;
GO

IF NOT EXISTS(SELECT * FROM [__EFMigrationsHistory] WHERE [MigrationId] = N'20240722131507_AddAllowNullInCommonAstract')
BEGIN
    DECLARE @var9 sysname;
    SELECT @var9 = [d].[name]
    FROM [sys].[default_constraints] [d]
    INNER JOIN [sys].[columns] [c] ON [d].[parent_column_id] = [c].[column_id] AND [d].[parent_object_id] = [c].[object_id]
    WHERE ([d].[parent_object_id] = OBJECT_ID(N'[tb_News]') AND [c].[name] = N'CreatedBy');
    IF @var9 IS NOT NULL EXEC(N'ALTER TABLE [tb_News] DROP CONSTRAINT [' + @var9 + '];');
    ALTER TABLE [tb_News] ALTER COLUMN [CreatedBy] nvarchar(max) NULL;
END;
GO

IF NOT EXISTS(SELECT * FROM [__EFMigrationsHistory] WHERE [MigrationId] = N'20240722131507_AddAllowNullInCommonAstract')
BEGIN
    DECLARE @var10 sysname;
    SELECT @var10 = [d].[name]
    FROM [sys].[default_constraints] [d]
    INNER JOIN [sys].[columns] [c] ON [d].[parent_column_id] = [c].[column_id] AND [d].[parent_object_id] = [c].[object_id]
    WHERE ([d].[parent_object_id] = OBJECT_ID(N'[tb_Contact]') AND [c].[name] = N'ModifiedBy');
    IF @var10 IS NOT NULL EXEC(N'ALTER TABLE [tb_Contact] DROP CONSTRAINT [' + @var10 + '];');
    ALTER TABLE [tb_Contact] ALTER COLUMN [ModifiedBy] nvarchar(max) NULL;
END;
GO

IF NOT EXISTS(SELECT * FROM [__EFMigrationsHistory] WHERE [MigrationId] = N'20240722131507_AddAllowNullInCommonAstract')
BEGIN
    DECLARE @var11 sysname;
    SELECT @var11 = [d].[name]
    FROM [sys].[default_constraints] [d]
    INNER JOIN [sys].[columns] [c] ON [d].[parent_column_id] = [c].[column_id] AND [d].[parent_object_id] = [c].[object_id]
    WHERE ([d].[parent_object_id] = OBJECT_ID(N'[tb_Contact]') AND [c].[name] = N'CreatedBy');
    IF @var11 IS NOT NULL EXEC(N'ALTER TABLE [tb_Contact] DROP CONSTRAINT [' + @var11 + '];');
    ALTER TABLE [tb_Contact] ALTER COLUMN [CreatedBy] nvarchar(max) NULL;
END;
GO

IF NOT EXISTS(SELECT * FROM [__EFMigrationsHistory] WHERE [MigrationId] = N'20240722131507_AddAllowNullInCommonAstract')
BEGIN
    DECLARE @var12 sysname;
    SELECT @var12 = [d].[name]
    FROM [sys].[default_constraints] [d]
    INNER JOIN [sys].[columns] [c] ON [d].[parent_column_id] = [c].[column_id] AND [d].[parent_object_id] = [c].[object_id]
    WHERE ([d].[parent_object_id] = OBJECT_ID(N'[tb_Category]') AND [c].[name] = N'ModifiedBy');
    IF @var12 IS NOT NULL EXEC(N'ALTER TABLE [tb_Category] DROP CONSTRAINT [' + @var12 + '];');
    ALTER TABLE [tb_Category] ALTER COLUMN [ModifiedBy] nvarchar(max) NULL;
END;
GO

IF NOT EXISTS(SELECT * FROM [__EFMigrationsHistory] WHERE [MigrationId] = N'20240722131507_AddAllowNullInCommonAstract')
BEGIN
    DECLARE @var13 sysname;
    SELECT @var13 = [d].[name]
    FROM [sys].[default_constraints] [d]
    INNER JOIN [sys].[columns] [c] ON [d].[parent_column_id] = [c].[column_id] AND [d].[parent_object_id] = [c].[object_id]
    WHERE ([d].[parent_object_id] = OBJECT_ID(N'[tb_Category]') AND [c].[name] = N'CreatedBy');
    IF @var13 IS NOT NULL EXEC(N'ALTER TABLE [tb_Category] DROP CONSTRAINT [' + @var13 + '];');
    ALTER TABLE [tb_Category] ALTER COLUMN [CreatedBy] nvarchar(max) NULL;
END;
GO

IF NOT EXISTS(SELECT * FROM [__EFMigrationsHistory] WHERE [MigrationId] = N'20240722131507_AddAllowNullInCommonAstract')
BEGIN
    DECLARE @var14 sysname;
    SELECT @var14 = [d].[name]
    FROM [sys].[default_constraints] [d]
    INNER JOIN [sys].[columns] [c] ON [d].[parent_column_id] = [c].[column_id] AND [d].[parent_object_id] = [c].[object_id]
    WHERE ([d].[parent_object_id] = OBJECT_ID(N'[tb_Adv]') AND [c].[name] = N'ModifiedBy');
    IF @var14 IS NOT NULL EXEC(N'ALTER TABLE [tb_Adv] DROP CONSTRAINT [' + @var14 + '];');
    ALTER TABLE [tb_Adv] ALTER COLUMN [ModifiedBy] nvarchar(max) NULL;
END;
GO

IF NOT EXISTS(SELECT * FROM [__EFMigrationsHistory] WHERE [MigrationId] = N'20240722131507_AddAllowNullInCommonAstract')
BEGIN
    DECLARE @var15 sysname;
    SELECT @var15 = [d].[name]
    FROM [sys].[default_constraints] [d]
    INNER JOIN [sys].[columns] [c] ON [d].[parent_column_id] = [c].[column_id] AND [d].[parent_object_id] = [c].[object_id]
    WHERE ([d].[parent_object_id] = OBJECT_ID(N'[tb_Adv]') AND [c].[name] = N'CreatedBy');
    IF @var15 IS NOT NULL EXEC(N'ALTER TABLE [tb_Adv] DROP CONSTRAINT [' + @var15 + '];');
    ALTER TABLE [tb_Adv] ALTER COLUMN [CreatedBy] nvarchar(max) NULL;
END;
GO

IF NOT EXISTS(SELECT * FROM [__EFMigrationsHistory] WHERE [MigrationId] = N'20240722131507_AddAllowNullInCommonAstract')
BEGIN
    INSERT INTO [__EFMigrationsHistory] ([MigrationId], [ProductVersion])
    VALUES (N'20240722131507_AddAllowNullInCommonAstract', N'6.0.21');
END;
GO

COMMIT;
GO

BEGIN TRANSACTION;
GO

IF NOT EXISTS(SELECT * FROM [__EFMigrationsHistory] WHERE [MigrationId] = N'20240722132309_updateAllowNull')
BEGIN
    DECLARE @var16 sysname;
    SELECT @var16 = [d].[name]
    FROM [sys].[default_constraints] [d]
    INNER JOIN [sys].[columns] [c] ON [d].[parent_column_id] = [c].[column_id] AND [d].[parent_object_id] = [c].[object_id]
    WHERE ([d].[parent_object_id] = OBJECT_ID(N'[tb_Posts]') AND [c].[name] = N'SeoTitle');
    IF @var16 IS NOT NULL EXEC(N'ALTER TABLE [tb_Posts] DROP CONSTRAINT [' + @var16 + '];');
    ALTER TABLE [tb_Posts] ALTER COLUMN [SeoTitle] nvarchar(250) NULL;
END;
GO

IF NOT EXISTS(SELECT * FROM [__EFMigrationsHistory] WHERE [MigrationId] = N'20240722132309_updateAllowNull')
BEGIN
    DECLARE @var17 sysname;
    SELECT @var17 = [d].[name]
    FROM [sys].[default_constraints] [d]
    INNER JOIN [sys].[columns] [c] ON [d].[parent_column_id] = [c].[column_id] AND [d].[parent_object_id] = [c].[object_id]
    WHERE ([d].[parent_object_id] = OBJECT_ID(N'[tb_Posts]') AND [c].[name] = N'SeoKeywords');
    IF @var17 IS NOT NULL EXEC(N'ALTER TABLE [tb_Posts] DROP CONSTRAINT [' + @var17 + '];');
    ALTER TABLE [tb_Posts] ALTER COLUMN [SeoKeywords] nvarchar(250) NULL;
END;
GO

IF NOT EXISTS(SELECT * FROM [__EFMigrationsHistory] WHERE [MigrationId] = N'20240722132309_updateAllowNull')
BEGIN
    DECLARE @var18 sysname;
    SELECT @var18 = [d].[name]
    FROM [sys].[default_constraints] [d]
    INNER JOIN [sys].[columns] [c] ON [d].[parent_column_id] = [c].[column_id] AND [d].[parent_object_id] = [c].[object_id]
    WHERE ([d].[parent_object_id] = OBJECT_ID(N'[tb_Posts]') AND [c].[name] = N'SeoDescription');
    IF @var18 IS NOT NULL EXEC(N'ALTER TABLE [tb_Posts] DROP CONSTRAINT [' + @var18 + '];');
    ALTER TABLE [tb_Posts] ALTER COLUMN [SeoDescription] nvarchar(500) NULL;
END;
GO

IF NOT EXISTS(SELECT * FROM [__EFMigrationsHistory] WHERE [MigrationId] = N'20240722132309_updateAllowNull')
BEGIN
    DECLARE @var19 sysname;
    SELECT @var19 = [d].[name]
    FROM [sys].[default_constraints] [d]
    INNER JOIN [sys].[columns] [c] ON [d].[parent_column_id] = [c].[column_id] AND [d].[parent_object_id] = [c].[object_id]
    WHERE ([d].[parent_object_id] = OBJECT_ID(N'[tb_Posts]') AND [c].[name] = N'Image');
    IF @var19 IS NOT NULL EXEC(N'ALTER TABLE [tb_Posts] DROP CONSTRAINT [' + @var19 + '];');
    ALTER TABLE [tb_Posts] ALTER COLUMN [Image] nvarchar(250) NULL;
END;
GO

IF NOT EXISTS(SELECT * FROM [__EFMigrationsHistory] WHERE [MigrationId] = N'20240722132309_updateAllowNull')
BEGIN
    DECLARE @var20 sysname;
    SELECT @var20 = [d].[name]
    FROM [sys].[default_constraints] [d]
    INNER JOIN [sys].[columns] [c] ON [d].[parent_column_id] = [c].[column_id] AND [d].[parent_object_id] = [c].[object_id]
    WHERE ([d].[parent_object_id] = OBJECT_ID(N'[tb_Posts]') AND [c].[name] = N'Detail');
    IF @var20 IS NOT NULL EXEC(N'ALTER TABLE [tb_Posts] DROP CONSTRAINT [' + @var20 + '];');
    ALTER TABLE [tb_Posts] ALTER COLUMN [Detail] nvarchar(max) NULL;
END;
GO

IF NOT EXISTS(SELECT * FROM [__EFMigrationsHistory] WHERE [MigrationId] = N'20240722132309_updateAllowNull')
BEGIN
    DECLARE @var21 sysname;
    SELECT @var21 = [d].[name]
    FROM [sys].[default_constraints] [d]
    INNER JOIN [sys].[columns] [c] ON [d].[parent_column_id] = [c].[column_id] AND [d].[parent_object_id] = [c].[object_id]
    WHERE ([d].[parent_object_id] = OBJECT_ID(N'[tb_Posts]') AND [c].[name] = N'Description');
    IF @var21 IS NOT NULL EXEC(N'ALTER TABLE [tb_Posts] DROP CONSTRAINT [' + @var21 + '];');
    ALTER TABLE [tb_Posts] ALTER COLUMN [Description] nvarchar(max) NULL;
END;
GO

IF NOT EXISTS(SELECT * FROM [__EFMigrationsHistory] WHERE [MigrationId] = N'20240722132309_updateAllowNull')
BEGIN
    DECLARE @var22 sysname;
    SELECT @var22 = [d].[name]
    FROM [sys].[default_constraints] [d]
    INNER JOIN [sys].[columns] [c] ON [d].[parent_column_id] = [c].[column_id] AND [d].[parent_object_id] = [c].[object_id]
    WHERE ([d].[parent_object_id] = OBJECT_ID(N'[tb_Posts]') AND [c].[name] = N'Alias');
    IF @var22 IS NOT NULL EXEC(N'ALTER TABLE [tb_Posts] DROP CONSTRAINT [' + @var22 + '];');
    ALTER TABLE [tb_Posts] ALTER COLUMN [Alias] nvarchar(150) NULL;
END;
GO

IF NOT EXISTS(SELECT * FROM [__EFMigrationsHistory] WHERE [MigrationId] = N'20240722132309_updateAllowNull')
BEGIN
    DECLARE @var23 sysname;
    SELECT @var23 = [d].[name]
    FROM [sys].[default_constraints] [d]
    INNER JOIN [sys].[columns] [c] ON [d].[parent_column_id] = [c].[column_id] AND [d].[parent_object_id] = [c].[object_id]
    WHERE ([d].[parent_object_id] = OBJECT_ID(N'[tb_News]') AND [c].[name] = N'SeoTitle');
    IF @var23 IS NOT NULL EXEC(N'ALTER TABLE [tb_News] DROP CONSTRAINT [' + @var23 + '];');
    ALTER TABLE [tb_News] ALTER COLUMN [SeoTitle] nvarchar(max) NULL;
END;
GO

IF NOT EXISTS(SELECT * FROM [__EFMigrationsHistory] WHERE [MigrationId] = N'20240722132309_updateAllowNull')
BEGIN
    DECLARE @var24 sysname;
    SELECT @var24 = [d].[name]
    FROM [sys].[default_constraints] [d]
    INNER JOIN [sys].[columns] [c] ON [d].[parent_column_id] = [c].[column_id] AND [d].[parent_object_id] = [c].[object_id]
    WHERE ([d].[parent_object_id] = OBJECT_ID(N'[tb_News]') AND [c].[name] = N'SeoKeywords');
    IF @var24 IS NOT NULL EXEC(N'ALTER TABLE [tb_News] DROP CONSTRAINT [' + @var24 + '];');
    ALTER TABLE [tb_News] ALTER COLUMN [SeoKeywords] nvarchar(max) NULL;
END;
GO

IF NOT EXISTS(SELECT * FROM [__EFMigrationsHistory] WHERE [MigrationId] = N'20240722132309_updateAllowNull')
BEGIN
    DECLARE @var25 sysname;
    SELECT @var25 = [d].[name]
    FROM [sys].[default_constraints] [d]
    INNER JOIN [sys].[columns] [c] ON [d].[parent_column_id] = [c].[column_id] AND [d].[parent_object_id] = [c].[object_id]
    WHERE ([d].[parent_object_id] = OBJECT_ID(N'[tb_News]') AND [c].[name] = N'SeoDescription');
    IF @var25 IS NOT NULL EXEC(N'ALTER TABLE [tb_News] DROP CONSTRAINT [' + @var25 + '];');
    ALTER TABLE [tb_News] ALTER COLUMN [SeoDescription] nvarchar(max) NULL;
END;
GO

IF NOT EXISTS(SELECT * FROM [__EFMigrationsHistory] WHERE [MigrationId] = N'20240722132309_updateAllowNull')
BEGIN
    DECLARE @var26 sysname;
    SELECT @var26 = [d].[name]
    FROM [sys].[default_constraints] [d]
    INNER JOIN [sys].[columns] [c] ON [d].[parent_column_id] = [c].[column_id] AND [d].[parent_object_id] = [c].[object_id]
    WHERE ([d].[parent_object_id] = OBJECT_ID(N'[tb_News]') AND [c].[name] = N'Image');
    IF @var26 IS NOT NULL EXEC(N'ALTER TABLE [tb_News] DROP CONSTRAINT [' + @var26 + '];');
    ALTER TABLE [tb_News] ALTER COLUMN [Image] nvarchar(max) NULL;
END;
GO

IF NOT EXISTS(SELECT * FROM [__EFMigrationsHistory] WHERE [MigrationId] = N'20240722132309_updateAllowNull')
BEGIN
    DECLARE @var27 sysname;
    SELECT @var27 = [d].[name]
    FROM [sys].[default_constraints] [d]
    INNER JOIN [sys].[columns] [c] ON [d].[parent_column_id] = [c].[column_id] AND [d].[parent_object_id] = [c].[object_id]
    WHERE ([d].[parent_object_id] = OBJECT_ID(N'[tb_News]') AND [c].[name] = N'Detail');
    IF @var27 IS NOT NULL EXEC(N'ALTER TABLE [tb_News] DROP CONSTRAINT [' + @var27 + '];');
    ALTER TABLE [tb_News] ALTER COLUMN [Detail] nvarchar(max) NULL;
END;
GO

IF NOT EXISTS(SELECT * FROM [__EFMigrationsHistory] WHERE [MigrationId] = N'20240722132309_updateAllowNull')
BEGIN
    DECLARE @var28 sysname;
    SELECT @var28 = [d].[name]
    FROM [sys].[default_constraints] [d]
    INNER JOIN [sys].[columns] [c] ON [d].[parent_column_id] = [c].[column_id] AND [d].[parent_object_id] = [c].[object_id]
    WHERE ([d].[parent_object_id] = OBJECT_ID(N'[tb_News]') AND [c].[name] = N'Description');
    IF @var28 IS NOT NULL EXEC(N'ALTER TABLE [tb_News] DROP CONSTRAINT [' + @var28 + '];');
    ALTER TABLE [tb_News] ALTER COLUMN [Description] nvarchar(max) NULL;
END;
GO

IF NOT EXISTS(SELECT * FROM [__EFMigrationsHistory] WHERE [MigrationId] = N'20240722132309_updateAllowNull')
BEGIN
    DECLARE @var29 sysname;
    SELECT @var29 = [d].[name]
    FROM [sys].[default_constraints] [d]
    INNER JOIN [sys].[columns] [c] ON [d].[parent_column_id] = [c].[column_id] AND [d].[parent_object_id] = [c].[object_id]
    WHERE ([d].[parent_object_id] = OBJECT_ID(N'[tb_News]') AND [c].[name] = N'Alias');
    IF @var29 IS NOT NULL EXEC(N'ALTER TABLE [tb_News] DROP CONSTRAINT [' + @var29 + '];');
    ALTER TABLE [tb_News] ALTER COLUMN [Alias] nvarchar(max) NULL;
END;
GO

IF NOT EXISTS(SELECT * FROM [__EFMigrationsHistory] WHERE [MigrationId] = N'20240722132309_updateAllowNull')
BEGIN
    DECLARE @var30 sysname;
    SELECT @var30 = [d].[name]
    FROM [sys].[default_constraints] [d]
    INNER JOIN [sys].[columns] [c] ON [d].[parent_column_id] = [c].[column_id] AND [d].[parent_object_id] = [c].[object_id]
    WHERE ([d].[parent_object_id] = OBJECT_ID(N'[tb_Contact]') AND [c].[name] = N'Message');
    IF @var30 IS NOT NULL EXEC(N'ALTER TABLE [tb_Contact] DROP CONSTRAINT [' + @var30 + '];');
    ALTER TABLE [tb_Contact] ALTER COLUMN [Message] nvarchar(4000) NULL;
END;
GO

IF NOT EXISTS(SELECT * FROM [__EFMigrationsHistory] WHERE [MigrationId] = N'20240722132309_updateAllowNull')
BEGIN
    DECLARE @var31 sysname;
    SELECT @var31 = [d].[name]
    FROM [sys].[default_constraints] [d]
    INNER JOIN [sys].[columns] [c] ON [d].[parent_column_id] = [c].[column_id] AND [d].[parent_object_id] = [c].[object_id]
    WHERE ([d].[parent_object_id] = OBJECT_ID(N'[tb_Contact]') AND [c].[name] = N'Email');
    IF @var31 IS NOT NULL EXEC(N'ALTER TABLE [tb_Contact] DROP CONSTRAINT [' + @var31 + '];');
    ALTER TABLE [tb_Contact] ALTER COLUMN [Email] nvarchar(150) NULL;
END;
GO

IF NOT EXISTS(SELECT * FROM [__EFMigrationsHistory] WHERE [MigrationId] = N'20240722132309_updateAllowNull')
BEGIN
    DECLARE @var32 sysname;
    SELECT @var32 = [d].[name]
    FROM [sys].[default_constraints] [d]
    INNER JOIN [sys].[columns] [c] ON [d].[parent_column_id] = [c].[column_id] AND [d].[parent_object_id] = [c].[object_id]
    WHERE ([d].[parent_object_id] = OBJECT_ID(N'[tb_Contact]') AND [c].[name] = N'Company');
    IF @var32 IS NOT NULL EXEC(N'ALTER TABLE [tb_Contact] DROP CONSTRAINT [' + @var32 + '];');
    ALTER TABLE [tb_Contact] ALTER COLUMN [Company] nvarchar(max) NULL;
END;
GO

IF NOT EXISTS(SELECT * FROM [__EFMigrationsHistory] WHERE [MigrationId] = N'20240722132309_updateAllowNull')
BEGIN
    DECLARE @var33 sysname;
    SELECT @var33 = [d].[name]
    FROM [sys].[default_constraints] [d]
    INNER JOIN [sys].[columns] [c] ON [d].[parent_column_id] = [c].[column_id] AND [d].[parent_object_id] = [c].[object_id]
    WHERE ([d].[parent_object_id] = OBJECT_ID(N'[tb_Category]') AND [c].[name] = N'SeoTitle');
    IF @var33 IS NOT NULL EXEC(N'ALTER TABLE [tb_Category] DROP CONSTRAINT [' + @var33 + '];');
    ALTER TABLE [tb_Category] ALTER COLUMN [SeoTitle] nvarchar(150) NULL;
END;
GO

IF NOT EXISTS(SELECT * FROM [__EFMigrationsHistory] WHERE [MigrationId] = N'20240722132309_updateAllowNull')
BEGIN
    DECLARE @var34 sysname;
    SELECT @var34 = [d].[name]
    FROM [sys].[default_constraints] [d]
    INNER JOIN [sys].[columns] [c] ON [d].[parent_column_id] = [c].[column_id] AND [d].[parent_object_id] = [c].[object_id]
    WHERE ([d].[parent_object_id] = OBJECT_ID(N'[tb_Category]') AND [c].[name] = N'SeoKeywords');
    IF @var34 IS NOT NULL EXEC(N'ALTER TABLE [tb_Category] DROP CONSTRAINT [' + @var34 + '];');
    ALTER TABLE [tb_Category] ALTER COLUMN [SeoKeywords] nvarchar(150) NULL;
END;
GO

IF NOT EXISTS(SELECT * FROM [__EFMigrationsHistory] WHERE [MigrationId] = N'20240722132309_updateAllowNull')
BEGIN
    DECLARE @var35 sysname;
    SELECT @var35 = [d].[name]
    FROM [sys].[default_constraints] [d]
    INNER JOIN [sys].[columns] [c] ON [d].[parent_column_id] = [c].[column_id] AND [d].[parent_object_id] = [c].[object_id]
    WHERE ([d].[parent_object_id] = OBJECT_ID(N'[tb_Category]') AND [c].[name] = N'SeoDescription');
    IF @var35 IS NOT NULL EXEC(N'ALTER TABLE [tb_Category] DROP CONSTRAINT [' + @var35 + '];');
    ALTER TABLE [tb_Category] ALTER COLUMN [SeoDescription] nvarchar(250) NULL;
END;
GO

IF NOT EXISTS(SELECT * FROM [__EFMigrationsHistory] WHERE [MigrationId] = N'20240722132309_updateAllowNull')
BEGIN
    DECLARE @var36 sysname;
    SELECT @var36 = [d].[name]
    FROM [sys].[default_constraints] [d]
    INNER JOIN [sys].[columns] [c] ON [d].[parent_column_id] = [c].[column_id] AND [d].[parent_object_id] = [c].[object_id]
    WHERE ([d].[parent_object_id] = OBJECT_ID(N'[tb_Category]') AND [c].[name] = N'Link');
    IF @var36 IS NOT NULL EXEC(N'ALTER TABLE [tb_Category] DROP CONSTRAINT [' + @var36 + '];');
    ALTER TABLE [tb_Category] ALTER COLUMN [Link] nvarchar(max) NULL;
END;
GO

IF NOT EXISTS(SELECT * FROM [__EFMigrationsHistory] WHERE [MigrationId] = N'20240722132309_updateAllowNull')
BEGIN
    DECLARE @var37 sysname;
    SELECT @var37 = [d].[name]
    FROM [sys].[default_constraints] [d]
    INNER JOIN [sys].[columns] [c] ON [d].[parent_column_id] = [c].[column_id] AND [d].[parent_object_id] = [c].[object_id]
    WHERE ([d].[parent_object_id] = OBJECT_ID(N'[tb_Category]') AND [c].[name] = N'Description');
    IF @var37 IS NOT NULL EXEC(N'ALTER TABLE [tb_Category] DROP CONSTRAINT [' + @var37 + '];');
    ALTER TABLE [tb_Category] ALTER COLUMN [Description] nvarchar(max) NULL;
END;
GO

IF NOT EXISTS(SELECT * FROM [__EFMigrationsHistory] WHERE [MigrationId] = N'20240722132309_updateAllowNull')
BEGIN
    DECLARE @var38 sysname;
    SELECT @var38 = [d].[name]
    FROM [sys].[default_constraints] [d]
    INNER JOIN [sys].[columns] [c] ON [d].[parent_column_id] = [c].[column_id] AND [d].[parent_object_id] = [c].[object_id]
    WHERE ([d].[parent_object_id] = OBJECT_ID(N'[tb_Adv]') AND [c].[name] = N'Link');
    IF @var38 IS NOT NULL EXEC(N'ALTER TABLE [tb_Adv] DROP CONSTRAINT [' + @var38 + '];');
    ALTER TABLE [tb_Adv] ALTER COLUMN [Link] nvarchar(500) NULL;
END;
GO

IF NOT EXISTS(SELECT * FROM [__EFMigrationsHistory] WHERE [MigrationId] = N'20240722132309_updateAllowNull')
BEGIN
    DECLARE @var39 sysname;
    SELECT @var39 = [d].[name]
    FROM [sys].[default_constraints] [d]
    INNER JOIN [sys].[columns] [c] ON [d].[parent_column_id] = [c].[column_id] AND [d].[parent_object_id] = [c].[object_id]
    WHERE ([d].[parent_object_id] = OBJECT_ID(N'[tb_Adv]') AND [c].[name] = N'Image');
    IF @var39 IS NOT NULL EXEC(N'ALTER TABLE [tb_Adv] DROP CONSTRAINT [' + @var39 + '];');
    ALTER TABLE [tb_Adv] ALTER COLUMN [Image] nvarchar(500) NULL;
END;
GO

IF NOT EXISTS(SELECT * FROM [__EFMigrationsHistory] WHERE [MigrationId] = N'20240722132309_updateAllowNull')
BEGIN
    DECLARE @var40 sysname;
    SELECT @var40 = [d].[name]
    FROM [sys].[default_constraints] [d]
    INNER JOIN [sys].[columns] [c] ON [d].[parent_column_id] = [c].[column_id] AND [d].[parent_object_id] = [c].[object_id]
    WHERE ([d].[parent_object_id] = OBJECT_ID(N'[tb_Adv]') AND [c].[name] = N'Description');
    IF @var40 IS NOT NULL EXEC(N'ALTER TABLE [tb_Adv] DROP CONSTRAINT [' + @var40 + '];');
    ALTER TABLE [tb_Adv] ALTER COLUMN [Description] nvarchar(500) NULL;
END;
GO

IF NOT EXISTS(SELECT * FROM [__EFMigrationsHistory] WHERE [MigrationId] = N'20240722132309_updateAllowNull')
BEGIN
    INSERT INTO [__EFMigrationsHistory] ([MigrationId], [ProductVersion])
    VALUES (N'20240722132309_updateAllowNull', N'6.0.21');
END;
GO

COMMIT;
GO

BEGIN TRANSACTION;
GO

IF NOT EXISTS(SELECT * FROM [__EFMigrationsHistory] WHERE [MigrationId] = N'20240723130607_updateStringLengthNew')
BEGIN
    DECLARE @var41 sysname;
    SELECT @var41 = [d].[name]
    FROM [sys].[default_constraints] [d]
    INNER JOIN [sys].[columns] [c] ON [d].[parent_column_id] = [c].[column_id] AND [d].[parent_object_id] = [c].[object_id]
    WHERE ([d].[parent_object_id] = OBJECT_ID(N'[tb_News]') AND [c].[name] = N'Title');
    IF @var41 IS NOT NULL EXEC(N'ALTER TABLE [tb_News] DROP CONSTRAINT [' + @var41 + '];');
    ALTER TABLE [tb_News] ALTER COLUMN [Title] nvarchar(1000) NOT NULL;
END;
GO

IF NOT EXISTS(SELECT * FROM [__EFMigrationsHistory] WHERE [MigrationId] = N'20240723130607_updateStringLengthNew')
BEGIN
    INSERT INTO [__EFMigrationsHistory] ([MigrationId], [ProductVersion])
    VALUES (N'20240723130607_updateStringLengthNew', N'6.0.21');
END;
GO

COMMIT;
GO

BEGIN TRANSACTION;
GO

IF NOT EXISTS(SELECT * FROM [__EFMigrationsHistory] WHERE [MigrationId] = N'20240723161242_updateNotNullProduct')
BEGIN
    DECLARE @var42 sysname;
    SELECT @var42 = [d].[name]
    FROM [sys].[default_constraints] [d]
    INNER JOIN [sys].[columns] [c] ON [d].[parent_column_id] = [c].[column_id] AND [d].[parent_object_id] = [c].[object_id]
    WHERE ([d].[parent_object_id] = OBJECT_ID(N'[tb_ProductCategory]') AND [c].[name] = N'SeoTitle');
    IF @var42 IS NOT NULL EXEC(N'ALTER TABLE [tb_ProductCategory] DROP CONSTRAINT [' + @var42 + '];');
    ALTER TABLE [tb_ProductCategory] ALTER COLUMN [SeoTitle] nvarchar(250) NULL;
END;
GO

IF NOT EXISTS(SELECT * FROM [__EFMigrationsHistory] WHERE [MigrationId] = N'20240723161242_updateNotNullProduct')
BEGIN
    DECLARE @var43 sysname;
    SELECT @var43 = [d].[name]
    FROM [sys].[default_constraints] [d]
    INNER JOIN [sys].[columns] [c] ON [d].[parent_column_id] = [c].[column_id] AND [d].[parent_object_id] = [c].[object_id]
    WHERE ([d].[parent_object_id] = OBJECT_ID(N'[tb_ProductCategory]') AND [c].[name] = N'SeoKeywords');
    IF @var43 IS NOT NULL EXEC(N'ALTER TABLE [tb_ProductCategory] DROP CONSTRAINT [' + @var43 + '];');
    ALTER TABLE [tb_ProductCategory] ALTER COLUMN [SeoKeywords] nvarchar(250) NULL;
END;
GO

IF NOT EXISTS(SELECT * FROM [__EFMigrationsHistory] WHERE [MigrationId] = N'20240723161242_updateNotNullProduct')
BEGIN
    DECLARE @var44 sysname;
    SELECT @var44 = [d].[name]
    FROM [sys].[default_constraints] [d]
    INNER JOIN [sys].[columns] [c] ON [d].[parent_column_id] = [c].[column_id] AND [d].[parent_object_id] = [c].[object_id]
    WHERE ([d].[parent_object_id] = OBJECT_ID(N'[tb_ProductCategory]') AND [c].[name] = N'SeoDescription');
    IF @var44 IS NOT NULL EXEC(N'ALTER TABLE [tb_ProductCategory] DROP CONSTRAINT [' + @var44 + '];');
    ALTER TABLE [tb_ProductCategory] ALTER COLUMN [SeoDescription] nvarchar(500) NULL;
END;
GO

IF NOT EXISTS(SELECT * FROM [__EFMigrationsHistory] WHERE [MigrationId] = N'20240723161242_updateNotNullProduct')
BEGIN
    DECLARE @var45 sysname;
    SELECT @var45 = [d].[name]
    FROM [sys].[default_constraints] [d]
    INNER JOIN [sys].[columns] [c] ON [d].[parent_column_id] = [c].[column_id] AND [d].[parent_object_id] = [c].[object_id]
    WHERE ([d].[parent_object_id] = OBJECT_ID(N'[tb_ProductCategory]') AND [c].[name] = N'Icon');
    IF @var45 IS NOT NULL EXEC(N'ALTER TABLE [tb_ProductCategory] DROP CONSTRAINT [' + @var45 + '];');
    ALTER TABLE [tb_ProductCategory] ALTER COLUMN [Icon] nvarchar(250) NULL;
END;
GO

IF NOT EXISTS(SELECT * FROM [__EFMigrationsHistory] WHERE [MigrationId] = N'20240723161242_updateNotNullProduct')
BEGIN
    DECLARE @var46 sysname;
    SELECT @var46 = [d].[name]
    FROM [sys].[default_constraints] [d]
    INNER JOIN [sys].[columns] [c] ON [d].[parent_column_id] = [c].[column_id] AND [d].[parent_object_id] = [c].[object_id]
    WHERE ([d].[parent_object_id] = OBJECT_ID(N'[tb_ProductCategory]') AND [c].[name] = N'Description');
    IF @var46 IS NOT NULL EXEC(N'ALTER TABLE [tb_ProductCategory] DROP CONSTRAINT [' + @var46 + '];');
    ALTER TABLE [tb_ProductCategory] ALTER COLUMN [Description] nvarchar(max) NULL;
END;
GO

IF NOT EXISTS(SELECT * FROM [__EFMigrationsHistory] WHERE [MigrationId] = N'20240723161242_updateNotNullProduct')
BEGIN
    DECLARE @var47 sysname;
    SELECT @var47 = [d].[name]
    FROM [sys].[default_constraints] [d]
    INNER JOIN [sys].[columns] [c] ON [d].[parent_column_id] = [c].[column_id] AND [d].[parent_object_id] = [c].[object_id]
    WHERE ([d].[parent_object_id] = OBJECT_ID(N'[tb_ProductCategory]') AND [c].[name] = N'Alias');
    IF @var47 IS NOT NULL EXEC(N'ALTER TABLE [tb_ProductCategory] DROP CONSTRAINT [' + @var47 + '];');
    ALTER TABLE [tb_ProductCategory] ALTER COLUMN [Alias] nvarchar(150) NULL;
END;
GO

IF NOT EXISTS(SELECT * FROM [__EFMigrationsHistory] WHERE [MigrationId] = N'20240723161242_updateNotNullProduct')
BEGIN
    DECLARE @var48 sysname;
    SELECT @var48 = [d].[name]
    FROM [sys].[default_constraints] [d]
    INNER JOIN [sys].[columns] [c] ON [d].[parent_column_id] = [c].[column_id] AND [d].[parent_object_id] = [c].[object_id]
    WHERE ([d].[parent_object_id] = OBJECT_ID(N'[tb_Product]') AND [c].[name] = N'ViewCount');
    IF @var48 IS NOT NULL EXEC(N'ALTER TABLE [tb_Product] DROP CONSTRAINT [' + @var48 + '];');
    ALTER TABLE [tb_Product] ALTER COLUMN [ViewCount] int NULL;
END;
GO

IF NOT EXISTS(SELECT * FROM [__EFMigrationsHistory] WHERE [MigrationId] = N'20240723161242_updateNotNullProduct')
BEGIN
    DECLARE @var49 sysname;
    SELECT @var49 = [d].[name]
    FROM [sys].[default_constraints] [d]
    INNER JOIN [sys].[columns] [c] ON [d].[parent_column_id] = [c].[column_id] AND [d].[parent_object_id] = [c].[object_id]
    WHERE ([d].[parent_object_id] = OBJECT_ID(N'[tb_Product]') AND [c].[name] = N'SeoTitle');
    IF @var49 IS NOT NULL EXEC(N'ALTER TABLE [tb_Product] DROP CONSTRAINT [' + @var49 + '];');
    ALTER TABLE [tb_Product] ALTER COLUMN [SeoTitle] nvarchar(250) NULL;
END;
GO

IF NOT EXISTS(SELECT * FROM [__EFMigrationsHistory] WHERE [MigrationId] = N'20240723161242_updateNotNullProduct')
BEGIN
    DECLARE @var50 sysname;
    SELECT @var50 = [d].[name]
    FROM [sys].[default_constraints] [d]
    INNER JOIN [sys].[columns] [c] ON [d].[parent_column_id] = [c].[column_id] AND [d].[parent_object_id] = [c].[object_id]
    WHERE ([d].[parent_object_id] = OBJECT_ID(N'[tb_Product]') AND [c].[name] = N'SeoKeywords');
    IF @var50 IS NOT NULL EXEC(N'ALTER TABLE [tb_Product] DROP CONSTRAINT [' + @var50 + '];');
    ALTER TABLE [tb_Product] ALTER COLUMN [SeoKeywords] nvarchar(250) NULL;
END;
GO

IF NOT EXISTS(SELECT * FROM [__EFMigrationsHistory] WHERE [MigrationId] = N'20240723161242_updateNotNullProduct')
BEGIN
    DECLARE @var51 sysname;
    SELECT @var51 = [d].[name]
    FROM [sys].[default_constraints] [d]
    INNER JOIN [sys].[columns] [c] ON [d].[parent_column_id] = [c].[column_id] AND [d].[parent_object_id] = [c].[object_id]
    WHERE ([d].[parent_object_id] = OBJECT_ID(N'[tb_Product]') AND [c].[name] = N'SeoDescription');
    IF @var51 IS NOT NULL EXEC(N'ALTER TABLE [tb_Product] DROP CONSTRAINT [' + @var51 + '];');
    ALTER TABLE [tb_Product] ALTER COLUMN [SeoDescription] nvarchar(500) NULL;
END;
GO

IF NOT EXISTS(SELECT * FROM [__EFMigrationsHistory] WHERE [MigrationId] = N'20240723161242_updateNotNullProduct')
BEGIN
    DECLARE @var52 sysname;
    SELECT @var52 = [d].[name]
    FROM [sys].[default_constraints] [d]
    INNER JOIN [sys].[columns] [c] ON [d].[parent_column_id] = [c].[column_id] AND [d].[parent_object_id] = [c].[object_id]
    WHERE ([d].[parent_object_id] = OBJECT_ID(N'[tb_Product]') AND [c].[name] = N'ProductCode');
    IF @var52 IS NOT NULL EXEC(N'ALTER TABLE [tb_Product] DROP CONSTRAINT [' + @var52 + '];');
    ALTER TABLE [tb_Product] ALTER COLUMN [ProductCode] nvarchar(50) NULL;
END;
GO

IF NOT EXISTS(SELECT * FROM [__EFMigrationsHistory] WHERE [MigrationId] = N'20240723161242_updateNotNullProduct')
BEGIN
    DECLARE @var53 sysname;
    SELECT @var53 = [d].[name]
    FROM [sys].[default_constraints] [d]
    INNER JOIN [sys].[columns] [c] ON [d].[parent_column_id] = [c].[column_id] AND [d].[parent_object_id] = [c].[object_id]
    WHERE ([d].[parent_object_id] = OBJECT_ID(N'[tb_Product]') AND [c].[name] = N'Price');
    IF @var53 IS NOT NULL EXEC(N'ALTER TABLE [tb_Product] DROP CONSTRAINT [' + @var53 + '];');
    ALTER TABLE [tb_Product] ALTER COLUMN [Price] decimal(18,2) NULL;
END;
GO

IF NOT EXISTS(SELECT * FROM [__EFMigrationsHistory] WHERE [MigrationId] = N'20240723161242_updateNotNullProduct')
BEGIN
    DECLARE @var54 sysname;
    SELECT @var54 = [d].[name]
    FROM [sys].[default_constraints] [d]
    INNER JOIN [sys].[columns] [c] ON [d].[parent_column_id] = [c].[column_id] AND [d].[parent_object_id] = [c].[object_id]
    WHERE ([d].[parent_object_id] = OBJECT_ID(N'[tb_Product]') AND [c].[name] = N'OriginalPrice');
    IF @var54 IS NOT NULL EXEC(N'ALTER TABLE [tb_Product] DROP CONSTRAINT [' + @var54 + '];');
    ALTER TABLE [tb_Product] ALTER COLUMN [OriginalPrice] decimal(18,2) NULL;
END;
GO

IF NOT EXISTS(SELECT * FROM [__EFMigrationsHistory] WHERE [MigrationId] = N'20240723161242_updateNotNullProduct')
BEGIN
    DECLARE @var55 sysname;
    SELECT @var55 = [d].[name]
    FROM [sys].[default_constraints] [d]
    INNER JOIN [sys].[columns] [c] ON [d].[parent_column_id] = [c].[column_id] AND [d].[parent_object_id] = [c].[object_id]
    WHERE ([d].[parent_object_id] = OBJECT_ID(N'[tb_Product]') AND [c].[name] = N'Image');
    IF @var55 IS NOT NULL EXEC(N'ALTER TABLE [tb_Product] DROP CONSTRAINT [' + @var55 + '];');
    ALTER TABLE [tb_Product] ALTER COLUMN [Image] nvarchar(250) NULL;
END;
GO

IF NOT EXISTS(SELECT * FROM [__EFMigrationsHistory] WHERE [MigrationId] = N'20240723161242_updateNotNullProduct')
BEGIN
    DECLARE @var56 sysname;
    SELECT @var56 = [d].[name]
    FROM [sys].[default_constraints] [d]
    INNER JOIN [sys].[columns] [c] ON [d].[parent_column_id] = [c].[column_id] AND [d].[parent_object_id] = [c].[object_id]
    WHERE ([d].[parent_object_id] = OBJECT_ID(N'[tb_Product]') AND [c].[name] = N'Detail');
    IF @var56 IS NOT NULL EXEC(N'ALTER TABLE [tb_Product] DROP CONSTRAINT [' + @var56 + '];');
    ALTER TABLE [tb_Product] ALTER COLUMN [Detail] nvarchar(max) NULL;
END;
GO

IF NOT EXISTS(SELECT * FROM [__EFMigrationsHistory] WHERE [MigrationId] = N'20240723161242_updateNotNullProduct')
BEGIN
    DECLARE @var57 sysname;
    SELECT @var57 = [d].[name]
    FROM [sys].[default_constraints] [d]
    INNER JOIN [sys].[columns] [c] ON [d].[parent_column_id] = [c].[column_id] AND [d].[parent_object_id] = [c].[object_id]
    WHERE ([d].[parent_object_id] = OBJECT_ID(N'[tb_Product]') AND [c].[name] = N'Description');
    IF @var57 IS NOT NULL EXEC(N'ALTER TABLE [tb_Product] DROP CONSTRAINT [' + @var57 + '];');
    ALTER TABLE [tb_Product] ALTER COLUMN [Description] nvarchar(max) NULL;
END;
GO

IF NOT EXISTS(SELECT * FROM [__EFMigrationsHistory] WHERE [MigrationId] = N'20240723161242_updateNotNullProduct')
BEGIN
    DECLARE @var58 sysname;
    SELECT @var58 = [d].[name]
    FROM [sys].[default_constraints] [d]
    INNER JOIN [sys].[columns] [c] ON [d].[parent_column_id] = [c].[column_id] AND [d].[parent_object_id] = [c].[object_id]
    WHERE ([d].[parent_object_id] = OBJECT_ID(N'[tb_Product]') AND [c].[name] = N'Alias');
    IF @var58 IS NOT NULL EXEC(N'ALTER TABLE [tb_Product] DROP CONSTRAINT [' + @var58 + '];');
    ALTER TABLE [tb_Product] ALTER COLUMN [Alias] nvarchar(250) NULL;
END;
GO

IF NOT EXISTS(SELECT * FROM [__EFMigrationsHistory] WHERE [MigrationId] = N'20240723161242_updateNotNullProduct')
BEGIN
    INSERT INTO [__EFMigrationsHistory] ([MigrationId], [ProductVersion])
    VALUES (N'20240723161242_updateNotNullProduct', N'6.0.21');
END;
GO

COMMIT;
GO

BEGIN TRANSACTION;
GO

IF NOT EXISTS(SELECT * FROM [__EFMigrationsHistory] WHERE [MigrationId] = N'20240726154203_updateSystemSetting')
BEGIN
    DECLARE @var59 sysname;
    SELECT @var59 = [d].[name]
    FROM [sys].[default_constraints] [d]
    INNER JOIN [sys].[columns] [c] ON [d].[parent_column_id] = [c].[column_id] AND [d].[parent_object_id] = [c].[object_id]
    WHERE ([d].[parent_object_id] = OBJECT_ID(N'[tb_SystemSetting]') AND [c].[name] = N'SettingDescription');
    IF @var59 IS NOT NULL EXEC(N'ALTER TABLE [tb_SystemSetting] DROP CONSTRAINT [' + @var59 + '];');
    ALTER TABLE [tb_SystemSetting] ALTER COLUMN [SettingDescription] nvarchar(4000) NULL;
END;
GO

IF NOT EXISTS(SELECT * FROM [__EFMigrationsHistory] WHERE [MigrationId] = N'20240726154203_updateSystemSetting')
BEGIN
    INSERT INTO [__EFMigrationsHistory] ([MigrationId], [ProductVersion])
    VALUES (N'20240726154203_updateSystemSetting', N'6.0.21');
END;
GO

COMMIT;
GO

BEGIN TRANSACTION;
GO

IF NOT EXISTS(SELECT * FROM [__EFMigrationsHistory] WHERE [MigrationId] = N'20240729154056_addAppUser')
BEGIN
    DECLARE @var60 sysname;
    SELECT @var60 = [d].[name]
    FROM [sys].[default_constraints] [d]
    INNER JOIN [sys].[columns] [c] ON [d].[parent_column_id] = [c].[column_id] AND [d].[parent_object_id] = [c].[object_id]
    WHERE ([d].[parent_object_id] = OBJECT_ID(N'[AspNetUserTokens]') AND [c].[name] = N'Name');
    IF @var60 IS NOT NULL EXEC(N'ALTER TABLE [AspNetUserTokens] DROP CONSTRAINT [' + @var60 + '];');
    ALTER TABLE [AspNetUserTokens] ALTER COLUMN [Name] nvarchar(450) NOT NULL;
END;
GO

IF NOT EXISTS(SELECT * FROM [__EFMigrationsHistory] WHERE [MigrationId] = N'20240729154056_addAppUser')
BEGIN
    DECLARE @var61 sysname;
    SELECT @var61 = [d].[name]
    FROM [sys].[default_constraints] [d]
    INNER JOIN [sys].[columns] [c] ON [d].[parent_column_id] = [c].[column_id] AND [d].[parent_object_id] = [c].[object_id]
    WHERE ([d].[parent_object_id] = OBJECT_ID(N'[AspNetUserTokens]') AND [c].[name] = N'LoginProvider');
    IF @var61 IS NOT NULL EXEC(N'ALTER TABLE [AspNetUserTokens] DROP CONSTRAINT [' + @var61 + '];');
    ALTER TABLE [AspNetUserTokens] ALTER COLUMN [LoginProvider] nvarchar(450) NOT NULL;
END;
GO

IF NOT EXISTS(SELECT * FROM [__EFMigrationsHistory] WHERE [MigrationId] = N'20240729154056_addAppUser')
BEGIN
    DECLARE @var62 sysname;
    SELECT @var62 = [d].[name]
    FROM [sys].[default_constraints] [d]
    INNER JOIN [sys].[columns] [c] ON [d].[parent_column_id] = [c].[column_id] AND [d].[parent_object_id] = [c].[object_id]
    WHERE ([d].[parent_object_id] = OBJECT_ID(N'[AspNetUserLogins]') AND [c].[name] = N'ProviderKey');
    IF @var62 IS NOT NULL EXEC(N'ALTER TABLE [AspNetUserLogins] DROP CONSTRAINT [' + @var62 + '];');
    ALTER TABLE [AspNetUserLogins] ALTER COLUMN [ProviderKey] nvarchar(450) NOT NULL;
END;
GO

IF NOT EXISTS(SELECT * FROM [__EFMigrationsHistory] WHERE [MigrationId] = N'20240729154056_addAppUser')
BEGIN
    DECLARE @var63 sysname;
    SELECT @var63 = [d].[name]
    FROM [sys].[default_constraints] [d]
    INNER JOIN [sys].[columns] [c] ON [d].[parent_column_id] = [c].[column_id] AND [d].[parent_object_id] = [c].[object_id]
    WHERE ([d].[parent_object_id] = OBJECT_ID(N'[AspNetUserLogins]') AND [c].[name] = N'LoginProvider');
    IF @var63 IS NOT NULL EXEC(N'ALTER TABLE [AspNetUserLogins] DROP CONSTRAINT [' + @var63 + '];');
    ALTER TABLE [AspNetUserLogins] ALTER COLUMN [LoginProvider] nvarchar(450) NOT NULL;
END;
GO

IF NOT EXISTS(SELECT * FROM [__EFMigrationsHistory] WHERE [MigrationId] = N'20240729154056_addAppUser')
BEGIN
    INSERT INTO [__EFMigrationsHistory] ([MigrationId], [ProductVersion])
    VALUES (N'20240729154056_addAppUser', N'6.0.21');
END;
GO

COMMIT;
GO

BEGIN TRANSACTION;
GO

IF NOT EXISTS(SELECT * FROM [__EFMigrationsHistory] WHERE [MigrationId] = N'20240730142645_addStatusUser')
BEGIN
    ALTER TABLE [AspNetUsers] ADD [Status] int NOT NULL DEFAULT 0;
END;
GO

IF NOT EXISTS(SELECT * FROM [__EFMigrationsHistory] WHERE [MigrationId] = N'20240730142645_addStatusUser')
BEGIN
    INSERT INTO [__EFMigrationsHistory] ([MigrationId], [ProductVersion])
    VALUES (N'20240730142645_addStatusUser', N'6.0.21');
END;
GO

COMMIT;
GO

BEGIN TRANSACTION;
GO

IF NOT EXISTS(SELECT * FROM [__EFMigrationsHistory] WHERE [MigrationId] = N'20240801093935_removeNullPrice')
BEGIN
    DECLARE @var64 sysname;
    SELECT @var64 = [d].[name]
    FROM [sys].[default_constraints] [d]
    INNER JOIN [sys].[columns] [c] ON [d].[parent_column_id] = [c].[column_id] AND [d].[parent_object_id] = [c].[object_id]
    WHERE ([d].[parent_object_id] = OBJECT_ID(N'[tb_Product]') AND [c].[name] = N'Price');
    IF @var64 IS NOT NULL EXEC(N'ALTER TABLE [tb_Product] DROP CONSTRAINT [' + @var64 + '];');
    ALTER TABLE [tb_Product] ALTER COLUMN [Price] decimal(18,2) NOT NULL;
    ALTER TABLE [tb_Product] ADD DEFAULT 0.0 FOR [Price];
END;
GO

IF NOT EXISTS(SELECT * FROM [__EFMigrationsHistory] WHERE [MigrationId] = N'20240801093935_removeNullPrice')
BEGIN
    INSERT INTO [__EFMigrationsHistory] ([MigrationId], [ProductVersion])
    VALUES (N'20240801093935_removeNullPrice', N'6.0.21');
END;
GO

COMMIT;
GO

BEGIN TRANSACTION;
GO

IF NOT EXISTS(SELECT * FROM [__EFMigrationsHistory] WHERE [MigrationId] = N'20240802071951_updateReviewTable')
BEGIN
    DECLARE @var65 sysname;
    SELECT @var65 = [d].[name]
    FROM [sys].[default_constraints] [d]
    INNER JOIN [sys].[columns] [c] ON [d].[parent_column_id] = [c].[column_id] AND [d].[parent_object_id] = [c].[object_id]
    WHERE ([d].[parent_object_id] = OBJECT_ID(N'[tb_Review]') AND [c].[name] = N'UserName');
    IF @var65 IS NOT NULL EXEC(N'ALTER TABLE [tb_Review] DROP CONSTRAINT [' + @var65 + '];');
    ALTER TABLE [tb_Review] ALTER COLUMN [UserName] nvarchar(max) NULL;
END;
GO

IF NOT EXISTS(SELECT * FROM [__EFMigrationsHistory] WHERE [MigrationId] = N'20240802071951_updateReviewTable')
BEGIN
    DECLARE @var66 sysname;
    SELECT @var66 = [d].[name]
    FROM [sys].[default_constraints] [d]
    INNER JOIN [sys].[columns] [c] ON [d].[parent_column_id] = [c].[column_id] AND [d].[parent_object_id] = [c].[object_id]
    WHERE ([d].[parent_object_id] = OBJECT_ID(N'[tb_Review]') AND [c].[name] = N'Avatar');
    IF @var66 IS NOT NULL EXEC(N'ALTER TABLE [tb_Review] DROP CONSTRAINT [' + @var66 + '];');
    ALTER TABLE [tb_Review] ALTER COLUMN [Avatar] nvarchar(max) NULL;
END;
GO

IF NOT EXISTS(SELECT * FROM [__EFMigrationsHistory] WHERE [MigrationId] = N'20240802071951_updateReviewTable')
BEGIN
    INSERT INTO [__EFMigrationsHistory] ([MigrationId], [ProductVersion])
    VALUES (N'20240802071951_updateReviewTable', N'6.0.21');
END;
GO

COMMIT;
GO

BEGIN TRANSACTION;
GO

IF NOT EXISTS(SELECT * FROM [__EFMigrationsHistory] WHERE [MigrationId] = N'20240802085458_changeNullOrder')
BEGIN
    DECLARE @var67 sysname;
    SELECT @var67 = [d].[name]
    FROM [sys].[default_constraints] [d]
    INNER JOIN [sys].[columns] [c] ON [d].[parent_column_id] = [c].[column_id] AND [d].[parent_object_id] = [c].[object_id]
    WHERE ([d].[parent_object_id] = OBJECT_ID(N'[tb_Order]') AND [c].[name] = N'CustomerId');
    IF @var67 IS NOT NULL EXEC(N'ALTER TABLE [tb_Order] DROP CONSTRAINT [' + @var67 + '];');
    ALTER TABLE [tb_Order] ALTER COLUMN [CustomerId] nvarchar(max) NULL;
END;
GO

IF NOT EXISTS(SELECT * FROM [__EFMigrationsHistory] WHERE [MigrationId] = N'20240802085458_changeNullOrder')
BEGIN
    INSERT INTO [__EFMigrationsHistory] ([MigrationId], [ProductVersion])
    VALUES (N'20240802085458_changeNullOrder', N'6.0.21');
END;
GO

COMMIT;
GO

BEGIN TRANSACTION;
GO

IF NOT EXISTS(SELECT * FROM [__EFMigrationsHistory] WHERE [MigrationId] = N'20240803101017_addImageUser')
BEGIN
    ALTER TABLE [AspNetUsers] ADD [Image] nvarchar(max) NULL;
END;
GO

IF NOT EXISTS(SELECT * FROM [__EFMigrationsHistory] WHERE [MigrationId] = N'20240803101017_addImageUser')
BEGIN
    INSERT INTO [__EFMigrationsHistory] ([MigrationId], [ProductVersion])
    VALUES (N'20240803101017_addImageUser', N'6.0.21');
END;
GO

COMMIT;
GO

