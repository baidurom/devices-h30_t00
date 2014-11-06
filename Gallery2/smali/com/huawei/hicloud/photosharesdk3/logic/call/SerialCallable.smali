.class public abstract Lcom/huawei/hicloud/photosharesdk3/logic/call/SerialCallable;
.super Lcom/huawei/hicloud/photosharesdk3/logic/call/BaseCallable;
.source "SerialCallable.java"


# direct methods
.method public constructor <init>(Ljava/lang/Object;)V
    .locals 0
    .parameter "callParam"

    .prologue
    .line 21
    invoke-direct {p0, p1}, Lcom/huawei/hicloud/photosharesdk3/logic/call/BaseCallable;-><init>(Ljava/lang/Object;)V

    .line 23
    return-void
.end method


# virtual methods
.method public abstract call()Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation
.end method

.method public handleCallException(Ljava/lang/Exception;)V
    .locals 0
    .parameter "exception"

    .prologue
    .line 46
    return-void
.end method

.method public onTimeout()V
    .locals 0

    .prologue
    .line 56
    return-void
.end method
