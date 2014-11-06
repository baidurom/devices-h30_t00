.class public interface abstract Lcom/huawei/hicloud/photosharesdk/logic/PhotoInterface;
.super Ljava/lang/Object;
.source "PhotoInterface.java"


# virtual methods
.method public abstract addPhotoToShared(Landroid/content/Context;Ljava/lang/String;[Ljava/lang/String;)I
.end method

.method public abstract delPhotoFromMyPhoto(Landroid/content/Context;Ljava/util/ArrayList;)I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/huawei/hicloud/photosharesdk/api/vo/SharePhoto;",
            ">;)I"
        }
    .end annotation
.end method

.method public abstract delPhotoFromShared(Landroid/content/Context;Ljava/util/ArrayList;)I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/huawei/hicloud/photosharesdk/api/vo/SharePhoto;",
            ">;)I"
        }
    .end annotation
.end method

.method public abstract getSharePhoto(Landroid/content/Context;Ljava/lang/String;IZ)Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "IZ)",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/huawei/hicloud/photosharesdk/api/vo/SharePhoto;",
            ">;"
        }
    .end annotation
.end method

.method public abstract photoDownload(Landroid/content/Context;[Lcom/huawei/hicloud/photosharesdk/api/vo/SharePhoto;IZ)I
.end method

.method public abstract photoDownload(Landroid/content/Context;[Lcom/huawei/hicloud/photosharesdk/api/vo/SharePhoto;Z)I
.end method

.method public abstract photoDownloadCancel(Landroid/content/Context;Lcom/huawei/hicloud/photosharesdk/api/vo/SharePhoto;)V
.end method
