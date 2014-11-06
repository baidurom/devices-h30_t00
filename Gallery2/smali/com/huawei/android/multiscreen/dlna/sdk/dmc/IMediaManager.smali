.class public interface abstract Lcom/huawei/android/multiscreen/dlna/sdk/dmc/IMediaManager;
.super Ljava/lang/Object;
.source "IMediaManager.java"


# virtual methods
.method public abstract cacheAllMedia(Lcom/huawei/android/multiscreen/dlna/sdk/common/EMediaInfoType;)V
.end method

.method public abstract getChildren(Ljava/lang/String;)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/huawei/android/multiscreen/dlna/sdk/common/DmsMediaInfo;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getFolderInfoByFolderId(Ljava/lang/String;)Lcom/huawei/android/multiscreen/dlna/sdk/common/DmsMediaInfo;
.end method

.method public abstract getMediaInfo(Lcom/huawei/android/multiscreen/dlna/sdk/common/EMediaInfoType;)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/huawei/android/multiscreen/dlna/sdk/common/EMediaInfoType;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/huawei/android/multiscreen/dlna/sdk/common/DmsMediaInfo;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getMediaInfoWithPagination(Lcom/huawei/android/multiscreen/dlna/sdk/common/EMediaInfoType;II)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/huawei/android/multiscreen/dlna/sdk/common/EMediaInfoType;",
            "II)",
            "Ljava/util/List",
            "<",
            "Lcom/huawei/android/multiscreen/dlna/sdk/common/DmsMediaInfo;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getMediaTotalCount(Lcom/huawei/android/multiscreen/dlna/sdk/common/EMediaInfoType;I)I
.end method

.method public abstract getRootFolderId()Ljava/lang/String;
.end method

.method public abstract searchMediaInfo(Lcom/huawei/android/multiscreen/dlna/sdk/common/EMediaInfoType;Ljava/lang/String;)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/huawei/android/multiscreen/dlna/sdk/common/EMediaInfoType;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/huawei/android/multiscreen/dlna/sdk/common/DmsMediaInfo;",
            ">;"
        }
    .end annotation
.end method
