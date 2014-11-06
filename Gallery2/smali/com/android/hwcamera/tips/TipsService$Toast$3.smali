.class Lcom/android/hwcamera/tips/TipsService$Toast$3;
.super Ljava/lang/Object;
.source "TipsService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/hwcamera/tips/TipsService$Toast;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/hwcamera/tips/TipsService$Toast;


# direct methods
.method constructor <init>(Lcom/android/hwcamera/tips/TipsService$Toast;)V
    .locals 0
    .parameter

    .prologue
    .line 362
    iput-object p1, p0, Lcom/android/hwcamera/tips/TipsService$Toast$3;->this$1:Lcom/android/hwcamera/tips/TipsService$Toast;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 365
    iget-object v0, p0, Lcom/android/hwcamera/tips/TipsService$Toast$3;->this$1:Lcom/android/hwcamera/tips/TipsService$Toast;

    #getter for: Lcom/android/hwcamera/tips/TipsService$Toast;->mToast:Landroid/view/View;
    invoke-static {v0}, Lcom/android/hwcamera/tips/TipsService$Toast;->access$200(Lcom/android/hwcamera/tips/TipsService$Toast;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->withLayer()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const-wide/16 v1, 0x190

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    iget-object v1, p0, Lcom/android/hwcamera/tips/TipsService$Toast$3;->this$1:Lcom/android/hwcamera/tips/TipsService$Toast;

    #getter for: Lcom/android/hwcamera/tips/TipsService$Toast;->mEndRunnable:Ljava/lang/Runnable;
    invoke-static {v1}, Lcom/android/hwcamera/tips/TipsService$Toast;->access$700(Lcom/android/hwcamera/tips/TipsService$Toast;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->withEndAction(Ljava/lang/Runnable;)Landroid/view/ViewPropertyAnimator;

    .line 366
    return-void
.end method
