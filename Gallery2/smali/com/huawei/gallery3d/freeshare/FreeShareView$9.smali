.class Lcom/huawei/gallery3d/freeshare/FreeShareView$9;
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
    .line 448
    iput-object p1, p0, Lcom/huawei/gallery3d/freeshare/FreeShareView$9;->this$0:Lcom/huawei/gallery3d/freeshare/FreeShareView;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "arg0"

    .prologue
    .line 451
    iget-object v0, p0, Lcom/huawei/gallery3d/freeshare/FreeShareView$9;->this$0:Lcom/huawei/gallery3d/freeshare/FreeShareView;

    #getter for: Lcom/huawei/gallery3d/freeshare/FreeShareView;->mIsMenuShow:Z
    invoke-static {v0}, Lcom/huawei/gallery3d/freeshare/FreeShareView;->access$700(Lcom/huawei/gallery3d/freeshare/FreeShareView;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 457
    :goto_0
    return-void

    .line 452
    :cond_0
    iget-object v0, p0, Lcom/huawei/gallery3d/freeshare/FreeShareView$9;->this$0:Lcom/huawei/gallery3d/freeshare/FreeShareView;

    #getter for: Lcom/huawei/gallery3d/freeshare/FreeShareView;->mIsSearch:Z
    invoke-static {v0}, Lcom/huawei/gallery3d/freeshare/FreeShareView;->access$2100(Lcom/huawei/gallery3d/freeshare/FreeShareView;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 453
    iget-object v0, p0, Lcom/huawei/gallery3d/freeshare/FreeShareView$9;->this$0:Lcom/huawei/gallery3d/freeshare/FreeShareView;

    #calls: Lcom/huawei/gallery3d/freeshare/FreeShareView;->cancelSearch()V
    invoke-static {v0}, Lcom/huawei/gallery3d/freeshare/FreeShareView;->access$200(Lcom/huawei/gallery3d/freeshare/FreeShareView;)V

    goto :goto_0

    .line 455
    :cond_1
    iget-object v0, p0, Lcom/huawei/gallery3d/freeshare/FreeShareView$9;->this$0:Lcom/huawei/gallery3d/freeshare/FreeShareView;

    #calls: Lcom/huawei/gallery3d/freeshare/FreeShareView;->startSearch()V
    invoke-static {v0}, Lcom/huawei/gallery3d/freeshare/FreeShareView;->access$100(Lcom/huawei/gallery3d/freeshare/FreeShareView;)V

    goto :goto_0
.end method
