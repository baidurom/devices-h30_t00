.class public Lcom/huawei/hicloud/photosharesdk/logic/CameraScanner;
.super Ljava/lang/Object;
.source "CameraScanner.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 27
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public beginScan(Landroid/content/Context;)V
    .locals 5
    .parameter "context"

    .prologue
    .line 39
    invoke-static {p1}, Lcom/huawei/hicloud/photosharesdk/helper/SharedPreferenceUtil$AccountInfoUtil;->readIsLogOnFromFile(Landroid/content/Context;)Z

    move-result v0

    .line 40
    .local v0, isLogOn:Z
    if-eqz v0, :cond_0

    .line 42
    new-instance v1, Lcom/huawei/hicloud/photosharesdk/logic/ScanCallable;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/huawei/hicloud/photosharesdk/logic/ScanCallable;-><init>(Ljava/lang/Object;)V

    .line 43
    .local v1, scanCallable:Lcom/huawei/hicloud/photosharesdk/logic/ScanCallable;
    invoke-static {}, Lcom/huawei/hicloud/photosharesdk3/logic/call/ThreadPoolManager;->getInstance()Lcom/huawei/hicloud/photosharesdk3/logic/call/ThreadPoolManager;

    move-result-object v2

    const-wide/16 v3, -0x1

    invoke-virtual {v2, v1, v3, v4}, Lcom/huawei/hicloud/photosharesdk3/logic/call/ThreadPoolManager;->submitCallableSerial(Lcom/huawei/hicloud/photosharesdk3/logic/call/SerialCallable;J)V

    .line 45
    .end local v1           #scanCallable:Lcom/huawei/hicloud/photosharesdk/logic/ScanCallable;
    :cond_0
    return-void
.end method

.method public prepareScan()V
    .locals 0

    .prologue
    .line 36
    return-void
.end method
