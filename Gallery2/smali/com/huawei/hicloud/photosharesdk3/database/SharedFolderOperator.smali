.class final Lcom/huawei/hicloud/photosharesdk3/database/SharedFolderOperator;
.super Lcom/huawei/hicloud/photosharesdk3/database/DBOperator3;
.source "SharedFolderOperator.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/huawei/hicloud/photosharesdk3/database/DBOperator3",
        "<",
        "Lcom/huawei/hicloud/photosharesdk3/database/dao/SharedFolder;",
        ">;"
    }
.end annotation


# static fields
.field private static final CREATETIME:Ljava/lang/String; = "CreateTime"

.field private static final FOLDERPATH_REMOTE:Ljava/lang/String; = "FolderPathR"

.field private static final FOLDER_INFO:Ljava/lang/String; = "FolderInfo"

.field private static final FOLDER_NAME:Ljava/lang/String; = "FolderName"

.field private static final FOLDER_TYPE:Ljava/lang/String; = "FolderType"

.field private static final SHARER_ACCOUNT:Ljava/lang/String; = "SharerAccount"

.field private static final SHARER_NAME:Ljava/lang/String; = "SharerName"

.field private static final SHARE_PATH:Ljava/lang/String; = "SharePath"

.field private static final TABLENAME:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 41
    sget-object v0, Lcom/huawei/hicloud/photosharesdk3/database/DBConstants$TableName;->SharedFolder:Lcom/huawei/hicloud/photosharesdk3/database/DBConstants$TableName;

    invoke-virtual {v0}, Lcom/huawei/hicloud/photosharesdk3/database/DBConstants$TableName;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/huawei/hicloud/photosharesdk3/database/SharedFolderOperator;->TABLENAME:Ljava/lang/String;

    .line 18
    return-void
.end method

.method constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter "context"

    .prologue
    .line 46
    invoke-direct {p0, p1}, Lcom/huawei/hicloud/photosharesdk3/database/DBOperator3;-><init>(Landroid/content/Context;)V

    .line 47
    return-void
.end method

.method static createTable()Ljava/lang/String;
    .locals 2

    .prologue
    .line 183
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "FolderName"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " TEXT NOT NULL, "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "FolderPathR"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 184
    const-string v1, " TEXT NOT NULL, "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "CreateTime"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " TEXT NOT NULL, "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "SharerName"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 185
    const-string v1, " TEXT COLLATE NOCASE, "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

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

    .line 186
    const-string v1, "FolderType"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " INTEGER DEFAULT 0, "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "SharePath"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 187
    const-string v1, " TEXT  UNIQUE ON CONFLICT IGNORE"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 183
    return-object v0
.end method

.method static insertInitData()Landroid/content/ContentValues;
    .locals 4

    .prologue
    .line 192
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 193
    .local v0, cv:Landroid/content/ContentValues;
    const-string v1, "FolderName"

    const-string v2, "MyPhoto"

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 194
    const-string v1, "FolderPathR"

    const-string v2, "/Photoshare/myphoto"

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 195
    const-string v1, "CreateTime"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v2, v3}, Lcom/huawei/hicloud/photosharesdk/helper/Util;->formatTimeAsGMT(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 196
    const-string v1, "FolderType"

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 197
    const-string v1, "SharePath"

    const-string v2, "/Photoshare/myphoto"

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 198
    return-object v0
.end method


# virtual methods
.method public delete(Ljava/lang/String;[Ljava/lang/String;)I
    .locals 6
    .parameter "whereClause"
    .parameter "whereArgs"

    .prologue
    .line 163
    const/4 v1, 0x0

    .line 164
    .local v1, result:I
    invoke-static {}, Lcom/huawei/hicloud/photosharesdk3/database/SharedFolderOperator;->getTagInfo()Ljava/lang/String;

    move-result-object v2

    const-string v3, "3"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "TableName:"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v5, Lcom/huawei/hicloud/photosharesdk3/database/SharedFolderOperator;->TABLENAME:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ",whereClause:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lcom/huawei/hicloud/photosharesdk3/database/SharedFolderOperator;->log(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 165
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-eqz p2, :cond_0

    array-length v2, p2

    if-lt v0, v2, :cond_1

    .line 170
    :cond_0
    sget-object v2, Lcom/huawei/hicloud/photosharesdk3/database/SharedFolderOperator;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    sget-object v3, Lcom/huawei/hicloud/photosharesdk3/database/SharedFolderOperator;->TABLENAME:Ljava/lang/String;

    invoke-virtual {v2, v3, p1, p2}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v1

    .line 171
    invoke-static {}, Lcom/huawei/hicloud/photosharesdk3/database/SharedFolderOperator;->getTagInfo()Ljava/lang/String;

    move-result-object v2

    const-string v3, "3"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "result:"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lcom/huawei/hicloud/photosharesdk3/database/SharedFolderOperator;->log(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 172
    return v1

    .line 167
    :cond_1
    invoke-static {}, Lcom/huawei/hicloud/photosharesdk3/database/SharedFolderOperator;->getTagInfo()Ljava/lang/String;

    move-result-object v2

    const-string v3, "3"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "whereArg["

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "]:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    aget-object v5, p2, v0

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lcom/huawei/hicloud/photosharesdk3/database/SharedFolderOperator;->log(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 165
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public drop()V
    .locals 3

    .prologue
    .line 178
    sget-object v0, Lcom/huawei/hicloud/photosharesdk3/database/SharedFolderOperator;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "DROP TABLE IF EXISTS "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v2, Lcom/huawei/hicloud/photosharesdk3/database/DBConstants$TableName;->SharedFolder:Lcom/huawei/hicloud/photosharesdk3/database/DBConstants$TableName;

    invoke-virtual {v2}, Lcom/huawei/hicloud/photosharesdk3/database/DBConstants$TableName;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 179
    return-void
.end method

.method public insert(Lcom/huawei/hicloud/photosharesdk3/database/dao/SharedFolder;)J
    .locals 4
    .parameter "obj"

    .prologue
    .line 73
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 74
    .local v0, cv:Landroid/content/ContentValues;
    const-string v1, "FolderName"

    invoke-virtual {p1}, Lcom/huawei/hicloud/photosharesdk3/database/dao/SharedFolder;->getFolderName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 75
    const-string v1, "FolderPathR"

    invoke-virtual {p1}, Lcom/huawei/hicloud/photosharesdk3/database/dao/SharedFolder;->getFolderPathRemote()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 76
    const-string v1, "CreateTime"

    invoke-virtual {p1}, Lcom/huawei/hicloud/photosharesdk3/database/dao/SharedFolder;->getCreateTime()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 77
    const-string v1, "SharerName"

    invoke-virtual {p1}, Lcom/huawei/hicloud/photosharesdk3/database/dao/SharedFolder;->getSharerName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 78
    const-string v1, "SharerAccount"

    invoke-virtual {p1}, Lcom/huawei/hicloud/photosharesdk3/database/dao/SharedFolder;->getSharerAccount()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 79
    const-string v1, "FolderInfo"

    invoke-virtual {p1}, Lcom/huawei/hicloud/photosharesdk3/database/dao/SharedFolder;->getFolderInfo()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 80
    const-string v1, "FolderType"

    invoke-virtual {p1}, Lcom/huawei/hicloud/photosharesdk3/database/dao/SharedFolder;->getFolderType()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 81
    const-string v1, "SharePath"

    invoke-virtual {p1}, Lcom/huawei/hicloud/photosharesdk3/database/dao/SharedFolder;->getSharePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 82
    sget-object v1, Lcom/huawei/hicloud/photosharesdk3/database/SharedFolderOperator;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    sget-object v2, Lcom/huawei/hicloud/photosharesdk3/database/SharedFolderOperator;->TABLENAME:Ljava/lang/String;

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
    check-cast p1, Lcom/huawei/hicloud/photosharesdk3/database/dao/SharedFolder;

    invoke-virtual {p0, p1}, Lcom/huawei/hicloud/photosharesdk3/database/SharedFolderOperator;->insert(Lcom/huawei/hicloud/photosharesdk3/database/dao/SharedFolder;)J

    move-result-wide v0

    return-wide v0
.end method

.method public query([Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 12
    .parameter "columns"
    .parameter "selection"
    .parameter "selectionArgs"
    .parameter "groupBy"
    .parameter "having"
    .parameter "orderBy"
    .parameter "limit"

    .prologue
    .line 54
    invoke-static {}, Lcom/huawei/hicloud/photosharesdk3/database/SharedFolderOperator;->getTagInfo()Ljava/lang/String;

    move-result-object v1

    const-string v2, "3"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "TableName:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v4, Lcom/huawei/hicloud/photosharesdk3/database/SharedFolderOperator;->TABLENAME:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ",selection:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ",groupBy:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p4

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 55
    const-string v4, ",having:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p5

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ",orderBy:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p6

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ",limit:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p7

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 54
    invoke-static {v1, v2, v3}, Lcom/huawei/hicloud/photosharesdk3/database/SharedFolderOperator;->log(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 56
    const/4 v11, 0x0

    .local v11, i:I
    :goto_0
    if-eqz p1, :cond_0

    array-length v1, p1

    if-lt v11, v1, :cond_2

    .line 60
    :cond_0
    const/4 v11, 0x0

    :goto_1
    if-eqz p3, :cond_1

    array-length v1, p3

    if-lt v11, v1, :cond_3

    .line 64
    :cond_1
    sget-object v1, Lcom/huawei/hicloud/photosharesdk3/database/SharedFolderOperator;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    sget-object v2, Lcom/huawei/hicloud/photosharesdk3/database/SharedFolderOperator;->TABLENAME:Ljava/lang/String;

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object/from16 v6, p4

    move-object/from16 v7, p5

    move-object/from16 v8, p6

    move-object/from16 v9, p7

    invoke-virtual/range {v1 .. v9}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v10

    .line 65
    .local v10, cursor:Landroid/database/Cursor;
    invoke-static {}, Lcom/huawei/hicloud/photosharesdk3/database/SharedFolderOperator;->getTagInfo()Ljava/lang/String;

    move-result-object v1

    const-string v2, "3"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "cursor:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v10}, Landroid/database/Cursor;->getCount()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/huawei/hicloud/photosharesdk3/database/SharedFolderOperator;->log(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 66
    return-object v10

    .line 58
    .end local v10           #cursor:Landroid/database/Cursor;
    :cond_2
    invoke-static {}, Lcom/huawei/hicloud/photosharesdk3/database/SharedFolderOperator;->getTagInfo()Ljava/lang/String;

    move-result-object v1

    const-string v2, "3"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "column["

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "]:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    aget-object v4, p1, v11

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/huawei/hicloud/photosharesdk3/database/SharedFolderOperator;->log(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 56
    add-int/lit8 v11, v11, 0x1

    goto :goto_0

    .line 62
    :cond_3
    invoke-static {}, Lcom/huawei/hicloud/photosharesdk3/database/SharedFolderOperator;->getTagInfo()Ljava/lang/String;

    move-result-object v1

    const-string v2, "3"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "selectionArg["

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "]:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    aget-object v4, p3, v11

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/huawei/hicloud/photosharesdk3/database/SharedFolderOperator;->log(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 60
    add-int/lit8 v11, v11, 0x1

    goto/16 :goto_1
.end method

.method public update(Lcom/huawei/hicloud/photosharesdk3/database/dao/SharedFolder;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 3
    .parameter "obj"
    .parameter "whereClause"
    .parameter "whereArgs"

    .prologue
    .line 89
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 90
    .local v0, cv:Landroid/content/ContentValues;
    const-string v1, "FolderName"

    invoke-virtual {p1}, Lcom/huawei/hicloud/photosharesdk3/database/dao/SharedFolder;->getFolderName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 91
    const-string v1, "FolderPathR"

    invoke-virtual {p1}, Lcom/huawei/hicloud/photosharesdk3/database/dao/SharedFolder;->getFolderPathRemote()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 92
    const-string v1, "CreateTime"

    invoke-virtual {p1}, Lcom/huawei/hicloud/photosharesdk3/database/dao/SharedFolder;->getCreateTime()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 93
    const-string v1, "SharerName"

    invoke-virtual {p1}, Lcom/huawei/hicloud/photosharesdk3/database/dao/SharedFolder;->getSharerName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 94
    const-string v1, "SharerAccount"

    invoke-virtual {p1}, Lcom/huawei/hicloud/photosharesdk3/database/dao/SharedFolder;->getSharerAccount()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 95
    const-string v1, "FolderInfo"

    invoke-virtual {p1}, Lcom/huawei/hicloud/photosharesdk3/database/dao/SharedFolder;->getFolderInfo()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 96
    const-string v1, "FolderType"

    invoke-virtual {p1}, Lcom/huawei/hicloud/photosharesdk3/database/dao/SharedFolder;->getFolderType()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 97
    const-string v1, "SharePath"

    invoke-virtual {p1}, Lcom/huawei/hicloud/photosharesdk3/database/dao/SharedFolder;->getSharePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 121
    sget-object v1, Lcom/huawei/hicloud/photosharesdk3/database/SharedFolderOperator;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    sget-object v2, Lcom/huawei/hicloud/photosharesdk3/database/SharedFolderOperator;->TABLENAME:Ljava/lang/String;

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
    check-cast p1, Lcom/huawei/hicloud/photosharesdk3/database/dao/SharedFolder;

    invoke-virtual {p0, p1, p2, p3}, Lcom/huawei/hicloud/photosharesdk3/database/SharedFolderOperator;->update(Lcom/huawei/hicloud/photosharesdk3/database/dao/SharedFolder;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public varargs update(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)I
    .locals 4
    .parameter "whereClause"
    .parameter "whereArgs"
    .parameter "args"

    .prologue
    .line 128
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 129
    .local v0, cv:Landroid/content/ContentValues;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    array-length v2, p3

    if-lt v1, v2, :cond_0

    .line 133
    sget-object v2, Lcom/huawei/hicloud/photosharesdk3/database/SharedFolderOperator;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    sget-object v3, Lcom/huawei/hicloud/photosharesdk3/database/SharedFolderOperator;->TABLENAME:Ljava/lang/String;

    invoke-virtual {v2, v3, v0, p1, p2}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v2

    return v2

    .line 131
    :cond_0
    aget-object v2, p3, v1

    add-int/lit8 v3, v1, 0x1

    aget-object v3, p3, v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 129
    add-int/lit8 v1, v1, 0x2

    goto :goto_0
.end method

.method public updateOrInsert(Lcom/huawei/hicloud/photosharesdk3/database/dao/SharedFolder;Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .parameter "obj"
    .parameter "whereClause"
    .parameter "whereArgs"

    .prologue
    .line 140
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 141
    .local v0, cv:Landroid/content/ContentValues;
    const-string v1, "FolderName"

    invoke-virtual {p1}, Lcom/huawei/hicloud/photosharesdk3/database/dao/SharedFolder;->getFolderName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 142
    const-string v1, "FolderPathR"

    invoke-virtual {p1}, Lcom/huawei/hicloud/photosharesdk3/database/dao/SharedFolder;->getFolderPathRemote()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 143
    const-string v1, "CreateTime"

    invoke-virtual {p1}, Lcom/huawei/hicloud/photosharesdk3/database/dao/SharedFolder;->getCreateTime()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 144
    const-string v1, "SharerName"

    invoke-virtual {p1}, Lcom/huawei/hicloud/photosharesdk3/database/dao/SharedFolder;->getSharerName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 145
    const-string v1, "SharerAccount"

    invoke-virtual {p1}, Lcom/huawei/hicloud/photosharesdk3/database/dao/SharedFolder;->getSharerAccount()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 146
    const-string v1, "FolderInfo"

    invoke-virtual {p1}, Lcom/huawei/hicloud/photosharesdk3/database/dao/SharedFolder;->getFolderInfo()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 147
    const-string v1, "FolderType"

    invoke-virtual {p1}, Lcom/huawei/hicloud/photosharesdk3/database/dao/SharedFolder;->getFolderType()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 148
    const-string v1, "SharePath"

    invoke-virtual {p1}, Lcom/huawei/hicloud/photosharesdk3/database/dao/SharedFolder;->getSharePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 149
    sget-object v1, Lcom/huawei/hicloud/photosharesdk3/database/SharedFolderOperator;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    sget-object v2, Lcom/huawei/hicloud/photosharesdk3/database/SharedFolderOperator;->TABLENAME:Ljava/lang/String;

    invoke-virtual {v1, v2, v0, p2, p3}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_0

    .line 151
    invoke-virtual {p0, p1}, Lcom/huawei/hicloud/photosharesdk3/database/SharedFolderOperator;->insert(Lcom/huawei/hicloud/photosharesdk3/database/dao/SharedFolder;)J

    .line 152
    const-string v1, "Insert"

    .line 156
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
    check-cast p1, Lcom/huawei/hicloud/photosharesdk3/database/dao/SharedFolder;

    invoke-virtual {p0, p1, p2, p3}, Lcom/huawei/hicloud/photosharesdk3/database/SharedFolderOperator;->updateOrInsert(Lcom/huawei/hicloud/photosharesdk3/database/dao/SharedFolder;Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
