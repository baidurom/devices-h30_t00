.class Lcom/huawei/gallery3d/freeshare/FreeShareView$11;
.super Ljava/lang/Object;
.source "FreeShareView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


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
    .line 468
    iput-object p1, p0, Lcom/huawei/gallery3d/freeshare/FreeShareView$11;->this$0:Lcom/huawei/gallery3d/freeshare/FreeShareView;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "v"

    .prologue
    .line 471
    iget-object v0, p0, Lcom/huawei/gallery3d/freeshare/FreeShareView$11;->this$0:Lcom/huawei/gallery3d/freeshare/FreeShareView;

    const/4 v1, 0x0

    #setter for: Lcom/huawei/gallery3d/freeshare/FreeShareView;->mIsHelpShow:Z
    invoke-static {v0, v1}, Lcom/huawei/gallery3d/freeshare/FreeShareView;->access$2302(Lcom/huawei/gallery3d/freeshare/FreeShareView;Z)Z

    .line 472
    iget-object v0, p0, Lcom/huawei/gallery3d/freeshare/FreeShareView$11;->this$0:Lcom/huawei/gallery3d/freeshare/FreeShareView;

    #getter for: Lcom/huawei/gallery3d/freeshare/FreeShareView;->mMainView:Landroid/view/View;
    invoke-static {v0}, Lcom/huawei/gallery3d/freeshare/FreeShareView;->access$1400(Lcom/huawei/gallery3d/freeshare/FreeShareView;)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/huawei/gallery3d/freeshare/FreeShareView$11;->this$0:Lcom/huawei/gallery3d/freeshare/FreeShareView;

    #getter for: Lcom/huawei/gallery3d/freeshare/FreeShareView;->mHideAnimation:Landroid/view/animation/Animation;
    invoke-static {v1}, Lcom/huawei/gallery3d/freeshare/FreeShareView;->access$1000(Lcom/huawei/gallery3d/freeshare/FreeShareView;)Landroid/view/animation/Animation;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 473
    return-void
.end method
