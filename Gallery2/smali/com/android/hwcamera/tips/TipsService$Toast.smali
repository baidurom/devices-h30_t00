.class Lcom/android/hwcamera/tips/TipsService$Toast;
.super Ljava/lang/Object;
.source "TipsService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/hwcamera/tips/TipsService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Toast"
.end annotation


# instance fields
.field private final mEndRunnable:Ljava/lang/Runnable;

.field private final mRunnable:Ljava/lang/Runnable;

.field private final mStartRunnable:Ljava/lang/Runnable;

.field private mToast:Landroid/view/View;

.field final synthetic this$0:Lcom/android/hwcamera/tips/TipsService;


# direct methods
.method public constructor <init>(Lcom/android/hwcamera/tips/TipsService;Landroid/view/View;)V
    .locals 1
    .parameter
    .parameter "mToast"

    .prologue
    .line 337
    iput-object p1, p0, Lcom/android/hwcamera/tips/TipsService$Toast;->this$0:Lcom/android/hwcamera/tips/TipsService;

    .line 338
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 342
    new-instance v0, Lcom/android/hwcamera/tips/TipsService$Toast$1;

    invoke-direct {v0, p0}, Lcom/android/hwcamera/tips/TipsService$Toast$1;-><init>(Lcom/android/hwcamera/tips/TipsService$Toast;)V

    iput-object v0, p0, Lcom/android/hwcamera/tips/TipsService$Toast;->mEndRunnable:Ljava/lang/Runnable;

    .line 355
    new-instance v0, Lcom/android/hwcamera/tips/TipsService$Toast$2;

    invoke-direct {v0, p0}, Lcom/android/hwcamera/tips/TipsService$Toast$2;-><init>(Lcom/android/hwcamera/tips/TipsService$Toast;)V

    iput-object v0, p0, Lcom/android/hwcamera/tips/TipsService$Toast;->mStartRunnable:Ljava/lang/Runnable;

    .line 362
    new-instance v0, Lcom/android/hwcamera/tips/TipsService$Toast$3;

    invoke-direct {v0, p0}, Lcom/android/hwcamera/tips/TipsService$Toast$3;-><init>(Lcom/android/hwcamera/tips/TipsService$Toast;)V

    iput-object v0, p0, Lcom/android/hwcamera/tips/TipsService$Toast;->mRunnable:Ljava/lang/Runnable;

    .line 339
    iput-object p2, p0, Lcom/android/hwcamera/tips/TipsService$Toast;->mToast:Landroid/view/View;

    .line 340
    return-void
.end method

.method static synthetic access$200(Lcom/android/hwcamera/tips/TipsService$Toast;)Landroid/view/View;
    .locals 1
    .parameter "x0"

    .prologue
    .line 335
    iget-object v0, p0, Lcom/android/hwcamera/tips/TipsService$Toast;->mToast:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$202(Lcom/android/hwcamera/tips/TipsService$Toast;Landroid/view/View;)Landroid/view/View;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 335
    iput-object p1, p0, Lcom/android/hwcamera/tips/TipsService$Toast;->mToast:Landroid/view/View;

    return-object p1
.end method

.method static synthetic access$700(Lcom/android/hwcamera/tips/TipsService$Toast;)Ljava/lang/Runnable;
    .locals 1
    .parameter "x0"

    .prologue
    .line 335
    iget-object v0, p0, Lcom/android/hwcamera/tips/TipsService$Toast;->mEndRunnable:Ljava/lang/Runnable;

    return-object v0
.end method


# virtual methods
.method public setVisibility(Z)V
    .locals 2
    .parameter "visible"

    .prologue
    .line 375
    iget-object v0, p0, Lcom/android/hwcamera/tips/TipsService$Toast;->mToast:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 376
    iget-object v1, p0, Lcom/android/hwcamera/tips/TipsService$Toast;->mToast:Landroid/view/View;

    if-eqz p1, :cond_1

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 378
    :cond_0
    return-void

    .line 376
    :cond_1
    const/16 v0, 0x8

    goto :goto_0
.end method

.method public show()V
    .locals 4

    .prologue
    .line 370
    iget-object v0, p0, Lcom/android/hwcamera/tips/TipsService$Toast;->mToast:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->withLayer()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alphaBy(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/high16 v1, 0x3f80

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const-wide/16 v1, 0x190

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    iget-object v1, p0, Lcom/android/hwcamera/tips/TipsService$Toast;->mStartRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->withStartAction(Ljava/lang/Runnable;)Landroid/view/ViewPropertyAnimator;

    .line 371
    iget-object v0, p0, Lcom/android/hwcamera/tips/TipsService$Toast;->this$0:Lcom/android/hwcamera/tips/TipsService;

    #getter for: Lcom/android/hwcamera/tips/TipsService;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/hwcamera/tips/TipsService;->access$800(Lcom/android/hwcamera/tips/TipsService;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/android/hwcamera/tips/TipsService$Toast;->mRunnable:Ljava/lang/Runnable;

    const-wide/16 v2, 0x9c4

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 372
    return-void
.end method
