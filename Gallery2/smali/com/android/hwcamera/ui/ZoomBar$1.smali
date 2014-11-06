.class Lcom/android/hwcamera/ui/ZoomBar$1;
.super Ljava/lang/Object;
.source "ZoomBar.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/hwcamera/ui/ZoomBar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/hwcamera/ui/ZoomBar;


# direct methods
.method constructor <init>(Lcom/android/hwcamera/ui/ZoomBar;)V
    .locals 0
    .parameter

    .prologue
    .line 46
    iput-object p1, p0, Lcom/android/hwcamera/ui/ZoomBar$1;->this$0:Lcom/android/hwcamera/ui/ZoomBar;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 2
    .parameter "animation"

    .prologue
    .line 57
    iget-object v0, p0, Lcom/android/hwcamera/ui/ZoomBar$1;->this$0:Lcom/android/hwcamera/ui/ZoomBar;

    #getter for: Lcom/android/hwcamera/ui/ZoomBar;->mZoomControlLayout:Landroid/view/ViewGroup;
    invoke-static {v0}, Lcom/android/hwcamera/ui/ZoomBar;->access$100(Lcom/android/hwcamera/ui/ZoomBar;)Landroid/view/ViewGroup;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 58
    iget-object v0, p0, Lcom/android/hwcamera/ui/ZoomBar$1;->this$0:Lcom/android/hwcamera/ui/ZoomBar;

    #getter for: Lcom/android/hwcamera/ui/ZoomBar;->mZoomControlLayout:Landroid/view/ViewGroup;
    invoke-static {v0}, Lcom/android/hwcamera/ui/ZoomBar;->access$100(Lcom/android/hwcamera/ui/ZoomBar;)Landroid/view/ViewGroup;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 60
    :cond_0
    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0
    .parameter "animation"

    .prologue
    .line 53
    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0
    .parameter "animation"

    .prologue
    .line 49
    return-void
.end method
