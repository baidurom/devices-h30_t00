.class Lcom/android/hwcamera/ui/indicator/AutoFocusIndicator$1;
.super Ljava/lang/Object;
.source "AutoFocusIndicator.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/hwcamera/ui/indicator/AutoFocusIndicator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/hwcamera/ui/indicator/AutoFocusIndicator;


# direct methods
.method constructor <init>(Lcom/android/hwcamera/ui/indicator/AutoFocusIndicator;)V
    .locals 0
    .parameter

    .prologue
    .line 54
    iput-object p1, p0, Lcom/android/hwcamera/ui/indicator/AutoFocusIndicator$1;->this$0:Lcom/android/hwcamera/ui/indicator/AutoFocusIndicator;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    const/high16 v1, 0x3f80

    .line 57
    iget-object v0, p0, Lcom/android/hwcamera/ui/indicator/AutoFocusIndicator$1;->this$0:Lcom/android/hwcamera/ui/indicator/AutoFocusIndicator;

    invoke-virtual {v0}, Lcom/android/hwcamera/ui/indicator/AutoFocusIndicator;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->withLayer()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->scaleX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->scaleY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const-wide/16 v1, 0x96

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    new-instance v1, Landroid/view/animation/DecelerateInterpolator;

    const/high16 v2, 0x4000

    invoke-direct {v1, v2}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    new-instance v1, Lcom/android/hwcamera/ui/indicator/AutoFocusIndicator$1$1;

    invoke-direct {v1, p0}, Lcom/android/hwcamera/ui/indicator/AutoFocusIndicator$1$1;-><init>(Lcom/android/hwcamera/ui/indicator/AutoFocusIndicator$1;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->withEndAction(Ljava/lang/Runnable;)Landroid/view/ViewPropertyAnimator;

    .line 63
    return-void
.end method
