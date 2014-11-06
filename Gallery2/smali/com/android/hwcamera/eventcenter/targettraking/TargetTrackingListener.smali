.class public Lcom/android/hwcamera/eventcenter/targettraking/TargetTrackingListener;
.super Ljava/lang/Object;
.source "TargetTrackingListener.java"

# interfaces
.implements Lcom/android/hwcamera/eventcenter/EventListener;


# static fields
.field private static targetTrakingListener:Lcom/android/hwcamera/eventcenter/targettraking/TargetTrackingListener;


# instance fields
.field private mFocusTargetData:Lcom/android/hwcamera/eventcenter/targettraking/TargetInfo;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 13
    const/4 v0, 0x0

    sput-object v0, Lcom/android/hwcamera/eventcenter/targettraking/TargetTrackingListener;->targetTrakingListener:Lcom/android/hwcamera/eventcenter/targettraking/TargetTrackingListener;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 21
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 14
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/hwcamera/eventcenter/targettraking/TargetTrackingListener;->mFocusTargetData:Lcom/android/hwcamera/eventcenter/targettraking/TargetInfo;

    .line 22
    return-void
.end method

.method static synthetic access$000(Lcom/android/hwcamera/eventcenter/targettraking/TargetTrackingListener;)Lcom/android/hwcamera/eventcenter/targettraking/TargetInfo;
    .locals 1
    .parameter "x0"

    .prologue
    .line 11
    iget-object v0, p0, Lcom/android/hwcamera/eventcenter/targettraking/TargetTrackingListener;->mFocusTargetData:Lcom/android/hwcamera/eventcenter/targettraking/TargetInfo;

    return-object v0
.end method

.method static synthetic access$002(Lcom/android/hwcamera/eventcenter/targettraking/TargetTrackingListener;Lcom/android/hwcamera/eventcenter/targettraking/TargetInfo;)Lcom/android/hwcamera/eventcenter/targettraking/TargetInfo;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 11
    iput-object p1, p0, Lcom/android/hwcamera/eventcenter/targettraking/TargetTrackingListener;->mFocusTargetData:Lcom/android/hwcamera/eventcenter/targettraking/TargetInfo;

    return-object p1
.end method

.method public static declared-synchronized getInstance()Lcom/android/hwcamera/eventcenter/EventListener;
    .locals 2

    .prologue
    .line 17
    const-class v1, Lcom/android/hwcamera/eventcenter/targettraking/TargetTrackingListener;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/android/hwcamera/eventcenter/targettraking/TargetTrackingListener;->targetTrakingListener:Lcom/android/hwcamera/eventcenter/targettraking/TargetTrackingListener;

    if-nez v0, :cond_0

    new-instance v0, Lcom/android/hwcamera/eventcenter/targettraking/TargetTrackingListener;

    invoke-direct {v0}, Lcom/android/hwcamera/eventcenter/targettraking/TargetTrackingListener;-><init>()V

    sput-object v0, Lcom/android/hwcamera/eventcenter/targettraking/TargetTrackingListener;->targetTrakingListener:Lcom/android/hwcamera/eventcenter/targettraking/TargetTrackingListener;

    .line 18
    :cond_0
    sget-object v0, Lcom/android/hwcamera/eventcenter/targettraking/TargetTrackingListener;->targetTrakingListener:Lcom/android/hwcamera/eventcenter/targettraking/TargetTrackingListener;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 17
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public handle(Lcom/android/hwcamera/eventcenter/Event;Lcom/android/hwcamera/CameraActivity;)V
    .locals 2
    .parameter "e"
    .parameter "cameraActivity"

    .prologue
    .line 26
    move-object v0, p1

    check-cast v0, Lcom/android/hwcamera/eventcenter/targettraking/TargetTrackingEvent;

    .line 27
    .local v0, event:Lcom/android/hwcamera/eventcenter/targettraking/TargetTrackingEvent;
    if-eqz p2, :cond_0

    .line 28
    new-instance v1, Lcom/android/hwcamera/eventcenter/targettraking/TargetTrackingListener$1;

    invoke-direct {v1, p0, v0, p2}, Lcom/android/hwcamera/eventcenter/targettraking/TargetTrackingListener$1;-><init>(Lcom/android/hwcamera/eventcenter/targettraking/TargetTrackingListener;Lcom/android/hwcamera/eventcenter/targettraking/TargetTrackingEvent;Lcom/android/hwcamera/CameraActivity;)V

    invoke-virtual {p2, v1}, Lcom/android/hwcamera/CameraActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 36
    :cond_0
    return-void
.end method
