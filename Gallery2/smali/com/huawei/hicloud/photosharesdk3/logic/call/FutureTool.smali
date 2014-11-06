.class public final Lcom/huawei/hicloud/photosharesdk3/logic/call/FutureTool;
.super Ljava/lang/Object;
.source "FutureTool.java"


# static fields
.field public static final DEFAULT_TIMEOUT:J = 0x1b7740L


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 22
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 24
    return-void
.end method

.method public static get(Ljava/util/concurrent/Future;J)Ljava/lang/Object;
    .locals 4
    .parameter
    .parameter "timeout"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Future",
            "<",
            "Ljava/lang/Object;",
            ">;J)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;,
            Ljava/util/concurrent/ExecutionException;,
            Ljava/util/concurrent/TimeoutException;
        }
    .end annotation

    .prologue
    .line 44
    .local p0, future:Ljava/util/concurrent/Future;,"Ljava/util/concurrent/Future<Ljava/lang/Object;>;"
    const/4 v0, 0x0

    .line 45
    .local v0, callResult:Ljava/lang/Object;
    const-wide/16 v1, -0x1

    cmp-long v1, p1, v1

    if-nez v1, :cond_0

    .line 48
    const-wide/32 v1, 0x1b7740

    sget-object v3, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {p0, v1, v2, v3}, Ljava/util/concurrent/Future;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object v0

    .line 54
    :goto_0
    return-object v0

    .line 52
    :cond_0
    sget-object v1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {p0, p1, p2, v1}, Ljava/util/concurrent/Future;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0
.end method
