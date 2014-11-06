.class Lcom/huawei/hicloud/photosharesdk/database/DBCreator;
.super Landroid/database/sqlite/SQLiteOpenHelper;
.source "DBCreator.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "DBCreator"


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 3
    .parameter "context"

    .prologue
    .line 24
    const-string v0, "PhotoStream.db"

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-direct {p0, p1, v0, v1, v2}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    .line 25
    return-void
.end method

.method static dropAllTable(Landroid/content/Context;)V
    .locals 10
    .parameter "context"

    .prologue
    .line 64
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 65
    .local v3, list:Ljava/util/List;,"Ljava/util/List<Lcom/huawei/hicloud/photosharesdk/database/DBOperator<+Ljava/lang/Object;>;>;"
    new-instance v1, Lcom/huawei/hicloud/photosharesdk/database/FolderPhotoOperator;

    invoke-direct {v1, p0}, Lcom/huawei/hicloud/photosharesdk/database/FolderPhotoOperator;-><init>(Landroid/content/Context;)V

    .line 66
    .local v1, folderPhotoOperator:Lcom/huawei/hicloud/photosharesdk/database/DBOperator;,"Lcom/huawei/hicloud/photosharesdk/database/DBOperator<Lcom/huawei/hicloud/photosharesdk/database/dao/FolderPhoto;>;"
    new-instance v2, Lcom/huawei/hicloud/photosharesdk/database/FolderReceiverOperator;

    invoke-direct {v2, p0}, Lcom/huawei/hicloud/photosharesdk/database/FolderReceiverOperator;-><init>(Landroid/content/Context;)V

    .line 67
    .local v2, folderReceiver:Lcom/huawei/hicloud/photosharesdk/database/DBOperator;,"Lcom/huawei/hicloud/photosharesdk/database/DBOperator<Lcom/huawei/hicloud/photosharesdk/database/dao/FolderReceiver;>;"
    new-instance v4, Lcom/huawei/hicloud/photosharesdk/database/MyPhotoInfoOperator;

    invoke-direct {v4, p0}, Lcom/huawei/hicloud/photosharesdk/database/MyPhotoInfoOperator;-><init>(Landroid/content/Context;)V

    .line 68
    .local v4, myPhotoInfoOperator:Lcom/huawei/hicloud/photosharesdk/database/DBOperator;,"Lcom/huawei/hicloud/photosharesdk/database/DBOperator<Lcom/huawei/hicloud/photosharesdk/database/dao/MyPhotoInfo;>;"
    new-instance v5, Lcom/huawei/hicloud/photosharesdk/database/ReceiverInfoOperator;

    invoke-direct {v5, p0}, Lcom/huawei/hicloud/photosharesdk/database/ReceiverInfoOperator;-><init>(Landroid/content/Context;)V

    .line 69
    .local v5, receiverInfoOperator:Lcom/huawei/hicloud/photosharesdk/database/DBOperator;,"Lcom/huawei/hicloud/photosharesdk/database/DBOperator<Lcom/huawei/hicloud/photosharesdk/database/dao/ReceiverInfo;>;"
    new-instance v6, Lcom/huawei/hicloud/photosharesdk/database/SharedFolderOperator;

    invoke-direct {v6, p0}, Lcom/huawei/hicloud/photosharesdk/database/SharedFolderOperator;-><init>(Landroid/content/Context;)V

    .line 70
    .local v6, sharedFolderOperator:Lcom/huawei/hicloud/photosharesdk/database/DBOperator;,"Lcom/huawei/hicloud/photosharesdk/database/DBOperator<Lcom/huawei/hicloud/photosharesdk/database/dao/SharedFolder;>;"
    new-instance v7, Lcom/huawei/hicloud/photosharesdk/database/TaskInfoOperator;

    invoke-direct {v7, p0}, Lcom/huawei/hicloud/photosharesdk/database/TaskInfoOperator;-><init>(Landroid/content/Context;)V

    .line 71
    .local v7, taskInfoOperator:Lcom/huawei/hicloud/photosharesdk/database/DBOperator;,"Lcom/huawei/hicloud/photosharesdk/database/DBOperator<Lcom/huawei/hicloud/photosharesdk/database/dao/TaskInfo;>;"
    invoke-interface {v3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 72
    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 73
    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 74
    invoke-interface {v3, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 75
    invoke-interface {v3, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 76
    invoke-interface {v3, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 77
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-nez v9, :cond_0

    .line 82
    return-void

    .line 77
    :cond_0
    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/huawei/hicloud/photosharesdk/database/DBOperator;

    .line 78
    .local v0, db:Lcom/huawei/hicloud/photosharesdk/database/DBOperator;,"Lcom/huawei/hicloud/photosharesdk/database/DBOperator<+Ljava/lang/Object;>;"
    invoke-static {}, Lcom/huawei/hicloud/photosharesdk/database/DBOperator;->open()V

    .line 79
    invoke-virtual {v0}, Lcom/huawei/hicloud/photosharesdk/database/DBOperator;->drop()V

    .line 80
    invoke-static {}, Lcom/huawei/hicloud/photosharesdk/database/DBOperator;->close()V

    goto :goto_0
.end method

.method private getCreateTBPrefix(Lcom/huawei/hicloud/photosharesdk/database/DBConstants$TableName;)Ljava/lang/String;
    .locals 2
    .parameter "tableName"

    .prologue
    .line 55
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "create table "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/huawei/hicloud/photosharesdk/database/DBConstants$TableName;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 56
    const-string v1, "(_id INTEGER primary key autoincrement, "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 55
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getCreateTBSufffix()Ljava/lang/String;
    .locals 1

    .prologue
    .line 60
    const-string v0, ");"

    return-object v0
.end method


# virtual methods
.method public onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 3
    .parameter "db"

    .prologue
    .line 29
    sget-boolean v0, Lcom/huawei/hicloud/photosharesdk/helper/LogHelper;->IS_LOG_OPEN:Z

    if-eqz v0, :cond_0

    const-string v0, "DBCreator"

    const-string v1, "Create Table"

    invoke-static {v0, v1}, Lcom/huawei/hicloud/photosharesdk/helper/LogHelper;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 30
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    sget-object v1, Lcom/huawei/hicloud/photosharesdk/database/DBConstants$TableName;->SharedFolder:Lcom/huawei/hicloud/photosharesdk/database/DBConstants$TableName;

    invoke-direct {p0, v1}, Lcom/huawei/hicloud/photosharesdk/database/DBCreator;->getCreateTBPrefix(Lcom/huawei/hicloud/photosharesdk/database/DBConstants$TableName;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/huawei/hicloud/photosharesdk/database/SharedFolderOperator;->createTable()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 31
    invoke-direct {p0}, Lcom/huawei/hicloud/photosharesdk/database/DBCreator;->getCreateTBSufffix()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 30
    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 32
    new-instance v0, Ljava/lang/StringBuilder;

    sget-object v1, Lcom/huawei/hicloud/photosharesdk/database/DBConstants$TableName;->FolderPhoto:Lcom/huawei/hicloud/photosharesdk/database/DBConstants$TableName;

    invoke-direct {p0, v1}, Lcom/huawei/hicloud/photosharesdk/database/DBCreator;->getCreateTBPrefix(Lcom/huawei/hicloud/photosharesdk/database/DBConstants$TableName;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/huawei/hicloud/photosharesdk/database/FolderPhotoOperator;->createTable()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 33
    invoke-direct {p0}, Lcom/huawei/hicloud/photosharesdk/database/DBCreator;->getCreateTBSufffix()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 32
    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 34
    new-instance v0, Ljava/lang/StringBuilder;

    sget-object v1, Lcom/huawei/hicloud/photosharesdk/database/DBConstants$TableName;->FolderReceiver:Lcom/huawei/hicloud/photosharesdk/database/DBConstants$TableName;

    invoke-direct {p0, v1}, Lcom/huawei/hicloud/photosharesdk/database/DBCreator;->getCreateTBPrefix(Lcom/huawei/hicloud/photosharesdk/database/DBConstants$TableName;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 35
    invoke-static {}, Lcom/huawei/hicloud/photosharesdk/database/FolderReceiverOperator;->createTable()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-direct {p0}, Lcom/huawei/hicloud/photosharesdk/database/DBCreator;->getCreateTBSufffix()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 34
    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 36
    new-instance v0, Ljava/lang/StringBuilder;

    sget-object v1, Lcom/huawei/hicloud/photosharesdk/database/DBConstants$TableName;->MyPhotoInfo:Lcom/huawei/hicloud/photosharesdk/database/DBConstants$TableName;

    invoke-direct {p0, v1}, Lcom/huawei/hicloud/photosharesdk/database/DBCreator;->getCreateTBPrefix(Lcom/huawei/hicloud/photosharesdk/database/DBConstants$TableName;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/huawei/hicloud/photosharesdk/database/MyPhotoInfoOperator;->createTable()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 37
    invoke-direct {p0}, Lcom/huawei/hicloud/photosharesdk/database/DBCreator;->getCreateTBSufffix()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 36
    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 38
    new-instance v0, Ljava/lang/StringBuilder;

    sget-object v1, Lcom/huawei/hicloud/photosharesdk/database/DBConstants$TableName;->ReceiverInfo:Lcom/huawei/hicloud/photosharesdk/database/DBConstants$TableName;

    invoke-direct {p0, v1}, Lcom/huawei/hicloud/photosharesdk/database/DBCreator;->getCreateTBPrefix(Lcom/huawei/hicloud/photosharesdk/database/DBConstants$TableName;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/huawei/hicloud/photosharesdk/database/ReceiverInfoOperator;->createTable()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 39
    invoke-direct {p0}, Lcom/huawei/hicloud/photosharesdk/database/DBCreator;->getCreateTBSufffix()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 38
    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 40
    new-instance v0, Ljava/lang/StringBuilder;

    sget-object v1, Lcom/huawei/hicloud/photosharesdk/database/DBConstants$TableName;->TaskInfo:Lcom/huawei/hicloud/photosharesdk/database/DBConstants$TableName;

    invoke-direct {p0, v1}, Lcom/huawei/hicloud/photosharesdk/database/DBCreator;->getCreateTBPrefix(Lcom/huawei/hicloud/photosharesdk/database/DBConstants$TableName;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/huawei/hicloud/photosharesdk/database/TaskInfoOperator;->createTable()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 41
    invoke-direct {p0}, Lcom/huawei/hicloud/photosharesdk/database/DBCreator;->getCreateTBSufffix()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 40
    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 42
    invoke-static {}, Lcom/huawei/hicloud/photosharesdk/database/FolderPhotoOperator;->createIndex()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 43
    invoke-static {}, Lcom/huawei/hicloud/photosharesdk/database/FolderReceiverOperator;->createIndex()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 44
    sget-object v0, Lcom/huawei/hicloud/photosharesdk/database/DBConstants$TableName;->SharedFolder:Lcom/huawei/hicloud/photosharesdk/database/DBConstants$TableName;

    invoke-virtual {v0}, Lcom/huawei/hicloud/photosharesdk/database/DBConstants$TableName;->getName()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {}, Lcom/huawei/hicloud/photosharesdk/database/SharedFolderOperator;->insertInitData()Landroid/content/ContentValues;

    move-result-object v2

    invoke-virtual {p1, v0, v1, v2}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    .line 46
    return-void
.end method

.method public onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 2
    .parameter "db"
    .parameter "oldVersion"
    .parameter "newVersion"

    .prologue
    .line 51
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Upgrade database is not support right now!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
