.class final Lcom/huawei/hicloud/photosharesdk/database/SharedFolderOperator;
.super Lcom/huawei/hicloud/photosharesdk/database/DBOperator;
.source "SharedFolderOperator.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/huawei/hicloud/photosharesdk/database/DBOperator",
        "<",
        "Lcom/huawei/hicloud/photosharesdk/database/dao/SharedFolder;",
        ">;"
    }
.end annotation


# static fields
.field private static final CreateTime:Ljava/lang/String; = "CreateTime"

.field private static final FolderInfo:Ljava/lang/String; = "FolderInfo"

.field private static final FolderName:Ljava/lang/String; = "FolderName"

.field private static final FolderPath_REMOTE:Ljava/lang/String; = "FolderPathR"

.field private static final FolderType:Ljava/lang/String; = "FolderType"

.field private static final SharePath:Ljava/lang/String; = "SharePath"

.field private static final SharerAccount:Ljava/lang/String; = "SharerAccount"

.field private static final SharerName:Ljava/lang/String; = "SharerName"

.field private static final TableName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 26
    sget-object v0, Lcom/huawei/hicloud/photosharesdk/database/DBConstants$TableName;->SharedFolder:Lcom/huawei/hicloud/photosharesdk/database/DBConstants$TableName;

    invoke-virtual {v0}, Lcom/huawei/hicloud/photosharesdk/database/DBConstants$TableName;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/huawei/hicloud/photosharesdk/database/SharedFolderOperator;->TableName:Ljava/lang/String;

    .line 13
    return-void
.end method

.method constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter "context"

    .prologue
    .line 30
    invoke-direct {p0, p1}, Lcom/huawei/hicloud/photosharesdk/database/DBOperator;-><init>(Landroid/content/Context;)V

    .line 31
    return-void
.end method

.method static createTable()Ljava/lang/String;
    .locals 2

    .prologue
    .line 115
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "FolderName"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " TEXT NOT NULL, "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 116
    const-string v1, "FolderPathR"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " TEXT NOT NULL, "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "CreateTime"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 117
    const-string v1, " TEXT NOT NULL, "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "SharerName"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " TEXT COLLATE NOCASE, "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 118
    const-string v1, "SharerAccount"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " TEXT COLLATE NOCASE, "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "FolderInfo"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " TEXT, "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 119
    const-string v1, "FolderType"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " INTEGER DEFAULT 0, "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "SharePath"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 120
    const-string v1, " TEXT  UNIQUE ON CONFLICT IGNORE"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 115
    return-object v0
.end method

.method static insertInitData()Landroid/content/ContentValues;
    .locals 4

    .prologue
    .line 124
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 125
    .local v0, cv:Landroid/content/ContentValues;
    const-string v1, "FolderName"

    const-string v2, "MyPhoto"

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 126
    const-string v1, "FolderPathR"

    const-string v2, "/Photoshare/myphoto"

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 127
    const-string v1, "CreateTime"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v2, v3}, Lcom/huawei/hicloud/photosharesdk/helper/Util;->formatTimeAsGMT(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 128
    const-string v1, "FolderType"

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 129
    const-string v1, "SharePath"

    const-string v2, "/Photoshare/myphoto"

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 130
    return-object v0
.end method


# virtual methods
.method public delete(Ljava/lang/String;[Ljava/lang/String;)I
    .locals 2
    .parameter "whereClause"
    .parameter "whereArgs"

    .prologue
    .line 104
    sget-object v0, Lcom/huawei/hicloud/photosharesdk/database/SharedFolderOperator;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    sget-object v1, Lcom/huawei/hicloud/photosharesdk/database/SharedFolderOperator;->TableName:Ljava/lang/String;

    invoke-virtual {v0, v1, p1, p2}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public drop()V
    .locals 3

    .prologue
    .line 110
    sget-object v0, Lcom/huawei/hicloud/photosharesdk/database/SharedFolderOperator;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "DROP TABLE IF EXISTS "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 111
    sget-object v2, Lcom/huawei/hicloud/photosharesdk/database/DBConstants$TableName;->SharedFolder:Lcom/huawei/hicloud/photosharesdk/database/DBConstants$TableName;

    invoke-virtual {v2}, Lcom/huawei/hicloud/photosharesdk/database/DBConstants$TableName;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 110
    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 112
    return-void
.end method

.method public insert(Lcom/huawei/hicloud/photosharesdk/database/dao/SharedFolder;)J
    .locals 4
    .parameter "obj"

    .prologue
    .line 44
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 45
    .local v0, cv:Landroid/content/ContentValues;
    const-string v1, "FolderName"

    invoke-virtual {p1}, Lcom/huawei/hicloud/photosharesdk/database/dao/SharedFolder;->getFolderName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 46
    const-string v1, "FolderPathR"

    invoke-virtual {p1}, Lcom/huawei/hicloud/photosharesdk/database/dao/SharedFolder;->getFolderPathRemote()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 47
    const-string v1, "CreateTime"

    invoke-virtual {p1}, Lcom/huawei/hicloud/photosharesdk/database/dao/SharedFolder;->getCreateTime()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 48
    const-string v1, "SharerName"

    invoke-virtual {p1}, Lcom/huawei/hicloud/photosharesdk/database/dao/SharedFolder;->getSharerName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 49
    const-string v1, "SharerAccount"

    invoke-virtual {p1}, Lcom/huawei/hicloud/photosharesdk/database/dao/SharedFolder;->getSharerAccount()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 50
    const-string v1, "FolderInfo"

    invoke-virtual {p1}, Lcom/huawei/hicloud/photosharesdk/database/dao/SharedFolder;->getFolderInfo()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 51
    const-string v1, "FolderType"

    invoke-virtual {p1}, Lcom/huawei/hicloud/photosharesdk/database/dao/SharedFolder;->getFolderType()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 52
    const-string v1, "SharePath"

    invoke-virtual {p1}, Lcom/huawei/hicloud/photosharesdk/database/dao/SharedFolder;->getSharePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 53
    sget-object v1, Lcom/huawei/hicloud/photosharesdk/database/SharedFolderOperator;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    sget-object v2, Lcom/huawei/hicloud/photosharesdk/database/SharedFolderOperator;->TableName:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3, v0}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v1

    return-wide v1
.end method

.method public bridge synthetic insert(Ljava/lang/Object;)J
    .locals 2
    .parameter

    .prologue
    .line 1
    check-cast p1, Lcom/huawei/hicloud/photosharesdk/database/dao/SharedFolder;

    invoke-virtual {p0, p1}, Lcom/huawei/hicloud/photosharesdk/database/SharedFolderOperator;->insert(Lcom/huawei/hicloud/photosharesdk/database/dao/SharedFolder;)J

    move-result-wide v0

    return-wide v0
.end method

.method public query([Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 9
    .parameter "columns"
    .parameter "selection"
    .parameter "selectionArgs"
    .parameter "groupBy"
    .parameter "having"
    .parameter "orderBy"
    .parameter "limit"

    .prologue
    .line 37
    sget-object v0, Lcom/huawei/hicloud/photosharesdk/database/SharedFolderOperator;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    sget-object v1, Lcom/huawei/hicloud/photosharesdk/database/SharedFolderOperator;->TableName:Ljava/lang/String;

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    move-object v7, p6

    move-object/from16 v8, p7

    invoke-virtual/range {v0 .. v8}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method public update(Lcom/huawei/hicloud/photosharesdk/database/dao/SharedFolder;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 3
    .parameter "obj"
    .parameter "whereClause"
    .parameter "whereArgs"

    .prologue
    .line 59
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 60
    .local v0, cv:Landroid/content/ContentValues;
    const-string v1, "FolderName"

    invoke-virtual {p1}, Lcom/huawei/hicloud/photosharesdk/database/dao/SharedFolder;->getFolderName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 61
    const-string v1, "FolderPathR"

    invoke-virtual {p1}, Lcom/huawei/hicloud/photosharesdk/database/dao/SharedFolder;->getFolderPathRemote()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 62
    const-string v1, "CreateTime"

    invoke-virtual {p1}, Lcom/huawei/hicloud/photosharesdk/database/dao/SharedFolder;->getCreateTime()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 63
    const-string v1, "SharerName"

    invoke-virtual {p1}, Lcom/huawei/hicloud/photosharesdk/database/dao/SharedFolder;->getSharerName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 64
    const-string v1, "SharerAccount"

    invoke-virtual {p1}, Lcom/huawei/hicloud/photosharesdk/database/dao/SharedFolder;->getSharerAccount()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 65
    const-string v1, "FolderInfo"

    invoke-virtual {p1}, Lcom/huawei/hicloud/photosharesdk/database/dao/SharedFolder;->getFolderInfo()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 66
    const-string v1, "FolderType"

    invoke-virtual {p1}, Lcom/huawei/hicloud/photosharesdk/database/dao/SharedFolder;->getFolderType()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 67
    const-string v1, "SharePath"

    invoke-virtual {p1}, Lcom/huawei/hicloud/photosharesdk/database/dao/SharedFolder;->getSharePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 68
    sget-object v1, Lcom/huawei/hicloud/photosharesdk/database/SharedFolderOperator;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    sget-object v2, Lcom/huawei/hicloud/photosharesdk/database/SharedFolderOperator;->TableName:Ljava/lang/String;

    invoke-virtual {v1, v2, v0, p2, p3}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v1

    return v1
.end method

.method public bridge synthetic update(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1
    check-cast p1, Lcom/huawei/hicloud/photosharesdk/database/dao/SharedFolder;

    invoke-virtual {p0, p1, p2, p3}, Lcom/huawei/hicloud/photosharesdk/database/SharedFolderOperator;->update(Lcom/huawei/hicloud/photosharesdk/database/dao/SharedFolder;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public varargs update(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)I
    .locals 4
    .parameter "whereClause"
    .parameter "whereArgs"
    .parameter "args"

    .prologue
    .line 74
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 75
    .local v0, cv:Landroid/content/ContentValues;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    array-length v2, p3

    if-lt v1, v2, :cond_0

    .line 78
    sget-object v2, Lcom/huawei/hicloud/photosharesdk/database/SharedFolderOperator;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    sget-object v3, Lcom/huawei/hicloud/photosharesdk/database/SharedFolderOperator;->TableName:Ljava/lang/String;

    invoke-virtual {v2, v3, v0, p1, p2}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v2

    return v2

    .line 76
    :cond_0
    aget-object v2, p3, v1

    add-int/lit8 v3, v1, 0x1

    aget-object v3, p3, v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 75
    add-int/lit8 v1, v1, 0x2

    goto :goto_0
.end method

.method public updateOrInsert(Lcom/huawei/hicloud/photosharesdk/database/dao/SharedFolder;Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .parameter "obj"
    .parameter "whereClause"
    .parameter "whereArgs"

    .prologue
    .line 84
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 85
    .local v0, cv:Landroid/content/ContentValues;
    const-string v1, "FolderName"

    invoke-virtual {p1}, Lcom/huawei/hicloud/photosharesdk/database/dao/SharedFolder;->getFolderName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 86
    const-string v1, "FolderPathR"

    invoke-virtual {p1}, Lcom/huawei/hicloud/photosharesdk/database/dao/SharedFolder;->getFolderPathRemote()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 87
    const-string v1, "CreateTime"

    invoke-virtual {p1}, Lcom/huawei/hicloud/photosharesdk/database/dao/SharedFolder;->getCreateTime()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 88
    const-string v1, "SharerName"

    invoke-virtual {p1}, Lcom/huawei/hicloud/photosharesdk/database/dao/SharedFolder;->getSharerName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 89
    const-string v1, "SharerAccount"

    invoke-virtual {p1}, Lcom/huawei/hicloud/photosharesdk/database/dao/SharedFolder;->getSharerAccount()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 90
    const-string v1, "FolderInfo"

    invoke-virtual {p1}, Lcom/huawei/hicloud/photosharesdk/database/dao/SharedFolder;->getFolderInfo()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 91
    const-string v1, "FolderType"

    invoke-virtual {p1}, Lcom/huawei/hicloud/photosharesdk/database/dao/SharedFolder;->getFolderType()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 92
    const-string v1, "SharePath"

    invoke-virtual {p1}, Lcom/huawei/hicloud/photosharesdk/database/dao/SharedFolder;->getSharePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 93
    sget-object v1, Lcom/huawei/hicloud/photosharesdk/database/SharedFolderOperator;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    sget-object v2, Lcom/huawei/hicloud/photosharesdk/database/SharedFolderOperator;->TableName:Ljava/lang/String;

    invoke-virtual {v1, v2, v0, p2, p3}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_0

    .line 94
    invoke-virtual {p0, p1}, Lcom/huawei/hicloud/photosharesdk/database/SharedFolderOperator;->insert(Lcom/huawei/hicloud/photosharesdk/database/dao/SharedFolder;)J

    .line 95
    const-string v1, "Insert"

    .line 97
    :goto_0
    return-object v1

    :cond_0
    const-string v1, "Update"

    goto :goto_0
.end method

.method public bridge synthetic updateOrInsert(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1
    check-cast p1, Lcom/huawei/hicloud/photosharesdk/database/dao/SharedFolder;

    invoke-virtual {p0, p1, p2, p3}, Lcom/huawei/hicloud/photosharesdk/database/SharedFolderOperator;->updateOrInsert(Lcom/huawei/hicloud/photosharesdk/database/dao/SharedFolder;Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
