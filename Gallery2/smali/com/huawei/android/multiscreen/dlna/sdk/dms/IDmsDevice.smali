.class public interface abstract Lcom/huawei/android/multiscreen/dlna/sdk/dms/IDmsDevice;
.super Ljava/lang/Object;
.source "IDmsDevice.java"

# interfaces
.implements Lcom/huawei/android/multiscreen/dlna/sdk/dlnamanager/IDevice;


# virtual methods
.method public abstract addShareFilePath(Ljava/lang/String;)Z
.end method

.method public abstract cleanShareStorage()Z
.end method

.method public abstract getFileShareState(Ljava/lang/String;)Lcom/huawei/android/multiscreen/dlna/sdk/dms/ShareStateEnum;
.end method

.method public abstract isSupportShareFile(Ljava/lang/String;)Z
.end method

.method public abstract isValidShareFile(Ljava/lang/String;)Z
.end method

.method public abstract removeShareFilePath(Ljava/lang/String;)Z
.end method

.method public abstract setShareEnable(Z)Z
.end method

.method public abstract setShareFileFilterClient(Lcom/huawei/android/multiscreen/dlna/sdk/dms/IShareFileFilter;)V
.end method

.method public abstract updateShareFilesPath(Ljava/util/List;)Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/huawei/android/multiscreen/dlna/sdk/dms/ShareFileObject;",
            ">;)Z"
        }
    .end annotation
.end method

.method public abstract updateShareFilesPath(Ljava/util/List;Lcom/huawei/android/multiscreen/dlna/sdk/dms/ShareOperationFlagEnum;)Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/huawei/android/multiscreen/dlna/sdk/dms/ShareOperationFlagEnum;",
            ")Z"
        }
    .end annotation
.end method
