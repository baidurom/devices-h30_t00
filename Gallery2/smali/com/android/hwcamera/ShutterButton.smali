.class public Lcom/android/hwcamera/ShutterButton;
.super Lcom/android/hwcamera/ui/RotateImageView;
.source "ShutterButton.java"


# instance fields
.field private isLongPressHandled:Z

.field private isLongPressed:Z

.field private isMovedOutside:Z

.field private mListener:Lcom/android/hwcamera/OnShutterButtonListener;

.field private mOldPressed:Z

.field private mTouchEnabled:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v1, 0x0

    .line 46
    invoke-direct {p0, p1, p2}, Lcom/android/hwcamera/ui/RotateImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 34
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/hwcamera/ShutterButton;->mTouchEnabled:Z

    .line 41
    iput-boolean v1, p0, Lcom/android/hwcamera/ShutterButton;->isLongPressed:Z

    .line 42
    iput-boolean v1, p0, Lcom/android/hwcamera/ShutterButton;->isLongPressHandled:Z

    .line 43
    iput-boolean v1, p0, Lcom/android/hwcamera/ShutterButton;->isMovedOutside:Z

    .line 47
    new-instance v0, Lcom/android/hwcamera/ShutterButton$1;

    invoke-direct {v0, p0}, Lcom/android/hwcamera/ShutterButton$1;-><init>(Lcom/android/hwcamera/ShutterButton;)V

    invoke-virtual {p0, v0}, Lcom/android/hwcamera/ShutterButton;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 59
    invoke-virtual {p0, v1}, Lcom/android/hwcamera/ShutterButton;->enableFilter(Z)V

    .line 60
    return-void
.end method

.method static synthetic access$000(Lcom/android/hwcamera/ShutterButton;Z)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 32
    invoke-direct {p0, p1}, Lcom/android/hwcamera/ShutterButton;->callShutterButtonLongClick(Z)Z

    move-result v0

    return v0
.end method

.method static synthetic access$102(Lcom/android/hwcamera/ShutterButton;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 32
    iput-boolean p1, p0, Lcom/android/hwcamera/ShutterButton;->isLongPressHandled:Z

    return p1
.end method

.method static synthetic access$202(Lcom/android/hwcamera/ShutterButton;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 32
    iput-boolean p1, p0, Lcom/android/hwcamera/ShutterButton;->isLongPressed:Z

    return p1
.end method

.method static synthetic access$300(Lcom/android/hwcamera/ShutterButton;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 32
    invoke-direct {p0, p1}, Lcom/android/hwcamera/ShutterButton;->callShutterButtonFocus(Z)V

    return-void
.end method

.method static synthetic access$400(Lcom/android/hwcamera/ShutterButton;)Lcom/android/hwcamera/OnShutterButtonListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 32
    iget-object v0, p0, Lcom/android/hwcamera/ShutterButton;->mListener:Lcom/android/hwcamera/OnShutterButtonListener;

    return-object v0
.end method

.method private callShutterButtonFocus(Z)V
    .locals 4
    .parameter "pressed"

    .prologue
    const/4 v3, 0x0

    .line 153
    if-nez p1, :cond_3

    iget-boolean v0, p0, Lcom/android/hwcamera/ShutterButton;->isLongPressed:Z

    if-eqz v0, :cond_3

    .line 155
    iget-boolean v0, p0, Lcom/android/hwcamera/ShutterButton;->isLongPressHandled:Z

    if-eqz v0, :cond_2

    .line 156
    const-string v0, "Camera"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "it\'s burst, callShutterButtonLongClick  :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 157
    invoke-direct {p0, v3}, Lcom/android/hwcamera/ShutterButton;->callShutterButtonLongClick(Z)Z

    .line 162
    :cond_0
    :goto_0
    new-instance v0, Lcom/android/hwcamera/ShutterButton$3;

    invoke-direct {v0, p0, p1}, Lcom/android/hwcamera/ShutterButton$3;-><init>(Lcom/android/hwcamera/ShutterButton;Z)V

    invoke-virtual {p0, v0}, Lcom/android/hwcamera/ShutterButton;->post(Ljava/lang/Runnable;)Z

    .line 170
    iput-boolean v3, p0, Lcom/android/hwcamera/ShutterButton;->isLongPressed:Z

    .line 171
    iput-boolean v3, p0, Lcom/android/hwcamera/ShutterButton;->isLongPressHandled:Z

    .line 177
    :cond_1
    :goto_1
    return-void

    .line 158
    :cond_2
    iget-boolean v0, p0, Lcom/android/hwcamera/ShutterButton;->isMovedOutside:Z

    if-nez v0, :cond_0

    .line 159
    const-string v0, "Camera"

    const-string v1, "isMovedOutside false"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 160
    invoke-virtual {p0}, Lcom/android/hwcamera/ShutterButton;->performClick()Z

    goto :goto_0

    .line 173
    :cond_3
    iget-object v0, p0, Lcom/android/hwcamera/ShutterButton;->mListener:Lcom/android/hwcamera/OnShutterButtonListener;

    if-eqz v0, :cond_1

    .line 174
    iget-object v0, p0, Lcom/android/hwcamera/ShutterButton;->mListener:Lcom/android/hwcamera/OnShutterButtonListener;

    invoke-interface {v0, p1}, Lcom/android/hwcamera/OnShutterButtonListener;->onShutterButtonFocus(Z)V

    goto :goto_1
.end method

.method private callShutterButtonLongClick(Z)Z
    .locals 1
    .parameter "pressed"

    .prologue
    .line 180
    iget-object v0, p0, Lcom/android/hwcamera/ShutterButton;->mListener:Lcom/android/hwcamera/OnShutterButtonListener;

    if-eqz v0, :cond_0

    .line 181
    iget-object v0, p0, Lcom/android/hwcamera/ShutterButton;->mListener:Lcom/android/hwcamera/OnShutterButtonListener;

    invoke-interface {v0, p1}, Lcom/android/hwcamera/OnShutterButtonListener;->onShutterButtonLongClick(Z)Z

    move-result v0

    .line 183
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private cancelTouch()V
    .locals 9

    .prologue
    const-wide/16 v0, 0x0

    const/high16 v5, 0x4120

    .line 94
    const/4 v4, 0x3

    const/4 v7, 0x0

    move-wide v2, v0

    move v6, v5

    invoke-static/range {v0 .. v7}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    move-result-object v8

    .line 95
    .local v8, ev:Landroid/view/MotionEvent;
    invoke-virtual {p0, v8}, Lcom/android/hwcamera/ShutterButton;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 96
    invoke-virtual {v8}, Landroid/view/MotionEvent;->recycle()V

    .line 97
    return-void
.end method

.method private isTouchOutside(FF)Z
    .locals 2
    .parameter "x"
    .parameter "y"

    .prologue
    const/4 v1, 0x0

    .line 100
    cmpg-float v0, p1, v1

    if-ltz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/hwcamera/ShutterButton;->getWidth()I

    move-result v0

    int-to-float v0, v0

    cmpl-float v0, p1, v0

    if-gtz v0, :cond_0

    cmpg-float v0, p2, v1

    if-ltz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/hwcamera/ShutterButton;->getHeight()I

    move-result v0

    int-to-float v0, v0

    cmpl-float v0, p2, v0

    if-lez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .parameter "m"

    .prologue
    .line 69
    iget-boolean v0, p0, Lcom/android/hwcamera/ShutterButton;->mTouchEnabled:Z

    if-eqz v0, :cond_0

    .line 70
    invoke-super {p0, p1}, Lcom/android/hwcamera/ui/RotateImageView;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    .line 72
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected drawableStateChanged()V
    .locals 2

    .prologue
    .line 114
    invoke-super {p0}, Lcom/android/hwcamera/ui/RotateImageView;->drawableStateChanged()V

    .line 115
    invoke-virtual {p0}, Lcom/android/hwcamera/ShutterButton;->isPressed()Z

    move-result v0

    .line 116
    .local v0, pressed:Z
    iget-boolean v1, p0, Lcom/android/hwcamera/ShutterButton;->mOldPressed:Z

    if-eq v0, v1, :cond_0

    .line 117
    if-nez v0, :cond_1

    .line 139
    new-instance v1, Lcom/android/hwcamera/ShutterButton$2;

    invoke-direct {v1, p0, v0}, Lcom/android/hwcamera/ShutterButton$2;-><init>(Lcom/android/hwcamera/ShutterButton;Z)V

    invoke-virtual {p0, v1}, Lcom/android/hwcamera/ShutterButton;->post(Ljava/lang/Runnable;)Z

    .line 148
    :goto_0
    iput-boolean v0, p0, Lcom/android/hwcamera/ShutterButton;->mOldPressed:Z

    .line 150
    :cond_0
    return-void

    .line 146
    :cond_1
    invoke-direct {p0, v0}, Lcom/android/hwcamera/ShutterButton;->callShutterButtonFocus(Z)V

    goto :goto_0
.end method

.method public enableTouch(Z)V
    .locals 0
    .parameter "enable"

    .prologue
    .line 104
    iput-boolean p1, p0, Lcom/android/hwcamera/ShutterButton;->mTouchEnabled:Z

    .line 105
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 3
    .parameter "ev"

    .prologue
    .line 77
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 79
    .local v0, action:I
    packed-switch v0, :pswitch_data_0

    .line 89
    :goto_0
    :pswitch_0
    invoke-super {p0, p1}, Lcom/android/hwcamera/ui/RotateImageView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 90
    const/4 v1, 0x1

    return v1

    .line 81
    :pswitch_1
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/hwcamera/ShutterButton;->isMovedOutside:Z

    goto :goto_0

    .line 84
    :pswitch_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    invoke-direct {p0, v1, v2}, Lcom/android/hwcamera/ShutterButton;->isTouchOutside(FF)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/hwcamera/ShutterButton;->isMovedOutside:Z

    goto :goto_0

    .line 79
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public performClick()Z
    .locals 2

    .prologue
    .line 188
    invoke-super {p0}, Lcom/android/hwcamera/ui/RotateImageView;->performClick()Z

    move-result v0

    .line 189
    .local v0, result:Z
    iget-object v1, p0, Lcom/android/hwcamera/ShutterButton;->mListener:Lcom/android/hwcamera/OnShutterButtonListener;

    if-eqz v1, :cond_0

    .line 190
    iget-object v1, p0, Lcom/android/hwcamera/ShutterButton;->mListener:Lcom/android/hwcamera/OnShutterButtonListener;

    invoke-interface {v1}, Lcom/android/hwcamera/OnShutterButtonListener;->onShutterButtonClick()V

    .line 192
    :cond_0
    return v0
.end method

.method public setOnShutterButtonListener(Lcom/android/hwcamera/OnShutterButtonListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 63
    invoke-direct {p0}, Lcom/android/hwcamera/ShutterButton;->cancelTouch()V

    .line 64
    iput-object p1, p0, Lcom/android/hwcamera/ShutterButton;->mListener:Lcom/android/hwcamera/OnShutterButtonListener;

    .line 65
    return-void
.end method
