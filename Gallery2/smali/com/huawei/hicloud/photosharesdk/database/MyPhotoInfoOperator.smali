.class final Lcom/huawei/hicloud/photosharesdk/database/MyPhotoInfoOperator;
.super Lcom/huawei/hicloud/photosharesdk/database/DBOperator;
.source "MyPhotoInfoOperator.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/huawei/hicloud/photosharesdk/database/DBOperator",
        "<",
        "Lcom/huawei/hicloud/photosharesdk/database/dao/MyPhotoInfo;",
        ">;"
    }
.end annotation


# static fields
.field private static final CreateTime:Ljava/lang/String; = "CreateTime"

.field private static final IsNew:Ljava/lang/String; = "IsNew"

.field private static final PhotoMD5:Ljava/lang/String; = "PhotoMD5"

.field private static final PhotoPath_REMOTE:Ljava/lang/String; = "PhotoPathR"

.field private static final TableName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 19
    sget-object v0, Lcom/huawei/hicloud/photosharesdk/database/DBConstants$TableName;->MyPhotoInfo:Lcom/huawei/hicloud/photosharesdk/database/DBConstants$TableName;

    invoke-virtual {v0}, Lcom/huawei/hicloud/photosharesdk/database/DBConstants$TableName;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/huawei/hicloud/photosharesdk/database/MyPhotoInfoOperator;->TableName:Ljava/lang/String;

    .line 10
    return-void
.end method

.method constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter "context"

    .prologue
    .line 23
    invoke-direct {p0, p1}, Lcom/huawei/hicloud/photosharesdk/database/DBOperator;-><init>(Landroid/content/Context;)V

    .line 24
    return-void
.end method

.method static createTable()Ljava/lang/String;
    .locals 2

    .prologue
    .line 105
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "PhotoMD5"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " TEXT NOT NULL UNIQUE, "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 106
    const-string v1, "PhotoPathR"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " TEXT NOT NULL UNIQUE ON CONFLICT IGNORE,"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 107
    const-string v1, "CreateTime"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " TEXT NOT NULL,"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "IsNew"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 108
    const-string v1, " INTEGER DEFAULT 0"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 105
    return-object v0
.end method

.method static cursor2MyPhotoInfo(Landroid/database/Cursor;)Lcom/huawei/hicloud/photosharesdk/database/dao/MyPhotoInfo;
    .locals 3
    .parameter "cursor"

    .prologue
    const/4 v1, 0x1

    .line 96
    new-instance v0, Lcom/huawei/hicloud/photosharesdk/database/dao/MyPhotoInfo;

    invoke-direct {v0}, Lcom/huawei/hicloud/photosharesdk/database/dao/MyPhotoInfo;-><init>()V

    .line 97
    .local v0, myPhotoInfo:Lcom/huawei/hicloud/photosharesdk/database/dao/MyPhotoInfo;
    const-string v2, "CreateTime"

    invoke-interface {p0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/huawei/hicloud/photosharesdk/database/dao/MyPhotoInfo;->setCreateTime(Ljava/lang/String;)V

    .line 98
    const-string v2, "PhotoMD5"

    invoke-interface {p0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/huawei/hicloud/photosharesdk/database/dao/MyPhotoInfo;->setPhotomd5(Ljava/lang/String;)V

    .line 99
    const-string v2, "PhotoPathR"

    invoke-interface {p0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/huawei/hicloud/photosharesdk/database/dao/MyPhotoInfo;->setPhotoPathRemote(Ljava/lang/String;)V

    .line 100
    const-string v2, "IsNew"

    invoke-interface {p0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p0, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    if-ne v2, v1, :cond_0

    :goto_0
    invoke-virtual {v0, v1}, Lcom/huawei/hicloud/photosharesdk/database/dao/MyPhotoInfo;->setNew(Z)V

    .line 101
    return-object v0

    .line 100
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method


# virtual methods
.method public delete(Ljava/lang/String;[Ljava/lang/String;)I
    .locals 2
    .parameter "whereClause"
    .parameter "whereArgs"

    .prologue
    .line 85
    sget-object v0, Lcom/huawei/hicloud/photosharesdk/database/MyPhotoInfoOperator;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    sget-object v1, Lcom/huawei/hicloud/photosharesdk/database/MyPhotoInfoOperator;->TableName:Ljava/lang/String;

    invoke-virtual {v0, v1, p1, p2}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public drop()V
    .locals 3

    .prologue
    .line 91
    sget-object v0, Lcom/huawei/hicloud/photosharesdk/database/MyPhotoInfoOperator;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "DROP TABLE IF EXISTS "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 92
    sget-object v2, Lcom/huawei/hicloud/photosharesdk/database/DBConstants$TableName;->MyPhotoInfo:Lcom/huawei/hicloud/photosharesdk/database/DBConstants$TableName;

    invoke-virtual {v2}, Lcom/huawei/hicloud/photosharesdk/database/DBConstants$TableName;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 91
    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 93
    return-void
.end method

.method public insert(Lcom/huawei/hicloud/photosharesdk/database/dao/MyPhotoInfo;)J
    .locals 4
    .parameter "obj"

    .prologue
    .line 37
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 38
    .local v0, cv:Landroid/content/ContentValues;
    const-string v1, "PhotoMD5"

    invoke-virtual {p1}, Lcom/huawei/hicloud/photosharesdk/database/dao/MyPhotoInfo;->getPhotomd5()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 39
    const-string v1, "PhotoPathR"

    invoke-virtual {p1}, Lcom/huawei/hicloud/photosharesdk/database/dao/MyPhotoInfo;->getPhotoPathRemote()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 40
    const-string v1, "CreateTime"

    invoke-virtual {p1}, Lcom/huawei/hicloud/photosharesdk/database/dao/MyPhotoInfo;->getCreateTime()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 41
    const-string v2, "IsNew"

    invoke-virtual {p1}, Lcom/huawei/hicloud/photosharesdk/database/dao/MyPhotoInfo;->isNew()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 42
    sget-object v1, Lcom/huawei/hicloud/photosharesdk/database/MyPhotoInfoOperator;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    sget-object v2, Lcom/huawei/hicloud/photosharesdk/database/MyPhotoInfoOperator;->TableName:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3, v0}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v1

    return-wide v1

    .line 41
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public bridge synthetic insert(Ljava/lang/Object;)J
    .locals 2
    .parameter

    .prologue
    .line 1
    check-cast p1, Lcom/huawei/hicloud/photosharesdk/database/dao/MyPhotoInfo;

    invoke-virtual {p0, p1}, Lcom/huawei/hicloud/photosharesdk/database/MyPhotoInfoOperator;->insert(Lcom/huawei/hicloud/photosharesdk/database/dao/MyPhotoInfo;)J

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
    .line 30
    sget-object v0, Lcom/huawei/hicloud/photosharesdk/database/MyPhotoInfoOperator;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    sget-object v1, Lcom/huawei/hicloud/photosharesdk/database/MyPhotoInfoOperator;->TableName:Ljava/lang/String;

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

.method public update(Lcom/huawei/hicloud/photosharesdk/database/dao/MyPhotoInfo;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 3
    .parameter "obj"
    .parameter "whereClause"
    .parameter "whereArgs"

    .prologue
    .line 48
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 49
    .local v0, cv:Landroid/content/ContentValues;
    const-string v1, "PhotoMD5"

    invoke-virtual {p1}, Lcom/huawei/hicloud/photosharesdk/database/dao/MyPhotoInfo;->getPhotomd5()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 50
    const-string v1, "PhotoPathR"

    invoke-virtual {p1}, Lcom/huawei/hicloud/photosharesdk/database/dao/MyPhotoInfo;->getPhotoPathRemote()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 51
    const-string v1, "CreateTime"

    invoke-virtual {p1}, Lcom/huawei/hicloud/photosharesdk/database/dao/MyPhotoInfo;->getCreateTime()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 52
    const-string v2, "IsNew"

    invoke-virtual {p1}, Lcom/huawei/hicloud/photosharesdk/database/dao/MyPhotoInfo;->isNew()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 53
    sget-object v1, Lcom/huawei/hicloud/photosharesdk/database/MyPhotoInfoOperator;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    sget-object v2, Lcom/huawei/hicloud/photosharesdk/database/MyPhotoInfoOperator;->TableName:Ljava/lang/String;

    invoke-virtual {v1, v2, v0, p2, p3}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v1

    return v1

    .line 52
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public bridge synthetic update(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1
    check-cast p1, Lcom/huawei/hicloud/photosharesdk/database/dao/MyPhotoInfo;

    invoke-virtual {p0, p1, p2, p3}, Lcom/huawei/hicloud/photosharesdk/database/MyPhotoInfoOperator;->update(Lcom/huawei/hicloud/photosharesdk/database/dao/MyPhotoInfo;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public varargs update(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)I
    .locals 4
    .parameter "whereClause"
    .parameter "whereArgs"
    .parameter "args"

    .prologue
    .line 59
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 60
    .local v0, cv:Landroid/content/ContentValues;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    array-length v2, p3

    if-lt v1, v2, :cond_0

    .line 63
    sget-object v2, Lcom/huawei/hicloud/photosharesdk/database/MyPhotoInfoOperator;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    sget-object v3, Lcom/huawei/hicloud/photosharesdk/database/MyPhotoInfoOperator;->TableName:Ljava/lang/String;

    invoke-virtual {v2, v3, v0, p1, p2}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v2

    return v2

    .line 61
    :cond_0
    aget-object v2, p3, v1

    add-int/lit8 v3, v1, 0x1

    aget-object v3, p3, v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 60
    add-int/lit8 v1, v1, 0x2

    goto :goto_0
.end method

.method public updateOrInsert(Lcom/huawei/hicloud/photosharesdk/database/dao/MyPhotoInfo;Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .parameter "obj"
    .parameter "whereClause"
    .parameter "whereArgs"

    .prologue
    .line 69
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 70
    .local v0, cv:Landroid/content/ContentValues;
    const-string v1, "PhotoMD5"

    invoke-virtual {p1}, Lcom/huawei/hicloud/photosharesdk/database/dao/MyPhotoInfo;->getPhotomd5()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 71
    const-string v1, "PhotoPathR"

    invoke-virtual {p1}, Lcom/huawei/hicloud/photosharesdk/database/dao/MyPhotoInfo;->getPhotoPathRemote()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 72
    const-string v1, "CreateTime"

    invoke-virtual {p1}, Lcom/huawei/hicloud/photosharesdk/database/dao/MyPhotoInfo;->getCreateTime()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 73
    const-string v2, "IsNew"

    invoke-virtual {p1}, Lcom/huawei/hicloud/photosharesdk/database/dao/MyPhotoInfo;->isNew()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 74
    sget-object v1, Lcom/huawei/hicloud/photosharesdk/database/MyPhotoInfoOperator;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    sget-object v2, Lcom/huawei/hicloud/photosharesdk/database/MyPhotoInfoOperator;->TableName:Ljava/lang/String;

    invoke-virtual {v1, v2, v0, p2, p3}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_1

    .line 75
    invoke-virtual {p0, p1}, Lcom/huawei/hicloud/photosharesdk/database/MyPhotoInfoOperator;->insert(Lcom/huawei/hicloud/photosharesdk/database/dao/MyPhotoInfo;)J

    .line 76
    const-string v1, "Insert"

    .line 78
    :goto_1
    return-object v1

    .line 73
    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    .line 78
    :cond_1
    const-string v1, "Update"

    goto :goto_1
.end method

.method public bridge synthetic updateOrInsert(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1
    check-cast p1, Lcom/huawei/hicloud/photosharesdk/database/dao/MyPhotoInfo;

    invoke-virtual {p0, p1, p2, p3}, Lcom/huawei/hicloud/photosharesdk/database/MyPhotoInfoOperator;->updateOrInsert(Lcom/huawei/hicloud/photosharesdk/database/dao/MyPhotoInfo;Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
