.class public Lcom/huawei/android/multiscreen/mirror/sdk/api/MRSinkServiceHelper;
.super Ljava/lang/Object;
.source "MRSinkServiceHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/huawei/android/multiscreen/mirror/sdk/api/MRSinkServiceHelper$ILayoutSinkCallback;,
        Lcom/huawei/android/multiscreen/mirror/sdk/api/MRSinkServiceHelper$SerivceBinder;
    }
.end annotation


# static fields
.field private static final DELAY_DOWN:I = 0x64

.field private static final TAG:Ljava/lang/String; = "MIRROR_SDK"

.field private static final delayTime:J = 0x1f4L


# instance fields
.field private activityAlive:Z

.field private context:Landroid/content/Context;

.field private delaying:Z

.field private layoutActivityClass:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field

.field private lockActivityCallback:Ljava/lang/Object;

.field private mExternalSinkCallback:Lcom/huawei/android/multiscreen/mirror/sdk/api/IMRSinkCallback;

.field private mHander:Landroid/os/Handler;

.field private mManager:Lcom/huawei/android/multiscreen/mirror/sdk/api/MRComponentManager;

.field private mSink:Lcom/huawei/android/multiscreen/mirror/sdk/api/MRSink;

.field private mSinkActivityCallbak:Lcom/huawei/android/multiscreen/mirror/sdk/api/MRSinkServiceHelper$ILayoutSinkCallback;

.field private semActivity:Ljava/util/concurrent/Semaphore;

.field private semActivityWaitFlag:Z

.field private semConnected:Ljava/util/concurrent/Semaphore;

.field private semConnectedWaitFlag:Z

.field private sinkCallback:Lcom/huawei/android/multiscreen/mirror/sdk/api/IMRSinkCallback;


# direct methods
.method public constructor <init>(Lcom/huawei/android/multiscreen/mirror/sdk/api/MRComponentManager;Ljava/lang/Class;Landroid/content/Context;)V
    .locals 3
    .parameter "_mManager"
    .parameter
    .parameter "_context"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/huawei/android/multiscreen/mirror/sdk/api/MRComponentManager;",
            "Ljava/lang/Class",
            "<*>;",
            "Landroid/content/Context;",
            ")V"
        }
    .end annotation

    .prologue
    .local p2, T:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    const/4 v2, 0x0

    .line 43
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 190
    new-instance v0, Landroid/os/Handler;

    new-instance v1, Lcom/huawei/android/multiscreen/mirror/sdk/api/MRSinkServiceHelper$1;

    invoke-direct {v1, p0}, Lcom/huawei/android/multiscreen/mirror/sdk/api/MRSinkServiceHelper$1;-><init>(Lcom/huawei/android/multiscreen/mirror/sdk/api/MRSinkServiceHelper;)V

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Handler$Callback;)V

    iput-object v0, p0, Lcom/huawei/android/multiscreen/mirror/sdk/api/MRSinkServiceHelper;->mHander:Landroid/os/Handler;

    .line 204
    new-instance v0, Lcom/huawei/android/multiscreen/mirror/sdk/api/MRSinkServiceHelper$2;

    invoke-direct {v0, p0}, Lcom/huawei/android/multiscreen/mirror/sdk/api/MRSinkServiceHelper$2;-><init>(Lcom/huawei/android/multiscreen/mirror/sdk/api/MRSinkServiceHelper;)V

    iput-object v0, p0, Lcom/huawei/android/multiscreen/mirror/sdk/api/MRSinkServiceHelper;->sinkCallback:Lcom/huawei/android/multiscreen/mirror/sdk/api/IMRSinkCallback;

    .line 45
    const-string v0, "MIRROR_SDK"

    const-string v1, "MRSinkServiceHelper Initial()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 47
    iput-boolean v2, p0, Lcom/huawei/android/multiscreen/mirror/sdk/api/MRSinkServiceHelper;->delaying:Z

    .line 48
    iput-object p3, p0, Lcom/huawei/android/multiscreen/mirror/sdk/api/MRSinkServiceHelper;->context:Landroid/content/Context;

    .line 49
    iput-object p2, p0, Lcom/huawei/android/multiscreen/mirror/sdk/api/MRSinkServiceHelper;->layoutActivityClass:Ljava/lang/Class;

    .line 50
    iput-object p1, p0, Lcom/huawei/android/multiscreen/mirror/sdk/api/MRSinkServiceHelper;->mManager:Lcom/huawei/android/multiscreen/mirror/sdk/api/MRComponentManager;

    .line 51
    iget-object v0, p0, Lcom/huawei/android/multiscreen/mirror/sdk/api/MRSinkServiceHelper;->mManager:Lcom/huawei/android/multiscreen/mirror/sdk/api/MRComponentManager;

    invoke-virtual {v0}, Lcom/huawei/android/multiscreen/mirror/sdk/api/MRComponentManager;->getMRSink()Lcom/huawei/android/multiscreen/mirror/sdk/api/MRSink;

    move-result-object v0

    iput-object v0, p0, Lcom/huawei/android/multiscreen/mirror/sdk/api/MRSinkServiceHelper;->mSink:Lcom/huawei/android/multiscreen/mirror/sdk/api/MRSink;

    .line 52
    iget-object v0, p0, Lcom/huawei/android/multiscreen/mirror/sdk/api/MRSinkServiceHelper;->mSink:Lcom/huawei/android/multiscreen/mirror/sdk/api/MRSink;

    iget-object v1, p0, Lcom/huawei/android/multiscreen/mirror/sdk/api/MRSinkServiceHelper;->sinkCallback:Lcom/huawei/android/multiscreen/mirror/sdk/api/IMRSinkCallback;

    invoke-virtual {v0, v1}, Lcom/huawei/android/multiscreen/mirror/sdk/api/MRSink;->setCallback(Lcom/huawei/android/multiscreen/mirror/sdk/api/IMRSinkCallback;)I

    .line 53
    new-instance v0, Ljava/util/concurrent/Semaphore;

    invoke-direct {v0, v2}, Ljava/util/concurrent/Semaphore;-><init>(I)V

    iput-object v0, p0, Lcom/huawei/android/multiscreen/mirror/sdk/api/MRSinkServiceHelper;->semActivity:Ljava/util/concurrent/Semaphore;

    .line 54
    new-instance v0, Ljava/util/concurrent/Semaphore;

    invoke-direct {v0, v2}, Ljava/util/concurrent/Semaphore;-><init>(I)V

    iput-object v0, p0, Lcom/huawei/android/multiscreen/mirror/sdk/api/MRSinkServiceHelper;->semConnected:Ljava/util/concurrent/Semaphore;

    .line 55
    new-instance v0, Ljava/lang/Object;

    invoke-direct/range {v0 .. v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/huawei/android/multiscreen/mirror/sdk/api/MRSinkServiceHelper;->lockActivityCallback:Ljava/lang/Object;

    .line 56
    return-void
.end method

.method static synthetic access$0(Lcom/huawei/android/multiscreen/mirror/sdk/api/MRSinkServiceHelper;Z)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 28
    iput-boolean p1, p0, Lcom/huawei/android/multiscreen/mirror/sdk/api/MRSinkServiceHelper;->delaying:Z

    return-void
.end method

.method static synthetic access$1(Lcom/huawei/android/multiscreen/mirror/sdk/api/MRSinkServiceHelper;)Lcom/huawei/android/multiscreen/mirror/sdk/api/IMRSinkCallback;
    .locals 1
    .parameter

    .prologue
    .line 34
    iget-object v0, p0, Lcom/huawei/android/multiscreen/mirror/sdk/api/MRSinkServiceHelper;->mExternalSinkCallback:Lcom/huawei/android/multiscreen/mirror/sdk/api/IMRSinkCallback;

    return-object v0
.end method

.method static synthetic access$10(Lcom/huawei/android/multiscreen/mirror/sdk/api/MRSinkServiceHelper;)Z
    .locals 1
    .parameter

    .prologue
    .line 38
    iget-boolean v0, p0, Lcom/huawei/android/multiscreen/mirror/sdk/api/MRSinkServiceHelper;->semActivityWaitFlag:Z

    return v0
.end method

.method static synthetic access$11(Lcom/huawei/android/multiscreen/mirror/sdk/api/MRSinkServiceHelper;)Landroid/os/Handler;
    .locals 1
    .parameter

    .prologue
    .line 190
    iget-object v0, p0, Lcom/huawei/android/multiscreen/mirror/sdk/api/MRSinkServiceHelper;->mHander:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$12(Lcom/huawei/android/multiscreen/mirror/sdk/api/MRSinkServiceHelper;)Ljava/util/concurrent/Semaphore;
    .locals 1
    .parameter

    .prologue
    .line 36
    iget-object v0, p0, Lcom/huawei/android/multiscreen/mirror/sdk/api/MRSinkServiceHelper;->semConnected:Ljava/util/concurrent/Semaphore;

    return-object v0
.end method

.method static synthetic access$13(Lcom/huawei/android/multiscreen/mirror/sdk/api/MRSinkServiceHelper;)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 37
    iget-object v0, p0, Lcom/huawei/android/multiscreen/mirror/sdk/api/MRSinkServiceHelper;->lockActivityCallback:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$14(Lcom/huawei/android/multiscreen/mirror/sdk/api/MRSinkServiceHelper;)Lcom/huawei/android/multiscreen/mirror/sdk/api/MRSinkServiceHelper$ILayoutSinkCallback;
    .locals 1
    .parameter

    .prologue
    .line 33
    iget-object v0, p0, Lcom/huawei/android/multiscreen/mirror/sdk/api/MRSinkServiceHelper;->mSinkActivityCallbak:Lcom/huawei/android/multiscreen/mirror/sdk/api/MRSinkServiceHelper$ILayoutSinkCallback;

    return-object v0
.end method

.method static synthetic access$15(Lcom/huawei/android/multiscreen/mirror/sdk/api/MRSinkServiceHelper;)Lcom/huawei/android/multiscreen/mirror/sdk/api/MRComponentManager;
    .locals 1
    .parameter

    .prologue
    .line 30
    iget-object v0, p0, Lcom/huawei/android/multiscreen/mirror/sdk/api/MRSinkServiceHelper;->mManager:Lcom/huawei/android/multiscreen/mirror/sdk/api/MRComponentManager;

    return-object v0
.end method

.method static synthetic access$16(Lcom/huawei/android/multiscreen/mirror/sdk/api/MRSinkServiceHelper;Lcom/huawei/android/multiscreen/mirror/sdk/api/MRSink;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 31
    iput-object p1, p0, Lcom/huawei/android/multiscreen/mirror/sdk/api/MRSinkServiceHelper;->mSink:Lcom/huawei/android/multiscreen/mirror/sdk/api/MRSink;

    return-void
.end method

.method static synthetic access$17(Lcom/huawei/android/multiscreen/mirror/sdk/api/MRSinkServiceHelper;)Lcom/huawei/android/multiscreen/mirror/sdk/api/MRSink;
    .locals 1
    .parameter

    .prologue
    .line 31
    iget-object v0, p0, Lcom/huawei/android/multiscreen/mirror/sdk/api/MRSinkServiceHelper;->mSink:Lcom/huawei/android/multiscreen/mirror/sdk/api/MRSink;

    return-object v0
.end method

.method static synthetic access$18(Lcom/huawei/android/multiscreen/mirror/sdk/api/MRSinkServiceHelper;)Z
    .locals 1
    .parameter

    .prologue
    .line 39
    iget-boolean v0, p0, Lcom/huawei/android/multiscreen/mirror/sdk/api/MRSinkServiceHelper;->semConnectedWaitFlag:Z

    return v0
.end method

.method static synthetic access$19(Lcom/huawei/android/multiscreen/mirror/sdk/api/MRSinkServiceHelper;Lcom/huawei/android/multiscreen/mirror/sdk/api/MRSinkServiceHelper$ILayoutSinkCallback;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 33
    iput-object p1, p0, Lcom/huawei/android/multiscreen/mirror/sdk/api/MRSinkServiceHelper;->mSinkActivityCallbak:Lcom/huawei/android/multiscreen/mirror/sdk/api/MRSinkServiceHelper$ILayoutSinkCallback;

    return-void
.end method

.method static synthetic access$2(Lcom/huawei/android/multiscreen/mirror/sdk/api/MRSinkServiceHelper;)Z
    .locals 1
    .parameter

    .prologue
    .line 28
    iget-boolean v0, p0, Lcom/huawei/android/multiscreen/mirror/sdk/api/MRSinkServiceHelper;->delaying:Z

    return v0
.end method

.method static synthetic access$3(Lcom/huawei/android/multiscreen/mirror/sdk/api/MRSinkServiceHelper;)Z
    .locals 1
    .parameter

    .prologue
    .line 40
    iget-boolean v0, p0, Lcom/huawei/android/multiscreen/mirror/sdk/api/MRSinkServiceHelper;->activityAlive:Z

    return v0
.end method

.method static synthetic access$4(Lcom/huawei/android/multiscreen/mirror/sdk/api/MRSinkServiceHelper;Z)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 40
    iput-boolean p1, p0, Lcom/huawei/android/multiscreen/mirror/sdk/api/MRSinkServiceHelper;->activityAlive:Z

    return-void
.end method

.method static synthetic access$5(Lcom/huawei/android/multiscreen/mirror/sdk/api/MRSinkServiceHelper;Z)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 38
    iput-boolean p1, p0, Lcom/huawei/android/multiscreen/mirror/sdk/api/MRSinkServiceHelper;->semActivityWaitFlag:Z

    return-void
.end method

.method static synthetic access$6(Lcom/huawei/android/multiscreen/mirror/sdk/api/MRSinkServiceHelper;Z)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 39
    iput-boolean p1, p0, Lcom/huawei/android/multiscreen/mirror/sdk/api/MRSinkServiceHelper;->semConnectedWaitFlag:Z

    return-void
.end method

.method static synthetic access$7(Lcom/huawei/android/multiscreen/mirror/sdk/api/MRSinkServiceHelper;)Landroid/content/Context;
    .locals 1
    .parameter

    .prologue
    .line 41
    iget-object v0, p0, Lcom/huawei/android/multiscreen/mirror/sdk/api/MRSinkServiceHelper;->context:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$8(Lcom/huawei/android/multiscreen/mirror/sdk/api/MRSinkServiceHelper;)Ljava/lang/Class;
    .locals 1
    .parameter

    .prologue
    .line 32
    iget-object v0, p0, Lcom/huawei/android/multiscreen/mirror/sdk/api/MRSinkServiceHelper;->layoutActivityClass:Ljava/lang/Class;

    return-object v0
.end method

.method static synthetic access$9(Lcom/huawei/android/multiscreen/mirror/sdk/api/MRSinkServiceHelper;)Ljava/util/concurrent/Semaphore;
    .locals 1
    .parameter

    .prologue
    .line 35
    iget-object v0, p0, Lcom/huawei/android/multiscreen/mirror/sdk/api/MRSinkServiceHelper;->semActivity:Ljava/util/concurrent/Semaphore;

    return-object v0
.end method


# virtual methods
.method public closeLayout()V
    .locals 2

    .prologue
    .line 91
    iget-object v1, p0, Lcom/huawei/android/multiscreen/mirror/sdk/api/MRSinkServiceHelper;->lockActivityCallback:Ljava/lang/Object;

    monitor-enter v1

    .line 92
    :try_start_0
    iget-object v0, p0, Lcom/huawei/android/multiscreen/mirror/sdk/api/MRSinkServiceHelper;->mSinkActivityCallbak:Lcom/huawei/android/multiscreen/mirror/sdk/api/MRSinkServiceHelper$ILayoutSinkCallback;

    if-eqz v0, :cond_0

    .line 93
    iget-object v0, p0, Lcom/huawei/android/multiscreen/mirror/sdk/api/MRSinkServiceHelper;->mSinkActivityCallbak:Lcom/huawei/android/multiscreen/mirror/sdk/api/MRSinkServiceHelper$ILayoutSinkCallback;

    invoke-interface {v0}, Lcom/huawei/android/multiscreen/mirror/sdk/api/MRSinkServiceHelper$ILayoutSinkCallback;->disconnected()V

    .line 91
    :cond_0
    monitor-exit v1

    .line 95
    return-void

    .line 91
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getSinkServiceBinder()Landroid/os/IBinder;
    .locals 2

    .prologue
    .line 82
    const-string v0, "MIRROR_SDK"

    const-string v1, "getBinder"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 83
    new-instance v0, Lcom/huawei/android/multiscreen/mirror/sdk/api/MRSinkServiceHelper$SerivceBinder;

    invoke-direct {v0, p0}, Lcom/huawei/android/multiscreen/mirror/sdk/api/MRSinkServiceHelper$SerivceBinder;-><init>(Lcom/huawei/android/multiscreen/mirror/sdk/api/MRSinkServiceHelper;)V

    return-object v0
.end method

.method public removeSinkCallback()V
    .locals 1

    .prologue
    .line 73
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/huawei/android/multiscreen/mirror/sdk/api/MRSinkServiceHelper;->mExternalSinkCallback:Lcom/huawei/android/multiscreen/mirror/sdk/api/IMRSinkCallback;

    .line 74
    return-void
.end method

.method public setSinkCallback(Lcom/huawei/android/multiscreen/mirror/sdk/api/IMRSinkCallback;)V
    .locals 0
    .parameter "mSinkCallback"

    .prologue
    .line 65
    iput-object p1, p0, Lcom/huawei/android/multiscreen/mirror/sdk/api/MRSinkServiceHelper;->mExternalSinkCallback:Lcom/huawei/android/multiscreen/mirror/sdk/api/IMRSinkCallback;

    .line 66
    return-void
.end method
