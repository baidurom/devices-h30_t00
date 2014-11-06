.class Lcom/huawei/android/pushagent/PushService$1;
.super Ljava/lang/Object;
.source "PushService.java"

# interfaces
.implements Ljava/lang/Thread$UncaughtExceptionHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/huawei/android/pushagent/PushService;->onCreate()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/huawei/android/pushagent/PushService;


# direct methods
.method constructor <init>(Lcom/huawei/android/pushagent/PushService;)V
    .locals 0
    .parameter

    .prologue
    .line 56
    iput-object p1, p0, Lcom/huawei/android/pushagent/PushService$1;->this$0:Lcom/huawei/android/pushagent/PushService;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V
    .locals 1
    .parameter "thread"
    .parameter "ex"

    .prologue
    .line 58
    iget-object v0, p0, Lcom/huawei/android/pushagent/PushService$1;->this$0:Lcom/huawei/android/pushagent/PushService;

    invoke-virtual {v0}, Lcom/huawei/android/pushagent/PushService;->stopService()V

    .line 59
    return-void
.end method
