.class public interface abstract Lcom/huawei/hicloud/photosharesdk/database/DBFuncInterface;
.super Ljava/lang/Object;
.source "DBFuncInterface.java"


# virtual methods
.method public abstract addMyPhotoInfo(Ljava/util/List;)Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/huawei/hicloud/photosharesdk/database/dao/MyPhotoInfo;",
            ">;)Z"
        }
    .end annotation
.end method

.method public abstract addNickName(Lcom/huawei/hicloud/photosharesdk/database/dao/ReceiverInfo;)Z
.end method

.method public abstract addPhoto(Ljava/util/List;)Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/huawei/hicloud/photosharesdk/database/dao/FolderPhoto;",
            ">;)Z"
        }
    .end annotation
.end method

.method public abstract addReceiver(Ljava/util/List;)Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/huawei/hicloud/photosharesdk/database/dao/ReceiverInfo;",
            ">;)Z"
        }
    .end annotation
.end method

.method public abstract addShareFolder(Lcom/huawei/hicloud/photosharesdk/database/dao/SharedFolder;)Z
.end method

.method public abstract addTaskInfo(Lcom/huawei/hicloud/photosharesdk/database/dao/TaskInfo;)Z
.end method

.method public abstract bindReciver2Folder(Lcom/huawei/hicloud/photosharesdk/database/dao/FolderReceiver;)Z
.end method

.method public abstract delPhoto(Ljava/util/List;)Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/huawei/hicloud/photosharesdk/database/dao/FolderPhoto;",
            ">;)Z"
        }
    .end annotation
.end method

.method public abstract delShareFolder(Lcom/huawei/hicloud/photosharesdk/database/dao/SharedFolder;)Z
.end method

.method public abstract delTaskInfo(Lcom/huawei/hicloud/photosharesdk/database/dao/TaskInfo;)Z
.end method

.method public abstract delete(Lcom/huawei/hicloud/photosharesdk/database/DBConstants$TableName;Ljava/lang/String;Ljava/lang/String;)Z
.end method

.method public abstract deleteDatabase()V
.end method

.method public abstract deleteTaskInfo(Ljava/lang/String;)Z
.end method

.method public abstract getFriendsInfo(Ljava/lang/String;)Ljava/util/List;
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
.end method

.method public abstract getMyPhotoInfo(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;
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
.end method

.method public abstract getPhotoInfo(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;
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
.end method

.method public abstract getReceiverInfo()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/huawei/hicloud/photosharesdk/database/dao/ReceiverInfo;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getShareFolderInfo(ILjava/lang/String;Landroid/content/Context;)Ljava/util/List;
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
.end method

.method public abstract getTaskInfo()Ljava/util/Map;
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
.end method

.method public varargs abstract query(Lcom/huawei/hicloud/photosharesdk/database/DBConstants$TableName;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Ljava/util/List;
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
.end method

.method public abstract unbindReciver2Folder(Lcom/huawei/hicloud/photosharesdk/database/dao/FolderReceiver;)Z
.end method

.method public varargs abstract update(Lcom/huawei/hicloud/photosharesdk/database/DBConstants$TableName;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Z
.end method

.method public abstract updateFolderReceiver(Lcom/huawei/hicloud/photosharesdk/database/dao/FolderReceiver;)Z
.end method

.method public abstract updateOrInsert(Ljava/lang/Object;[Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;
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
.end method

.method public abstract updateShareFolder(Lcom/huawei/hicloud/photosharesdk/database/dao/SharedFolder;)Z
.end method

.method public abstract updateTaskInfo(Lcom/huawei/hicloud/photosharesdk/database/dao/TaskInfo;)Z
.end method
