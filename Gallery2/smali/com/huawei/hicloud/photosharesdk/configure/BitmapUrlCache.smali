.class public Lcom/huawei/hicloud/photosharesdk/configure/BitmapUrlCache;
.super Ljava/util/HashMap;
.source "BitmapUrlCache.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/HashMap",
        "<",
        "Ljava/lang/String;",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x1L


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 5
    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    return-void
.end method


# virtual methods
.method public isCached(Ljava/lang/String;)Z
    .locals 1
    .parameter "url"

    .prologue
    .line 10
    invoke-virtual {p0, p1}, Lcom/huawei/hicloud/photosharesdk/configure/BitmapUrlCache;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1}, Lcom/huawei/hicloud/photosharesdk/configure/BitmapUrlCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
