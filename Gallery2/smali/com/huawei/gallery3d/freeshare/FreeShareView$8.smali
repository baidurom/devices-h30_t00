.class Lcom/huawei/gallery3d/freeshare/FreeShareView$8;
.super Ljava/lang/Object;
.source "FreeShareView.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/huawei/gallery3d/freeshare/FreeShareView;->initializeData()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/huawei/gallery3d/freeshare/FreeShareView;


# direct methods
.method constructor <init>(Lcom/huawei/gallery3d/freeshare/FreeShareView;)V
    .locals 0
    .parameter

    .prologue
    .line 435
    iput-object p1, p0, Lcom/huawei/gallery3d/freeshare/FreeShareView$8;->this$0:Lcom/huawei/gallery3d/freeshare/FreeShareView;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 2
    .parameter "arg0"

    .prologue
    .line 444
    iget-object v0, p0, Lcom/huawei/gallery3d/freeshare/FreeShareView$8;->this$0:Lcom/huawei/gallery3d/freeshare/FreeShareView;

    #getter for: Lcom/huawei/gallery3d/freeshare/FreeShareView;->mMainView:Landroid/view/View;
    invoke-static {v0}, Lcom/huawei/gallery3d/freeshare/FreeShareView;->access$1400(Lcom/huawei/gallery3d/freeshare/FreeShareView;)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 445
    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0
    .parameter "arg0"

    .prologue
    .line 440
    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0
    .parameter "arg0"

    .prologue
    .line 437
    return-void
.end method
