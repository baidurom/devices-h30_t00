.class Lcom/android/gallery3d/app/AlbumSetPage$2;
.super Lcom/android/gallery3d/ui/GLView;
.source "AlbumSetPage.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/gallery3d/app/AlbumSetPage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private final mMatrix:[F

.field final synthetic this$0:Lcom/android/gallery3d/app/AlbumSetPage;


# direct methods
.method constructor <init>(Lcom/android/gallery3d/app/AlbumSetPage;)V
    .locals 1
    .parameter

    .prologue
    .line 257
    iput-object p1, p0, Lcom/android/gallery3d/app/AlbumSetPage$2;->this$0:Lcom/android/gallery3d/app/AlbumSetPage;

    invoke-direct {p0}, Lcom/android/gallery3d/ui/GLView;-><init>()V

    .line 258
    const/16 v0, 0x10

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/android/gallery3d/app/AlbumSetPage$2;->mMatrix:[F

    return-void
.end method


# virtual methods
.method protected onLayout(ZIIII)V
    .locals 18
    .parameter "changed"
    .parameter "left"
    .parameter "top"
    .parameter "right"
    .parameter "bottom"

    .prologue
    .line 263
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/gallery3d/app/AlbumSetPage$2;->this$0:Lcom/android/gallery3d/app/AlbumSetPage;

    #getter for: Lcom/android/gallery3d/app/AlbumSetPage;->mEyePosition:Lcom/android/gallery3d/app/EyePosition;
    invoke-static {v15}, Lcom/android/gallery3d/app/AlbumSetPage;->access$300(Lcom/android/gallery3d/app/AlbumSetPage;)Lcom/android/gallery3d/app/EyePosition;

    move-result-object v15

    invoke-virtual {v15}, Lcom/android/gallery3d/app/EyePosition;->resetPosition()V

    .line 265
    sub-int v5, p5, p3

    .line 266
    .local v5, h:I
    sub-int v14, p4, p2

    .line 267
    .local v14, w:I
    if-le v5, v14, :cond_3

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/gallery3d/app/AlbumSetPage$2;->this$0:Lcom/android/gallery3d/app/AlbumSetPage;

    #getter for: Lcom/android/gallery3d/app/AlbumSetPage;->mToolbarHeightPort:I
    invoke-static {v15}, Lcom/android/gallery3d/app/AlbumSetPage;->access$400(Lcom/android/gallery3d/app/AlbumSetPage;)I

    move-result v9

    .line 268
    .local v9, selectionBarViewHeight:I
    :goto_0
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/gallery3d/app/AlbumSetPage$2;->this$0:Lcom/android/gallery3d/app/AlbumSetPage;

    iget-object v15, v15, Lcom/android/gallery3d/app/ActivityState;->mActivity:Lcom/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v15}, Lcom/android/gallery3d/app/AbstractGalleryActivity;->isFullscreen()Z

    move-result v15

    if-eqz v15, :cond_4

    const/4 v4, 0x0

    .line 269
    .local v4, deltaHeight:I
    :goto_1
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/gallery3d/app/AlbumSetPage$2;->this$0:Lcom/android/gallery3d/app/AlbumSetPage;

    #getter for: Lcom/android/gallery3d/app/AlbumSetPage;->mTabsBar:Lcom/android/gallery3d/ui/AlbumSetTabsBar;
    invoke-static {v15}, Lcom/android/gallery3d/app/AlbumSetPage;->access$700(Lcom/android/gallery3d/app/AlbumSetPage;)Lcom/android/gallery3d/ui/AlbumSetTabsBar;

    move-result-object v15

    if-eqz v15, :cond_0

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/gallery3d/app/AlbumSetPage$2;->this$0:Lcom/android/gallery3d/app/AlbumSetPage;

    #getter for: Lcom/android/gallery3d/app/AlbumSetPage;->mSelectedAction:I
    invoke-static {v15}, Lcom/android/gallery3d/app/AlbumSetPage;->access$800(Lcom/android/gallery3d/app/AlbumSetPage;)I

    move-result v15

    const/16 v16, 0x80

    move/from16 v0, v16

    if-ne v15, v0, :cond_5

    :cond_0
    const/4 v13, 0x0

    .line 270
    .local v13, tabsbarHeight:I
    :goto_2
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/gallery3d/app/AlbumSetPage$2;->this$0:Lcom/android/gallery3d/app/AlbumSetPage;

    iget-object v15, v15, Lcom/android/gallery3d/app/ActivityState;->mActivity:Lcom/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v15}, Lcom/android/gallery3d/app/AbstractGalleryActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v15

    const v16, 0x7f0b00bd

    invoke-virtual/range {v15 .. v16}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    .line 271
    .local v3, actionbarHeight:I
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/gallery3d/app/AlbumSetPage$2;->this$0:Lcom/android/gallery3d/app/AlbumSetPage;

    #getter for: Lcom/android/gallery3d/app/AlbumSetPage;->mConfig:Lcom/android/gallery3d/app/Config$AlbumSetPage;
    invoke-static {v15}, Lcom/android/gallery3d/app/AlbumSetPage;->access$900(Lcom/android/gallery3d/app/AlbumSetPage;)Lcom/android/gallery3d/app/Config$AlbumSetPage;

    move-result-object v15

    iget v15, v15, Lcom/android/gallery3d/app/Config$AlbumSetPage;->paddingTop:I

    add-int/2addr v15, v3

    add-int/2addr v15, v4

    add-int v12, v15, v13

    .line 274
    .local v12, slotViewTop:I
    sub-int v15, p5, p3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/gallery3d/app/AlbumSetPage$2;->this$0:Lcom/android/gallery3d/app/AlbumSetPage;

    move-object/from16 v16, v0

    #getter for: Lcom/android/gallery3d/app/AlbumSetPage;->mConfig:Lcom/android/gallery3d/app/Config$AlbumSetPage;
    invoke-static/range {v16 .. v16}, Lcom/android/gallery3d/app/AlbumSetPage;->access$900(Lcom/android/gallery3d/app/AlbumSetPage;)Lcom/android/gallery3d/app/Config$AlbumSetPage;

    move-result-object v16

    move-object/from16 v0, v16

    iget v0, v0, Lcom/android/gallery3d/app/Config$AlbumSetPage;->paddingBottom:I

    move/from16 v16, v0

    sub-int v10, v15, v16

    .line 275
    .local v10, slotViewBottom:I
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/gallery3d/app/AlbumSetPage$2;->this$0:Lcom/android/gallery3d/app/AlbumSetPage;

    #getter for: Lcom/android/gallery3d/app/AlbumSetPage;->mToolbarView:Lcom/android/gallery3d/ui/ToolbarView;
    invoke-static {v15}, Lcom/android/gallery3d/app/AlbumSetPage;->access$1000(Lcom/android/gallery3d/app/AlbumSetPage;)Lcom/android/gallery3d/ui/ToolbarView;

    move-result-object v15

    invoke-virtual {v15}, Lcom/android/gallery3d/ui/ToolbarView;->getVisibility()I

    move-result v15

    if-nez v15, :cond_1

    sub-int/2addr v10, v9

    .line 278
    :cond_1
    sub-int v11, p4, p2

    .line 280
    .local v11, slotViewRight:I
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/gallery3d/app/AlbumSetPage$2;->this$0:Lcom/android/gallery3d/app/AlbumSetPage;

    #getter for: Lcom/android/gallery3d/app/AlbumSetPage;->mShowDetails:Z
    invoke-static {v15}, Lcom/android/gallery3d/app/AlbumSetPage;->access$1100(Lcom/android/gallery3d/app/AlbumSetPage;)Z

    move-result v15

    if-eqz v15, :cond_6

    .line 281
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/gallery3d/app/AlbumSetPage$2;->this$0:Lcom/android/gallery3d/app/AlbumSetPage;

    #getter for: Lcom/android/gallery3d/app/AlbumSetPage;->mDetailsHelper:Lcom/android/gallery3d/ui/DetailsHelper;
    invoke-static {v15}, Lcom/android/gallery3d/app/AlbumSetPage;->access$1200(Lcom/android/gallery3d/app/AlbumSetPage;)Lcom/android/gallery3d/ui/DetailsHelper;

    move-result-object v15

    move/from16 v0, p2

    move/from16 v1, p4

    move/from16 v2, p5

    invoke-virtual {v15, v0, v12, v1, v2}, Lcom/android/gallery3d/ui/DetailsHelper;->layout(IIII)V

    .line 286
    :goto_3
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/gallery3d/app/AlbumSetPage$2;->this$0:Lcom/android/gallery3d/app/AlbumSetPage;

    #getter for: Lcom/android/gallery3d/app/AlbumSetPage;->mSelectAllView:Lcom/android/gallery3d/ui/SelectAllView;
    invoke-static {v15}, Lcom/android/gallery3d/app/AlbumSetPage;->access$1400(Lcom/android/gallery3d/app/AlbumSetPage;)Lcom/android/gallery3d/ui/SelectAllView;

    move-result-object v15

    invoke-virtual {v15}, Lcom/android/gallery3d/ui/SelectAllView;->getVisibility()I

    move-result v15

    if-nez v15, :cond_7

    const/4 v6, 0x1

    .line 287
    .local v6, isSelectAllViewVisible:Z
    :goto_4
    if-eqz v6, :cond_2

    .line 288
    add-int v8, v3, v4

    .line 290
    .local v8, selectAllTop:I
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/gallery3d/app/AlbumSetPage$2;->this$0:Lcom/android/gallery3d/app/AlbumSetPage;

    #getter for: Lcom/android/gallery3d/app/AlbumSetPage;->mTabsBar:Lcom/android/gallery3d/ui/AlbumSetTabsBar;
    invoke-static {v15}, Lcom/android/gallery3d/app/AlbumSetPage;->access$700(Lcom/android/gallery3d/app/AlbumSetPage;)Lcom/android/gallery3d/ui/AlbumSetTabsBar;

    move-result-object v15

    if-nez v15, :cond_8

    .line 291
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/gallery3d/app/AlbumSetPage$2;->this$0:Lcom/android/gallery3d/app/AlbumSetPage;

    iget-object v15, v15, Lcom/android/gallery3d/app/ActivityState;->mActivity:Lcom/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v15}, Lcom/android/gallery3d/app/AbstractGalleryActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v15

    const v16, 0x7f0b00b9

    invoke-virtual/range {v15 .. v16}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/gallery3d/app/AlbumSetPage$2;->this$0:Lcom/android/gallery3d/app/AlbumSetPage;

    move-object/from16 v16, v0

    #getter for: Lcom/android/gallery3d/app/AlbumSetPage;->mSelectAllHeight:I
    invoke-static/range {v16 .. v16}, Lcom/android/gallery3d/app/AlbumSetPage;->access$1500(Lcom/android/gallery3d/app/AlbumSetPage;)I

    move-result v16

    add-int v15, v15, v16

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/gallery3d/app/AlbumSetPage$2;->this$0:Lcom/android/gallery3d/app/AlbumSetPage;

    move-object/from16 v16, v0

    #getter for: Lcom/android/gallery3d/app/AlbumSetPage;->mConfig:Lcom/android/gallery3d/app/Config$AlbumSetPage;
    invoke-static/range {v16 .. v16}, Lcom/android/gallery3d/app/AlbumSetPage;->access$900(Lcom/android/gallery3d/app/AlbumSetPage;)Lcom/android/gallery3d/app/Config$AlbumSetPage;

    move-result-object v16

    move-object/from16 v0, v16

    iget v0, v0, Lcom/android/gallery3d/app/Config$AlbumSetPage;->selectAllTopMargin:I

    move/from16 v16, v0

    add-int v7, v15, v16

    .line 296
    .local v7, selectAllBottom:I
    :goto_5
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/gallery3d/app/AlbumSetPage$2;->this$0:Lcom/android/gallery3d/app/AlbumSetPage;

    #getter for: Lcom/android/gallery3d/app/AlbumSetPage;->mSelectAllView:Lcom/android/gallery3d/ui/SelectAllView;
    invoke-static {v15}, Lcom/android/gallery3d/app/AlbumSetPage;->access$1400(Lcom/android/gallery3d/app/AlbumSetPage;)Lcom/android/gallery3d/ui/SelectAllView;

    move-result-object v15

    const/16 v16, 0x0

    move/from16 v0, v16

    invoke-virtual {v15, v0, v8, v11, v7}, Lcom/android/gallery3d/ui/SelectAllView;->layout(IIII)V

    .line 299
    .end local v7           #selectAllBottom:I
    .end local v8           #selectAllTop:I
    :cond_2
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/gallery3d/app/AlbumSetPage$2;->this$0:Lcom/android/gallery3d/app/AlbumSetPage;

    #getter for: Lcom/android/gallery3d/app/AlbumSetPage;->mSlotView:Lcom/android/gallery3d/ui/SlotView;
    invoke-static {v15}, Lcom/android/gallery3d/app/AlbumSetPage;->access$1600(Lcom/android/gallery3d/app/AlbumSetPage;)Lcom/android/gallery3d/ui/SlotView;

    move-result-object v15

    const/16 v16, 0x0

    move/from16 v0, v16

    invoke-virtual {v15, v0, v12, v11, v10}, Lcom/android/gallery3d/ui/SlotView;->layout(IIII)V

    .line 300
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/gallery3d/app/AlbumSetPage$2;->this$0:Lcom/android/gallery3d/app/AlbumSetPage;

    #getter for: Lcom/android/gallery3d/app/AlbumSetPage;->mToolbarView:Lcom/android/gallery3d/ui/ToolbarView;
    invoke-static {v15}, Lcom/android/gallery3d/app/AlbumSetPage;->access$1000(Lcom/android/gallery3d/app/AlbumSetPage;)Lcom/android/gallery3d/ui/ToolbarView;

    move-result-object v15

    const/16 v16, 0x0

    sub-int v17, p5, v9

    move/from16 v0, v16

    move/from16 v1, v17

    move/from16 v2, p5

    invoke-virtual {v15, v0, v1, v11, v2}, Lcom/android/gallery3d/ui/ToolbarView;->layout(IIII)V

    .line 301
    return-void

    .line 267
    .end local v3           #actionbarHeight:I
    .end local v4           #deltaHeight:I
    .end local v6           #isSelectAllViewVisible:Z
    .end local v9           #selectionBarViewHeight:I
    .end local v10           #slotViewBottom:I
    .end local v11           #slotViewRight:I
    .end local v12           #slotViewTop:I
    .end local v13           #tabsbarHeight:I
    :cond_3
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/gallery3d/app/AlbumSetPage$2;->this$0:Lcom/android/gallery3d/app/AlbumSetPage;

    #getter for: Lcom/android/gallery3d/app/AlbumSetPage;->mToolbarHeightLand:I
    invoke-static {v15}, Lcom/android/gallery3d/app/AlbumSetPage;->access$500(Lcom/android/gallery3d/app/AlbumSetPage;)I

    move-result v9

    goto/16 :goto_0

    .line 268
    .restart local v9       #selectionBarViewHeight:I
    :cond_4
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/gallery3d/app/AlbumSetPage$2;->this$0:Lcom/android/gallery3d/app/AlbumSetPage;

    #getter for: Lcom/android/gallery3d/app/AlbumSetPage;->mStatusBarHeight:I
    invoke-static {v15}, Lcom/android/gallery3d/app/AlbumSetPage;->access$600(Lcom/android/gallery3d/app/AlbumSetPage;)I

    move-result v4

    goto/16 :goto_1

    .line 269
    .restart local v4       #deltaHeight:I
    :cond_5
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/gallery3d/app/AlbumSetPage$2;->this$0:Lcom/android/gallery3d/app/AlbumSetPage;

    #getter for: Lcom/android/gallery3d/app/AlbumSetPage;->mConfig:Lcom/android/gallery3d/app/Config$AlbumSetPage;
    invoke-static {v15}, Lcom/android/gallery3d/app/AlbumSetPage;->access$900(Lcom/android/gallery3d/app/AlbumSetPage;)Lcom/android/gallery3d/app/Config$AlbumSetPage;

    move-result-object v15

    iget v13, v15, Lcom/android/gallery3d/app/Config$AlbumSetPage;->tabsbarHeight:I

    goto/16 :goto_2

    .line 283
    .restart local v3       #actionbarHeight:I
    .restart local v10       #slotViewBottom:I
    .restart local v11       #slotViewRight:I
    .restart local v12       #slotViewTop:I
    .restart local v13       #tabsbarHeight:I
    :cond_6
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/gallery3d/app/AlbumSetPage$2;->this$0:Lcom/android/gallery3d/app/AlbumSetPage;

    #getter for: Lcom/android/gallery3d/app/AlbumSetPage;->mAlbumSetView:Lcom/android/gallery3d/ui/AlbumSetSlotRenderer;
    invoke-static {v15}, Lcom/android/gallery3d/app/AlbumSetPage;->access$1300(Lcom/android/gallery3d/app/AlbumSetPage;)Lcom/android/gallery3d/ui/AlbumSetSlotRenderer;

    move-result-object v15

    const/16 v16, 0x0

    invoke-virtual/range {v15 .. v16}, Lcom/android/gallery3d/ui/AlbumSetSlotRenderer;->setHighlightItemPath(Lcom/android/gallery3d/data/Path;)V

    goto/16 :goto_3

    .line 286
    :cond_7
    const/4 v6, 0x0

    goto/16 :goto_4

    .line 294
    .restart local v6       #isSelectAllViewVisible:Z
    .restart local v8       #selectAllTop:I
    :cond_8
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/gallery3d/app/AlbumSetPage$2;->this$0:Lcom/android/gallery3d/app/AlbumSetPage;

    iget-object v15, v15, Lcom/android/gallery3d/app/ActivityState;->mActivity:Lcom/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v15}, Lcom/android/gallery3d/app/AbstractGalleryActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v15

    const v16, 0x7f0b00b9

    invoke-virtual/range {v15 .. v16}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/gallery3d/app/AlbumSetPage$2;->this$0:Lcom/android/gallery3d/app/AlbumSetPage;

    move-object/from16 v16, v0

    #getter for: Lcom/android/gallery3d/app/AlbumSetPage;->mTabsBar:Lcom/android/gallery3d/ui/AlbumSetTabsBar;
    invoke-static/range {v16 .. v16}, Lcom/android/gallery3d/app/AlbumSetPage;->access$700(Lcom/android/gallery3d/app/AlbumSetPage;)Lcom/android/gallery3d/ui/AlbumSetTabsBar;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Lcom/android/gallery3d/ui/AlbumSetTabsBar;->getHeight()I

    move-result v16

    add-int v7, v15, v16

    .restart local v7       #selectAllBottom:I
    goto/16 :goto_5
.end method

.method protected render(Lcom/android/gallery3d/ui/GLCanvas;)V
    .locals 6
    .parameter "canvas"

    .prologue
    const-wide/high16 v4, 0x4000

    .line 305
    const/4 v0, 0x2

    invoke-interface {p1, v0}, Lcom/android/gallery3d/ui/GLCanvas;->save(I)V

    .line 306
    iget-object v0, p0, Lcom/android/gallery3d/app/AlbumSetPage$2;->mMatrix:[F

    invoke-virtual {p0}, Lcom/android/gallery3d/app/AlbumSetPage$2;->getWidth()I

    move-result v1

    int-to-double v1, v1

    div-double/2addr v1, v4

    double-to-int v1, v1

    int-to-float v1, v1

    iget-object v2, p0, Lcom/android/gallery3d/app/AlbumSetPage$2;->this$0:Lcom/android/gallery3d/app/AlbumSetPage;

    #getter for: Lcom/android/gallery3d/app/AlbumSetPage;->mX:F
    invoke-static {v2}, Lcom/android/gallery3d/app/AlbumSetPage;->access$1700(Lcom/android/gallery3d/app/AlbumSetPage;)F

    move-result v2

    add-float/2addr v1, v2

    invoke-virtual {p0}, Lcom/android/gallery3d/app/AlbumSetPage$2;->getHeight()I

    move-result v2

    int-to-double v2, v2

    div-double/2addr v2, v4

    double-to-int v2, v2

    int-to-float v2, v2

    iget-object v3, p0, Lcom/android/gallery3d/app/AlbumSetPage$2;->this$0:Lcom/android/gallery3d/app/AlbumSetPage;

    #getter for: Lcom/android/gallery3d/app/AlbumSetPage;->mY:F
    invoke-static {v3}, Lcom/android/gallery3d/app/AlbumSetPage;->access$1800(Lcom/android/gallery3d/app/AlbumSetPage;)F

    move-result v3

    add-float/2addr v2, v3

    iget-object v3, p0, Lcom/android/gallery3d/app/AlbumSetPage$2;->this$0:Lcom/android/gallery3d/app/AlbumSetPage;

    #getter for: Lcom/android/gallery3d/app/AlbumSetPage;->mZ:F
    invoke-static {v3}, Lcom/android/gallery3d/app/AlbumSetPage;->access$1900(Lcom/android/gallery3d/app/AlbumSetPage;)F

    move-result v3

    invoke-static {v0, v1, v2, v3}, Lcom/android/gallery3d/util/GalleryUtils;->setViewPointMatrix([FFFF)V

    .line 308
    iget-object v0, p0, Lcom/android/gallery3d/app/AlbumSetPage$2;->mMatrix:[F

    const/4 v1, 0x0

    invoke-interface {p1, v0, v1}, Lcom/android/gallery3d/ui/GLCanvas;->multiplyMatrix([FI)V

    .line 309
    invoke-super {p0, p1}, Lcom/android/gallery3d/ui/GLView;->render(Lcom/android/gallery3d/ui/GLCanvas;)V

    .line 310
    invoke-interface {p1}, Lcom/android/gallery3d/ui/GLCanvas;->restore()V

    .line 311
    return-void
.end method
