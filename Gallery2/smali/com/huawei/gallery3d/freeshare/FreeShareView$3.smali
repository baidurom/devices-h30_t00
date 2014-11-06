.class Lcom/huawei/gallery3d/freeshare/FreeShareView$3;
.super Ljava/lang/Object;
.source "FreeShareView.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/huawei/gallery3d/freeshare/FreeShareView;->initializeData()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private mDonwY:F

.field private mDownX:F

.field private mHoldingDown:Z

.field final synthetic this$0:Lcom/huawei/gallery3d/freeshare/FreeShareView;


# direct methods
.method constructor <init>(Lcom/huawei/gallery3d/freeshare/FreeShareView;)V
    .locals 0
    .parameter

    .prologue
    .line 240
    iput-object p1, p0, Lcom/huawei/gallery3d/freeshare/FreeShareView$3;->this$0:Lcom/huawei/gallery3d/freeshare/FreeShareView;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 7
    .parameter "v"
    .parameter "event"

    .prologue
    const/4 v6, 0x1

    .line 247
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v4

    packed-switch v4, :pswitch_data_0

    .line 273
    :cond_0
    :goto_0
    return v6

    .line 249
    :pswitch_0
    iget-boolean v4, p0, Lcom/huawei/gallery3d/freeshare/FreeShareView$3;->mHoldingDown:Z

    if-nez v4, :cond_0

    .line 250
    iput-boolean v6, p0, Lcom/huawei/gallery3d/freeshare/FreeShareView$3;->mHoldingDown:Z

    .line 251
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    iput v4, p0, Lcom/huawei/gallery3d/freeshare/FreeShareView$3;->mDonwY:F

    .line 252
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    iput v4, p0, Lcom/huawei/gallery3d/freeshare/FreeShareView$3;->mDownX:F

    goto :goto_0

    .line 255
    :pswitch_1
    iget-boolean v4, p0, Lcom/huawei/gallery3d/freeshare/FreeShareView$3;->mHoldingDown:Z

    if-eqz v4, :cond_0

    .line 256
    const/4 v4, 0x0

    iput-boolean v4, p0, Lcom/huawei/gallery3d/freeshare/FreeShareView$3;->mHoldingDown:Z

    .line 257
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    .line 258
    .local v2, upX:F
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    .line 259
    .local v3, upY:F
    iget v4, p0, Lcom/huawei/gallery3d/freeshare/FreeShareView$3;->mDownX:F

    sub-float v0, v2, v4

    .line 260
    .local v0, distanceX:F
    iget v4, p0, Lcom/huawei/gallery3d/freeshare/FreeShareView$3;->mDonwY:F

    sub-float v1, v3, v4

    .line 261
    .local v1, distanceY:F
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v4

    invoke-static {}, Lcom/huawei/gallery3d/freeshare/FreeShareView;->access$1200()I

    move-result v5

    int-to-float v5, v5

    cmpl-float v4, v4, v5

    if-gtz v4, :cond_0

    invoke-static {}, Lcom/huawei/gallery3d/freeshare/FreeShareView;->access$1200()I

    move-result v4

    int-to-float v4, v4

    cmpg-float v4, v1, v4

    if-ltz v4, :cond_0

    .line 264
    iget-object v4, p0, Lcom/huawei/gallery3d/freeshare/FreeShareView$3;->this$0:Lcom/huawei/gallery3d/freeshare/FreeShareView;

    #getter for: Lcom/huawei/gallery3d/freeshare/FreeShareView;->mIsMenuShow:Z
    invoke-static {v4}, Lcom/huawei/gallery3d/freeshare/FreeShareView;->access$700(Lcom/huawei/gallery3d/freeshare/FreeShareView;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 265
    iget-object v4, p0, Lcom/huawei/gallery3d/freeshare/FreeShareView$3;->this$0:Lcom/huawei/gallery3d/freeshare/FreeShareView;

    #getter for: Lcom/huawei/gallery3d/freeshare/FreeShareView;->mHandler:Landroid/os/Handler;
    invoke-static {v4}, Lcom/huawei/gallery3d/freeshare/FreeShareView;->access$1300(Lcom/huawei/gallery3d/freeshare/FreeShareView;)Landroid/os/Handler;

    move-result-object v4

    const/4 v5, 0x4

    invoke-virtual {v4, v5}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 267
    :cond_1
    iget-object v4, p0, Lcom/huawei/gallery3d/freeshare/FreeShareView$3;->this$0:Lcom/huawei/gallery3d/freeshare/FreeShareView;

    #getter for: Lcom/huawei/gallery3d/freeshare/FreeShareView;->mHandler:Landroid/os/Handler;
    invoke-static {v4}, Lcom/huawei/gallery3d/freeshare/FreeShareView;->access$1300(Lcom/huawei/gallery3d/freeshare/FreeShareView;)Landroid/os/Handler;

    move-result-object v4

    const/4 v5, 0x2

    invoke-virtual {v4, v5}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0

    .line 247
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
