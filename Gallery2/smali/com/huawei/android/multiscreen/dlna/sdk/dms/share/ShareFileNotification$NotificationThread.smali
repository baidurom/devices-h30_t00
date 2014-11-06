.class Lcom/huawei/android/multiscreen/dlna/sdk/dms/share/ShareFileNotification$NotificationThread;
.super Ljava/lang/Object;
.source "ShareFileNotification.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/huawei/android/multiscreen/dlna/sdk/dms/share/ShareFileNotification;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "NotificationThread"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/huawei/android/multiscreen/dlna/sdk/dms/share/ShareFileNotification;


# direct methods
.method constructor <init>(Lcom/huawei/android/multiscreen/dlna/sdk/dms/share/ShareFileNotification;)V
    .locals 0
    .parameter

    .prologue
    .line 187
    iput-object p1, p0, Lcom/huawei/android/multiscreen/dlna/sdk/dms/share/ShareFileNotification$NotificationThread;->this$0:Lcom/huawei/android/multiscreen/dlna/sdk/dms/share/ShareFileNotification;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 192
    iget-object v1, p0, Lcom/huawei/android/multiscreen/dlna/sdk/dms/share/ShareFileNotification$NotificationThread;->this$0:Lcom/huawei/android/multiscreen/dlna/sdk/dms/share/ShareFileNotification;

    #getter for: Lcom/huawei/android/multiscreen/dlna/sdk/dms/share/ShareFileNotification;->lock:Ljava/lang/Object;
    invoke-static {v1}, Lcom/huawei/android/multiscreen/dlna/sdk/dms/share/ShareFileNotification;->access$0(Lcom/huawei/android/multiscreen/dlna/sdk/dms/share/ShareFileNotification;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2

    .line 194
    :try_start_0
    const-string v1, "ShareFileNotification"

    const-string v3, "start NotificationThread!"

    invoke-static {v1, v3}, Lcom/huawei/android/multiscreen/dlna/sdk/util/DebugLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 195
    iget-object v1, p0, Lcom/huawei/android/multiscreen/dlna/sdk/dms/share/ShareFileNotification$NotificationThread;->this$0:Lcom/huawei/android/multiscreen/dlna/sdk/dms/share/ShareFileNotification;

    #getter for: Lcom/huawei/android/multiscreen/dlna/sdk/dms/share/ShareFileNotification;->updateOpsList:Lcom/huawei/android/multiscreen/dlna/sdk/dms/share/OperationList;
    invoke-static {v1}, Lcom/huawei/android/multiscreen/dlna/sdk/dms/share/ShareFileNotification;->access$1(Lcom/huawei/android/multiscreen/dlna/sdk/dms/share/ShareFileNotification;)Lcom/huawei/android/multiscreen/dlna/sdk/dms/share/OperationList;

    move-result-object v1

    if-nez v1, :cond_0

    .line 196
    monitor-exit v2

    .line 224
    :goto_0
    return-void

    .line 198
    :cond_0
    iget-object v1, p0, Lcom/huawei/android/multiscreen/dlna/sdk/dms/share/ShareFileNotification$NotificationThread;->this$0:Lcom/huawei/android/multiscreen/dlna/sdk/dms/share/ShareFileNotification;

    const/4 v3, 0x1

    #setter for: Lcom/huawei/android/multiscreen/dlna/sdk/dms/share/ShareFileNotification;->isProcess:Z
    invoke-static {v1, v3}, Lcom/huawei/android/multiscreen/dlna/sdk/dms/share/ShareFileNotification;->access$2(Lcom/huawei/android/multiscreen/dlna/sdk/dms/share/ShareFileNotification;Z)V

    .line 199
    :goto_1
    iget-object v1, p0, Lcom/huawei/android/multiscreen/dlna/sdk/dms/share/ShareFileNotification$NotificationThread;->this$0:Lcom/huawei/android/multiscreen/dlna/sdk/dms/share/ShareFileNotification;

    #getter for: Lcom/huawei/android/multiscreen/dlna/sdk/dms/share/ShareFileNotification;->updateOpsList:Lcom/huawei/android/multiscreen/dlna/sdk/dms/share/OperationList;
    invoke-static {v1}, Lcom/huawei/android/multiscreen/dlna/sdk/dms/share/ShareFileNotification;->access$1(Lcom/huawei/android/multiscreen/dlna/sdk/dms/share/ShareFileNotification;)Lcom/huawei/android/multiscreen/dlna/sdk/dms/share/OperationList;

    move-result-object v1

    invoke-virtual {v1}, Lcom/huawei/android/multiscreen/dlna/sdk/dms/share/OperationList;->size()I

    move-result v1

    if-gtz v1, :cond_1

    .line 192
    monitor-exit v2

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 202
    :cond_1
    :try_start_1
    invoke-static {}, Lcom/huawei/android/multiscreen/dlna/sdk/dms/share/ShareFileNotification;->access$3()I

    move-result v1

    int-to-long v3, v1

    invoke-static {v3, v4}, Landroid/os/SystemClock;->sleep(J)V

    .line 203
    const-string v1, "ShareFileNotification"

    const-string v3, " start Process Operation!"

    invoke-static {v1, v3}, Lcom/huawei/android/multiscreen/dlna/sdk/util/DebugLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 209
    iget-object v1, p0, Lcom/huawei/android/multiscreen/dlna/sdk/dms/share/ShareFileNotification$NotificationThread;->this$0:Lcom/huawei/android/multiscreen/dlna/sdk/dms/share/ShareFileNotification;

    #getter for: Lcom/huawei/android/multiscreen/dlna/sdk/dms/share/ShareFileNotification;->updateOpsList:Lcom/huawei/android/multiscreen/dlna/sdk/dms/share/OperationList;
    invoke-static {v1}, Lcom/huawei/android/multiscreen/dlna/sdk/dms/share/ShareFileNotification;->access$1(Lcom/huawei/android/multiscreen/dlna/sdk/dms/share/ShareFileNotification;)Lcom/huawei/android/multiscreen/dlna/sdk/dms/share/OperationList;

    move-result-object v1

    invoke-virtual {v1}, Lcom/huawei/android/multiscreen/dlna/sdk/dms/share/OperationList;->copyAndClear()Lcom/huawei/android/multiscreen/dlna/sdk/dms/share/OperationList;

    move-result-object v0

    .line 212
    .local v0, tempList:Lcom/huawei/android/multiscreen/dlna/sdk/dms/share/OperationList;
    iget-object v1, p0, Lcom/huawei/android/multiscreen/dlna/sdk/dms/share/ShareFileNotification$NotificationThread;->this$0:Lcom/huawei/android/multiscreen/dlna/sdk/dms/share/ShareFileNotification;

    invoke-virtual {v1, v0}, Lcom/huawei/android/multiscreen/dlna/sdk/dms/share/ShareFileNotification;->synchronousSaveAndNotify(Lcom/huawei/android/multiscreen/dlna/sdk/dms/share/OperationList;)Z

    .line 214
    const-string v1, "ShareFileNotification"

    const-string v3, " end Process Operation!"

    invoke-static {v1, v3}, Lcom/huawei/android/multiscreen/dlna/sdk/util/DebugLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 217
    invoke-static {}, Lcom/huawei/android/multiscreen/dlna/sdk/dms/share/ShareFileNotification;->access$4()I

    move-result v1

    int-to-long v3, v1

    invoke-static {v3, v4}, Landroid/os/SystemClock;->sleep(J)V

    .line 219
    iget-object v1, p0, Lcom/huawei/android/multiscreen/dlna/sdk/dms/share/ShareFileNotification$NotificationThread;->this$0:Lcom/huawei/android/multiscreen/dlna/sdk/dms/share/ShareFileNotification;

    const/4 v3, 0x0

    #setter for: Lcom/huawei/android/multiscreen/dlna/sdk/dms/share/ShareFileNotification;->isProcess:Z
    invoke-static {v1, v3}, Lcom/huawei/android/multiscreen/dlna/sdk/dms/share/ShareFileNotification;->access$2(Lcom/huawei/android/multiscreen/dlna/sdk/dms/share/ShareFileNotification;Z)V

    .line 220
    const-string v1, "ShareFileNotification"

    const-string v3, "end NotificationThread!"

    invoke-static {v1, v3}, Lcom/huawei/android/multiscreen/dlna/sdk/util/DebugLog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1
.end method
