.class Lcom/huawei/gallery3d/freeshare/FreeShareView$12$1;
.super Ljava/lang/Object;
.source "FreeShareView.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/huawei/gallery3d/freeshare/FreeShareView$12;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/huawei/gallery3d/freeshare/FreeShareView$12;


# direct methods
.method constructor <init>(Lcom/huawei/gallery3d/freeshare/FreeShareView$12;)V
    .locals 0
    .parameter

    .prologue
    .line 487
    iput-object p1, p0, Lcom/huawei/gallery3d/freeshare/FreeShareView$12$1;->this$1:Lcom/huawei/gallery3d/freeshare/FreeShareView$12;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 2
    .parameter "animation"

    .prologue
    .line 496
    iget-object v0, p0, Lcom/huawei/gallery3d/freeshare/FreeShareView$12$1;->this$1:Lcom/huawei/gallery3d/freeshare/FreeShareView$12;

    iget-object v0, v0, Lcom/huawei/gallery3d/freeshare/FreeShareView$12;->this$0:Lcom/huawei/gallery3d/freeshare/FreeShareView;

    #getter for: Lcom/huawei/gallery3d/freeshare/FreeShareView;->mHelpView:Landroid/view/View;
    invoke-static {v0}, Lcom/huawei/gallery3d/freeshare/FreeShareView;->access$1600(Lcom/huawei/gallery3d/freeshare/FreeShareView;)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 497
    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0
    .parameter "animation"

    .prologue
    .line 492
    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0
    .parameter "animation"

    .prologue
    .line 489
    return-void
.end method
