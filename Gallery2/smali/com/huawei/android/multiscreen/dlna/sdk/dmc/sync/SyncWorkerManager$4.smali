.class Lcom/huawei/android/multiscreen/dlna/sdk/dmc/sync/SyncWorkerManager$4;
.super Ljava/lang/Object;
.source "SyncWorkerManager.java"

# interfaces
.implements Ljava/lang/Thread$UncaughtExceptionHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/huawei/android/multiscreen/dlna/sdk/dmc/sync/SyncWorkerManager;->startPlayingStateThread()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/huawei/android/multiscreen/dlna/sdk/dmc/sync/SyncWorkerManager;


# direct methods
.method constructor <init>(Lcom/huawei/android/multiscreen/dlna/sdk/dmc/sync/SyncWorkerManager;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/sync/SyncWorkerManager$4;->this$0:Lcom/huawei/android/multiscreen/dlna/sdk/dmc/sync/SyncWorkerManager;

    .line 605
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V
    .locals 2
    .parameter "thread"
    .parameter "ex"

    .prologue
    .line 610
    const-string v0, "SyncWorkerManager"

    .line 611
    const-string v1, "threadPlayingState,uncaughtException"

    .line 610
    invoke-static {v0, v1}, Lcom/huawei/android/multiscreen/dlna/sdk/util/DebugLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 612
    return-void
.end method
