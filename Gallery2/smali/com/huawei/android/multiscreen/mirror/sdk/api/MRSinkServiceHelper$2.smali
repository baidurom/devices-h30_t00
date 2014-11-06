.class Lcom/huawei/android/multiscreen/mirror/sdk/api/MRSinkServiceHelper$2;
.super Ljava/lang/Object;
.source "MRSinkServiceHelper.java"

# interfaces
.implements Lcom/huawei/android/multiscreen/mirror/sdk/api/IMRSinkCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/huawei/android/multiscreen/mirror/sdk/api/MRSinkServiceHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/huawei/android/multiscreen/mirror/sdk/api/MRSinkServiceHelper;


# direct methods
.method constructor <init>(Lcom/huawei/android/multiscreen/mirror/sdk/api/MRSinkServiceHelper;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/huawei/android/multiscreen/mirror/sdk/api/MRSinkServiceHelper$2;->this$0:Lcom/huawei/android/multiscreen/mirror/sdk/api/MRSinkServiceHelper;

    .line 204
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public Connected()I
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 327
    const-string v1, "MIRROR_SDK"

    const-string v2, "SinkService Connected()"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 329
    iget-object v1, p0, Lcom/huawei/android/multiscreen/mirror/sdk/api/MRSinkServiceHelper$2;->this$0:Lcom/huawei/android/multiscreen/mirror/sdk/api/MRSinkServiceHelper;

    #getter for: Lcom/huawei/android/multiscreen/mirror/sdk/api/MRSinkServiceHelper;->semConnected:Ljava/util/concurrent/Semaphore;
    invoke-static {v1}, Lcom/huawei/android/multiscreen/mirror/sdk/api/MRSinkServiceHelper;->access$12(Lcom/huawei/android/multiscreen/mirror/sdk/api/MRSinkServiceHelper;)Ljava/util/concurrent/Semaphore;

    move-result-object v1

    monitor-enter v1

    .line 330
    :try_start_0
    const-string v2, "MIRROR_SDK"

    const-string v3, "semConnected.notify(); in"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 331
    iget-object v2, p0, Lcom/huawei/android/multiscreen/mirror/sdk/api/MRSinkServiceHelper$2;->this$0:Lcom/huawei/android/multiscreen/mirror/sdk/api/MRSinkServiceHelper;

    const/4 v3, 0x0

    #setter for: Lcom/huawei/android/multiscreen/mirror/sdk/api/MRSinkServiceHelper;->semConnectedWaitFlag:Z
    invoke-static {v2, v3}, Lcom/huawei/android/multiscreen/mirror/sdk/api/MRSinkServiceHelper;->access$6(Lcom/huawei/android/multiscreen/mirror/sdk/api/MRSinkServiceHelper;Z)V

    .line 332
    iget-object v2, p0, Lcom/huawei/android/multiscreen/mirror/sdk/api/MRSinkServiceHelper$2;->this$0:Lcom/huawei/android/multiscreen/mirror/sdk/api/MRSinkServiceHelper;

    #getter for: Lcom/huawei/android/multiscreen/mirror/sdk/api/MRSinkServiceHelper;->semConnected:Ljava/util/concurrent/Semaphore;
    invoke-static {v2}, Lcom/huawei/android/multiscreen/mirror/sdk/api/MRSinkServiceHelper;->access$12(Lcom/huawei/android/multiscreen/mirror/sdk/api/MRSinkServiceHelper;)Ljava/util/concurrent/Semaphore;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->notifyAll()V

    .line 333
    const-string v2, "MIRROR_SDK"

    const-string v3, "semConnected.notify(); out"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 329
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 336
    iget-object v1, p0, Lcom/huawei/android/multiscreen/mirror/sdk/api/MRSinkServiceHelper$2;->this$0:Lcom/huawei/android/multiscreen/mirror/sdk/api/MRSinkServiceHelper;

    #getter for: Lcom/huawei/android/multiscreen/mirror/sdk/api/MRSinkServiceHelper;->lockActivityCallback:Ljava/lang/Object;
    invoke-static {v1}, Lcom/huawei/android/multiscreen/mirror/sdk/api/MRSinkServiceHelper;->access$13(Lcom/huawei/android/multiscreen/mirror/sdk/api/MRSinkServiceHelper;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 337
    :try_start_1
    iget-object v2, p0, Lcom/huawei/android/multiscreen/mirror/sdk/api/MRSinkServiceHelper$2;->this$0:Lcom/huawei/android/multiscreen/mirror/sdk/api/MRSinkServiceHelper;

    #getter for: Lcom/huawei/android/multiscreen/mirror/sdk/api/MRSinkServiceHelper;->mSinkActivityCallbak:Lcom/huawei/android/multiscreen/mirror/sdk/api/MRSinkServiceHelper$ILayoutSinkCallback;
    invoke-static {v2}, Lcom/huawei/android/multiscreen/mirror/sdk/api/MRSinkServiceHelper;->access$14(Lcom/huawei/android/multiscreen/mirror/sdk/api/MRSinkServiceHelper;)Lcom/huawei/android/multiscreen/mirror/sdk/api/MRSinkServiceHelper$ILayoutSinkCallback;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 338
    iget-object v2, p0, Lcom/huawei/android/multiscreen/mirror/sdk/api/MRSinkServiceHelper$2;->this$0:Lcom/huawei/android/multiscreen/mirror/sdk/api/MRSinkServiceHelper;

    #getter for: Lcom/huawei/android/multiscreen/mirror/sdk/api/MRSinkServiceHelper;->mSinkActivityCallbak:Lcom/huawei/android/multiscreen/mirror/sdk/api/MRSinkServiceHelper$ILayoutSinkCallback;
    invoke-static {v2}, Lcom/huawei/android/multiscreen/mirror/sdk/api/MRSinkServiceHelper;->access$14(Lcom/huawei/android/multiscreen/mirror/sdk/api/MRSinkServiceHelper;)Lcom/huawei/android/multiscreen/mirror/sdk/api/MRSinkServiceHelper$ILayoutSinkCallback;

    move-result-object v2

    invoke-interface {v2}, Lcom/huawei/android/multiscreen/mirror/sdk/api/MRSinkServiceHelper$ILayoutSinkCallback;->connected()V

    .line 336
    :cond_0
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 341
    iget-object v1, p0, Lcom/huawei/android/multiscreen/mirror/sdk/api/MRSinkServiceHelper$2;->this$0:Lcom/huawei/android/multiscreen/mirror/sdk/api/MRSinkServiceHelper;

    #getter for: Lcom/huawei/android/multiscreen/mirror/sdk/api/MRSinkServiceHelper;->mExternalSinkCallback:Lcom/huawei/android/multiscreen/mirror/sdk/api/IMRSinkCallback;
    invoke-static {v1}, Lcom/huawei/android/multiscreen/mirror/sdk/api/MRSinkServiceHelper;->access$1(Lcom/huawei/android/multiscreen/mirror/sdk/api/MRSinkServiceHelper;)Lcom/huawei/android/multiscreen/mirror/sdk/api/IMRSinkCallback;

    move-result-object v1

    if-nez v1, :cond_1

    :goto_0
    return v0

    .line 329
    :catchall_0
    move-exception v0

    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    .line 336
    :catchall_1
    move-exception v0

    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v0

    .line 341
    :cond_1
    iget-object v0, p0, Lcom/huawei/android/multiscreen/mirror/sdk/api/MRSinkServiceHelper$2;->this$0:Lcom/huawei/android/multiscreen/mirror/sdk/api/MRSinkServiceHelper;

    #getter for: Lcom/huawei/android/multiscreen/mirror/sdk/api/MRSinkServiceHelper;->mExternalSinkCallback:Lcom/huawei/android/multiscreen/mirror/sdk/api/IMRSinkCallback;
    invoke-static {v0}, Lcom/huawei/android/multiscreen/mirror/sdk/api/MRSinkServiceHelper;->access$1(Lcom/huawei/android/multiscreen/mirror/sdk/api/MRSinkServiceHelper;)Lcom/huawei/android/multiscreen/mirror/sdk/api/IMRSinkCallback;

    move-result-object v0

    .line 342
    invoke-interface {v0}, Lcom/huawei/android/multiscreen/mirror/sdk/api/IMRSinkCallback;->Connected()I

    move-result v0

    goto :goto_0
.end method

.method public Disconnected()I
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 307
    const-string v1, "MIRROR_SDK"

    const-string v2, "SinkService Disconnected()"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 309
    iget-object v1, p0, Lcom/huawei/android/multiscreen/mirror/sdk/api/MRSinkServiceHelper$2;->this$0:Lcom/huawei/android/multiscreen/mirror/sdk/api/MRSinkServiceHelper;

    #getter for: Lcom/huawei/android/multiscreen/mirror/sdk/api/MRSinkServiceHelper;->semConnected:Ljava/util/concurrent/Semaphore;
    invoke-static {v1}, Lcom/huawei/android/multiscreen/mirror/sdk/api/MRSinkServiceHelper;->access$12(Lcom/huawei/android/multiscreen/mirror/sdk/api/MRSinkServiceHelper;)Ljava/util/concurrent/Semaphore;

    move-result-object v1

    monitor-enter v1

    .line 310
    :try_start_0
    const-string v2, "MIRROR_SDK"

    const-string v3, "semConnected.notify(); in"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 311
    iget-object v2, p0, Lcom/huawei/android/multiscreen/mirror/sdk/api/MRSinkServiceHelper$2;->this$0:Lcom/huawei/android/multiscreen/mirror/sdk/api/MRSinkServiceHelper;

    const/4 v3, 0x0

    #setter for: Lcom/huawei/android/multiscreen/mirror/sdk/api/MRSinkServiceHelper;->semConnectedWaitFlag:Z
    invoke-static {v2, v3}, Lcom/huawei/android/multiscreen/mirror/sdk/api/MRSinkServiceHelper;->access$6(Lcom/huawei/android/multiscreen/mirror/sdk/api/MRSinkServiceHelper;Z)V

    .line 312
    iget-object v2, p0, Lcom/huawei/android/multiscreen/mirror/sdk/api/MRSinkServiceHelper$2;->this$0:Lcom/huawei/android/multiscreen/mirror/sdk/api/MRSinkServiceHelper;

    #getter for: Lcom/huawei/android/multiscreen/mirror/sdk/api/MRSinkServiceHelper;->semConnected:Ljava/util/concurrent/Semaphore;
    invoke-static {v2}, Lcom/huawei/android/multiscreen/mirror/sdk/api/MRSinkServiceHelper;->access$12(Lcom/huawei/android/multiscreen/mirror/sdk/api/MRSinkServiceHelper;)Ljava/util/concurrent/Semaphore;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->notifyAll()V

    .line 313
    const-string v2, "MIRROR_SDK"

    const-string v3, "semConnected.notify(); out"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 309
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 316
    iget-object v1, p0, Lcom/huawei/android/multiscreen/mirror/sdk/api/MRSinkServiceHelper$2;->this$0:Lcom/huawei/android/multiscreen/mirror/sdk/api/MRSinkServiceHelper;

    #getter for: Lcom/huawei/android/multiscreen/mirror/sdk/api/MRSinkServiceHelper;->lockActivityCallback:Ljava/lang/Object;
    invoke-static {v1}, Lcom/huawei/android/multiscreen/mirror/sdk/api/MRSinkServiceHelper;->access$13(Lcom/huawei/android/multiscreen/mirror/sdk/api/MRSinkServiceHelper;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 317
    :try_start_1
    iget-object v2, p0, Lcom/huawei/android/multiscreen/mirror/sdk/api/MRSinkServiceHelper$2;->this$0:Lcom/huawei/android/multiscreen/mirror/sdk/api/MRSinkServiceHelper;

    #getter for: Lcom/huawei/android/multiscreen/mirror/sdk/api/MRSinkServiceHelper;->mSinkActivityCallbak:Lcom/huawei/android/multiscreen/mirror/sdk/api/MRSinkServiceHelper$ILayoutSinkCallback;
    invoke-static {v2}, Lcom/huawei/android/multiscreen/mirror/sdk/api/MRSinkServiceHelper;->access$14(Lcom/huawei/android/multiscreen/mirror/sdk/api/MRSinkServiceHelper;)Lcom/huawei/android/multiscreen/mirror/sdk/api/MRSinkServiceHelper$ILayoutSinkCallback;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 318
    iget-object v2, p0, Lcom/huawei/android/multiscreen/mirror/sdk/api/MRSinkServiceHelper$2;->this$0:Lcom/huawei/android/multiscreen/mirror/sdk/api/MRSinkServiceHelper;

    #getter for: Lcom/huawei/android/multiscreen/mirror/sdk/api/MRSinkServiceHelper;->mSinkActivityCallbak:Lcom/huawei/android/multiscreen/mirror/sdk/api/MRSinkServiceHelper$ILayoutSinkCallback;
    invoke-static {v2}, Lcom/huawei/android/multiscreen/mirror/sdk/api/MRSinkServiceHelper;->access$14(Lcom/huawei/android/multiscreen/mirror/sdk/api/MRSinkServiceHelper;)Lcom/huawei/android/multiscreen/mirror/sdk/api/MRSinkServiceHelper$ILayoutSinkCallback;

    move-result-object v2

    invoke-interface {v2}, Lcom/huawei/android/multiscreen/mirror/sdk/api/MRSinkServiceHelper$ILayoutSinkCallback;->disconnected()V

    .line 316
    :cond_0
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 321
    iget-object v1, p0, Lcom/huawei/android/multiscreen/mirror/sdk/api/MRSinkServiceHelper$2;->this$0:Lcom/huawei/android/multiscreen/mirror/sdk/api/MRSinkServiceHelper;

    #getter for: Lcom/huawei/android/multiscreen/mirror/sdk/api/MRSinkServiceHelper;->mExternalSinkCallback:Lcom/huawei/android/multiscreen/mirror/sdk/api/IMRSinkCallback;
    invoke-static {v1}, Lcom/huawei/android/multiscreen/mirror/sdk/api/MRSinkServiceHelper;->access$1(Lcom/huawei/android/multiscreen/mirror/sdk/api/MRSinkServiceHelper;)Lcom/huawei/android/multiscreen/mirror/sdk/api/IMRSinkCallback;

    move-result-object v1

    if-nez v1, :cond_1

    :goto_0
    return v0

    .line 309
    :catchall_0
    move-exception v0

    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    .line 316
    :catchall_1
    move-exception v0

    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v0

    .line 321
    :cond_1
    iget-object v0, p0, Lcom/huawei/android/multiscreen/mirror/sdk/api/MRSinkServiceHelper$2;->this$0:Lcom/huawei/android/multiscreen/mirror/sdk/api/MRSinkServiceHelper;

    #getter for: Lcom/huawei/android/multiscreen/mirror/sdk/api/MRSinkServiceHelper;->mExternalSinkCallback:Lcom/huawei/android/multiscreen/mirror/sdk/api/IMRSinkCallback;
    invoke-static {v0}, Lcom/huawei/android/multiscreen/mirror/sdk/api/MRSinkServiceHelper;->access$1(Lcom/huawei/android/multiscreen/mirror/sdk/api/MRSinkServiceHelper;)Lcom/huawei/android/multiscreen/mirror/sdk/api/IMRSinkCallback;

    move-result-object v0

    .line 322
    invoke-interface {v0}, Lcom/huawei/android/multiscreen/mirror/sdk/api/IMRSinkCallback;->Disconnected()I

    move-result v0

    goto :goto_0
.end method

.method public DoesReceiveConnection(Lcom/huawei/android/multiscreen/mirror/sdk/structs/SDeviceDescription;)I
    .locals 2
    .parameter "device"

    .prologue
    .line 236
    const-string v0, "MIRROR_SDK"

    const-string v1, "SinkService DoesReceiveConnection "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 239
    iget-object v0, p0, Lcom/huawei/android/multiscreen/mirror/sdk/api/MRSinkServiceHelper$2;->this$0:Lcom/huawei/android/multiscreen/mirror/sdk/api/MRSinkServiceHelper;

    #getter for: Lcom/huawei/android/multiscreen/mirror/sdk/api/MRSinkServiceHelper;->delaying:Z
    invoke-static {v0}, Lcom/huawei/android/multiscreen/mirror/sdk/api/MRSinkServiceHelper;->access$2(Lcom/huawei/android/multiscreen/mirror/sdk/api/MRSinkServiceHelper;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 240
    const/4 v0, 0x0

    .line 242
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/huawei/android/multiscreen/mirror/sdk/api/MRSinkServiceHelper$2;->this$0:Lcom/huawei/android/multiscreen/mirror/sdk/api/MRSinkServiceHelper;

    #getter for: Lcom/huawei/android/multiscreen/mirror/sdk/api/MRSinkServiceHelper;->mExternalSinkCallback:Lcom/huawei/android/multiscreen/mirror/sdk/api/IMRSinkCallback;
    invoke-static {v0}, Lcom/huawei/android/multiscreen/mirror/sdk/api/MRSinkServiceHelper;->access$1(Lcom/huawei/android/multiscreen/mirror/sdk/api/MRSinkServiceHelper;)Lcom/huawei/android/multiscreen/mirror/sdk/api/IMRSinkCallback;

    move-result-object v0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/huawei/android/multiscreen/mirror/sdk/api/MRSinkServiceHelper$2;->this$0:Lcom/huawei/android/multiscreen/mirror/sdk/api/MRSinkServiceHelper;

    #getter for: Lcom/huawei/android/multiscreen/mirror/sdk/api/MRSinkServiceHelper;->mExternalSinkCallback:Lcom/huawei/android/multiscreen/mirror/sdk/api/IMRSinkCallback;
    invoke-static {v0}, Lcom/huawei/android/multiscreen/mirror/sdk/api/MRSinkServiceHelper;->access$1(Lcom/huawei/android/multiscreen/mirror/sdk/api/MRSinkServiceHelper;)Lcom/huawei/android/multiscreen/mirror/sdk/api/IMRSinkCallback;

    move-result-object v0

    .line 243
    invoke-interface {v0, p1}, Lcom/huawei/android/multiscreen/mirror/sdk/api/IMRSinkCallback;->DoesReceiveConnection(Lcom/huawei/android/multiscreen/mirror/sdk/structs/SDeviceDescription;)I

    move-result v0

    goto :goto_0
.end method

.method public Error(ILjava/lang/String;)I
    .locals 2
    .parameter "code"
    .parameter "msg"

    .prologue
    .line 222
    const-string v0, "MIRROR_SDK"

    const-string v1, "SinkService Error()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 223
    iget-object v0, p0, Lcom/huawei/android/multiscreen/mirror/sdk/api/MRSinkServiceHelper$2;->this$0:Lcom/huawei/android/multiscreen/mirror/sdk/api/MRSinkServiceHelper;

    #getter for: Lcom/huawei/android/multiscreen/mirror/sdk/api/MRSinkServiceHelper;->mExternalSinkCallback:Lcom/huawei/android/multiscreen/mirror/sdk/api/IMRSinkCallback;
    invoke-static {v0}, Lcom/huawei/android/multiscreen/mirror/sdk/api/MRSinkServiceHelper;->access$1(Lcom/huawei/android/multiscreen/mirror/sdk/api/MRSinkServiceHelper;)Lcom/huawei/android/multiscreen/mirror/sdk/api/IMRSinkCallback;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/huawei/android/multiscreen/mirror/sdk/api/MRSinkServiceHelper$2;->this$0:Lcom/huawei/android/multiscreen/mirror/sdk/api/MRSinkServiceHelper;

    #getter for: Lcom/huawei/android/multiscreen/mirror/sdk/api/MRSinkServiceHelper;->mExternalSinkCallback:Lcom/huawei/android/multiscreen/mirror/sdk/api/IMRSinkCallback;
    invoke-static {v0}, Lcom/huawei/android/multiscreen/mirror/sdk/api/MRSinkServiceHelper;->access$1(Lcom/huawei/android/multiscreen/mirror/sdk/api/MRSinkServiceHelper;)Lcom/huawei/android/multiscreen/mirror/sdk/api/IMRSinkCallback;

    move-result-object v0

    .line 224
    invoke-interface {v0, p1, p2}, Lcom/huawei/android/multiscreen/mirror/sdk/api/IMRSinkCallback;->Error(ILjava/lang/String;)I

    move-result v0

    goto :goto_0
.end method

.method public MirrorClosedBySource()I
    .locals 2

    .prologue
    .line 229
    const-string v0, "MIRROR_SDK"

    const-string v1, "SinkService MirrorClosedBySource()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 230
    iget-object v0, p0, Lcom/huawei/android/multiscreen/mirror/sdk/api/MRSinkServiceHelper$2;->this$0:Lcom/huawei/android/multiscreen/mirror/sdk/api/MRSinkServiceHelper;

    #getter for: Lcom/huawei/android/multiscreen/mirror/sdk/api/MRSinkServiceHelper;->mExternalSinkCallback:Lcom/huawei/android/multiscreen/mirror/sdk/api/IMRSinkCallback;
    invoke-static {v0}, Lcom/huawei/android/multiscreen/mirror/sdk/api/MRSinkServiceHelper;->access$1(Lcom/huawei/android/multiscreen/mirror/sdk/api/MRSinkServiceHelper;)Lcom/huawei/android/multiscreen/mirror/sdk/api/IMRSinkCallback;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/huawei/android/multiscreen/mirror/sdk/api/MRSinkServiceHelper$2;->this$0:Lcom/huawei/android/multiscreen/mirror/sdk/api/MRSinkServiceHelper;

    #getter for: Lcom/huawei/android/multiscreen/mirror/sdk/api/MRSinkServiceHelper;->mExternalSinkCallback:Lcom/huawei/android/multiscreen/mirror/sdk/api/IMRSinkCallback;
    invoke-static {v0}, Lcom/huawei/android/multiscreen/mirror/sdk/api/MRSinkServiceHelper;->access$1(Lcom/huawei/android/multiscreen/mirror/sdk/api/MRSinkServiceHelper;)Lcom/huawei/android/multiscreen/mirror/sdk/api/IMRSinkCallback;

    move-result-object v0

    .line 231
    invoke-interface {v0}, Lcom/huawei/android/multiscreen/mirror/sdk/api/IMRSinkCallback;->MirrorClosedBySource()I

    move-result v0

    goto :goto_0
.end method

.method public OnConnecting()I
    .locals 10

    .prologue
    const/4 v4, 0x0

    const/4 v9, 0x1

    .line 248
    const-string v5, "MIRROR_SDK"

    const-string v6, "SinkService OnConnecting"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 250
    const/4 v3, 0x0

    .line 251
    .local v3, output:I
    iget-object v5, p0, Lcom/huawei/android/multiscreen/mirror/sdk/api/MRSinkServiceHelper$2;->this$0:Lcom/huawei/android/multiscreen/mirror/sdk/api/MRSinkServiceHelper;

    #getter for: Lcom/huawei/android/multiscreen/mirror/sdk/api/MRSinkServiceHelper;->activityAlive:Z
    invoke-static {v5}, Lcom/huawei/android/multiscreen/mirror/sdk/api/MRSinkServiceHelper;->access$3(Lcom/huawei/android/multiscreen/mirror/sdk/api/MRSinkServiceHelper;)Z

    move-result v2

    .line 252
    .local v2, originalActivityAlive:Z
    iget-object v5, p0, Lcom/huawei/android/multiscreen/mirror/sdk/api/MRSinkServiceHelper$2;->this$0:Lcom/huawei/android/multiscreen/mirror/sdk/api/MRSinkServiceHelper;

    #setter for: Lcom/huawei/android/multiscreen/mirror/sdk/api/MRSinkServiceHelper;->activityAlive:Z
    invoke-static {v5, v4}, Lcom/huawei/android/multiscreen/mirror/sdk/api/MRSinkServiceHelper;->access$4(Lcom/huawei/android/multiscreen/mirror/sdk/api/MRSinkServiceHelper;Z)V

    .line 253
    iget-object v5, p0, Lcom/huawei/android/multiscreen/mirror/sdk/api/MRSinkServiceHelper$2;->this$0:Lcom/huawei/android/multiscreen/mirror/sdk/api/MRSinkServiceHelper;

    #setter for: Lcom/huawei/android/multiscreen/mirror/sdk/api/MRSinkServiceHelper;->semActivityWaitFlag:Z
    invoke-static {v5, v9}, Lcom/huawei/android/multiscreen/mirror/sdk/api/MRSinkServiceHelper;->access$5(Lcom/huawei/android/multiscreen/mirror/sdk/api/MRSinkServiceHelper;Z)V

    .line 254
    iget-object v5, p0, Lcom/huawei/android/multiscreen/mirror/sdk/api/MRSinkServiceHelper$2;->this$0:Lcom/huawei/android/multiscreen/mirror/sdk/api/MRSinkServiceHelper;

    #setter for: Lcom/huawei/android/multiscreen/mirror/sdk/api/MRSinkServiceHelper;->semConnectedWaitFlag:Z
    invoke-static {v5, v9}, Lcom/huawei/android/multiscreen/mirror/sdk/api/MRSinkServiceHelper;->access$6(Lcom/huawei/android/multiscreen/mirror/sdk/api/MRSinkServiceHelper;Z)V

    .line 256
    new-instance v1, Landroid/content/Intent;

    iget-object v5, p0, Lcom/huawei/android/multiscreen/mirror/sdk/api/MRSinkServiceHelper$2;->this$0:Lcom/huawei/android/multiscreen/mirror/sdk/api/MRSinkServiceHelper;

    #getter for: Lcom/huawei/android/multiscreen/mirror/sdk/api/MRSinkServiceHelper;->context:Landroid/content/Context;
    invoke-static {v5}, Lcom/huawei/android/multiscreen/mirror/sdk/api/MRSinkServiceHelper;->access$7(Lcom/huawei/android/multiscreen/mirror/sdk/api/MRSinkServiceHelper;)Landroid/content/Context;

    move-result-object v5

    iget-object v6, p0, Lcom/huawei/android/multiscreen/mirror/sdk/api/MRSinkServiceHelper$2;->this$0:Lcom/huawei/android/multiscreen/mirror/sdk/api/MRSinkServiceHelper;

    #getter for: Lcom/huawei/android/multiscreen/mirror/sdk/api/MRSinkServiceHelper;->layoutActivityClass:Ljava/lang/Class;
    invoke-static {v6}, Lcom/huawei/android/multiscreen/mirror/sdk/api/MRSinkServiceHelper;->access$8(Lcom/huawei/android/multiscreen/mirror/sdk/api/MRSinkServiceHelper;)Ljava/lang/Class;

    move-result-object v6

    invoke-direct {v1, v5, v6}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 257
    .local v1, intent:Landroid/content/Intent;
    const/high16 v5, 0x1000

    invoke-virtual {v1, v5}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 258
    const/high16 v5, 0x800

    invoke-virtual {v1, v5}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 259
    iget-object v5, p0, Lcom/huawei/android/multiscreen/mirror/sdk/api/MRSinkServiceHelper$2;->this$0:Lcom/huawei/android/multiscreen/mirror/sdk/api/MRSinkServiceHelper;

    #getter for: Lcom/huawei/android/multiscreen/mirror/sdk/api/MRSinkServiceHelper;->context:Landroid/content/Context;
    invoke-static {v5}, Lcom/huawei/android/multiscreen/mirror/sdk/api/MRSinkServiceHelper;->access$7(Lcom/huawei/android/multiscreen/mirror/sdk/api/MRSinkServiceHelper;)Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 261
    iget-object v5, p0, Lcom/huawei/android/multiscreen/mirror/sdk/api/MRSinkServiceHelper$2;->this$0:Lcom/huawei/android/multiscreen/mirror/sdk/api/MRSinkServiceHelper;

    #getter for: Lcom/huawei/android/multiscreen/mirror/sdk/api/MRSinkServiceHelper;->semActivity:Ljava/util/concurrent/Semaphore;
    invoke-static {v5}, Lcom/huawei/android/multiscreen/mirror/sdk/api/MRSinkServiceHelper;->access$9(Lcom/huawei/android/multiscreen/mirror/sdk/api/MRSinkServiceHelper;)Ljava/util/concurrent/Semaphore;

    move-result-object v5

    monitor-enter v5

    .line 263
    :try_start_0
    const-string v6, "MIRROR_SDK"

    const-string v7, "sem.wait(3000); in"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 264
    iget-object v6, p0, Lcom/huawei/android/multiscreen/mirror/sdk/api/MRSinkServiceHelper$2;->this$0:Lcom/huawei/android/multiscreen/mirror/sdk/api/MRSinkServiceHelper;

    #getter for: Lcom/huawei/android/multiscreen/mirror/sdk/api/MRSinkServiceHelper;->semActivityWaitFlag:Z
    invoke-static {v6}, Lcom/huawei/android/multiscreen/mirror/sdk/api/MRSinkServiceHelper;->access$10(Lcom/huawei/android/multiscreen/mirror/sdk/api/MRSinkServiceHelper;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 265
    iget-object v6, p0, Lcom/huawei/android/multiscreen/mirror/sdk/api/MRSinkServiceHelper$2;->this$0:Lcom/huawei/android/multiscreen/mirror/sdk/api/MRSinkServiceHelper;

    #getter for: Lcom/huawei/android/multiscreen/mirror/sdk/api/MRSinkServiceHelper;->semActivity:Ljava/util/concurrent/Semaphore;
    invoke-static {v6}, Lcom/huawei/android/multiscreen/mirror/sdk/api/MRSinkServiceHelper;->access$9(Lcom/huawei/android/multiscreen/mirror/sdk/api/MRSinkServiceHelper;)Ljava/util/concurrent/Semaphore;

    move-result-object v6

    const-wide/16 v7, 0xbb8

    invoke-virtual {v6, v7, v8}, Ljava/lang/Object;->wait(J)V

    .line 267
    :cond_0
    const-string v6, "MIRROR_SDK"

    const-string v7, "sem.wait(3000); out"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 261
    :goto_0
    :try_start_1
    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 272
    const-string v5, "MIRROR_SDK"

    const-string v6, "SinkService Semaphore release"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 274
    iget-object v5, p0, Lcom/huawei/android/multiscreen/mirror/sdk/api/MRSinkServiceHelper$2;->this$0:Lcom/huawei/android/multiscreen/mirror/sdk/api/MRSinkServiceHelper;

    #getter for: Lcom/huawei/android/multiscreen/mirror/sdk/api/MRSinkServiceHelper;->activityAlive:Z
    invoke-static {v5}, Lcom/huawei/android/multiscreen/mirror/sdk/api/MRSinkServiceHelper;->access$3(Lcom/huawei/android/multiscreen/mirror/sdk/api/MRSinkServiceHelper;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 278
    if-eqz v2, :cond_1

    .line 279
    iget-object v5, p0, Lcom/huawei/android/multiscreen/mirror/sdk/api/MRSinkServiceHelper$2;->this$0:Lcom/huawei/android/multiscreen/mirror/sdk/api/MRSinkServiceHelper;

    #setter for: Lcom/huawei/android/multiscreen/mirror/sdk/api/MRSinkServiceHelper;->delaying:Z
    invoke-static {v5, v9}, Lcom/huawei/android/multiscreen/mirror/sdk/api/MRSinkServiceHelper;->access$0(Lcom/huawei/android/multiscreen/mirror/sdk/api/MRSinkServiceHelper;Z)V

    .line 280
    iget-object v5, p0, Lcom/huawei/android/multiscreen/mirror/sdk/api/MRSinkServiceHelper$2;->this$0:Lcom/huawei/android/multiscreen/mirror/sdk/api/MRSinkServiceHelper;

    #getter for: Lcom/huawei/android/multiscreen/mirror/sdk/api/MRSinkServiceHelper;->mHander:Landroid/os/Handler;
    invoke-static {v5}, Lcom/huawei/android/multiscreen/mirror/sdk/api/MRSinkServiceHelper;->access$11(Lcom/huawei/android/multiscreen/mirror/sdk/api/MRSinkServiceHelper;)Landroid/os/Handler;

    move-result-object v5

    const/16 v6, 0x64

    const-wide/16 v7, 0x1f4

    invoke-virtual {v5, v6, v7, v8}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 282
    :cond_1
    iget-object v5, p0, Lcom/huawei/android/multiscreen/mirror/sdk/api/MRSinkServiceHelper$2;->this$0:Lcom/huawei/android/multiscreen/mirror/sdk/api/MRSinkServiceHelper;

    #getter for: Lcom/huawei/android/multiscreen/mirror/sdk/api/MRSinkServiceHelper;->mExternalSinkCallback:Lcom/huawei/android/multiscreen/mirror/sdk/api/IMRSinkCallback;
    invoke-static {v5}, Lcom/huawei/android/multiscreen/mirror/sdk/api/MRSinkServiceHelper;->access$1(Lcom/huawei/android/multiscreen/mirror/sdk/api/MRSinkServiceHelper;)Lcom/huawei/android/multiscreen/mirror/sdk/api/IMRSinkCallback;

    move-result-object v5

    if-nez v5, :cond_2

    move v3, v4

    .line 288
    :goto_1
    return v3

    .line 268
    :catch_0
    move-exception v0

    .line 269
    .local v0, e:Ljava/lang/InterruptedException;
    :try_start_2
    const-string v6, "MIRROR_SDK"

    const-string v7, "MirrorConnectedSuccessfully Semaphore error"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 261
    .end local v0           #e:Ljava/lang/InterruptedException;
    :catchall_0
    move-exception v4

    monitor-exit v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v4

    .line 283
    :cond_2
    iget-object v4, p0, Lcom/huawei/android/multiscreen/mirror/sdk/api/MRSinkServiceHelper$2;->this$0:Lcom/huawei/android/multiscreen/mirror/sdk/api/MRSinkServiceHelper;

    #getter for: Lcom/huawei/android/multiscreen/mirror/sdk/api/MRSinkServiceHelper;->mExternalSinkCallback:Lcom/huawei/android/multiscreen/mirror/sdk/api/IMRSinkCallback;
    invoke-static {v4}, Lcom/huawei/android/multiscreen/mirror/sdk/api/MRSinkServiceHelper;->access$1(Lcom/huawei/android/multiscreen/mirror/sdk/api/MRSinkServiceHelper;)Lcom/huawei/android/multiscreen/mirror/sdk/api/IMRSinkCallback;

    move-result-object v4

    invoke-interface {v4}, Lcom/huawei/android/multiscreen/mirror/sdk/api/IMRSinkCallback;->OnConnecting()I

    move-result v3

    goto :goto_1

    .line 285
    :cond_3
    const/4 v3, -0x1

    goto :goto_1
.end method

.method public Paused()I
    .locals 2

    .prologue
    .line 293
    const-string v0, "MIRROR_SDK"

    const-string v1, "SinkService Paused()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 294
    iget-object v0, p0, Lcom/huawei/android/multiscreen/mirror/sdk/api/MRSinkServiceHelper$2;->this$0:Lcom/huawei/android/multiscreen/mirror/sdk/api/MRSinkServiceHelper;

    #getter for: Lcom/huawei/android/multiscreen/mirror/sdk/api/MRSinkServiceHelper;->mExternalSinkCallback:Lcom/huawei/android/multiscreen/mirror/sdk/api/IMRSinkCallback;
    invoke-static {v0}, Lcom/huawei/android/multiscreen/mirror/sdk/api/MRSinkServiceHelper;->access$1(Lcom/huawei/android/multiscreen/mirror/sdk/api/MRSinkServiceHelper;)Lcom/huawei/android/multiscreen/mirror/sdk/api/IMRSinkCallback;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/huawei/android/multiscreen/mirror/sdk/api/MRSinkServiceHelper$2;->this$0:Lcom/huawei/android/multiscreen/mirror/sdk/api/MRSinkServiceHelper;

    #getter for: Lcom/huawei/android/multiscreen/mirror/sdk/api/MRSinkServiceHelper;->mExternalSinkCallback:Lcom/huawei/android/multiscreen/mirror/sdk/api/IMRSinkCallback;
    invoke-static {v0}, Lcom/huawei/android/multiscreen/mirror/sdk/api/MRSinkServiceHelper;->access$1(Lcom/huawei/android/multiscreen/mirror/sdk/api/MRSinkServiceHelper;)Lcom/huawei/android/multiscreen/mirror/sdk/api/IMRSinkCallback;

    move-result-object v0

    .line 295
    invoke-interface {v0}, Lcom/huawei/android/multiscreen/mirror/sdk/api/IMRSinkCallback;->Paused()I

    move-result v0

    goto :goto_0
.end method

.method public Resumed()I
    .locals 2

    .prologue
    .line 300
    const-string v0, "MIRROR_SDK"

    const-string v1, "SinkService Resumed()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 301
    iget-object v0, p0, Lcom/huawei/android/multiscreen/mirror/sdk/api/MRSinkServiceHelper$2;->this$0:Lcom/huawei/android/multiscreen/mirror/sdk/api/MRSinkServiceHelper;

    #getter for: Lcom/huawei/android/multiscreen/mirror/sdk/api/MRSinkServiceHelper;->mExternalSinkCallback:Lcom/huawei/android/multiscreen/mirror/sdk/api/IMRSinkCallback;
    invoke-static {v0}, Lcom/huawei/android/multiscreen/mirror/sdk/api/MRSinkServiceHelper;->access$1(Lcom/huawei/android/multiscreen/mirror/sdk/api/MRSinkServiceHelper;)Lcom/huawei/android/multiscreen/mirror/sdk/api/IMRSinkCallback;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/huawei/android/multiscreen/mirror/sdk/api/MRSinkServiceHelper$2;->this$0:Lcom/huawei/android/multiscreen/mirror/sdk/api/MRSinkServiceHelper;

    #getter for: Lcom/huawei/android/multiscreen/mirror/sdk/api/MRSinkServiceHelper;->mExternalSinkCallback:Lcom/huawei/android/multiscreen/mirror/sdk/api/IMRSinkCallback;
    invoke-static {v0}, Lcom/huawei/android/multiscreen/mirror/sdk/api/MRSinkServiceHelper;->access$1(Lcom/huawei/android/multiscreen/mirror/sdk/api/MRSinkServiceHelper;)Lcom/huawei/android/multiscreen/mirror/sdk/api/IMRSinkCallback;

    move-result-object v0

    .line 302
    invoke-interface {v0}, Lcom/huawei/android/multiscreen/mirror/sdk/api/IMRSinkCallback;->Resumed()I

    move-result v0

    goto :goto_0
.end method

.method public Started()I
    .locals 2

    .prologue
    .line 208
    const-string v0, "MIRROR_SDK"

    const-string v1, "SinkService Started()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 209
    iget-object v0, p0, Lcom/huawei/android/multiscreen/mirror/sdk/api/MRSinkServiceHelper$2;->this$0:Lcom/huawei/android/multiscreen/mirror/sdk/api/MRSinkServiceHelper;

    #getter for: Lcom/huawei/android/multiscreen/mirror/sdk/api/MRSinkServiceHelper;->mExternalSinkCallback:Lcom/huawei/android/multiscreen/mirror/sdk/api/IMRSinkCallback;
    invoke-static {v0}, Lcom/huawei/android/multiscreen/mirror/sdk/api/MRSinkServiceHelper;->access$1(Lcom/huawei/android/multiscreen/mirror/sdk/api/MRSinkServiceHelper;)Lcom/huawei/android/multiscreen/mirror/sdk/api/IMRSinkCallback;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/huawei/android/multiscreen/mirror/sdk/api/MRSinkServiceHelper$2;->this$0:Lcom/huawei/android/multiscreen/mirror/sdk/api/MRSinkServiceHelper;

    #getter for: Lcom/huawei/android/multiscreen/mirror/sdk/api/MRSinkServiceHelper;->mExternalSinkCallback:Lcom/huawei/android/multiscreen/mirror/sdk/api/IMRSinkCallback;
    invoke-static {v0}, Lcom/huawei/android/multiscreen/mirror/sdk/api/MRSinkServiceHelper;->access$1(Lcom/huawei/android/multiscreen/mirror/sdk/api/MRSinkServiceHelper;)Lcom/huawei/android/multiscreen/mirror/sdk/api/IMRSinkCallback;

    move-result-object v0

    .line 210
    invoke-interface {v0}, Lcom/huawei/android/multiscreen/mirror/sdk/api/IMRSinkCallback;->Started()I

    move-result v0

    goto :goto_0
.end method

.method public Stopped()I
    .locals 2

    .prologue
    .line 215
    const-string v0, "MIRROR_SDK"

    const-string v1, "SinkService Stopped()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 216
    iget-object v0, p0, Lcom/huawei/android/multiscreen/mirror/sdk/api/MRSinkServiceHelper$2;->this$0:Lcom/huawei/android/multiscreen/mirror/sdk/api/MRSinkServiceHelper;

    #getter for: Lcom/huawei/android/multiscreen/mirror/sdk/api/MRSinkServiceHelper;->mExternalSinkCallback:Lcom/huawei/android/multiscreen/mirror/sdk/api/IMRSinkCallback;
    invoke-static {v0}, Lcom/huawei/android/multiscreen/mirror/sdk/api/MRSinkServiceHelper;->access$1(Lcom/huawei/android/multiscreen/mirror/sdk/api/MRSinkServiceHelper;)Lcom/huawei/android/multiscreen/mirror/sdk/api/IMRSinkCallback;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/huawei/android/multiscreen/mirror/sdk/api/MRSinkServiceHelper$2;->this$0:Lcom/huawei/android/multiscreen/mirror/sdk/api/MRSinkServiceHelper;

    #getter for: Lcom/huawei/android/multiscreen/mirror/sdk/api/MRSinkServiceHelper;->mExternalSinkCallback:Lcom/huawei/android/multiscreen/mirror/sdk/api/IMRSinkCallback;
    invoke-static {v0}, Lcom/huawei/android/multiscreen/mirror/sdk/api/MRSinkServiceHelper;->access$1(Lcom/huawei/android/multiscreen/mirror/sdk/api/MRSinkServiceHelper;)Lcom/huawei/android/multiscreen/mirror/sdk/api/IMRSinkCallback;

    move-result-object v0

    .line 217
    invoke-interface {v0}, Lcom/huawei/android/multiscreen/mirror/sdk/api/IMRSinkCallback;->Stopped()I

    move-result v0

    goto :goto_0
.end method
