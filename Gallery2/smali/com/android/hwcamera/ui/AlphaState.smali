.class public Lcom/android/hwcamera/ui/AlphaState;
.super Ljava/lang/Object;
.source "AlphaState.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/hwcamera/ui/AlphaState$HalfStateChangedTask;
    }
.end annotation


# static fields
.field private static final ANIMATION_DUAL:I = 0xc8

.field public static final FULLALPHA:I = 0x1

.field public static final HALFALPHA:I = 0x2

.field private static final HALF_ALPHA:F = 0.4f

.field public static final NORMAL:I = 0x0

.field private static final STATE_CHANGED_DUAL:I = 0x2710


# instance fields
.field private mTimer:Ljava/util/Timer;

.field private mView:Landroid/view/View;

.field private state:I


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 1
    .parameter "mView"

    .prologue
    const/4 v0, 0x1

    .line 37
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 26
    iput v0, p0, Lcom/android/hwcamera/ui/AlphaState;->state:I

    .line 38
    iput-object p1, p0, Lcom/android/hwcamera/ui/AlphaState;->mView:Landroid/view/View;

    .line 39
    invoke-virtual {p0, v0}, Lcom/android/hwcamera/ui/AlphaState;->setState(I)V

    .line 40
    return-void
.end method

.method static synthetic access$000(Lcom/android/hwcamera/ui/AlphaState;)Landroid/view/View;
    .locals 1
    .parameter "x0"

    .prologue
    .line 10
    iget-object v0, p0, Lcom/android/hwcamera/ui/AlphaState;->mView:Landroid/view/View;

    return-object v0
.end method

.method private cancelTimer()V
    .locals 1

    .prologue
    .line 88
    iget-object v0, p0, Lcom/android/hwcamera/ui/AlphaState;->mTimer:Ljava/util/Timer;

    if-eqz v0, :cond_0

    .line 89
    iget-object v0, p0, Lcom/android/hwcamera/ui/AlphaState;->mTimer:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 90
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/hwcamera/ui/AlphaState;->mTimer:Ljava/util/Timer;

    .line 91
    return-void
.end method

.method private onStateChanged()V
    .locals 3

    .prologue
    .line 54
    iget v0, p0, Lcom/android/hwcamera/ui/AlphaState;->state:I

    packed-switch v0, :pswitch_data_0

    .line 76
    const/4 v0, 0x0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "AlphaState state error:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/hwcamera/ui/AlphaState;->state:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/hwcamera/Util;->Assert(ZLjava/lang/String;)V

    .line 79
    :goto_0
    :pswitch_0
    return-void

    .line 56
    :pswitch_1
    invoke-direct {p0}, Lcom/android/hwcamera/ui/AlphaState;->cancelTimer()V

    .line 57
    iget-object v0, p0, Lcom/android/hwcamera/ui/AlphaState;->mView:Landroid/view/View;

    new-instance v1, Lcom/android/hwcamera/ui/AlphaState$1;

    invoke-direct {v1, p0}, Lcom/android/hwcamera/ui/AlphaState$1;-><init>(Lcom/android/hwcamera/ui/AlphaState;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 68
    :pswitch_2
    iget-object v0, p0, Lcom/android/hwcamera/ui/AlphaState;->mView:Landroid/view/View;

    new-instance v1, Lcom/android/hwcamera/ui/AlphaState$2;

    invoke-direct {v1, p0}, Lcom/android/hwcamera/ui/AlphaState$2;-><init>(Lcom/android/hwcamera/ui/AlphaState;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 54
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method private startTimer()V
    .locals 4

    .prologue
    .line 82
    invoke-direct {p0}, Lcom/android/hwcamera/ui/AlphaState;->cancelTimer()V

    .line 83
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    iput-object v0, p0, Lcom/android/hwcamera/ui/AlphaState;->mTimer:Ljava/util/Timer;

    .line 84
    iget-object v0, p0, Lcom/android/hwcamera/ui/AlphaState;->mTimer:Ljava/util/Timer;

    new-instance v1, Lcom/android/hwcamera/ui/AlphaState$HalfStateChangedTask;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/android/hwcamera/ui/AlphaState$HalfStateChangedTask;-><init>(Lcom/android/hwcamera/ui/AlphaState;Lcom/android/hwcamera/ui/AlphaState$1;)V

    const-wide/16 v2, 0x2710

    invoke-virtual {v0, v1, v2, v3}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    .line 85
    return-void
.end method


# virtual methods
.method public cancel()V
    .locals 0

    .prologue
    .line 94
    invoke-direct {p0}, Lcom/android/hwcamera/ui/AlphaState;->cancelTimer()V

    .line 95
    return-void
.end method

.method public setState(I)V
    .locals 0
    .parameter "state"

    .prologue
    .line 49
    iput p1, p0, Lcom/android/hwcamera/ui/AlphaState;->state:I

    .line 50
    invoke-direct {p0}, Lcom/android/hwcamera/ui/AlphaState;->onStateChanged()V

    .line 51
    return-void
.end method

.method public setView(Landroid/view/View;)V
    .locals 1
    .parameter "mView"

    .prologue
    .line 43
    iput-object p1, p0, Lcom/android/hwcamera/ui/AlphaState;->mView:Landroid/view/View;

    .line 44
    invoke-direct {p0}, Lcom/android/hwcamera/ui/AlphaState;->cancelTimer()V

    .line 45
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/hwcamera/ui/AlphaState;->setState(I)V

    .line 46
    return-void
.end method
