.class final Lcom/huawei/hicloud/photosharesdk3/database/DBFuncImplementation;
.super Ljava/lang/Object;
.source "DBFuncImplementation.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 33
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 36
    return-void
.end method

.method static addPhoto(Lcom/huawei/hicloud/photosharesdk3/database/dao/FolderPhoto;Lcom/huawei/hicloud/photosharesdk3/database/FolderPhotoOperator;)Z
    .locals 5
    .parameter "folderPhoto"
    .parameter "folderPhotoOperator"

    .prologue
    .line 292
    if-nez p0, :cond_0

    .line 294
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "folderPhotos is empty "

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 296
    :cond_0
    const/4 v0, 0x1

    .line 297
    .local v0, result:Z
    invoke-virtual {p1, p0}, Lcom/huawei/hicloud/photosharesdk3/database/FolderPhotoOperator;->insert(Lcom/huawei/hicloud/photosharesdk3/database/dao/FolderPhoto;)J

    move-result-wide v1

    const-wide/16 v3, -0x1

    cmp-long v1, v1, v3

    if-nez v1, :cond_1

    .line 299
    const/4 v0, 0x0

    .line 301
    :cond_1
    return v0
.end method

.method static addPhoto(Ljava/util/List;Lcom/huawei/hicloud/photosharesdk3/database/FolderPhotoOperator;)Z
    .locals 7
    .parameter
    .parameter "folderPhotoOperator"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/huawei/hicloud/photosharesdk3/database/dao/FolderPhoto;",
            ">;",
            "Lcom/huawei/hicloud/photosharesdk3/database/FolderPhotoOperator;",
            ")Z"
        }
    .end annotation

    .prologue
    .line 272
    .local p0, folderPhotos:Ljava/util/List;,"Ljava/util/List<Lcom/huawei/hicloud/photosharesdk3/database/dao/FolderPhoto;>;"
    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 274
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "folderPhotos is empty "

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 276
    :cond_0
    const/4 v1, 0x1

    .line 277
    .local v1, result:Z
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_2

    .line 284
    return v1

    .line 277
    :cond_2
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/huawei/hicloud/photosharesdk3/database/dao/FolderPhoto;

    .line 279
    .local v0, folderPhoto:Lcom/huawei/hicloud/photosharesdk3/database/dao/FolderPhoto;
    invoke-virtual {p1, v0}, Lcom/huawei/hicloud/photosharesdk3/database/FolderPhotoOperator;->insert(Lcom/huawei/hicloud/photosharesdk3/database/dao/FolderPhoto;)J

    move-result-wide v3

    const-wide/16 v5, -0x1

    cmp-long v3, v3, v5

    if-nez v3, :cond_1

    .line 281
    const/4 v1, 0x0

    goto :goto_0
.end method

.method static addReceiver(Ljava/util/List;Lcom/huawei/hicloud/photosharesdk3/database/ReceiverInfoOperator;)Z
    .locals 7
    .parameter
    .parameter "receiverInfoOperator"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/huawei/hicloud/photosharesdk3/database/dao/ReceiverInfo;",
            ">;",
            "Lcom/huawei/hicloud/photosharesdk3/database/ReceiverInfoOperator;",
            ")Z"
        }
    .end annotation

    .prologue
    .line 445
    .local p0, receiverInfos:Ljava/util/List;,"Ljava/util/List<Lcom/huawei/hicloud/photosharesdk3/database/dao/ReceiverInfo;>;"
    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 447
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "folderReceivers is empty "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 449
    :cond_0
    const/4 v1, 0x1

    .line 450
    .local v1, result:Z
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_2

    .line 457
    return v1

    .line 450
    :cond_2
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/huawei/hicloud/photosharesdk3/database/dao/ReceiverInfo;

    .line 452
    .local v0, receiverInfo:Lcom/huawei/hicloud/photosharesdk3/database/dao/ReceiverInfo;
    invoke-virtual {p1, v0}, Lcom/huawei/hicloud/photosharesdk3/database/ReceiverInfoOperator;->insert(Lcom/huawei/hicloud/photosharesdk3/database/dao/ReceiverInfo;)J

    move-result-wide v3

    const-wide/16 v5, -0x1

    cmp-long v3, v3, v5

    if-nez v3, :cond_1

    .line 454
    const/4 v1, 0x0

    goto :goto_0
.end method

.method static addShareFolder(Lcom/huawei/hicloud/photosharesdk3/database/dao/SharedFolder;Lcom/huawei/hicloud/photosharesdk3/database/SharedFolderOperator;)Z
    .locals 5
    .parameter "sharedFolder"
    .parameter "sharedFolderOperator"

    .prologue
    .line 387
    const/4 v0, 0x1

    .line 388
    .local v0, result:Z
    invoke-virtual {p1, p0}, Lcom/huawei/hicloud/photosharesdk3/database/SharedFolderOperator;->insert(Lcom/huawei/hicloud/photosharesdk3/database/dao/SharedFolder;)J

    move-result-wide v1

    const-wide/16 v3, -0x1

    cmp-long v1, v1, v3

    if-nez v1, :cond_0

    .line 390
    const/4 v0, 0x0

    .line 392
    :cond_0
    return v0
.end method

.method static addTaskInfo(Lcom/huawei/hicloud/photosharesdk3/database/dao/TaskInfo;Lcom/huawei/hicloud/photosharesdk3/database/TaskInfoOperator;)Z
    .locals 5
    .parameter "taskInfo"
    .parameter "taskInfoOperator"

    .prologue
    .line 329
    const/4 v0, 0x1

    .line 330
    .local v0, result:Z
    invoke-virtual {p1, p0}, Lcom/huawei/hicloud/photosharesdk3/database/TaskInfoOperator;->insert(Lcom/huawei/hicloud/photosharesdk3/database/dao/TaskInfo;)J

    move-result-wide v1

    const-wide/16 v3, -0x1

    cmp-long v1, v1, v3

    if-nez v1, :cond_0

    .line 332
    const/4 v0, 0x0

    .line 334
    :cond_0
    return v0
.end method

.method static bindReciver2Folder(Lcom/huawei/hicloud/photosharesdk3/database/dao/FolderReceiver;Lcom/huawei/hicloud/photosharesdk3/database/FolderReceiverOperator;)Z
    .locals 5
    .parameter "folderReceiver"
    .parameter "folderReceiverOperator"

    .prologue
    .line 462
    const/4 v0, 0x1

    .line 463
    .local v0, result:Z
    invoke-virtual {p1, p0}, Lcom/huawei/hicloud/photosharesdk3/database/FolderReceiverOperator;->insert(Lcom/huawei/hicloud/photosharesdk3/database/dao/FolderReceiver;)J

    move-result-wide v1

    const-wide/16 v3, -0x1

    cmp-long v1, v1, v3

    if-nez v1, :cond_0

    .line 465
    const/4 v0, 0x0

    .line 467
    :cond_0
    return v0
.end method

.method private static varargs cursor2Fields(Landroid/database/Cursor;[Ljava/lang/String;)Ljava/util/List;
    .locals 4
    .parameter "cursor"
    .parameter "columnNames"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/database/Cursor;",
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
    .line 679
    new-instance v2, Ljava/util/ArrayList;

    invoke-interface {p0}, Landroid/database/Cursor;->getCount()I

    move-result v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 680
    .local v2, result:Ljava/util/List;,"Ljava/util/List<[Ljava/lang/Object;>;"
    invoke-interface {p0}, Landroid/database/Cursor;->moveToFirst()Z

    .line 681
    :goto_0
    invoke-interface {p0}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 704
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    .line 705
    return-object v2

    .line 683
    :cond_0
    array-length v3, p1

    new-array v0, v3, [Ljava/lang/Object;

    .line 684
    .local v0, data:[Ljava/lang/Object;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    array-length v3, p1

    if-lt v1, v3, :cond_1

    .line 701
    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 702
    invoke-interface {p0}, Landroid/database/Cursor;->moveToNext()Z

    goto :goto_0

    .line 686
    :cond_1
    invoke-interface {p0, v1}, Landroid/database/Cursor;->getType(I)I

    move-result v3

    packed-switch v3, :pswitch_data_0

    .line 684
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 689
    :pswitch_0
    invoke-interface {p0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v0, v1

    goto :goto_2

    .line 692
    :pswitch_1
    invoke-interface {p0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v0, v1

    goto :goto_2

    .line 695
    :pswitch_2
    invoke-interface {p0, v1}, Landroid/database/Cursor;->getFloat(I)F

    move-result v3

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    aput-object v3, v0, v1

    goto :goto_2

    .line 686
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_0
    .end packed-switch
.end method

.method static delPhoto(Ljava/util/List;Lcom/huawei/hicloud/photosharesdk3/database/FolderPhotoOperator;)Z
    .locals 7
    .parameter
    .parameter "folderPhotoOperator"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/huawei/hicloud/photosharesdk3/database/dao/FolderPhoto;",
            ">;",
            "Lcom/huawei/hicloud/photosharesdk3/database/FolderPhotoOperator;",
            ")Z"
        }
    .end annotation

    .prologue
    .line 306
    .local p0, folderPhotos:Ljava/util/List;,"Ljava/util/List<Lcom/huawei/hicloud/photosharesdk3/database/dao/FolderPhoto;>;"
    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 308
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "folderPhotos is empty "

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 310
    :cond_0
    const/4 v1, 0x1

    .line 311
    .local v1, result:Z
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_2

    .line 324
    return v1

    .line 311
    :cond_2
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/huawei/hicloud/photosharesdk3/database/dao/FolderPhoto;

    .line 313
    .local v0, folderPhoto:Lcom/huawei/hicloud/photosharesdk3/database/dao/FolderPhoto;
    invoke-virtual {v0}, Lcom/huawei/hicloud/photosharesdk3/database/dao/FolderPhoto;->getPhotoPathRemote()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_3

    .line 316
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "folderPhoto.photoPath is null"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 318
    :cond_3
    const-string v3, "PhotoPathR=?"

    .line 319
    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    invoke-virtual {v0}, Lcom/huawei/hicloud/photosharesdk3/database/dao/FolderPhoto;->getPhotoPathRemote()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    .line 318
    invoke-virtual {p1, v3, v4}, Lcom/huawei/hicloud/photosharesdk3/database/FolderPhotoOperator;->delete(Ljava/lang/String;[Ljava/lang/String;)I

    move-result v3

    if-nez v3, :cond_1

    .line 321
    const/4 v1, 0x0

    goto :goto_0
.end method

.method static delShareFolder(Lcom/huawei/hicloud/photosharesdk3/database/dao/SharedFolder;Lcom/huawei/hicloud/photosharesdk3/database/SharedFolderOperator;)Z
    .locals 6
    .parameter "sharedFolder"
    .parameter "sharedFolderOperator"

    .prologue
    const/4 v5, 0x1

    .line 406
    invoke-virtual {p0}, Lcom/huawei/hicloud/photosharesdk3/database/dao/SharedFolder;->getSharePath()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_0

    .line 408
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "sharedFolder.getSharePath is null "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 410
    :cond_0
    const/4 v0, 0x1

    .line 411
    .local v0, result:Z
    const-string v1, "SharePath=?"

    .line 412
    new-array v2, v5, [Ljava/lang/String;

    const/4 v3, 0x0

    invoke-virtual {p0}, Lcom/huawei/hicloud/photosharesdk3/database/dao/SharedFolder;->getSharePath()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    .line 411
    invoke-virtual {p1, v1, v2}, Lcom/huawei/hicloud/photosharesdk3/database/SharedFolderOperator;->delete(Ljava/lang/String;[Ljava/lang/String;)I

    move-result v1

    .line 412
    if-ge v1, v5, :cond_1

    .line 414
    const/4 v0, 0x0

    .line 416
    :cond_1
    return v0
.end method

.method static delTaskInfo(Lcom/huawei/hicloud/photosharesdk3/database/dao/TaskInfo;Lcom/huawei/hicloud/photosharesdk3/database/TaskInfoOperator;)Z
    .locals 6
    .parameter "taskInfo"
    .parameter "taskInfoOperator"

    .prologue
    const/4 v5, 0x1

    .line 348
    invoke-virtual {p0}, Lcom/huawei/hicloud/photosharesdk3/database/dao/TaskInfo;->getPhotoPathRemote()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_0

    .line 350
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "taskInfo.photoPaht is null "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 352
    :cond_0
    const/4 v0, 0x1

    .line 353
    .local v0, result:Z
    const-string v1, "PhotoPathR=?"

    .line 354
    new-array v2, v5, [Ljava/lang/String;

    const/4 v3, 0x0

    invoke-virtual {p0}, Lcom/huawei/hicloud/photosharesdk3/database/dao/TaskInfo;->getPhotoPathRemote()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    .line 353
    invoke-virtual {p1, v1, v2}, Lcom/huawei/hicloud/photosharesdk3/database/TaskInfoOperator;->delete(Ljava/lang/String;[Ljava/lang/String;)I

    move-result v1

    .line 354
    if-ge v1, v5, :cond_1

    .line 356
    const/4 v0, 0x0

    .line 358
    :cond_1
    return v0
.end method

.method static delete(Lcom/huawei/hicloud/photosharesdk3/database/DBOperator3;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 5
    .parameter
    .parameter "matchKey"
    .parameter "matchValue"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/huawei/hicloud/photosharesdk3/database/DBOperator3",
            "<TT;>;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")Z"
        }
    .end annotation

    .prologue
    .local p0, db:Lcom/huawei/hicloud/photosharesdk3/database/DBOperator3;,"Lcom/huawei/hicloud/photosharesdk3/database/DBOperator3<TT;>;"
    const/4 v4, 0x1

    .line 761
    invoke-static {p1}, Lcom/huawei/hicloud/photosharesdk/helper/StringUtil;->isBlankString(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {p2}, Lcom/huawei/hicloud/photosharesdk/helper/StringUtil;->isBlankString(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 763
    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "matchKey or matchValue is(are) blank String"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 765
    :cond_1
    const/4 v0, 0x1

    .line 766
    .local v0, result:Z
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "=?"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-array v2, v4, [Ljava/lang/String;

    const/4 v3, 0x0

    aput-object p2, v2, v3

    invoke-virtual {p0, v1, v2}, Lcom/huawei/hicloud/photosharesdk3/database/DBOperator3;->delete(Ljava/lang/String;[Ljava/lang/String;)I

    move-result v1

    if-ge v1, v4, :cond_2

    .line 768
    const/4 v0, 0x0

    .line 770
    :cond_2
    return v0
.end method

.method static deleteDatabase()V
    .locals 0

    .prologue
    .line 40
    invoke-static {}, Lcom/huawei/hicloud/photosharesdk3/database/DBOperator3;->deleteDatabase()V

    .line 41
    return-void
.end method

.method public static deleteTaskInfo(Lcom/huawei/hicloud/photosharesdk3/database/TaskInfoOperator;Ljava/lang/String;)Z
    .locals 6
    .parameter "taskInfoOperator"
    .parameter "photoPathRemote"

    .prologue
    .line 623
    invoke-static {p1}, Lcom/huawei/hicloud/photosharesdk/helper/StringUtil;->isBlankString(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 625
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "photoPath_REMOTE is NULL"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 627
    :cond_0
    const/4 v0, 0x1

    .line 628
    .local v0, result:Z
    const-string v1, "PhotoPathR like ?"

    .line 629
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v5, "%"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    .line 628
    invoke-virtual {p0, v1, v2}, Lcom/huawei/hicloud/photosharesdk3/database/TaskInfoOperator;->delete(Ljava/lang/String;[Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_1

    .line 631
    const/4 v0, 0x0

    .line 633
    :cond_1
    return v0
.end method

.method static getFriendsInfo(Ljava/lang/String;Lcom/huawei/hicloud/photosharesdk3/database/FolderReceiverOperator;)Ljava/util/List;
    .locals 11
    .parameter "sharedPath"
    .parameter "folderReceiverOperator"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/huawei/hicloud/photosharesdk3/database/FolderReceiverOperator;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/huawei/hicloud/photosharesdk/api/vo/FriendsInfo;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v3, 0x1

    const/4 v5, 0x0

    const/4 v4, 0x0

    .line 243
    if-nez p0, :cond_0

    .line 245
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "folderPath is null "

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 247
    :cond_0
    const-string v0, ""

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 249
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "folderPath is \"\" "

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 252
    :cond_1
    const/4 v0, 0x2

    new-array v1, v0, [Ljava/lang/String;

    const-string v0, "ReceiverAccount"

    aput-object v0, v1, v5

    const-string v0, "ReceiverState"

    aput-object v0, v1, v3

    .line 253
    const-string v2, "SharedPath=?"

    .line 254
    new-array v3, v3, [Ljava/lang/String;

    aput-object p0, v3, v5

    move-object v0, p1

    move-object v5, v4

    move-object v6, v4

    move-object v7, v4

    .line 251
    invoke-virtual/range {v0 .. v7}, Lcom/huawei/hicloud/photosharesdk3/database/FolderReceiverOperator;->query([Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 255
    .local v8, cursor:Landroid/database/Cursor;
    new-instance v10, Ljava/util/ArrayList;

    invoke-interface {v8}, Landroid/database/Cursor;->getCount()I

    move-result v0

    invoke-direct {v10, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 256
    .local v10, friendsInfos:Ljava/util/List;,"Ljava/util/List<Lcom/huawei/hicloud/photosharesdk/api/vo/FriendsInfo;>;"
    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    .line 257
    :goto_0
    invoke-interface {v8}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 266
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 267
    return-object v10

    .line 259
    :cond_2
    new-instance v9, Lcom/huawei/hicloud/photosharesdk/api/vo/FriendsInfo;

    invoke-direct {v9}, Lcom/huawei/hicloud/photosharesdk/api/vo/FriendsInfo;-><init>()V

    .line 261
    .local v9, friendsInfo:Lcom/huawei/hicloud/photosharesdk/api/vo/FriendsInfo;
    const-string v0, "ReceiverAccount"

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    .line 260
    invoke-interface {v8, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v9, v0}, Lcom/huawei/hicloud/photosharesdk/api/vo/FriendsInfo;->setAccount(Ljava/lang/String;)V

    .line 262
    const-string v0, "ReceiverState"

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    invoke-virtual {v9, v0}, Lcom/huawei/hicloud/photosharesdk/api/vo/FriendsInfo;->setState(I)V

    .line 263
    invoke-interface {v10, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 264
    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z

    goto :goto_0
.end method

.method static getPhotoInfo(Ljava/lang/String;Lcom/huawei/hicloud/photosharesdk3/database/FolderPhotoOperator;Ljava/lang/String;)Ljava/util/List;
    .locals 13
    .parameter "sharedPath"
    .parameter "folderPhotoOperator"
    .parameter "order"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/huawei/hicloud/photosharesdk3/database/FolderPhotoOperator;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/huawei/hicloud/photosharesdk3/database/dao/FolderPhoto;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    const/4 v12, 0x0

    const/4 v11, 0x1

    .line 201
    if-nez p0, :cond_0

    .line 203
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "folderPath is null "

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 205
    :cond_0
    const-string v0, ""

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 207
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "folderPath is \"\" "

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 209
    :cond_1
    const/4 v0, 0x3

    new-array v1, v0, [Ljava/lang/String;

    .line 210
    const-string v0, "CreateTime"

    aput-object v0, v1, v12

    .line 211
    const-string v0, "PhotoPathR"

    aput-object v0, v1, v11

    const/4 v0, 0x2

    const-string v2, "IsNew"

    aput-object v2, v1, v0

    .line 212
    const-string v2, "SharedPath=?"

    new-array v3, v11, [Ljava/lang/String;

    aput-object p0, v3, v12

    .line 213
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v5, "CreateTime "

    invoke-direct {v0, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    move-object v0, p1

    move-object v5, v4

    move-object v7, v4

    .line 209
    invoke-virtual/range {v0 .. v7}, Lcom/huawei/hicloud/photosharesdk3/database/FolderPhotoOperator;->query([Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 214
    .local v8, cursor:Landroid/database/Cursor;
    new-instance v9, Ljava/util/ArrayList;

    invoke-interface {v8}, Landroid/database/Cursor;->getCount()I

    move-result v0

    invoke-direct {v9, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 215
    .local v9, shareFolders:Ljava/util/List;,"Ljava/util/List<Lcom/huawei/hicloud/photosharesdk3/database/dao/FolderPhoto;>;"
    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    .line 216
    :goto_0
    invoke-interface {v8}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 229
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 230
    return-object v9

    .line 218
    :cond_2
    new-instance v10, Lcom/huawei/hicloud/photosharesdk3/database/dao/FolderPhoto;

    invoke-direct {v10}, Lcom/huawei/hicloud/photosharesdk3/database/dao/FolderPhoto;-><init>()V

    .line 220
    .local v10, sharePhoto:Lcom/huawei/hicloud/photosharesdk3/database/dao/FolderPhoto;
    const-string v0, "IsNew"

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    .line 219
    invoke-interface {v8, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    .line 220
    if-ne v0, v11, :cond_3

    move v0, v11

    .line 219
    :goto_1
    invoke-virtual {v10, v0}, Lcom/huawei/hicloud/photosharesdk3/database/dao/FolderPhoto;->setNew(Z)V

    .line 222
    const-string v0, "PhotoPathR"

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    .line 221
    invoke-interface {v8, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v10, v0}, Lcom/huawei/hicloud/photosharesdk3/database/dao/FolderPhoto;->setPhotoPathRemote(Ljava/lang/String;)V

    .line 225
    const-string v0, "CreateTime"

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    .line 224
    invoke-interface {v8, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v10, v0}, Lcom/huawei/hicloud/photosharesdk3/database/dao/FolderPhoto;->setCreateTime(Ljava/lang/String;)V

    .line 226
    invoke-interface {v9, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 227
    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z

    goto :goto_0

    :cond_3
    move v0, v12

    .line 220
    goto :goto_1
.end method

.method public static getReceiverInfo(Lcom/huawei/hicloud/photosharesdk3/database/ReceiverInfoOperator;)Ljava/util/List;
    .locals 10
    .parameter "receiverInfoOperator"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/huawei/hicloud/photosharesdk3/database/ReceiverInfoOperator;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/huawei/hicloud/photosharesdk3/database/dao/ReceiverInfo;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 591
    move-object v0, p0

    move-object v2, v1

    move-object v3, v1

    move-object v4, v1

    move-object v5, v1

    move-object v6, v1

    move-object v7, v1

    invoke-virtual/range {v0 .. v7}, Lcom/huawei/hicloud/photosharesdk3/database/ReceiverInfoOperator;->query([Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 592
    .local v8, cursor:Landroid/database/Cursor;
    new-instance v9, Ljava/util/ArrayList;

    invoke-interface {v8}, Landroid/database/Cursor;->getCount()I

    move-result v0

    invoke-direct {v9, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 593
    .local v9, receiverInfos:Ljava/util/List;,"Ljava/util/List<Lcom/huawei/hicloud/photosharesdk3/database/dao/ReceiverInfo;>;"
    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    .line 594
    :goto_0
    invoke-interface {v8}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 599
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 600
    return-object v9

    .line 596
    :cond_0
    invoke-static {v8}, Lcom/huawei/hicloud/photosharesdk3/database/ReceiverInfoOperator;->cursor2Receiver(Landroid/database/Cursor;)Lcom/huawei/hicloud/photosharesdk3/database/dao/ReceiverInfo;

    move-result-object v0

    invoke-interface {v9, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 597
    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z

    goto :goto_0
.end method

.method static getShareFolderBySharePath(Ljava/lang/String;Lcom/huawei/hicloud/photosharesdk3/database/SharedFolderOperator;Landroid/content/Context;)Ljava/util/List;
    .locals 13
    .parameter "sharePath"
    .parameter "sharedFolderOperator"
    .parameter "context"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/huawei/hicloud/photosharesdk3/database/SharedFolderOperator;",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/huawei/hicloud/photosharesdk3/database/dao/SharedFolder;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v12, 0x1

    const/4 v1, 0x0

    .line 92
    if-nez p0, :cond_0

    .line 94
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "sharePath is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 98
    :cond_0
    const-string v2, "SharePath=?"

    .line 99
    new-array v3, v12, [Ljava/lang/String;

    const/4 v0, 0x0

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v0

    move-object v0, p1

    move-object v4, v1

    move-object v5, v1

    move-object v6, v1

    move-object v7, v1

    .line 98
    invoke-virtual/range {v0 .. v7}, Lcom/huawei/hicloud/photosharesdk3/database/SharedFolderOperator;->query([Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 100
    .local v9, cursor:Landroid/database/Cursor;
    invoke-interface {v9}, Landroid/database/Cursor;->getCount()I

    move-result v8

    .line 102
    .local v8, count:I
    if-ge v12, v8, :cond_1

    .line 104
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 105
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "cursor Count = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 120
    :cond_1
    new-instance v11, Ljava/util/ArrayList;

    invoke-interface {v9}, Landroid/database/Cursor;->getCount()I

    move-result v0

    invoke-direct {v11, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 121
    .local v11, shareFolders:Ljava/util/List;,"Ljava/util/List<Lcom/huawei/hicloud/photosharesdk3/database/dao/SharedFolder;>;"
    invoke-interface {v9}, Landroid/database/Cursor;->moveToFirst()Z

    .line 122
    :goto_0
    invoke-interface {v9}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 135
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 136
    return-object v11

    .line 124
    :cond_2
    new-instance v10, Lcom/huawei/hicloud/photosharesdk3/database/dao/SharedFolder;

    invoke-direct {v10}, Lcom/huawei/hicloud/photosharesdk3/database/dao/SharedFolder;-><init>()V

    .line 125
    .local v10, shareFolder:Lcom/huawei/hicloud/photosharesdk3/database/dao/SharedFolder;
    const-string v0, "FolderName"

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v10, v0}, Lcom/huawei/hicloud/photosharesdk3/database/dao/SharedFolder;->setFolderName(Ljava/lang/String;)V

    .line 126
    const-string v0, "FolderType"

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    invoke-virtual {v10, v0}, Lcom/huawei/hicloud/photosharesdk3/database/dao/SharedFolder;->setFolderType(I)V

    .line 127
    const-string v0, "SharerName"

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v10, v0}, Lcom/huawei/hicloud/photosharesdk3/database/dao/SharedFolder;->setSharerName(Ljava/lang/String;)V

    .line 128
    const-string v0, "FolderPathR"

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v10, v0}, Lcom/huawei/hicloud/photosharesdk3/database/dao/SharedFolder;->setFolderPathRemote(Ljava/lang/String;)V

    .line 129
    const-string v0, "SharePath"

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v10, v0}, Lcom/huawei/hicloud/photosharesdk3/database/dao/SharedFolder;->setSharePath(Ljava/lang/String;)V

    .line 130
    const-string v0, "SharerAccount"

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v10, v0}, Lcom/huawei/hicloud/photosharesdk3/database/dao/SharedFolder;->setSharerAccount(Ljava/lang/String;)V

    .line 131
    const-string v0, "CreateTime"

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v10, v0}, Lcom/huawei/hicloud/photosharesdk3/database/dao/SharedFolder;->setCreateTime(Ljava/lang/String;)V

    .line 132
    invoke-interface {v11, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 133
    invoke-interface {v9}, Landroid/database/Cursor;->moveToNext()Z

    goto :goto_0
.end method

.method static getShareFolderInfo(ILcom/huawei/hicloud/photosharesdk3/database/SharedFolderOperator;Lcom/huawei/hicloud/photosharesdk3/database/FolderPhotoOperator;Landroid/content/Context;)Ljava/util/List;
    .locals 11
    .parameter "folderType"
    .parameter "sharedFolderOperator"
    .parameter "folderPhotoOperator"
    .parameter "context"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/huawei/hicloud/photosharesdk3/database/SharedFolderOperator;",
            "Lcom/huawei/hicloud/photosharesdk3/database/FolderPhotoOperator;",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/huawei/hicloud/photosharesdk3/database/dao/SharedFolder;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 46
    invoke-static {p0}, Lcom/huawei/hicloud/photosharesdk3/database/DBFuncImplementation;->validateFolderType(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 48
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "folderType = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 51
    :cond_0
    invoke-static {p0}, Lcom/huawei/hicloud/photosharesdk3/database/DBFuncImplementation;->isQueryAll(I)Z

    move-result v0

    if-eqz v0, :cond_1

    move-object v0, p1

    move-object v2, v1

    move-object v3, v1

    move-object v4, v1

    move-object v5, v1

    move-object v6, v1

    move-object v7, v1

    .line 53
    invoke-virtual/range {v0 .. v7}, Lcom/huawei/hicloud/photosharesdk3/database/SharedFolderOperator;->query([Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 60
    .local v8, cursor:Landroid/database/Cursor;
    :goto_0
    new-instance v10, Ljava/util/ArrayList;

    invoke-interface {v8}, Landroid/database/Cursor;->getCount()I

    move-result v0

    invoke-direct {v10, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 61
    .local v10, shareFolders:Ljava/util/List;,"Ljava/util/List<Lcom/huawei/hicloud/photosharesdk3/database/dao/SharedFolder;>;"
    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    .line 62
    :goto_1
    invoke-interface {v8}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 86
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 87
    return-object v10

    .line 57
    .end local v8           #cursor:Landroid/database/Cursor;
    .end local v10           #shareFolders:Ljava/util/List;,"Ljava/util/List<Lcom/huawei/hicloud/photosharesdk3/database/dao/SharedFolder;>;"
    :cond_1
    const-string v2, "FolderType=?"

    .line 58
    const/4 v0, 0x1

    new-array v3, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v0

    move-object v0, p1

    move-object v4, v1

    move-object v5, v1

    move-object v6, v1

    move-object v7, v1

    .line 57
    invoke-virtual/range {v0 .. v7}, Lcom/huawei/hicloud/photosharesdk3/database/SharedFolderOperator;->query([Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .restart local v8       #cursor:Landroid/database/Cursor;
    goto :goto_0

    .line 64
    .restart local v10       #shareFolders:Ljava/util/List;,"Ljava/util/List<Lcom/huawei/hicloud/photosharesdk3/database/dao/SharedFolder;>;"
    :cond_2
    new-instance v9, Lcom/huawei/hicloud/photosharesdk3/database/dao/SharedFolder;

    invoke-direct {v9}, Lcom/huawei/hicloud/photosharesdk3/database/dao/SharedFolder;-><init>()V

    .line 66
    .local v9, shareFolder:Lcom/huawei/hicloud/photosharesdk3/database/dao/SharedFolder;
    const-string v0, "FolderName"

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v9, v0}, Lcom/huawei/hicloud/photosharesdk3/database/dao/SharedFolder;->setFolderName(Ljava/lang/String;)V

    .line 67
    const-string v0, "FolderType"

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    invoke-virtual {v9, v0}, Lcom/huawei/hicloud/photosharesdk3/database/dao/SharedFolder;->setFolderType(I)V

    .line 71
    const-string v0, "SharerName"

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v9, v0}, Lcom/huawei/hicloud/photosharesdk3/database/dao/SharedFolder;->setSharerName(Ljava/lang/String;)V

    .line 72
    const-string v0, "FolderPathR"

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v9, v0}, Lcom/huawei/hicloud/photosharesdk3/database/dao/SharedFolder;->setFolderPathRemote(Ljava/lang/String;)V

    .line 73
    const-string v0, "SharePath"

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v9, v0}, Lcom/huawei/hicloud/photosharesdk3/database/dao/SharedFolder;->setSharePath(Ljava/lang/String;)V

    .line 81
    const-string v0, "SharerAccount"

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v9, v0}, Lcom/huawei/hicloud/photosharesdk3/database/dao/SharedFolder;->setSharerAccount(Ljava/lang/String;)V

    .line 82
    const-string v0, "CreateTime"

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v9, v0}, Lcom/huawei/hicloud/photosharesdk3/database/dao/SharedFolder;->setCreateTime(Ljava/lang/String;)V

    .line 83
    invoke-interface {v10, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 84
    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z

    goto/16 :goto_1
.end method

.method static getTaskInfo(Lcom/huawei/hicloud/photosharesdk3/database/TaskInfoOperator;)Ljava/util/Map;
    .locals 15
    .parameter "taskInfoOperator"
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "UseSparseArrays"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/huawei/hicloud/photosharesdk3/database/TaskInfoOperator;",
            ")",
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
    .line 498
    const/4 v1, 0x0

    const-string v2, "OperationType=?"

    .line 499
    const/4 v0, 0x1

    new-array v3, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const/4 v4, 0x0

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v0, p0

    .line 498
    invoke-virtual/range {v0 .. v7}, Lcom/huawei/hicloud/photosharesdk3/database/TaskInfoOperator;->query([Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 500
    .local v9, cursor:Landroid/database/Cursor;
    new-instance v8, Ljava/util/ArrayList;

    invoke-interface {v9}, Landroid/database/Cursor;->getCount()I

    move-result v0

    invoke-direct {v8, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 501
    .local v8, add:Ljava/util/List;,"Ljava/util/List<Lcom/huawei/hicloud/photosharesdk3/database/dao/TaskInfo;>;"
    invoke-interface {v9}, Landroid/database/Cursor;->moveToFirst()Z

    .line 502
    :goto_0
    invoke-interface {v9}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 507
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 509
    const/4 v1, 0x0

    const-string v2, "OperationType=?"

    .line 510
    const/4 v0, 0x1

    new-array v3, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const/4 v4, 0x1

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v0, p0

    .line 509
    invoke-virtual/range {v0 .. v7}, Lcom/huawei/hicloud/photosharesdk3/database/TaskInfoOperator;->query([Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 511
    new-instance v10, Ljava/util/ArrayList;

    invoke-interface {v9}, Landroid/database/Cursor;->getCount()I

    move-result v0

    invoke-direct {v10, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 512
    .local v10, del:Ljava/util/List;,"Ljava/util/List<Lcom/huawei/hicloud/photosharesdk3/database/dao/TaskInfo;>;"
    invoke-interface {v9}, Landroid/database/Cursor;->moveToFirst()Z

    .line 513
    :goto_1
    invoke-interface {v9}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 518
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 520
    const/4 v1, 0x0

    const-string v2, "OperationType=?"

    .line 521
    const/4 v0, 0x1

    new-array v3, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const/4 v4, 0x2

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v0, p0

    .line 520
    invoke-virtual/range {v0 .. v7}, Lcom/huawei/hicloud/photosharesdk3/database/TaskInfoOperator;->query([Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 522
    new-instance v11, Ljava/util/ArrayList;

    invoke-interface {v9}, Landroid/database/Cursor;->getCount()I

    move-result v0

    invoke-direct {v11, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 523
    .local v11, download:Ljava/util/List;,"Ljava/util/List<Lcom/huawei/hicloud/photosharesdk3/database/dao/TaskInfo;>;"
    invoke-interface {v9}, Landroid/database/Cursor;->moveToFirst()Z

    .line 524
    :goto_2
    invoke-interface {v9}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 529
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 531
    const/4 v1, 0x0

    const-string v2, "OperationType=?"

    .line 532
    const/4 v0, 0x1

    new-array v3, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const/4 v4, 0x3

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v0, p0

    .line 531
    invoke-virtual/range {v0 .. v7}, Lcom/huawei/hicloud/photosharesdk3/database/TaskInfoOperator;->query([Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 533
    new-instance v12, Ljava/util/ArrayList;

    invoke-interface {v9}, Landroid/database/Cursor;->getCount()I

    move-result v0

    invoke-direct {v12, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 534
    .local v12, folderAdd:Ljava/util/List;,"Ljava/util/List<Lcom/huawei/hicloud/photosharesdk3/database/dao/TaskInfo;>;"
    invoke-interface {v9}, Landroid/database/Cursor;->moveToFirst()Z

    .line 535
    :goto_3
    invoke-interface {v9}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 540
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 542
    const/4 v1, 0x0

    const-string v2, "OperationType=?"

    .line 543
    const/4 v0, 0x1

    new-array v3, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const/4 v4, 0x4

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v0, p0

    .line 542
    invoke-virtual/range {v0 .. v7}, Lcom/huawei/hicloud/photosharesdk3/database/TaskInfoOperator;->query([Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 544
    new-instance v13, Ljava/util/ArrayList;

    invoke-interface {v9}, Landroid/database/Cursor;->getCount()I

    move-result v0

    invoke-direct {v13, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 545
    .local v13, folderDel:Ljava/util/List;,"Ljava/util/List<Lcom/huawei/hicloud/photosharesdk3/database/dao/TaskInfo;>;"
    invoke-interface {v9}, Landroid/database/Cursor;->moveToFirst()Z

    .line 546
    :goto_4
    invoke-interface {v9}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 551
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 553
    new-instance v14, Ljava/util/TreeMap;

    invoke-direct {v14}, Ljava/util/TreeMap;-><init>()V

    .line 554
    .local v14, result:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/Integer;Ljava/util/List<Lcom/huawei/hicloud/photosharesdk3/database/dao/TaskInfo;>;>;"
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v14, v0, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 555
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v14, v0, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 556
    const/4 v0, 0x2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v14, v0, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 557
    const/4 v0, 0x3

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v14, v0, v12}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 558
    const/4 v0, 0x4

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v14, v0, v13}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 559
    return-object v14

    .line 504
    .end local v10           #del:Ljava/util/List;,"Ljava/util/List<Lcom/huawei/hicloud/photosharesdk3/database/dao/TaskInfo;>;"
    .end local v11           #download:Ljava/util/List;,"Ljava/util/List<Lcom/huawei/hicloud/photosharesdk3/database/dao/TaskInfo;>;"
    .end local v12           #folderAdd:Ljava/util/List;,"Ljava/util/List<Lcom/huawei/hicloud/photosharesdk3/database/dao/TaskInfo;>;"
    .end local v13           #folderDel:Ljava/util/List;,"Ljava/util/List<Lcom/huawei/hicloud/photosharesdk3/database/dao/TaskInfo;>;"
    .end local v14           #result:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/Integer;Ljava/util/List<Lcom/huawei/hicloud/photosharesdk3/database/dao/TaskInfo;>;>;"
    :cond_0
    invoke-static {v9}, Lcom/huawei/hicloud/photosharesdk3/database/TaskInfoOperator;->cursor2TaskInfo(Landroid/database/Cursor;)Lcom/huawei/hicloud/photosharesdk3/database/dao/TaskInfo;

    move-result-object v0

    invoke-interface {v8, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 505
    invoke-interface {v9}, Landroid/database/Cursor;->moveToNext()Z

    goto/16 :goto_0

    .line 515
    .restart local v10       #del:Ljava/util/List;,"Ljava/util/List<Lcom/huawei/hicloud/photosharesdk3/database/dao/TaskInfo;>;"
    :cond_1
    invoke-static {v9}, Lcom/huawei/hicloud/photosharesdk3/database/TaskInfoOperator;->cursor2TaskInfo(Landroid/database/Cursor;)Lcom/huawei/hicloud/photosharesdk3/database/dao/TaskInfo;

    move-result-object v0

    invoke-interface {v10, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 516
    invoke-interface {v9}, Landroid/database/Cursor;->moveToNext()Z

    goto/16 :goto_1

    .line 526
    .restart local v11       #download:Ljava/util/List;,"Ljava/util/List<Lcom/huawei/hicloud/photosharesdk3/database/dao/TaskInfo;>;"
    :cond_2
    invoke-static {v9}, Lcom/huawei/hicloud/photosharesdk3/database/TaskInfoOperator;->cursor2TaskInfo(Landroid/database/Cursor;)Lcom/huawei/hicloud/photosharesdk3/database/dao/TaskInfo;

    move-result-object v0

    invoke-interface {v11, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 527
    invoke-interface {v9}, Landroid/database/Cursor;->moveToNext()Z

    goto/16 :goto_2

    .line 537
    .restart local v12       #folderAdd:Ljava/util/List;,"Ljava/util/List<Lcom/huawei/hicloud/photosharesdk3/database/dao/TaskInfo;>;"
    :cond_3
    invoke-static {v9}, Lcom/huawei/hicloud/photosharesdk3/database/TaskInfoOperator;->cursor2TaskInfo(Landroid/database/Cursor;)Lcom/huawei/hicloud/photosharesdk3/database/dao/TaskInfo;

    move-result-object v0

    invoke-interface {v12, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 538
    invoke-interface {v9}, Landroid/database/Cursor;->moveToNext()Z

    goto/16 :goto_3

    .line 548
    .restart local v13       #folderDel:Ljava/util/List;,"Ljava/util/List<Lcom/huawei/hicloud/photosharesdk3/database/dao/TaskInfo;>;"
    :cond_4
    invoke-static {v9}, Lcom/huawei/hicloud/photosharesdk3/database/TaskInfoOperator;->cursor2TaskInfo(Landroid/database/Cursor;)Lcom/huawei/hicloud/photosharesdk3/database/dao/TaskInfo;

    move-result-object v0

    invoke-interface {v13, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 549
    invoke-interface {v9}, Landroid/database/Cursor;->moveToNext()Z

    goto :goto_4
.end method

.method private static isQueryAll(I)Z
    .locals 1
    .parameter "folderType"

    .prologue
    .line 163
    const/4 v0, 0x3

    if-ne v0, p0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static varargs query(Lcom/huawei/hicloud/photosharesdk3/database/DBOperator3;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Ljava/util/List;
    .locals 10
    .parameter
    .parameter "matchKey"
    .parameter "matchValue"
    .parameter "columnNames"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/huawei/hicloud/photosharesdk3/database/DBOperator3",
            "<TT;>;",
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
    .local p0, db:Lcom/huawei/hicloud/photosharesdk3/database/DBOperator3;,"Lcom/huawei/hicloud/photosharesdk3/database/DBOperator3<TT;>;"
    const/4 v4, 0x0

    .line 710
    invoke-static {p1}, Lcom/huawei/hicloud/photosharesdk/helper/StringUtil;->isBlankString(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p2}, Lcom/huawei/hicloud/photosharesdk/helper/StringUtil;->isBlankString(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 712
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "matchKey or matchValue is(are) blank String"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 714
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "=?"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 715
    const/4 v0, 0x1

    new-array v3, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    aput-object p2, v3, v0

    move-object v0, p0

    move-object v1, p3

    move-object v5, v4

    move-object v6, v4

    move-object v7, v4

    .line 714
    invoke-virtual/range {v0 .. v7}, Lcom/huawei/hicloud/photosharesdk3/database/DBOperator3;->query([Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 716
    .local v8, cursor:Landroid/database/Cursor;
    invoke-static {v8, p3}, Lcom/huawei/hicloud/photosharesdk3/database/DBFuncImplementation;->cursor2Fields(Landroid/database/Cursor;[Ljava/lang/String;)Ljava/util/List;

    move-result-object v9

    .line 717
    .local v9, result:Ljava/util/List;,"Ljava/util/List<[Ljava/lang/Object;>;"
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 718
    return-object v9
.end method

.method static queryAllData(Lcom/huawei/hicloud/photosharesdk3/database/DBOperator3;)Ljava/util/List;
    .locals 11
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/huawei/hicloud/photosharesdk3/database/DBOperator3",
            "<TT;>;)",
            "Ljava/util/List",
            "<",
            "Lcom/huawei/hicloud/photosharesdk3/database/dao/FolderPhoto;",
            ">;"
        }
    .end annotation

    .prologue
    .local p0, db:Lcom/huawei/hicloud/photosharesdk3/database/DBOperator3;,"Lcom/huawei/hicloud/photosharesdk3/database/DBOperator3<TT;>;"
    const/4 v2, 0x0

    .line 739
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 740
    .local v10, photos:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/huawei/hicloud/photosharesdk3/database/dao/FolderPhoto;>;"
    const/4 v0, 0x2

    new-array v1, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v3, "PhotoPathR"

    aput-object v3, v1, v0

    const/4 v0, 0x1

    .line 741
    const-string v3, "CreateTime"

    aput-object v3, v1, v0

    .local v1, colums:[Ljava/lang/String;
    move-object v0, p0

    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    move-object v6, v2

    move-object v7, v2

    .line 742
    invoke-virtual/range {v0 .. v7}, Lcom/huawei/hicloud/photosharesdk3/database/DBOperator3;->query([Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 743
    .local v8, cursor:Landroid/database/Cursor;
    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    .line 744
    :goto_0
    invoke-interface {v8}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 754
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 756
    return-object v10

    .line 746
    :cond_0
    new-instance v9, Lcom/huawei/hicloud/photosharesdk3/database/dao/FolderPhoto;

    invoke-direct {v9}, Lcom/huawei/hicloud/photosharesdk3/database/dao/FolderPhoto;-><init>()V

    .line 748
    .local v9, folderPhoto:Lcom/huawei/hicloud/photosharesdk3/database/dao/FolderPhoto;
    const-string v0, "PhotoPathR"

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    .line 747
    invoke-interface {v8, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v9, v0}, Lcom/huawei/hicloud/photosharesdk3/database/dao/FolderPhoto;->setPhotoPathRemote(Ljava/lang/String;)V

    .line 750
    const-string v0, "CreateTime"

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    .line 749
    invoke-interface {v8, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v9, v0}, Lcom/huawei/hicloud/photosharesdk3/database/dao/FolderPhoto;->setCreateTime(Ljava/lang/String;)V

    .line 751
    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z

    .line 752
    invoke-virtual {v10, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method static queryTableSize(Lcom/huawei/hicloud/photosharesdk3/database/DBOperator3;)I
    .locals 10
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/huawei/hicloud/photosharesdk3/database/DBOperator3",
            "<TT;>;)I"
        }
    .end annotation

    .prologue
    .local p0, db:Lcom/huawei/hicloud/photosharesdk3/database/DBOperator3;,"Lcom/huawei/hicloud/photosharesdk3/database/DBOperator3<TT;>;"
    const/4 v2, 0x0

    .line 726
    const/4 v9, -0x1

    .line 727
    .local v9, result:I
    const/4 v0, 0x1

    new-array v1, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v3, "_id"

    aput-object v3, v1, v0

    .local v1, colums:[Ljava/lang/String;
    move-object v0, p0

    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    move-object v6, v2

    move-object v7, v2

    .line 728
    invoke-virtual/range {v0 .. v7}, Lcom/huawei/hicloud/photosharesdk3/database/DBOperator3;->query([Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 729
    .local v8, cursor:Landroid/database/Cursor;
    invoke-interface {v8}, Landroid/database/Cursor;->getCount()I

    move-result v9

    .line 730
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 731
    return v9
.end method

.method static unbindReciver2Folder(Lcom/huawei/hicloud/photosharesdk3/database/dao/FolderReceiver;Lcom/huawei/hicloud/photosharesdk3/database/FolderReceiverOperator;)Z
    .locals 5
    .parameter "folderReceiver"
    .parameter "folderReceiverOperator"

    .prologue
    .line 482
    invoke-virtual {p0}, Lcom/huawei/hicloud/photosharesdk3/database/dao/FolderReceiver;->getReceiverAccount()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_0

    .line 484
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "folderReceiver.receiverAccount is null "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 486
    :cond_0
    const/4 v0, 0x1

    .line 487
    .local v0, result:Z
    const-string v1, "ReceiverAccount=?"

    .line 488
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    invoke-virtual {p0}, Lcom/huawei/hicloud/photosharesdk3/database/dao/FolderReceiver;->getReceiverAccount()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    .line 487
    invoke-virtual {p1, v1, v2}, Lcom/huawei/hicloud/photosharesdk3/database/FolderReceiverOperator;->delete(Ljava/lang/String;[Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_1

    .line 490
    const/4 v0, 0x0

    .line 492
    :cond_1
    return v0
.end method

.method static varargs update(Lcom/huawei/hicloud/photosharesdk3/database/DBOperator3;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Z
    .locals 5
    .parameter
    .parameter "matchKey"
    .parameter "matchValue"
    .parameter "args"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/huawei/hicloud/photosharesdk3/database/DBOperator3",
            "<TT;>;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            ")Z"
        }
    .end annotation

    .prologue
    .local p0, db:Lcom/huawei/hicloud/photosharesdk3/database/DBOperator3;,"Lcom/huawei/hicloud/photosharesdk3/database/DBOperator3<TT;>;"
    const/4 v4, 0x1

    .line 638
    invoke-static {p1}, Lcom/huawei/hicloud/photosharesdk/helper/StringUtil;->isBlankString(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {p2}, Lcom/huawei/hicloud/photosharesdk/helper/StringUtil;->isBlankString(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 640
    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "matchKey or matchValue is(are) blank String"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 642
    :cond_1
    const/4 v0, 0x1

    .line 643
    .local v0, result:Z
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "=?"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-array v2, v4, [Ljava/lang/String;

    const/4 v3, 0x0

    aput-object p2, v2, v3

    invoke-virtual {p0, v1, v2, p3}, Lcom/huawei/hicloud/photosharesdk3/database/DBOperator3;->update(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)I

    move-result v1

    if-ge v1, v4, :cond_2

    .line 645
    const/4 v0, 0x0

    .line 647
    :cond_2
    return v0
.end method

.method public static updateFolderReceiver(Lcom/huawei/hicloud/photosharesdk3/database/FolderReceiverOperator;Lcom/huawei/hicloud/photosharesdk3/database/dao/FolderReceiver;)Z
    .locals 5
    .parameter "folderReceiverOperator"
    .parameter "folderReceiver"

    .prologue
    .line 606
    invoke-virtual {p1}, Lcom/huawei/hicloud/photosharesdk3/database/dao/FolderReceiver;->getSharedPath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/huawei/hicloud/photosharesdk/helper/StringUtil;->isBlankString(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 607
    invoke-virtual {p1}, Lcom/huawei/hicloud/photosharesdk3/database/dao/FolderReceiver;->getReceiverAccount()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/huawei/hicloud/photosharesdk/helper/StringUtil;->isBlankString(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 609
    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "folderReceiver\'s parameter is wrong "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 611
    :cond_1
    const/4 v0, 0x1

    .line 612
    .local v0, result:Z
    const-string v1, "ReceiverAccount=? AND SharedPath=?"

    .line 614
    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    invoke-virtual {p1}, Lcom/huawei/hicloud/photosharesdk3/database/dao/FolderReceiver;->getReceiverAccount()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    invoke-virtual {p1}, Lcom/huawei/hicloud/photosharesdk3/database/dao/FolderReceiver;->getSharedPath()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    .line 612
    invoke-virtual {p0, p1, v1, v2}, Lcom/huawei/hicloud/photosharesdk3/database/FolderReceiverOperator;->update(Lcom/huawei/hicloud/photosharesdk3/database/dao/FolderReceiver;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_2

    .line 616
    const/4 v0, 0x0

    .line 618
    :cond_2
    return v0
.end method

.method public static updateOrInsert(Lcom/huawei/hicloud/photosharesdk3/database/DBOperator3;Ljava/lang/Object;[Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;
    .locals 8
    .parameter
    .parameter
    .parameter "matchKeys"
    .parameter "matchValues"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/huawei/hicloud/photosharesdk3/database/DBOperator3",
            "<TT;>;TT;[",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .local p0, db:Lcom/huawei/hicloud/photosharesdk3/database/DBOperator3;,"Lcom/huawei/hicloud/photosharesdk3/database/DBOperator3<TT;>;"
    .local p1, obj:Ljava/lang/Object;,"TT;"
    const/4 v4, 0x0

    .line 661
    array-length v3, p2

    array-length v5, p3

    if-eq v3, v5, :cond_0

    .line 663
    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "matchKeys and matchValues is not equal in length. keys:"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 664
    array-length v5, p2

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " values:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    array-length v5, p3

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 663
    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 666
    :cond_0
    const-string v1, ""

    .line 667
    .local v1, selection:Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 668
    .local v2, stringBuilder:Ljava/lang/StringBuilder;
    array-length v5, p2

    move v3, v4

    :goto_0
    if-lt v3, v5, :cond_1

    .line 672
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 673
    const-string v3, "AND"

    invoke-virtual {v1, v3}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {v1, v4, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 674
    invoke-virtual {p0, p1, v1, p3}, Lcom/huawei/hicloud/photosharesdk3/database/DBOperator3;->updateOrInsert(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    return-object v3

    .line 668
    :cond_1
    aget-object v0, p2, v3

    .line 670
    .local v0, matchKey:Ljava/lang/String;
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "=? AND "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 668
    add-int/lit8 v3, v3, 0x1

    goto :goto_0
.end method

.method static updateShareFolder(Lcom/huawei/hicloud/photosharesdk3/database/dao/SharedFolder;Lcom/huawei/hicloud/photosharesdk3/database/SharedFolderOperator;)Z
    .locals 6
    .parameter "sharedFolder"
    .parameter "sharedFolderOperator"

    .prologue
    const/4 v5, 0x1

    .line 430
    invoke-virtual {p0}, Lcom/huawei/hicloud/photosharesdk3/database/dao/SharedFolder;->getFolderPathRemote()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_0

    .line 432
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "sharedFolder.folderPath is null "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 434
    :cond_0
    const/4 v0, 0x1

    .line 435
    .local v0, result:Z
    const-string v1, "FolderPathR=?"

    .line 436
    new-array v2, v5, [Ljava/lang/String;

    const/4 v3, 0x0

    invoke-virtual {p0}, Lcom/huawei/hicloud/photosharesdk3/database/dao/SharedFolder;->getFolderPathRemote()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    .line 435
    invoke-virtual {p1, p0, v1, v2}, Lcom/huawei/hicloud/photosharesdk3/database/SharedFolderOperator;->update(Lcom/huawei/hicloud/photosharesdk3/database/dao/SharedFolder;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v1

    .line 436
    if-ge v1, v5, :cond_1

    .line 438
    const/4 v0, 0x0

    .line 440
    :cond_1
    return v0
.end method

.method static updateTaskInfo(Lcom/huawei/hicloud/photosharesdk3/database/dao/TaskInfo;Lcom/huawei/hicloud/photosharesdk3/database/TaskInfoOperator;)Z
    .locals 6
    .parameter "taskInfo"
    .parameter "taskInfoOperator"

    .prologue
    const/4 v5, 0x1

    .line 372
    invoke-virtual {p0}, Lcom/huawei/hicloud/photosharesdk3/database/dao/TaskInfo;->getPhotoPathRemote()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_0

    .line 374
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "taskInfo.photoPaht is null "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 376
    :cond_0
    const/4 v0, 0x1

    .line 377
    .local v0, result:Z
    const-string v1, "PhotoPathR=?"

    .line 378
    new-array v2, v5, [Ljava/lang/String;

    const/4 v3, 0x0

    invoke-virtual {p0}, Lcom/huawei/hicloud/photosharesdk3/database/dao/TaskInfo;->getPhotoPathRemote()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    .line 377
    invoke-virtual {p1, p0, v1, v2}, Lcom/huawei/hicloud/photosharesdk3/database/TaskInfoOperator;->update(Lcom/huawei/hicloud/photosharesdk3/database/dao/TaskInfo;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v1

    .line 378
    if-ge v1, v5, :cond_1

    .line 380
    const/4 v0, 0x0

    .line 382
    :cond_1
    return v0
.end method

.method private static validateFolderType(I)Z
    .locals 2
    .parameter "folderType"

    .prologue
    .line 157
    const/4 v1, 0x3

    if-gt p0, v1, :cond_0

    const/4 v1, -0x1

    if-le p0, v1, :cond_0

    const/4 v0, 0x1

    .line 158
    .local v0, flag:Z
    :goto_0
    return v0

    .line 157
    .end local v0           #flag:Z
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
