.class Lcom/android/hwcamera/eventcenter/lcdflash/LCDFlashListener$1;
.super Ljava/lang/Object;
.source "LCDFlashListener.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/hwcamera/eventcenter/lcdflash/LCDFlashListener;->handle(Lcom/android/hwcamera/eventcenter/Event;Lcom/android/hwcamera/CameraActivity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/hwcamera/eventcenter/lcdflash/LCDFlashListener;

.field final synthetic val$cameraActivity:Lcom/android/hwcamera/CameraActivity;


# direct methods
.method constructor <init>(Lcom/android/hwcamera/eventcenter/lcdflash/LCDFlashListener;Lcom/android/hwcamera/CameraActivity;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 22
    iput-object p1, p0, Lcom/android/hwcamera/eventcenter/lcdflash/LCDFlashListener$1;->this$0:Lcom/android/hwcamera/eventcenter/lcdflash/LCDFlashListener;

    iput-object p2, p0, Lcom/android/hwcamera/eventcenter/lcdflash/LCDFlashListener$1;->val$cameraActivity:Lcom/android/hwcamera/CameraActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 25
    iget-object v0, p0, Lcom/android/hwcamera/eventcenter/lcdflash/LCDFlashListener$1;->val$cameraActivity:Lcom/android/hwcamera/CameraActivity;

    invoke-virtual {v0}, Lcom/android/hwcamera/CameraActivity;->setLcdCompensateLight()V

    .line 26
    return-void
.end method
