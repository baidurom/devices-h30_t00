.class public Lcom/android/hwcamera/CameraHardButton;
.super Ljava/lang/Object;
.source "CameraHardButton.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/hwcamera/CameraHardButton$OnCameraHardButtonListener;
    }
.end annotation


# static fields
.field static final DOUBLE_PRESS_CAMERA_BUTTON_DELAY:I = 0xc8

.field private static final TAG:Ljava/lang/String; = "CameraHardButton"


# instance fields
.field private isDown:Z

.field private isInCamera:Z

.field private isLongPressHandled:Z

.field private isLongPressed:Z

.field private mLastUpTime:J

.field private mListener:Lcom/android/hwcamera/CameraHardButton$OnCameraHardButtonListener;

.field private mShouldAbandonUpKey:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 7
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 11
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/hwcamera/CameraHardButton;->isInCamera:Z

    .line 15
    iput-boolean v1, p0, Lcom/android/hwcamera/CameraHardButton;->mShouldAbandonUpKey:Z

    .line 16
    iput-boolean v1, p0, Lcom/android/hwcamera/CameraHardButton;->isLongPressed:Z

    .line 17
    iput-boolean v1, p0, Lcom/android/hwcamera/CameraHardButton;->isLongPressHandled:Z

    .line 18
    iput-boolean v1, p0, Lcom/android/hwcamera/CameraHardButton;->isDown:Z

    .line 20
    return-void
.end method


# virtual methods
.method public enableCameraHardButton(Z)V
    .locals 0
    .parameter "enable"

    .prologue
    .line 27
    iput-boolean p1, p0, Lcom/android/hwcamera/CameraHardButton;->isInCamera:Z

    .line 28
    return-void
.end method

.method public onCameraHardButtonDown(Landroid/view/KeyEvent;)V
    .locals 9
    .parameter "event"

    .prologue
    const-wide/16 v7, 0x0

    const/4 v6, 0x1

    .line 31
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v2

    if-nez v2, :cond_0

    .line 32
    iput-boolean v6, p0, Lcom/android/hwcamera/CameraHardButton;->isDown:Z

    .line 35
    :cond_0
    invoke-virtual {p1}, Landroid/view/KeyEvent;->isLongPress()Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/android/hwcamera/CameraHardButton;->mListener:Lcom/android/hwcamera/CameraHardButton$OnCameraHardButtonListener;

    if-eqz v2, :cond_2

    .line 36
    iput-boolean v6, p0, Lcom/android/hwcamera/CameraHardButton;->isLongPressed:Z

    .line 37
    iget-object v2, p0, Lcom/android/hwcamera/CameraHardButton;->mListener:Lcom/android/hwcamera/CameraHardButton$OnCameraHardButtonListener;

    invoke-interface {v2, v6}, Lcom/android/hwcamera/CameraHardButton$OnCameraHardButtonListener;->onCameraHardButtonLongPress(Z)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 38
    iput-boolean v6, p0, Lcom/android/hwcamera/CameraHardButton;->isLongPressHandled:Z

    .line 56
    :cond_1
    :goto_0
    return-void

    .line 43
    :cond_2
    iget-object v2, p0, Lcom/android/hwcamera/CameraHardButton;->mListener:Lcom/android/hwcamera/CameraHardButton$OnCameraHardButtonListener;

    if-eqz v2, :cond_1

    iget-boolean v2, p0, Lcom/android/hwcamera/CameraHardButton;->isInCamera:Z

    if-nez v2, :cond_1

    .line 44
    const-string v2, "CameraHardButton"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[Flow] ui keydown mLastUpTime = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-wide v4, p0, Lcom/android/hwcamera/CameraHardButton;->mLastUpTime:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " mShouldAbandonUpKey = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p0, Lcom/android/hwcamera/CameraHardButton;->mShouldAbandonUpKey:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 45
    iget-wide v2, p0, Lcom/android/hwcamera/CameraHardButton;->mLastUpTime:J

    cmp-long v2, v2, v7

    if-eqz v2, :cond_3

    .line 46
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/android/hwcamera/CameraHardButton;->mLastUpTime:J

    sub-long v0, v2, v4

    .line 47
    .local v0, eclapsed:J
    const-string v2, "CameraHardButton"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[Flow] mLastUpTime = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-wide v4, p0, Lcom/android/hwcamera/CameraHardButton;->mLastUpTime:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " eclapsed = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " mShouldAbandonUpKey = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p0, Lcom/android/hwcamera/CameraHardButton;->mShouldAbandonUpKey:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 48
    const-wide/16 v2, 0xc8

    cmp-long v2, v0, v2

    if-gez v2, :cond_3

    .line 49
    iget-object v2, p0, Lcom/android/hwcamera/CameraHardButton;->mListener:Lcom/android/hwcamera/CameraHardButton$OnCameraHardButtonListener;

    invoke-interface {v2}, Lcom/android/hwcamera/CameraHardButton$OnCameraHardButtonListener;->onCameraHardButtonDoublePress()V

    .line 50
    iput-boolean v6, p0, Lcom/android/hwcamera/CameraHardButton;->mShouldAbandonUpKey:Z

    .line 53
    .end local v0           #eclapsed:J
    :cond_3
    iput-wide v7, p0, Lcom/android/hwcamera/CameraHardButton;->mLastUpTime:J

    goto :goto_0
.end method

.method public onCameraHardButtonUp(Landroid/view/KeyEvent;)V
    .locals 5
    .parameter "event"

    .prologue
    const/4 v1, 0x1

    const/4 v4, 0x0

    .line 60
    iget-boolean v0, p0, Lcom/android/hwcamera/CameraHardButton;->isLongPressed:Z

    if-ne v1, v0, :cond_1

    .line 61
    iget-boolean v0, p0, Lcom/android/hwcamera/CameraHardButton;->isLongPressHandled:Z

    if-ne v1, v0, :cond_0

    .line 62
    const-string v0, "CameraHardButton"

    const-string v1, "VirtualButton long press up onShutterButtonLongClick"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 63
    iget-object v0, p0, Lcom/android/hwcamera/CameraHardButton;->mListener:Lcom/android/hwcamera/CameraHardButton$OnCameraHardButtonListener;

    invoke-interface {v0, v4}, Lcom/android/hwcamera/CameraHardButton$OnCameraHardButtonListener;->onCameraHardButtonLongPress(Z)Z

    .line 65
    :cond_0
    iput-boolean v4, p0, Lcom/android/hwcamera/CameraHardButton;->isLongPressed:Z

    .line 66
    iput-boolean v4, p0, Lcom/android/hwcamera/CameraHardButton;->isLongPressHandled:Z

    .line 84
    :goto_0
    return-void

    .line 70
    :cond_1
    iget-object v0, p0, Lcom/android/hwcamera/CameraHardButton;->mListener:Lcom/android/hwcamera/CameraHardButton$OnCameraHardButtonListener;

    if-eqz v0, :cond_3

    iget-boolean v0, p0, Lcom/android/hwcamera/CameraHardButton;->isInCamera:Z

    if-nez v0, :cond_3

    .line 71
    const-string v0, "CameraHardButton"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ui keyup mLastUpTime = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/android/hwcamera/CameraHardButton;->mLastUpTime:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " mShouldAbandonUpKey = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/hwcamera/CameraHardButton;->mShouldAbandonUpKey:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 72
    iget-boolean v0, p0, Lcom/android/hwcamera/CameraHardButton;->mShouldAbandonUpKey:Z

    if-nez v0, :cond_2

    .line 73
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/hwcamera/CameraHardButton;->mLastUpTime:J

    .line 75
    :cond_2
    iput-boolean v4, p0, Lcom/android/hwcamera/CameraHardButton;->mShouldAbandonUpKey:Z

    goto :goto_0

    .line 79
    :cond_3
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/android/hwcamera/CameraHardButton;->mListener:Lcom/android/hwcamera/CameraHardButton$OnCameraHardButtonListener;

    if-eqz v0, :cond_4

    iget-boolean v0, p0, Lcom/android/hwcamera/CameraHardButton;->isInCamera:Z

    if-eqz v0, :cond_4

    iget-boolean v0, p0, Lcom/android/hwcamera/CameraHardButton;->isDown:Z

    if-eqz v0, :cond_4

    .line 80
    const-string v0, "CameraHardButton"

    const-string v1, "CameraButton handle onCameraButtonFullClick"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 81
    iget-object v0, p0, Lcom/android/hwcamera/CameraHardButton;->mListener:Lcom/android/hwcamera/CameraHardButton$OnCameraHardButtonListener;

    invoke-interface {v0}, Lcom/android/hwcamera/CameraHardButton$OnCameraHardButtonListener;->onCameraHardButtonClick()V

    .line 83
    :cond_4
    iput-boolean v4, p0, Lcom/android/hwcamera/CameraHardButton;->isDown:Z

    goto :goto_0
.end method

.method public setOnCameraHardButtonListener(Lcom/android/hwcamera/CameraHardButton$OnCameraHardButtonListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 87
    iput-object p1, p0, Lcom/android/hwcamera/CameraHardButton;->mListener:Lcom/android/hwcamera/CameraHardButton$OnCameraHardButtonListener;

    .line 88
    return-void
.end method
