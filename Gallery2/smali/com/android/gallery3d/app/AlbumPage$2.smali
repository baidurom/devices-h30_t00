.class Lcom/android/gallery3d/app/AlbumPage$2;
.super Lcom/android/gallery3d/ui/GLView;
.source "AlbumPage.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/gallery3d/app/AlbumPage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private final mMatrix:[F

.field final synthetic this$0:Lcom/android/gallery3d/app/AlbumPage;


# direct methods
.method constructor <init>(Lcom/android/gallery3d/app/AlbumPage;)V
    .locals 1
    .parameter

    .prologue
    .line 252
    iput-object p1, p0, Lcom/android/gallery3d/app/AlbumPage$2;->this$0:Lcom/android/gallery3d/app/AlbumPage;

    invoke-direct {p0}, Lcom/android/gallery3d/ui/GLView;-><init>()V

    .line 253
    const/16 v0, 0x10

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/android/gallery3d/app/AlbumPage$2;->mMatrix:[F

    return-void
.end method


# virtual methods
.method public getAnimRect()Landroid/graphics/Rect;
    .locals 1

    .prologue
    .line 321
    iget-object v0, p0, Lcom/android/gallery3d/app/AlbumPage$2;->this$0:Lcom/android/gallery3d/app/AlbumPage;

    #getter for: Lcom/android/gallery3d/app/AlbumPage;->mSlotView:Lcom/android/gallery3d/ui/SlotView;
    invoke-static {v0}, Lcom/android/gallery3d/app/AlbumPage;->access$000(Lcom/android/gallery3d/app/AlbumPage;)Lcom/android/gallery3d/ui/SlotView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/gallery3d/ui/SlotView;->getAnimRect()Landroid/graphics/Rect;

    move-result-object v0

    return-object v0
.end method

.method protected onLayout(ZIIII)V
    .locals 17
    .parameter "changed"
    .parameter "left"
    .parameter "top"
    .parameter "right"
    .parameter "bottom"

    .prologue
    .line 259
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/gallery3d/app/AlbumPage$2;->this$0:Lcom/android/gallery3d/app/AlbumPage;

    iget-object v13, v13, Lcom/android/gallery3d/app/ActivityState;->mActivity:Lcom/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v13}, Lcom/android/gallery3d/app/AbstractGalleryActivity;->isFullscreen()Z

    move-result v13

    if-eqz v13, :cond_2

    const/4 v3, 0x0

    .line 260
    .local v3, deltaHeight:I
    :goto_0
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/gallery3d/app/AlbumPage$2;->this$0:Lcom/android/gallery3d/app/AlbumPage;

    iget-object v13, v13, Lcom/android/gallery3d/app/ActivityState;->mActivity:Lcom/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v13}, Lcom/android/gallery3d/app/AbstractGalleryActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    const v14, 0x7f0b00bd

    invoke-virtual {v13, v14}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v13

    add-int v11, v13, v3

    .line 262
    .local v11, slotViewTop:I
    sub-int v9, p5, p3

    .line 263
    .local v9, slotViewBottom:I
    sub-int v10, p4, p2

    .line 265
    .local v10, slotViewRight:I
    sub-int v4, p5, p3

    .line 266
    .local v4, h:I
    sub-int v12, p4, p2

    .line 267
    .local v12, w:I
    if-le v4, v12, :cond_3

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/gallery3d/app/AlbumPage$2;->this$0:Lcom/android/gallery3d/app/AlbumPage;

    #getter for: Lcom/android/gallery3d/app/AlbumPage;->mToolbarHeightPort:I
    invoke-static {v13}, Lcom/android/gallery3d/app/AlbumPage;->access$300(Lcom/android/gallery3d/app/AlbumPage;)I

    move-result v8

    .line 270
    .local v8, selectionBarViewHeight:I
    :goto_1
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/gallery3d/app/AlbumPage$2;->this$0:Lcom/android/gallery3d/app/AlbumPage;

    #getter for: Lcom/android/gallery3d/app/AlbumPage;->mToolbarView:Lcom/android/gallery3d/ui/ToolbarView;
    invoke-static {v13}, Lcom/android/gallery3d/app/AlbumPage;->access$500(Lcom/android/gallery3d/app/AlbumPage;)Lcom/android/gallery3d/ui/ToolbarView;

    move-result-object v13

    invoke-virtual {v13}, Lcom/android/gallery3d/ui/ToolbarView;->getVisibility()I

    move-result v13

    if-nez v13, :cond_0

    sub-int/2addr v9, v8

    .line 274
    :cond_0
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/gallery3d/app/AlbumPage$2;->this$0:Lcom/android/gallery3d/app/AlbumPage;

    #getter for: Lcom/android/gallery3d/app/AlbumPage;->mShowDetails:Z
    invoke-static {v13}, Lcom/android/gallery3d/app/AlbumPage;->access$600(Lcom/android/gallery3d/app/AlbumPage;)Z

    move-result v13

    if-eqz v13, :cond_4

    .line 275
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/gallery3d/app/AlbumPage$2;->this$0:Lcom/android/gallery3d/app/AlbumPage;

    #getter for: Lcom/android/gallery3d/app/AlbumPage;->mDetailsHelper:Lcom/android/gallery3d/ui/DetailsHelper;
    invoke-static {v13}, Lcom/android/gallery3d/app/AlbumPage;->access$700(Lcom/android/gallery3d/app/AlbumPage;)Lcom/android/gallery3d/ui/DetailsHelper;

    move-result-object v13

    move/from16 v0, p2

    move/from16 v1, p4

    move/from16 v2, p5

    invoke-virtual {v13, v0, v11, v1, v2}, Lcom/android/gallery3d/ui/DetailsHelper;->layout(IIII)V

    .line 280
    :goto_2
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/gallery3d/app/AlbumPage$2;->this$0:Lcom/android/gallery3d/app/AlbumPage;

    #getter for: Lcom/android/gallery3d/app/AlbumPage;->mSelectAllView:Lcom/android/gallery3d/ui/SelectAllView;
    invoke-static {v13}, Lcom/android/gallery3d/app/AlbumPage;->access$900(Lcom/android/gallery3d/app/AlbumPage;)Lcom/android/gallery3d/ui/SelectAllView;

    move-result-object v13

    invoke-virtual {v13}, Lcom/android/gallery3d/ui/SelectAllView;->getVisibility()I

    move-result v13

    if-nez v13, :cond_5

    const/4 v5, 0x1

    .line 281
    .local v5, isSelectAllViewVisible:Z
    :goto_3
    if-eqz v5, :cond_1

    .line 282
    move v7, v11

    .line 283
    .local v7, selectAllTop:I
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/gallery3d/app/AlbumPage$2;->this$0:Lcom/android/gallery3d/app/AlbumPage;

    iget-object v13, v13, Lcom/android/gallery3d/app/ActivityState;->mActivity:Lcom/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v13}, Lcom/android/gallery3d/app/AbstractGalleryActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    const v14, 0x7f0b00b9

    invoke-virtual {v13, v14}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v13

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/gallery3d/app/AlbumPage$2;->this$0:Lcom/android/gallery3d/app/AlbumPage;

    #getter for: Lcom/android/gallery3d/app/AlbumPage;->mSelectAllHeight:I
    invoke-static {v14}, Lcom/android/gallery3d/app/AlbumPage;->access$1000(Lcom/android/gallery3d/app/AlbumPage;)I

    move-result v14

    add-int/2addr v13, v14

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/gallery3d/app/AlbumPage$2;->this$0:Lcom/android/gallery3d/app/AlbumPage;

    iget-object v14, v14, Lcom/android/gallery3d/app/ActivityState;->mActivity:Lcom/android/gallery3d/app/AbstractGalleryActivity;

    invoke-static {v14}, Lcom/android/gallery3d/app/Config$AlbumPage;->get(Landroid/content/Context;)Lcom/android/gallery3d/app/Config$AlbumPage;

    move-result-object v14

    iget v14, v14, Lcom/android/gallery3d/app/Config$AlbumPage;->selectAllTopMargin:I

    add-int v6, v13, v14

    .line 286
    .local v6, selectAllBottom:I
    move v11, v6

    .line 287
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/gallery3d/app/AlbumPage$2;->this$0:Lcom/android/gallery3d/app/AlbumPage;

    #getter for: Lcom/android/gallery3d/app/AlbumPage;->mSelectAllView:Lcom/android/gallery3d/ui/SelectAllView;
    invoke-static {v13}, Lcom/android/gallery3d/app/AlbumPage;->access$900(Lcom/android/gallery3d/app/AlbumPage;)Lcom/android/gallery3d/ui/SelectAllView;

    move-result-object v13

    const/4 v14, 0x0

    invoke-virtual {v13, v14, v7, v10, v6}, Lcom/android/gallery3d/ui/SelectAllView;->layout(IIII)V

    .line 291
    .end local v6           #selectAllBottom:I
    .end local v7           #selectAllTop:I
    :cond_1
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/gallery3d/app/AlbumPage$2;->this$0:Lcom/android/gallery3d/app/AlbumPage;

    #getter for: Lcom/android/gallery3d/app/AlbumPage;->mOpenCenter:Lcom/android/gallery3d/ui/RelativePosition;
    invoke-static {v13}, Lcom/android/gallery3d/app/AlbumPage;->access$1100(Lcom/android/gallery3d/app/AlbumPage;)Lcom/android/gallery3d/ui/RelativePosition;

    move-result-object v13

    const/4 v14, 0x0

    invoke-virtual {v13, v14, v11}, Lcom/android/gallery3d/ui/RelativePosition;->setReferencePosition(II)V

    .line 292
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/gallery3d/app/AlbumPage$2;->this$0:Lcom/android/gallery3d/app/AlbumPage;

    #getter for: Lcom/android/gallery3d/app/AlbumPage;->mSlotView:Lcom/android/gallery3d/ui/SlotView;
    invoke-static {v13}, Lcom/android/gallery3d/app/AlbumPage;->access$000(Lcom/android/gallery3d/app/AlbumPage;)Lcom/android/gallery3d/ui/SlotView;

    move-result-object v13

    const/4 v14, 0x0

    invoke-virtual {v13, v14, v11, v10, v9}, Lcom/android/gallery3d/ui/SlotView;->layout(IIII)V

    .line 293
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/gallery3d/app/AlbumPage$2;->this$0:Lcom/android/gallery3d/app/AlbumPage;

    #getter for: Lcom/android/gallery3d/app/AlbumPage;->mToolbarView:Lcom/android/gallery3d/ui/ToolbarView;
    invoke-static {v13}, Lcom/android/gallery3d/app/AlbumPage;->access$500(Lcom/android/gallery3d/app/AlbumPage;)Lcom/android/gallery3d/ui/ToolbarView;

    move-result-object v13

    const/4 v14, 0x0

    sub-int v15, p5, v8

    move/from16 v0, p5

    invoke-virtual {v13, v14, v15, v10, v0}, Lcom/android/gallery3d/ui/ToolbarView;->layout(IIII)V

    .line 294
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/gallery3d/app/AlbumPage$2;->mMatrix:[F

    sub-int v14, p4, p2

    div-int/lit8 v14, v14, 0x2

    int-to-float v14, v14

    sub-int v15, p5, p3

    div-int/lit8 v15, v15, 0x2

    int-to-float v15, v15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/gallery3d/app/AlbumPage$2;->this$0:Lcom/android/gallery3d/app/AlbumPage;

    move-object/from16 v16, v0

    #getter for: Lcom/android/gallery3d/app/AlbumPage;->mUserDistance:F
    invoke-static/range {v16 .. v16}, Lcom/android/gallery3d/app/AlbumPage;->access$1200(Lcom/android/gallery3d/app/AlbumPage;)F

    move-result v16

    move/from16 v0, v16

    neg-float v0, v0

    move/from16 v16, v0

    invoke-static/range {v13 .. v16}, Lcom/android/gallery3d/util/GalleryUtils;->setViewPointMatrix([FFFF)V

    .line 296
    return-void

    .line 259
    .end local v3           #deltaHeight:I
    .end local v4           #h:I
    .end local v5           #isSelectAllViewVisible:Z
    .end local v8           #selectionBarViewHeight:I
    .end local v9           #slotViewBottom:I
    .end local v10           #slotViewRight:I
    .end local v11           #slotViewTop:I
    .end local v12           #w:I
    :cond_2
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/gallery3d/app/AlbumPage$2;->this$0:Lcom/android/gallery3d/app/AlbumPage;

    #getter for: Lcom/android/gallery3d/app/AlbumPage;->mStatusBarHeight:I
    invoke-static {v13}, Lcom/android/gallery3d/app/AlbumPage;->access$200(Lcom/android/gallery3d/app/AlbumPage;)I

    move-result v3

    goto/16 :goto_0

    .line 267
    .restart local v3       #deltaHeight:I
    .restart local v4       #h:I
    .restart local v9       #slotViewBottom:I
    .restart local v10       #slotViewRight:I
    .restart local v11       #slotViewTop:I
    .restart local v12       #w:I
    :cond_3
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/gallery3d/app/AlbumPage$2;->this$0:Lcom/android/gallery3d/app/AlbumPage;

    #getter for: Lcom/android/gallery3d/app/AlbumPage;->mToolbarHeightLand:I
    invoke-static {v13}, Lcom/android/gallery3d/app/AlbumPage;->access$400(Lcom/android/gallery3d/app/AlbumPage;)I

    move-result v8

    goto/16 :goto_1

    .line 277
    .restart local v8       #selectionBarViewHeight:I
    :cond_4
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/gallery3d/app/AlbumPage$2;->this$0:Lcom/android/gallery3d/app/AlbumPage;

    #getter for: Lcom/android/gallery3d/app/AlbumPage;->mAlbumView:Lcom/android/gallery3d/ui/AlbumSlotRenderer;
    invoke-static {v13}, Lcom/android/gallery3d/app/AlbumPage;->access$800(Lcom/android/gallery3d/app/AlbumPage;)Lcom/android/gallery3d/ui/AlbumSlotRenderer;

    move-result-object v13

    const/4 v14, 0x0

    invoke-virtual {v13, v14}, Lcom/android/gallery3d/ui/AlbumSlotRenderer;->setHighlightItemPath(Lcom/android/gallery3d/data/Path;)V

    goto/16 :goto_2

    .line 280
    :cond_5
    const/4 v5, 0x0

    goto/16 :goto_3
.end method

.method protected render(Lcom/android/gallery3d/ui/GLCanvas;)V
    .locals 3
    .parameter "canvas"

    .prologue
    .line 300
    const/4 v1, 0x2

    invoke-interface {p1, v1}, Lcom/android/gallery3d/ui/GLCanvas;->save(I)V

    .line 301
    iget-object v1, p0, Lcom/android/gallery3d/app/AlbumPage$2;->mMatrix:[F

    const/4 v2, 0x0

    invoke-interface {p1, v1, v2}, Lcom/android/gallery3d/ui/GLCanvas;->multiplyMatrix([FI)V

    .line 302
    invoke-super {p0, p1}, Lcom/android/gallery3d/ui/GLView;->render(Lcom/android/gallery3d/ui/GLCanvas;)V

    .line 304
    iget-object v1, p0, Lcom/android/gallery3d/app/AlbumPage$2;->this$0:Lcom/android/gallery3d/app/AlbumPage;

    #getter for: Lcom/android/gallery3d/app/AlbumPage;->mResumeEffect:Lcom/android/gallery3d/ui/PhotoFallbackEffect;
    invoke-static {v1}, Lcom/android/gallery3d/app/AlbumPage;->access$1300(Lcom/android/gallery3d/app/AlbumPage;)Lcom/android/gallery3d/ui/PhotoFallbackEffect;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 305
    iget-object v1, p0, Lcom/android/gallery3d/app/AlbumPage$2;->this$0:Lcom/android/gallery3d/app/AlbumPage;

    #getter for: Lcom/android/gallery3d/app/AlbumPage;->mResumeEffect:Lcom/android/gallery3d/ui/PhotoFallbackEffect;
    invoke-static {v1}, Lcom/android/gallery3d/app/AlbumPage;->access$1300(Lcom/android/gallery3d/app/AlbumPage;)Lcom/android/gallery3d/ui/PhotoFallbackEffect;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/android/gallery3d/ui/PhotoFallbackEffect;->draw(Lcom/android/gallery3d/ui/GLCanvas;)Z

    move-result v0

    .line 306
    .local v0, more:Z
    if-nez v0, :cond_0

    .line 307
    iget-object v1, p0, Lcom/android/gallery3d/app/AlbumPage$2;->this$0:Lcom/android/gallery3d/app/AlbumPage;

    const/4 v2, 0x0

    #setter for: Lcom/android/gallery3d/app/AlbumPage;->mResumeEffect:Lcom/android/gallery3d/ui/PhotoFallbackEffect;
    invoke-static {v1, v2}, Lcom/android/gallery3d/app/AlbumPage;->access$1302(Lcom/android/gallery3d/app/AlbumPage;Lcom/android/gallery3d/ui/PhotoFallbackEffect;)Lcom/android/gallery3d/ui/PhotoFallbackEffect;

    .line 314
    :cond_0
    invoke-virtual {p0}, Lcom/android/gallery3d/app/AlbumPage$2;->invalidate()V

    .line 316
    .end local v0           #more:Z
    :cond_1
    invoke-interface {p1}, Lcom/android/gallery3d/ui/GLCanvas;->restore()V

    .line 317
    return-void
.end method

.method public setTransitionForRender(Ljava/lang/String;)V
    .locals 1
    .parameter "textureType"

    .prologue
    .line 327
    iget-object v0, p0, Lcom/android/gallery3d/app/AlbumPage$2;->this$0:Lcom/android/gallery3d/app/AlbumPage;

    #getter for: Lcom/android/gallery3d/app/AlbumPage;->mSlotView:Lcom/android/gallery3d/ui/SlotView;
    invoke-static {v0}, Lcom/android/gallery3d/app/AlbumPage;->access$000(Lcom/android/gallery3d/app/AlbumPage;)Lcom/android/gallery3d/ui/SlotView;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/gallery3d/ui/SlotView;->setTransitionForRender(Ljava/lang/String;)V

    .line 328
    return-void
.end method
