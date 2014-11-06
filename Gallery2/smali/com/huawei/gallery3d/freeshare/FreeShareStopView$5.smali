.class Lcom/huawei/gallery3d/freeshare/FreeShareStopView$5;
.super Ljava/lang/Object;
.source "FreeShareStopView.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/huawei/gallery3d/freeshare/FreeShareStopView;-><init>(Lcom/android/gallery3d/app/AbstractGalleryActivity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/huawei/gallery3d/freeshare/FreeShareStopView;


# direct methods
.method constructor <init>(Lcom/huawei/gallery3d/freeshare/FreeShareStopView;)V
    .locals 0
    .parameter

    .prologue
    .line 101
    iput-object p1, p0, Lcom/huawei/gallery3d/freeshare/FreeShareStopView$5;->this$0:Lcom/huawei/gallery3d/freeshare/FreeShareStopView;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 2
    .parameter "arg0"

    .prologue
    .line 110
    iget-object v0, p0, Lcom/huawei/gallery3d/freeshare/FreeShareStopView$5;->this$0:Lcom/huawei/gallery3d/freeshare/FreeShareStopView;

    #getter for: Lcom/huawei/gallery3d/freeshare/FreeShareStopView;->mMainView:Landroid/view/View;
    invoke-static {v0}, Lcom/huawei/gallery3d/freeshare/FreeShareStopView;->access$400(Lcom/huawei/gallery3d/freeshare/FreeShareStopView;)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 111
    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0
    .parameter "arg0"

    .prologue
    .line 106
    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0
    .parameter "arg0"

    .prologue
    .line 103
    return-void
.end method
