.class Lcom/android/gallery3d/ui/PhotoView$FullPicture;
.super Ljava/lang/Object;
.source "PhotoView.java"

# interfaces
.implements Lcom/android/gallery3d/ui/PhotoView$Picture;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/gallery3d/ui/PhotoView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "FullPicture"
.end annotation


# instance fields
.field private mIsCamera:Z

.field private mIsDeletable:Z

.field private mIsMav:Z

.field private mIsPanorama:Z

.field private mIsStaticCamera:Z

.field private mIsVideo:Z

.field private mLoadingState:I

.field private mRotation:I

.field private mSize:Lcom/android/gallery3d/ui/PhotoView$Size;

.field final synthetic this$0:Lcom/android/gallery3d/ui/PhotoView;


# direct methods
.method constructor <init>(Lcom/android/gallery3d/ui/PhotoView;)V
    .locals 1
    .parameter

    .prologue
    .line 650
    iput-object p1, p0, Lcom/android/gallery3d/ui/PhotoView$FullPicture;->this$0:Lcom/android/gallery3d/ui/PhotoView;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 657
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/gallery3d/ui/PhotoView$FullPicture;->mLoadingState:I

    .line 658
    new-instance v0, Lcom/android/gallery3d/ui/PhotoView$Size;

    invoke-direct {v0}, Lcom/android/gallery3d/ui/PhotoView$Size;-><init>()V

    iput-object v0, p0, Lcom/android/gallery3d/ui/PhotoView$FullPicture;->mSize:Lcom/android/gallery3d/ui/PhotoView$Size;

    return-void
.end method

.method private drawTileView(Lcom/android/gallery3d/ui/GLCanvas;Landroid/graphics/Rect;)V
    .locals 32
    .parameter "canvas"
    .parameter "r"

    .prologue
    .line 757
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/gallery3d/ui/PhotoView$FullPicture;->this$0:Lcom/android/gallery3d/ui/PhotoView;

    #getter for: Lcom/android/gallery3d/ui/PhotoView;->mPositionController:Lcom/android/gallery3d/ui/PositionController;
    invoke-static {v4}, Lcom/android/gallery3d/ui/PhotoView;->access$600(Lcom/android/gallery3d/ui/PhotoView;)Lcom/android/gallery3d/ui/PositionController;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/gallery3d/ui/PositionController;->getImageScale()F

    move-result v9

    .line 758
    .local v9, imageScale:F
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/gallery3d/ui/PhotoView$FullPicture;->this$0:Lcom/android/gallery3d/ui/PhotoView;

    invoke-virtual {v4}, Lcom/android/gallery3d/ui/PhotoView;->getWidth()I

    move-result v7

    .line 759
    .local v7, viewW:I
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/gallery3d/ui/PhotoView$FullPicture;->this$0:Lcom/android/gallery3d/ui/PhotoView;

    invoke-virtual {v4}, Lcom/android/gallery3d/ui/PhotoView;->getHeight()I

    move-result v8

    .line 760
    .local v8, viewH:I
    invoke-virtual/range {p2 .. p2}, Landroid/graphics/Rect;->exactCenterX()F

    move-result v5

    .line 761
    .local v5, cx:F
    invoke-virtual/range {p2 .. p2}, Landroid/graphics/Rect;->exactCenterY()F

    move-result v6

    .line 762
    .local v6, cy:F
    const/high16 v18, 0x3f80

    .line 764
    .local v18, scale:F
    const/4 v4, 0x3

    move-object/from16 v0, p1

    invoke-interface {v0, v4}, Lcom/android/gallery3d/ui/GLCanvas;->save(I)V

    .line 765
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/gallery3d/ui/PhotoView$FullPicture;->this$0:Lcom/android/gallery3d/ui/PhotoView;

    #getter for: Lcom/android/gallery3d/ui/PhotoView;->mPositionController:Lcom/android/gallery3d/ui/PositionController;
    invoke-static {v4}, Lcom/android/gallery3d/ui/PhotoView;->access$600(Lcom/android/gallery3d/ui/PhotoView;)Lcom/android/gallery3d/ui/PositionController;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/gallery3d/ui/PositionController;->getFilmRatio()F

    move-result v12

    .line 766
    .local v12, filmRatio:F
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/android/gallery3d/ui/PhotoView$FullPicture;->mIsCamera:Z

    if-nez v4, :cond_5

    const/high16 v4, 0x3f80

    cmpl-float v4, v12, v4

    if-eqz v4, :cond_5

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/gallery3d/ui/PhotoView$FullPicture;->this$0:Lcom/android/gallery3d/ui/PhotoView;

    #getter for: Lcom/android/gallery3d/ui/PhotoView;->mPictures:Lcom/android/gallery3d/util/RangeArray;
    invoke-static {v4}, Lcom/android/gallery3d/ui/PhotoView;->access$2300(Lcom/android/gallery3d/ui/PhotoView;)Lcom/android/gallery3d/util/RangeArray;

    move-result-object v4

    const/16 v24, -0x1

    move/from16 v0, v24

    invoke-virtual {v4, v0}, Lcom/android/gallery3d/util/RangeArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/gallery3d/ui/PhotoView$Picture;

    invoke-interface {v4}, Lcom/android/gallery3d/ui/PhotoView$Picture;->isCamera()Z

    move-result v4

    if-nez v4, :cond_5

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/gallery3d/ui/PhotoView$FullPicture;->this$0:Lcom/android/gallery3d/ui/PhotoView;

    #getter for: Lcom/android/gallery3d/ui/PhotoView;->mPositionController:Lcom/android/gallery3d/ui/PositionController;
    invoke-static {v4}, Lcom/android/gallery3d/ui/PhotoView;->access$600(Lcom/android/gallery3d/ui/PhotoView;)Lcom/android/gallery3d/ui/PositionController;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/gallery3d/ui/PositionController;->inOpeningAnimation()Z

    move-result v4

    if-nez v4, :cond_5

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/gallery3d/ui/PhotoView$FullPicture;->this$0:Lcom/android/gallery3d/ui/PhotoView;

    #getter for: Lcom/android/gallery3d/ui/PhotoView;->mPositionController:Lcom/android/gallery3d/ui/PositionController;
    invoke-static {v4}, Lcom/android/gallery3d/ui/PhotoView;->access$600(Lcom/android/gallery3d/ui/PhotoView;)Lcom/android/gallery3d/ui/PositionController;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/gallery3d/ui/PositionController;->inDeleteSnapBackAnimation()Z

    move-result v4

    if-nez v4, :cond_5

    const/16 v22, 0x1

    .line 772
    .local v22, wantsCardEffect:Z
    :goto_0
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/android/gallery3d/ui/PhotoView$FullPicture;->mIsDeletable:Z

    if-eqz v4, :cond_6

    const/high16 v4, 0x3f80

    cmpl-float v4, v12, v4

    if-nez v4, :cond_6

    invoke-virtual/range {p2 .. p2}, Landroid/graphics/Rect;->centerY()I

    move-result v4

    div-int/lit8 v24, v8, 0x2

    move/from16 v0, v24

    if-eq v4, v0, :cond_6

    const/16 v23, 0x1

    .line 774
    .local v23, wantsOffsetEffect:Z
    :goto_1
    if-eqz v22, :cond_8

    .line 776
    move-object/from16 v0, p2

    iget v13, v0, Landroid/graphics/Rect;->left:I

    .line 777
    .local v13, left:I
    move-object/from16 v0, p2

    iget v0, v0, Landroid/graphics/Rect;->right:I

    move/from16 v16, v0

    .line 778
    .local v16, right:I
    move/from16 v0, v16

    #calls: Lcom/android/gallery3d/ui/PhotoView;->calculateMoveOutProgress(III)F
    invoke-static {v13, v0, v7}, Lcom/android/gallery3d/ui/PhotoView;->access$2400(III)F

    move-result v15

    .line 779
    .local v15, progress:F
    const/high16 v4, -0x4080

    const/high16 v24, 0x3f80

    move/from16 v0, v24

    invoke-static {v15, v4, v0}, Lcom/android/gallery3d/common/Utils;->clamp(FFF)F

    move-result v15

    .line 783
    const/4 v4, 0x0

    cmpg-float v4, v15, v4

    if-gez v4, :cond_0

    .line 784
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/gallery3d/ui/PhotoView$FullPicture;->this$0:Lcom/android/gallery3d/ui/PhotoView;

    #calls: Lcom/android/gallery3d/ui/PhotoView;->getScrollScale(F)F
    invoke-static {v4, v15}, Lcom/android/gallery3d/ui/PhotoView;->access$2500(Lcom/android/gallery3d/ui/PhotoView;F)F

    move-result v18

    .line 785
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/gallery3d/ui/PhotoView$FullPicture;->this$0:Lcom/android/gallery3d/ui/PhotoView;

    #calls: Lcom/android/gallery3d/ui/PhotoView;->getScrollAlpha(F)F
    invoke-static {v4, v15}, Lcom/android/gallery3d/ui/PhotoView;->access$2600(Lcom/android/gallery3d/ui/PhotoView;F)F

    move-result v10

    .line 786
    .local v10, alpha:F
    const/high16 v4, 0x3f80

    move/from16 v0, v18

    #calls: Lcom/android/gallery3d/ui/PhotoView;->interpolate(FFF)F
    invoke-static {v12, v0, v4}, Lcom/android/gallery3d/ui/PhotoView;->access$2700(FFF)F

    move-result v18

    .line 787
    const/high16 v4, 0x3f80

    #calls: Lcom/android/gallery3d/ui/PhotoView;->interpolate(FFF)F
    invoke-static {v12, v10, v4}, Lcom/android/gallery3d/ui/PhotoView;->access$2700(FFF)F

    move-result v10

    .line 789
    mul-float v9, v9, v18

    .line 790
    move-object/from16 v0, p1

    invoke-interface {v0, v10}, Lcom/android/gallery3d/ui/GLCanvas;->multiplyAlpha(F)V

    .line 793
    sub-int v4, v16, v13

    if-gt v4, v7, :cond_7

    .line 796
    int-to-float v4, v7

    const/high16 v24, 0x4000

    div-float v11, v4, v24

    .line 803
    .local v11, cxPage:F
    :goto_2
    #calls: Lcom/android/gallery3d/ui/PhotoView;->interpolate(FFF)F
    invoke-static {v12, v11, v5}, Lcom/android/gallery3d/ui/PhotoView;->access$2700(FFF)F

    move-result v5

    .end local v10           #alpha:F
    .end local v11           #cxPage:F
    .end local v13           #left:I
    .end local v15           #progress:F
    .end local v16           #right:I
    :cond_0
    :goto_3
    move-object/from16 v4, p0

    .line 812
    invoke-direct/range {v4 .. v9}, Lcom/android/gallery3d/ui/PhotoView$FullPicture;->setTileViewPosition(FFIIF)V

    .line 813
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/gallery3d/ui/PhotoView$FullPicture;->this$0:Lcom/android/gallery3d/ui/PhotoView;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/gallery3d/ui/PhotoView$FullPicture;->this$0:Lcom/android/gallery3d/ui/PhotoView;

    move-object/from16 v24, v0

    #getter for: Lcom/android/gallery3d/ui/PhotoView;->mTileView:Lcom/android/gallery3d/ui/TileImageView;
    invoke-static/range {v24 .. v24}, Lcom/android/gallery3d/ui/PhotoView;->access$1700(Lcom/android/gallery3d/ui/PhotoView;)Lcom/android/gallery3d/ui/TileImageView;

    move-result-object v24

    move-object/from16 v0, p1

    move-object/from16 v1, v24

    invoke-virtual {v4, v0, v1}, Lcom/android/gallery3d/ui/PhotoView;->renderChild(Lcom/android/gallery3d/ui/GLCanvas;Lcom/android/gallery3d/ui/GLView;)V

    .line 816
    const/high16 v4, 0x3f00

    add-float/2addr v4, v5

    float-to-int v4, v4

    int-to-float v4, v4

    const/high16 v24, 0x3f00

    add-float v24, v24, v6

    move/from16 v0, v24

    float-to-int v0, v0

    move/from16 v24, v0

    move/from16 v0, v24

    int-to-float v0, v0

    move/from16 v24, v0

    move-object/from16 v0, p1

    move/from16 v1, v24

    invoke-interface {v0, v4, v1}, Lcom/android/gallery3d/ui/GLCanvas;->translate(FF)V

    .line 817
    invoke-virtual/range {p2 .. p2}, Landroid/graphics/Rect;->width()I

    move-result v4

    invoke-virtual/range {p2 .. p2}, Landroid/graphics/Rect;->height()I

    move-result v24

    move/from16 v0, v24

    invoke-static {v4, v0}, Ljava/lang/Math;->min(II)I

    move-result v4

    int-to-float v4, v4

    mul-float v4, v4, v18

    const/high16 v24, 0x3f00

    add-float v4, v4, v24

    float-to-int v0, v4

    move/from16 v17, v0

    .line 818
    .local v17, s:I
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/android/gallery3d/ui/PhotoView$FullPicture;->mIsVideo:Z

    if-eqz v4, :cond_1

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/gallery3d/ui/PhotoView$FullPicture;->this$0:Lcom/android/gallery3d/ui/PhotoView;

    move-object/from16 v0, p1

    move/from16 v1, v17

    #calls: Lcom/android/gallery3d/ui/PhotoView;->drawVideoPlayIcon(Lcom/android/gallery3d/ui/GLCanvas;I)V
    invoke-static {v4, v0, v1}, Lcom/android/gallery3d/ui/PhotoView;->access$2900(Lcom/android/gallery3d/ui/PhotoView;Lcom/android/gallery3d/ui/GLCanvas;I)V

    .line 821
    :cond_1
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/android/gallery3d/ui/PhotoView$FullPicture;->mIsMav:Z

    if-eqz v4, :cond_2

    .line 822
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/gallery3d/ui/PhotoView$FullPicture;->this$0:Lcom/android/gallery3d/ui/PhotoView;

    move-object/from16 v0, p1

    move/from16 v1, v17

    #calls: Lcom/android/gallery3d/ui/PhotoView;->drawMavOverlay(Lcom/android/gallery3d/ui/GLCanvas;I)V
    invoke-static {v4, v0, v1}, Lcom/android/gallery3d/ui/PhotoView;->access$3000(Lcom/android/gallery3d/ui/PhotoView;Lcom/android/gallery3d/ui/GLCanvas;I)V

    .line 825
    :cond_2
    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/gallery3d/ui/PhotoView$FullPicture;->mLoadingState:I

    const/16 v24, 0x2

    move/from16 v0, v24

    if-ne v4, v0, :cond_4

    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/android/gallery3d/ui/PhotoView$FullPicture;->mIsCamera:Z

    if-eqz v4, :cond_3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/gallery3d/ui/PhotoView$FullPicture;->this$0:Lcom/android/gallery3d/ui/PhotoView;

    #getter for: Lcom/android/gallery3d/ui/PhotoView;->mCameraScreenNail:Lcom/android/gallery3d/ui/ScreenNail;
    invoke-static {v4}, Lcom/android/gallery3d/ui/PhotoView;->access$1800(Lcom/android/gallery3d/ui/PhotoView;)Lcom/android/gallery3d/ui/ScreenNail;

    move-result-object v4

    if-nez v4, :cond_4

    .line 827
    :cond_3
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/gallery3d/ui/PhotoView$FullPicture;->this$0:Lcom/android/gallery3d/ui/PhotoView;

    move-object/from16 v0, p1

    #calls: Lcom/android/gallery3d/ui/PhotoView;->drawLoadingFailMessage(Lcom/android/gallery3d/ui/GLCanvas;)V
    invoke-static {v4, v0}, Lcom/android/gallery3d/ui/PhotoView;->access$3100(Lcom/android/gallery3d/ui/PhotoView;Lcom/android/gallery3d/ui/GLCanvas;)V

    .line 834
    :cond_4
    neg-float v4, v5

    const/high16 v24, 0x3f00

    sub-float v4, v4, v24

    float-to-int v4, v4

    int-to-float v4, v4

    neg-float v0, v6

    move/from16 v24, v0

    const/high16 v25, 0x3f00

    sub-float v24, v24, v25

    move/from16 v0, v24

    float-to-int v0, v0

    move/from16 v24, v0

    move/from16 v0, v24

    int-to-float v0, v0

    move/from16 v24, v0

    move-object/from16 v0, p1

    move/from16 v1, v24

    invoke-interface {v0, v4, v1}, Lcom/android/gallery3d/ui/GLCanvas;->translate(FF)V

    .line 835
    invoke-virtual/range {p2 .. p2}, Landroid/graphics/Rect;->width()I

    move-result v4

    int-to-float v4, v4

    mul-float v4, v4, v18

    float-to-int v0, v4

    move/from16 v21, v0

    .line 836
    .local v21, scaleW:I
    invoke-virtual/range {p2 .. p2}, Landroid/graphics/Rect;->height()I

    move-result v4

    int-to-float v4, v4

    mul-float v4, v4, v18

    float-to-int v0, v4

    move/from16 v19, v0

    .line 837
    .local v19, scaleH:I
    new-instance v20, Landroid/graphics/Rect;

    float-to-double v0, v5

    move-wide/from16 v24, v0

    move/from16 v0, v21

    int-to-double v0, v0

    move-wide/from16 v26, v0

    const-wide/high16 v28, 0x4000

    div-double v26, v26, v28

    sub-double v24, v24, v26

    move-wide/from16 v0, v24

    double-to-int v4, v0

    float-to-double v0, v6

    move-wide/from16 v24, v0

    move/from16 v0, v19

    int-to-double v0, v0

    move-wide/from16 v26, v0

    const-wide/high16 v28, 0x4000

    div-double v26, v26, v28

    sub-double v24, v24, v26

    move-wide/from16 v0, v24

    double-to-int v0, v0

    move/from16 v24, v0

    float-to-double v0, v5

    move-wide/from16 v25, v0

    move/from16 v0, v21

    int-to-double v0, v0

    move-wide/from16 v27, v0

    const-wide/high16 v29, 0x4000

    div-double v27, v27, v29

    add-double v25, v25, v27

    move-wide/from16 v0, v25

    double-to-int v0, v0

    move/from16 v25, v0

    float-to-double v0, v6

    move-wide/from16 v26, v0

    move/from16 v0, v19

    int-to-double v0, v0

    move-wide/from16 v28, v0

    const-wide/high16 v30, 0x4000

    div-double v28, v28, v30

    add-double v26, v26, v28

    move-wide/from16 v0, v26

    double-to-int v0, v0

    move/from16 v26, v0

    move-object/from16 v0, v20

    move/from16 v1, v24

    move/from16 v2, v25

    move/from16 v3, v26

    invoke-direct {v0, v4, v1, v2, v3}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 838
    .local v20, scaleRect:Landroid/graphics/Rect;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/gallery3d/ui/PhotoView$FullPicture;->this$0:Lcom/android/gallery3d/ui/PhotoView;

    #getter for: Lcom/android/gallery3d/ui/PhotoView;->mFaceIndicator:Lcom/android/gallery3d/ui/FaceIndicator;
    invoke-static {v4}, Lcom/android/gallery3d/ui/PhotoView;->access$3200(Lcom/android/gallery3d/ui/PhotoView;)Lcom/android/gallery3d/ui/FaceIndicator;

    move-result-object v4

    const/16 v24, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, v20

    move/from16 v2, v24

    invoke-virtual {v4, v0, v1, v2}, Lcom/android/gallery3d/ui/FaceIndicator;->draw(Lcom/android/gallery3d/ui/GLCanvas;Landroid/graphics/Rect;I)V

    .line 840
    invoke-interface/range {p1 .. p1}, Lcom/android/gallery3d/ui/GLCanvas;->restore()V

    .line 841
    return-void

    .line 766
    .end local v17           #s:I
    .end local v19           #scaleH:I
    .end local v20           #scaleRect:Landroid/graphics/Rect;
    .end local v21           #scaleW:I
    .end local v22           #wantsCardEffect:Z
    .end local v23           #wantsOffsetEffect:Z
    :cond_5
    const/16 v22, 0x0

    goto/16 :goto_0

    .line 772
    .restart local v22       #wantsCardEffect:Z
    :cond_6
    const/16 v23, 0x0

    goto/16 :goto_1

    .line 801
    .restart local v10       #alpha:F
    .restart local v13       #left:I
    .restart local v15       #progress:F
    .restart local v16       #right:I
    .restart local v23       #wantsOffsetEffect:Z
    :cond_7
    sub-int v4, v16, v13

    int-to-float v4, v4

    mul-float v4, v4, v18

    const/high16 v24, 0x4000

    div-float v11, v4, v24

    .restart local v11       #cxPage:F
    goto/16 :goto_2

    .line 805
    .end local v10           #alpha:F
    .end local v11           #cxPage:F
    .end local v13           #left:I
    .end local v15           #progress:F
    .end local v16           #right:I
    :cond_8
    if-eqz v23, :cond_0

    .line 806
    invoke-virtual/range {p2 .. p2}, Landroid/graphics/Rect;->centerY()I

    move-result v4

    div-int/lit8 v24, v8, 0x2

    sub-int v4, v4, v24

    int-to-float v4, v4

    int-to-float v0, v8

    move/from16 v24, v0

    div-float v14, v4, v24

    .line 807
    .local v14, offset:F
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/gallery3d/ui/PhotoView$FullPicture;->this$0:Lcom/android/gallery3d/ui/PhotoView;

    #calls: Lcom/android/gallery3d/ui/PhotoView;->getOffsetAlpha(F)F
    invoke-static {v4, v14}, Lcom/android/gallery3d/ui/PhotoView;->access$2800(Lcom/android/gallery3d/ui/PhotoView;F)F

    move-result v10

    .line 808
    .restart local v10       #alpha:F
    move-object/from16 v0, p1

    invoke-interface {v0, v10}, Lcom/android/gallery3d/ui/GLCanvas;->multiplyAlpha(F)V

    goto/16 :goto_3
.end method

.method private setTileViewPosition(FFIIF)V
    .locals 12
    .parameter "cx"
    .parameter "cy"
    .parameter "viewW"
    .parameter "viewH"
    .parameter "scale"

    .prologue
    .line 847
    iget-object v9, p0, Lcom/android/gallery3d/ui/PhotoView$FullPicture;->this$0:Lcom/android/gallery3d/ui/PhotoView;

    #getter for: Lcom/android/gallery3d/ui/PhotoView;->mPositionController:Lcom/android/gallery3d/ui/PositionController;
    invoke-static {v9}, Lcom/android/gallery3d/ui/PhotoView;->access$600(Lcom/android/gallery3d/ui/PhotoView;)Lcom/android/gallery3d/ui/PositionController;

    move-result-object v9

    invoke-virtual {v9}, Lcom/android/gallery3d/ui/PositionController;->getImageWidth()I

    move-result v4

    .line 848
    .local v4, imageW:I
    iget-object v9, p0, Lcom/android/gallery3d/ui/PhotoView$FullPicture;->this$0:Lcom/android/gallery3d/ui/PhotoView;

    #getter for: Lcom/android/gallery3d/ui/PhotoView;->mPositionController:Lcom/android/gallery3d/ui/PositionController;
    invoke-static {v9}, Lcom/android/gallery3d/ui/PhotoView;->access$600(Lcom/android/gallery3d/ui/PhotoView;)Lcom/android/gallery3d/ui/PositionController;

    move-result-object v9

    invoke-virtual {v9}, Lcom/android/gallery3d/ui/PositionController;->getImageHeight()I

    move-result v3

    .line 849
    .local v3, imageH:I
    int-to-float v9, v4

    const/high16 v10, 0x4000

    div-float/2addr v9, v10

    int-to-float v10, p3

    const/high16 v11, 0x4000

    div-float/2addr v10, v11

    sub-float/2addr v10, p1

    div-float v10, v10, p5

    add-float/2addr v9, v10

    const/high16 v10, 0x3f00

    add-float/2addr v9, v10

    float-to-int v1, v9

    .line 850
    .local v1, centerX:I
    int-to-float v9, v3

    const/high16 v10, 0x4000

    div-float/2addr v9, v10

    move/from16 v0, p4

    int-to-float v10, v0

    const/high16 v11, 0x4000

    div-float/2addr v10, v11

    sub-float/2addr v10, p2

    div-float v10, v10, p5

    add-float/2addr v9, v10

    const/high16 v10, 0x3f00

    add-float/2addr v9, v10

    float-to-int v2, v9

    .line 852
    .local v2, centerY:I
    sub-int v5, v4, v1

    .line 853
    .local v5, inverseX:I
    sub-int v6, v3, v2

    .line 855
    .local v6, inverseY:I
    iget v9, p0, Lcom/android/gallery3d/ui/PhotoView$FullPicture;->mRotation:I

    sparse-switch v9, :sswitch_data_0

    .line 861
    new-instance v9, Ljava/lang/RuntimeException;

    iget v10, p0, Lcom/android/gallery3d/ui/PhotoView$FullPicture;->mRotation:I

    invoke-static {v10}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 856
    :sswitch_0
    move v7, v1

    .local v7, x:I
    move v8, v2

    .line 863
    .local v8, y:I
    :goto_0
    iget-object v9, p0, Lcom/android/gallery3d/ui/PhotoView$FullPicture;->this$0:Lcom/android/gallery3d/ui/PhotoView;

    #getter for: Lcom/android/gallery3d/ui/PhotoView;->mTileView:Lcom/android/gallery3d/ui/TileImageView;
    invoke-static {v9}, Lcom/android/gallery3d/ui/PhotoView;->access$1700(Lcom/android/gallery3d/ui/PhotoView;)Lcom/android/gallery3d/ui/TileImageView;

    move-result-object v9

    iget v10, p0, Lcom/android/gallery3d/ui/PhotoView$FullPicture;->mRotation:I

    move/from16 v0, p5

    invoke-virtual {v9, v7, v8, v0, v10}, Lcom/android/gallery3d/ui/TileImageView;->setPosition(IIFI)Z

    .line 864
    return-void

    .line 857
    .end local v7           #x:I
    .end local v8           #y:I
    :sswitch_1
    move v7, v2

    .restart local v7       #x:I
    move v8, v5

    .restart local v8       #y:I
    goto :goto_0

    .line 858
    .end local v7           #x:I
    .end local v8           #y:I
    :sswitch_2
    move v7, v5

    .restart local v7       #x:I
    move v8, v6

    .restart local v8       #y:I
    goto :goto_0

    .line 859
    .end local v7           #x:I
    .end local v8           #y:I
    :sswitch_3
    move v7, v6

    .restart local v7       #x:I
    move v8, v1

    .restart local v8       #y:I
    goto :goto_0

    .line 855
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x5a -> :sswitch_1
        0xb4 -> :sswitch_2
        0x10e -> :sswitch_3
    .end sparse-switch
.end method

.method private updateSize()V
    .locals 4

    .prologue
    .line 702
    iget-boolean v2, p0, Lcom/android/gallery3d/ui/PhotoView$FullPicture;->mIsPanorama:Z

    if-eqz v2, :cond_0

    .line 703
    iget-object v2, p0, Lcom/android/gallery3d/ui/PhotoView$FullPicture;->this$0:Lcom/android/gallery3d/ui/PhotoView;

    #calls: Lcom/android/gallery3d/ui/PhotoView;->getPanoramaRotation()I
    invoke-static {v2}, Lcom/android/gallery3d/ui/PhotoView;->access$2000(Lcom/android/gallery3d/ui/PhotoView;)I

    move-result v2

    iput v2, p0, Lcom/android/gallery3d/ui/PhotoView$FullPicture;->mRotation:I

    .line 710
    :goto_0
    iget-object v2, p0, Lcom/android/gallery3d/ui/PhotoView$FullPicture;->this$0:Lcom/android/gallery3d/ui/PhotoView;

    #getter for: Lcom/android/gallery3d/ui/PhotoView;->mTileView:Lcom/android/gallery3d/ui/TileImageView;
    invoke-static {v2}, Lcom/android/gallery3d/ui/PhotoView;->access$1700(Lcom/android/gallery3d/ui/PhotoView;)Lcom/android/gallery3d/ui/TileImageView;

    move-result-object v2

    iget v1, v2, Lcom/android/gallery3d/ui/TileImageView;->mImageWidth:I

    .line 711
    .local v1, w:I
    iget-object v2, p0, Lcom/android/gallery3d/ui/PhotoView$FullPicture;->this$0:Lcom/android/gallery3d/ui/PhotoView;

    #getter for: Lcom/android/gallery3d/ui/PhotoView;->mTileView:Lcom/android/gallery3d/ui/TileImageView;
    invoke-static {v2}, Lcom/android/gallery3d/ui/PhotoView;->access$1700(Lcom/android/gallery3d/ui/PhotoView;)Lcom/android/gallery3d/ui/TileImageView;

    move-result-object v2

    iget v0, v2, Lcom/android/gallery3d/ui/TileImageView;->mImageHeight:I

    .line 712
    .local v0, h:I
    iget-object v2, p0, Lcom/android/gallery3d/ui/PhotoView$FullPicture;->mSize:Lcom/android/gallery3d/ui/PhotoView$Size;

    iget v3, p0, Lcom/android/gallery3d/ui/PhotoView$FullPicture;->mRotation:I

    #calls: Lcom/android/gallery3d/ui/PhotoView;->getRotated(III)I
    invoke-static {v3, v1, v0}, Lcom/android/gallery3d/ui/PhotoView;->access$2100(III)I

    move-result v3

    iput v3, v2, Lcom/android/gallery3d/ui/PhotoView$Size;->width:I

    .line 713
    iget-object v2, p0, Lcom/android/gallery3d/ui/PhotoView$FullPicture;->mSize:Lcom/android/gallery3d/ui/PhotoView$Size;

    iget v3, p0, Lcom/android/gallery3d/ui/PhotoView$FullPicture;->mRotation:I

    #calls: Lcom/android/gallery3d/ui/PhotoView;->getRotated(III)I
    invoke-static {v3, v0, v1}, Lcom/android/gallery3d/ui/PhotoView;->access$2100(III)I

    move-result v3

    iput v3, v2, Lcom/android/gallery3d/ui/PhotoView$Size;->height:I

    .line 714
    return-void

    .line 704
    .end local v0           #h:I
    .end local v1           #w:I
    :cond_0
    iget-boolean v2, p0, Lcom/android/gallery3d/ui/PhotoView$FullPicture;->mIsCamera:Z

    if-eqz v2, :cond_1

    iget-boolean v2, p0, Lcom/android/gallery3d/ui/PhotoView$FullPicture;->mIsStaticCamera:Z

    if-nez v2, :cond_1

    .line 705
    iget-object v2, p0, Lcom/android/gallery3d/ui/PhotoView$FullPicture;->this$0:Lcom/android/gallery3d/ui/PhotoView;

    invoke-virtual {v2}, Lcom/android/gallery3d/ui/PhotoView;->getCameraRotation()I

    move-result v2

    iput v2, p0, Lcom/android/gallery3d/ui/PhotoView$FullPicture;->mRotation:I

    goto :goto_0

    .line 707
    :cond_1
    iget-object v2, p0, Lcom/android/gallery3d/ui/PhotoView$FullPicture;->this$0:Lcom/android/gallery3d/ui/PhotoView;

    #getter for: Lcom/android/gallery3d/ui/PhotoView;->mModel:Lcom/android/gallery3d/ui/PhotoView$Model;
    invoke-static {v2}, Lcom/android/gallery3d/ui/PhotoView;->access$1300(Lcom/android/gallery3d/ui/PhotoView;)Lcom/android/gallery3d/ui/PhotoView$Model;

    move-result-object v2

    const/4 v3, 0x0

    invoke-interface {v2, v3}, Lcom/android/gallery3d/ui/PhotoView$Model;->getImageRotation(I)I

    move-result v2

    iput v2, p0, Lcom/android/gallery3d/ui/PhotoView$FullPicture;->mRotation:I

    goto :goto_0
.end method


# virtual methods
.method public draw(Lcom/android/gallery3d/ui/GLCanvas;Landroid/graphics/Rect;)V
    .locals 2
    .parameter "canvas"
    .parameter "r"

    .prologue
    .line 718
    invoke-direct {p0, p1, p2}, Lcom/android/gallery3d/ui/PhotoView$FullPicture;->drawTileView(Lcom/android/gallery3d/ui/GLCanvas;Landroid/graphics/Rect;)V

    .line 727
    iget-object v0, p0, Lcom/android/gallery3d/ui/PhotoView$FullPicture;->this$0:Lcom/android/gallery3d/ui/PhotoView;

    #getter for: Lcom/android/gallery3d/ui/PhotoView;->mHolding:I
    invoke-static {v0}, Lcom/android/gallery3d/ui/PhotoView;->access$300(Lcom/android/gallery3d/ui/PhotoView;)I

    move-result v0

    and-int/lit8 v0, v0, -0x2

    if-eqz v0, :cond_1

    .line 732
    :cond_0
    :goto_0
    return-void

    .line 729
    :cond_1
    iget-object v0, p0, Lcom/android/gallery3d/ui/PhotoView$FullPicture;->this$0:Lcom/android/gallery3d/ui/PhotoView;

    #getter for: Lcom/android/gallery3d/ui/PhotoView;->mWantPictureCenterCallbacks:Z
    invoke-static {v0}, Lcom/android/gallery3d/ui/PhotoView;->access$2200(Lcom/android/gallery3d/ui/PhotoView;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/gallery3d/ui/PhotoView$FullPicture;->this$0:Lcom/android/gallery3d/ui/PhotoView;

    #getter for: Lcom/android/gallery3d/ui/PhotoView;->mPositionController:Lcom/android/gallery3d/ui/PositionController;
    invoke-static {v0}, Lcom/android/gallery3d/ui/PhotoView;->access$600(Lcom/android/gallery3d/ui/PhotoView;)Lcom/android/gallery3d/ui/PositionController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/gallery3d/ui/PositionController;->isCenter()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 730
    iget-object v0, p0, Lcom/android/gallery3d/ui/PhotoView$FullPicture;->this$0:Lcom/android/gallery3d/ui/PhotoView;

    #getter for: Lcom/android/gallery3d/ui/PhotoView;->mListener:Lcom/android/gallery3d/ui/PhotoView$Listener;
    invoke-static {v0}, Lcom/android/gallery3d/ui/PhotoView;->access$000(Lcom/android/gallery3d/ui/PhotoView;)Lcom/android/gallery3d/ui/PhotoView$Listener;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/gallery3d/ui/PhotoView$FullPicture;->mIsCamera:Z

    invoke-interface {v0, v1}, Lcom/android/gallery3d/ui/PhotoView$Listener;->onPictureCenter(Z)V

    goto :goto_0
.end method

.method public forceSize()V
    .locals 3

    .prologue
    .line 697
    invoke-direct {p0}, Lcom/android/gallery3d/ui/PhotoView$FullPicture;->updateSize()V

    .line 698
    iget-object v0, p0, Lcom/android/gallery3d/ui/PhotoView$FullPicture;->this$0:Lcom/android/gallery3d/ui/PhotoView;

    #getter for: Lcom/android/gallery3d/ui/PhotoView;->mPositionController:Lcom/android/gallery3d/ui/PositionController;
    invoke-static {v0}, Lcom/android/gallery3d/ui/PhotoView;->access$600(Lcom/android/gallery3d/ui/PhotoView;)Lcom/android/gallery3d/ui/PositionController;

    move-result-object v0

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/android/gallery3d/ui/PhotoView$FullPicture;->mSize:Lcom/android/gallery3d/ui/PhotoView$Size;

    invoke-virtual {v0, v1, v2}, Lcom/android/gallery3d/ui/PositionController;->forceImageSize(ILcom/android/gallery3d/ui/PhotoView$Size;)V

    .line 699
    return-void
.end method

.method public getSize()Lcom/android/gallery3d/ui/PhotoView$Size;
    .locals 1

    .prologue
    .line 692
    iget-object v0, p0, Lcom/android/gallery3d/ui/PhotoView$FullPicture;->mSize:Lcom/android/gallery3d/ui/PhotoView$Size;

    return-object v0
.end method

.method public isCamera()Z
    .locals 1

    .prologue
    .line 741
    iget-boolean v0, p0, Lcom/android/gallery3d/ui/PhotoView$FullPicture;->mIsCamera:Z

    return v0
.end method

.method public isDeletable()Z
    .locals 1

    .prologue
    .line 746
    iget-boolean v0, p0, Lcom/android/gallery3d/ui/PhotoView$FullPicture;->mIsDeletable:Z

    return v0
.end method

.method public isVideo()Z
    .locals 1

    .prologue
    .line 752
    iget-boolean v0, p0, Lcom/android/gallery3d/ui/PhotoView$FullPicture;->mIsVideo:Z

    return v0
.end method

.method public reload()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 667
    iget-object v0, p0, Lcom/android/gallery3d/ui/PhotoView$FullPicture;->this$0:Lcom/android/gallery3d/ui/PhotoView;

    #getter for: Lcom/android/gallery3d/ui/PhotoView;->mTileView:Lcom/android/gallery3d/ui/TileImageView;
    invoke-static {v0}, Lcom/android/gallery3d/ui/PhotoView;->access$1700(Lcom/android/gallery3d/ui/PhotoView;)Lcom/android/gallery3d/ui/TileImageView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/gallery3d/ui/TileImageView;->notifyModelInvalidated()V

    .line 669
    iget-object v0, p0, Lcom/android/gallery3d/ui/PhotoView$FullPicture;->this$0:Lcom/android/gallery3d/ui/PhotoView;

    #getter for: Lcom/android/gallery3d/ui/PhotoView;->mModel:Lcom/android/gallery3d/ui/PhotoView$Model;
    invoke-static {v0}, Lcom/android/gallery3d/ui/PhotoView;->access$1300(Lcom/android/gallery3d/ui/PhotoView;)Lcom/android/gallery3d/ui/PhotoView$Model;

    move-result-object v0

    invoke-interface {v0, v3}, Lcom/android/gallery3d/ui/PhotoView$Model;->isCamera(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/gallery3d/ui/PhotoView$FullPicture;->mIsCamera:Z

    .line 670
    iget-object v0, p0, Lcom/android/gallery3d/ui/PhotoView$FullPicture;->this$0:Lcom/android/gallery3d/ui/PhotoView;

    #getter for: Lcom/android/gallery3d/ui/PhotoView;->mModel:Lcom/android/gallery3d/ui/PhotoView$Model;
    invoke-static {v0}, Lcom/android/gallery3d/ui/PhotoView;->access$1300(Lcom/android/gallery3d/ui/PhotoView;)Lcom/android/gallery3d/ui/PhotoView$Model;

    move-result-object v0

    invoke-interface {v0, v3}, Lcom/android/gallery3d/ui/PhotoView$Model;->isPanorama(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/gallery3d/ui/PhotoView$FullPicture;->mIsPanorama:Z

    .line 671
    iget-object v0, p0, Lcom/android/gallery3d/ui/PhotoView$FullPicture;->this$0:Lcom/android/gallery3d/ui/PhotoView;

    #getter for: Lcom/android/gallery3d/ui/PhotoView;->mModel:Lcom/android/gallery3d/ui/PhotoView$Model;
    invoke-static {v0}, Lcom/android/gallery3d/ui/PhotoView;->access$1300(Lcom/android/gallery3d/ui/PhotoView;)Lcom/android/gallery3d/ui/PhotoView$Model;

    move-result-object v0

    invoke-interface {v0, v3}, Lcom/android/gallery3d/ui/PhotoView$Model;->isStaticCamera(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/gallery3d/ui/PhotoView$FullPicture;->mIsStaticCamera:Z

    .line 672
    iget-object v0, p0, Lcom/android/gallery3d/ui/PhotoView$FullPicture;->this$0:Lcom/android/gallery3d/ui/PhotoView;

    #getter for: Lcom/android/gallery3d/ui/PhotoView;->mModel:Lcom/android/gallery3d/ui/PhotoView$Model;
    invoke-static {v0}, Lcom/android/gallery3d/ui/PhotoView;->access$1300(Lcom/android/gallery3d/ui/PhotoView;)Lcom/android/gallery3d/ui/PhotoView$Model;

    move-result-object v0

    invoke-interface {v0, v3}, Lcom/android/gallery3d/ui/PhotoView$Model;->isVideo(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/gallery3d/ui/PhotoView$FullPicture;->mIsVideo:Z

    .line 675
    iget-object v0, p0, Lcom/android/gallery3d/ui/PhotoView$FullPicture;->this$0:Lcom/android/gallery3d/ui/PhotoView;

    #getter for: Lcom/android/gallery3d/ui/PhotoView;->mModel:Lcom/android/gallery3d/ui/PhotoView$Model;
    invoke-static {v0}, Lcom/android/gallery3d/ui/PhotoView;->access$1300(Lcom/android/gallery3d/ui/PhotoView;)Lcom/android/gallery3d/ui/PhotoView$Model;

    move-result-object v0

    invoke-interface {v0, v3}, Lcom/android/gallery3d/ui/PhotoView$Model;->isMav(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/gallery3d/ui/PhotoView$FullPicture;->mIsMav:Z

    .line 677
    iget-object v0, p0, Lcom/android/gallery3d/ui/PhotoView$FullPicture;->this$0:Lcom/android/gallery3d/ui/PhotoView;

    #getter for: Lcom/android/gallery3d/ui/PhotoView;->mModel:Lcom/android/gallery3d/ui/PhotoView$Model;
    invoke-static {v0}, Lcom/android/gallery3d/ui/PhotoView;->access$1300(Lcom/android/gallery3d/ui/PhotoView;)Lcom/android/gallery3d/ui/PhotoView$Model;

    move-result-object v0

    invoke-interface {v0, v3}, Lcom/android/gallery3d/ui/PhotoView$Model;->isDeletable(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/gallery3d/ui/PhotoView$FullPicture;->mIsDeletable:Z

    .line 678
    iget-object v0, p0, Lcom/android/gallery3d/ui/PhotoView$FullPicture;->this$0:Lcom/android/gallery3d/ui/PhotoView;

    #getter for: Lcom/android/gallery3d/ui/PhotoView;->mModel:Lcom/android/gallery3d/ui/PhotoView$Model;
    invoke-static {v0}, Lcom/android/gallery3d/ui/PhotoView;->access$1300(Lcom/android/gallery3d/ui/PhotoView;)Lcom/android/gallery3d/ui/PhotoView$Model;

    move-result-object v0

    invoke-interface {v0, v3}, Lcom/android/gallery3d/ui/PhotoView$Model;->getLoadingState(I)I

    move-result v0

    iput v0, p0, Lcom/android/gallery3d/ui/PhotoView$FullPicture;->mLoadingState:I

    .line 679
    iget-boolean v0, p0, Lcom/android/gallery3d/ui/PhotoView$FullPicture;->mIsCamera:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/gallery3d/ui/PhotoView$FullPicture;->this$0:Lcom/android/gallery3d/ui/PhotoView;

    #getter for: Lcom/android/gallery3d/ui/PhotoView;->mModel:Lcom/android/gallery3d/ui/PhotoView$Model;
    invoke-static {v0}, Lcom/android/gallery3d/ui/PhotoView;->access$1300(Lcom/android/gallery3d/ui/PhotoView;)Lcom/android/gallery3d/ui/PhotoView$Model;

    move-result-object v0

    invoke-interface {v0, v3}, Lcom/android/gallery3d/ui/PhotoView$Model;->getScreenNail(I)Lcom/android/gallery3d/ui/ScreenNail;

    move-result-object v0

    if-nez v0, :cond_0

    .line 680
    const-string v0, "PhotoView"

    const-string v1, "ScreenNail lost @ FullPicture"

    invoke-static {v0, v1}, Lcom/android/gallery3d/ui/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 681
    iget-object v0, p0, Lcom/android/gallery3d/ui/PhotoView$FullPicture;->this$0:Lcom/android/gallery3d/ui/PhotoView;

    #getter for: Lcom/android/gallery3d/ui/PhotoView;->mCameraScreenNail:Lcom/android/gallery3d/ui/ScreenNail;
    invoke-static {v0}, Lcom/android/gallery3d/ui/PhotoView;->access$1800(Lcom/android/gallery3d/ui/PhotoView;)Lcom/android/gallery3d/ui/ScreenNail;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/gallery3d/ui/PhotoView$FullPicture;->setScreenNail(Lcom/android/gallery3d/ui/ScreenNail;)V

    .line 682
    iget-object v0, p0, Lcom/android/gallery3d/ui/PhotoView$FullPicture;->this$0:Lcom/android/gallery3d/ui/PhotoView;

    #getter for: Lcom/android/gallery3d/ui/PhotoView;->mTileView:Lcom/android/gallery3d/ui/TileImageView;
    invoke-static {v0}, Lcom/android/gallery3d/ui/PhotoView;->access$1700(Lcom/android/gallery3d/ui/PhotoView;)Lcom/android/gallery3d/ui/TileImageView;

    move-result-object v0

    iget-object v1, p0, Lcom/android/gallery3d/ui/PhotoView$FullPicture;->this$0:Lcom/android/gallery3d/ui/PhotoView;

    invoke-virtual {v1}, Lcom/android/gallery3d/ui/PhotoView;->getWidth()I

    move-result v1

    iget-object v2, p0, Lcom/android/gallery3d/ui/PhotoView$FullPicture;->this$0:Lcom/android/gallery3d/ui/PhotoView;

    invoke-virtual {v2}, Lcom/android/gallery3d/ui/PhotoView;->getHeight()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/android/gallery3d/ui/TileImageView;->updateScreenNailSize(II)V

    .line 686
    :goto_0
    iget-object v0, p0, Lcom/android/gallery3d/ui/PhotoView$FullPicture;->this$0:Lcom/android/gallery3d/ui/PhotoView;

    iget-object v1, p0, Lcom/android/gallery3d/ui/PhotoView$FullPicture;->this$0:Lcom/android/gallery3d/ui/PhotoView;

    #getter for: Lcom/android/gallery3d/ui/PhotoView;->mModel:Lcom/android/gallery3d/ui/PhotoView$Model;
    invoke-static {v1}, Lcom/android/gallery3d/ui/PhotoView;->access$1300(Lcom/android/gallery3d/ui/PhotoView;)Lcom/android/gallery3d/ui/PhotoView$Model;

    move-result-object v1

    invoke-interface {v1, v3}, Lcom/android/gallery3d/ui/PhotoView$Model;->getMediaItem(I)Lcom/android/gallery3d/data/MediaItem;

    move-result-object v1

    iget-object v2, p0, Lcom/android/gallery3d/ui/PhotoView$FullPicture;->this$0:Lcom/android/gallery3d/ui/PhotoView;

    #getter for: Lcom/android/gallery3d/ui/PhotoView;->mModel:Lcom/android/gallery3d/ui/PhotoView$Model;
    invoke-static {v2}, Lcom/android/gallery3d/ui/PhotoView;->access$1300(Lcom/android/gallery3d/ui/PhotoView;)Lcom/android/gallery3d/ui/PhotoView$Model;

    move-result-object v2

    invoke-interface {v2, v3}, Lcom/android/gallery3d/ui/PhotoView$Model;->getScreenNail(I)Lcom/android/gallery3d/ui/ScreenNail;

    move-result-object v2

    #calls: Lcom/android/gallery3d/ui/PhotoView;->parseGifIfNecessary(Lcom/android/gallery3d/data/MediaItem;Lcom/android/gallery3d/ui/ScreenNail;)V
    invoke-static {v0, v1, v2}, Lcom/android/gallery3d/ui/PhotoView;->access$1900(Lcom/android/gallery3d/ui/PhotoView;Lcom/android/gallery3d/data/MediaItem;Lcom/android/gallery3d/ui/ScreenNail;)V

    .line 687
    invoke-direct {p0}, Lcom/android/gallery3d/ui/PhotoView$FullPicture;->updateSize()V

    .line 688
    return-void

    .line 684
    :cond_0
    iget-object v0, p0, Lcom/android/gallery3d/ui/PhotoView$FullPicture;->this$0:Lcom/android/gallery3d/ui/PhotoView;

    #getter for: Lcom/android/gallery3d/ui/PhotoView;->mModel:Lcom/android/gallery3d/ui/PhotoView$Model;
    invoke-static {v0}, Lcom/android/gallery3d/ui/PhotoView;->access$1300(Lcom/android/gallery3d/ui/PhotoView;)Lcom/android/gallery3d/ui/PhotoView$Model;

    move-result-object v0

    invoke-interface {v0, v3}, Lcom/android/gallery3d/ui/PhotoView$Model;->getScreenNail(I)Lcom/android/gallery3d/ui/ScreenNail;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/gallery3d/ui/PhotoView$FullPicture;->setScreenNail(Lcom/android/gallery3d/ui/ScreenNail;)V

    goto :goto_0
.end method

.method public setScreenNail(Lcom/android/gallery3d/ui/ScreenNail;)V
    .locals 1
    .parameter "s"

    .prologue
    .line 736
    iget-object v0, p0, Lcom/android/gallery3d/ui/PhotoView$FullPicture;->this$0:Lcom/android/gallery3d/ui/PhotoView;

    #getter for: Lcom/android/gallery3d/ui/PhotoView;->mTileView:Lcom/android/gallery3d/ui/TileImageView;
    invoke-static {v0}, Lcom/android/gallery3d/ui/PhotoView;->access$1700(Lcom/android/gallery3d/ui/PhotoView;)Lcom/android/gallery3d/ui/TileImageView;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/gallery3d/ui/TileImageView;->setScreenNail(Lcom/android/gallery3d/ui/ScreenNail;)V

    .line 737
    return-void
.end method
