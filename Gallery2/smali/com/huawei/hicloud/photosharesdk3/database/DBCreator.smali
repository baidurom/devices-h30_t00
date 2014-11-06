.class Lcom/huawei/hicloud/photosharesdk3/database/DBCreator;
.super Landroid/database/sqlite/SQLiteOpenHelper;
.source "DBCreator.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "DBCreator"


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 3
    .parameter "context"

    .prologue
    .line 30
    const-string v0, "PhotoStream.db"

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-direct {p0, p1, v0, v1, v2}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    .line 31
    return-void
.end method

.method static dropAllTable(Landroid/content/Context;)V
    .locals 9
    .parameter "context"

    .prologue
    .line 76
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 77
    .local v3, list:Ljava/util/List;,"Ljava/util/List<Lcom/huawei/hicloud/photosharesdk3/database/DBOperator3<+Ljava/lang/Object;>;>;"
    new-instance v1, Lcom/huawei/hicloud/photosharesdk3/database/FolderPhotoOperator;

    invoke-direct {v1, p0}, Lcom/huawei/hicloud/photosharesdk3/database/FolderPhotoOperator;-><init>(Landroid/content/Context;)V

    .line 78
    .local v1, folderPhotoOperator:Lcom/huawei/hicloud/photosharesdk3/database/DBOperator3;,"Lcom/huawei/hicloud/photosharesdk3/database/DBOperator3<Lcom/huawei/hicloud/photosharesdk3/database/dao/FolderPhoto;>;"
    new-instance v2, Lcom/huawei/hicloud/photosharesdk3/database/FolderReceiverOperator;

    invoke-direct {v2, p0}, Lcom/huawei/hicloud/photosharesdk3/database/FolderReceiverOperator;-><init>(Landroid/content/Context;)V

    .line 81
    .local v2, folderReceiver:Lcom/huawei/hicloud/photosharesdk3/database/DBOperator3;,"Lcom/huawei/hicloud/photosharesdk3/database/DBOperator3<Lcom/huawei/hicloud/photosharesdk3/database/dao/FolderReceiver;>;"
    new-instance v4, Lcom/huawei/hicloud/photosharesdk3/database/ReceiverInfoOperator;

    invoke-direct {v4, p0}, Lcom/huawei/hicloud/photosharesdk3/database/ReceiverInfoOperator;-><init>(Landroid/content/Context;)V

    .line 82
    .local v4, receiverInfoOperator:Lcom/huawei/hicloud/photosharesdk3/database/DBOperator3;,"Lcom/huawei/hicloud/photosharesdk3/database/DBOperator3<Lcom/huawei/hicloud/photosharesdk3/database/dao/ReceiverInfo;>;"
    new-instance v5, Lcom/huawei/hicloud/photosharesdk3/database/SharedFolderOperator;

    invoke-direct {v5, p0}, Lcom/huawei/hicloud/photosharesdk3/database/SharedFolderOperator;-><init>(Landroid/content/Context;)V

    .line 83
    .local v5, sharedFolderOperator:Lcom/huawei/hicloud/photosharesdk3/database/DBOperator3;,"Lcom/huawei/hicloud/photosharesdk3/database/DBOperator3<Lcom/huawei/hicloud/photosharesdk3/database/dao/SharedFolder;>;"
    new-instance v6, Lcom/huawei/hicloud/photosharesdk3/database/TaskInfoOperator;

    invoke-direct {v6, p0}, Lcom/huawei/hicloud/photosharesdk3/database/TaskInfoOperator;-><init>(Landroid/content/Context;)V

    .line 84
    .local v6, taskInfoOperator:Lcom/huawei/hicloud/photosharesdk3/database/DBOperator3;,"Lcom/huawei/hicloud/photosharesdk3/database/DBOperator3<Lcom/huawei/hicloud/photosharesdk3/database/dao/TaskInfo;>;"
    invoke-interface {v3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 85
    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 87
    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 88
    invoke-interface {v3, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 89
    invoke-interface {v3, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 90
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-nez v8, :cond_0

    .line 96
    return-void

    .line 90
    :cond_0
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/huawei/hicloud/photosharesdk3/database/DBOperator3;

    .line 92
    .local v0, db:Lcom/huawei/hicloud/photosharesdk3/database/DBOperator3;,"Lcom/huawei/hicloud/photosharesdk3/database/DBOperator3<+Ljava/lang/Object;>;"
    invoke-static {}, Lcom/huawei/hicloud/photosharesdk3/database/DBOperator3;->open()V

    .line 93
    invoke-virtual {v0}, Lcom/huawei/hicloud/photosharesdk3/database/DBOperator3;->drop()V

    .line 94
    invoke-static {}, Lcom/huawei/hicloud/photosharesdk3/database/DBOperator3;->close()V

    goto :goto_0
.end method

.method private getCreateTBPrefix(Lcom/huawei/hicloud/photosharesdk3/database/DBConstants$TableName;)Ljava/lang/String;
    .locals 2
    .parameter "tableName"

    .prologue
    .line 66
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "create table "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/huawei/hicloud/photosharesdk3/database/DBConstants$TableName;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "(_id INTEGER primary key autoincrement, "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getCreateTBSufffix()Ljava/lang/String;
    .locals 1

    .prologue
    .line 71
    const-string v0, ");"

    return-object v0
.end method


# virtual methods
.method public onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 3
    .parameter "db"

    .prologue
    .line 36
    sget-boolean v0, Lcom/huawei/hicloud/photosharesdk/helper/LogHelper;->IS_LOG_OPEN:Z

    if-eqz v0, :cond_0

    .line 38
    const-string v0, "DBCreator"

    const-string v1, "Create Table"

    invoke-static {v0, v1}, Lcom/huawei/hicloud/photosharesdk/helper/LogHelper;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 40
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    sget-object v1, Lcom/huawei/hicloud/photosharesdk3/database/DBConstants$TableName;->SharedFolder:Lcom/huawei/hicloud/photosharesdk3/database/DBConstants$TableName;

    invoke-direct {p0, v1}, Lcom/huawei/hicloud/photosharesdk3/database/DBCreator;->getCreateTBPrefix(Lcom/huawei/hicloud/photosharesdk3/database/DBConstants$TableName;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/huawei/hicloud/photosharesdk3/database/SharedFolderOperator;->createTable()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 41
    invoke-direct {p0}, Lcom/huawei/hicloud/photosharesdk3/database/DBCreator;->getCreateTBSufffix()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 40
    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 42
    new-instance v0, Ljava/lang/StringBuilder;

    sget-object v1, Lcom/huawei/hicloud/photosharesdk3/database/DBConstants$TableName;->FolderPhoto:Lcom/huawei/hicloud/photosharesdk3/database/DBConstants$TableName;

    invoke-direct {p0, v1}, Lcom/huawei/hicloud/photosharesdk3/database/DBCreator;->getCreateTBPrefix(Lcom/huawei/hicloud/photosharesdk3/database/DBConstants$TableName;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/huawei/hicloud/photosharesdk3/database/FolderPhotoOperator;->createTable()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-direct {p0}, Lcom/huawei/hicloud/photosharesdk3/database/DBCreator;->getCreateTBSufffix()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 43
    new-instance v0, Ljava/lang/StringBuilder;

    sget-object v1, Lcom/huawei/hicloud/photosharesdk3/database/DBConstants$TableName;->FolderReceiver:Lcom/huawei/hicloud/photosharesdk3/database/DBConstants$TableName;

    invoke-direct {p0, v1}, Lcom/huawei/hicloud/photosharesdk3/database/DBCreator;->getCreateTBPrefix(Lcom/huawei/hicloud/photosharesdk3/database/DBConstants$TableName;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/huawei/hicloud/photosharesdk3/database/FolderReceiverOperator;->createTable()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 44
    invoke-direct {p0}, Lcom/huawei/hicloud/photosharesdk3/database/DBCreator;->getCreateTBSufffix()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 43
    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 48
    new-instance v0, Ljava/lang/StringBuilder;

    sget-object v1, Lcom/huawei/hicloud/photosharesdk3/database/DBConstants$TableName;->ReceiverInfo:Lcom/huawei/hicloud/photosharesdk3/database/DBConstants$TableName;

    invoke-direct {p0, v1}, Lcom/huawei/hicloud/photosharesdk3/database/DBCreator;->getCreateTBPrefix(Lcom/huawei/hicloud/photosharesdk3/database/DBConstants$TableName;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/huawei/hicloud/photosharesdk3/database/ReceiverInfoOperator;->createTable()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 49
    invoke-direct {p0}, Lcom/huawei/hicloud/photosharesdk3/database/DBCreator;->getCreateTBSufffix()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 48
    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 50
    new-instance v0, Ljava/lang/StringBuilder;

    sget-object v1, Lcom/huawei/hicloud/photosharesdk3/database/DBConstants$TableName;->TaskInfo:Lcom/huawei/hicloud/photosharesdk3/database/DBConstants$TableName;

    invoke-direct {p0, v1}, Lcom/huawei/hicloud/photosharesdk3/database/DBCreator;->getCreateTBPrefix(Lcom/huawei/hicloud/photosharesdk3/database/DBConstants$TableName;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/huawei/hicloud/photosharesdk3/database/TaskInfoOperator;->createTable()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-direct {p0}, Lcom/huawei/hicloud/photosharesdk3/database/DBCreator;->getCreateTBSufffix()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 51
    invoke-static {}, Lcom/huawei/hicloud/photosharesdk3/database/FolderPhotoOperator;->createIndex()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 52
    invoke-static {}, Lcom/huawei/hicloud/photosharesdk3/database/FolderReceiverOperator;->createIndex()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 53
    sget-object v0, Lcom/huawei/hicloud/photosharesdk3/database/DBConstants$TableName;->SharedFolder:Lcom/huawei/hicloud/photosharesdk3/database/DBConstants$TableName;

    invoke-virtual {v0}, Lcom/huawei/hicloud/photosharesdk3/database/DBConstants$TableName;->getName()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {}, Lcom/huawei/hicloud/photosharesdk3/database/SharedFolderOperator;->insertInitData()Landroid/content/ContentValues;

    move-result-object v2

    invoke-virtual {p1, v0, v1, v2}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    .line 55
    return-void
.end method

.method public onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 2
    .parameter "db"
    .parameter "oldVersion"
    .parameter "newVersion"

    .prologue
    .line 61
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Upgrade database is not support right now!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
