.class public abstract Lcom/huawei/hicloud/photosharesdk3/logic/sync/SyncMessageCallable;
.super Lcom/huawei/hicloud/photosharesdk3/logic/call/BaseCallable;
.source "SyncMessageCallable.java"


# direct methods
.method public constructor <init>(Ljava/lang/Object;)V
    .locals 3
    .parameter "callParam"

    .prologue
    .line 23
    const-wide/16 v0, -0x1

    const/4 v2, 0x0

    invoke-direct {p0, p1, v0, v1, v2}, Lcom/huawei/hicloud/photosharesdk3/logic/call/BaseCallable;-><init>(Ljava/lang/Object;JI)V

    .line 25
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
