.class Lcom/android/hwcamera/ui/AlphaState$2;
.super Ljava/lang/Object;
.source "AlphaState.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/hwcamera/ui/AlphaState;->onStateChanged()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/hwcamera/ui/AlphaState;


# direct methods
.method constructor <init>(Lcom/android/hwcamera/ui/AlphaState;)V
    .locals 0
    .parameter

    .prologue
    .line 68
    iput-object p1, p0, Lcom/android/hwcamera/ui/AlphaState$2;->this$0:Lcom/android/hwcamera/ui/AlphaState;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 71
    iget-object v0, p0, Lcom/android/hwcamera/ui/AlphaState$2;->this$0:Lcom/android/hwcamera/ui/AlphaState;

    #getter for: Lcom/android/hwcamera/ui/AlphaState;->mView:Landroid/view/View;
    invoke-static {v0}, Lcom/android/hwcamera/ui/AlphaState;->access$000(Lcom/android/hwcamera/ui/AlphaState;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->withLayer()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const v1, 0x3ecccccd

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const-wide/16 v1, 0xc8

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    .line 72
    return-void
.end method
