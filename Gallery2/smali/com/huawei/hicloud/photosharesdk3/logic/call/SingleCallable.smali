.class public Lcom/huawei/hicloud/photosharesdk3/logic/call/SingleCallable;
.super Lcom/huawei/hicloud/photosharesdk3/logic/call/SDKObject;
.source "SingleCallable.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/huawei/hicloud/photosharesdk3/logic/call/SDKObject;",
        "Ljava/util/concurrent/Callable",
        "<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field private singleThreadPool:Lcom/huawei/hicloud/photosharesdk3/logic/call/SingleCallablePool;


# direct methods
.method public constructor <init>(Lcom/huawei/hicloud/photosharesdk3/logic/call/SingleCallablePool;)V
    .locals 1
    .parameter "singleThreadPool"

    .prologue
    .line 21
    invoke-direct {p0}, Lcom/huawei/hicloud/photosharesdk3/logic/call/SDKObject;-><init>()V

    .line 13
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/huawei/hicloud/photosharesdk3/logic/call/SingleCallable;->singleThreadPool:Lcom/huawei/hicloud/photosharesdk3/logic/call/SingleCallablePool;

    .line 23
    iput-object p1, p0, Lcom/huawei/hicloud/photosharesdk3/logic/call/SingleCallable;->singleThreadPool:Lcom/huawei/hicloud/photosharesdk3/logic/call/SingleCallablePool;

    .line 24
    return-void
.end method


# virtual methods
.method public call()Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 36
    invoke-static {}, Lcom/huawei/hicloud/photosharesdk3/logic/call/SingleCallable;->getTagInfo()Ljava/lang/String;

    move-result-object v0

    const-string v1, "3"

    const-string v2, "come into SysCallable"

    invoke-static {v0, v1, v2}, Lcom/huawei/hicloud/photosharesdk3/logic/call/SingleCallable;->log(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 37
    iget-object v0, p0, Lcom/huawei/hicloud/photosharesdk3/logic/call/SingleCallable;->singleThreadPool:Lcom/huawei/hicloud/photosharesdk3/logic/call/SingleCallablePool;

    invoke-virtual {v0}, Lcom/huawei/hicloud/photosharesdk3/logic/call/SingleCallablePool;->start()V

    .line 38
    const/4 v0, 0x0

    return-object v0
.end method
