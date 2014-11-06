.class public Lcom/huawei/hicloud/photosharesdk/request/msg/ClientAccountCheckRsp;
.super Lcom/huawei/hicloud/photosharesdk/request/msg/ClientBaseRsp;
.source "ClientAccountCheckRsp.java"


# instance fields
.field private accUidMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 46
    invoke-direct {p0}, Lcom/huawei/hicloud/photosharesdk/request/msg/ClientBaseRsp;-><init>()V

    .line 27
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/huawei/hicloud/photosharesdk/request/msg/ClientAccountCheckRsp;->accUidMap:Ljava/util/Map;

    .line 48
    return-void
.end method

.method public static main([Ljava/lang/String;)V
    .locals 0
    .parameter "args"

    .prologue
    .line 59
    return-void
.end method


# virtual methods
.method public getAccUidMap()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 33
    iget-object v0, p0, Lcom/huawei/hicloud/photosharesdk/request/msg/ClientAccountCheckRsp;->accUidMap:Ljava/util/Map;

    return-object v0
.end method

.method public setAccUidMap(Ljava/util/Map;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 40
    .local p1, accUidMap:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    iput-object p1, p0, Lcom/huawei/hicloud/photosharesdk/request/msg/ClientAccountCheckRsp;->accUidMap:Ljava/util/Map;

    .line 41
    return-void
.end method
