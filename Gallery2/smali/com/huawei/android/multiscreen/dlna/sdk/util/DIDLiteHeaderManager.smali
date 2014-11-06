.class public Lcom/huawei/android/multiscreen/dlna/sdk/util/DIDLiteHeaderManager;
.super Ljava/lang/Object;
.source "DIDLiteHeaderManager.java"


# static fields
.field private static instance:Lcom/huawei/android/multiscreen/dlna/sdk/util/DIDLiteHeaderManager;


# instance fields
.field private deviceDIDLLiteHeaderMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 25
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 23
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/huawei/android/multiscreen/dlna/sdk/util/DIDLiteHeaderManager;->deviceDIDLLiteHeaderMap:Ljava/util/Map;

    .line 27
    return-void
.end method

.method public static getInstance()Lcom/huawei/android/multiscreen/dlna/sdk/util/DIDLiteHeaderManager;
    .locals 1

    .prologue
    .line 30
    sget-object v0, Lcom/huawei/android/multiscreen/dlna/sdk/util/DIDLiteHeaderManager;->instance:Lcom/huawei/android/multiscreen/dlna/sdk/util/DIDLiteHeaderManager;

    if-nez v0, :cond_0

    .line 31
    new-instance v0, Lcom/huawei/android/multiscreen/dlna/sdk/util/DIDLiteHeaderManager;

    invoke-direct {v0}, Lcom/huawei/android/multiscreen/dlna/sdk/util/DIDLiteHeaderManager;-><init>()V

    sput-object v0, Lcom/huawei/android/multiscreen/dlna/sdk/util/DIDLiteHeaderManager;->instance:Lcom/huawei/android/multiscreen/dlna/sdk/util/DIDLiteHeaderManager;

    .line 32
    :cond_0
    sget-object v0, Lcom/huawei/android/multiscreen/dlna/sdk/util/DIDLiteHeaderManager;->instance:Lcom/huawei/android/multiscreen/dlna/sdk/util/DIDLiteHeaderManager;

    return-object v0
.end method


# virtual methods
.method public getDeviceDIDLLITEHeaderMap()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 36
    iget-object v0, p0, Lcom/huawei/android/multiscreen/dlna/sdk/util/DIDLiteHeaderManager;->deviceDIDLLiteHeaderMap:Ljava/util/Map;

    return-object v0
.end method

.method public getDeviceDIDLLiteHeader(I)Ljava/lang/String;
    .locals 2
    .parameter "deviceId"

    .prologue
    .line 53
    iget-object v0, p0, Lcom/huawei/android/multiscreen/dlna/sdk/util/DIDLiteHeaderManager;->deviceDIDLLiteHeaderMap:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public removeDeviceDIDLLiteHeader(I)V
    .locals 2
    .parameter "deviceId"

    .prologue
    .line 47
    iget-object v0, p0, Lcom/huawei/android/multiscreen/dlna/sdk/util/DIDLiteHeaderManager;->deviceDIDLLiteHeaderMap:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 48
    iget-object v0, p0, Lcom/huawei/android/multiscreen/dlna/sdk/util/DIDLiteHeaderManager;->deviceDIDLLiteHeaderMap:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 50
    :cond_0
    return-void
.end method

.method public setDeviceDIDLLiteHeader(ILjava/lang/String;)V
    .locals 2
    .parameter "deviceId"
    .parameter "didlLiteHeader"

    .prologue
    .line 40
    if-nez p2, :cond_0

    .line 44
    :goto_0
    return-void

    .line 43
    :cond_0
    iget-object v0, p0, Lcom/huawei/android/multiscreen/dlna/sdk/util/DIDLiteHeaderManager;->deviceDIDLLiteHeaderMap:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method
