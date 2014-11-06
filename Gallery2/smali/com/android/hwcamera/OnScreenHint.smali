.class public Lcom/android/hwcamera/OnScreenHint;
.super Ljava/lang/Object;
.source "OnScreenHint.java"


# static fields
.field static final TAG:Ljava/lang/String; = "OnScreenHint"


# instance fields
.field private mBottomPadding:I

.field private final mHandler:Landroid/os/Handler;

.field private final mHide:Ljava/lang/Runnable;

.field private mLeftPadding:I

.field mNextView:Landroid/view/View;

.field private final mParams:Landroid/view/WindowManager$LayoutParams;

.field private mRightPadding:I

.field private final mShow:Ljava/lang/Runnable;

.field private mTopPadding:I

.field mView:Landroid/view/View;

.field private final mWM:Landroid/view/WindowManager;


# direct methods
.method private constructor <init>(Landroid/content/Context;Ljava/lang/CharSequence;)V
    .locals 3
    .parameter "context"
    .parameter "text"

    .prologue
    const/4 v2, -0x1

    const/4 v1, 0x0

    .line 63
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 46
    new-instance v0, Landroid/view/WindowManager$LayoutParams;

    invoke-direct {v0}, Landroid/view/WindowManager$LayoutParams;-><init>()V

    iput-object v0, p0, Lcom/android/hwcamera/OnScreenHint;->mParams:Landroid/view/WindowManager$LayoutParams;

    .line 49
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/hwcamera/OnScreenHint;->mHandler:Landroid/os/Handler;

    .line 51
    iput v1, p0, Lcom/android/hwcamera/OnScreenHint;->mLeftPadding:I

    .line 52
    iput v1, p0, Lcom/android/hwcamera/OnScreenHint;->mRightPadding:I

    .line 53
    iput v1, p0, Lcom/android/hwcamera/OnScreenHint;->mTopPadding:I

    .line 54
    iput v1, p0, Lcom/android/hwcamera/OnScreenHint;->mBottomPadding:I

    .line 178
    new-instance v0, Lcom/android/hwcamera/OnScreenHint$1;

    invoke-direct {v0, p0}, Lcom/android/hwcamera/OnScreenHint$1;-><init>(Lcom/android/hwcamera/OnScreenHint;)V

    iput-object v0, p0, Lcom/android/hwcamera/OnScreenHint;->mShow:Ljava/lang/Runnable;

    .line 185
    new-instance v0, Lcom/android/hwcamera/OnScreenHint$2;

    invoke-direct {v0, p0}, Lcom/android/hwcamera/OnScreenHint$2;-><init>(Lcom/android/hwcamera/OnScreenHint;)V

    iput-object v0, p0, Lcom/android/hwcamera/OnScreenHint;->mHide:Ljava/lang/Runnable;

    .line 64
    const-string v0, "window"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    iput-object v0, p0, Lcom/android/hwcamera/OnScreenHint;->mWM:Landroid/view/WindowManager;

    .line 65
    iget-object v0, p0, Lcom/android/hwcamera/OnScreenHint;->mParams:Landroid/view/WindowManager$LayoutParams;

    iput v2, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 66
    iget-object v0, p0, Lcom/android/hwcamera/OnScreenHint;->mParams:Landroid/view/WindowManager$LayoutParams;

    iput v2, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 67
    iget-object v0, p0, Lcom/android/hwcamera/OnScreenHint;->mParams:Landroid/view/WindowManager$LayoutParams;

    const/16 v1, 0x18

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 69
    iget-object v0, p0, Lcom/android/hwcamera/OnScreenHint;->mParams:Landroid/view/WindowManager$LayoutParams;

    const/4 v1, -0x3

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->format:I

    .line 70
    iget-object v0, p0, Lcom/android/hwcamera/OnScreenHint;->mParams:Landroid/view/WindowManager$LayoutParams;

    const v1, 0x7f0e0014

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    .line 71
    iget-object v0, p0, Lcom/android/hwcamera/OnScreenHint;->mParams:Landroid/view/WindowManager$LayoutParams;

    const/16 v1, 0x3e8

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    .line 72
    iget-object v0, p0, Lcom/android/hwcamera/OnScreenHint;->mParams:Landroid/view/WindowManager$LayoutParams;

    const-string v1, "OnScreenHint"

    invoke-virtual {v0, v1}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    .line 73
    return-void
.end method

.method static synthetic access$000(Lcom/android/hwcamera/OnScreenHint;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 41
    invoke-direct {p0}, Lcom/android/hwcamera/OnScreenHint;->handleShow()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/hwcamera/OnScreenHint;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 41
    invoke-direct {p0}, Lcom/android/hwcamera/OnScreenHint;->handleHide()V

    return-void
.end method

.method private handleHide()V
    .locals 2

    .prologue
    .line 167
    iget-object v0, p0, Lcom/android/hwcamera/OnScreenHint;->mView:Landroid/view/View;

    if-eqz v0, :cond_1

    .line 171
    iget-object v0, p0, Lcom/android/hwcamera/OnScreenHint;->mView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 172
    iget-object v0, p0, Lcom/android/hwcamera/OnScreenHint;->mWM:Landroid/view/WindowManager;

    iget-object v1, p0, Lcom/android/hwcamera/OnScreenHint;->mView:Landroid/view/View;

    invoke-interface {v0, v1}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V

    .line 174
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/hwcamera/OnScreenHint;->mView:Landroid/view/View;

    .line 176
    :cond_1
    return-void
.end method

.method private handleShow()V
    .locals 5

    .prologue
    .line 153
    iget-object v0, p0, Lcom/android/hwcamera/OnScreenHint;->mView:Landroid/view/View;

    iget-object v1, p0, Lcom/android/hwcamera/OnScreenHint;->mNextView:Landroid/view/View;

    if-eq v0, v1, :cond_1

    .line 155
    invoke-direct {p0}, Lcom/android/hwcamera/OnScreenHint;->handleHide()V

    .line 156
    iget-object v0, p0, Lcom/android/hwcamera/OnScreenHint;->mNextView:Landroid/view/View;

    iput-object v0, p0, Lcom/android/hwcamera/OnScreenHint;->mView:Landroid/view/View;

    .line 158
    iget-object v0, p0, Lcom/android/hwcamera/OnScreenHint;->mView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 159
    iget-object v0, p0, Lcom/android/hwcamera/OnScreenHint;->mWM:Landroid/view/WindowManager;

    iget-object v1, p0, Lcom/android/hwcamera/OnScreenHint;->mView:Landroid/view/View;

    invoke-interface {v0, v1}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V

    .line 161
    :cond_0
    iget-object v0, p0, Lcom/android/hwcamera/OnScreenHint;->mWM:Landroid/view/WindowManager;

    iget-object v1, p0, Lcom/android/hwcamera/OnScreenHint;->mView:Landroid/view/View;

    iget-object v2, p0, Lcom/android/hwcamera/OnScreenHint;->mParams:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v0, v1, v2}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 162
    iget-object v0, p0, Lcom/android/hwcamera/OnScreenHint;->mView:Landroid/view/View;

    iget v1, p0, Lcom/android/hwcamera/OnScreenHint;->mLeftPadding:I

    iget v2, p0, Lcom/android/hwcamera/OnScreenHint;->mTopPadding:I

    iget v3, p0, Lcom/android/hwcamera/OnScreenHint;->mRightPadding:I

    iget v4, p0, Lcom/android/hwcamera/OnScreenHint;->mBottomPadding:I

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/view/View;->setPadding(IIII)V

    .line 164
    :cond_1
    return-void
.end method

.method public static makeText(Landroid/content/Context;Ljava/lang/CharSequence;)Lcom/android/hwcamera/OnScreenHint;
    .locals 6
    .parameter "context"
    .parameter "text"

    .prologue
    .line 123
    new-instance v1, Lcom/android/hwcamera/OnScreenHint;

    invoke-direct {v1, p0, p1}, Lcom/android/hwcamera/OnScreenHint;-><init>(Landroid/content/Context;Ljava/lang/CharSequence;)V

    .line 124
    .local v1, result:Lcom/android/hwcamera/OnScreenHint;
    const-string v4, "layout_inflater"

    invoke-virtual {p0, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 127
    .local v0, inflate:Landroid/view/LayoutInflater;
    const v4, 0x7f040040

    const/4 v5, 0x0

    invoke-virtual {v0, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    .line 128
    .local v3, v:Landroid/view/View;
    const v4, 0x7f100063

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 129
    .local v2, tv:Landroid/widget/TextView;
    invoke-virtual {v2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 130
    iput-object v3, v1, Lcom/android/hwcamera/OnScreenHint;->mNextView:Landroid/view/View;

    .line 131
    return-object v1
.end method


# virtual methods
.method public cancel()V
    .locals 2

    .prologue
    .line 110
    iget-object v0, p0, Lcom/android/hwcamera/OnScreenHint;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/hwcamera/OnScreenHint;->mHide:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 111
    return-void
.end method

.method public hide()V
    .locals 2

    .prologue
    .line 95
    iget-object v0, p0, Lcom/android/hwcamera/OnScreenHint;->mView:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 96
    iget-object v0, p0, Lcom/android/hwcamera/OnScreenHint;->mView:Landroid/view/View;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 98
    :cond_0
    return-void
.end method

.method public reshow()V
    .locals 2

    .prologue
    .line 101
    iget-object v0, p0, Lcom/android/hwcamera/OnScreenHint;->mView:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 102
    iget-object v0, p0, Lcom/android/hwcamera/OnScreenHint;->mView:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 104
    :cond_0
    return-void
.end method

.method public setHintPadding(IIII)V
    .locals 1
    .parameter "leftPadding"
    .parameter "topPadding"
    .parameter "rightPadding"
    .parameter "bottomPadding"

    .prologue
    .line 76
    iput p1, p0, Lcom/android/hwcamera/OnScreenHint;->mLeftPadding:I

    .line 77
    iput p3, p0, Lcom/android/hwcamera/OnScreenHint;->mRightPadding:I

    .line 78
    iput p2, p0, Lcom/android/hwcamera/OnScreenHint;->mTopPadding:I

    .line 79
    iput p4, p0, Lcom/android/hwcamera/OnScreenHint;->mBottomPadding:I

    .line 80
    iget-object v0, p0, Lcom/android/hwcamera/OnScreenHint;->mView:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 81
    iget-object v0, p0, Lcom/android/hwcamera/OnScreenHint;->mView:Landroid/view/View;

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/view/View;->setPadding(IIII)V

    .line 83
    :cond_0
    return-void
.end method

.method public setText(Ljava/lang/CharSequence;)V
    .locals 3
    .parameter "s"

    .prologue
    .line 140
    iget-object v1, p0, Lcom/android/hwcamera/OnScreenHint;->mNextView:Landroid/view/View;

    if-nez v1, :cond_0

    .line 141
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "This OnScreenHint was not created with OnScreenHint.makeText()"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 144
    :cond_0
    iget-object v1, p0, Lcom/android/hwcamera/OnScreenHint;->mNextView:Landroid/view/View;

    const v2, 0x7f100063

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 145
    .local v0, tv:Landroid/widget/TextView;
    if-nez v0, :cond_1

    .line 146
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "This OnScreenHint was not created with OnScreenHint.makeText()"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 149
    :cond_1
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 150
    return-void
.end method

.method public show()V
    .locals 2

    .prologue
    .line 88
    iget-object v0, p0, Lcom/android/hwcamera/OnScreenHint;->mNextView:Landroid/view/View;

    if-nez v0, :cond_0

    .line 89
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "View is not initialized"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 91
    :cond_0
    iget-object v0, p0, Lcom/android/hwcamera/OnScreenHint;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/hwcamera/OnScreenHint;->mShow:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 92
    return-void
.end method
