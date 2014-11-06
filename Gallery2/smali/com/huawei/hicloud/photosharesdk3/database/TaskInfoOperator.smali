.class final Lcom/huawei/hicloud/photosharesdk3/database/TaskInfoOperator;
.super Lcom/huawei/hicloud/photosharesdk3/database/DBOperator3;
.source "TaskInfoOperator.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/huawei/hicloud/photosharesdk3/database/DBOperator3",
        "<",
        "Lcom/huawei/hicloud/photosharesdk3/database/dao/TaskInfo;",
        ">;"
    }
.end annotation


# static fields
.field private static final CREATETIME:Ljava/lang/String; = "CreateTime"

.field private static final CURRENT_STAGE:Ljava/lang/String; = "CurrentStage"

.field private static final OPERATION_TYPE:Ljava/lang/String; = "OperationType"

.field private static final PHOTOPATH_LOCAL:Ljava/lang/String; = "PhotoPathL"

.field private static final PHOTOPATH_REMOTE:Ljava/lang/String; = "PhotoPathR"

.field private static final PHOTO_NAME:Ljava/lang/String; = "PhotoName"

.field private static final TABLENAME:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 55
    sget-object v0, Lcom/huawei/hicloud/photosharesdk3/database/DBConstants$TableName;->TaskInfo:Lcom/huawei/hicloud/photosharesdk3/database/DBConstants$TableName;

    invoke-virtual {v0}, Lcom/huawei/hicloud/photosharesdk3/database/DBConstants$TableName;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/huawei/hicloud/photosharesdk3/database/TaskInfoOperator;->TABLENAME:Ljava/lang/String;

    .line 15
    return-void
.end method

.method constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter "context"

    .prologue
    .line 60
    invoke-direct {p0, p1}, Lcom/huawei/hicloud/photosharesdk3/database/DBOperator3;-><init>(Landroid/content/Context;)V

    .line 61
    return-void
.end method

.method static createTable()Ljava/lang/String;
    .locals 2

    .prologue
    .line 159
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "PhotoName"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " TEXT NOT NULL, "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "PhotoPathL"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 160
    const-string v1, " TEXT, "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "PhotoPathR"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " TEXT NOT NULL UNIQUE ON CONFLICT IGNORE, "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 161
    const-string v1, "CreateTime"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " TEXT NOT NULL, "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "OperationType"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " INTEGER DEFAULT 0, "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 162
    const-string v1, "CurrentStage"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " INTEGER DEFAULT 0"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 159
    return-object v0
.end method

.method static cursor2TaskInfo(Landroid/database/Cursor;)Lcom/huawei/hicloud/photosharesdk3/database/dao/TaskInfo;
    .locals 2
    .parameter "cursor"

    .prologue
    .line 147
    new-instance v0, Lcom/huawei/hicloud/photosharesdk3/database/dao/TaskInfo;

    invoke-direct {v0}, Lcom/huawei/hicloud/photosharesdk3/database/dao/TaskInfo;-><init>()V

    .line 148
    .local v0, taskInfo:Lcom/huawei/hicloud/photosharesdk3/database/dao/TaskInfo;
    const-string v1, "CreateTime"

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/huawei/hicloud/photosharesdk3/database/dao/TaskInfo;->setCreateTime(Ljava/lang/String;)V

    .line 149
    const-string v1, "CurrentStage"

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/huawei/hicloud/photosharesdk3/database/dao/TaskInfo;->setCurrentStage(I)V

    .line 150
    const-string v1, "OperationType"

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/huawei/hicloud/photosharesdk3/database/dao/TaskInfo;->setOperationType(I)V

    .line 151
    const-string v1, "PhotoName"

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/huawei/hicloud/photosharesdk3/database/dao/TaskInfo;->setPhotoName(Ljava/lang/String;)V

    .line 152
    const-string v1, "PhotoPathL"

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/huawei/hicloud/photosharesdk3/database/dao/TaskInfo;->setPhotoPathLocal(Ljava/lang/String;)V

    .line 153
    const-string v1, "PhotoPathR"

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/huawei/hicloud/photosharesdk3/database/dao/TaskInfo;->setPhotoPathRemote(Ljava/lang/String;)V

    .line 154
    return-object v0
.end method


# virtual methods
.method public delete(Ljava/lang/String;[Ljava/lang/String;)I
    .locals 2
    .parameter "whereClause"
    .parameter "whereArgs"

    .prologue
    .line 136
    sget-object v0, Lcom/huawei/hicloud/photosharesdk3/database/TaskInfoOperator;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    sget-object v1, Lcom/huawei/hicloud/photosharesdk3/database/TaskInfoOperator;->TABLENAME:Ljava/lang/String;

    invoke-virtual {v0, v1, p1, p2}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public drop()V
    .locals 3

    .prologue
    .line 142
    sget-object v0, Lcom/huawei/hicloud/photosharesdk3/database/TaskInfoOperator;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "DROP TABLE IF EXISTS "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v2, Lcom/huawei/hicloud/photosharesdk3/database/DBConstants$TableName;->TaskInfo:Lcom/huawei/hicloud/photosharesdk3/database/DBConstants$TableName;

    invoke-virtual {v2}, Lcom/huawei/hicloud/photosharesdk3/database/DBConstants$TableName;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 143
    return-void
.end method

.method public insert(Lcom/huawei/hicloud/photosharesdk3/database/dao/TaskInfo;)J
    .locals 4
    .parameter "obj"

    .prologue
    .line 75
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 76
    .local v0, cv:Landroid/content/ContentValues;
    const-string v1, "PhotoName"

    invoke-virtual {p1}, Lcom/huawei/hicloud/photosharesdk3/database/dao/TaskInfo;->getPhotoName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 77
    const-string v1, "PhotoPathL"

    invoke-virtual {p1}, Lcom/huawei/hicloud/photosharesdk3/database/dao/TaskInfo;->getPhotoPathLocal()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 78
    const-string v1, "PhotoPathR"

    invoke-virtual {p1}, Lcom/huawei/hicloud/photosharesdk3/database/dao/TaskInfo;->getPhotoPathRemote()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 79
    const-string v1, "CreateTime"

    invoke-virtual {p1}, Lcom/huawei/hicloud/photosharesdk3/database/dao/TaskInfo;->getCreateTime()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 80
    const-string v1, "OperationType"

    invoke-virtual {p1}, Lcom/huawei/hicloud/photosharesdk3/database/dao/TaskInfo;->getOperationType()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 81
    const-string v1, "CurrentStage"

    invoke-virtual {p1}, Lcom/huawei/hicloud/photosharesdk3/database/dao/TaskInfo;->getCurrentStage()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 82
    sget-object v1, Lcom/huawei/hicloud/photosharesdk3/database/TaskInfoOperator;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    sget-object v2, Lcom/huawei/hicloud/photosharesdk3/database/TaskInfoOperator;->TABLENAME:Ljava/lang/String;

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
    check-cast p1, Lcom/huawei/hicloud/photosharesdk3/database/dao/TaskInfo;

    invoke-virtual {p0, p1}, Lcom/huawei/hicloud/photosharesdk3/database/TaskInfoOperator;->insert(Lcom/huawei/hicloud/photosharesdk3/database/dao/TaskInfo;)J

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
    .line 68
    sget-object v0, Lcom/huawei/hicloud/photosharesdk3/database/TaskInfoOperator;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    sget-object v1, Lcom/huawei/hicloud/photosharesdk3/database/TaskInfoOperator;->TABLENAME:Ljava/lang/String;

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

.method public update(Lcom/huawei/hicloud/photosharesdk3/database/dao/TaskInfo;Ljava/lang/String;[Ljava/lang/String;)I
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
    const-string v1, "PhotoName"

    invoke-virtual {p1}, Lcom/huawei/hicloud/photosharesdk3/database/dao/TaskInfo;->getPhotoName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 91
    const-string v1, "PhotoPathL"

    invoke-virtual {p1}, Lcom/huawei/hicloud/photosharesdk3/database/dao/TaskInfo;->getPhotoPathLocal()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 92
    const-string v1, "PhotoPathR"

    invoke-virtual {p1}, Lcom/huawei/hicloud/photosharesdk3/database/dao/TaskInfo;->getPhotoPathRemote()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 93
    const-string v1, "CreateTime"

    invoke-virtual {p1}, Lcom/huawei/hicloud/photosharesdk3/database/dao/TaskInfo;->getCreateTime()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 94
    const-string v1, "OperationType"

    invoke-virtual {p1}, Lcom/huawei/hicloud/photosharesdk3/database/dao/TaskInfo;->getOperationType()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 95
    const-string v1, "CurrentStage"

    invoke-virtual {p1}, Lcom/huawei/hicloud/photosharesdk3/database/dao/TaskInfo;->getCurrentStage()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 96
    sget-object v1, Lcom/huawei/hicloud/photosharesdk3/database/TaskInfoOperator;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    sget-object v2, Lcom/huawei/hicloud/photosharesdk3/database/TaskInfoOperator;->TABLENAME:Ljava/lang/String;

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
    check-cast p1, Lcom/huawei/hicloud/photosharesdk3/database/dao/TaskInfo;

    invoke-virtual {p0, p1, p2, p3}, Lcom/huawei/hicloud/photosharesdk3/database/TaskInfoOperator;->update(Lcom/huawei/hicloud/photosharesdk3/database/dao/TaskInfo;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public varargs update(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)I
    .locals 4
    .parameter "whereClause"
    .parameter "whereArgs"
    .parameter "args"

    .prologue
    .line 103
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 104
    .local v0, cv:Landroid/content/ContentValues;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    array-length v2, p3

    if-lt v1, v2, :cond_0

    .line 108
    sget-object v2, Lcom/huawei/hicloud/photosharesdk3/database/TaskInfoOperator;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    sget-object v3, Lcom/huawei/hicloud/photosharesdk3/database/TaskInfoOperator;->TABLENAME:Ljava/lang/String;

    invoke-virtual {v2, v3, v0, p1, p2}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v2

    return v2

    .line 106
    :cond_0
    aget-object v2, p3, v1

    add-int/lit8 v3, v1, 0x1

    aget-object v3, p3, v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 104
    add-int/lit8 v1, v1, 0x2

    goto :goto_0
.end method

.method public updateOrInsert(Lcom/huawei/hicloud/photosharesdk3/database/dao/TaskInfo;Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .parameter "obj"
    .parameter "whereClause"
    .parameter "whereArgs"

    .prologue
    .line 115
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 116
    .local v0, cv:Landroid/content/ContentValues;
    const-string v1, "PhotoName"

    invoke-virtual {p1}, Lcom/huawei/hicloud/photosharesdk3/database/dao/TaskInfo;->getPhotoName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 117
    const-string v1, "PhotoPathL"

    invoke-virtual {p1}, Lcom/huawei/hicloud/photosharesdk3/database/dao/TaskInfo;->getPhotoPathLocal()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 118
    const-string v1, "PhotoPathR"

    invoke-virtual {p1}, Lcom/huawei/hicloud/photosharesdk3/database/dao/TaskInfo;->getPhotoPathRemote()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 119
    const-string v1, "CreateTime"

    invoke-virtual {p1}, Lcom/huawei/hicloud/photosharesdk3/database/dao/TaskInfo;->getCreateTime()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 120
    const-string v1, "OperationType"

    invoke-virtual {p1}, Lcom/huawei/hicloud/photosharesdk3/database/dao/TaskInfo;->getOperationType()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 121
    const-string v1, "CurrentStage"

    invoke-virtual {p1}, Lcom/huawei/hicloud/photosharesdk3/database/dao/TaskInfo;->getCurrentStage()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 122
    sget-object v1, Lcom/huawei/hicloud/photosharesdk3/database/TaskInfoOperator;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    sget-object v2, Lcom/huawei/hicloud/photosharesdk3/database/TaskInfoOperator;->TABLENAME:Ljava/lang/String;

    invoke-virtual {v1, v2, v0, p2, p3}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_0

    .line 124
    invoke-virtual {p0, p1}, Lcom/huawei/hicloud/photosharesdk3/database/TaskInfoOperator;->insert(Lcom/huawei/hicloud/photosharesdk3/database/dao/TaskInfo;)J

    .line 125
    const-string v1, "Insert"

    .line 129
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
    check-cast p1, Lcom/huawei/hicloud/photosharesdk3/database/dao/TaskInfo;

    invoke-virtual {p0, p1, p2, p3}, Lcom/huawei/hicloud/photosharesdk3/database/TaskInfoOperator;->updateOrInsert(Lcom/huawei/hicloud/photosharesdk3/database/dao/TaskInfo;Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
