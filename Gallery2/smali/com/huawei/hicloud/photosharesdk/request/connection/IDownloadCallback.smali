.class public interface abstract Lcom/huawei/hicloud/photosharesdk/request/connection/IDownloadCallback;
.super Ljava/lang/Object;
.source "IDownloadCallback.java"


# virtual methods
.method public abstract canceledCallback()V
.end method

.method public abstract createFile(J)Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/huawei/hicloud/photosharesdk/exception/SDUnavailableException;,
            Lcom/huawei/hicloud/photosharesdk/exception/NoEnoughSpaceException;
        }
    .end annotation
.end method

.method public abstract deleteFailedFile()V
.end method

.method public abstract getBaseDir()Ljava/lang/String;
.end method

.method public abstract getIsDownMyphoto()Z
.end method

.method public abstract getPriority()Z
.end method

.method public abstract onProgressChanged(JJ)V
.end method

.method public abstract pausedCallback()V
.end method

.method public abstract startDownloadCallback()V
.end method

.method public abstract successDownloadCallback()V
.end method
