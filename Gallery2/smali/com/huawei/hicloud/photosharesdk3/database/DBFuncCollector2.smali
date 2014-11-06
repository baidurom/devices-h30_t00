.class public final Lcom/huawei/hicloud/photosharesdk3/database/DBFuncCollector2;
.super Ljava/lang/Object;
.source "DBFuncCollector2.java"

# interfaces
.implements Lcom/huawei/hicloud/photosharesdk3/database/DBFuncInterface;


# static fields
.field private static synthetic $SWITCH_TABLE$com$huawei$hicloud$photosharesdk3$database$DBConstants$TableName:[I


# instance fields
.field database:Landroid/database/sqlite/SQLiteDatabase;

.field folderPhotoOperator:Lcom/huawei/hicloud/photosharesdk3/database/FolderPhotoOperator;

.field folderReceiverOperator:Lcom/huawei/hicloud/photosharesdk3/database/FolderReceiverOperator;

.field receiverInfoOperator:Lcom/huawei/hicloud/photosharesdk3/database/ReceiverInfoOperator;

.field sharedFolderOperator:Lcom/huawei/hicloud/photosharesdk3/database/SharedFolderOperator;

.field taskInfoOperator:Lcom/huawei/hicloud/photosharesdk3/database/TaskInfoOperator;


# direct methods
.method static synthetic $SWITCH_TABLE$com$huawei$hicloud$photosharesdk3$database$DBConstants$TableName()[I
    .locals 3

    .prologue
    .line 22
    sget-object v0, Lcom/huawei/hicloud/photosharesdk3/database/DBFuncCollector2;->$SWITCH_TABLE$com$huawei$hicloud$photosharesdk3$database$DBConstants$TableName:[I

    if-eqz v0, :cond_0

    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Lcom/huawei/hicloud/photosharesdk3/database/DBConstants$TableName;->values()[Lcom/huawei/hicloud/photosharesdk3/database/DBConstants$TableName;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_0
    sget-object v1, Lcom/huawei/hicloud/photosharesdk3/database/DBConstants$TableName;->FolderPhoto:Lcom/huawei/hicloud/photosharesdk3/database/DBConstants$TableName;

    invoke-virtual {v1}, Lcom/huawei/hicloud/photosharesdk3/database/DBConstants$TableName;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_4

    :goto_1
    :try_start_1
    sget-object v1, Lcom/huawei/hicloud/photosharesdk3/database/DBConstants$TableName;->FolderReceiver:Lcom/huawei/hicloud/photosharesdk3/database/DBConstants$TableName;

    invoke-virtual {v1}, Lcom/huawei/hicloud/photosharesdk3/database/DBConstants$TableName;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_3

    :goto_2
    :try_start_2
    sget-object v1, Lcom/huawei/hicloud/photosharesdk3/database/DBConstants$TableName;->ReceiverInfo:Lcom/huawei/hicloud/photosharesdk3/database/DBConstants$TableName;

    invoke-virtual {v1}, Lcom/huawei/hicloud/photosharesdk3/database/DBConstants$TableName;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_2

    :goto_3
    :try_start_3
    sget-object v1, Lcom/huawei/hicloud/photosharesdk3/database/DBConstants$TableName;->SharedFolder:Lcom/huawei/hicloud/photosharesdk3/database/DBConstants$TableName;

    invoke-virtual {v1}, Lcom/huawei/hicloud/photosharesdk3/database/DBConstants$TableName;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_1

    :goto_4
    :try_start_4
    sget-object v1, Lcom/huawei/hicloud/photosharesdk3/database/DBConstants$TableName;->TaskInfo:Lcom/huawei/hicloud/photosharesdk3/database/DBConstants$TableName;

    invoke-virtual {v1}, Lcom/huawei/hicloud/photosharesdk3/database/DBConstants$TableName;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_0

    :goto_5
    sput-object v0, Lcom/huawei/hicloud/photosharesdk3/database/DBFuncCollector2;->$SWITCH_TABLE$com$huawei$hicloud$photosharesdk3$database$DBConstants$TableName:[I

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_5

    :catch_1
    move-exception v1

    goto :goto_4

    :catch_2
    move-exception v1

    goto :goto_3

    :catch_3
    move-exception v1

    goto :goto_2

    :catch_4
    move-exception v1

    goto :goto_1
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 22
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 25
    iput-object v0, p0, Lcom/huawei/hicloud/photosharesdk3/database/DBFuncCollector2;->folderPhotoOperator:Lcom/huawei/hicloud/photosharesdk3/database/FolderPhotoOperator;

    .line 27
    iput-object v0, p0, Lcom/huawei/hicloud/photosharesdk3/database/DBFuncCollector2;->folderReceiverOperator:Lcom/huawei/hicloud/photosharesdk3/database/FolderReceiverOperator;

    .line 30
    iput-object v0, p0, Lcom/huawei/hicloud/photosharesdk3/database/DBFuncCollector2;->receiverInfoOperator:Lcom/huawei/hicloud/photosharesdk3/database/ReceiverInfoOperator;

    .line 32
    iput-object v0, p0, Lcom/huawei/hicloud/photosharesdk3/database/DBFuncCollector2;->sharedFolderOperator:Lcom/huawei/hicloud/photosharesdk3/database/SharedFolderOperator;

    .line 34
    iput-object v0, p0, Lcom/huawei/hicloud/photosharesdk3/database/DBFuncCollector2;->taskInfoOperator:Lcom/huawei/hicloud/photosharesdk3/database/TaskInfoOperator;

    .line 36
    iput-object v0, p0, Lcom/huawei/hicloud/photosharesdk3/database/DBFuncCollector2;->database:Landroid/database/sqlite/SQLiteDatabase;

    .line 22
    return-void
.end method

.method private chooseOperator(Lcom/huawei/hicloud/photosharesdk3/database/DBConstants$TableName;)Lcom/huawei/hicloud/photosharesdk3/database/DBOperator3;
    .locals 3
    .parameter "talbeName"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/huawei/hicloud/photosharesdk3/database/DBConstants$TableName;",
            ")",
            "Lcom/huawei/hicloud/photosharesdk3/database/DBOperator3",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 439
    const/4 v0, 0x0

    .line 440
    .local v0, db:Lcom/huawei/hicloud/photosharesdk3/database/DBOperator3;,"Lcom/huawei/hicloud/photosharesdk3/database/DBOperator3<*>;"
    invoke-static {}, Lcom/huawei/hicloud/photosharesdk3/database/DBFuncCollector2;->$SWITCH_TABLE$com$huawei$hicloud$photosharesdk3$database$DBConstants$TableName()[I

    move-result-object v1

    invoke-virtual {p1}, Lcom/huawei/hicloud/photosharesdk3/database/DBConstants$TableName;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 463
    :goto_0
    return-object v0

    .line 443
    :pswitch_0
    iget-object v0, p0, Lcom/huawei/hicloud/photosharesdk3/database/DBFuncCollector2;->folderPhotoOperator:Lcom/huawei/hicloud/photosharesdk3/database/FolderPhotoOperator;

    .line 444
    goto :goto_0

    .line 446
    :pswitch_1
    iget-object v0, p0, Lcom/huawei/hicloud/photosharesdk3/database/DBFuncCollector2;->folderReceiverOperator:Lcom/huawei/hicloud/photosharesdk3/database/FolderReceiverOperator;

    .line 447
    goto :goto_0

    .line 452
    :pswitch_2
    iget-object v0, p0, Lcom/huawei/hicloud/photosharesdk3/database/DBFuncCollector2;->receiverInfoOperator:Lcom/huawei/hicloud/photosharesdk3/database/ReceiverInfoOperator;

    .line 453
    goto :goto_0

    .line 455
    :pswitch_3
    iget-object v0, p0, Lcom/huawei/hicloud/photosharesdk3/database/DBFuncCollector2;->sharedFolderOperator:Lcom/huawei/hicloud/photosharesdk3/database/SharedFolderOperator;

    .line 456
    goto :goto_0

    .line 458
    :pswitch_4
    iget-object v0, p0, Lcom/huawei/hicloud/photosharesdk3/database/DBFuncCollector2;->taskInfoOperator:Lcom/huawei/hicloud/photosharesdk3/database/TaskInfoOperator;

    .line 459
    goto :goto_0

    .line 440
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method private chooseOperator(Ljava/lang/Object;)Lcom/huawei/hicloud/photosharesdk3/database/DBOperator3;
    .locals 2
    .parameter "obj"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")",
            "Lcom/huawei/hicloud/photosharesdk3/database/DBOperator3",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 468
    const/4 v0, 0x0

    .line 469
    .local v0, db:Lcom/huawei/hicloud/photosharesdk3/database/DBOperator3;,"Lcom/huawei/hicloud/photosharesdk3/database/DBOperator3<*>;"
    instance-of v1, p1, Lcom/huawei/hicloud/photosharesdk3/database/dao/FolderPhoto;

    if-eqz v1, :cond_1

    .line 471
    iget-object v0, p0, Lcom/huawei/hicloud/photosharesdk3/database/DBFuncCollector2;->folderPhotoOperator:Lcom/huawei/hicloud/photosharesdk3/database/FolderPhotoOperator;

    .line 493
    :cond_0
    :goto_0
    return-object v0

    .line 473
    :cond_1
    instance-of v1, p1, Lcom/huawei/hicloud/photosharesdk3/database/dao/FolderReceiver;

    if-eqz v1, :cond_2

    .line 475
    iget-object v0, p0, Lcom/huawei/hicloud/photosharesdk3/database/DBFuncCollector2;->folderReceiverOperator:Lcom/huawei/hicloud/photosharesdk3/database/FolderReceiverOperator;

    goto :goto_0

    .line 481
    :cond_2
    instance-of v1, p1, Lcom/huawei/hicloud/photosharesdk3/database/dao/ReceiverInfo;

    if-eqz v1, :cond_3

    .line 483
    iget-object v0, p0, Lcom/huawei/hicloud/photosharesdk3/database/DBFuncCollector2;->receiverInfoOperator:Lcom/huawei/hicloud/photosharesdk3/database/ReceiverInfoOperator;

    goto :goto_0

    .line 485
    :cond_3
    instance-of v1, p1, Lcom/huawei/hicloud/photosharesdk3/database/dao/SharedFolder;

    if-eqz v1, :cond_4

    .line 487
    iget-object v0, p0, Lcom/huawei/hicloud/photosharesdk3/database/DBFuncCollector2;->sharedFolderOperator:Lcom/huawei/hicloud/photosharesdk3/database/SharedFolderOperator;

    goto :goto_0

    .line 489
    :cond_4
    instance-of v1, p1, Lcom/huawei/hicloud/photosharesdk3/database/dao/TaskInfo;

    if-eqz v1, :cond_0

    .line 491
    iget-object v0, p0, Lcom/huawei/hicloud/photosharesdk3/database/DBFuncCollector2;->taskInfoOperator:Lcom/huawei/hicloud/photosharesdk3/database/TaskInfoOperator;

    goto :goto_0
.end method


# virtual methods
.method public addNickName(Lcom/huawei/hicloud/photosharesdk3/database/dao/ReceiverInfo;)Z
    .locals 2
    .parameter "receiverInfo"

    .prologue
    .line 379
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Haven\'t supported nickName yet"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public addPhoto(Lcom/huawei/hicloud/photosharesdk3/database/dao/FolderPhoto;)Z
    .locals 1
    .parameter "folderPhoto"

    .prologue
    .line 258
    iget-object v0, p0, Lcom/huawei/hicloud/photosharesdk3/database/DBFuncCollector2;->folderPhotoOperator:Lcom/huawei/hicloud/photosharesdk3/database/FolderPhotoOperator;

    invoke-static {p1, v0}, Lcom/huawei/hicloud/photosharesdk3/database/DBFuncImplementation;->addPhoto(Lcom/huawei/hicloud/photosharesdk3/database/dao/FolderPhoto;Lcom/huawei/hicloud/photosharesdk3/database/FolderPhotoOperator;)Z

    move-result v0

    return v0
.end method

.method public addPhoto(Ljava/util/List;)Z
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/huawei/hicloud/photosharesdk3/database/dao/FolderPhoto;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 247
    .local p1, folderPhotos:Ljava/util/List;,"Ljava/util/List<Lcom/huawei/hicloud/photosharesdk3/database/dao/FolderPhoto;>;"
    iget-object v0, p0, Lcom/huawei/hicloud/photosharesdk3/database/DBFuncCollector2;->folderPhotoOperator:Lcom/huawei/hicloud/photosharesdk3/database/FolderPhotoOperator;

    invoke-static {p1, v0}, Lcom/huawei/hicloud/photosharesdk3/database/DBFuncImplementation;->addPhoto(Ljava/util/List;Lcom/huawei/hicloud/photosharesdk3/database/FolderPhotoOperator;)Z

    move-result v0

    return v0
.end method

.method public addReceiver(Ljava/util/List;)Z
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/huawei/hicloud/photosharesdk3/database/dao/ReceiverInfo;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 346
    .local p1, receiverInfos:Ljava/util/List;,"Ljava/util/List<Lcom/huawei/hicloud/photosharesdk3/database/dao/ReceiverInfo;>;"
    iget-object v0, p0, Lcom/huawei/hicloud/photosharesdk3/database/DBFuncCollector2;->receiverInfoOperator:Lcom/huawei/hicloud/photosharesdk3/database/ReceiverInfoOperator;

    invoke-static {p1, v0}, Lcom/huawei/hicloud/photosharesdk3/database/DBFuncImplementation;->addReceiver(Ljava/util/List;Lcom/huawei/hicloud/photosharesdk3/database/ReceiverInfoOperator;)Z

    move-result v0

    return v0
.end method

.method public addShareFolder(Lcom/huawei/hicloud/photosharesdk3/database/dao/SharedFolder;)Z
    .locals 1
    .parameter "sharedFolder"

    .prologue
    .line 313
    iget-object v0, p0, Lcom/huawei/hicloud/photosharesdk3/database/DBFuncCollector2;->sharedFolderOperator:Lcom/huawei/hicloud/photosharesdk3/database/SharedFolderOperator;

    invoke-static {p1, v0}, Lcom/huawei/hicloud/photosharesdk3/database/DBFuncImplementation;->addShareFolder(Lcom/huawei/hicloud/photosharesdk3/database/dao/SharedFolder;Lcom/huawei/hicloud/photosharesdk3/database/SharedFolderOperator;)Z

    move-result v0

    return v0
.end method

.method public addTaskInfo(Lcom/huawei/hicloud/photosharesdk3/database/dao/TaskInfo;)Z
    .locals 1
    .parameter "taskInfo"

    .prologue
    .line 280
    iget-object v0, p0, Lcom/huawei/hicloud/photosharesdk3/database/DBFuncCollector2;->taskInfoOperator:Lcom/huawei/hicloud/photosharesdk3/database/TaskInfoOperator;

    invoke-static {p1, v0}, Lcom/huawei/hicloud/photosharesdk3/database/DBFuncImplementation;->addTaskInfo(Lcom/huawei/hicloud/photosharesdk3/database/dao/TaskInfo;Lcom/huawei/hicloud/photosharesdk3/database/TaskInfoOperator;)Z

    move-result v0

    return v0
.end method

.method public bindReciver2Folder(Lcom/huawei/hicloud/photosharesdk3/database/dao/FolderReceiver;)Z
    .locals 1
    .parameter "folderReceiver"

    .prologue
    .line 357
    iget-object v0, p0, Lcom/huawei/hicloud/photosharesdk3/database/DBFuncCollector2;->folderReceiverOperator:Lcom/huawei/hicloud/photosharesdk3/database/FolderReceiverOperator;

    invoke-static {p1, v0}, Lcom/huawei/hicloud/photosharesdk3/database/DBFuncImplementation;->bindReciver2Folder(Lcom/huawei/hicloud/photosharesdk3/database/dao/FolderReceiver;Lcom/huawei/hicloud/photosharesdk3/database/FolderReceiverOperator;)Z

    move-result v0

    return v0
.end method

.method public closeFolderPhoto()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 59
    invoke-static {}, Lcom/huawei/hicloud/photosharesdk3/database/FolderPhotoOperator;->close()V

    .line 60
    iput-object v0, p0, Lcom/huawei/hicloud/photosharesdk3/database/DBFuncCollector2;->folderPhotoOperator:Lcom/huawei/hicloud/photosharesdk3/database/FolderPhotoOperator;

    .line 61
    iput-object v0, p0, Lcom/huawei/hicloud/photosharesdk3/database/DBFuncCollector2;->database:Landroid/database/sqlite/SQLiteDatabase;

    .line 62
    return-void
.end method

.method public closeFolderReceiver()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 85
    invoke-static {}, Lcom/huawei/hicloud/photosharesdk3/database/FolderReceiverOperator;->close()V

    .line 86
    iput-object v0, p0, Lcom/huawei/hicloud/photosharesdk3/database/DBFuncCollector2;->folderReceiverOperator:Lcom/huawei/hicloud/photosharesdk3/database/FolderReceiverOperator;

    .line 87
    iput-object v0, p0, Lcom/huawei/hicloud/photosharesdk3/database/DBFuncCollector2;->database:Landroid/database/sqlite/SQLiteDatabase;

    .line 88
    return-void
.end method

.method public closeReceiverInfoOperator()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 125
    invoke-static {}, Lcom/huawei/hicloud/photosharesdk3/database/ReceiverInfoOperator;->close()V

    .line 126
    iput-object v0, p0, Lcom/huawei/hicloud/photosharesdk3/database/DBFuncCollector2;->receiverInfoOperator:Lcom/huawei/hicloud/photosharesdk3/database/ReceiverInfoOperator;

    .line 127
    iput-object v0, p0, Lcom/huawei/hicloud/photosharesdk3/database/DBFuncCollector2;->database:Landroid/database/sqlite/SQLiteDatabase;

    .line 128
    return-void
.end method

.method public closeSharedFolderOperator()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 151
    invoke-static {}, Lcom/huawei/hicloud/photosharesdk3/database/SharedFolderOperator;->close()V

    .line 152
    iput-object v0, p0, Lcom/huawei/hicloud/photosharesdk3/database/DBFuncCollector2;->sharedFolderOperator:Lcom/huawei/hicloud/photosharesdk3/database/SharedFolderOperator;

    .line 153
    iput-object v0, p0, Lcom/huawei/hicloud/photosharesdk3/database/DBFuncCollector2;->database:Landroid/database/sqlite/SQLiteDatabase;

    .line 154
    return-void
.end method

.method public closeTaskInfoOperator()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 177
    invoke-static {}, Lcom/huawei/hicloud/photosharesdk3/database/TaskInfoOperator;->close()V

    .line 178
    iput-object v0, p0, Lcom/huawei/hicloud/photosharesdk3/database/DBFuncCollector2;->taskInfoOperator:Lcom/huawei/hicloud/photosharesdk3/database/TaskInfoOperator;

    .line 179
    iput-object v0, p0, Lcom/huawei/hicloud/photosharesdk3/database/DBFuncCollector2;->database:Landroid/database/sqlite/SQLiteDatabase;

    .line 180
    return-void
.end method

.method public delPhoto(Ljava/util/List;)Z
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/huawei/hicloud/photosharesdk3/database/dao/FolderPhoto;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 269
    .local p1, folderPhotos:Ljava/util/List;,"Ljava/util/List<Lcom/huawei/hicloud/photosharesdk3/database/dao/FolderPhoto;>;"
    iget-object v0, p0, Lcom/huawei/hicloud/photosharesdk3/database/DBFuncCollector2;->folderPhotoOperator:Lcom/huawei/hicloud/photosharesdk3/database/FolderPhotoOperator;

    invoke-static {p1, v0}, Lcom/huawei/hicloud/photosharesdk3/database/DBFuncImplementation;->delPhoto(Ljava/util/List;Lcom/huawei/hicloud/photosharesdk3/database/FolderPhotoOperator;)Z

    move-result v0

    return v0
.end method

.method public delShareFolder(Lcom/huawei/hicloud/photosharesdk3/database/dao/SharedFolder;)Z
    .locals 1
    .parameter "sharedFolder"

    .prologue
    .line 324
    iget-object v0, p0, Lcom/huawei/hicloud/photosharesdk3/database/DBFuncCollector2;->sharedFolderOperator:Lcom/huawei/hicloud/photosharesdk3/database/SharedFolderOperator;

    invoke-static {p1, v0}, Lcom/huawei/hicloud/photosharesdk3/database/DBFuncImplementation;->delShareFolder(Lcom/huawei/hicloud/photosharesdk3/database/dao/SharedFolder;Lcom/huawei/hicloud/photosharesdk3/database/SharedFolderOperator;)Z

    move-result v0

    return v0
.end method

.method public delTaskInfo(Lcom/huawei/hicloud/photosharesdk3/database/dao/TaskInfo;)Z
    .locals 1
    .parameter "taskInfo"

    .prologue
    .line 291
    iget-object v0, p0, Lcom/huawei/hicloud/photosharesdk3/database/DBFuncCollector2;->taskInfoOperator:Lcom/huawei/hicloud/photosharesdk3/database/TaskInfoOperator;

    invoke-static {p1, v0}, Lcom/huawei/hicloud/photosharesdk3/database/DBFuncImplementation;->delTaskInfo(Lcom/huawei/hicloud/photosharesdk3/database/dao/TaskInfo;Lcom/huawei/hicloud/photosharesdk3/database/TaskInfoOperator;)Z

    move-result v0

    return v0
.end method

.method public delete(Lcom/huawei/hicloud/photosharesdk3/database/DBConstants$TableName;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 2
    .parameter "tableName"
    .parameter "matchKey"
    .parameter "matchValue"

    .prologue
    .line 591
    invoke-direct {p0, p1}, Lcom/huawei/hicloud/photosharesdk3/database/DBFuncCollector2;->chooseOperator(Lcom/huawei/hicloud/photosharesdk3/database/DBConstants$TableName;)Lcom/huawei/hicloud/photosharesdk3/database/DBOperator3;

    move-result-object v0

    .line 592
    .local v0, db:Lcom/huawei/hicloud/photosharesdk3/database/DBOperator3;,"Lcom/huawei/hicloud/photosharesdk3/database/DBOperator3<*>;"
    invoke-static {v0, p2, p3}, Lcom/huawei/hicloud/photosharesdk3/database/DBFuncImplementation;->delete(Lcom/huawei/hicloud/photosharesdk3/database/DBOperator3;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    return v1
.end method

.method public deleteDatabase()V
    .locals 0

    .prologue
    .line 189
    invoke-static {}, Lcom/huawei/hicloud/photosharesdk3/database/DBOperator3;->deleteDatabase()V

    .line 190
    return-void
.end method

.method public deleteTaskInfo(Ljava/lang/String;)Z
    .locals 1
    .parameter "photoPathRemote"

    .prologue
    .line 434
    iget-object v0, p0, Lcom/huawei/hicloud/photosharesdk3/database/DBFuncCollector2;->taskInfoOperator:Lcom/huawei/hicloud/photosharesdk3/database/TaskInfoOperator;

    invoke-static {v0, p1}, Lcom/huawei/hicloud/photosharesdk3/database/DBFuncImplementation;->deleteTaskInfo(Lcom/huawei/hicloud/photosharesdk3/database/TaskInfoOperator;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public getDatabase()Landroid/database/sqlite/SQLiteDatabase;
    .locals 1

    .prologue
    .line 597
    iget-object v0, p0, Lcom/huawei/hicloud/photosharesdk3/database/DBFuncCollector2;->database:Landroid/database/sqlite/SQLiteDatabase;

    return-object v0
.end method

.method public getFriendsInfo(Ljava/lang/String;)Ljava/util/List;
    .locals 1
    .parameter "sharedPath"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/huawei/hicloud/photosharesdk/api/vo/FriendsInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 236
    iget-object v0, p0, Lcom/huawei/hicloud/photosharesdk3/database/DBFuncCollector2;->folderReceiverOperator:Lcom/huawei/hicloud/photosharesdk3/database/FolderReceiverOperator;

    invoke-static {p1, v0}, Lcom/huawei/hicloud/photosharesdk3/database/DBFuncImplementation;->getFriendsInfo(Ljava/lang/String;Lcom/huawei/hicloud/photosharesdk3/database/FolderReceiverOperator;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getPhotoInfo(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;
    .locals 1
    .parameter "sharedPath"
    .parameter "order"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/huawei/hicloud/photosharesdk3/database/dao/FolderPhoto;",
            ">;"
        }
    .end annotation

    .prologue
    .line 225
    iget-object v0, p0, Lcom/huawei/hicloud/photosharesdk3/database/DBFuncCollector2;->folderPhotoOperator:Lcom/huawei/hicloud/photosharesdk3/database/FolderPhotoOperator;

    invoke-static {p1, v0, p2}, Lcom/huawei/hicloud/photosharesdk3/database/DBFuncImplementation;->getPhotoInfo(Ljava/lang/String;Lcom/huawei/hicloud/photosharesdk3/database/FolderPhotoOperator;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getReceiverInfo()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/huawei/hicloud/photosharesdk3/database/dao/ReceiverInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 407
    iget-object v0, p0, Lcom/huawei/hicloud/photosharesdk3/database/DBFuncCollector2;->receiverInfoOperator:Lcom/huawei/hicloud/photosharesdk3/database/ReceiverInfoOperator;

    invoke-static {v0}, Lcom/huawei/hicloud/photosharesdk3/database/DBFuncImplementation;->getReceiverInfo(Lcom/huawei/hicloud/photosharesdk3/database/ReceiverInfoOperator;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getShareFolderBySharePath(Ljava/lang/String;Landroid/content/Context;)Ljava/util/List;
    .locals 1
    .parameter "sharePath"
    .parameter "context"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/huawei/hicloud/photosharesdk3/database/dao/SharedFolder;",
            ">;"
        }
    .end annotation

    .prologue
    .line 213
    iget-object v0, p0, Lcom/huawei/hicloud/photosharesdk3/database/DBFuncCollector2;->sharedFolderOperator:Lcom/huawei/hicloud/photosharesdk3/database/SharedFolderOperator;

    invoke-static {p1, v0, p2}, Lcom/huawei/hicloud/photosharesdk3/database/DBFuncImplementation;->getShareFolderBySharePath(Ljava/lang/String;Lcom/huawei/hicloud/photosharesdk3/database/SharedFolderOperator;Landroid/content/Context;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getShareFolderInfo(ILandroid/content/Context;)Ljava/util/List;
    .locals 2
    .parameter "folderType"
    .parameter "context"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/huawei/hicloud/photosharesdk3/database/dao/SharedFolder;",
            ">;"
        }
    .end annotation

    .prologue
    .line 201
    iget-object v0, p0, Lcom/huawei/hicloud/photosharesdk3/database/DBFuncCollector2;->sharedFolderOperator:Lcom/huawei/hicloud/photosharesdk3/database/SharedFolderOperator;

    iget-object v1, p0, Lcom/huawei/hicloud/photosharesdk3/database/DBFuncCollector2;->folderPhotoOperator:Lcom/huawei/hicloud/photosharesdk3/database/FolderPhotoOperator;

    invoke-static {p1, v0, v1, p2}, Lcom/huawei/hicloud/photosharesdk3/database/DBFuncImplementation;->getShareFolderInfo(ILcom/huawei/hicloud/photosharesdk3/database/SharedFolderOperator;Lcom/huawei/hicloud/photosharesdk3/database/FolderPhotoOperator;Landroid/content/Context;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getTaskInfo()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/util/List",
            "<",
            "Lcom/huawei/hicloud/photosharesdk3/database/dao/TaskInfo;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 385
    iget-object v0, p0, Lcom/huawei/hicloud/photosharesdk3/database/DBFuncCollector2;->taskInfoOperator:Lcom/huawei/hicloud/photosharesdk3/database/TaskInfoOperator;

    invoke-static {v0}, Lcom/huawei/hicloud/photosharesdk3/database/DBFuncImplementation;->getTaskInfo(Lcom/huawei/hicloud/photosharesdk3/database/TaskInfoOperator;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public openFolderPhoto(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 45
    iget-object v0, p0, Lcom/huawei/hicloud/photosharesdk3/database/DBFuncCollector2;->folderPhotoOperator:Lcom/huawei/hicloud/photosharesdk3/database/FolderPhotoOperator;

    if-nez v0, :cond_0

    .line 47
    new-instance v0, Lcom/huawei/hicloud/photosharesdk3/database/FolderPhotoOperator;

    invoke-direct {v0, p1}, Lcom/huawei/hicloud/photosharesdk3/database/FolderPhotoOperator;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/huawei/hicloud/photosharesdk3/database/DBFuncCollector2;->folderPhotoOperator:Lcom/huawei/hicloud/photosharesdk3/database/FolderPhotoOperator;

    .line 49
    :cond_0
    invoke-static {}, Lcom/huawei/hicloud/photosharesdk3/database/FolderPhotoOperator;->open()V

    .line 50
    iget-object v0, p0, Lcom/huawei/hicloud/photosharesdk3/database/DBFuncCollector2;->folderPhotoOperator:Lcom/huawei/hicloud/photosharesdk3/database/FolderPhotoOperator;

    invoke-virtual {v0}, Lcom/huawei/hicloud/photosharesdk3/database/FolderPhotoOperator;->getSQLiteDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    iput-object v0, p0, Lcom/huawei/hicloud/photosharesdk3/database/DBFuncCollector2;->database:Landroid/database/sqlite/SQLiteDatabase;

    .line 51
    return-void
.end method

.method public openFolderReceiver(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 71
    iget-object v0, p0, Lcom/huawei/hicloud/photosharesdk3/database/DBFuncCollector2;->folderReceiverOperator:Lcom/huawei/hicloud/photosharesdk3/database/FolderReceiverOperator;

    if-nez v0, :cond_0

    .line 73
    new-instance v0, Lcom/huawei/hicloud/photosharesdk3/database/FolderReceiverOperator;

    invoke-direct {v0, p1}, Lcom/huawei/hicloud/photosharesdk3/database/FolderReceiverOperator;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/huawei/hicloud/photosharesdk3/database/DBFuncCollector2;->folderReceiverOperator:Lcom/huawei/hicloud/photosharesdk3/database/FolderReceiverOperator;

    .line 75
    :cond_0
    invoke-static {}, Lcom/huawei/hicloud/photosharesdk3/database/FolderReceiverOperator;->open()V

    .line 76
    iget-object v0, p0, Lcom/huawei/hicloud/photosharesdk3/database/DBFuncCollector2;->folderReceiverOperator:Lcom/huawei/hicloud/photosharesdk3/database/FolderReceiverOperator;

    invoke-virtual {v0}, Lcom/huawei/hicloud/photosharesdk3/database/FolderReceiverOperator;->getSQLiteDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    iput-object v0, p0, Lcom/huawei/hicloud/photosharesdk3/database/DBFuncCollector2;->database:Landroid/database/sqlite/SQLiteDatabase;

    .line 77
    return-void
.end method

.method public openReceiverInfoOperator(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 111
    iget-object v0, p0, Lcom/huawei/hicloud/photosharesdk3/database/DBFuncCollector2;->receiverInfoOperator:Lcom/huawei/hicloud/photosharesdk3/database/ReceiverInfoOperator;

    if-nez v0, :cond_0

    .line 113
    new-instance v0, Lcom/huawei/hicloud/photosharesdk3/database/ReceiverInfoOperator;

    invoke-direct {v0, p1}, Lcom/huawei/hicloud/photosharesdk3/database/ReceiverInfoOperator;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/huawei/hicloud/photosharesdk3/database/DBFuncCollector2;->receiverInfoOperator:Lcom/huawei/hicloud/photosharesdk3/database/ReceiverInfoOperator;

    .line 115
    :cond_0
    invoke-static {}, Lcom/huawei/hicloud/photosharesdk3/database/ReceiverInfoOperator;->open()V

    .line 116
    iget-object v0, p0, Lcom/huawei/hicloud/photosharesdk3/database/DBFuncCollector2;->receiverInfoOperator:Lcom/huawei/hicloud/photosharesdk3/database/ReceiverInfoOperator;

    invoke-virtual {v0}, Lcom/huawei/hicloud/photosharesdk3/database/ReceiverInfoOperator;->getSQLiteDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    iput-object v0, p0, Lcom/huawei/hicloud/photosharesdk3/database/DBFuncCollector2;->database:Landroid/database/sqlite/SQLiteDatabase;

    .line 117
    return-void
.end method

.method public openSharedFolderOperator(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 137
    iget-object v0, p0, Lcom/huawei/hicloud/photosharesdk3/database/DBFuncCollector2;->sharedFolderOperator:Lcom/huawei/hicloud/photosharesdk3/database/SharedFolderOperator;

    if-nez v0, :cond_0

    .line 139
    new-instance v0, Lcom/huawei/hicloud/photosharesdk3/database/SharedFolderOperator;

    invoke-direct {v0, p1}, Lcom/huawei/hicloud/photosharesdk3/database/SharedFolderOperator;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/huawei/hicloud/photosharesdk3/database/DBFuncCollector2;->sharedFolderOperator:Lcom/huawei/hicloud/photosharesdk3/database/SharedFolderOperator;

    .line 141
    :cond_0
    invoke-static {}, Lcom/huawei/hicloud/photosharesdk3/database/SharedFolderOperator;->open()V

    .line 142
    iget-object v0, p0, Lcom/huawei/hicloud/photosharesdk3/database/DBFuncCollector2;->sharedFolderOperator:Lcom/huawei/hicloud/photosharesdk3/database/SharedFolderOperator;

    invoke-virtual {v0}, Lcom/huawei/hicloud/photosharesdk3/database/SharedFolderOperator;->getSQLiteDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    iput-object v0, p0, Lcom/huawei/hicloud/photosharesdk3/database/DBFuncCollector2;->database:Landroid/database/sqlite/SQLiteDatabase;

    .line 143
    return-void
.end method

.method public openTaskInfoOperator(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 163
    iget-object v0, p0, Lcom/huawei/hicloud/photosharesdk3/database/DBFuncCollector2;->taskInfoOperator:Lcom/huawei/hicloud/photosharesdk3/database/TaskInfoOperator;

    if-nez v0, :cond_0

    .line 165
    new-instance v0, Lcom/huawei/hicloud/photosharesdk3/database/TaskInfoOperator;

    invoke-direct {v0, p1}, Lcom/huawei/hicloud/photosharesdk3/database/TaskInfoOperator;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/huawei/hicloud/photosharesdk3/database/DBFuncCollector2;->taskInfoOperator:Lcom/huawei/hicloud/photosharesdk3/database/TaskInfoOperator;

    .line 167
    :cond_0
    invoke-static {}, Lcom/huawei/hicloud/photosharesdk3/database/TaskInfoOperator;->open()V

    .line 168
    iget-object v0, p0, Lcom/huawei/hicloud/photosharesdk3/database/DBFuncCollector2;->taskInfoOperator:Lcom/huawei/hicloud/photosharesdk3/database/TaskInfoOperator;

    invoke-virtual {v0}, Lcom/huawei/hicloud/photosharesdk3/database/TaskInfoOperator;->getSQLiteDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    iput-object v0, p0, Lcom/huawei/hicloud/photosharesdk3/database/DBFuncCollector2;->database:Landroid/database/sqlite/SQLiteDatabase;

    .line 169
    return-void
.end method

.method public varargs query(Lcom/huawei/hicloud/photosharesdk3/database/DBConstants$TableName;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Ljava/util/List;
    .locals 2
    .parameter "tableName"
    .parameter "matchKey"
    .parameter "matchValue"
    .parameter "columnNames"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/huawei/hicloud/photosharesdk3/database/DBConstants$TableName;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<[",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 552
    invoke-direct {p0, p1}, Lcom/huawei/hicloud/photosharesdk3/database/DBFuncCollector2;->chooseOperator(Lcom/huawei/hicloud/photosharesdk3/database/DBConstants$TableName;)Lcom/huawei/hicloud/photosharesdk3/database/DBOperator3;

    move-result-object v0

    .line 553
    .local v0, db:Lcom/huawei/hicloud/photosharesdk3/database/DBOperator3;,"Lcom/huawei/hicloud/photosharesdk3/database/DBOperator3<*>;"
    invoke-static {v0, p2, p3, p4}, Lcom/huawei/hicloud/photosharesdk3/database/DBFuncImplementation;->query(Lcom/huawei/hicloud/photosharesdk3/database/DBOperator3;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    return-object v1
.end method

.method public queryAllData(Lcom/huawei/hicloud/photosharesdk3/database/DBConstants$TableName;)Ljava/util/List;
    .locals 2
    .parameter "tableName"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/huawei/hicloud/photosharesdk3/database/DBConstants$TableName;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/huawei/hicloud/photosharesdk3/database/dao/FolderPhoto;",
            ">;"
        }
    .end annotation

    .prologue
    .line 576
    invoke-direct {p0, p1}, Lcom/huawei/hicloud/photosharesdk3/database/DBFuncCollector2;->chooseOperator(Lcom/huawei/hicloud/photosharesdk3/database/DBConstants$TableName;)Lcom/huawei/hicloud/photosharesdk3/database/DBOperator3;

    move-result-object v0

    .line 577
    .local v0, db:Lcom/huawei/hicloud/photosharesdk3/database/DBOperator3;,"Lcom/huawei/hicloud/photosharesdk3/database/DBOperator3<*>;"
    invoke-static {v0}, Lcom/huawei/hicloud/photosharesdk3/database/DBFuncImplementation;->queryAllData(Lcom/huawei/hicloud/photosharesdk3/database/DBOperator3;)Ljava/util/List;

    move-result-object v1

    return-object v1
.end method

.method public queryTableSize(Lcom/huawei/hicloud/photosharesdk3/database/DBConstants$TableName;)I
    .locals 2
    .parameter "tableName"

    .prologue
    .line 564
    invoke-direct {p0, p1}, Lcom/huawei/hicloud/photosharesdk3/database/DBFuncCollector2;->chooseOperator(Lcom/huawei/hicloud/photosharesdk3/database/DBConstants$TableName;)Lcom/huawei/hicloud/photosharesdk3/database/DBOperator3;

    move-result-object v0

    .line 565
    .local v0, db:Lcom/huawei/hicloud/photosharesdk3/database/DBOperator3;,"Lcom/huawei/hicloud/photosharesdk3/database/DBOperator3<*>;"
    invoke-static {v0}, Lcom/huawei/hicloud/photosharesdk3/database/DBFuncImplementation;->queryTableSize(Lcom/huawei/hicloud/photosharesdk3/database/DBOperator3;)I

    move-result v1

    return v1
.end method

.method public unbindReciver2Folder(Lcom/huawei/hicloud/photosharesdk3/database/dao/FolderReceiver;)Z
    .locals 1
    .parameter "folderReceiver"

    .prologue
    .line 368
    iget-object v0, p0, Lcom/huawei/hicloud/photosharesdk3/database/DBFuncCollector2;->folderReceiverOperator:Lcom/huawei/hicloud/photosharesdk3/database/FolderReceiverOperator;

    invoke-static {p1, v0}, Lcom/huawei/hicloud/photosharesdk3/database/DBFuncImplementation;->unbindReciver2Folder(Lcom/huawei/hicloud/photosharesdk3/database/dao/FolderReceiver;Lcom/huawei/hicloud/photosharesdk3/database/FolderReceiverOperator;)Z

    move-result v0

    return v0
.end method

.method public varargs update(Lcom/huawei/hicloud/photosharesdk3/database/DBConstants$TableName;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Z
    .locals 2
    .parameter "tableName"
    .parameter "matchKey"
    .parameter "matchValue"
    .parameter "args"

    .prologue
    .line 508
    invoke-direct {p0, p1}, Lcom/huawei/hicloud/photosharesdk3/database/DBFuncCollector2;->chooseOperator(Lcom/huawei/hicloud/photosharesdk3/database/DBConstants$TableName;)Lcom/huawei/hicloud/photosharesdk3/database/DBOperator3;

    move-result-object v0

    .line 509
    .local v0, db:Lcom/huawei/hicloud/photosharesdk3/database/DBOperator3;,"Lcom/huawei/hicloud/photosharesdk3/database/DBOperator3<*>;"
    invoke-static {v0, p2, p3, p4}, Lcom/huawei/hicloud/photosharesdk3/database/DBFuncImplementation;->update(Lcom/huawei/hicloud/photosharesdk3/database/DBOperator3;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v1

    return v1
.end method

.method public updateFolderReceiver(Lcom/huawei/hicloud/photosharesdk3/database/dao/FolderReceiver;)Z
    .locals 1
    .parameter "folderReceiver"

    .prologue
    .line 423
    iget-object v0, p0, Lcom/huawei/hicloud/photosharesdk3/database/DBFuncCollector2;->folderReceiverOperator:Lcom/huawei/hicloud/photosharesdk3/database/FolderReceiverOperator;

    invoke-static {v0, p1}, Lcom/huawei/hicloud/photosharesdk3/database/DBFuncImplementation;->updateFolderReceiver(Lcom/huawei/hicloud/photosharesdk3/database/FolderReceiverOperator;Lcom/huawei/hicloud/photosharesdk3/database/dao/FolderReceiver;)Z

    move-result v0

    return v0
.end method

.method public updateOrInsert(Ljava/lang/Object;[Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter
    .parameter "matchKeys"
    .parameter "matchValues"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;[",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 525
    .local p1, obj:Ljava/lang/Object;,"TT;"
    invoke-direct {p0, p1}, Lcom/huawei/hicloud/photosharesdk3/database/DBFuncCollector2;->chooseOperator(Ljava/lang/Object;)Lcom/huawei/hicloud/photosharesdk3/database/DBOperator3;

    move-result-object v0

    .line 526
    .local v0, db:Lcom/huawei/hicloud/photosharesdk3/database/DBOperator3;,"Lcom/huawei/hicloud/photosharesdk3/database/DBOperator3<TT;>;"
    if-eqz v0, :cond_0

    .line 528
    invoke-static {v0, p1, p2, p3}, Lcom/huawei/hicloud/photosharesdk3/database/DBFuncImplementation;->updateOrInsert(Lcom/huawei/hicloud/photosharesdk3/database/DBOperator3;Ljava/lang/Object;[Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 532
    :goto_0
    return-object v1

    :cond_0
    const-string v1, ""

    goto :goto_0
.end method

.method public updateShareFolder(Lcom/huawei/hicloud/photosharesdk3/database/dao/SharedFolder;)Z
    .locals 1
    .parameter "sharedFolder"

    .prologue
    .line 335
    iget-object v0, p0, Lcom/huawei/hicloud/photosharesdk3/database/DBFuncCollector2;->sharedFolderOperator:Lcom/huawei/hicloud/photosharesdk3/database/SharedFolderOperator;

    invoke-static {p1, v0}, Lcom/huawei/hicloud/photosharesdk3/database/DBFuncImplementation;->updateShareFolder(Lcom/huawei/hicloud/photosharesdk3/database/dao/SharedFolder;Lcom/huawei/hicloud/photosharesdk3/database/SharedFolderOperator;)Z

    move-result v0

    return v0
.end method

.method public updateTaskInfo(Lcom/huawei/hicloud/photosharesdk3/database/dao/TaskInfo;)Z
    .locals 1
    .parameter "taskInfo"

    .prologue
    .line 302
    iget-object v0, p0, Lcom/huawei/hicloud/photosharesdk3/database/DBFuncCollector2;->taskInfoOperator:Lcom/huawei/hicloud/photosharesdk3/database/TaskInfoOperator;

    invoke-static {p1, v0}, Lcom/huawei/hicloud/photosharesdk3/database/DBFuncImplementation;->updateTaskInfo(Lcom/huawei/hicloud/photosharesdk3/database/dao/TaskInfo;Lcom/huawei/hicloud/photosharesdk3/database/TaskInfoOperator;)Z

    move-result v0

    return v0
.end method
