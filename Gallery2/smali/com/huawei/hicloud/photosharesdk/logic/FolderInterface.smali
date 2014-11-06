.class public interface abstract Lcom/huawei/hicloud/photosharesdk/logic/FolderInterface;
.super Ljava/lang/Object;
.source "FolderInterface.java"


# virtual methods
.method public abstract cancelReceiverFolder(Landroid/content/Context;Lcom/huawei/hicloud/photosharesdk/api/vo/ShareFolder;)I
.end method

.method public abstract confirmReceiverFolder(Landroid/content/Context;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)I
.end method

.method public abstract createAsynShareFolder(Landroid/content/Context;Lcom/huawei/hicloud/photosharesdk/api/vo/ShareFolder;)I
.end method

.method public abstract createShareFolder(Landroid/content/Context;Lcom/huawei/hicloud/photosharesdk/api/vo/ShareFolder;)Lcom/huawei/hicloud/photosharesdk/api/vo/ShareFolder;
.end method

.method public abstract delShareFolder(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public abstract getFolderInfo(Landroid/content/Context;II)Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "II)",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/huawei/hicloud/photosharesdk/api/vo/ShareFolder;",
            ">;>;"
        }
    .end annotation
.end method

.method public abstract getFolderInfoByPath(Landroid/content/Context;Ljava/lang/String;I)Lcom/huawei/hicloud/photosharesdk/api/vo/ShareFolder;
.end method

.method public abstract modifyShareFolder(Landroid/content/Context;Lcom/huawei/hicloud/photosharesdk/api/vo/ShareFolder;)I
.end method

.method public abstract modifyShareFolderRec(Landroid/content/Context;Ljava/lang/String;Ljava/util/ArrayList;Ljava/util/ArrayList;)I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)I"
        }
    .end annotation
.end method
