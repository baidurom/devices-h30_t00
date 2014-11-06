.class final Lcom/huawei/hicloud/photosharesdk3/database/ReceiverInfoOperator;
.super Lcom/huawei/hicloud/photosharesdk3/database/DBOperator3;
.source "ReceiverInfoOperator.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/huawei/hicloud/photosharesdk3/database/DBOperator3",
        "<",
        "Lcom/huawei/hicloud/photosharesdk3/database/dao/ReceiverInfo;",
        ">;"
    }
.end annotation


# static fields
.field private static final RECEIVER_ACCOUNT:Ljava/lang/String; = "ReceiverAccount"

.field private static final RECEIVER_NAME:Ljava/lang/String; = "ReceiverName"

.field private static final TABLENAME:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 26
    sget-object v0, Lcom/huawei/hicloud/photosharesdk3/database/DBConstants$TableName;->ReceiverInfo:Lcom/huawei/hicloud/photosharesdk3/database/DBConstants$TableName;

    invoke-virtual {v0}, Lcom/huawei/hicloud/photosharesdk3/database/DBConstants$TableName;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/huawei/hicloud/photosharesdk3/database/ReceiverInfoOperator;->TABLENAME:Ljava/lang/String;

    .line 15
    return-void
.end method

.method constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter "context"

    .prologue
    .line 31
    invoke-direct {p0, p1}, Lcom/huawei/hicloud/photosharesdk3/database/DBOperator3;-><init>(Landroid/content/Context;)V

    .line 32
    return-void
.end method

.method static createTable()Ljava/lang/String;
    .locals 2

    .prologue
    .line 116
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ReceiverName"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " TEXT COLLATE NOCASE, "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "ReceiverAccount"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 117
    const-string v1, " TEXT NOT NULL UNIQUE ON CONFLICT IGNORE COLLATE NOCASE"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 116
    return-object v0
.end method

.method static cursor2Receiver(Landroid/database/Cursor;)Lcom/huawei/hicloud/photosharesdk3/database/dao/ReceiverInfo;
    .locals 2
    .parameter "cursor"

    .prologue
    .line 108
    new-instance v0, Lcom/huawei/hicloud/photosharesdk3/database/dao/ReceiverInfo;

    invoke-direct {v0}, Lcom/huawei/hicloud/photosharesdk3/database/dao/ReceiverInfo;-><init>()V

    .line 109
    .local v0, receiverInfo:Lcom/huawei/hicloud/photosharesdk3/database/dao/ReceiverInfo;
    const-string v1, "ReceiverAccount"

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/huawei/hicloud/photosharesdk3/database/dao/ReceiverInfo;->setReceiverAccount(Ljava/lang/String;)V

    .line 110
    const-string v1, "ReceiverName"

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/huawei/hicloud/photosharesdk3/database/dao/ReceiverInfo;->setReceiverName(Ljava/lang/String;)V

    .line 111
    return-object v0
.end method


# virtual methods
.method public delete(Ljava/lang/String;[Ljava/lang/String;)I
    .locals 2
    .parameter "whereClause"
    .parameter "whereArgs"

    .prologue
    .line 96
    sget-object v0, Lcom/huawei/hicloud/photosharesdk3/database/ReceiverInfoOperator;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    sget-object v1, Lcom/huawei/hicloud/photosharesdk3/database/ReceiverInfoOperator;->TABLENAME:Ljava/lang/String;

    invoke-virtual {v0, v1, p1, p2}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public drop()V
    .locals 3

    .prologue
    .line 103
    sget-object v0, Lcom/huawei/hicloud/photosharesdk3/database/ReceiverInfoOperator;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "DROP TABLE IF EXISTS "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v2, Lcom/huawei/hicloud/photosharesdk3/database/DBConstants$TableName;->ReceiverInfo:Lcom/huawei/hicloud/photosharesdk3/database/DBConstants$TableName;

    invoke-virtual {v2}, Lcom/huawei/hicloud/photosharesdk3/database/DBConstants$TableName;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 104
    return-void
.end method

.method public insert(Lcom/huawei/hicloud/photosharesdk3/database/dao/ReceiverInfo;)J
    .locals 4
    .parameter "obj"

    .prologue
    .line 46
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 47
    .local v0, cv:Landroid/content/ContentValues;
    const-string v1, "ReceiverName"

    invoke-virtual {p1}, Lcom/huawei/hicloud/photosharesdk3/database/dao/ReceiverInfo;->getReceiverName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 48
    const-string v1, "ReceiverAccount"

    invoke-virtual {p1}, Lcom/huawei/hicloud/photosharesdk3/database/dao/ReceiverInfo;->getReceiverAccount()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 49
    sget-object v1, Lcom/huawei/hicloud/photosharesdk3/database/ReceiverInfoOperator;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    sget-object v2, Lcom/huawei/hicloud/photosharesdk3/database/ReceiverInfoOperator;->TABLENAME:Ljava/lang/String;

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
    check-cast p1, Lcom/huawei/hicloud/photosharesdk3/database/dao/ReceiverInfo;

    invoke-virtual {p0, p1}, Lcom/huawei/hicloud/photosharesdk3/database/ReceiverInfoOperator;->insert(Lcom/huawei/hicloud/photosharesdk3/database/dao/ReceiverInfo;)J

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
    .line 39
    sget-object v0, Lcom/huawei/hicloud/photosharesdk3/database/ReceiverInfoOperator;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    sget-object v1, Lcom/huawei/hicloud/photosharesdk3/database/ReceiverInfoOperator;->TABLENAME:Ljava/lang/String;

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

.method public update(Lcom/huawei/hicloud/photosharesdk3/database/dao/ReceiverInfo;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 3
    .parameter "obj"
    .parameter "whereClause"
    .parameter "whereArgs"

    .prologue
    .line 56
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 57
    .local v0, cv:Landroid/content/ContentValues;
    const-string v1, "ReceiverName"

    invoke-virtual {p1}, Lcom/huawei/hicloud/photosharesdk3/database/dao/ReceiverInfo;->getReceiverName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 58
    const-string v1, "ReceiverAccount"

    invoke-virtual {p1}, Lcom/huawei/hicloud/photosharesdk3/database/dao/ReceiverInfo;->getReceiverAccount()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 59
    sget-object v1, Lcom/huawei/hicloud/photosharesdk3/database/ReceiverInfoOperator;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    sget-object v2, Lcom/huawei/hicloud/photosharesdk3/database/ReceiverInfoOperator;->TABLENAME:Ljava/lang/String;

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
    check-cast p1, Lcom/huawei/hicloud/photosharesdk3/database/dao/ReceiverInfo;

    invoke-virtual {p0, p1, p2, p3}, Lcom/huawei/hicloud/photosharesdk3/database/ReceiverInfoOperator;->update(Lcom/huawei/hicloud/photosharesdk3/database/dao/ReceiverInfo;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public varargs update(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)I
    .locals 4
    .parameter "whereClause"
    .parameter "whereArgs"
    .parameter "args"

    .prologue
    .line 66
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 67
    .local v0, cv:Landroid/content/ContentValues;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    array-length v2, p3

    if-lt v1, v2, :cond_0

    .line 71
    sget-object v2, Lcom/huawei/hicloud/photosharesdk3/database/ReceiverInfoOperator;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    sget-object v3, Lcom/huawei/hicloud/photosharesdk3/database/ReceiverInfoOperator;->TABLENAME:Ljava/lang/String;

    invoke-virtual {v2, v3, v0, p1, p2}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v2

    return v2

    .line 69
    :cond_0
    aget-object v2, p3, v1

    add-int/lit8 v3, v1, 0x1

    aget-object v3, p3, v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 67
    add-int/lit8 v1, v1, 0x2

    goto :goto_0
.end method

.method public updateOrInsert(Lcom/huawei/hicloud/photosharesdk3/database/dao/ReceiverInfo;Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .parameter "obj"
    .parameter "whereClause"
    .parameter "whereArgs"

    .prologue
    .line 78
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 79
    .local v0, cv:Landroid/content/ContentValues;
    const-string v1, "ReceiverName"

    invoke-virtual {p1}, Lcom/huawei/hicloud/photosharesdk3/database/dao/ReceiverInfo;->getReceiverName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 80
    const-string v1, "ReceiverAccount"

    invoke-virtual {p1}, Lcom/huawei/hicloud/photosharesdk3/database/dao/ReceiverInfo;->getReceiverAccount()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 81
    sget-object v1, Lcom/huawei/hicloud/photosharesdk3/database/ReceiverInfoOperator;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    sget-object v2, Lcom/huawei/hicloud/photosharesdk3/database/ReceiverInfoOperator;->TABLENAME:Ljava/lang/String;

    invoke-virtual {v1, v2, v0, p2, p3}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_0

    .line 83
    invoke-virtual {p0, p1}, Lcom/huawei/hicloud/photosharesdk3/database/ReceiverInfoOperator;->insert(Lcom/huawei/hicloud/photosharesdk3/database/dao/ReceiverInfo;)J

    .line 84
    const-string v1, "Insert"

    .line 88
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
    check-cast p1, Lcom/huawei/hicloud/photosharesdk3/database/dao/ReceiverInfo;

    invoke-virtual {p0, p1, p2, p3}, Lcom/huawei/hicloud/photosharesdk3/database/ReceiverInfoOperator;->updateOrInsert(Lcom/huawei/hicloud/photosharesdk3/database/dao/ReceiverInfo;Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
