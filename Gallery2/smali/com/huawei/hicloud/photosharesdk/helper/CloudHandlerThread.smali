.class public final Lcom/huawei/hicloud/photosharesdk/helper/CloudHandlerThread;
.super Ljava/lang/Object;
.source "CloudHandlerThread.java"


# static fields
.field private static handlerThread:Landroid/os/HandlerThread;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 25
    const/4 v0, 0x0

    sput-object v0, Lcom/huawei/hicloud/photosharesdk/helper/CloudHandlerThread;->handlerThread:Landroid/os/HandlerThread;

    .line 24
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 24
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static declared-synchronized getInstance()Landroid/os/HandlerThread;
    .locals 3

    .prologue
    .line 28
    const-class v1, Lcom/huawei/hicloud/photosharesdk/helper/CloudHandlerThread;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/huawei/hicloud/photosharesdk/helper/CloudHandlerThread;->handlerThread:Landroid/os/HandlerThread;

    if-nez v0, :cond_0

    .line 29
    new-instance v0, Landroid/os/HandlerThread;

    const-string v2, "CloudhandlerThread"

    invoke-direct {v0, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/huawei/hicloud/photosharesdk/helper/CloudHandlerThread;->handlerThread:Landroid/os/HandlerThread;

    .line 30
    sget-object v0, Lcom/huawei/hicloud/photosharesdk/helper/CloudHandlerThread;->handlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 31
    const-string v0, "CloudHandlerThread"

    const-string v2, "CloudhandlerThread is created"

    invoke-static {v0, v2}, Lcom/huawei/hicloud/photosharesdk/helper/LogHelper;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 33
    :cond_0
    sget-object v0, Lcom/huawei/hicloud/photosharesdk/helper/CloudHandlerThread;->handlerThread:Landroid/os/HandlerThread;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 28
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method
