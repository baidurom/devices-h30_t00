.class public final Lcom/huawei/hicloud/photosharesdk/database/DBFuncCollector;
.super Ljava/lang/Object;
.source "DBFuncCollector.java"

# interfaces
.implements Lcom/huawei/hicloud/photosharesdk/database/DBFuncInterface;


# static fields
.field private static synthetic $SWITCH_TABLE$com$huawei$hicloud$photosharesdk$database$DBConstants$TableName:[I


# instance fields
.field mContext:Landroid/content/Context;


# direct methods
.method static synthetic $SWITCH_TABLE$com$huawei$hicloud$photosharesdk$database$DBConstants$TableName()[I
    .locals 3

    .prologue
    .line 25
    sget-object v0, Lcom/huawei/hicloud/photosharesdk/database/DBFuncCollector;->$SWITCH_TABLE$com$huawei$hicloud$photosharesdk$database$DBConstants$TableName:[I

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
    sput-object v0, Lcom/huawei/hicloud/photosharesdk/database/DBFuncCollector;->$SWITCH_TABLE$com$huawei$hicloud$photosharesdk$database$DBConstants$TableName:[I

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

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter "context"

    .prologue
    .line 29
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 30
    iput-object p1, p0, Lcom/huawei/hicloud/photosharesdk/database/DBFuncCollector;->mContext:Landroid/content/Context;

    .line 31
    return-void
.end method

.method private chooseOperator(Lcom/huawei/hicloud/photosharesdk/database/DBConstants$TableName;Landroid/content/Context;)Lcom/huawei/hicloud/photosharesdk/database/DBOperator;
    .locals 3
    .parameter "talbeName"
    .parameter "context"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/huawei/hicloud/photosharesdk/database/DBConstants$TableName;",
            "Landroid/content/Context;",
            ")",
            "Lcom/huawei/hicloud/photosharesdk/database/DBOperator",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 313
    const/4 v0, 0x0

    .line 314
    .local v0, db:Lcom/huawei/hicloud/photosharesdk/database/DBOperator;,"Lcom/huawei/hicloud/photosharesdk/database/DBOperator<*>;"
    invoke-static {}, Lcom/huawei/hicloud/photosharesdk/database/DBFuncCollector;->$SWITCH_TABLE$com$huawei$hicloud$photosharesdk$database$DBConstants$TableName()[I

    move-result-object v1

    invoke-virtual {p1}, Lcom/huawei/hicloud/photosharesdk/database/DBConstants$TableName;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 334
    :goto_0
    return-object v0

    .line 316
    :pswitch_0
    new-instance v0, Lcom/huawei/hicloud/photosharesdk/database/FolderPhotoOperator;

    .end local v0           #db:Lcom/huawei/hicloud/photosharesdk/database/DBOperator;,"Lcom/huawei/hicloud/photosharesdk/database/DBOperator<*>;"
    invoke-direct {v0, p2}, Lcom/huawei/hicloud/photosharesdk/database/FolderPhotoOperator;-><init>(Landroid/content/Context;)V

    .line 317
    .restart local v0       #db:Lcom/huawei/hicloud/photosharesdk/database/DBOperator;,"Lcom/huawei/hicloud/photosharesdk/database/DBOperator<*>;"
    goto :goto_0

    .line 319
    :pswitch_1
    new-instance v0, Lcom/huawei/hicloud/photosharesdk/database/FolderReceiverOperator;

    .end local v0           #db:Lcom/huawei/hicloud/photosharesdk/database/DBOperator;,"Lcom/huawei/hicloud/photosharesdk/database/DBOperator<*>;"
    invoke-direct {v0, p2}, Lcom/huawei/hicloud/photosharesdk/database/FolderReceiverOperator;-><init>(Landroid/content/Context;)V

    .line 320
    .restart local v0       #db:Lcom/huawei/hicloud/photosharesdk/database/DBOperator;,"Lcom/huawei/hicloud/photosharesdk/database/DBOperator<*>;"
    goto :goto_0

    .line 322
    :pswitch_2
    new-instance v0, Lcom/huawei/hicloud/photosharesdk/database/MyPhotoInfoOperator;

    .end local v0           #db:Lcom/huawei/hicloud/photosharesdk/database/DBOperator;,"Lcom/huawei/hicloud/photosharesdk/database/DBOperator<*>;"
    invoke-direct {v0, p2}, Lcom/huawei/hicloud/photosharesdk/database/MyPhotoInfoOperator;-><init>(Landroid/content/Context;)V

    .line 323
    .restart local v0       #db:Lcom/huawei/hicloud/photosharesdk/database/DBOperator;,"Lcom/huawei/hicloud/photosharesdk/database/DBOperator<*>;"
    goto :goto_0

    .line 325
    :pswitch_3
    new-instance v0, Lcom/huawei/hicloud/photosharesdk/database/ReceiverInfoOperator;

    .end local v0           #db:Lcom/huawei/hicloud/photosharesdk/database/DBOperator;,"Lcom/huawei/hicloud/photosharesdk/database/DBOperator<*>;"
    invoke-direct {v0, p2}, Lcom/huawei/hicloud/photosharesdk/database/ReceiverInfoOperator;-><init>(Landroid/content/Context;)V

    .line 326
    .restart local v0       #db:Lcom/huawei/hicloud/photosharesdk/database/DBOperator;,"Lcom/huawei/hicloud/photosharesdk/database/DBOperator<*>;"
    goto :goto_0

    .line 328
    :pswitch_4
    new-instance v0, Lcom/huawei/hicloud/photosharesdk/database/SharedFolderOperator;

    .end local v0           #db:Lcom/huawei/hicloud/photosharesdk/database/DBOperator;,"Lcom/huawei/hicloud/photosharesdk/database/DBOperator<*>;"
    invoke-direct {v0, p2}, Lcom/huawei/hicloud/photosharesdk/database/SharedFolderOperator;-><init>(Landroid/content/Context;)V

    .line 329
    .restart local v0       #db:Lcom/huawei/hicloud/photosharesdk/database/DBOperator;,"Lcom/huawei/hicloud/photosharesdk/database/DBOperator<*>;"
    goto :goto_0

    .line 331
    :pswitch_5
    new-instance v0, Lcom/huawei/hicloud/photosharesdk/database/TaskInfoOperator;

    .end local v0           #db:Lcom/huawei/hicloud/photosharesdk/database/DBOperator;,"Lcom/huawei/hicloud/photosharesdk/database/DBOperator<*>;"
    invoke-direct {v0, p2}, Lcom/huawei/hicloud/photosharesdk/database/TaskInfoOperator;-><init>(Landroid/content/Context;)V

    .restart local v0       #db:Lcom/huawei/hicloud/photosharesdk/database/DBOperator;,"Lcom/huawei/hicloud/photosharesdk/database/DBOperator<*>;"
    goto :goto_0

    .line 314
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

.method private chooseOperator(Ljava/lang/Object;Landroid/content/Context;)Lcom/huawei/hicloud/photosharesdk/database/DBOperator;
    .locals 2
    .parameter "obj"
    .parameter "context"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Landroid/content/Context;",
            ")",
            "Lcom/huawei/hicloud/photosharesdk/database/DBOperator",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 338
    const/4 v0, 0x0

    .line 339
    .local v0, db:Lcom/huawei/hicloud/photosharesdk/database/DBOperator;,"Lcom/huawei/hicloud/photosharesdk/database/DBOperator<*>;"
    instance-of v1, p1, Lcom/huawei/hicloud/photosharesdk/database/dao/FolderPhoto;

    if-eqz v1, :cond_1

    .line 340
    new-instance v0, Lcom/huawei/hicloud/photosharesdk/database/FolderPhotoOperator;

    .end local v0           #db:Lcom/huawei/hicloud/photosharesdk/database/DBOperator;,"Lcom/huawei/hicloud/photosharesdk/database/DBOperator<*>;"
    invoke-direct {v0, p2}, Lcom/huawei/hicloud/photosharesdk/database/FolderPhotoOperator;-><init>(Landroid/content/Context;)V

    .line 352
    .restart local v0       #db:Lcom/huawei/hicloud/photosharesdk/database/DBOperator;,"Lcom/huawei/hicloud/photosharesdk/database/DBOperator<*>;"
    :cond_0
    :goto_0
    return-object v0

    .line 341
    :cond_1
    instance-of v1, p1, Lcom/huawei/hicloud/photosharesdk/database/dao/FolderReceiver;

    if-eqz v1, :cond_2

    .line 342
    new-instance v0, Lcom/huawei/hicloud/photosharesdk/database/FolderReceiverOperator;

    .end local v0           #db:Lcom/huawei/hicloud/photosharesdk/database/DBOperator;,"Lcom/huawei/hicloud/photosharesdk/database/DBOperator<*>;"
    invoke-direct {v0, p2}, Lcom/huawei/hicloud/photosharesdk/database/FolderReceiverOperator;-><init>(Landroid/content/Context;)V

    .restart local v0       #db:Lcom/huawei/hicloud/photosharesdk/database/DBOperator;,"Lcom/huawei/hicloud/photosharesdk/database/DBOperator<*>;"
    goto :goto_0

    .line 343
    :cond_2
    instance-of v1, p1, Lcom/huawei/hicloud/photosharesdk/database/dao/MyPhotoInfo;

    if-eqz v1, :cond_3

    .line 344
    new-instance v0, Lcom/huawei/hicloud/photosharesdk/database/MyPhotoInfoOperator;

    .end local v0           #db:Lcom/huawei/hicloud/photosharesdk/database/DBOperator;,"Lcom/huawei/hicloud/photosharesdk/database/DBOperator<*>;"
    invoke-direct {v0, p2}, Lcom/huawei/hicloud/photosharesdk/database/MyPhotoInfoOperator;-><init>(Landroid/content/Context;)V

    .restart local v0       #db:Lcom/huawei/hicloud/photosharesdk/database/DBOperator;,"Lcom/huawei/hicloud/photosharesdk/database/DBOperator<*>;"
    goto :goto_0

    .line 345
    :cond_3
    instance-of v1, p1, Lcom/huawei/hicloud/photosharesdk/database/dao/ReceiverInfo;

    if-eqz v1, :cond_4

    .line 346
    new-instance v0, Lcom/huawei/hicloud/photosharesdk/database/ReceiverInfoOperator;

    .end local v0           #db:Lcom/huawei/hicloud/photosharesdk/database/DBOperator;,"Lcom/huawei/hicloud/photosharesdk/database/DBOperator<*>;"
    invoke-direct {v0, p2}, Lcom/huawei/hicloud/photosharesdk/database/ReceiverInfoOperator;-><init>(Landroid/content/Context;)V

    .restart local v0       #db:Lcom/huawei/hicloud/photosharesdk/database/DBOperator;,"Lcom/huawei/hicloud/photosharesdk/database/DBOperator<*>;"
    goto :goto_0

    .line 347
    :cond_4
    instance-of v1, p1, Lcom/huawei/hicloud/photosharesdk/database/dao/SharedFolder;

    if-eqz v1, :cond_5

    .line 348
    new-instance v0, Lcom/huawei/hicloud/photosharesdk/database/SharedFolderOperator;

    .end local v0           #db:Lcom/huawei/hicloud/photosharesdk/database/DBOperator;,"Lcom/huawei/hicloud/photosharesdk/database/DBOperator<*>;"
    invoke-direct {v0, p2}, Lcom/huawei/hicloud/photosharesdk/database/SharedFolderOperator;-><init>(Landroid/content/Context;)V

    .restart local v0       #db:Lcom/huawei/hicloud/photosharesdk/database/DBOperator;,"Lcom/huawei/hicloud/photosharesdk/database/DBOperator<*>;"
    goto :goto_0

    .line 349
    :cond_5
    instance-of v1, p1, Lcom/huawei/hicloud/photosharesdk/database/dao/TaskInfo;

    if-eqz v1, :cond_0

    .line 350
    new-instance v0, Lcom/huawei/hicloud/photosharesdk/database/TaskInfoOperator;

    .end local v0           #db:Lcom/huawei/hicloud/photosharesdk/database/DBOperator;,"Lcom/huawei/hicloud/photosharesdk/database/DBOperator<*>;"
    invoke-direct {v0, p2}, Lcom/huawei/hicloud/photosharesdk/database/TaskInfoOperator;-><init>(Landroid/content/Context;)V

    .restart local v0       #db:Lcom/huawei/hicloud/photosharesdk/database/DBOperator;,"Lcom/huawei/hicloud/photosharesdk/database/DBOperator<*>;"
    goto :goto_0
.end method


# virtual methods
.method public addMyPhotoInfo(Ljava/util/List;)Z
    .locals 3
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
    .line 248
    .local p1, myPhotoInfoes:Ljava/util/List;,"Ljava/util/List<Lcom/huawei/hicloud/photosharesdk/database/dao/MyPhotoInfo;>;"
    new-instance v0, Lcom/huawei/hicloud/photosharesdk/database/MyPhotoInfoOperator;

    iget-object v2, p0, Lcom/huawei/hicloud/photosharesdk/database/DBFuncCollector;->mContext:Landroid/content/Context;

    invoke-direct {v0, v2}, Lcom/huawei/hicloud/photosharesdk/database/MyPhotoInfoOperator;-><init>(Landroid/content/Context;)V

    .line 249
    .local v0, myPhotoInfoOperator:Lcom/huawei/hicloud/photosharesdk/database/MyPhotoInfoOperator;
    invoke-static {}, Lcom/huawei/hicloud/photosharesdk/database/MyPhotoInfoOperator;->open()V

    .line 252
    :try_start_0
    invoke-static {v0, p1}, Lcom/huawei/hicloud/photosharesdk/database/DBFuncImplementation;->addMyPhotoInfo(Lcom/huawei/hicloud/photosharesdk/database/MyPhotoInfoOperator;Ljava/util/List;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    .line 254
    .local v1, result:Z
    invoke-static {}, Lcom/huawei/hicloud/photosharesdk/database/MyPhotoInfoOperator;->close()V

    .line 256
    return v1

    .line 253
    .end local v1           #result:Z
    :catchall_0
    move-exception v2

    .line 254
    invoke-static {}, Lcom/huawei/hicloud/photosharesdk/database/MyPhotoInfoOperator;->close()V

    .line 255
    throw v2
.end method

.method public addNickName(Lcom/huawei/hicloud/photosharesdk/database/dao/ReceiverInfo;)Z
    .locals 2
    .parameter "receiverInfo"

    .prologue
    .line 230
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Haven\'t supported nickName yet"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public addPhoto(Ljava/util/List;)Z
    .locals 3
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
    .line 84
    .local p1, folderPhotos:Ljava/util/List;,"Ljava/util/List<Lcom/huawei/hicloud/photosharesdk/database/dao/FolderPhoto;>;"
    new-instance v0, Lcom/huawei/hicloud/photosharesdk/database/FolderPhotoOperator;

    iget-object v2, p0, Lcom/huawei/hicloud/photosharesdk/database/DBFuncCollector;->mContext:Landroid/content/Context;

    invoke-direct {v0, v2}, Lcom/huawei/hicloud/photosharesdk/database/FolderPhotoOperator;-><init>(Landroid/content/Context;)V

    .line 85
    .local v0, folderPhotoOperator:Lcom/huawei/hicloud/photosharesdk/database/FolderPhotoOperator;
    invoke-static {}, Lcom/huawei/hicloud/photosharesdk/database/FolderPhotoOperator;->open()V

    .line 88
    :try_start_0
    invoke-static {p1, v0}, Lcom/huawei/hicloud/photosharesdk/database/DBFuncImplementation;->addPhoto(Ljava/util/List;Lcom/huawei/hicloud/photosharesdk/database/FolderPhotoOperator;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    .line 90
    .local v1, result:Z
    invoke-static {}, Lcom/huawei/hicloud/photosharesdk/database/FolderPhotoOperator;->close()V

    .line 92
    return v1

    .line 89
    .end local v1           #result:Z
    :catchall_0
    move-exception v2

    .line 90
    invoke-static {}, Lcom/huawei/hicloud/photosharesdk/database/FolderPhotoOperator;->close()V

    .line 91
    throw v2
.end method

.method public addReceiver(Ljava/util/List;)Z
    .locals 3
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
    .line 189
    .local p1, folderReceivers:Ljava/util/List;,"Ljava/util/List<Lcom/huawei/hicloud/photosharesdk/database/dao/ReceiverInfo;>;"
    new-instance v0, Lcom/huawei/hicloud/photosharesdk/database/ReceiverInfoOperator;

    iget-object v2, p0, Lcom/huawei/hicloud/photosharesdk/database/DBFuncCollector;->mContext:Landroid/content/Context;

    invoke-direct {v0, v2}, Lcom/huawei/hicloud/photosharesdk/database/ReceiverInfoOperator;-><init>(Landroid/content/Context;)V

    .line 190
    .local v0, receiverInfoOperator:Lcom/huawei/hicloud/photosharesdk/database/ReceiverInfoOperator;
    invoke-static {}, Lcom/huawei/hicloud/photosharesdk/database/ReceiverInfoOperator;->open()V

    .line 193
    :try_start_0
    invoke-static {p1, v0}, Lcom/huawei/hicloud/photosharesdk/database/DBFuncImplementation;->addReceiver(Ljava/util/List;Lcom/huawei/hicloud/photosharesdk/database/ReceiverInfoOperator;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    .line 195
    .local v1, result:Z
    invoke-static {}, Lcom/huawei/hicloud/photosharesdk/database/ReceiverInfoOperator;->close()V

    .line 197
    return v1

    .line 194
    .end local v1           #result:Z
    :catchall_0
    move-exception v2

    .line 195
    invoke-static {}, Lcom/huawei/hicloud/photosharesdk/database/ReceiverInfoOperator;->close()V

    .line 196
    throw v2
.end method

.method public addShareFolder(Lcom/huawei/hicloud/photosharesdk/database/dao/SharedFolder;)Z
    .locals 3
    .parameter "sharedFolder"

    .prologue
    .line 150
    new-instance v1, Lcom/huawei/hicloud/photosharesdk/database/SharedFolderOperator;

    iget-object v2, p0, Lcom/huawei/hicloud/photosharesdk/database/DBFuncCollector;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/huawei/hicloud/photosharesdk/database/SharedFolderOperator;-><init>(Landroid/content/Context;)V

    .line 151
    .local v1, sharedFolderOperator:Lcom/huawei/hicloud/photosharesdk/database/SharedFolderOperator;
    invoke-static {}, Lcom/huawei/hicloud/photosharesdk/database/SharedFolderOperator;->open()V

    .line 154
    :try_start_0
    invoke-static {p1, v1}, Lcom/huawei/hicloud/photosharesdk/database/DBFuncImplementation;->addShareFolder(Lcom/huawei/hicloud/photosharesdk/database/dao/SharedFolder;Lcom/huawei/hicloud/photosharesdk/database/SharedFolderOperator;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    .line 156
    .local v0, result:Z
    invoke-static {}, Lcom/huawei/hicloud/photosharesdk/database/SharedFolderOperator;->close()V

    .line 158
    return v0

    .line 155
    .end local v0           #result:Z
    :catchall_0
    move-exception v2

    .line 156
    invoke-static {}, Lcom/huawei/hicloud/photosharesdk/database/SharedFolderOperator;->close()V

    .line 157
    throw v2
.end method

.method public addTaskInfo(Lcom/huawei/hicloud/photosharesdk/database/dao/TaskInfo;)Z
    .locals 3
    .parameter "taskInfo"

    .prologue
    .line 110
    new-instance v1, Lcom/huawei/hicloud/photosharesdk/database/TaskInfoOperator;

    iget-object v2, p0, Lcom/huawei/hicloud/photosharesdk/database/DBFuncCollector;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/huawei/hicloud/photosharesdk/database/TaskInfoOperator;-><init>(Landroid/content/Context;)V

    .line 111
    .local v1, taskInfoOperator:Lcom/huawei/hicloud/photosharesdk/database/TaskInfoOperator;
    invoke-static {}, Lcom/huawei/hicloud/photosharesdk/database/TaskInfoOperator;->open()V

    .line 114
    :try_start_0
    invoke-static {p1, v1}, Lcom/huawei/hicloud/photosharesdk/database/DBFuncImplementation;->addTaskInfo(Lcom/huawei/hicloud/photosharesdk/database/dao/TaskInfo;Lcom/huawei/hicloud/photosharesdk/database/TaskInfoOperator;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    .line 116
    .local v0, result:Z
    invoke-static {}, Lcom/huawei/hicloud/photosharesdk/database/TaskInfoOperator;->close()V

    .line 119
    return v0

    .line 115
    .end local v0           #result:Z
    :catchall_0
    move-exception v2

    .line 116
    invoke-static {}, Lcom/huawei/hicloud/photosharesdk/database/TaskInfoOperator;->close()V

    .line 118
    throw v2
.end method

.method public bindReciver2Folder(Lcom/huawei/hicloud/photosharesdk/database/dao/FolderReceiver;)Z
    .locals 3
    .parameter "folderReceiver"

    .prologue
    .line 202
    new-instance v0, Lcom/huawei/hicloud/photosharesdk/database/FolderReceiverOperator;

    iget-object v2, p0, Lcom/huawei/hicloud/photosharesdk/database/DBFuncCollector;->mContext:Landroid/content/Context;

    invoke-direct {v0, v2}, Lcom/huawei/hicloud/photosharesdk/database/FolderReceiverOperator;-><init>(Landroid/content/Context;)V

    .line 203
    .local v0, folderReceiverOperator:Lcom/huawei/hicloud/photosharesdk/database/FolderReceiverOperator;
    invoke-static {}, Lcom/huawei/hicloud/photosharesdk/database/FolderReceiverOperator;->open()V

    .line 207
    :try_start_0
    invoke-static {p1, v0}, Lcom/huawei/hicloud/photosharesdk/database/DBFuncImplementation;->bindReciver2Folder(Lcom/huawei/hicloud/photosharesdk/database/dao/FolderReceiver;Lcom/huawei/hicloud/photosharesdk/database/FolderReceiverOperator;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    .line 209
    .local v1, result:Z
    invoke-static {}, Lcom/huawei/hicloud/photosharesdk/database/FolderReceiverOperator;->close()V

    .line 211
    return v1

    .line 208
    .end local v1           #result:Z
    :catchall_0
    move-exception v2

    .line 209
    invoke-static {}, Lcom/huawei/hicloud/photosharesdk/database/FolderReceiverOperator;->close()V

    .line 210
    throw v2
.end method

.method public delPhoto(Ljava/util/List;)Z
    .locals 3
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
    .line 97
    .local p1, folderPhotos:Ljava/util/List;,"Ljava/util/List<Lcom/huawei/hicloud/photosharesdk/database/dao/FolderPhoto;>;"
    new-instance v0, Lcom/huawei/hicloud/photosharesdk/database/FolderPhotoOperator;

    iget-object v2, p0, Lcom/huawei/hicloud/photosharesdk/database/DBFuncCollector;->mContext:Landroid/content/Context;

    invoke-direct {v0, v2}, Lcom/huawei/hicloud/photosharesdk/database/FolderPhotoOperator;-><init>(Landroid/content/Context;)V

    .line 98
    .local v0, folderPhotoOperator:Lcom/huawei/hicloud/photosharesdk/database/FolderPhotoOperator;
    invoke-static {}, Lcom/huawei/hicloud/photosharesdk/database/FolderPhotoOperator;->open()V

    .line 101
    :try_start_0
    invoke-static {p1, v0}, Lcom/huawei/hicloud/photosharesdk/database/DBFuncImplementation;->delPhoto(Ljava/util/List;Lcom/huawei/hicloud/photosharesdk/database/FolderPhotoOperator;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    .line 103
    .local v1, result:Z
    invoke-static {}, Lcom/huawei/hicloud/photosharesdk/database/FolderPhotoOperator;->close()V

    .line 105
    return v1

    .line 102
    .end local v1           #result:Z
    :catchall_0
    move-exception v2

    .line 103
    invoke-static {}, Lcom/huawei/hicloud/photosharesdk/database/FolderPhotoOperator;->close()V

    .line 104
    throw v2
.end method

.method public delShareFolder(Lcom/huawei/hicloud/photosharesdk/database/dao/SharedFolder;)Z
    .locals 3
    .parameter "sharedFolder"

    .prologue
    .line 163
    new-instance v1, Lcom/huawei/hicloud/photosharesdk/database/SharedFolderOperator;

    iget-object v2, p0, Lcom/huawei/hicloud/photosharesdk/database/DBFuncCollector;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/huawei/hicloud/photosharesdk/database/SharedFolderOperator;-><init>(Landroid/content/Context;)V

    .line 164
    .local v1, sharedFolderOperator:Lcom/huawei/hicloud/photosharesdk/database/SharedFolderOperator;
    invoke-static {}, Lcom/huawei/hicloud/photosharesdk/database/SharedFolderOperator;->open()V

    .line 167
    :try_start_0
    invoke-static {p1, v1}, Lcom/huawei/hicloud/photosharesdk/database/DBFuncImplementation;->delShareFolder(Lcom/huawei/hicloud/photosharesdk/database/dao/SharedFolder;Lcom/huawei/hicloud/photosharesdk/database/SharedFolderOperator;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    .line 169
    .local v0, result:Z
    invoke-static {}, Lcom/huawei/hicloud/photosharesdk/database/SharedFolderOperator;->close()V

    .line 171
    return v0

    .line 168
    .end local v0           #result:Z
    :catchall_0
    move-exception v2

    .line 169
    invoke-static {}, Lcom/huawei/hicloud/photosharesdk/database/SharedFolderOperator;->close()V

    .line 170
    throw v2
.end method

.method public delTaskInfo(Lcom/huawei/hicloud/photosharesdk/database/dao/TaskInfo;)Z
    .locals 3
    .parameter "taskInfo"

    .prologue
    .line 124
    new-instance v1, Lcom/huawei/hicloud/photosharesdk/database/TaskInfoOperator;

    iget-object v2, p0, Lcom/huawei/hicloud/photosharesdk/database/DBFuncCollector;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/huawei/hicloud/photosharesdk/database/TaskInfoOperator;-><init>(Landroid/content/Context;)V

    .line 125
    .local v1, taskInfoOperator:Lcom/huawei/hicloud/photosharesdk/database/TaskInfoOperator;
    invoke-static {}, Lcom/huawei/hicloud/photosharesdk/database/TaskInfoOperator;->open()V

    .line 128
    :try_start_0
    invoke-static {p1, v1}, Lcom/huawei/hicloud/photosharesdk/database/DBFuncImplementation;->delTaskInfo(Lcom/huawei/hicloud/photosharesdk/database/dao/TaskInfo;Lcom/huawei/hicloud/photosharesdk/database/TaskInfoOperator;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    .line 130
    .local v0, result:Z
    invoke-static {}, Lcom/huawei/hicloud/photosharesdk/database/TaskInfoOperator;->close()V

    .line 132
    return v0

    .line 129
    .end local v0           #result:Z
    :catchall_0
    move-exception v2

    .line 130
    invoke-static {}, Lcom/huawei/hicloud/photosharesdk/database/TaskInfoOperator;->close()V

    .line 131
    throw v2
.end method

.method public delete(Lcom/huawei/hicloud/photosharesdk/database/DBConstants$TableName;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 3
    .parameter "tableName"
    .parameter "matchKey"
    .parameter "matchValue"

    .prologue
    .line 410
    iget-object v2, p0, Lcom/huawei/hicloud/photosharesdk/database/DBFuncCollector;->mContext:Landroid/content/Context;

    invoke-direct {p0, p1, v2}, Lcom/huawei/hicloud/photosharesdk/database/DBFuncCollector;->chooseOperator(Lcom/huawei/hicloud/photosharesdk/database/DBConstants$TableName;Landroid/content/Context;)Lcom/huawei/hicloud/photosharesdk/database/DBOperator;

    move-result-object v0

    .line 411
    .local v0, db:Lcom/huawei/hicloud/photosharesdk/database/DBOperator;,"Lcom/huawei/hicloud/photosharesdk/database/DBOperator<*>;"
    const/4 v1, 0x0

    .line 412
    .local v1, result:Z
    if-eqz v0, :cond_0

    .line 414
    invoke-static {}, Lcom/huawei/hicloud/photosharesdk/database/DBOperator;->open()V

    .line 416
    :try_start_0
    invoke-static {v0, p2, p3}, Lcom/huawei/hicloud/photosharesdk/database/DBFuncImplementation;->delete(Lcom/huawei/hicloud/photosharesdk/database/DBOperator;Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    .line 418
    invoke-static {}, Lcom/huawei/hicloud/photosharesdk/database/DBOperator;->close()V

    .line 422
    :cond_0
    return v1

    .line 417
    :catchall_0
    move-exception v2

    .line 418
    invoke-static {}, Lcom/huawei/hicloud/photosharesdk/database/DBOperator;->close()V

    .line 419
    throw v2
.end method

.method public deleteDatabase()V
    .locals 0

    .prologue
    .line 38
    invoke-static {}, Lcom/huawei/hicloud/photosharesdk/database/DBFuncImplementation;->deleteDatabase()V

    .line 39
    return-void
.end method

.method public deleteTaskInfo(Ljava/lang/String;)Z
    .locals 3
    .parameter "photoPath_REMOTE"

    .prologue
    .line 301
    new-instance v1, Lcom/huawei/hicloud/photosharesdk/database/TaskInfoOperator;

    iget-object v2, p0, Lcom/huawei/hicloud/photosharesdk/database/DBFuncCollector;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/huawei/hicloud/photosharesdk/database/TaskInfoOperator;-><init>(Landroid/content/Context;)V

    .line 302
    .local v1, taskInfoOperator:Lcom/huawei/hicloud/photosharesdk/database/TaskInfoOperator;
    invoke-static {}, Lcom/huawei/hicloud/photosharesdk/database/TaskInfoOperator;->open()V

    .line 305
    :try_start_0
    invoke-static {v1, p1}, Lcom/huawei/hicloud/photosharesdk/database/DBFuncImplementation;->deleteTaskInfo(Lcom/huawei/hicloud/photosharesdk/database/TaskInfoOperator;Ljava/lang/String;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    .line 307
    .local v0, result:Z
    invoke-static {}, Lcom/huawei/hicloud/photosharesdk/database/TaskInfoOperator;->close()V

    .line 309
    return v0

    .line 306
    .end local v0           #result:Z
    :catchall_0
    move-exception v2

    .line 307
    invoke-static {}, Lcom/huawei/hicloud/photosharesdk/database/TaskInfoOperator;->close()V

    .line 308
    throw v2
.end method

.method public getFriendsInfo(Ljava/lang/String;)Ljava/util/List;
    .locals 3
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
    .line 71
    new-instance v0, Lcom/huawei/hicloud/photosharesdk/database/FolderReceiverOperator;

    iget-object v2, p0, Lcom/huawei/hicloud/photosharesdk/database/DBFuncCollector;->mContext:Landroid/content/Context;

    invoke-direct {v0, v2}, Lcom/huawei/hicloud/photosharesdk/database/FolderReceiverOperator;-><init>(Landroid/content/Context;)V

    .line 72
    .local v0, folderReceiverOperator:Lcom/huawei/hicloud/photosharesdk/database/FolderReceiverOperator;
    invoke-static {}, Lcom/huawei/hicloud/photosharesdk/database/FolderReceiverOperator;->open()V

    .line 75
    :try_start_0
    invoke-static {p1, v0}, Lcom/huawei/hicloud/photosharesdk/database/DBFuncImplementation;->getFriendsInfo(Ljava/lang/String;Lcom/huawei/hicloud/photosharesdk/database/FolderReceiverOperator;)Ljava/util/List;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    .line 77
    .local v1, result:Ljava/util/List;,"Ljava/util/List<Lcom/huawei/hicloud/photosharesdk/api/vo/FriendsInfo;>;"
    invoke-static {}, Lcom/huawei/hicloud/photosharesdk/database/FolderReceiverOperator;->close()V

    .line 79
    return-object v1

    .line 76
    .end local v1           #result:Ljava/util/List;,"Ljava/util/List<Lcom/huawei/hicloud/photosharesdk/api/vo/FriendsInfo;>;"
    :catchall_0
    move-exception v2

    .line 77
    invoke-static {}, Lcom/huawei/hicloud/photosharesdk/database/FolderReceiverOperator;->close()V

    .line 78
    throw v2
.end method

.method public getMyPhotoInfo(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;
    .locals 3
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
    .line 261
    new-instance v0, Lcom/huawei/hicloud/photosharesdk/database/MyPhotoInfoOperator;

    iget-object v2, p0, Lcom/huawei/hicloud/photosharesdk/database/DBFuncCollector;->mContext:Landroid/content/Context;

    invoke-direct {v0, v2}, Lcom/huawei/hicloud/photosharesdk/database/MyPhotoInfoOperator;-><init>(Landroid/content/Context;)V

    .line 262
    .local v0, myPhotoInfoOperator:Lcom/huawei/hicloud/photosharesdk/database/MyPhotoInfoOperator;
    invoke-static {}, Lcom/huawei/hicloud/photosharesdk/database/MyPhotoInfoOperator;->open()V

    .line 265
    :try_start_0
    invoke-static {v0, p1, p2}, Lcom/huawei/hicloud/photosharesdk/database/DBFuncImplementation;->getMyPhotoInfo(Lcom/huawei/hicloud/photosharesdk/database/MyPhotoInfoOperator;Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    .line 267
    .local v1, result:Ljava/util/List;,"Ljava/util/List<Lcom/huawei/hicloud/photosharesdk/database/dao/MyPhotoInfo;>;"
    invoke-static {}, Lcom/huawei/hicloud/photosharesdk/database/MyPhotoInfoOperator;->close()V

    .line 269
    return-object v1

    .line 266
    .end local v1           #result:Ljava/util/List;,"Ljava/util/List<Lcom/huawei/hicloud/photosharesdk/database/dao/MyPhotoInfo;>;"
    :catchall_0
    move-exception v2

    .line 267
    invoke-static {}, Lcom/huawei/hicloud/photosharesdk/database/MyPhotoInfoOperator;->close()V

    .line 268
    throw v2
.end method

.method public getPhotoInfo(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;
    .locals 3
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
    .line 58
    new-instance v0, Lcom/huawei/hicloud/photosharesdk/database/FolderPhotoOperator;

    iget-object v2, p0, Lcom/huawei/hicloud/photosharesdk/database/DBFuncCollector;->mContext:Landroid/content/Context;

    invoke-direct {v0, v2}, Lcom/huawei/hicloud/photosharesdk/database/FolderPhotoOperator;-><init>(Landroid/content/Context;)V

    .line 59
    .local v0, folderPhotoOperator:Lcom/huawei/hicloud/photosharesdk/database/FolderPhotoOperator;
    invoke-static {}, Lcom/huawei/hicloud/photosharesdk/database/FolderPhotoOperator;->open()V

    .line 62
    :try_start_0
    invoke-static {p1, v0, p2}, Lcom/huawei/hicloud/photosharesdk/database/DBFuncImplementation;->getPhotoInfo(Ljava/lang/String;Lcom/huawei/hicloud/photosharesdk/database/FolderPhotoOperator;Ljava/lang/String;)Ljava/util/List;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    .line 64
    .local v1, result:Ljava/util/List;,"Ljava/util/List<Lcom/huawei/hicloud/photosharesdk/api/vo/SharePhoto;>;"
    invoke-static {}, Lcom/huawei/hicloud/photosharesdk/database/FolderPhotoOperator;->close()V

    .line 66
    return-object v1

    .line 63
    .end local v1           #result:Ljava/util/List;,"Ljava/util/List<Lcom/huawei/hicloud/photosharesdk/api/vo/SharePhoto;>;"
    :catchall_0
    move-exception v2

    .line 64
    invoke-static {}, Lcom/huawei/hicloud/photosharesdk/database/FolderPhotoOperator;->close()V

    .line 65
    throw v2
.end method

.method public getReceiverInfo()Ljava/util/List;
    .locals 3
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
    .line 274
    new-instance v0, Lcom/huawei/hicloud/photosharesdk/database/ReceiverInfoOperator;

    iget-object v2, p0, Lcom/huawei/hicloud/photosharesdk/database/DBFuncCollector;->mContext:Landroid/content/Context;

    invoke-direct {v0, v2}, Lcom/huawei/hicloud/photosharesdk/database/ReceiverInfoOperator;-><init>(Landroid/content/Context;)V

    .line 275
    .local v0, receiverInfoOperator:Lcom/huawei/hicloud/photosharesdk/database/ReceiverInfoOperator;
    invoke-static {}, Lcom/huawei/hicloud/photosharesdk/database/ReceiverInfoOperator;->open()V

    .line 278
    :try_start_0
    invoke-static {v0}, Lcom/huawei/hicloud/photosharesdk/database/DBFuncImplementation;->getReceiverInfo(Lcom/huawei/hicloud/photosharesdk/database/ReceiverInfoOperator;)Ljava/util/List;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    .line 280
    .local v1, result:Ljava/util/List;,"Ljava/util/List<Lcom/huawei/hicloud/photosharesdk/database/dao/ReceiverInfo;>;"
    invoke-static {}, Lcom/huawei/hicloud/photosharesdk/database/ReceiverInfoOperator;->close()V

    .line 282
    return-object v1

    .line 279
    .end local v1           #result:Ljava/util/List;,"Ljava/util/List<Lcom/huawei/hicloud/photosharesdk/database/dao/ReceiverInfo;>;"
    :catchall_0
    move-exception v2

    .line 280
    invoke-static {}, Lcom/huawei/hicloud/photosharesdk/database/ReceiverInfoOperator;->close()V

    .line 281
    throw v2
.end method

.method public getShareFolderInfo(ILjava/lang/String;Landroid/content/Context;)Ljava/util/List;
    .locals 4
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
    .line 43
    new-instance v2, Lcom/huawei/hicloud/photosharesdk/database/SharedFolderOperator;

    iget-object v3, p0, Lcom/huawei/hicloud/photosharesdk/database/DBFuncCollector;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Lcom/huawei/hicloud/photosharesdk/database/SharedFolderOperator;-><init>(Landroid/content/Context;)V

    .line 44
    .local v2, sharedFolderOperator:Lcom/huawei/hicloud/photosharesdk/database/SharedFolderOperator;
    new-instance v0, Lcom/huawei/hicloud/photosharesdk/database/FolderPhotoOperator;

    iget-object v3, p0, Lcom/huawei/hicloud/photosharesdk/database/DBFuncCollector;->mContext:Landroid/content/Context;

    invoke-direct {v0, v3}, Lcom/huawei/hicloud/photosharesdk/database/FolderPhotoOperator;-><init>(Landroid/content/Context;)V

    .line 45
    .local v0, folderPhotoOperator:Lcom/huawei/hicloud/photosharesdk/database/FolderPhotoOperator;
    invoke-static {}, Lcom/huawei/hicloud/photosharesdk/database/FolderPhotoOperator;->open()V

    .line 48
    :try_start_0
    invoke-static {p1, p2, v2, v0, p3}, Lcom/huawei/hicloud/photosharesdk/database/DBFuncImplementation;->getShareFolderInfo(ILjava/lang/String;Lcom/huawei/hicloud/photosharesdk/database/SharedFolderOperator;Lcom/huawei/hicloud/photosharesdk/database/FolderPhotoOperator;Landroid/content/Context;)Ljava/util/List;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    .line 51
    .local v1, result:Ljava/util/List;,"Ljava/util/List<Lcom/huawei/hicloud/photosharesdk/api/vo/ShareFolder;>;"
    invoke-static {}, Lcom/huawei/hicloud/photosharesdk/database/FolderPhotoOperator;->close()V

    .line 53
    return-object v1

    .line 50
    .end local v1           #result:Ljava/util/List;,"Ljava/util/List<Lcom/huawei/hicloud/photosharesdk/api/vo/ShareFolder;>;"
    :catchall_0
    move-exception v3

    .line 51
    invoke-static {}, Lcom/huawei/hicloud/photosharesdk/database/FolderPhotoOperator;->close()V

    .line 52
    throw v3
.end method

.method public getTaskInfo()Ljava/util/Map;
    .locals 3
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
    .line 235
    new-instance v1, Lcom/huawei/hicloud/photosharesdk/database/TaskInfoOperator;

    iget-object v2, p0, Lcom/huawei/hicloud/photosharesdk/database/DBFuncCollector;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/huawei/hicloud/photosharesdk/database/TaskInfoOperator;-><init>(Landroid/content/Context;)V

    .line 236
    .local v1, taskInfoOperator:Lcom/huawei/hicloud/photosharesdk/database/TaskInfoOperator;
    invoke-static {}, Lcom/huawei/hicloud/photosharesdk/database/TaskInfoOperator;->open()V

    .line 239
    :try_start_0
    invoke-static {v1}, Lcom/huawei/hicloud/photosharesdk/database/DBFuncImplementation;->getTaskInfo(Lcom/huawei/hicloud/photosharesdk/database/TaskInfoOperator;)Ljava/util/Map;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 241
    .local v0, result:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/Integer;Ljava/util/List<Lcom/huawei/hicloud/photosharesdk/database/dao/TaskInfo;>;>;"
    invoke-static {}, Lcom/huawei/hicloud/photosharesdk/database/TaskInfoOperator;->close()V

    .line 243
    return-object v0

    .line 240
    .end local v0           #result:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/Integer;Ljava/util/List<Lcom/huawei/hicloud/photosharesdk/database/dao/TaskInfo;>;>;"
    :catchall_0
    move-exception v2

    .line 241
    invoke-static {}, Lcom/huawei/hicloud/photosharesdk/database/TaskInfoOperator;->close()V

    .line 242
    throw v2
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
    .line 394
    iget-object v2, p0, Lcom/huawei/hicloud/photosharesdk/database/DBFuncCollector;->mContext:Landroid/content/Context;

    invoke-direct {p0, p1, v2}, Lcom/huawei/hicloud/photosharesdk/database/DBFuncCollector;->chooseOperator(Lcom/huawei/hicloud/photosharesdk/database/DBConstants$TableName;Landroid/content/Context;)Lcom/huawei/hicloud/photosharesdk/database/DBOperator;

    move-result-object v0

    .line 395
    .local v0, db:Lcom/huawei/hicloud/photosharesdk/database/DBOperator;,"Lcom/huawei/hicloud/photosharesdk/database/DBOperator<*>;"
    new-instance v1, Ljava/util/ArrayList;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 396
    .local v1, result:Ljava/util/List;,"Ljava/util/List<[Ljava/lang/Object;>;"
    if-eqz v0, :cond_0

    .line 398
    invoke-static {}, Lcom/huawei/hicloud/photosharesdk/database/DBOperator;->open()V

    .line 400
    :try_start_0
    invoke-static {v0, p2, p3, p4}, Lcom/huawei/hicloud/photosharesdk/database/DBFuncImplementation;->query(Lcom/huawei/hicloud/photosharesdk/database/DBOperator;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Ljava/util/List;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    .line 402
    invoke-static {}, Lcom/huawei/hicloud/photosharesdk/database/DBOperator;->close()V

    .line 405
    :cond_0
    return-object v1

    .line 401
    :catchall_0
    move-exception v2

    .line 402
    invoke-static {}, Lcom/huawei/hicloud/photosharesdk/database/DBOperator;->close()V

    .line 403
    throw v2
.end method

.method public unbindReciver2Folder(Lcom/huawei/hicloud/photosharesdk/database/dao/FolderReceiver;)Z
    .locals 3
    .parameter "folderReceiver"

    .prologue
    .line 216
    new-instance v0, Lcom/huawei/hicloud/photosharesdk/database/FolderReceiverOperator;

    iget-object v2, p0, Lcom/huawei/hicloud/photosharesdk/database/DBFuncCollector;->mContext:Landroid/content/Context;

    invoke-direct {v0, v2}, Lcom/huawei/hicloud/photosharesdk/database/FolderReceiverOperator;-><init>(Landroid/content/Context;)V

    .line 217
    .local v0, folderReceiverOperator:Lcom/huawei/hicloud/photosharesdk/database/FolderReceiverOperator;
    invoke-static {}, Lcom/huawei/hicloud/photosharesdk/database/FolderReceiverOperator;->open()V

    .line 220
    :try_start_0
    invoke-static {p1, v0}, Lcom/huawei/hicloud/photosharesdk/database/DBFuncImplementation;->unbindReciver2Folder(Lcom/huawei/hicloud/photosharesdk/database/dao/FolderReceiver;Lcom/huawei/hicloud/photosharesdk/database/FolderReceiverOperator;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    .line 223
    .local v1, result:Z
    invoke-static {}, Lcom/huawei/hicloud/photosharesdk/database/FolderReceiverOperator;->close()V

    .line 225
    return v1

    .line 222
    .end local v1           #result:Z
    :catchall_0
    move-exception v2

    .line 223
    invoke-static {}, Lcom/huawei/hicloud/photosharesdk/database/FolderReceiverOperator;->close()V

    .line 224
    throw v2
.end method

.method public varargs update(Lcom/huawei/hicloud/photosharesdk/database/DBConstants$TableName;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Z
    .locals 3
    .parameter "talbeName"
    .parameter "matchKey"
    .parameter "matchValue"
    .parameter "args"

    .prologue
    .line 357
    iget-object v2, p0, Lcom/huawei/hicloud/photosharesdk/database/DBFuncCollector;->mContext:Landroid/content/Context;

    invoke-direct {p0, p1, v2}, Lcom/huawei/hicloud/photosharesdk/database/DBFuncCollector;->chooseOperator(Lcom/huawei/hicloud/photosharesdk/database/DBConstants$TableName;Landroid/content/Context;)Lcom/huawei/hicloud/photosharesdk/database/DBOperator;

    move-result-object v0

    .line 358
    .local v0, db:Lcom/huawei/hicloud/photosharesdk/database/DBOperator;,"Lcom/huawei/hicloud/photosharesdk/database/DBOperator<*>;"
    const/4 v1, 0x0

    .line 359
    .local v1, result:Z
    if-eqz v0, :cond_0

    .line 361
    invoke-static {}, Lcom/huawei/hicloud/photosharesdk/database/DBOperator;->open()V

    .line 363
    :try_start_0
    invoke-static {v0, p2, p3, p4}, Lcom/huawei/hicloud/photosharesdk/database/DBFuncImplementation;->update(Lcom/huawei/hicloud/photosharesdk/database/DBOperator;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    .line 365
    invoke-static {}, Lcom/huawei/hicloud/photosharesdk/database/DBOperator;->close()V

    .line 368
    :cond_0
    return v1

    .line 364
    :catchall_0
    move-exception v2

    .line 365
    invoke-static {}, Lcom/huawei/hicloud/photosharesdk/database/DBOperator;->close()V

    .line 366
    throw v2
.end method

.method public updateFolderReceiver(Lcom/huawei/hicloud/photosharesdk/database/dao/FolderReceiver;)Z
    .locals 3
    .parameter "folderReceiver"

    .prologue
    .line 287
    new-instance v0, Lcom/huawei/hicloud/photosharesdk/database/FolderReceiverOperator;

    iget-object v2, p0, Lcom/huawei/hicloud/photosharesdk/database/DBFuncCollector;->mContext:Landroid/content/Context;

    invoke-direct {v0, v2}, Lcom/huawei/hicloud/photosharesdk/database/FolderReceiverOperator;-><init>(Landroid/content/Context;)V

    .line 288
    .local v0, folderReceiverOperator:Lcom/huawei/hicloud/photosharesdk/database/FolderReceiverOperator;
    invoke-static {}, Lcom/huawei/hicloud/photosharesdk/database/FolderReceiverOperator;->open()V

    .line 291
    :try_start_0
    invoke-static {v0, p1}, Lcom/huawei/hicloud/photosharesdk/database/DBFuncImplementation;->updateFolderReceiver(Lcom/huawei/hicloud/photosharesdk/database/FolderReceiverOperator;Lcom/huawei/hicloud/photosharesdk/database/dao/FolderReceiver;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    .line 294
    .local v1, result:Z
    invoke-static {}, Lcom/huawei/hicloud/photosharesdk/database/FolderReceiverOperator;->close()V

    .line 296
    return v1

    .line 293
    .end local v1           #result:Z
    :catchall_0
    move-exception v2

    .line 294
    invoke-static {}, Lcom/huawei/hicloud/photosharesdk/database/FolderReceiverOperator;->close()V

    .line 295
    throw v2
.end method

.method public updateOrInsert(Ljava/lang/Object;[Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;
    .locals 3
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
    .line 374
    .local p1, obj:Ljava/lang/Object;,"TT;"
    iget-object v2, p0, Lcom/huawei/hicloud/photosharesdk/database/DBFuncCollector;->mContext:Landroid/content/Context;

    invoke-direct {p0, p1, v2}, Lcom/huawei/hicloud/photosharesdk/database/DBFuncCollector;->chooseOperator(Ljava/lang/Object;Landroid/content/Context;)Lcom/huawei/hicloud/photosharesdk/database/DBOperator;

    move-result-object v0

    .line 375
    .local v0, db:Lcom/huawei/hicloud/photosharesdk/database/DBOperator;,"Lcom/huawei/hicloud/photosharesdk/database/DBOperator<TT;>;"
    const-string v1, ""

    .line 376
    .local v1, result:Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 378
    invoke-static {}, Lcom/huawei/hicloud/photosharesdk/database/DBOperator;->open()V

    .line 381
    :try_start_0
    invoke-static {v0, p1, p2, p3}, Lcom/huawei/hicloud/photosharesdk/database/DBFuncImplementation;->updateOrInsert(Lcom/huawei/hicloud/photosharesdk/database/DBOperator;Ljava/lang/Object;[Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    .line 385
    invoke-static {}, Lcom/huawei/hicloud/photosharesdk/database/DBOperator;->close()V

    .line 388
    :cond_0
    return-object v1

    .line 384
    :catchall_0
    move-exception v2

    .line 385
    invoke-static {}, Lcom/huawei/hicloud/photosharesdk/database/DBOperator;->close()V

    .line 386
    throw v2
.end method

.method public updateShareFolder(Lcom/huawei/hicloud/photosharesdk/database/dao/SharedFolder;)Z
    .locals 3
    .parameter "sharedFolder"

    .prologue
    .line 176
    new-instance v1, Lcom/huawei/hicloud/photosharesdk/database/SharedFolderOperator;

    iget-object v2, p0, Lcom/huawei/hicloud/photosharesdk/database/DBFuncCollector;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/huawei/hicloud/photosharesdk/database/SharedFolderOperator;-><init>(Landroid/content/Context;)V

    .line 177
    .local v1, sharedFolderOperator:Lcom/huawei/hicloud/photosharesdk/database/SharedFolderOperator;
    invoke-static {}, Lcom/huawei/hicloud/photosharesdk/database/SharedFolderOperator;->open()V

    .line 180
    :try_start_0
    invoke-static {p1, v1}, Lcom/huawei/hicloud/photosharesdk/database/DBFuncImplementation;->updateShareFolder(Lcom/huawei/hicloud/photosharesdk/database/dao/SharedFolder;Lcom/huawei/hicloud/photosharesdk/database/SharedFolderOperator;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    .line 182
    .local v0, result:Z
    invoke-static {}, Lcom/huawei/hicloud/photosharesdk/database/SharedFolderOperator;->close()V

    .line 184
    return v0

    .line 181
    .end local v0           #result:Z
    :catchall_0
    move-exception v2

    .line 182
    invoke-static {}, Lcom/huawei/hicloud/photosharesdk/database/SharedFolderOperator;->close()V

    .line 183
    throw v2
.end method

.method public updateTaskInfo(Lcom/huawei/hicloud/photosharesdk/database/dao/TaskInfo;)Z
    .locals 3
    .parameter "taskInfo"

    .prologue
    .line 137
    new-instance v1, Lcom/huawei/hicloud/photosharesdk/database/TaskInfoOperator;

    iget-object v2, p0, Lcom/huawei/hicloud/photosharesdk/database/DBFuncCollector;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/huawei/hicloud/photosharesdk/database/TaskInfoOperator;-><init>(Landroid/content/Context;)V

    .line 138
    .local v1, taskInfoOperator:Lcom/huawei/hicloud/photosharesdk/database/TaskInfoOperator;
    invoke-static {}, Lcom/huawei/hicloud/photosharesdk/database/TaskInfoOperator;->open()V

    .line 141
    :try_start_0
    invoke-static {p1, v1}, Lcom/huawei/hicloud/photosharesdk/database/DBFuncImplementation;->updateTaskInfo(Lcom/huawei/hicloud/photosharesdk/database/dao/TaskInfo;Lcom/huawei/hicloud/photosharesdk/database/TaskInfoOperator;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    .line 143
    .local v0, result:Z
    invoke-static {}, Lcom/huawei/hicloud/photosharesdk/database/TaskInfoOperator;->close()V

    .line 145
    return v0

    .line 142
    .end local v0           #result:Z
    :catchall_0
    move-exception v2

    .line 143
    invoke-static {}, Lcom/huawei/hicloud/photosharesdk/database/TaskInfoOperator;->close()V

    .line 144
    throw v2
.end method
