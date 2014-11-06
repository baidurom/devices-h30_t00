.class public Lcom/huawei/android/multiscreen/mirror/sdk/api/MRSinkServiceHelper$SerivceBinder;
.super Landroid/os/Binder;
.source "MRSinkServiceHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/huawei/android/multiscreen/mirror/sdk/api/MRSinkServiceHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "SerivceBinder"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/huawei/android/multiscreen/mirror/sdk/api/MRSinkServiceHelper;


# direct methods
.method protected constructor <init>(Lcom/huawei/android/multiscreen/mirror/sdk/api/MRSinkServiceHelper;)V
    .locals 0
    .parameter

    .prologue
    .line 101
    iput-object p1, p0, Lcom/huawei/android/multiscreen/mirror/sdk/api/MRSinkServiceHelper$SerivceBinder;->this$0:Lcom/huawei/android/multiscreen/mirror/sdk/api/MRSinkServiceHelper;

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    return-void
.end method


# virtual methods
.method public acceptSurface(Landroid/view/Surface;)Z
    .locals 5
    .parameter "surface"

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 104
    const-string v3, "MIRROR_SDK"

    const-string v4, "SinkService setSurface()"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 105
    iget-object v3, p0, Lcom/huawei/android/multiscreen/mirror/sdk/api/MRSinkServiceHelper$SerivceBinder;->this$0:Lcom/huawei/android/multiscreen/mirror/sdk/api/MRSinkServiceHelper;

    #setter for: Lcom/huawei/android/multiscreen/mirror/sdk/api/MRSinkServiceHelper;->activityAlive:Z
    invoke-static {v3, v2}, Lcom/huawei/android/multiscreen/mirror/sdk/api/MRSinkServiceHelper;->access$4(Lcom/huawei/android/multiscreen/mirror/sdk/api/MRSinkServiceHelper;Z)V

    .line 106
    iget-object v3, p0, Lcom/huawei/android/multiscreen/mirror/sdk/api/MRSinkServiceHelper$SerivceBinder;->this$0:Lcom/huawei/android/multiscreen/mirror/sdk/api/MRSinkServiceHelper;

    iget-object v4, p0, Lcom/huawei/android/multiscreen/mirror/sdk/api/MRSinkServiceHelper$SerivceBinder;->this$0:Lcom/huawei/android/multiscreen/mirror/sdk/api/MRSinkServiceHelper;

    #getter for: Lcom/huawei/android/multiscreen/mirror/sdk/api/MRSinkServiceHelper;->mManager:Lcom/huawei/android/multiscreen/mirror/sdk/api/MRComponentManager;
    invoke-static {v4}, Lcom/huawei/android/multiscreen/mirror/sdk/api/MRSinkServiceHelper;->access$15(Lcom/huawei/android/multiscreen/mirror/sdk/api/MRSinkServiceHelper;)Lcom/huawei/android/multiscreen/mirror/sdk/api/MRComponentManager;

    move-result-object v4

    invoke-virtual {v4}, Lcom/huawei/android/multiscreen/mirror/sdk/api/MRComponentManager;->getMRSink()Lcom/huawei/android/multiscreen/mirror/sdk/api/MRSink;

    move-result-object v4

    #setter for: Lcom/huawei/android/multiscreen/mirror/sdk/api/MRSinkServiceHelper;->mSink:Lcom/huawei/android/multiscreen/mirror/sdk/api/MRSink;
    invoke-static {v3, v4}, Lcom/huawei/android/multiscreen/mirror/sdk/api/MRSinkServiceHelper;->access$16(Lcom/huawei/android/multiscreen/mirror/sdk/api/MRSinkServiceHelper;Lcom/huawei/android/multiscreen/mirror/sdk/api/MRSink;)V

    .line 108
    iget-object v3, p0, Lcom/huawei/android/multiscreen/mirror/sdk/api/MRSinkServiceHelper$SerivceBinder;->this$0:Lcom/huawei/android/multiscreen/mirror/sdk/api/MRSinkServiceHelper;

    #getter for: Lcom/huawei/android/multiscreen/mirror/sdk/api/MRSinkServiceHelper;->mSink:Lcom/huawei/android/multiscreen/mirror/sdk/api/MRSink;
    invoke-static {v3}, Lcom/huawei/android/multiscreen/mirror/sdk/api/MRSinkServiceHelper;->access$17(Lcom/huawei/android/multiscreen/mirror/sdk/api/MRSinkServiceHelper;)Lcom/huawei/android/multiscreen/mirror/sdk/api/MRSink;

    move-result-object v3

    if-nez v3, :cond_0

    .line 109
    invoke-virtual {p0}, Lcom/huawei/android/multiscreen/mirror/sdk/api/MRSinkServiceHelper$SerivceBinder;->refuseMirror()V

    .line 127
    :goto_0
    return v1

    .line 113
    :cond_0
    iget-object v1, p0, Lcom/huawei/android/multiscreen/mirror/sdk/api/MRSinkServiceHelper$SerivceBinder;->this$0:Lcom/huawei/android/multiscreen/mirror/sdk/api/MRSinkServiceHelper;

    #getter for: Lcom/huawei/android/multiscreen/mirror/sdk/api/MRSinkServiceHelper;->mSink:Lcom/huawei/android/multiscreen/mirror/sdk/api/MRSink;
    invoke-static {v1}, Lcom/huawei/android/multiscreen/mirror/sdk/api/MRSinkServiceHelper;->access$17(Lcom/huawei/android/multiscreen/mirror/sdk/api/MRSinkServiceHelper;)Lcom/huawei/android/multiscreen/mirror/sdk/api/MRSink;

    move-result-object v1

    invoke-virtual {v1}, Lcom/huawei/android/multiscreen/mirror/sdk/api/MRSink;->getProperty()Lcom/huawei/android/multiscreen/mirror/sdk/structs/SSinkProperty;

    move-result-object v0

    .line 114
    .local v0, property:Lcom/huawei/android/multiscreen/mirror/sdk/structs/SSinkProperty;
    invoke-virtual {v0, p1}, Lcom/huawei/android/multiscreen/mirror/sdk/structs/SSinkProperty;->setSurface(Landroid/view/Surface;)V

    .line 116
    const-string v1, "MIRROR_SDK"

    const-string v3, "SinkService setProperty() in"

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 117
    iget-object v1, p0, Lcom/huawei/android/multiscreen/mirror/sdk/api/MRSinkServiceHelper$SerivceBinder;->this$0:Lcom/huawei/android/multiscreen/mirror/sdk/api/MRSinkServiceHelper;

    #getter for: Lcom/huawei/android/multiscreen/mirror/sdk/api/MRSinkServiceHelper;->mSink:Lcom/huawei/android/multiscreen/mirror/sdk/api/MRSink;
    invoke-static {v1}, Lcom/huawei/android/multiscreen/mirror/sdk/api/MRSinkServiceHelper;->access$17(Lcom/huawei/android/multiscreen/mirror/sdk/api/MRSinkServiceHelper;)Lcom/huawei/android/multiscreen/mirror/sdk/api/MRSink;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/huawei/android/multiscreen/mirror/sdk/api/MRSink;->setProperty(Lcom/huawei/android/multiscreen/mirror/sdk/structs/SSinkProperty;)I

    .line 119
    const-string v1, "MIRROR_SDK"

    const-string v3, "SinkService setProperty() out"

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 120
    iget-object v1, p0, Lcom/huawei/android/multiscreen/mirror/sdk/api/MRSinkServiceHelper$SerivceBinder;->this$0:Lcom/huawei/android/multiscreen/mirror/sdk/api/MRSinkServiceHelper;

    #getter for: Lcom/huawei/android/multiscreen/mirror/sdk/api/MRSinkServiceHelper;->semActivity:Ljava/util/concurrent/Semaphore;
    invoke-static {v1}, Lcom/huawei/android/multiscreen/mirror/sdk/api/MRSinkServiceHelper;->access$9(Lcom/huawei/android/multiscreen/mirror/sdk/api/MRSinkServiceHelper;)Ljava/util/concurrent/Semaphore;

    move-result-object v3

    monitor-enter v3

    .line 121
    :try_start_0
    const-string v1, "MIRROR_SDK"

    const-string v4, "sem.notify(); in"

    invoke-static {v1, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 122
    iget-object v1, p0, Lcom/huawei/android/multiscreen/mirror/sdk/api/MRSinkServiceHelper$SerivceBinder;->this$0:Lcom/huawei/android/multiscreen/mirror/sdk/api/MRSinkServiceHelper;

    const/4 v4, 0x0

    #setter for: Lcom/huawei/android/multiscreen/mirror/sdk/api/MRSinkServiceHelper;->semActivityWaitFlag:Z
    invoke-static {v1, v4}, Lcom/huawei/android/multiscreen/mirror/sdk/api/MRSinkServiceHelper;->access$5(Lcom/huawei/android/multiscreen/mirror/sdk/api/MRSinkServiceHelper;Z)V

    .line 123
    iget-object v1, p0, Lcom/huawei/android/multiscreen/mirror/sdk/api/MRSinkServiceHelper$SerivceBinder;->this$0:Lcom/huawei/android/multiscreen/mirror/sdk/api/MRSinkServiceHelper;

    #getter for: Lcom/huawei/android/multiscreen/mirror/sdk/api/MRSinkServiceHelper;->semActivity:Ljava/util/concurrent/Semaphore;
    invoke-static {v1}, Lcom/huawei/android/multiscreen/mirror/sdk/api/MRSinkServiceHelper;->access$9(Lcom/huawei/android/multiscreen/mirror/sdk/api/MRSinkServiceHelper;)Ljava/util/concurrent/Semaphore;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    .line 124
    const-string v1, "MIRROR_SDK"

    const-string v4, "sem.notify(); out"

    invoke-static {v1, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 120
    monitor-exit v3

    move v1, v2

    .line 127
    goto :goto_0

    .line 120
    :catchall_0
    move-exception v1

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public disconnnetMirror()Z
    .locals 5

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 162
    iget-object v3, p0, Lcom/huawei/android/multiscreen/mirror/sdk/api/MRSinkServiceHelper$SerivceBinder;->this$0:Lcom/huawei/android/multiscreen/mirror/sdk/api/MRSinkServiceHelper;

    iget-object v4, p0, Lcom/huawei/android/multiscreen/mirror/sdk/api/MRSinkServiceHelper$SerivceBinder;->this$0:Lcom/huawei/android/multiscreen/mirror/sdk/api/MRSinkServiceHelper;

    #getter for: Lcom/huawei/android/multiscreen/mirror/sdk/api/MRSinkServiceHelper;->mManager:Lcom/huawei/android/multiscreen/mirror/sdk/api/MRComponentManager;
    invoke-static {v4}, Lcom/huawei/android/multiscreen/mirror/sdk/api/MRSinkServiceHelper;->access$15(Lcom/huawei/android/multiscreen/mirror/sdk/api/MRSinkServiceHelper;)Lcom/huawei/android/multiscreen/mirror/sdk/api/MRComponentManager;

    move-result-object v4

    invoke-virtual {v4}, Lcom/huawei/android/multiscreen/mirror/sdk/api/MRComponentManager;->getMRSink()Lcom/huawei/android/multiscreen/mirror/sdk/api/MRSink;

    move-result-object v4

    #setter for: Lcom/huawei/android/multiscreen/mirror/sdk/api/MRSinkServiceHelper;->mSink:Lcom/huawei/android/multiscreen/mirror/sdk/api/MRSink;
    invoke-static {v3, v4}, Lcom/huawei/android/multiscreen/mirror/sdk/api/MRSinkServiceHelper;->access$16(Lcom/huawei/android/multiscreen/mirror/sdk/api/MRSinkServiceHelper;Lcom/huawei/android/multiscreen/mirror/sdk/api/MRSink;)V

    .line 164
    iget-object v3, p0, Lcom/huawei/android/multiscreen/mirror/sdk/api/MRSinkServiceHelper$SerivceBinder;->this$0:Lcom/huawei/android/multiscreen/mirror/sdk/api/MRSinkServiceHelper;

    #getter for: Lcom/huawei/android/multiscreen/mirror/sdk/api/MRSinkServiceHelper;->mSink:Lcom/huawei/android/multiscreen/mirror/sdk/api/MRSink;
    invoke-static {v3}, Lcom/huawei/android/multiscreen/mirror/sdk/api/MRSinkServiceHelper;->access$17(Lcom/huawei/android/multiscreen/mirror/sdk/api/MRSinkServiceHelper;)Lcom/huawei/android/multiscreen/mirror/sdk/api/MRSink;

    move-result-object v3

    if-nez v3, :cond_1

    .line 174
    :cond_0
    :goto_0
    return v2

    .line 167
    :cond_1
    iget-object v3, p0, Lcom/huawei/android/multiscreen/mirror/sdk/api/MRSinkServiceHelper$SerivceBinder;->this$0:Lcom/huawei/android/multiscreen/mirror/sdk/api/MRSinkServiceHelper;

    #getter for: Lcom/huawei/android/multiscreen/mirror/sdk/api/MRSinkServiceHelper;->mSink:Lcom/huawei/android/multiscreen/mirror/sdk/api/MRSink;
    invoke-static {v3}, Lcom/huawei/android/multiscreen/mirror/sdk/api/MRSinkServiceHelper;->access$17(Lcom/huawei/android/multiscreen/mirror/sdk/api/MRSinkServiceHelper;)Lcom/huawei/android/multiscreen/mirror/sdk/api/MRSink;

    move-result-object v3

    invoke-virtual {v3}, Lcom/huawei/android/multiscreen/mirror/sdk/api/MRSink;->getMirrorStatus()Lcom/huawei/android/multiscreen/mirror/sdk/api/EMirrorStatus;

    move-result-object v0

    .line 168
    .local v0, status:Lcom/huawei/android/multiscreen/mirror/sdk/api/EMirrorStatus;
    sget-object v3, Lcom/huawei/android/multiscreen/mirror/sdk/api/EMirrorStatus;->CONNECTED:Lcom/huawei/android/multiscreen/mirror/sdk/api/EMirrorStatus;

    if-eq v0, v3, :cond_2

    .line 169
    sget-object v3, Lcom/huawei/android/multiscreen/mirror/sdk/api/EMirrorStatus;->PAUSED:Lcom/huawei/android/multiscreen/mirror/sdk/api/EMirrorStatus;

    if-ne v0, v3, :cond_4

    .line 170
    :cond_2
    iget-object v3, p0, Lcom/huawei/android/multiscreen/mirror/sdk/api/MRSinkServiceHelper$SerivceBinder;->this$0:Lcom/huawei/android/multiscreen/mirror/sdk/api/MRSinkServiceHelper;

    #getter for: Lcom/huawei/android/multiscreen/mirror/sdk/api/MRSinkServiceHelper;->mSink:Lcom/huawei/android/multiscreen/mirror/sdk/api/MRSink;
    invoke-static {v3}, Lcom/huawei/android/multiscreen/mirror/sdk/api/MRSinkServiceHelper;->access$17(Lcom/huawei/android/multiscreen/mirror/sdk/api/MRSinkServiceHelper;)Lcom/huawei/android/multiscreen/mirror/sdk/api/MRSink;

    move-result-object v3

    invoke-virtual {v3}, Lcom/huawei/android/multiscreen/mirror/sdk/api/MRSink;->disconnect()I

    move-result v3

    if-nez v3, :cond_3

    :goto_1
    move v2, v1

    goto :goto_0

    :cond_3
    move v1, v2

    goto :goto_1

    .line 171
    :cond_4
    sget-object v3, Lcom/huawei/android/multiscreen/mirror/sdk/api/EMirrorStatus;->DISCONNECTED:Lcom/huawei/android/multiscreen/mirror/sdk/api/EMirrorStatus;

    if-ne v0, v3, :cond_0

    move v2, v1

    .line 172
    goto :goto_0
.end method

.method public refuseMirror()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 131
    const-string v0, "MIRROR_SDK"

    const-string v1, "SinkService refuseMirror()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 132
    iget-object v0, p0, Lcom/huawei/android/multiscreen/mirror/sdk/api/MRSinkServiceHelper$SerivceBinder;->this$0:Lcom/huawei/android/multiscreen/mirror/sdk/api/MRSinkServiceHelper;

    #setter for: Lcom/huawei/android/multiscreen/mirror/sdk/api/MRSinkServiceHelper;->activityAlive:Z
    invoke-static {v0, v2}, Lcom/huawei/android/multiscreen/mirror/sdk/api/MRSinkServiceHelper;->access$4(Lcom/huawei/android/multiscreen/mirror/sdk/api/MRSinkServiceHelper;Z)V

    .line 133
    iget-object v0, p0, Lcom/huawei/android/multiscreen/mirror/sdk/api/MRSinkServiceHelper$SerivceBinder;->this$0:Lcom/huawei/android/multiscreen/mirror/sdk/api/MRSinkServiceHelper;

    #getter for: Lcom/huawei/android/multiscreen/mirror/sdk/api/MRSinkServiceHelper;->semActivity:Ljava/util/concurrent/Semaphore;
    invoke-static {v0}, Lcom/huawei/android/multiscreen/mirror/sdk/api/MRSinkServiceHelper;->access$9(Lcom/huawei/android/multiscreen/mirror/sdk/api/MRSinkServiceHelper;)Ljava/util/concurrent/Semaphore;

    move-result-object v1

    monitor-enter v1

    .line 134
    :try_start_0
    const-string v0, "MIRROR_SDK"

    const-string v2, "sem.notify(); in"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 135
    iget-object v0, p0, Lcom/huawei/android/multiscreen/mirror/sdk/api/MRSinkServiceHelper$SerivceBinder;->this$0:Lcom/huawei/android/multiscreen/mirror/sdk/api/MRSinkServiceHelper;

    const/4 v2, 0x0

    #setter for: Lcom/huawei/android/multiscreen/mirror/sdk/api/MRSinkServiceHelper;->semActivityWaitFlag:Z
    invoke-static {v0, v2}, Lcom/huawei/android/multiscreen/mirror/sdk/api/MRSinkServiceHelper;->access$5(Lcom/huawei/android/multiscreen/mirror/sdk/api/MRSinkServiceHelper;Z)V

    .line 136
    iget-object v0, p0, Lcom/huawei/android/multiscreen/mirror/sdk/api/MRSinkServiceHelper$SerivceBinder;->this$0:Lcom/huawei/android/multiscreen/mirror/sdk/api/MRSinkServiceHelper;

    #getter for: Lcom/huawei/android/multiscreen/mirror/sdk/api/MRSinkServiceHelper;->semActivity:Ljava/util/concurrent/Semaphore;
    invoke-static {v0}, Lcom/huawei/android/multiscreen/mirror/sdk/api/MRSinkServiceHelper;->access$9(Lcom/huawei/android/multiscreen/mirror/sdk/api/MRSinkServiceHelper;)Ljava/util/concurrent/Semaphore;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 137
    const-string v0, "MIRROR_SDK"

    const-string v2, "sem.notify(); out"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 133
    monitor-exit v1

    .line 139
    return-void

    .line 133
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public removeCallback()V
    .locals 3

    .prologue
    .line 184
    iget-object v0, p0, Lcom/huawei/android/multiscreen/mirror/sdk/api/MRSinkServiceHelper$SerivceBinder;->this$0:Lcom/huawei/android/multiscreen/mirror/sdk/api/MRSinkServiceHelper;

    #getter for: Lcom/huawei/android/multiscreen/mirror/sdk/api/MRSinkServiceHelper;->lockActivityCallback:Ljava/lang/Object;
    invoke-static {v0}, Lcom/huawei/android/multiscreen/mirror/sdk/api/MRSinkServiceHelper;->access$13(Lcom/huawei/android/multiscreen/mirror/sdk/api/MRSinkServiceHelper;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 185
    :try_start_0
    iget-object v0, p0, Lcom/huawei/android/multiscreen/mirror/sdk/api/MRSinkServiceHelper$SerivceBinder;->this$0:Lcom/huawei/android/multiscreen/mirror/sdk/api/MRSinkServiceHelper;

    const/4 v2, 0x0

    #setter for: Lcom/huawei/android/multiscreen/mirror/sdk/api/MRSinkServiceHelper;->mSinkActivityCallbak:Lcom/huawei/android/multiscreen/mirror/sdk/api/MRSinkServiceHelper$ILayoutSinkCallback;
    invoke-static {v0, v2}, Lcom/huawei/android/multiscreen/mirror/sdk/api/MRSinkServiceHelper;->access$19(Lcom/huawei/android/multiscreen/mirror/sdk/api/MRSinkServiceHelper;Lcom/huawei/android/multiscreen/mirror/sdk/api/MRSinkServiceHelper$ILayoutSinkCallback;)V

    .line 184
    monitor-exit v1

    .line 187
    return-void

    .line 184
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public setCallback(Lcom/huawei/android/multiscreen/mirror/sdk/api/MRSinkServiceHelper$ILayoutSinkCallback;)V
    .locals 2
    .parameter "callback"

    .prologue
    .line 178
    iget-object v0, p0, Lcom/huawei/android/multiscreen/mirror/sdk/api/MRSinkServiceHelper$SerivceBinder;->this$0:Lcom/huawei/android/multiscreen/mirror/sdk/api/MRSinkServiceHelper;

    #getter for: Lcom/huawei/android/multiscreen/mirror/sdk/api/MRSinkServiceHelper;->lockActivityCallback:Ljava/lang/Object;
    invoke-static {v0}, Lcom/huawei/android/multiscreen/mirror/sdk/api/MRSinkServiceHelper;->access$13(Lcom/huawei/android/multiscreen/mirror/sdk/api/MRSinkServiceHelper;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 179
    :try_start_0
    iget-object v0, p0, Lcom/huawei/android/multiscreen/mirror/sdk/api/MRSinkServiceHelper$SerivceBinder;->this$0:Lcom/huawei/android/multiscreen/mirror/sdk/api/MRSinkServiceHelper;

    #setter for: Lcom/huawei/android/multiscreen/mirror/sdk/api/MRSinkServiceHelper;->mSinkActivityCallbak:Lcom/huawei/android/multiscreen/mirror/sdk/api/MRSinkServiceHelper$ILayoutSinkCallback;
    invoke-static {v0, p1}, Lcom/huawei/android/multiscreen/mirror/sdk/api/MRSinkServiceHelper;->access$19(Lcom/huawei/android/multiscreen/mirror/sdk/api/MRSinkServiceHelper;Lcom/huawei/android/multiscreen/mirror/sdk/api/MRSinkServiceHelper$ILayoutSinkCallback;)V

    .line 178
    monitor-exit v1

    .line 181
    return-void

    .line 178
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public waitForConnected()V
    .locals 4

    .prologue
    .line 142
    iget-object v1, p0, Lcom/huawei/android/multiscreen/mirror/sdk/api/MRSinkServiceHelper$SerivceBinder;->this$0:Lcom/huawei/android/multiscreen/mirror/sdk/api/MRSinkServiceHelper;

    #getter for: Lcom/huawei/android/multiscreen/mirror/sdk/api/MRSinkServiceHelper;->semConnected:Ljava/util/concurrent/Semaphore;
    invoke-static {v1}, Lcom/huawei/android/multiscreen/mirror/sdk/api/MRSinkServiceHelper;->access$12(Lcom/huawei/android/multiscreen/mirror/sdk/api/MRSinkServiceHelper;)Ljava/util/concurrent/Semaphore;

    move-result-object v2

    monitor-enter v2

    .line 143
    :try_start_0
    const-string v1, "MIRROR_SDK"

    const-string v3, "semConnected.wait(); in"

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 146
    :goto_0
    :try_start_1
    iget-object v1, p0, Lcom/huawei/android/multiscreen/mirror/sdk/api/MRSinkServiceHelper$SerivceBinder;->this$0:Lcom/huawei/android/multiscreen/mirror/sdk/api/MRSinkServiceHelper;

    #getter for: Lcom/huawei/android/multiscreen/mirror/sdk/api/MRSinkServiceHelper;->semConnectedWaitFlag:Z
    invoke-static {v1}, Lcom/huawei/android/multiscreen/mirror/sdk/api/MRSinkServiceHelper;->access$18(Lcom/huawei/android/multiscreen/mirror/sdk/api/MRSinkServiceHelper;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    move-result v1

    if-nez v1, :cond_0

    .line 156
    :goto_1
    :try_start_2
    const-string v1, "MIRROR_SDK"

    const-string v3, "semConnected.wait(); out"

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 142
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 158
    return-void

    .line 148
    :cond_0
    :try_start_3
    iget-object v1, p0, Lcom/huawei/android/multiscreen/mirror/sdk/api/MRSinkServiceHelper$SerivceBinder;->this$0:Lcom/huawei/android/multiscreen/mirror/sdk/api/MRSinkServiceHelper;

    #getter for: Lcom/huawei/android/multiscreen/mirror/sdk/api/MRSinkServiceHelper;->semConnected:Ljava/util/concurrent/Semaphore;
    invoke-static {v1}, Lcom/huawei/android/multiscreen/mirror/sdk/api/MRSinkServiceHelper;->access$12(Lcom/huawei/android/multiscreen/mirror/sdk/api/MRSinkServiceHelper;)Ljava/util/concurrent/Semaphore;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->wait()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_0

    .line 153
    :catch_0
    move-exception v0

    .line 154
    .local v0, e:Ljava/lang/InterruptedException;
    :try_start_4
    const-string v1, "MIRROR_SDK"

    const-string v3, "semConnected.wait() Exception"

    invoke-static {v1, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 142
    .end local v0           #e:Ljava/lang/InterruptedException;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v1
.end method
