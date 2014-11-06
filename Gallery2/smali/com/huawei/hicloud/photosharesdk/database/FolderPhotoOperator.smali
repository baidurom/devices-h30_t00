.class final Lcom/huawei/hicloud/photosharesdk/database/FolderPhotoOperator;
.super Lcom/huawei/hicloud/photosharesdk/database/DBOperator;
.source "FolderPhotoOperator.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/huawei/hicloud/photosharesdk/database/DBOperator",
        "<",
        "Lcom/huawei/hicloud/photosharesdk/database/dao/FolderPhoto;",
        ">;"
    }
.end annotation


# static fields
.field private static final CreateTime:Ljava/lang/String; = "CreateTime"

.field private static final IsNew:Ljava/lang/String; = "IsNew"

.field private static final PhotoPath_REMOTE:Ljava/lang/String; = "PhotoPathR"

.field private static final SharedPath:Ljava/lang/String; = "SharedPath"

.field private static final SharedPathIndex:Ljava/lang/String; = "SharedIndex"

.field private static final TableName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 20
    sget-object v0, Lcom/huawei/hicloud/photosharesdk/database/DBConstants$TableName;->FolderPhoto:Lcom/huawei/hicloud/photosharesdk/database/DBConstants$TableName;

    invoke-virtual {v0}, Lcom/huawei/hicloud/photosharesdk/database/DBConstants$TableName;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/huawei/hicloud/photosharesdk/database/FolderPhotoOperator;->TableName:Ljava/lang/String;

    .line 11
    return-void
.end method

.method constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter "context"

    .prologue
    .line 24
    invoke-direct {p0, p1}, Lcom/huawei/hicloud/photosharesdk/database/DBOperator;-><init>(Landroid/content/Context;)V

    .line 25
    return-void
.end method

.method static createIndex()Ljava/lang/String;
    .locals 2

    .prologue
    .line 107
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string v1, "CREATE INDEX "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, "SharedIndex"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, " ON "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    .line 108
    sget-object v1, Lcom/huawei/hicloud/photosharesdk/database/DBConstants$TableName;->FolderPhoto:Lcom/huawei/hicloud/photosharesdk/database/DBConstants$TableName;

    invoke-virtual {v1}, Lcom/huawei/hicloud/photosharesdk/database/DBConstants$TableName;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, "("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, "SharedPath"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    .line 109
    const-string v1, ");"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    .line 107
    return-object v0
.end method

.method static createTable()Ljava/lang/String;
    .locals 2

    .prologue
    .line 97
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SharedPath"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " TEXT NOT NULL, "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 98
    const-string v1, "PhotoPathR"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " TEXT NOT NULL UNIQUE ON CONFLICT IGNORE, "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 99
    const-string v1, "IsNew"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " INTEGER DEFAULT 0, "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "CreateTime"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 100
    const-string v1, " TEXT NOT NULL,"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "FOREIGN KEY("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "SharedPath"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 101
    const-string v1, ") REFERENCES "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/huawei/hicloud/photosharesdk/database/DBConstants$TableName;->SharedFolder:Lcom/huawei/hicloud/photosharesdk/database/DBConstants$TableName;

    invoke-virtual {v1}, Lcom/huawei/hicloud/photosharesdk/database/DBConstants$TableName;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 102
    const-string v1, "("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "SharePath"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ") "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 103
    const-string v1, "ON UPDATE CASCADE ON DELETE CASCADE"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 97
    return-object v0
.end method


# virtual methods
.method public delete(Ljava/lang/String;[Ljava/lang/String;)I
    .locals 2
    .parameter "whereClause"
    .parameter "whereArgs"

    .prologue
    .line 86
    sget-object v0, Lcom/huawei/hicloud/photosharesdk/database/FolderPhotoOperator;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    sget-object v1, Lcom/huawei/hicloud/photosharesdk/database/FolderPhotoOperator;->TableName:Ljava/lang/String;

    invoke-virtual {v0, v1, p1, p2}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public drop()V
    .locals 3

    .prologue
    .line 92
    sget-object v0, Lcom/huawei/hicloud/photosharesdk/database/FolderPhotoOperator;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "DROP TABLE IF EXISTS "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 93
    sget-object v2, Lcom/huawei/hicloud/photosharesdk/database/DBConstants$TableName;->FolderPhoto:Lcom/huawei/hicloud/photosharesdk/database/DBConstants$TableName;

    invoke-virtual {v2}, Lcom/huawei/hicloud/photosharesdk/database/DBConstants$TableName;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 92
    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 94
    return-void
.end method

.method public insert(Lcom/huawei/hicloud/photosharesdk/database/dao/FolderPhoto;)J
    .locals 4
    .parameter "obj"

    .prologue
    .line 38
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 39
    .local v0, cv:Landroid/content/ContentValues;
    const-string v1, "SharedPath"

    invoke-virtual {p1}, Lcom/huawei/hicloud/photosharesdk/database/dao/FolderPhoto;->getSharedPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 40
    const-string v1, "PhotoPathR"

    invoke-virtual {p1}, Lcom/huawei/hicloud/photosharesdk/database/dao/FolderPhoto;->getPhotoPathRemote()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 41
    const-string v2, "IsNew"

    invoke-virtual {p1}, Lcom/huawei/hicloud/photosharesdk/database/dao/FolderPhoto;->isNew()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 42
    const-string v1, "CreateTime"

    invoke-virtual {p1}, Lcom/huawei/hicloud/photosharesdk/database/dao/FolderPhoto;->getCreateTime()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 43
    sget-object v1, Lcom/huawei/hicloud/photosharesdk/database/FolderPhotoOperator;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    sget-object v2, Lcom/huawei/hicloud/photosharesdk/database/FolderPhotoOperator;->TableName:Ljava/lang/String;

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
    check-cast p1, Lcom/huawei/hicloud/photosharesdk/database/dao/FolderPhoto;

    invoke-virtual {p0, p1}, Lcom/huawei/hicloud/photosharesdk/database/FolderPhotoOperator;->insert(Lcom/huawei/hicloud/photosharesdk/database/dao/FolderPhoto;)J

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
    .line 31
    sget-object v0, Lcom/huawei/hicloud/photosharesdk/database/FolderPhotoOperator;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    sget-object v1, Lcom/huawei/hicloud/photosharesdk/database/FolderPhotoOperator;->TableName:Ljava/lang/String;

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

.method public update(Lcom/huawei/hicloud/photosharesdk/database/dao/FolderPhoto;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 3
    .parameter "obj"
    .parameter "whereClause"
    .parameter "whereArgs"

    .prologue
    .line 49
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 50
    .local v0, cv:Landroid/content/ContentValues;
    const-string v1, "SharedPath"

    invoke-virtual {p1}, Lcom/huawei/hicloud/photosharesdk/database/dao/FolderPhoto;->getSharedPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 51
    const-string v1, "PhotoPathR"

    invoke-virtual {p1}, Lcom/huawei/hicloud/photosharesdk/database/dao/FolderPhoto;->getPhotoPathRemote()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 52
    const-string v2, "IsNew"

    invoke-virtual {p1}, Lcom/huawei/hicloud/photosharesdk/database/dao/FolderPhoto;->isNew()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 53
    const-string v1, "CreateTime"

    invoke-virtual {p1}, Lcom/huawei/hicloud/photosharesdk/database/dao/FolderPhoto;->getCreateTime()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 54
    sget-object v1, Lcom/huawei/hicloud/photosharesdk/database/FolderPhotoOperator;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    sget-object v2, Lcom/huawei/hicloud/photosharesdk/database/FolderPhotoOperator;->TableName:Ljava/lang/String;

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
    check-cast p1, Lcom/huawei/hicloud/photosharesdk/database/dao/FolderPhoto;

    invoke-virtual {p0, p1, p2, p3}, Lcom/huawei/hicloud/photosharesdk/database/FolderPhotoOperator;->update(Lcom/huawei/hicloud/photosharesdk/database/dao/FolderPhoto;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public varargs update(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)I
    .locals 4
    .parameter "whereClause"
    .parameter "whereArgs"
    .parameter "args"

    .prologue
    .line 76
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 77
    .local v0, cv:Landroid/content/ContentValues;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    array-length v2, p3

    if-lt v1, v2, :cond_0

    .line 80
    sget-object v2, Lcom/huawei/hicloud/photosharesdk/database/FolderPhotoOperator;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    sget-object v3, Lcom/huawei/hicloud/photosharesdk/database/FolderPhotoOperator;->TableName:Ljava/lang/String;

    invoke-virtual {v2, v3, v0, p1, p2}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v2

    return v2

    .line 78
    :cond_0
    aget-object v2, p3, v1

    add-int/lit8 v3, v1, 0x1

    aget-object v3, p3, v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 77
    add-int/lit8 v1, v1, 0x2

    goto :goto_0
.end method

.method public updateOrInsert(Lcom/huawei/hicloud/photosharesdk/database/dao/FolderPhoto;Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .parameter "obj"
    .parameter "whereClause"
    .parameter "whereArgs"

    .prologue
    .line 60
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 61
    .local v0, cv:Landroid/content/ContentValues;
    const-string v1, "SharedPath"

    invoke-virtual {p1}, Lcom/huawei/hicloud/photosharesdk/database/dao/FolderPhoto;->getSharedPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 62
    const-string v1, "PhotoPathR"

    invoke-virtual {p1}, Lcom/huawei/hicloud/photosharesdk/database/dao/FolderPhoto;->getPhotoPathRemote()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 63
    const-string v2, "IsNew"

    invoke-virtual {p1}, Lcom/huawei/hicloud/photosharesdk/database/dao/FolderPhoto;->isNew()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 64
    const-string v1, "CreateTime"

    invoke-virtual {p1}, Lcom/huawei/hicloud/photosharesdk/database/dao/FolderPhoto;->getCreateTime()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 65
    sget-object v1, Lcom/huawei/hicloud/photosharesdk/database/FolderPhotoOperator;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    sget-object v2, Lcom/huawei/hicloud/photosharesdk/database/FolderPhotoOperator;->TableName:Ljava/lang/String;

    invoke-virtual {v1, v2, v0, p2, p3}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_1

    .line 66
    invoke-virtual {p0, p1}, Lcom/huawei/hicloud/photosharesdk/database/FolderPhotoOperator;->insert(Lcom/huawei/hicloud/photosharesdk/database/dao/FolderPhoto;)J

    .line 67
    const-string v1, "Insert"

    .line 69
    :goto_1
    return-object v1

    .line 63
    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    .line 69
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
    check-cast p1, Lcom/huawei/hicloud/photosharesdk/database/dao/FolderPhoto;

    invoke-virtual {p0, p1, p2, p3}, Lcom/huawei/hicloud/photosharesdk/database/FolderPhotoOperator;->updateOrInsert(Lcom/huawei/hicloud/photosharesdk/database/dao/FolderPhoto;Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
