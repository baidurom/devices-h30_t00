.class public final Lcom/huawei/hicloud/photosharesdk/database/DBFuncCollector2;
.super Ljava/lang/Object;
.source "DBFuncCollector2.java"

# interfaces
.implements Lcom/huawei/hicloud/photosharesdk/database/DBFuncInterface;
.implements Lcom/huawei/hicloud/photosharesdk/database/Controllnable;


# static fields
.field private static synthetic $SWITCH_TABLE$com$huawei$hicloud$photosharesdk$database$DBConstants$TableName:[I


# instance fields
.field folderPhotoOperator:Lcom/huawei/hicloud/photosharesdk/database/FolderPhotoOperator;

.field folderReceiverOperator:Lcom/huawei/hicloud/photosharesdk/database/FolderReceiverOperator;

.field myPhotoInfoOperator:Lcom/huawei/hicloud/photosharesdk/database/MyPhotoInfoOperator;

.field receiverInfoOperator:Lcom/huawei/hicloud/photosharesdk/database/ReceiverInfoOperator;

.field sharedFolderOperator:Lcom/huawei/hicloud/photosharesdk/database/SharedFolderOperator;

.field taskInfoOperator:Lcom/huawei/hicloud/photosharesdk/database/TaskInfoOperator;


# direct methods
.method static synthetic $SWITCH_TABLE$com$huawei$hicloud$photosharesdk$database$DBConstants$TableName()[I
    .locals 3

    .prologue
    .line 25
    sget-object v0, Lcom/huawei/hicloud/photosharesdk/database/DBFuncCollector2;->$SWITCH_TABLE$com$huawei$hicloud$photosharesdk$database$DBConstants$TableName:[I

    if-eqz v0, :cond_0

    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Lcom/huawei/hicloud/photosharesdk/database/DBConstants$TableName;->values()[Lcom/huawei/hicloud/photosharesdk/database/DBConstants$TableName;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_0
    sget-object v1, Lcom/huawei/hicloud/photosharesdk/database/DBConstants$TableName;->FolderPhoto:Lcom/huawei/hicloud/photosharesdk/database/DBConstants$TableName;

    invoke-virtual {v1}, Lcom/huawei/hicloud/photosharesdk/database/DBConstants$TableName;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_5

    :goto_1
    :try_start_1
    sget-object v1, Lcom/huawei/hicloud/photosharesdk/database/DBConstants$TableName;->FolderReceiver:Lcom/huawei/hicloud/photosharesdk/database/DBConstants$TableName;

    invoke-virtual {v1}, Lcom/huawei/hicloud/photosharesdk/database/DBConstants$TableName;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_4

    :goto_2
    :try_start_2
    sget-object v1, Lcom/huawei/hicloud/photosharesdk/database/DBConstants$TableName;->MyPhotoInfo:Lcom/huawei/hicloud/photosharesdk/database/DBConstants$TableName;

    invoke-virtual {v1}, Lcom/huawei/hicloud/photosharesdk/database/DBConstants$TableName;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_3

    :goto_3
    :try_start_3
    sget-object v1, Lcom/huawei/hicloud/photosharesdk/database/DBConstants$TableName;->ReceiverInfo:Lcom/huawei/hicloud/photosharesdk/database/DBConstants$TableName;

    invoke-virtual {v1}, Lcom/huawei/hicloud/photosharesdk/database/DBConstants$TableName;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_2

    :goto_4
    :try_start_4
    sget-object v1, Lcom/huawei/hicloud/photosharesdk/database/DBConstants$TableName;->SharedFolder:Lcom/huawei/hicloud/photosharesdk/database/DBConstants$TableName;

    invoke-virtual {v1}, Lcom/huawei/hicloud/photosharesdk/database/DBConstants$TableName;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_1

    :goto_5
    :try_start_5
    sget-object v1, Lcom/huawei/hicloud/photosharesdk/database/DBConstants$TableName;->TaskInfo:Lcom/huawei/hicloud/photosharesdk/database/DBConstants$TableName;

    invoke-virtual {v1}, Lcom/huawei/hicloud/photosharesdk/database/DBConstants$TableName;->ordinal()I

    move-result v1

    const/4 v2, 0x6

    aput v2, v0, v1
    :try_end_5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5 .. :try_end_5} :catch_0

    :goto_6
    sput-object v0, Lcom/huawei/hicloud/photosharesdk/database/DBFuncCollector2;->$SWITCH_TABLE$com$huawei$hicloud$photosharesdk$database$DBConstants$TableName:[I

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_6

    :catch_1
    move-exception v1

    goto :goto_5

    :catch_2
    move-exception v1

    goto :goto_4

    :catch_3
    move-exception v1

    goto :goto_3

    :catch_4
    move-exception v1

    goto :goto_2

    :catch_5
    move-exception v1

    goto :goto_1
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 25
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 27
    iput-object v0, p0, Lcom/huawei/hicloud/photosharesdk/database/DBFuncCollector2;->folderPhotoOperator:Lcom/huawei/hicloud/photosharesdk/database/FolderPhotoOperator;

    .line 28
    iput-object v0, p0, Lcom/huawei/hicloud/photosharesdk/database/DBFuncCollector2;->folderReceiverOperator:Lcom/huawei/hicloud/photosharesdk/database/FolderReceiverOperator;

    .line 29
    iput-object v0, p0, Lcom/huawei/hicloud/photosharesdk/database/DBFuncCollector2;->myPhotoInfoOperator:Lcom/huawei/hicloud/photosharesdk/database/MyPhotoInfoOperator;

    .line 30
    iput-object v0, p0, Lcom/huawei/hicloud/photosharesdk/database/DBFuncCollector2;->receiverInfoOperator:Lcom/huawei/hicloud/photosharesdk/database/ReceiverInfoOperator;

    .line 31
    iput-object v0, p0, Lcom/huawei/hicloud/photosharesdk/database/DBFuncCollector2;->sharedFolderOperator:Lcom/huawei/hicloud/photosharesdk/database/SharedFolderOperator;

    .line 32
    iput-object v0, p0, Lcom/huawei/hicloud/photosharesdk/database/DBFuncCollector2;->taskInfoOperator:Lcom/huawei/hicloud/photosharesdk/database/TaskInfoOperator;

    .line 25
    return-void
.end method

.method private chooseOperator(Lcom/huawei/hicloud/photosharesdk/database/DBConstants$TableName;)Lcom/huawei/hicloud/photosharesdk/database/DBOperator;
    .locals 3
    .parameter "talbeName"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/huawei/hicloud/photosharesdk/database/DBConstants$TableName;",
            ")",
            "Lcom/huawei/hicloud/photosharesdk/database/DBOperator",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 230
    const/4 v0, 0x0

    .line 231
    .local v0, db:Lcom/huawei/hicloud/photosharesdk/database/DBOperator;,"Lcom/huawei/hicloud/photosharesdk/database/DBOperator<*>;"
    invoke-static {}, Lcom/huawei/hicloud/photosharesdk/database/DBFuncCollector2;->$SWITCH_TABLE$com$huawei$hicloud$photosharesdk$database$DBConstants$TableName()[I

    move-result-object v1

    invoke-virtual {p1}, Lcom/huawei/hicloud/photosharesdk/database/DBConstants$TableName;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 251
    :goto_0
    return-object v0

    .line 233
    :pswitch_0
    iget-object v0, p0, Lcom/huawei/hicloud/photosharesdk/database/DBFuncCollector2;->folderPhotoOperator:Lcom/huawei/hicloud/photosharesdk/database/FolderPhotoOperator;

    .line 234
    goto :goto_0

    .line 236
    :pswitch_1
    iget-object v0, p0, Lcom/huawei/hicloud/photosharesdk/database/DBFuncCollector2;->folderReceiverOperator:Lcom/huawei/hicloud/photosharesdk/database/FolderReceiverOperator;

    .line 237
    goto :goto_0

    .line 239
    :pswitch_2
    iget-object v0, p0, Lcom/huawei/hicloud/photosharesdk/database/DBFuncCollector2;->myPhotoInfoOperator:Lcom/huawei/hicloud/photosharesdk/database/MyPhotoInfoOperator;

    .line 240
    goto :goto_0

    .line 242
    :pswitch_3
    iget-object v0, p0, Lcom/huawei/hicloud/photosharesdk/database/DBFuncCollector2;->receiverInfoOperator:Lcom/huawei/hicloud/photosharesdk/database/ReceiverInfoOperator;

    .line 243
    goto :goto_0

    .line 245
    :pswitch_4
    iget-object v0, p0, Lcom/huawei/hicloud/photosharesdk/database/DBFuncCollector2;->sharedFolderOperator:Lcom/huawei/hicloud/photosharesdk/database/SharedFolderOperator;

    .line 246
    goto :goto_0

    .line 248
    :pswitch_5
    iget-object v0, p0, Lcom/huawei/hicloud/photosharesdk/database/DBFuncCollector2;->taskInfoOperator:Lcom/huawei/hicloud/photosharesdk/database/TaskInfoOperator;

    goto :goto_0

    .line 231
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method private chooseOperator(Ljava/lang/Object;)Lcom/huawei/hicloud/photosharesdk/database/DBOperator;
    .locals 2
    .parameter "obj"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")",
            "Lcom/huawei/hicloud/photosharesdk/database/DBOperator",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 255
    const/4 v0, 0x0

    .line 256
    .local v0, db:Lcom/huawei/hicloud/photosharesdk/database/DBOperator;,"Lcom/huawei/hicloud/photosharesdk/database/DBOperator<*>;"
    instance-of v1, p1, Lcom/huawei/hicloud/photosharesdk/database/dao/FolderPhoto;

    if-eqz v1, :cond_1

    .line 257
    iget-object v0, p0, Lcom/huawei/hicloud/photosharesdk/database/DBFuncCollector2;->folderPhotoOperator:Lcom/huawei/hicloud/photosharesdk/database/FolderPhotoOperator;

    .line 269
    :cond_0
    :goto_0
    return-object v0

    .line 258
    :cond_1
    instance-of v1, p1, Lcom/huawei/hicloud/photosharesdk/database/dao/FolderReceiver;

    if-eqz v1, :cond_2

    .line 259
    iget-object v0, p0, Lcom/huawei/hicloud/photosharesdk/database/DBFuncCollector2;->folderReceiverOperator:Lcom/huawei/hicloud/photosharesdk/database/FolderReceiverOperator;

    goto :goto_0

    .line 260
    :cond_2
    instance-of v1, p1, Lcom/huawei/hicloud/photosharesdk/database/dao/MyPhotoInfo;

    if-eqz v1, :cond_3

    .line 261
    iget-object v0, p0, Lcom/huawei/hicloud/photosharesdk/database/DBFuncCollector2;->myPhotoInfoOperator:Lcom/huawei/hicloud/photosharesdk/database/MyPhotoInfoOperator;

    goto :goto_0

    .line 262
    :cond_3
    instance-of v1, p1, Lcom/huawei/hicloud/photosharesdk/database/dao/ReceiverInfo;

    if-eqz v1, :cond_4

    .line 263
    iget-object v0, p0, Lcom/huawei/hicloud/photosharesdk/database/DBFuncCollector2;->receiverInfoOperator:Lcom/huawei/hicloud/photosharesdk/database/ReceiverInfoOperator;

    goto :goto_0

    .line 264
    :cond_4
    instance-of v1, p1, Lcom/huawei/hicloud/photosharesdk/database/dao/SharedFolder;

    if-eqz v1, :cond_5

    .line 265
    iget-object v0, p0, Lcom/huawei/hicloud/photosharesdk/database/DBFuncCollector2;->sharedFolderOperator:Lcom/huawei/hicloud/photosharesdk/database/SharedFolderOperator;

    goto :goto_0

    .line 266
    :cond_5
    instance-of v1, p1, Lcom/huawei/hicloud/photosharesdk/database/dao/TaskInfo;

    if-eqz v1, :cond_0

    .line 267
    iget-object v0, p0, Lcom/huawei/hicloud/photosharesdk/database/DBFuncCollector2;->taskInfoOperator:Lcom/huawei/hicloud/photosharesdk/database/TaskInfoOperator;

    goto :goto_0
.end method


# virtual methods
.method public addMyPhotoInfo(Ljava/util/List;)Z
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/huawei/hicloud/photosharesdk/database/dao/MyPhotoInfo;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 206
    .local p1, myPhotoInfoes:Ljava/util/List;,"Ljava/util/List<Lcom/huawei/hicloud/photosharesdk/database/dao/MyPhotoInfo;>;"
    iget-object v0, p0, Lcom/huawei/hicloud/photosharesdk/database/DBFuncCollector2;->myPhotoInfoOperator:Lcom/huawei/hicloud/photosharesdk/database/MyPhotoInfoOperator;

    invoke-static {v0, p1}, Lcom/huawei/hicloud/photosharesdk/database/DBFuncImplementation;->addMyPhotoInfo(Lcom/huawei/hicloud/photosharesdk/database/MyPhotoInfoOperator;Ljava/util/List;)Z

    move-result v0

    return v0
.end method

.method public addNickName(Lcom/huawei/hicloud/photosharesdk/database/dao/ReceiverInfo;)Z
    .locals 2
    .parameter "receiverInfo"

    .prologue
    .line 196
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Haven\'t supported nickName yet"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public addPhoto(Ljava/util/List;)Z
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/huawei/hicloud/photosharesdk/database/dao/FolderPhoto;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 141
    .local p1, folderPhotos:Ljava/util/List;,"Ljava/util/List<Lcom/huawei/hicloud/photosharesdk/database/dao/FolderPhoto;>;"
    iget-object v0, p0, Lcom/huawei/hicloud/photosharesdk/database/DBFuncCollector2;->folderPhotoOperator:Lcom/huawei/hicloud/photosharesdk/database/FolderPhotoOperator;

    invoke-static {p1, v0}, Lcom/huawei/hicloud/photosharesdk/database/DBFuncImplementation;->addPhoto(Ljava/util/List;Lcom/huawei/hicloud/photosharesdk/database/FolderPhotoOperator;)Z

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
            "Lcom/huawei/hicloud/photosharesdk/database/dao/ReceiverInfo;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 181
    .local p1, receiverInfos:Ljava/util/List;,"Ljava/util/List<Lcom/huawei/hicloud/photosharesdk/database/dao/ReceiverInfo;>;"
    iget-object v0, p0, Lcom/huawei/hicloud/photosharesdk/database/DBFuncCollector2;->receiverInfoOperator:Lcom/huawei/hicloud/photosharesdk/database/ReceiverInfoOperator;

    invoke-static {p1, v0}, Lcom/huawei/hicloud/photosharesdk/database/DBFuncImplementation;->addReceiver(Ljava/util/List;Lcom/huawei/hicloud/photosharesdk/database/ReceiverInfoOperator;)Z

    move-result v0

    return v0
.end method

.method public addShareFolder(Lcom/huawei/hicloud/photosharesdk/database/dao/SharedFolder;)Z
    .locals 1
    .parameter "sharedFolder"

    .prologue
    .line 166
    iget-object v0, p0, Lcom/huawei/hicloud/photosharesdk/database/DBFuncCollector2;->sharedFolderOperator:Lcom/huawei/hicloud/photosharesdk/database/SharedFolderOperator;

    invoke-static {p1, v0}, Lcom/huawei/hicloud/photosharesdk/database/DBFuncImplementation;->addShareFolder(Lcom/huawei/hicloud/photosharesdk/database/dao/SharedFolder;Lcom/huawei/hicloud/photosharesdk/database/SharedFolderOperator;)Z

    move-result v0

    return v0
.end method

.method public addTaskInfo(Lcom/huawei/hicloud/photosharesdk/database/dao/TaskInfo;)Z
    .locals 1
    .parameter "taskInfo"

    .prologue
    .line 151
    iget-object v0, p0, Lcom/huawei/hicloud/photosharesdk/database/DBFuncCollector2;->taskInfoOperator:Lcom/huawei/hicloud/photosharesdk/database/TaskInfoOperator;

    invoke-static {p1, v0}, Lcom/huawei/hicloud/photosharesdk/database/DBFuncImplementation;->addTaskInfo(Lcom/huawei/hicloud/photosharesdk/database/dao/TaskInfo;Lcom/huawei/hicloud/photosharesdk/database/TaskInfoOperator;)Z

    move-result v0

    return v0
.end method

.method public bindReciver2Folder(Lcom/huawei/hicloud/photosharesdk/database/dao/FolderReceiver;)Z
    .locals 1
    .parameter "folderReceiver"

    .prologue
    .line 186
    iget-object v0, p0, Lcom/huawei/hicloud/photosharesdk/database/DBFuncCollector2;->folderReceiverOperator:Lcom/huawei/hicloud/photosharesdk/database/FolderReceiverOperator;

    invoke-static {p1, v0}, Lcom/huawei/hicloud/photosharesdk/database/DBFuncImplementation;->bindReciver2Folder(Lcom/huawei/hicloud/photosharesdk/database/dao/FolderReceiver;Lcom/huawei/hicloud/photosharesdk/database/FolderReceiverOperator;)Z

    move-result v0

    return v0
.end method

.method public closeFolderPhoto()V
    .locals 1

    .prologue
    .line 44
    invoke-static {}, Lcom/huawei/hicloud/photosharesdk/database/FolderPhotoOperator;->close()V

    .line 45
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/huawei/hicloud/photosharesdk/database/DBFuncCollector2;->folderPhotoOperator:Lcom/huawei/hicloud/photosharesdk/database/FolderPhotoOperator;

    .line 46
    return-void
.end method

.method public closeFolderReceiver()V
    .locals 1

    .prologue
    .line 58
    invoke-static {}, Lcom/huawei/hicloud/photosharesdk/database/FolderReceiverOperator;->close()V

    .line 59
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/huawei/hicloud/photosharesdk/database/DBFuncCollector2;->folderReceiverOperator:Lcom/huawei/hicloud/photosharesdk/database/FolderReceiverOperator;

    .line 60
    return-void
.end method

.method public closeMyPhotoInfoOperator()V
    .locals 1

    .prologue
    .line 72
    invoke-static {}, Lcom/huawei/hicloud/photosharesdk/database/MyPhotoInfoOperator;->close()V

    .line 73
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/huawei/hicloud/photosharesdk/database/DBFuncCollector2;->myPhotoInfoOperator:Lcom/huawei/hicloud/photosharesdk/database/MyPhotoInfoOperator;

    .line 74
    return-void
.end method

.method public closeReceiverInfoOperator()V
    .locals 1

    .prologue
    .line 86
    invoke-static {}, Lcom/huawei/hicloud/photosharesdk/database/ReceiverInfoOperator;->close()V

    .line 87
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/huawei/hicloud/photosharesdk/database/DBFuncCollector2;->receiverInfoOperator:Lcom/huawei/hicloud/photosharesdk/database/ReceiverInfoOperator;

    .line 88
    return-void
.end method

.method public closeSharedFolderOperator()V
    .locals 1

    .prologue
    .line 100
    invoke-static {}, Lcom/huawei/hicloud/photosharesdk/database/SharedFolderOperator;->close()V

    .line 101
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/huawei/hicloud/photosharesdk/database/DBFuncCollector2;->sharedFolderOperator:Lcom/huawei/hicloud/photosharesdk/database/SharedFolderOperator;

    .line 102
    return-void
.end method

.method public closeTaskInfoOperator()V
    .locals 1

    .prologue
    .line 114
    invoke-static {}, Lcom/huawei/hicloud/photosharesdk/database/TaskInfoOperator;->close()V

    .line 115
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/huawei/hicloud/photosharesdk/database/DBFuncCollector2;->taskInfoOperator:Lcom/huawei/hicloud/photosharesdk/database/TaskInfoOperator;

    .line 116
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
            "Lcom/huawei/hicloud/photosharesdk/database/dao/FolderPhoto;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 146
    .local p1, folderPhotos:Ljava/util/List;,"Ljava/util/List<Lcom/huawei/hicloud/photosharesdk/database/dao/FolderPhoto;>;"
    iget-object v0, p0, Lcom/huawei/hicloud/photosharesdk/database/DBFuncCollector2;->folderPhotoOperator:Lcom/huawei/hicloud/photosharesdk/database/FolderPhotoOperator;

    invoke-static {p1, v0}, Lcom/huawei/hicloud/photosharesdk/database/DBFuncImplementation;->delPhoto(Ljava/util/List;Lcom/huawei/hicloud/photosharesdk/database/FolderPhotoOperator;)Z

    move-result v0

    return v0
.end method

.method public delShareFolder(Lcom/huawei/hicloud/photosharesdk/database/dao/SharedFolder;)Z
    .locals 1
    .parameter "sharedFolder"

    .prologue
    .line 171
    iget-object v0, p0, Lcom/huawei/hicloud/photosharesdk/database/DBFuncCollector2;->sharedFolderOperator:Lcom/huawei/hicloud/photosharesdk/database/SharedFolderOperator;

    invoke-static {p1, v0}, Lcom/huawei/hicloud/photosharesdk/database/DBFuncImplementation;->delShareFolder(Lcom/huawei/hicloud/photosharesdk/database/dao/SharedFolder;Lcom/huawei/hicloud/photosharesdk/database/SharedFolderOperator;)Z

    move-result v0

    return v0
.end method

.method public delTaskInfo(Lcom/huawei/hicloud/photosharesdk/database/dao/TaskInfo;)Z
    .locals 1
    .parameter "taskInfo"

    .prologue
    .line 156
    iget-object v0, p0, Lcom/huawei/hicloud/photosharesdk/database/DBFuncCollector2;->taskInfoOperator:Lcom/huawei/hicloud/photosharesdk/database/TaskInfoOperator;

    invoke-static {p1, v0}, Lcom/huawei/hicloud/photosharesdk/database/DBFuncImplementation;->delTaskInfo(Lcom/huawei/hicloud/photosharesdk/database/dao/TaskInfo;Lcom/huawei/hicloud/photosharesdk/database/TaskInfoOperator;)Z

    move-result v0

    return v0
.end method

.method public delete(Lcom/huawei/hicloud/photosharesdk/database/DBConstants$TableName;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 2
    .parameter "tableName"
    .parameter "matchKey"
    .parameter "matchValue"

    .prologue
    .line 315
    invoke-direct {p0, p1}, Lcom/huawei/hicloud/photosharesdk/database/DBFuncCollector2;->chooseOperator(Lcom/huawei/hicloud/photosharesdk/database/DBConstants$TableName;)Lcom/huawei/hicloud/photosharesdk/database/DBOperator;

    move-result-object v0

    .line 316
    .local v0, db:Lcom/huawei/hicloud/photosharesdk/database/DBOperator;,"Lcom/huawei/hicloud/photosharesdk/database/DBOperator<*>;"
    if-eqz v0, :cond_0

    .line 318
    invoke-static {v0, p2, p3}, Lcom/huawei/hicloud/photosharesdk/database/DBFuncImplementation;->delete(Lcom/huawei/hicloud/photosharesdk/database/DBOperator;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    .line 322
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public deleteDatabase()V
    .locals 0

    .prologue
    .line 120
    invoke-static {}, Lcom/huawei/hicloud/photosharesdk/database/DBOperator;->deleteDatabase()V

    .line 121
    return-void
.end method

.method public deleteTaskInfo(Ljava/lang/String;)Z
    .locals 1
    .parameter "photoPath_REMOTE"

    .prologue
    .line 226
    iget-object v0, p0, Lcom/huawei/hicloud/photosharesdk/database/DBFuncCollector2;->taskInfoOperator:Lcom/huawei/hicloud/photosharesdk/database/TaskInfoOperator;

    invoke-static {v0, p1}, Lcom/huawei/hicloud/photosharesdk/database/DBFuncImplementation;->deleteTaskInfo(Lcom/huawei/hicloud/photosharesdk/database/TaskInfoOperator;Ljava/lang/String;)Z

    move-result v0

    return v0
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
    .line 136
    iget-object v0, p0, Lcom/huawei/hicloud/photosharesdk/database/DBFuncCollector2;->folderReceiverOperator:Lcom/huawei/hicloud/photosharesdk/database/FolderReceiverOperator;

    invoke-static {p1, v0}, Lcom/huawei/hicloud/photosharesdk/database/DBFuncImplementation;->getFriendsInfo(Ljava/lang/String;Lcom/huawei/hicloud/photosharesdk/database/FolderReceiverOperator;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getMyPhotoInfo(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;
    .locals 1
    .parameter "order"
    .parameter "limit"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/huawei/hicloud/photosharesdk/database/dao/MyPhotoInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 211
    iget-object v0, p0, Lcom/huawei/hicloud/photosharesdk/database/DBFuncCollector2;->myPhotoInfoOperator:Lcom/huawei/hicloud/photosharesdk/database/MyPhotoInfoOperator;

    invoke-static {v0, p1, p2}, Lcom/huawei/hicloud/photosharesdk/database/DBFuncImplementation;->getMyPhotoInfo(Lcom/huawei/hicloud/photosharesdk/database/MyPhotoInfoOperator;Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

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
            "Lcom/huawei/hicloud/photosharesdk/api/vo/SharePhoto;",
            ">;"
        }
    .end annotation

    .prologue
    .line 131
    iget-object v0, p0, Lcom/huawei/hicloud/photosharesdk/database/DBFuncCollector2;->folderPhotoOperator:Lcom/huawei/hicloud/photosharesdk/database/FolderPhotoOperator;

    invoke-static {p1, v0, p2}, Lcom/huawei/hicloud/photosharesdk/database/DBFuncImplementation;->getPhotoInfo(Ljava/lang/String;Lcom/huawei/hicloud/photosharesdk/database/FolderPhotoOperator;Ljava/lang/String;)Ljava/util/List;

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
            "Lcom/huawei/hicloud/photosharesdk/database/dao/ReceiverInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 216
    iget-object v0, p0, Lcom/huawei/hicloud/photosharesdk/database/DBFuncCollector2;->receiverInfoOperator:Lcom/huawei/hicloud/photosharesdk/database/ReceiverInfoOperator;

    invoke-static {v0}, Lcom/huawei/hicloud/photosharesdk/database/DBFuncImplementation;->getReceiverInfo(Lcom/huawei/hicloud/photosharesdk/database/ReceiverInfoOperator;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getShareFolderInfo(ILjava/lang/String;Landroid/content/Context;)Ljava/util/List;
    .locals 2
    .parameter "folderType"
    .parameter "sharePath"
    .parameter "context"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/huawei/hicloud/photosharesdk/api/vo/ShareFolder;",
            ">;"
        }
    .end annotation

    .prologue
    .line 125
    iget-object v0, p0, Lcom/huawei/hicloud/photosharesdk/database/DBFuncCollector2;->sharedFolderOperator:Lcom/huawei/hicloud/photosharesdk/database/SharedFolderOperator;

    .line 126
    iget-object v1, p0, Lcom/huawei/hicloud/photosharesdk/database/DBFuncCollector2;->folderPhotoOperator:Lcom/huawei/hicloud/photosharesdk/database/FolderPhotoOperator;

    .line 125
    invoke-static {p1, p2, v0, v1, p3}, Lcom/huawei/hicloud/photosharesdk/database/DBFuncImplementation;->getShareFolderInfo(ILjava/lang/String;Lcom/huawei/hicloud/photosharesdk/database/SharedFolderOperator;Lcom/huawei/hicloud/photosharesdk/database/FolderPhotoOperator;Landroid/content/Context;)Ljava/util/List;

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
            "Lcom/huawei/hicloud/photosharesdk/database/dao/TaskInfo;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 201
    iget-object v0, p0, Lcom/huawei/hicloud/photosharesdk/database/DBFuncCollector2;->taskInfoOperator:Lcom/huawei/hicloud/photosharesdk/database/TaskInfoOperator;

    invoke-static {v0}, Lcom/huawei/hicloud/photosharesdk/database/DBFuncImplementation;->getTaskInfo(Lcom/huawei/hicloud/photosharesdk/database/TaskInfoOperator;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public openFolderPhoto(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 36
    iget-object v0, p0, Lcom/huawei/hicloud/photosharesdk/database/DBFuncCollector2;->folderPhotoOperator:Lcom/huawei/hicloud/photosharesdk/database/FolderPhotoOperator;

    if-nez v0, :cond_0

    .line 37
    new-instance v0, Lcom/huawei/hicloud/photosharesdk/database/FolderPhotoOperator;

    invoke-direct {v0, p1}, Lcom/huawei/hicloud/photosharesdk/database/FolderPhotoOperator;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/huawei/hicloud/photosharesdk/database/DBFuncCollector2;->folderPhotoOperator:Lcom/huawei/hicloud/photosharesdk/database/FolderPhotoOperator;

    .line 39
    :cond_0
    invoke-static {}, Lcom/huawei/hicloud/photosharesdk/database/FolderPhotoOperator;->open()V

    .line 40
    return-void
.end method

.method public openFolderReceiver(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 50
    iget-object v0, p0, Lcom/huawei/hicloud/photosharesdk/database/DBFuncCollector2;->folderReceiverOperator:Lcom/huawei/hicloud/photosharesdk/database/FolderReceiverOperator;

    if-nez v0, :cond_0

    .line 51
    new-instance v0, Lcom/huawei/hicloud/photosharesdk/database/FolderReceiverOperator;

    invoke-direct {v0, p1}, Lcom/huawei/hicloud/photosharesdk/database/FolderReceiverOperator;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/huawei/hicloud/photosharesdk/database/DBFuncCollector2;->folderReceiverOperator:Lcom/huawei/hicloud/photosharesdk/database/FolderReceiverOperator;

    .line 53
    :cond_0
    invoke-static {}, Lcom/huawei/hicloud/photosharesdk/database/FolderReceiverOperator;->open()V

    .line 54
    return-void
.end method

.method public openMyPhotoInfoOperator(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 64
    iget-object v0, p0, Lcom/huawei/hicloud/photosharesdk/database/DBFuncCollector2;->myPhotoInfoOperator:Lcom/huawei/hicloud/photosharesdk/database/MyPhotoInfoOperator;

    if-nez v0, :cond_0

    .line 65
    new-instance v0, Lcom/huawei/hicloud/photosharesdk/database/MyPhotoInfoOperator;

    invoke-direct {v0, p1}, Lcom/huawei/hicloud/photosharesdk/database/MyPhotoInfoOperator;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/huawei/hicloud/photosharesdk/database/DBFuncCollector2;->myPhotoInfoOperator:Lcom/huawei/hicloud/photosharesdk/database/MyPhotoInfoOperator;

    .line 67
    :cond_0
    invoke-static {}, Lcom/huawei/hicloud/photosharesdk/database/MyPhotoInfoOperator;->open()V

    .line 68
    return-void
.end method

.method public openReceiverInfoOperator(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 78
    iget-object v0, p0, Lcom/huawei/hicloud/photosharesdk/database/DBFuncCollector2;->receiverInfoOperator:Lcom/huawei/hicloud/photosharesdk/database/ReceiverInfoOperator;

    if-nez v0, :cond_0

    .line 79
    new-instance v0, Lcom/huawei/hicloud/photosharesdk/database/ReceiverInfoOperator;

    invoke-direct {v0, p1}, Lcom/huawei/hicloud/photosharesdk/database/ReceiverInfoOperator;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/huawei/hicloud/photosharesdk/database/DBFuncCollector2;->receiverInfoOperator:Lcom/huawei/hicloud/photosharesdk/database/ReceiverInfoOperator;

    .line 81
    :cond_0
    invoke-static {}, Lcom/huawei/hicloud/photosharesdk/database/ReceiverInfoOperator;->open()V

    .line 82
    return-void
.end method

.method public openSharedFolderOperator(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 92
    iget-object v0, p0, Lcom/huawei/hicloud/photosharesdk/database/DBFuncCollector2;->sharedFolderOperator:Lcom/huawei/hicloud/photosharesdk/database/SharedFolderOperator;

    if-nez v0, :cond_0

    .line 93
    new-instance v0, Lcom/huawei/hicloud/photosharesdk/database/SharedFolderOperator;

    invoke-direct {v0, p1}, Lcom/huawei/hicloud/photosharesdk/database/SharedFolderOperator;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/huawei/hicloud/photosharesdk/database/DBFuncCollector2;->sharedFolderOperator:Lcom/huawei/hicloud/photosharesdk/database/SharedFolderOperator;

    .line 95
    :cond_0
    invoke-static {}, Lcom/huawei/hicloud/photosharesdk/database/SharedFolderOperator;->open()V

    .line 96
    return-void
.end method

.method public openTaskInfoOperator(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 106
    iget-object v0, p0, Lcom/huawei/hicloud/photosharesdk/database/DBFuncCollector2;->taskInfoOperator:Lcom/huawei/hicloud/photosharesdk/database/TaskInfoOperator;

    if-nez v0, :cond_0

    .line 107
    new-instance v0, Lcom/huawei/hicloud/photosharesdk/database/TaskInfoOperator;

    invoke-direct {v0, p1}, Lcom/huawei/hicloud/photosharesdk/database/TaskInfoOperator;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/huawei/hicloud/photosharesdk/database/DBFuncCollector2;->taskInfoOperator:Lcom/huawei/hicloud/photosharesdk/database/TaskInfoOperator;

    .line 109
    :cond_0
    invoke-static {}, Lcom/huawei/hicloud/photosharesdk/database/TaskInfoOperator;->open()V

    .line 110
    return-void
.end method

.method public varargs query(Lcom/huawei/hicloud/photosharesdk/database/DBConstants$TableName;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Ljava/util/List;
    .locals 3
    .parameter "tableName"
    .parameter "matchKey"
    .parameter "matchValue"
    .parameter "columnNames"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/huawei/hicloud/photosharesdk/database/DBConstants$TableName;",
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
    .line 302
    invoke-direct {p0, p1}, Lcom/huawei/hicloud/photosharesdk/database/DBFuncCollector2;->chooseOperator(Lcom/huawei/hicloud/photosharesdk/database/DBConstants$TableName;)Lcom/huawei/hicloud/photosharesdk/database/DBOperator;

    move-result-object v0

    .line 303
    .local v0, db:Lcom/huawei/hicloud/photosharesdk/database/DBOperator;,"Lcom/huawei/hicloud/photosharesdk/database/DBOperator<*>;"
    if-eqz v0, :cond_0

    .line 305
    invoke-static {v0, p2, p3, p4}, Lcom/huawei/hicloud/photosharesdk/database/DBFuncImplementation;->query(Lcom/huawei/hicloud/photosharesdk/database/DBOperator;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    .line 309
    :goto_0
    return-object v1

    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    goto :goto_0
.end method

.method public unbindReciver2Folder(Lcom/huawei/hicloud/photosharesdk/database/dao/FolderReceiver;)Z
    .locals 1
    .parameter "folderReceiver"

    .prologue
    .line 191
    iget-object v0, p0, Lcom/huawei/hicloud/photosharesdk/database/DBFuncCollector2;->folderReceiverOperator:Lcom/huawei/hicloud/photosharesdk/database/FolderReceiverOperator;

    invoke-static {p1, v0}, Lcom/huawei/hicloud/photosharesdk/database/DBFuncImplementation;->unbindReciver2Folder(Lcom/huawei/hicloud/photosharesdk/database/dao/FolderReceiver;Lcom/huawei/hicloud/photosharesdk/database/FolderReceiverOperator;)Z

    move-result v0

    return v0
.end method

.method public varargs update(Lcom/huawei/hicloud/photosharesdk/database/DBConstants$TableName;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Z
    .locals 2
    .parameter "tableName"
    .parameter "matchKey"
    .parameter "matchValue"
    .parameter "args"

    .prologue
    .line 274
    invoke-direct {p0, p1}, Lcom/huawei/hicloud/photosharesdk/database/DBFuncCollector2;->chooseOperator(Lcom/huawei/hicloud/photosharesdk/database/DBConstants$TableName;)Lcom/huawei/hicloud/photosharesdk/database/DBOperator;

    move-result-object v0

    .line 275
    .local v0, db:Lcom/huawei/hicloud/photosharesdk/database/DBOperator;,"Lcom/huawei/hicloud/photosharesdk/database/DBOperator<*>;"
    if-eqz v0, :cond_0

    .line 277
    invoke-static {v0, p2, p3, p4}, Lcom/huawei/hicloud/photosharesdk/database/DBFuncImplementation;->update(Lcom/huawei/hicloud/photosharesdk/database/DBOperator;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v1

    .line 281
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public updateFolderReceiver(Lcom/huawei/hicloud/photosharesdk/database/dao/FolderReceiver;)Z
    .locals 1
    .parameter "folderReceiver"

    .prologue
    .line 221
    iget-object v0, p0, Lcom/huawei/hicloud/photosharesdk/database/DBFuncCollector2;->folderReceiverOperator:Lcom/huawei/hicloud/photosharesdk/database/FolderReceiverOperator;

    invoke-static {v0, p1}, Lcom/huawei/hicloud/photosharesdk/database/DBFuncImplementation;->updateFolderReceiver(Lcom/huawei/hicloud/photosharesdk/database/FolderReceiverOperator;Lcom/huawei/hicloud/photosharesdk/database/dao/FolderReceiver;)Z

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
    .line 288
    .local p1, obj:Ljava/lang/Object;,"TT;"
    invoke-direct {p0, p1}, Lcom/huawei/hicloud/photosharesdk/database/DBFuncCollector2;->chooseOperator(Ljava/lang/Object;)Lcom/huawei/hicloud/photosharesdk/database/DBOperator;

    move-result-object v0

    .line 289
    .local v0, db:Lcom/huawei/hicloud/photosharesdk/database/DBOperator;,"Lcom/huawei/hicloud/photosharesdk/database/DBOperator<TT;>;"
    if-eqz v0, :cond_0

    .line 291
    invoke-static {v0, p1, p2, p3}, Lcom/huawei/hicloud/photosharesdk/database/DBFuncImplementation;->updateOrInsert(Lcom/huawei/hicloud/photosharesdk/database/DBOperator;Ljava/lang/Object;[Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 295
    :goto_0
    return-object v1

    :cond_0
    const-string v1, ""

    goto :goto_0
.end method

.method public updateShareFolder(Lcom/huawei/hicloud/photosharesdk/database/dao/SharedFolder;)Z
    .locals 1
    .parameter "sharedFolder"

    .prologue
    .line 176
    iget-object v0, p0, Lcom/huawei/hicloud/photosharesdk/database/DBFuncCollector2;->sharedFolderOperator:Lcom/huawei/hicloud/photosharesdk/database/SharedFolderOperator;

    invoke-static {p1, v0}, Lcom/huawei/hicloud/photosharesdk/database/DBFuncImplementation;->updateShareFolder(Lcom/huawei/hicloud/photosharesdk/database/dao/SharedFolder;Lcom/huawei/hicloud/photosharesdk/database/SharedFolderOperator;)Z

    move-result v0

    return v0
.end method

.method public updateTaskInfo(Lcom/huawei/hicloud/photosharesdk/database/dao/TaskInfo;)Z
    .locals 1
    .parameter "taskInfo"

    .prologue
    .line 161
    iget-object v0, p0, Lcom/huawei/hicloud/photosharesdk/database/DBFuncCollector2;->taskInfoOperator:Lcom/huawei/hicloud/photosharesdk/database/TaskInfoOperator;

    invoke-static {p1, v0}, Lcom/huawei/hicloud/photosharesdk/database/DBFuncImplementation;->updateTaskInfo(Lcom/huawei/hicloud/photosharesdk/database/dao/TaskInfo;Lcom/huawei/hicloud/photosharesdk/database/TaskInfoOperator;)Z

    move-result v0

    return v0
.end method
