.class public interface abstract Lcom/huawei/hicloud/photosharesdk/logic/FriendsInterface;
.super Ljava/lang/Object;
.source "FriendsInterface.java"


# virtual methods
.method public abstract addReceiver(Landroid/content/Context;Lcom/huawei/hicloud/photosharesdk/api/vo/FriendsInfo;)I
.end method

.method public abstract delReceiver(Landroid/content/Context;Ljava/lang/String;)I
.end method

.method public abstract getReceiver(Landroid/content/Context;)Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/huawei/hicloud/photosharesdk/api/vo/FriendsInfo;",
            ">;"
        }
    .end annotation
.end method

.method public abstract isHWAccount(Landroid/content/Context;Ljava/lang/String;)Z
.end method

.method public abstract isHWAccountList(Landroid/content/Context;[Ljava/lang/String;)Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "[",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public abstract updateReceiver(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I
.end method
