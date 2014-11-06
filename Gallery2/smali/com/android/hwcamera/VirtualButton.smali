.class public Lcom/android/hwcamera/VirtualButton;
.super Ljava/lang/Object;
.source "VirtualButton.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "ShutterFunctionButton"


# instance fields
.field private isEnable:Z

.field private isLongPressHandled:Z

.field private isLongPressed:Z

.field private mListener:Lcom/android/hwcamera/OnShutterButtonListener;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 5
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 9
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/hwcamera/VirtualButton;->isEnable:Z

    .line 10
    iput-boolean v1, p0, Lcom/android/hwcamera/VirtualButton;->isLongPressed:Z

    .line 11
    iput-boolean v1, p0, Lcom/android/hwcamera/VirtualButton;->isLongPressHandled:Z

    return-void
.end method


# virtual methods
.method public enableVirtualButton(Z)V
    .locals 0
    .parameter "enable"

    .prologue
    .line 14
    iput-boolean p1, p0, Lcom/android/hwcamera/VirtualButton;->isEnable:Z

    .line 15
    return-void
.end method

.method public onVirtualButtonDown(Landroid/view/KeyEvent;)V
    .locals 3
    .parameter "event"

    .prologue
    const/4 v2, 0x1

    .line 18
    iget-object v0, p0, Lcom/android/hwcamera/VirtualButton;->mListener:Lcom/android/hwcamera/OnShutterButtonListener;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/hwcamera/VirtualButton;->isEnable:Z

    if-nez v0, :cond_1

    .line 34
    :cond_0
    :goto_0
    return-void

    .line 22
    :cond_1
    if-eqz p1, :cond_2

    invoke-virtual {p1}, Landroid/view/KeyEvent;->isLongPress()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 23
    const-string v0, "ShutterFunctionButton"

    const-string v1, "VirtualButton onVirtualButtonDown onShutterButtonLongClick"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 24
    iput-boolean v2, p0, Lcom/android/hwcamera/VirtualButton;->isLongPressed:Z

    .line 25
    iget-object v0, p0, Lcom/android/hwcamera/VirtualButton;->mListener:Lcom/android/hwcamera/OnShutterButtonListener;

    invoke-interface {v0, v2}, Lcom/android/hwcamera/OnShutterButtonListener;->onShutterButtonLongClick(Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 26
    iput-boolean v2, p0, Lcom/android/hwcamera/VirtualButton;->isLongPressHandled:Z

    goto :goto_0

    .line 31
    :cond_2
    if-eqz p1, :cond_3

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v0

    if-nez v0, :cond_0

    .line 32
    :cond_3
    iget-object v0, p0, Lcom/android/hwcamera/VirtualButton;->mListener:Lcom/android/hwcamera/OnShutterButtonListener;

    invoke-interface {v0, v2}, Lcom/android/hwcamera/OnShutterButtonListener;->onShutterButtonFocus(Z)V

    goto :goto_0
.end method

.method public onVirtualButtonUp()V
    .locals 3

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 37
    iget-object v0, p0, Lcom/android/hwcamera/VirtualButton;->mListener:Lcom/android/hwcamera/OnShutterButtonListener;

    if-nez v0, :cond_1

    .line 59
    :cond_0
    :goto_0
    return-void

    .line 40
    :cond_1
    iget-boolean v0, p0, Lcom/android/hwcamera/VirtualButton;->isLongPressed:Z

    if-ne v1, v0, :cond_3

    .line 41
    iget-boolean v0, p0, Lcom/android/hwcamera/VirtualButton;->isLongPressHandled:Z

    if-ne v1, v0, :cond_2

    .line 42
    const-string v0, "ShutterFunctionButton"

    const-string v1, "VirtualButton long press up onShutterButtonLongClick"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 43
    iget-object v0, p0, Lcom/android/hwcamera/VirtualButton;->mListener:Lcom/android/hwcamera/OnShutterButtonListener;

    invoke-interface {v0, v2}, Lcom/android/hwcamera/OnShutterButtonListener;->onShutterButtonLongClick(Z)Z

    .line 48
    :goto_1
    iget-object v0, p0, Lcom/android/hwcamera/VirtualButton;->mListener:Lcom/android/hwcamera/OnShutterButtonListener;

    invoke-interface {v0, v2}, Lcom/android/hwcamera/OnShutterButtonListener;->onShutterButtonFocus(Z)V

    .line 49
    iput-boolean v2, p0, Lcom/android/hwcamera/VirtualButton;->isLongPressed:Z

    .line 50
    iput-boolean v2, p0, Lcom/android/hwcamera/VirtualButton;->isLongPressHandled:Z

    goto :goto_0

    .line 45
    :cond_2
    const-string v0, "ShutterFunctionButton"

    const-string v1, "VirtualButton long press up onShutterButtonClick"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 46
    iget-object v0, p0, Lcom/android/hwcamera/VirtualButton;->mListener:Lcom/android/hwcamera/OnShutterButtonListener;

    invoke-interface {v0}, Lcom/android/hwcamera/OnShutterButtonListener;->onShutterButtonClick()V

    goto :goto_1

    .line 54
    :cond_3
    iget-boolean v0, p0, Lcom/android/hwcamera/VirtualButton;->isEnable:Z

    if-eqz v0, :cond_0

    .line 57
    iget-object v0, p0, Lcom/android/hwcamera/VirtualButton;->mListener:Lcom/android/hwcamera/OnShutterButtonListener;

    invoke-interface {v0}, Lcom/android/hwcamera/OnShutterButtonListener;->onShutterButtonClick()V

    .line 58
    iget-object v0, p0, Lcom/android/hwcamera/VirtualButton;->mListener:Lcom/android/hwcamera/OnShutterButtonListener;

    invoke-interface {v0, v2}, Lcom/android/hwcamera/OnShutterButtonListener;->onShutterButtonFocus(Z)V

    goto :goto_0
.end method

.method public setOnVirtualButtonListener(Lcom/android/hwcamera/OnShutterButtonListener;)V
    .locals 0
    .parameter "onVirtualButtonListener"

    .prologue
    .line 62
    iput-object p1, p0, Lcom/android/hwcamera/VirtualButton;->mListener:Lcom/android/hwcamera/OnShutterButtonListener;

    .line 63
    return-void
.end method
