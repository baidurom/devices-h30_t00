.class public interface abstract Lcom/huawei/android/multiscreen/dlna/sdk/dmc/IDmcMediaManager;
.super Ljava/lang/Object;
.source "IDmcMediaManager.java"


# virtual methods
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

.method public abstract getTotalMedia(Lcom/huawei/android/multiscreen/dlna/sdk/common/EMediaInfoType;)I
.end method

.method public abstract searchMediaInfo(Ljava/lang/String;)Ljava/util/List;
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
