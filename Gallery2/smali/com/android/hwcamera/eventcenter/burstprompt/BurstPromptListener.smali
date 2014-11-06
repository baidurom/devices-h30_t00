.class public Lcom/android/hwcamera/eventcenter/burstprompt/BurstPromptListener;
.super Ljava/lang/Object;
.source "BurstPromptListener.java"

# interfaces
.implements Lcom/android/hwcamera/eventcenter/EventListener;


# static fields
.field private static burstPromptListener:Lcom/android/hwcamera/eventcenter/burstprompt/BurstPromptListener;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 13
    const/4 v0, 0x0

    sput-object v0, Lcom/android/hwcamera/eventcenter/burstprompt/BurstPromptListener;->burstPromptListener:Lcom/android/hwcamera/eventcenter/burstprompt/BurstPromptListener;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 20
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 21
    return-void
.end method

.method static synthetic access$000(Lcom/android/hwcamera/eventcenter/burstprompt/BurstPromptListener;Lcom/android/hwcamera/CameraActivity;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 11
    invoke-direct {p0, p1, p2}, Lcom/android/hwcamera/eventcenter/burstprompt/BurstPromptListener;->showBurstPrompt(Lcom/android/hwcamera/CameraActivity;Z)V

    return-void
.end method

.method public static declared-synchronized getInstance()Lcom/android/hwcamera/eventcenter/EventListener;
    .locals 2

    .prologue
    .line 16
    const-class v1, Lcom/android/hwcamera/eventcenter/burstprompt/BurstPromptListener;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/android/hwcamera/eventcenter/burstprompt/BurstPromptListener;->burstPromptListener:Lcom/android/hwcamera/eventcenter/burstprompt/BurstPromptListener;

    if-nez v0, :cond_0

    new-instance v0, Lcom/android/hwcamera/eventcenter/burstprompt/BurstPromptListener;

    invoke-direct {v0}, Lcom/android/hwcamera/eventcenter/burstprompt/BurstPromptListener;-><init>()V

    sput-object v0, Lcom/android/hwcamera/eventcenter/burstprompt/BurstPromptListener;->burstPromptListener:Lcom/android/hwcamera/eventcenter/burstprompt/BurstPromptListener;

    .line 17
    :cond_0
    sget-object v0, Lcom/android/hwcamera/eventcenter/burstprompt/BurstPromptListener;->burstPromptListener:Lcom/android/hwcamera/eventcenter/burstprompt/BurstPromptListener;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 16
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private showBurstPrompt(Lcom/android/hwcamera/CameraActivity;Z)V
    .locals 1
    .parameter "activity"
    .parameter "isOn"

    .prologue
    .line 24
    if-eqz p2, :cond_0

    .line 25
    const v0, 0x7f0d0142

    invoke-virtual {p1, v0}, Lcom/android/hwcamera/CameraActivity;->showOnscreenHintImmediately(I)V

    .line 29
    :goto_0
    return-void

    .line 27
    :cond_0
    invoke-virtual {p1}, Lcom/android/hwcamera/CameraActivity;->hideAllOnsreenHint()V

    goto :goto_0
.end method


# virtual methods
.method public handle(Lcom/android/hwcamera/eventcenter/Event;Lcom/android/hwcamera/CameraActivity;)V
    .locals 3
    .parameter "e"
    .parameter "cameraActivity"

    .prologue
    .line 33
    move-object v0, p1

    check-cast v0, Lcom/android/hwcamera/eventcenter/burstprompt/BurstPromptEvent;

    .line 34
    .local v0, event:Lcom/android/hwcamera/eventcenter/burstprompt/BurstPromptEvent;
    invoke-virtual {v0}, Lcom/android/hwcamera/eventcenter/burstprompt/BurstPromptEvent;->getOnorOff()Z

    move-result v1

    .line 35
    .local v1, isOn:Z
    if-eqz p2, :cond_0

    .line 36
    invoke-virtual {p2, v1}, Lcom/android/hwcamera/CameraActivity;->playBurstSound(Z)V

    .line 37
    new-instance v2, Lcom/android/hwcamera/eventcenter/burstprompt/BurstPromptListener$1;

    invoke-direct {v2, p0, p2, v1}, Lcom/android/hwcamera/eventcenter/burstprompt/BurstPromptListener$1;-><init>(Lcom/android/hwcamera/eventcenter/burstprompt/BurstPromptListener;Lcom/android/hwcamera/CameraActivity;Z)V

    invoke-virtual {p2, v2}, Lcom/android/hwcamera/CameraActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 44
    :cond_0
    return-void
.end method
