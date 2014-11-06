.class public interface abstract Lcom/huawei/hicloud/photosharesdk3/database/DBFuncInterface;
.super Ljava/lang/Object;
.source "DBFuncInterface.java"


# virtual methods
.method public abstract addNickName(Lcom/huawei/hicloud/photosharesdk3/database/dao/ReceiverInfo;)Z
.end method

.method public abstract addPhoto(Lcom/huawei/hicloud/photosharesdk3/database/dao/FolderPhoto;)Z
.end method

.method public abstract addPhoto(Ljava/util/List;)Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/huawei/hicloud/photosharesdk3/database/dao/FolderPhoto;",
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
            "Lcom/huawei/hicloud/photosharesdk3/database/dao/ReceiverInfo;",
            ">;)Z"
        }
    .end annotation
.end method

.method public abstract addShareFolder(Lcom/huawei/hicloud/photosharesdk3/database/dao/SharedFolder;)Z
.end method

.method public abstract addTaskInfo(Lcom/huawei/hicloud/photosharesdk3/database/dao/TaskInfo;)Z
.end method

.method public abstract bindReciver2Folder(Lcom/huawei/hicloud/photosharesdk3/database/dao/FolderReceiver;)Z
.end method

.method public abstract closeFolderPhoto()V
.end method

.method public abstract closeFolderReceiver()V
.end method

.method public abstract closeReceiverInfoOperator()V
.end method

.method public abstract closeSharedFolderOperator()V
.end method

.method public abstract closeTaskInfoOperator()V
.end method

.method public abstract delPhoto(Ljava/util/List;)Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/huawei/hicloud/photosharesdk3/database/dao/FolderPhoto;",
            ">;)Z"
        }
    .end annotation
.end method

.method public abstract delShareFolder(Lcom/huawei/hicloud/photosharesdk3/database/dao/SharedFolder;)Z
.end method

.method public abstract delTaskInfo(Lcom/huawei/hicloud/photosharesdk3/database/dao/TaskInfo;)Z
.end method

.method public abstract delete(Lcom/huawei/hicloud/photosharesdk3/database/DBConstants$TableName;Ljava/lang/String;Ljava/lang/String;)Z
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

.method public abstract getPhotoInfo(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;
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
.end method

.method public abstract getReceiverInfo()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/huawei/hicloud/photosharesdk3/database/dao/ReceiverInfo;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getShareFolderBySharePath(Ljava/lang/String;Landroid/content/Context;)Ljava/util/List;
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
.end method

.method public abstract getShareFolderInfo(ILandroid/content/Context;)Ljava/util/List;
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
            "Lcom/huawei/hicloud/photosharesdk3/database/dao/TaskInfo;",
            ">;>;"
        }
    .end annotation
.end method

.method public abstract openFolderPhoto(Landroid/content/Context;)V
.end method

.method public abstract openFolderReceiver(Landroid/content/Context;)V
.end method

.method public abstract openReceiverInfoOperator(Landroid/content/Context;)V
.end method

.method public abstract openSharedFolderOperator(Landroid/content/Context;)V
.end method

.method public abstract openTaskInfoOperator(Landroid/content/Context;)V
.end method

.method public varargs abstract query(Lcom/huawei/hicloud/photosharesdk3/database/DBConstants$TableName;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Ljava/util/List;
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
.end method

.method public abstract queryAllData(Lcom/huawei/hicloud/photosharesdk3/database/DBConstants$TableName;)Ljava/util/List;
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
.end method

.method public abstract queryTableSize(Lcom/huawei/hicloud/photosharesdk3/database/DBConstants$TableName;)I
.end method

.method public abstract unbindReciver2Folder(Lcom/huawei/hicloud/photosharesdk3/database/dao/FolderReceiver;)Z
.end method

.method public varargs abstract update(Lcom/huawei/hicloud/photosharesdk3/database/DBConstants$TableName;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Z
.end method

.method public abstract updateFolderReceiver(Lcom/huawei/hicloud/photosharesdk3/database/dao/FolderReceiver;)Z
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

.method public abstract updateShareFolder(Lcom/huawei/hicloud/photosharesdk3/database/dao/SharedFolder;)Z
.end method

.method public abstract updateTaskInfo(Lcom/huawei/hicloud/photosharesdk3/database/dao/TaskInfo;)Z
.end method
