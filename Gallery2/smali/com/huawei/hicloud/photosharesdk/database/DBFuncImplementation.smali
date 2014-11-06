.class Lcom/huawei/hicloud/photosharesdk/database/DBFuncImplementation;
.super Ljava/lang/Object;
.source "DBFuncImplementation.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 36
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 38
    return-void
.end method

.method public static addMyPhotoInfo(Lcom/huawei/hicloud/photosharesdk/database/MyPhotoInfoOperator;Ljava/util/List;)Z
    .locals 7
    .parameter "myPhotoInfoOperator"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/huawei/hicloud/photosharesdk/database/MyPhotoInfoOperator;",
            "Ljava/util/List",
            "<",
            "Lcom/huawei/hicloud/photosharesdk/database/dao/MyPhotoInfo;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 408
    .local p1, myPhotoInfoes:Ljava/util/List;,"Ljava/util/List<Lcom/huawei/hicloud/photosharesdk/database/dao/MyPhotoInfo;>;"
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "folderPhotos is empty "

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 409
    :cond_0
    const/4 v1, 0x1

    .line 410
    .local v1, result:Z
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_2

    .line 413
    return v1

    .line 410
    :cond_2
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/huawei/hicloud/photosharesdk/database/dao/MyPhotoInfo;

    .line 411
    .local v0, myPhotoInfo:Lcom/huawei/hicloud/photosharesdk/database/dao/MyPhotoInfo;
    invoke-virtual {p0, v0}, Lcom/huawei/hicloud/photosharesdk/database/MyPhotoInfoOperator;->insert(Lcom/huawei/hicloud/photosharesdk/database/dao/MyPhotoInfo;)J

    move-result-wide v3

    const-wide/16 v5, -0x1

    cmp-long v3, v3, v5

    if-nez v3, :cond_1

    const/4 v1, 0x0

    goto :goto_0
.end method

.method static addPhoto(Ljava/util/List;Lcom/huawei/hicloud/photosharesdk/database/FolderPhotoOperator;)Z
    .locals 7
    .parameter
    .parameter "folderPhotoOperator"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/huawei/hicloud/photosharesdk/database/dao/FolderPhoto;",
            ">;",
            "Lcom/huawei/hicloud/photosharesdk/database/FolderPhotoOperator;",
            ")Z"
        }
    .end annotation

    .prologue
    .line 218
    .local p0, folderPhotos:Ljava/util/List;,"Ljava/util/List<Lcom/huawei/hicloud/photosharesdk/database/dao/FolderPhoto;>;"
    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "folderPhotos is empty "

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 219
    :cond_0
    const/4 v1, 0x1

    .line 220
    .local v1, result:Z
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_2

    .line 223
    return v1

    .line 220
    :cond_2
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/huawei/hicloud/photosharesdk/database/dao/FolderPhoto;

    .line 221
    .local v0, folderPhoto:Lcom/huawei/hicloud/photosharesdk/database/dao/FolderPhoto;
    invoke-virtual {p1, v0}, Lcom/huawei/hicloud/photosharesdk/database/FolderPhotoOperator;->insert(Lcom/huawei/hicloud/photosharesdk/database/dao/FolderPhoto;)J

    move-result-wide v3

    const-wide/16 v5, -0x1

    cmp-long v3, v3, v5

    if-nez v3, :cond_1

    const/4 v1, 0x0

    goto :goto_0
.end method

.method static addReceiver(Ljava/util/List;Lcom/huawei/hicloud/photosharesdk/database/ReceiverInfoOperator;)Z
    .locals 7
    .parameter
    .parameter "receiverInfoOperator"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/huawei/hicloud/photosharesdk/database/dao/ReceiverInfo;",
            ">;",
            "Lcom/huawei/hicloud/photosharesdk/database/ReceiverInfoOperator;",
            ")Z"
        }
    .end annotation

    .prologue
    .line 327
    .local p0, receiverInfos:Ljava/util/List;,"Ljava/util/List<Lcom/huawei/hicloud/photosharesdk/database/dao/ReceiverInfo;>;"
    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 328
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

    .line 329
    :cond_0
    const/4 v1, 0x1

    .line 330
    .local v1, result:Z
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_2

    .line 333
    return v1

    .line 330
    :cond_2
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/huawei/hicloud/photosharesdk/database/dao/ReceiverInfo;

    .line 331
    .local v0, receiverInfo:Lcom/huawei/hicloud/photosharesdk/database/dao/ReceiverInfo;
    invoke-virtual {p1, v0}, Lcom/huawei/hicloud/photosharesdk/database/ReceiverInfoOperator;->insert(Lcom/huawei/hicloud/photosharesdk/database/dao/ReceiverInfo;)J

    move-result-wide v3

    const-wide/16 v5, -0x1

    cmp-long v3, v3, v5

    if-nez v3, :cond_1

    const/4 v1, 0x0

    goto :goto_0
.end method

.method static addShareFolder(Lcom/huawei/hicloud/photosharesdk/database/dao/SharedFolder;Lcom/huawei/hicloud/photosharesdk/database/SharedFolderOperator;)Z
    .locals 5
    .parameter "sharedFolder"
    .parameter "sharedFolderOperator"

    .prologue
    .line 283
    const/4 v0, 0x1

    .line 284
    .local v0, result:Z
    invoke-virtual {p1, p0}, Lcom/huawei/hicloud/photosharesdk/database/SharedFolderOperator;->insert(Lcom/huawei/hicloud/photosharesdk/database/dao/SharedFolder;)J

    move-result-wide v1

    const-wide/16 v3, -0x1

    cmp-long v1, v1, v3

    if-nez v1, :cond_0

    const/4 v0, 0x0

    .line 285
    :cond_0
    return v0
.end method

.method static addTaskInfo(Lcom/huawei/hicloud/photosharesdk/database/dao/TaskInfo;Lcom/huawei/hicloud/photosharesdk/database/TaskInfoOperator;)Z
    .locals 5
    .parameter "taskInfo"
    .parameter "taskInfoOperator"

    .prologue
    .line 242
    const/4 v0, 0x1

    .line 243
    .local v0, result:Z
    invoke-virtual {p1, p0}, Lcom/huawei/hicloud/photosharesdk/database/TaskInfoOperator;->insert(Lcom/huawei/hicloud/photosharesdk/database/dao/TaskInfo;)J

    move-result-wide v1

    const-wide/16 v3, -0x1

    cmp-long v1, v1, v3

    if-nez v1, :cond_0

    const/4 v0, 0x0

    .line 244
    :cond_0
    return v0
.end method

.method static bindReciver2Folder(Lcom/huawei/hicloud/photosharesdk/database/dao/FolderReceiver;Lcom/huawei/hicloud/photosharesdk/database/FolderReceiverOperator;)Z
    .locals 5
    .parameter "folderReceiver"
    .parameter "folderReceiverOperator"

    .prologue
    .line 338
    const/4 v0, 0x1

    .line 339
    .local v0, result:Z
    invoke-virtual {p1, p0}, Lcom/huawei/hicloud/photosharesdk/database/FolderReceiverOperator;->insert(Lcom/huawei/hicloud/photosharesdk/database/dao/FolderReceiver;)J

    move-result-wide v1

    const-wide/16 v3, -0x1

    cmp-long v1, v1, v3

    if-nez v1, :cond_0

    const/4 v0, 0x0

    .line 340
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
    .line 492
    new-instance v2, Ljava/util/ArrayList;

    invoke-interface {p0}, Landroid/database/Cursor;->getCount()I

    move-result v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 493
    .local v2, result:Ljava/util/List;,"Ljava/util/List<[Ljava/lang/Object;>;"
    invoke-interface {p0}, Landroid/database/Cursor;->moveToFirst()Z

    .line 494
    :goto_0
    invoke-interface {p0}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 514
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    .line 515
    return-object v2

    .line 495
    :cond_0
    array-length v3, p1

    new-array v0, v3, [Ljava/lang/Object;

    .line 496
    .local v0, data:[Ljava/lang/Object;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    array-length v3, p1

    if-lt v1, v3, :cond_1

    .line 511
    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 512
    invoke-interface {p0}, Landroid/database/Cursor;->moveToNext()Z

    goto :goto_0

    .line 497
    :cond_1
    invoke-interface {p0, v1}, Landroid/database/Cursor;->getType(I)I

    move-result v3

    packed-switch v3, :pswitch_data_0

    .line 496
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 499
    :pswitch_0
    invoke-interface {p0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v0, v1

    goto :goto_2

    .line 502
    :pswitch_1
    invoke-interface {p0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v0, v1

    goto :goto_2

    .line 505
    :pswitch_2
    invoke-interface {p0, v1}, Landroid/database/Cursor;->getFloat(I)F

    move-result v3

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    aput-object v3, v0, v1

    goto :goto_2

    .line 497
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_0
    .end packed-switch
.end method

.method static delPhoto(Ljava/util/List;Lcom/huawei/hicloud/photosharesdk/database/FolderPhotoOperator;)Z
    .locals 7
    .parameter
    .parameter "folderPhotoOperator"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/huawei/hicloud/photosharesdk/database/dao/FolderPhoto;",
            ">;",
            "Lcom/huawei/hicloud/photosharesdk/database/FolderPhotoOperator;",
            ")Z"
        }
    .end annotation

    .prologue
    .line 227
    .local p0, folderPhotos:Ljava/util/List;,"Ljava/util/List<Lcom/huawei/hicloud/photosharesdk/database/dao/FolderPhoto;>;"
    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "folderPhotos is empty "

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 228
    :cond_0
    const/4 v1, 0x1

    .line 229
    .local v1, result:Z
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_2

    .line 238
    return v1

    .line 229
    :cond_2
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/huawei/hicloud/photosharesdk/database/dao/FolderPhoto;

    .line 230
    .local v0, folderPhoto:Lcom/huawei/hicloud/photosharesdk/database/dao/FolderPhoto;
    invoke-virtual {v0}, Lcom/huawei/hicloud/photosharesdk/database/dao/FolderPhoto;->getPhotoPathRemote()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_3

    .line 233
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "folderPhoto.photoPath is null"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 235
    :cond_3
    const-string v3, "PhotoPathR=?"

    .line 236
    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    invoke-virtual {v0}, Lcom/huawei/hicloud/photosharesdk/database/dao/FolderPhoto;->getPhotoPathRemote()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    .line 235
    invoke-virtual {p1, v3, v4}, Lcom/huawei/hicloud/photosharesdk/database/FolderPhotoOperator;->delete(Ljava/lang/String;[Ljava/lang/String;)I

    move-result v3

    if-nez v3, :cond_1

    .line 236
    const/4 v1, 0x0

    goto :goto_0
.end method

.method static delShareFolder(Lcom/huawei/hicloud/photosharesdk/database/dao/SharedFolder;Lcom/huawei/hicloud/photosharesdk/database/SharedFolderOperator;)Z
    .locals 6
    .parameter "sharedFolder"
    .parameter "sharedFolderOperator"

    .prologue
    const/4 v5, 0x1

    .line 298
    invoke-virtual {p0}, Lcom/huawei/hicloud/photosharesdk/database/dao/SharedFolder;->getSharePath()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_0

    .line 299
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

    .line 300
    :cond_0
    const/4 v0, 0x1

    .line 301
    .local v0, result:Z
    const-string v1, "SharePath=?"

    .line 302
    new-array v2, v5, [Ljava/lang/String;

    const/4 v3, 0x0

    invoke-virtual {p0}, Lcom/huawei/hicloud/photosharesdk/database/dao/SharedFolder;->getSharePath()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    .line 301
    invoke-virtual {p1, v1, v2}, Lcom/huawei/hicloud/photosharesdk/database/SharedFolderOperator;->delete(Ljava/lang/String;[Ljava/lang/String;)I

    move-result v1

    .line 302
    if-ge v1, v5, :cond_1

    const/4 v0, 0x0

    .line 303
    :cond_1
    return v0
.end method

.method static delTaskInfo(Lcom/huawei/hicloud/photosharesdk/database/dao/TaskInfo;Lcom/huawei/hicloud/photosharesdk/database/TaskInfoOperator;)Z
    .locals 6
    .parameter "taskInfo"
    .parameter "taskInfoOperator"

    .prologue
    const/4 v5, 0x1

    .line 256
    invoke-virtual {p0}, Lcom/huawei/hicloud/photosharesdk/database/dao/TaskInfo;->getPhotoPathRemote()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_0

    .line 257
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

    .line 258
    :cond_0
    const/4 v0, 0x1

    .line 259
    .local v0, result:Z
    const-string v1, "PhotoPathR=?"

    .line 260
    new-array v2, v5, [Ljava/lang/String;

    const/4 v3, 0x0

    invoke-virtual {p0}, Lcom/huawei/hicloud/photosharesdk/database/dao/TaskInfo;->getPhotoPathRemote()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    .line 259
    invoke-virtual {p1, v1, v2}, Lcom/huawei/hicloud/photosharesdk/database/TaskInfoOperator;->delete(Ljava/lang/String;[Ljava/lang/String;)I

    move-result v1

    .line 260
    if-ge v1, v5, :cond_1

    const/4 v0, 0x0

    .line 261
    :cond_1
    return v0
.end method

.method static delete(Lcom/huawei/hicloud/photosharesdk/database/DBOperator;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 5
    .parameter
    .parameter "matchKey"
    .parameter "matchValue"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/huawei/hicloud/photosharesdk/database/DBOperator",
            "<TT;>;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")Z"
        }
    .end annotation

    .prologue
    .local p0, db:Lcom/huawei/hicloud/photosharesdk/database/DBOperator;,"Lcom/huawei/hicloud/photosharesdk/database/DBOperator<TT;>;"
    const/4 v4, 0x1

    .line 530
    invoke-static {p1}, Lcom/huawei/hicloud/photosharesdk/helper/StringUtil;->isBlankString(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {p2}, Lcom/huawei/hicloud/photosharesdk/helper/StringUtil;->isBlankString(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 531
    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "matchKey or matchValue is(are) blank String"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 532
    :cond_1
    const/4 v0, 0x1

    .line 533
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

    invoke-virtual {p0, v1, v2}, Lcom/huawei/hicloud/photosharesdk/database/DBOperator;->delete(Ljava/lang/String;[Ljava/lang/String;)I

    move-result v1

    if-ge v1, v4, :cond_2

    const/4 v0, 0x0

    .line 534
    :cond_2
    return v0
.end method

.method static deleteDatabase()V
    .locals 0

    .prologue
    .line 41
    invoke-static {}, Lcom/huawei/hicloud/photosharesdk/database/DBOperator;->deleteDatabase()V

    .line 42
    return-void
.end method

.method public static deleteTaskInfo(Lcom/huawei/hicloud/photosharesdk/database/TaskInfoOperator;Ljava/lang/String;)Z
    .locals 6
    .parameter "taskInfoOperator"
    .parameter "photoPath_REMOTE"

    .prologue
    .line 459
    invoke-static {p1}, Lcom/huawei/hicloud/photosharesdk/helper/StringUtil;->isBlankString(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 460
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "photoPath_REMOTE is NULL"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 461
    :cond_0
    const/4 v0, 0x1

    .line 462
    .local v0, result:Z
    const-string v1, "PhotoPathR like ?"

    .line 463
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

    .line 462
    invoke-virtual {p0, v1, v2}, Lcom/huawei/hicloud/photosharesdk/database/TaskInfoOperator;->delete(Ljava/lang/String;[Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_1

    .line 463
    const/4 v0, 0x0

    .line 464
    :cond_1
    return v0
.end method

.method static getFriendsInfo(Ljava/lang/String;Lcom/huawei/hicloud/photosharesdk/database/FolderReceiverOperator;)Ljava/util/List;
    .locals 11
    .parameter "sharedPath"
    .parameter "folderReceiverOperator"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/huawei/hicloud/photosharesdk/database/FolderReceiverOperator;",
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

    .line 196
    if-nez p0, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "folderPath is null "

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 197
    :cond_0
    const-string v0, ""

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "folderPath is \"\" "

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 198
    :cond_1
    const/4 v0, 0x2

    new-array v1, v0, [Ljava/lang/String;

    .line 199
    const-string v0, "ReceiverAccount"

    aput-object v0, v1, v5

    const-string v0, "ReceiverState"

    aput-object v0, v1, v3

    .line 200
    const-string v2, "SharedPath=?"

    new-array v3, v3, [Ljava/lang/String;

    aput-object p0, v3, v5

    .line 201
    const-string v6, "ReceiverAccount ASC"

    move-object v0, p1

    move-object v5, v4

    move-object v7, v4

    .line 198
    invoke-virtual/range {v0 .. v7}, Lcom/huawei/hicloud/photosharesdk/database/FolderReceiverOperator;->query([Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 202
    .local v8, cursor:Landroid/database/Cursor;
    new-instance v10, Ljava/util/ArrayList;

    invoke-interface {v8}, Landroid/database/Cursor;->getCount()I

    move-result v0

    invoke-direct {v10, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 203
    .local v10, friendsInfos:Ljava/util/List;,"Ljava/util/List<Lcom/huawei/hicloud/photosharesdk/api/vo/FriendsInfo;>;"
    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    .line 204
    :goto_0
    invoke-interface {v8}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 213
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 214
    return-object v10

    .line 205
    :cond_2
    new-instance v9, Lcom/huawei/hicloud/photosharesdk/api/vo/FriendsInfo;

    invoke-direct {v9}, Lcom/huawei/hicloud/photosharesdk/api/vo/FriendsInfo;-><init>()V

    .line 207
    .local v9, friendsInfo:Lcom/huawei/hicloud/photosharesdk/api/vo/FriendsInfo;
    const-string v0, "ReceiverAccount"

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    .line 206
    invoke-interface {v8, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v9, v0}, Lcom/huawei/hicloud/photosharesdk/api/vo/FriendsInfo;->setAccount(Ljava/lang/String;)V

    .line 209
    const-string v0, "ReceiverState"

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    .line 208
    invoke-interface {v8, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    invoke-virtual {v9, v0}, Lcom/huawei/hicloud/photosharesdk/api/vo/FriendsInfo;->setState(I)V

    .line 210
    invoke-interface {v10, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 211
    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z

    goto :goto_0
.end method

.method private static getLatestPhotoPath(Lcom/huawei/hicloud/photosharesdk/database/FolderPhotoOperator;Ljava/lang/String;)Ljava/lang/String;
    .locals 11
    .parameter "folderPhotoOperator"
    .parameter "sharePath"

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    const/4 v10, 0x0

    .line 116
    .line 117
    new-array v1, v3, [Ljava/lang/String;

    const-string v0, "PhotoPathR"

    aput-object v0, v1, v10

    .line 118
    const-string v2, "SharedPath=?"

    new-array v3, v3, [Ljava/lang/String;

    aput-object p1, v3, v10

    .line 119
    const-string v6, "CreateTime DESC,PhotoPathR ASC"

    .line 120
    const-string v7, "1"

    move-object v0, p0

    move-object v5, v4

    .line 116
    invoke-virtual/range {v0 .. v7}, Lcom/huawei/hicloud/photosharesdk/database/FolderPhotoOperator;->query([Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 121
    .local v8, cursor:Landroid/database/Cursor;
    const/4 v9, 0x0

    .line 122
    .local v9, photoPathR:Ljava/lang/String;
    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    .line 123
    invoke-interface {v8}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-interface {v8, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 124
    :cond_0
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 125
    return-object v9
.end method

.method public static getMyPhotoInfo(Lcom/huawei/hicloud/photosharesdk/database/MyPhotoInfoOperator;Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;
    .locals 10
    .parameter "myPhotoInfoOperator"
    .parameter "order"
    .parameter "limit"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/huawei/hicloud/photosharesdk/database/MyPhotoInfoOperator;",
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
    const/4 v1, 0x0

    .line 418
    .line 419
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "CreateTime"

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    move-object v0, p0

    move-object v2, v1

    move-object v3, v1

    move-object v4, v1

    move-object v5, v1

    move-object v7, p2

    .line 418
    invoke-virtual/range {v0 .. v7}, Lcom/huawei/hicloud/photosharesdk/database/MyPhotoInfoOperator;->query([Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 420
    .local v8, cursor:Landroid/database/Cursor;
    new-instance v9, Ljava/util/ArrayList;

    invoke-interface {v8}, Landroid/database/Cursor;->getCount()I

    move-result v0

    invoke-direct {v9, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 421
    .local v9, result:Ljava/util/List;,"Ljava/util/List<Lcom/huawei/hicloud/photosharesdk/database/dao/MyPhotoInfo;>;"
    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    .line 422
    :goto_0
    invoke-interface {v8}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 426
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 427
    return-object v9

    .line 423
    :cond_0
    invoke-static {v8}, Lcom/huawei/hicloud/photosharesdk/database/MyPhotoInfoOperator;->cursor2MyPhotoInfo(Landroid/database/Cursor;)Lcom/huawei/hicloud/photosharesdk/database/dao/MyPhotoInfo;

    move-result-object v0

    invoke-interface {v9, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 424
    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z

    goto :goto_0
.end method

.method private static getPhotoCount(Ljava/lang/String;Lcom/huawei/hicloud/photosharesdk/database/FolderPhotoOperator;)I
    .locals 6
    .parameter "sharedPath"
    .parameter "folderPhotoOperator"

    .prologue
    const/4 v5, 0x0

    .line 142
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "SELECT COUNT(*) FROM "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v4, Lcom/huawei/hicloud/photosharesdk/database/DBConstants$TableName;->FolderPhoto:Lcom/huawei/hicloud/photosharesdk/database/DBConstants$TableName;

    invoke-virtual {v4}, Lcom/huawei/hicloud/photosharesdk/database/DBConstants$TableName;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 143
    const-string v4, " WHERE "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "SharedPath"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "=?"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 142
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 144
    .local v2, sql:Ljava/lang/String;
    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    aput-object p0, v3, v5

    invoke-virtual {p1, v2, v3}, Lcom/huawei/hicloud/photosharesdk/database/FolderPhotoOperator;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 145
    .local v1, cursor:Landroid/database/Cursor;
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    .line 146
    invoke-interface {v1, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    .line 147
    .local v0, count:I
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 148
    return v0
.end method

.method static getPhotoInfo(Ljava/lang/String;Lcom/huawei/hicloud/photosharesdk/database/FolderPhotoOperator;Ljava/lang/String;)Ljava/util/List;
    .locals 13
    .parameter "sharedPath"
    .parameter "folderPhotoOperator"
    .parameter "order"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/huawei/hicloud/photosharesdk/database/FolderPhotoOperator;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/huawei/hicloud/photosharesdk/api/vo/SharePhoto;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    const/4 v12, 0x0

    const/4 v11, 0x1

    .line 166
    if-nez p0, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "folderPath is null "

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 167
    :cond_0
    const-string v0, ""

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "folderPath is \"\" "

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 168
    :cond_1
    const/4 v0, 0x3

    new-array v1, v0, [Ljava/lang/String;

    .line 169
    const-string v0, "PhotoPathR"

    aput-object v0, v1, v12

    const-string v0, "IsNew"

    aput-object v0, v1, v11

    const/4 v0, 0x2

    const-string v2, "CreateTime"

    aput-object v2, v1, v0

    .line 170
    const-string v2, "SharedPath=?"

    new-array v3, v11, [Ljava/lang/String;

    aput-object p0, v3, v12

    .line 171
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v5, "CreateTime "

    invoke-direct {v0, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 172
    const-string v5, ","

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v5, "PhotoPathR"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v5, " ASC"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 171
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    move-object v0, p1

    move-object v5, v4

    move-object v7, v4

    .line 168
    invoke-virtual/range {v0 .. v7}, Lcom/huawei/hicloud/photosharesdk/database/FolderPhotoOperator;->query([Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 173
    .local v8, cursor:Landroid/database/Cursor;
    new-instance v9, Ljava/util/ArrayList;

    invoke-interface {v8}, Landroid/database/Cursor;->getCount()I

    move-result v0

    invoke-direct {v9, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 174
    .local v9, shareFolders:Ljava/util/List;,"Ljava/util/List<Lcom/huawei/hicloud/photosharesdk/api/vo/SharePhoto;>;"
    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    .line 175
    :goto_0
    invoke-interface {v8}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 186
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 187
    return-object v9

    .line 176
    :cond_2
    new-instance v10, Lcom/huawei/hicloud/photosharesdk/api/vo/SharePhoto;

    invoke-direct {v10}, Lcom/huawei/hicloud/photosharesdk/api/vo/SharePhoto;-><init>()V

    .line 178
    .local v10, sharePhoto:Lcom/huawei/hicloud/photosharesdk/api/vo/SharePhoto;
    const-string v0, "IsNew"

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    .line 177
    invoke-interface {v8, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    .line 178
    if-ne v0, v11, :cond_3

    move v0, v11

    .line 177
    :goto_1
    invoke-virtual {v10, v0}, Lcom/huawei/hicloud/photosharesdk/api/vo/SharePhoto;->setNew(Z)V

    .line 180
    const-string v0, "PhotoPathR"

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    .line 179
    invoke-interface {v8, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v10, v0}, Lcom/huawei/hicloud/photosharesdk/api/vo/SharePhoto;->setDbankPath(Ljava/lang/String;)V

    .line 182
    const-string v0, "CreateTime"

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/huawei/hicloud/photosharesdk/helper/Util;->formatTimeAsDefault(Ljava/lang/String;)J

    move-result-wide v0

    .line 181
    invoke-virtual {v10, v0, v1}, Lcom/huawei/hicloud/photosharesdk/api/vo/SharePhoto;->setCreateTime(J)V

    .line 183
    invoke-interface {v9, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 184
    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z

    goto :goto_0

    :cond_3
    move v0, v12

    .line 178
    goto :goto_1
.end method

.method public static getReceiverInfo(Lcom/huawei/hicloud/photosharesdk/database/ReceiverInfoOperator;)Ljava/util/List;
    .locals 10
    .parameter "receiverInfoOperator"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/huawei/hicloud/photosharesdk/database/ReceiverInfoOperator;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/huawei/hicloud/photosharesdk/database/dao/ReceiverInfo;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 431
    .line 432
    const-string v6, "ReceiverAccount ASC"

    move-object v0, p0

    move-object v2, v1

    move-object v3, v1

    move-object v4, v1

    move-object v5, v1

    move-object v7, v1

    .line 431
    invoke-virtual/range {v0 .. v7}, Lcom/huawei/hicloud/photosharesdk/database/ReceiverInfoOperator;->query([Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 433
    .local v8, cursor:Landroid/database/Cursor;
    new-instance v9, Ljava/util/ArrayList;

    invoke-interface {v8}, Landroid/database/Cursor;->getCount()I

    move-result v0

    invoke-direct {v9, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 434
    .local v9, receiverInfos:Ljava/util/List;,"Ljava/util/List<Lcom/huawei/hicloud/photosharesdk/database/dao/ReceiverInfo;>;"
    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    .line 435
    :goto_0
    invoke-interface {v8}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 439
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 440
    return-object v9

    .line 436
    :cond_0
    invoke-static {v8}, Lcom/huawei/hicloud/photosharesdk/database/ReceiverInfoOperator;->cursor2Receiver(Landroid/database/Cursor;)Lcom/huawei/hicloud/photosharesdk/database/dao/ReceiverInfo;

    move-result-object v0

    invoke-interface {v9, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 437
    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z

    goto :goto_0
.end method

.method static getShareFolderInfo(ILjava/lang/String;Lcom/huawei/hicloud/photosharesdk/database/SharedFolderOperator;Lcom/huawei/hicloud/photosharesdk/database/FolderPhotoOperator;Landroid/content/Context;)Ljava/util/List;
    .locals 14
    .parameter "folderType"
    .parameter "path"
    .parameter "sharedFolderOperator"
    .parameter "folderPhotoOperator"
    .parameter "context"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Lcom/huawei/hicloud/photosharesdk/database/SharedFolderOperator;",
            "Lcom/huawei/hicloud/photosharesdk/database/FolderPhotoOperator;",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/huawei/hicloud/photosharesdk/api/vo/ShareFolder;",
            ">;"
        }
    .end annotation

    .prologue
    .line 57
    if-eqz p1, :cond_0

    .line 59
    const/4 v2, 0x0

    const-string v3, "SharePath=?"

    .line 60
    const/4 v1, 0x1

    new-array v4, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v1

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object/from16 v1, p2

    .line 59
    invoke-virtual/range {v1 .. v8}, Lcom/huawei/hicloud/photosharesdk/database/SharedFolderOperator;->query([Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 77
    .local v9, cursor:Landroid/database/Cursor;
    :goto_0
    new-instance v12, Ljava/util/ArrayList;

    invoke-interface {v9}, Landroid/database/Cursor;->getCount()I

    move-result v1

    invoke-direct {v12, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 78
    .local v12, shareFolders:Ljava/util/List;,"Ljava/util/List<Lcom/huawei/hicloud/photosharesdk/api/vo/ShareFolder;>;"
    invoke-interface {v9}, Landroid/database/Cursor;->moveToFirst()Z

    .line 79
    :goto_1
    invoke-interface {v9}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 110
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 111
    return-object v12

    .line 64
    .end local v9           #cursor:Landroid/database/Cursor;
    .end local v12           #shareFolders:Ljava/util/List;,"Ljava/util/List<Lcom/huawei/hicloud/photosharesdk/api/vo/ShareFolder;>;"
    :cond_0
    invoke-static {p0}, Lcom/huawei/hicloud/photosharesdk/database/DBFuncImplementation;->validateFolderType(I)Z

    move-result v1

    if-nez v1, :cond_1

    .line 65
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "folderType = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 66
    :cond_1
    invoke-static {p0}, Lcom/huawei/hicloud/photosharesdk/database/DBFuncImplementation;->isQueryAll(I)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 68
    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string v7, "CreateTime ASC"

    .line 69
    const/4 v8, 0x0

    move-object/from16 v1, p2

    .line 68
    invoke-virtual/range {v1 .. v8}, Lcom/huawei/hicloud/photosharesdk/database/SharedFolderOperator;->query([Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .restart local v9       #cursor:Landroid/database/Cursor;
    goto :goto_0

    .line 73
    .end local v9           #cursor:Landroid/database/Cursor;
    :cond_2
    const/4 v2, 0x0

    const-string v3, "FolderType=?"

    .line 74
    const/4 v1, 0x1

    new-array v4, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v1

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string v7, "CreateTime ASC"

    const/4 v8, 0x0

    move-object/from16 v1, p2

    .line 73
    invoke-virtual/range {v1 .. v8}, Lcom/huawei/hicloud/photosharesdk/database/SharedFolderOperator;->query([Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .restart local v9       #cursor:Landroid/database/Cursor;
    goto :goto_0

    .line 80
    .restart local v12       #shareFolders:Ljava/util/List;,"Ljava/util/List<Lcom/huawei/hicloud/photosharesdk/api/vo/ShareFolder;>;"
    :cond_3
    new-instance v11, Lcom/huawei/hicloud/photosharesdk/api/vo/ShareFolder;

    invoke-direct {v11}, Lcom/huawei/hicloud/photosharesdk/api/vo/ShareFolder;-><init>()V

    .line 82
    .local v11, shareFolder:Lcom/huawei/hicloud/photosharesdk/api/vo/ShareFolder;
    const-string v1, "SharePath"

    invoke-interface {v9, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    .line 81
    invoke-interface {v9, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v13

    .line 83
    .local v13, sharePath:Ljava/lang/String;
    const/4 v10, 0x0

    .line 85
    .local v10, photoPathR:Ljava/lang/String;
    const-string v1, "FolderName"

    invoke-interface {v9, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    .line 84
    invoke-interface {v9, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v11, v1}, Lcom/huawei/hicloud/photosharesdk/api/vo/ShareFolder;->setDisplayName(Ljava/lang/String;)V

    .line 87
    const-string v1, "FolderType"

    invoke-interface {v9, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    .line 86
    invoke-interface {v9, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    invoke-virtual {v11, v1}, Lcom/huawei/hicloud/photosharesdk/api/vo/ShareFolder;->setFolderType(I)V

    .line 89
    const-string v1, "SharePath"

    invoke-interface {v9, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v9, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 88
    move-object/from16 v0, p3

    invoke-static {v1, v0}, Lcom/huawei/hicloud/photosharesdk/database/DBFuncImplementation;->getPhotoCount(Ljava/lang/String;Lcom/huawei/hicloud/photosharesdk/database/FolderPhotoOperator;)I

    move-result v1

    invoke-virtual {v11, v1}, Lcom/huawei/hicloud/photosharesdk/api/vo/ShareFolder;->setpCount(I)V

    .line 92
    const-string v1, "SharerName"

    invoke-interface {v9, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    .line 91
    invoke-interface {v9, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v11, v1}, Lcom/huawei/hicloud/photosharesdk/api/vo/ShareFolder;->setSharedName(Ljava/lang/String;)V

    .line 94
    const-string v1, "FolderPathR"

    invoke-interface {v9, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    .line 93
    invoke-interface {v9, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v11, v1}, Lcom/huawei/hicloud/photosharesdk/api/vo/ShareFolder;->setDbankPath(Ljava/lang/String;)V

    .line 95
    invoke-virtual {v11, v13}, Lcom/huawei/hicloud/photosharesdk/api/vo/ShareFolder;->setSharePath(Ljava/lang/String;)V

    .line 96
    move-object/from16 v0, p3

    invoke-static {v0, v13}, Lcom/huawei/hicloud/photosharesdk/database/DBFuncImplementation;->getLatestPhotoPath(Lcom/huawei/hicloud/photosharesdk/database/FolderPhotoOperator;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 97
    if-nez v10, :cond_4

    const/4 v1, 0x0

    :goto_2
    invoke-virtual {v11, v1}, Lcom/huawei/hicloud/photosharesdk/api/vo/ShareFolder;->setCoverPath(Ljava/lang/String;)V

    .line 99
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static/range {p4 .. p4}, Lcom/huawei/hicloud/photosharesdk/settings/DirHelper;->getDirInfo(Landroid/content/Context;)Lcom/huawei/hicloud/photosharesdk/api/vo/DirInfo;

    move-result-object v2

    invoke-virtual {v2}, Lcom/huawei/hicloud/photosharesdk/api/vo/DirInfo;->getBaseDir()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 101
    const-string v2, "FolderPathR"

    invoke-interface {v9, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    .line 100
    invoke-interface {v9, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 99
    invoke-virtual {v11, v1}, Lcom/huawei/hicloud/photosharesdk/api/vo/ShareFolder;->setLocalPath(Ljava/lang/String;)V

    .line 103
    const-string v1, "SharePath"

    invoke-interface {v9, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v9, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 102
    move-object/from16 v0, p3

    invoke-static {v1, v0}, Lcom/huawei/hicloud/photosharesdk/database/DBFuncImplementation;->isNew(Ljava/lang/String;Lcom/huawei/hicloud/photosharesdk/database/FolderPhotoOperator;)Z

    move-result v1

    invoke-virtual {v11, v1}, Lcom/huawei/hicloud/photosharesdk/api/vo/ShareFolder;->setNew(Z)V

    .line 106
    const-string v1, "SharerAccount"

    invoke-interface {v9, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    .line 105
    invoke-interface {v9, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v11, v1}, Lcom/huawei/hicloud/photosharesdk/api/vo/ShareFolder;->setSharedAccount(Ljava/lang/String;)V

    .line 107
    invoke-interface {v12, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 108
    invoke-interface {v9}, Landroid/database/Cursor;->moveToNext()Z

    goto/16 :goto_1

    .line 97
    :cond_4
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static/range {p4 .. p4}, Lcom/huawei/hicloud/photosharesdk/settings/DirHelper;->getDirInfo(Landroid/content/Context;)Lcom/huawei/hicloud/photosharesdk/api/vo/DirInfo;

    move-result-object v2

    .line 98
    invoke-virtual {v2}, Lcom/huawei/hicloud/photosharesdk/api/vo/DirInfo;->getBaseDir()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v10}, Lcom/huawei/hicloud/photosharesdk/helper/FileHelper;->generateThumbLocalPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_2
.end method

.method static getTaskInfo(Lcom/huawei/hicloud/photosharesdk/database/TaskInfoOperator;)Ljava/util/Map;
    .locals 13
    .parameter "taskInfoOperator"
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "UseSparseArrays"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/huawei/hicloud/photosharesdk/database/TaskInfoOperator;",
            ")",
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
    .line 368
    const/4 v1, 0x0

    const-string v2, "OperationType=?"

    .line 369
    const/4 v0, 0x1

    new-array v3, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const/4 v4, 0x0

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v0

    .line 370
    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v0, p0

    .line 368
    invoke-virtual/range {v0 .. v7}, Lcom/huawei/hicloud/photosharesdk/database/TaskInfoOperator;->query([Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 371
    .local v9, cursor:Landroid/database/Cursor;
    new-instance v8, Ljava/util/ArrayList;

    invoke-interface {v9}, Landroid/database/Cursor;->getCount()I

    move-result v0

    invoke-direct {v8, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 372
    .local v8, add:Ljava/util/List;,"Ljava/util/List<Lcom/huawei/hicloud/photosharesdk/database/dao/TaskInfo;>;"
    invoke-interface {v9}, Landroid/database/Cursor;->moveToFirst()Z

    .line 373
    :goto_0
    invoke-interface {v9}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 377
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 378
    const/4 v1, 0x0

    const-string v2, "OperationType=?"

    .line 379
    const/4 v0, 0x1

    new-array v3, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const/4 v4, 0x1

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v0

    .line 380
    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v0, p0

    .line 378
    invoke-virtual/range {v0 .. v7}, Lcom/huawei/hicloud/photosharesdk/database/TaskInfoOperator;->query([Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 381
    new-instance v10, Ljava/util/ArrayList;

    invoke-interface {v9}, Landroid/database/Cursor;->getCount()I

    move-result v0

    invoke-direct {v10, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 382
    .local v10, del:Ljava/util/List;,"Ljava/util/List<Lcom/huawei/hicloud/photosharesdk/database/dao/TaskInfo;>;"
    invoke-interface {v9}, Landroid/database/Cursor;->moveToFirst()Z

    .line 383
    :goto_1
    invoke-interface {v9}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 387
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 389
    const/4 v1, 0x0

    const-string v2, "OperationType=?"

    const/4 v0, 0x1

    new-array v3, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    .line 390
    const/4 v4, 0x2

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v0

    const/4 v4, 0x0

    .line 391
    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v0, p0

    .line 389
    invoke-virtual/range {v0 .. v7}, Lcom/huawei/hicloud/photosharesdk/database/TaskInfoOperator;->query([Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 392
    new-instance v11, Ljava/util/ArrayList;

    invoke-interface {v9}, Landroid/database/Cursor;->getCount()I

    move-result v0

    invoke-direct {v11, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 393
    .local v11, download:Ljava/util/List;,"Ljava/util/List<Lcom/huawei/hicloud/photosharesdk/database/dao/TaskInfo;>;"
    invoke-interface {v9}, Landroid/database/Cursor;->moveToFirst()Z

    .line 394
    :goto_2
    invoke-interface {v9}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 398
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 399
    new-instance v12, Ljava/util/TreeMap;

    invoke-direct {v12}, Ljava/util/TreeMap;-><init>()V

    .line 400
    .local v12, result:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/Integer;Ljava/util/List<Lcom/huawei/hicloud/photosharesdk/database/dao/TaskInfo;>;>;"
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v12, v0, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 401
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v12, v0, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 402
    const/4 v0, 0x2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v12, v0, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 403
    return-object v12

    .line 374
    .end local v10           #del:Ljava/util/List;,"Ljava/util/List<Lcom/huawei/hicloud/photosharesdk/database/dao/TaskInfo;>;"
    .end local v11           #download:Ljava/util/List;,"Ljava/util/List<Lcom/huawei/hicloud/photosharesdk/database/dao/TaskInfo;>;"
    .end local v12           #result:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/Integer;Ljava/util/List<Lcom/huawei/hicloud/photosharesdk/database/dao/TaskInfo;>;>;"
    :cond_0
    invoke-static {v9}, Lcom/huawei/hicloud/photosharesdk/database/TaskInfoOperator;->cursor2TaskInfo(Landroid/database/Cursor;)Lcom/huawei/hicloud/photosharesdk/database/dao/TaskInfo;

    move-result-object v0

    invoke-interface {v8, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 375
    invoke-interface {v9}, Landroid/database/Cursor;->moveToNext()Z

    goto/16 :goto_0

    .line 384
    .restart local v10       #del:Ljava/util/List;,"Ljava/util/List<Lcom/huawei/hicloud/photosharesdk/database/dao/TaskInfo;>;"
    :cond_1
    invoke-static {v9}, Lcom/huawei/hicloud/photosharesdk/database/TaskInfoOperator;->cursor2TaskInfo(Landroid/database/Cursor;)Lcom/huawei/hicloud/photosharesdk/database/dao/TaskInfo;

    move-result-object v0

    invoke-interface {v10, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 385
    invoke-interface {v9}, Landroid/database/Cursor;->moveToNext()Z

    goto :goto_1

    .line 395
    .restart local v11       #download:Ljava/util/List;,"Ljava/util/List<Lcom/huawei/hicloud/photosharesdk/database/dao/TaskInfo;>;"
    :cond_2
    invoke-static {v9}, Lcom/huawei/hicloud/photosharesdk/database/TaskInfoOperator;->cursor2TaskInfo(Landroid/database/Cursor;)Lcom/huawei/hicloud/photosharesdk/database/dao/TaskInfo;

    move-result-object v0

    invoke-interface {v11, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 396
    invoke-interface {v9}, Landroid/database/Cursor;->moveToNext()Z

    goto :goto_2
.end method

.method private static isNew(Ljava/lang/String;Lcom/huawei/hicloud/photosharesdk/database/FolderPhotoOperator;)Z
    .locals 11
    .parameter "sharedPath"
    .parameter "folderPhotoOperator"

    .prologue
    const/4 v10, 0x1

    const/4 v9, 0x0

    const/4 v4, 0x0

    .line 152
    new-array v1, v10, [Ljava/lang/String;

    const-string v0, "SharedPath"

    aput-object v0, v1, v9

    .line 153
    const-string v2, "IsNew=? AND SharedPath=?"

    .line 154
    const/4 v0, 0x2

    new-array v3, v0, [Ljava/lang/String;

    const-string v0, "1"

    aput-object v0, v3, v9

    aput-object p0, v3, v10

    move-object v0, p1

    move-object v5, v4

    move-object v6, v4

    move-object v7, v4

    .line 152
    invoke-virtual/range {v0 .. v7}, Lcom/huawei/hicloud/photosharesdk/database/FolderPhotoOperator;->query([Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 155
    .local v8, cursor:Landroid/database/Cursor;
    invoke-interface {v8}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-nez v0, :cond_0

    .line 156
    .local v9, result:Z
    :goto_0
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 157
    return v9

    .end local v9           #result:Z
    :cond_0
    move v9, v10

    .line 155
    goto :goto_0
.end method

.method private static isQueryAll(I)Z
    .locals 1
    .parameter "folderType"

    .prologue
    .line 138
    const/4 v0, 0x3

    if-ne v0, p0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static varargs query(Lcom/huawei/hicloud/photosharesdk/database/DBOperator;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Ljava/util/List;
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
            "Lcom/huawei/hicloud/photosharesdk/database/DBOperator",
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
    .local p0, db:Lcom/huawei/hicloud/photosharesdk/database/DBOperator;,"Lcom/huawei/hicloud/photosharesdk/database/DBOperator<TT;>;"
    const/4 v4, 0x0

    .line 520
    invoke-static {p1}, Lcom/huawei/hicloud/photosharesdk/helper/StringUtil;->isBlankString(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p2}, Lcom/huawei/hicloud/photosharesdk/helper/StringUtil;->isBlankString(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 521
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "matchKey or matchValue is(are) blank String"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 522
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

    const/4 v0, 0x1

    new-array v3, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    aput-object p2, v3, v0

    move-object v0, p0

    move-object v1, p3

    move-object v5, v4

    move-object v6, v4

    move-object v7, v4

    invoke-virtual/range {v0 .. v7}, Lcom/huawei/hicloud/photosharesdk/database/DBOperator;->query([Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 524
    .local v8, cursor:Landroid/database/Cursor;
    invoke-static {v8, p3}, Lcom/huawei/hicloud/photosharesdk/database/DBFuncImplementation;->cursor2Fields(Landroid/database/Cursor;[Ljava/lang/String;)Ljava/util/List;

    move-result-object v9

    .line 525
    .local v9, result:Ljava/util/List;,"Ljava/util/List<[Ljava/lang/Object;>;"
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 526
    return-object v9
.end method

.method static unbindReciver2Folder(Lcom/huawei/hicloud/photosharesdk/database/dao/FolderReceiver;Lcom/huawei/hicloud/photosharesdk/database/FolderReceiverOperator;)Z
    .locals 5
    .parameter "folderReceiver"
    .parameter "folderReceiverOperator"

    .prologue
    .line 355
    invoke-virtual {p0}, Lcom/huawei/hicloud/photosharesdk/database/dao/FolderReceiver;->getReceiverAccount()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_0

    .line 356
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "folderReceiver.receiverAccount is null "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 357
    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 356
    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 358
    :cond_0
    const/4 v0, 0x1

    .line 359
    .local v0, result:Z
    const-string v1, "ReceiverAccount=? and SharedPath =? "

    .line 361
    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    invoke-virtual {p0}, Lcom/huawei/hicloud/photosharesdk/database/dao/FolderReceiver;->getReceiverAccount()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    invoke-virtual {p0}, Lcom/huawei/hicloud/photosharesdk/database/dao/FolderReceiver;->getSharedPath()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    .line 359
    invoke-virtual {p1, v1, v2}, Lcom/huawei/hicloud/photosharesdk/database/FolderReceiverOperator;->delete(Ljava/lang/String;[Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_1

    .line 362
    const/4 v0, 0x0

    .line 363
    :cond_1
    return v0
.end method

.method static varargs update(Lcom/huawei/hicloud/photosharesdk/database/DBOperator;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Z
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
            "Lcom/huawei/hicloud/photosharesdk/database/DBOperator",
            "<TT;>;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            ")Z"
        }
    .end annotation

    .prologue
    .local p0, db:Lcom/huawei/hicloud/photosharesdk/database/DBOperator;,"Lcom/huawei/hicloud/photosharesdk/database/DBOperator<TT;>;"
    const/4 v4, 0x1

    .line 468
    invoke-static {p1}, Lcom/huawei/hicloud/photosharesdk/helper/StringUtil;->isBlankString(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {p2}, Lcom/huawei/hicloud/photosharesdk/helper/StringUtil;->isBlankString(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 469
    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "matchKey or matchValue is(are) blank String"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 470
    :cond_1
    const/4 v0, 0x1

    .line 471
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

    invoke-virtual {p0, v1, v2, p3}, Lcom/huawei/hicloud/photosharesdk/database/DBOperator;->update(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)I

    move-result v1

    if-ge v1, v4, :cond_2

    const/4 v0, 0x0

    .line 472
    :cond_2
    return v0
.end method

.method public static updateFolderReceiver(Lcom/huawei/hicloud/photosharesdk/database/FolderReceiverOperator;Lcom/huawei/hicloud/photosharesdk/database/dao/FolderReceiver;)Z
    .locals 5
    .parameter "folderReceiverOperator"
    .parameter "folderReceiver"

    .prologue
    .line 445
    invoke-virtual {p1}, Lcom/huawei/hicloud/photosharesdk/database/dao/FolderReceiver;->getSharedPath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/huawei/hicloud/photosharesdk/helper/StringUtil;->isBlankString(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 446
    invoke-virtual {p1}, Lcom/huawei/hicloud/photosharesdk/database/dao/FolderReceiver;->getReceiverAccount()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/huawei/hicloud/photosharesdk/helper/StringUtil;->isBlankString(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 447
    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "folderReceiver\'s parameter is wrong "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 448
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 447
    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 449
    :cond_1
    const/4 v0, 0x1

    .line 450
    .local v0, result:Z
    const-string v1, "ReceiverAccount=? AND SharedPath=?"

    .line 451
    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    .line 452
    invoke-virtual {p1}, Lcom/huawei/hicloud/photosharesdk/database/dao/FolderReceiver;->getReceiverAccount()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    invoke-virtual {p1}, Lcom/huawei/hicloud/photosharesdk/database/dao/FolderReceiver;->getSharedPath()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    .line 450
    invoke-virtual {p0, p1, v1, v2}, Lcom/huawei/hicloud/photosharesdk/database/FolderReceiverOperator;->update(Lcom/huawei/hicloud/photosharesdk/database/dao/FolderReceiver;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_2

    .line 453
    const/4 v0, 0x0

    .line 455
    :cond_2
    return v0
.end method

.method public static updateOrInsert(Lcom/huawei/hicloud/photosharesdk/database/DBOperator;Ljava/lang/Object;[Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;
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
            "Lcom/huawei/hicloud/photosharesdk/database/DBOperator",
            "<TT;>;TT;[",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .local p0, db:Lcom/huawei/hicloud/photosharesdk/database/DBOperator;,"Lcom/huawei/hicloud/photosharesdk/database/DBOperator<TT;>;"
    .local p1, obj:Ljava/lang/Object;,"TT;"
    const/4 v4, 0x0

    .line 477
    array-length v3, p2

    array-length v5, p3

    if-eq v3, v5, :cond_0

    .line 478
    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "matchKeys and matchValues is not equal in length. keys:"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 479
    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 480
    const-string v5, " values:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {p3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 478
    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 481
    :cond_0
    const-string v2, ""

    .line 482
    .local v2, selection:Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 483
    .local v1, sb:Ljava/lang/StringBuilder;
    array-length v5, p2

    move v3, v4

    :goto_0
    if-lt v3, v5, :cond_1

    .line 486
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 487
    const-string v3, "AND"

    invoke-virtual {v2, v3}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {v2, v4, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 488
    invoke-virtual {p0, p1, v2, p3}, Lcom/huawei/hicloud/photosharesdk/database/DBOperator;->updateOrInsert(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    return-object v3

    .line 483
    :cond_1
    aget-object v0, p2, v3

    .line 484
    .local v0, matchKey:Ljava/lang/String;
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "=? AND "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 483
    add-int/lit8 v3, v3, 0x1

    goto :goto_0
.end method

.method static updateShareFolder(Lcom/huawei/hicloud/photosharesdk/database/dao/SharedFolder;Lcom/huawei/hicloud/photosharesdk/database/SharedFolderOperator;)Z
    .locals 6
    .parameter "sharedFolder"
    .parameter "sharedFolderOperator"

    .prologue
    const/4 v5, 0x1

    .line 316
    invoke-virtual {p0}, Lcom/huawei/hicloud/photosharesdk/database/dao/SharedFolder;->getFolderPathRemote()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_0

    .line 317
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

    .line 318
    :cond_0
    const/4 v0, 0x1

    .line 320
    .local v0, result:Z
    const-string v1, "FolderPathR=?"

    .line 321
    new-array v2, v5, [Ljava/lang/String;

    const/4 v3, 0x0

    invoke-virtual {p0}, Lcom/huawei/hicloud/photosharesdk/database/dao/SharedFolder;->getFolderPathRemote()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    .line 319
    invoke-virtual {p1, p0, v1, v2}, Lcom/huawei/hicloud/photosharesdk/database/SharedFolderOperator;->update(Lcom/huawei/hicloud/photosharesdk/database/dao/SharedFolder;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v1

    .line 321
    if-ge v1, v5, :cond_1

    const/4 v0, 0x0

    .line 322
    :cond_1
    return v0
.end method

.method static updateTaskInfo(Lcom/huawei/hicloud/photosharesdk/database/dao/TaskInfo;Lcom/huawei/hicloud/photosharesdk/database/TaskInfoOperator;)Z
    .locals 6
    .parameter "taskInfo"
    .parameter "taskInfoOperator"

    .prologue
    const/4 v5, 0x1

    .line 273
    invoke-virtual {p0}, Lcom/huawei/hicloud/photosharesdk/database/dao/TaskInfo;->getPhotoPathRemote()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_0

    .line 274
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

    .line 275
    :cond_0
    const/4 v0, 0x1

    .line 276
    .local v0, result:Z
    const-string v1, "PhotoPathR=?"

    .line 277
    new-array v2, v5, [Ljava/lang/String;

    const/4 v3, 0x0

    invoke-virtual {p0}, Lcom/huawei/hicloud/photosharesdk/database/dao/TaskInfo;->getPhotoPathRemote()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    .line 276
    invoke-virtual {p1, p0, v1, v2}, Lcom/huawei/hicloud/photosharesdk/database/TaskInfoOperator;->update(Lcom/huawei/hicloud/photosharesdk/database/dao/TaskInfo;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v1

    .line 277
    if-ge v1, v5, :cond_1

    const/4 v0, 0x0

    .line 278
    :cond_1
    return v0
.end method

.method private static validateFolderType(I)Z
    .locals 1
    .parameter "folderType"

    .prologue
    .line 129
    const/4 v0, 0x3

    if-ge p0, v0, :cond_0

    .line 130
    const/4 v0, -0x1

    if-le p0, v0, :cond_0

    .line 131
    const/4 v0, 0x1

    .line 133
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
