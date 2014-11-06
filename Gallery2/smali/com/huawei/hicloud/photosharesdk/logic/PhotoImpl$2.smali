.class Lcom/huawei/hicloud/photosharesdk/logic/PhotoImpl$2;
.super Lcom/huawei/hicloud/photosharesdk3/logic/call/HandleCallable;
.source "PhotoImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/huawei/hicloud/photosharesdk/logic/PhotoImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>(Ljava/lang/Object;)V
    .locals 0
    .parameter "$anonymous0"

    .prologue
    .line 619
    invoke-direct {p0, p1}, Lcom/huawei/hicloud/photosharesdk3/logic/call/HandleCallable;-><init>(Ljava/lang/Object;)V

    .line 1
    return-void
.end method


# virtual methods
.method public handle(Ljava/lang/Object;)V
    .locals 2
    .parameter "callResult"

    .prologue
    .line 624
    const-string v0, ""

    const-string v1, "download finish"

    invoke-static {v0, v1}, Lcom/huawei/hicloud/photosharesdk/helper/LogHelper;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 625
    return-void
.end method
