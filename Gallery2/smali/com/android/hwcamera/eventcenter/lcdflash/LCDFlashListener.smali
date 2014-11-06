.class public Lcom/android/hwcamera/eventcenter/lcdflash/LCDFlashListener;
.super Ljava/lang/Object;
.source "LCDFlashListener.java"

# interfaces
.implements Lcom/android/hwcamera/eventcenter/EventListener;


# static fields
.field private static lcdFlahListener:Lcom/android/hwcamera/eventcenter/lcdflash/LCDFlashListener;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 9
    const/4 v0, 0x0

    sput-object v0, Lcom/android/hwcamera/eventcenter/lcdflash/LCDFlashListener;->lcdFlahListener:Lcom/android/hwcamera/eventcenter/lcdflash/LCDFlashListener;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 17
    return-void
.end method

.method public static declared-synchronized getInstance()Lcom/android/hwcamera/eventcenter/EventListener;
    .locals 2

    .prologue
    .line 12
    const-class v1, Lcom/android/hwcamera/eventcenter/lcdflash/LCDFlashListener;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/android/hwcamera/eventcenter/lcdflash/LCDFlashListener;->lcdFlahListener:Lcom/android/hwcamera/eventcenter/lcdflash/LCDFlashListener;

    if-nez v0, :cond_0

    new-instance v0, Lcom/android/hwcamera/eventcenter/lcdflash/LCDFlashListener;

    invoke-direct {v0}, Lcom/android/hwcamera/eventcenter/lcdflash/LCDFlashListener;-><init>()V

    sput-object v0, Lcom/android/hwcamera/eventcenter/lcdflash/LCDFlashListener;->lcdFlahListener:Lcom/android/hwcamera/eventcenter/lcdflash/LCDFlashListener;

    .line 13
    :cond_0
    sget-object v0, Lcom/android/hwcamera/eventcenter/lcdflash/LCDFlashListener;->lcdFlahListener:Lcom/android/hwcamera/eventcenter/lcdflash/LCDFlashListener;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 12
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public handle(Lcom/android/hwcamera/eventcenter/Event;Lcom/android/hwcamera/CameraActivity;)V
    .locals 1
    .parameter "e"
    .parameter "cameraActivity"

    .prologue
    .line 21
    if-eqz p2, :cond_0

    .line 22
    new-instance v0, Lcom/android/hwcamera/eventcenter/lcdflash/LCDFlashListener$1;

    invoke-direct {v0, p0, p2}, Lcom/android/hwcamera/eventcenter/lcdflash/LCDFlashListener$1;-><init>(Lcom/android/hwcamera/eventcenter/lcdflash/LCDFlashListener;Lcom/android/hwcamera/CameraActivity;)V

    invoke-virtual {p2, v0}, Lcom/android/hwcamera/CameraActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 29
    :cond_0
    return-void
.end method
