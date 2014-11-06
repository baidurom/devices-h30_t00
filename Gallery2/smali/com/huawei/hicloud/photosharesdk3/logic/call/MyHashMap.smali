.class public Lcom/huawei/hicloud/photosharesdk3/logic/call/MyHashMap;
.super Ljava/util/HashMap;
.source "MyHashMap.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/HashMap",
        "<",
        "Ljava/lang/String;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x1L


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 6
    .parameter "object"

    .prologue
    const/4 v3, 0x0

    .line 29
    if-ne p0, p1, :cond_1

    .line 31
    const/4 v3, 0x1

    .line 45
    :cond_0
    :goto_0
    return v3

    .line 33
    :cond_1
    if-eqz p1, :cond_0

    .line 37
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    if-ne v4, v5, :cond_0

    move-object v2, p1

    .line 42
    check-cast v2, Lcom/huawei/hicloud/photosharesdk3/logic/call/MyHashMap;

    .line 43
    .local v2, myHashMap:Lcom/huawei/hicloud/photosharesdk3/logic/call/MyHashMap;
    const-string v3, "FIXED_BASECALLABLE_KEY"

    invoke-virtual {v2, v3}, Lcom/huawei/hicloud/photosharesdk3/logic/call/MyHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/huawei/hicloud/photosharesdk3/logic/call/BaseCallable;

    .line 44
    .local v0, baseCallable:Lcom/huawei/hicloud/photosharesdk3/logic/call/BaseCallable;
    const-string v3, "FIXED_BASECALLABLE_KEY"

    invoke-virtual {p0, v3}, Lcom/huawei/hicloud/photosharesdk3/logic/call/MyHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/huawei/hicloud/photosharesdk3/logic/call/BaseCallable;

    .line 45
    .local v1, myBaseCallable:Lcom/huawei/hicloud/photosharesdk3/logic/call/BaseCallable;
    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    goto :goto_0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 56
    invoke-super {p0}, Ljava/util/HashMap;->hashCode()I

    move-result v0

    return v0
.end method
