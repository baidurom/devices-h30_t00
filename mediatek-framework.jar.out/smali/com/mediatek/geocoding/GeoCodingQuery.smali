.class public Lcom/mediatek/geocoding/GeoCodingQuery;
.super Ljava/lang/Object;
.source "GeoCodingQuery.java"

# interfaces
.implements Lcom/mediatek/common/geocoding/IGeoCodingQuery;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mediatek/geocoding/GeoCodingQuery$DBHelper;
    }
.end annotation


# static fields
.field private static final DBFilePath:Ljava/lang/String; = "/system/etc/geocoding.db"

.field private static final LOG_TAG:Ljava/lang/String; = "GeoCodingQuery"

.field private static mInstanceObjectSync:Ljava/lang/Object;

.field private static myInstance:Lcom/mediatek/geocoding/GeoCodingQuery;


# instance fields
.field private mDatabase:Landroid/database/sqlite/SQLiteDatabase;

.field private mDbHelper:Lcom/mediatek/geocoding/GeoCodingQuery$DBHelper;

.field private mIsDBReady:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 60
    new-instance v0, Ljava/lang/Object;

    invoke-direct/range {v0 .. v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/mediatek/geocoding/GeoCodingQuery;->mInstanceObjectSync:Ljava/lang/Object;

    .line 61
    const/4 v0, 0x0

    sput-object v0, Lcom/mediatek/geocoding/GeoCodingQuery;->myInstance:Lcom/mediatek/geocoding/GeoCodingQuery;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 63
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 57
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mediatek/geocoding/GeoCodingQuery;->mDbHelper:Lcom/mediatek/geocoding/GeoCodingQuery$DBHelper;

    .line 59
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mediatek/geocoding/GeoCodingQuery;->mIsDBReady:Z

    .line 64
    invoke-direct {p0, p1}, Lcom/mediatek/geocoding/GeoCodingQuery;->openDatabase(Landroid/content/Context;)V

    .line 65
    return-void
.end method

.method private canQuery()Z
    .locals 1

    .prologue
    .line 79
    iget-boolean v0, p0, Lcom/mediatek/geocoding/GeoCodingQuery;->mIsDBReady:Z

    return v0
.end method

.method private closeDatabase()V
    .locals 1

    .prologue
    .line 161
    :try_start_0
    iget-object v0, p0, Lcom/mediatek/geocoding/GeoCodingQuery;->mDbHelper:Lcom/mediatek/geocoding/GeoCodingQuery$DBHelper;

    if-eqz v0, :cond_0

    .line 162
    iget-object v0, p0, Lcom/mediatek/geocoding/GeoCodingQuery;->mDbHelper:Lcom/mediatek/geocoding/GeoCodingQuery$DBHelper;

    invoke-virtual {v0}, Lcom/mediatek/geocoding/GeoCodingQuery$DBHelper;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 166
    :cond_0
    :goto_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mediatek/geocoding/GeoCodingQuery;->mDbHelper:Lcom/mediatek/geocoding/GeoCodingQuery$DBHelper;

    .line 167
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mediatek/geocoding/GeoCodingQuery;->mIsDBReady:Z

    .line 168
    return-void

    .line 164
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/mediatek/geocoding/GeoCodingQuery;
    .locals 3
    .parameter "context"

    .prologue
    .line 68
    sget-object v1, Lcom/mediatek/geocoding/GeoCodingQuery;->mInstanceObjectSync:Ljava/lang/Object;

    monitor-enter v1

    .line 69
    :try_start_0
    sget-object v0, Lcom/mediatek/geocoding/GeoCodingQuery;->myInstance:Lcom/mediatek/geocoding/GeoCodingQuery;

    if-nez v0, :cond_0

    .line 70
    new-instance v0, Lcom/mediatek/geocoding/GeoCodingQuery;

    invoke-direct {v0, p0}, Lcom/mediatek/geocoding/GeoCodingQuery;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/mediatek/geocoding/GeoCodingQuery;->myInstance:Lcom/mediatek/geocoding/GeoCodingQuery;

    .line 71
    const-string v0, "GeoCodingQuery"

    const-string v2, "getInstance(): myInstance is created"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 73
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 75
    sget-object v0, Lcom/mediatek/geocoding/GeoCodingQuery;->myInstance:Lcom/mediatek/geocoding/GeoCodingQuery;

    return-object v0

    .line 73
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private openDatabase(Landroid/content/Context;)V
    .locals 3
    .parameter "context"

    .prologue
    .line 144
    :try_start_0
    const-string v1, "GeoCodingQuery"

    const-string v2, "Open GeoCoding database."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 145
    new-instance v1, Ljava/io/File;

    const-string v2, "/system/etc/geocoding.db"

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 146
    new-instance v1, Lcom/mediatek/geocoding/GeoCodingQuery$DBHelper;

    invoke-direct {v1, p0, p1}, Lcom/mediatek/geocoding/GeoCodingQuery$DBHelper;-><init>(Lcom/mediatek/geocoding/GeoCodingQuery;Landroid/content/Context;)V

    iput-object v1, p0, Lcom/mediatek/geocoding/GeoCodingQuery;->mDbHelper:Lcom/mediatek/geocoding/GeoCodingQuery$DBHelper;

    .line 147
    iget-object v1, p0, Lcom/mediatek/geocoding/GeoCodingQuery;->mDbHelper:Lcom/mediatek/geocoding/GeoCodingQuery$DBHelper;

    invoke-virtual {v1}, Lcom/mediatek/geocoding/GeoCodingQuery$DBHelper;->openDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    iput-object v1, p0, Lcom/mediatek/geocoding/GeoCodingQuery;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    .line 148
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/mediatek/geocoding/GeoCodingQuery;->mIsDBReady:Z

    .line 157
    :goto_0
    return-void

    .line 151
    :cond_0
    invoke-direct {p0}, Lcom/mediatek/geocoding/GeoCodingQuery;->closeDatabase()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 153
    :catch_0
    move-exception v0

    .line 154
    .local v0, e:Ljava/lang/Exception;
    const-string v1, "GeoCodingQuery"

    const-string v2, "Failed to open GeoCoding database!"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 155
    invoke-direct {p0}, Lcom/mediatek/geocoding/GeoCodingQuery;->closeDatabase()V

    goto :goto_0
.end method


# virtual methods
.method public queryByNumber(Ljava/lang/String;)Ljava/lang/String;
    .locals 16
    .parameter "number"

    .prologue
    .line 83
    const-string v9, ""

    .line 84
    .local v9, returnValue:Ljava/lang/String;
    const/16 v6, 0xb

    .line 85
    .local v6, numberValidLength:I
    const/4 v4, 0x4

    .line 87
    .local v4, numberTailLength:I
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/mediatek/geocoding/GeoCodingQuery;->mDbHelper:Lcom/mediatek/geocoding/GeoCodingQuery$DBHelper;

    if-nez v13, :cond_0

    .line 88
    const-string v13, "GeoCodingQuery"

    const-string v14, "Database is not opened !"

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object v10, v9

    .line 139
    .end local v9           #returnValue:Ljava/lang/String;
    .local v10, returnValue:Ljava/lang/String;
    :goto_0
    return-object v10

    .line 92
    .end local v10           #returnValue:Ljava/lang/String;
    .restart local v9       #returnValue:Ljava/lang/String;
    :cond_0
    const-string v13, "GeoCodingQuery"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "number = "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p1

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 94
    const-string v13, " "

    const-string v14, ""

    move-object/from16 v0, p1

    invoke-virtual {v0, v13, v14}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 95
    .local v7, queryNumber:Ljava/lang/String;
    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v5

    .line 96
    .local v5, numberTotalLength:I
    if-ge v5, v6, :cond_1

    .line 97
    const-string v13, "GeoCodingQuery"

    const-string v14, "The length of dial number is less than 11 !"

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object v10, v9

    .line 98
    .end local v9           #returnValue:Ljava/lang/String;
    .restart local v10       #returnValue:Ljava/lang/String;
    goto :goto_0

    .line 102
    .end local v10           #returnValue:Ljava/lang/String;
    .restart local v9       #returnValue:Ljava/lang/String;
    :cond_1
    const-string v13, "00"

    invoke-virtual {v7, v13}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_2

    const-string v13, "0086"

    invoke-virtual {v7, v13}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_3

    :cond_2
    const/4 v13, 0x0

    invoke-virtual {v7, v13}, Ljava/lang/String;->charAt(I)C

    move-result v13

    const/16 v14, 0x2b

    if-ne v13, v14, :cond_4

    const/4 v13, 0x1

    invoke-virtual {v7, v13}, Ljava/lang/String;->charAt(I)C

    move-result v13

    const/16 v14, 0x38

    if-ne v13, v14, :cond_3

    const/4 v13, 0x2

    invoke-virtual {v7, v13}, Ljava/lang/String;->charAt(I)C

    move-result v13

    const/16 v14, 0x36

    if-eq v13, v14, :cond_4

    .line 104
    :cond_3
    const-string v13, "GeoCodingQuery"

    const-string v14, "The dial number is a international number and didn\'t start with +86!"

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object v10, v9

    .line 105
    .end local v9           #returnValue:Ljava/lang/String;
    .restart local v10       #returnValue:Ljava/lang/String;
    goto :goto_0

    .line 108
    .end local v10           #returnValue:Ljava/lang/String;
    .restart local v9       #returnValue:Ljava/lang/String;
    :cond_4
    sub-int v12, v5, v6

    .line 109
    .local v12, startIndex:I
    sub-int v2, v5, v4

    .line 110
    .local v2, endIndex:I
    invoke-virtual {v7, v12, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    .line 111
    const-string v13, "GeoCodingQuery"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Query number = "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 112
    const/4 v8, 0x7

    .line 114
    .local v8, queryNumberLength:I
    const/4 v3, 0x0

    .local v3, i:I
    :goto_1
    if-ge v3, v8, :cond_7

    .line 116
    invoke-virtual {v7, v3}, Ljava/lang/String;->charAt(I)C

    move-result v13

    const/16 v14, 0x30

    if-lt v13, v14, :cond_5

    invoke-virtual {v7, v3}, Ljava/lang/String;->charAt(I)C

    move-result v13

    const/16 v14, 0x39

    if-le v13, v14, :cond_6

    :cond_5
    move-object v10, v9

    .line 117
    .end local v9           #returnValue:Ljava/lang/String;
    .restart local v10       #returnValue:Ljava/lang/String;
    goto/16 :goto_0

    .line 114
    .end local v10           #returnValue:Ljava/lang/String;
    .restart local v9       #returnValue:Ljava/lang/String;
    :cond_6
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 127
    :cond_7
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Select city_name from NumberCity, city where _id = CityID and NumberHead = "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .line 128
    .local v11, sqlCmd:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/mediatek/geocoding/GeoCodingQuery;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    const/4 v14, 0x0

    invoke-virtual {v13, v11, v14}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 130
    .local v1, cursor:Landroid/database/Cursor;
    if-eqz v1, :cond_8

    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v13

    if-lez v13, :cond_8

    .line 131
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    .line 132
    const/4 v13, 0x0

    invoke-interface {v1, v13}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 135
    :cond_8
    if-eqz v1, :cond_9

    .line 136
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_9
    move-object v10, v9

    .line 139
    .end local v9           #returnValue:Ljava/lang/String;
    .restart local v10       #returnValue:Ljava/lang/String;
    goto/16 :goto_0
.end method
