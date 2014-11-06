.class public Lcom/huawei/hicloud/photosharesdk3/logic/call/ConditionTool;
.super Ljava/lang/Object;
.source "ConditionTool.java"


# instance fields
.field future:Ljava/util/concurrent/Future;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/Future",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 11
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 16
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/huawei/hicloud/photosharesdk3/logic/call/ConditionTool;->future:Ljava/util/concurrent/Future;

    .line 11
    return-void
.end method


# virtual methods
.method public getFuture()Ljava/util/concurrent/Future;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/concurrent/Future",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 20
    iget-object v0, p0, Lcom/huawei/hicloud/photosharesdk3/logic/call/ConditionTool;->future:Ljava/util/concurrent/Future;

    return-object v0
.end method

.method public setFuture(Ljava/util/concurrent/Future;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Future",
            "<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 25
    .local p1, future:Ljava/util/concurrent/Future;,"Ljava/util/concurrent/Future<Ljava/lang/Object;>;"
    iput-object p1, p0, Lcom/huawei/hicloud/photosharesdk3/logic/call/ConditionTool;->future:Ljava/util/concurrent/Future;

    .line 26
    return-void
.end method
