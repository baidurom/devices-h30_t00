.class public Lcom/android/gallery3d/ui/AlbumSlotRenderer;
.super Lcom/android/gallery3d/ui/AbstractSlotRenderer;
.source "AlbumSlotRenderer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/gallery3d/ui/AlbumSlotRenderer$1;,
        Lcom/android/gallery3d/ui/AlbumSlotRenderer$MyDataModelListener;,
        Lcom/android/gallery3d/ui/AlbumSlotRenderer$SlotFilter;
    }
.end annotation


# static fields
.field private static final CACHE_SIZE:I = 0x60

.field private static final TAG:Ljava/lang/String; = "AlbumView"


# instance fields
.field private final mActivity:Lcom/android/gallery3d/app/AbstractGalleryActivity;

.field private mAnimatePressedUp:Z

.field private final mCheckedFrameMask:Lcom/android/gallery3d/ui/NinePatchTexture;

.field private mDataWindow:Lcom/android/gallery3d/ui/AlbumSlidingWindow;

.field private mFocusIndex:I

.field private final mFramePhoto:Lcom/android/gallery3d/ui/NinePatchTexture;

.field private mHighlightItemPath:Lcom/android/gallery3d/data/Path;

.field private mInSelectionMode:Z

.field private mPhotoHeight:I

.field private final mPhotoShareNewFlagPhoto:Lcom/android/gallery3d/ui/ResourceTexture;

.field private mPhotoWidth:I

.field private final mPlaceholderColor:I

.field private mPressedIndex:I

.field private final mSelectionManager:Lcom/android/gallery3d/ui/SelectionManager;

.field private mSlotFilter:Lcom/android/gallery3d/ui/AlbumSlotRenderer$SlotFilter;

.field private final mSlotView:Lcom/android/gallery3d/ui/SlotView;

.field private mUpdateFocus:Z

.field private final mWaitLoadingTexture:Lcom/android/gallery3d/ui/ColorTexture;


# direct methods
.method public constructor <init>(Lcom/android/gallery3d/app/AbstractGalleryActivity;Lcom/android/gallery3d/ui/SlotView;Lcom/android/gallery3d/ui/SelectionManager;I)V
    .locals 4
    .parameter "activity"
    .parameter "slotView"
    .parameter "selectionManager"
    .parameter "placeholderColor"

    .prologue
    const/4 v3, 0x1

    const/4 v2, -0x1

    .line 67
    invoke-direct {p0, p1}, Lcom/android/gallery3d/ui/AbstractSlotRenderer;-><init>(Landroid/content/Context;)V

    .line 47
    iput v2, p0, Lcom/android/gallery3d/ui/AlbumSlotRenderer;->mPressedIndex:I

    .line 49
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/gallery3d/ui/AlbumSlotRenderer;->mHighlightItemPath:Lcom/android/gallery3d/data/Path;

    .line 61
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/gallery3d/ui/AlbumSlotRenderer;->mUpdateFocus:Z

    .line 62
    iput v2, p0, Lcom/android/gallery3d/ui/AlbumSlotRenderer;->mFocusIndex:I

    .line 68
    iput-object p1, p0, Lcom/android/gallery3d/ui/AlbumSlotRenderer;->mActivity:Lcom/android/gallery3d/app/AbstractGalleryActivity;

    .line 69
    iput-object p2, p0, Lcom/android/gallery3d/ui/AlbumSlotRenderer;->mSlotView:Lcom/android/gallery3d/ui/SlotView;

    .line 70
    iput-object p3, p0, Lcom/android/gallery3d/ui/AlbumSlotRenderer;->mSelectionManager:Lcom/android/gallery3d/ui/SelectionManager;

    .line 71
    iput p4, p0, Lcom/android/gallery3d/ui/AlbumSlotRenderer;->mPlaceholderColor:I

    .line 73
    new-instance v1, Lcom/android/gallery3d/ui/ColorTexture;

    iget v2, p0, Lcom/android/gallery3d/ui/AlbumSlotRenderer;->mPlaceholderColor:I

    invoke-direct {v1, v2}, Lcom/android/gallery3d/ui/ColorTexture;-><init>(I)V

    iput-object v1, p0, Lcom/android/gallery3d/ui/AlbumSlotRenderer;->mWaitLoadingTexture:Lcom/android/gallery3d/ui/ColorTexture;

    .line 74
    iget-object v1, p0, Lcom/android/gallery3d/ui/AlbumSlotRenderer;->mWaitLoadingTexture:Lcom/android/gallery3d/ui/ColorTexture;

    invoke-virtual {v1, v3, v3}, Lcom/android/gallery3d/ui/ColorTexture;->setSize(II)V

    .line 76
    invoke-virtual {p1}, Lcom/android/gallery3d/app/AbstractGalleryActivity;->getAndroidContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 77
    .local v0, r:Landroid/content/res/Resources;
    const v1, 0x7f0b0091

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/android/gallery3d/ui/AlbumSlotRenderer;->mPhotoWidth:I

    .line 78
    const v1, 0x7f0b0092

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/android/gallery3d/ui/AlbumSlotRenderer;->mPhotoHeight:I

    .line 80
    new-instance v1, Lcom/android/gallery3d/ui/NinePatchTexture;

    invoke-virtual {p1}, Lcom/android/gallery3d/app/AbstractGalleryActivity;->getAndroidContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f0202c5

    invoke-direct {v1, v2, v3}, Lcom/android/gallery3d/ui/NinePatchTexture;-><init>(Landroid/content/Context;I)V

    iput-object v1, p0, Lcom/android/gallery3d/ui/AlbumSlotRenderer;->mFramePhoto:Lcom/android/gallery3d/ui/NinePatchTexture;

    .line 81
    new-instance v1, Lcom/android/gallery3d/ui/ThemeableNinePatchTexture;

    invoke-virtual {p1}, Lcom/android/gallery3d/app/AbstractGalleryActivity;->getAndroidContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f0202c7

    invoke-direct {v1, v2, v3}, Lcom/android/gallery3d/ui/ThemeableNinePatchTexture;-><init>(Landroid/content/Context;I)V

    iput-object v1, p0, Lcom/android/gallery3d/ui/AlbumSlotRenderer;->mCheckedFrameMask:Lcom/android/gallery3d/ui/NinePatchTexture;

    .line 82
    new-instance v1, Lcom/android/gallery3d/ui/ResourceTexture;

    invoke-virtual {p1}, Lcom/android/gallery3d/app/AbstractGalleryActivity;->getAndroidContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f0202aa

    invoke-direct {v1, v2, v3}, Lcom/android/gallery3d/ui/ResourceTexture;-><init>(Landroid/content/Context;I)V

    iput-object v1, p0, Lcom/android/gallery3d/ui/AlbumSlotRenderer;->mPhotoShareNewFlagPhoto:Lcom/android/gallery3d/ui/ResourceTexture;

    .line 83
    return-void
.end method

.method static synthetic access$100(Lcom/android/gallery3d/ui/AlbumSlotRenderer;)Lcom/android/gallery3d/ui/SlotView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 30
    iget-object v0, p0, Lcom/android/gallery3d/ui/AlbumSlotRenderer;->mSlotView:Lcom/android/gallery3d/ui/SlotView;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/gallery3d/ui/AlbumSlotRenderer;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 30
    iget-boolean v0, p0, Lcom/android/gallery3d/ui/AlbumSlotRenderer;->mUpdateFocus:Z

    return v0
.end method

.method static synthetic access$300(Lcom/android/gallery3d/ui/AlbumSlotRenderer;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 30
    iget v0, p0, Lcom/android/gallery3d/ui/AlbumSlotRenderer;->mFocusIndex:I

    return v0
.end method

.method private static checkTexture(Lcom/android/gallery3d/ui/Texture;)Lcom/android/gallery3d/ui/Texture;
    .locals 1
    .parameter "texture"

    .prologue
    .line 129
    instance-of v0, p0, Lcom/android/gallery3d/ui/TiledTexture;

    if-eqz v0, :cond_0

    move-object v0, p0

    check-cast v0, Lcom/android/gallery3d/ui/TiledTexture;

    invoke-virtual {v0}, Lcom/android/gallery3d/ui/TiledTexture;->isReady()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    .end local p0
    :cond_0
    return-object p0
.end method

.method private isSelectedStatus(Lcom/android/gallery3d/ui/AlbumSlidingWindow$AlbumEntry;)Z
    .locals 3
    .parameter "entry"

    .prologue
    const/4 v0, 0x1

    .line 300
    iget-object v1, p0, Lcom/android/gallery3d/ui/AlbumSlotRenderer;->mHighlightItemPath:Lcom/android/gallery3d/data/Path;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/gallery3d/ui/AlbumSlotRenderer;->mHighlightItemPath:Lcom/android/gallery3d/data/Path;

    iget-object v2, p1, Lcom/android/gallery3d/ui/AlbumSlidingWindow$AlbumEntry;->path:Lcom/android/gallery3d/data/Path;

    if-ne v1, v2, :cond_1

    .line 305
    :cond_0
    :goto_0
    return v0

    .line 302
    :cond_1
    iget-boolean v1, p0, Lcom/android/gallery3d/ui/AlbumSlotRenderer;->mInSelectionMode:Z

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/gallery3d/ui/AlbumSlotRenderer;->mSelectionManager:Lcom/android/gallery3d/ui/SelectionManager;

    iget-object v2, p1, Lcom/android/gallery3d/ui/AlbumSlidingWindow$AlbumEntry;->path:Lcom/android/gallery3d/data/Path;

    invoke-virtual {v1, v2}, Lcom/android/gallery3d/ui/SelectionManager;->isItemSelected(Lcom/android/gallery3d/data/Path;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 305
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public onSlotSizeChanged(II)V
    .locals 0
    .parameter "width"
    .parameter "height"

    .prologue
    .line 293
    return-void
.end method

.method public onVisibleRangeChanged(II)V
    .locals 1
    .parameter "visibleStart"
    .parameter "visibleEnd"

    .prologue
    .line 285
    iget-object v0, p0, Lcom/android/gallery3d/ui/AlbumSlotRenderer;->mDataWindow:Lcom/android/gallery3d/ui/AlbumSlidingWindow;

    if-eqz v0, :cond_0

    .line 286
    iget-object v0, p0, Lcom/android/gallery3d/ui/AlbumSlotRenderer;->mDataWindow:Lcom/android/gallery3d/ui/AlbumSlidingWindow;

    invoke-virtual {v0, p1, p2}, Lcom/android/gallery3d/ui/AlbumSlidingWindow;->setActiveWindow(II)V

    .line 288
    :cond_0
    return-void
.end method

.method public pause()V
    .locals 1

    .prologue
    .line 275
    iget-object v0, p0, Lcom/android/gallery3d/ui/AlbumSlotRenderer;->mDataWindow:Lcom/android/gallery3d/ui/AlbumSlidingWindow;

    invoke-virtual {v0}, Lcom/android/gallery3d/ui/AlbumSlidingWindow;->pause()V

    .line 276
    return-void
.end method

.method public prepareDrawing()V
    .locals 1

    .prologue
    .line 280
    iget-object v0, p0, Lcom/android/gallery3d/ui/AlbumSlotRenderer;->mSelectionManager:Lcom/android/gallery3d/ui/SelectionManager;

    invoke-virtual {v0}, Lcom/android/gallery3d/ui/SelectionManager;->inSelectionMode()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/gallery3d/ui/AlbumSlotRenderer;->mInSelectionMode:Z

    .line 281
    return-void
.end method

.method public renderSlot(Lcom/android/gallery3d/ui/GLCanvas;IIII)I
    .locals 27
    .parameter "canvas"
    .parameter "index"
    .parameter "pass"
    .parameter "width"
    .parameter "height"

    .prologue
    .line 137
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/gallery3d/ui/AlbumSlotRenderer;->mSlotFilter:Lcom/android/gallery3d/ui/AlbumSlotRenderer$SlotFilter;

    if-eqz v3, :cond_0

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/gallery3d/ui/AlbumSlotRenderer;->mSlotFilter:Lcom/android/gallery3d/ui/AlbumSlotRenderer$SlotFilter;

    move/from16 v0, p2

    invoke-interface {v3, v0}, Lcom/android/gallery3d/ui/AlbumSlotRenderer$SlotFilter;->acceptSlot(I)Z

    move-result v3

    if-eqz v3, :cond_1

    :cond_0
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/gallery3d/ui/AlbumSlotRenderer;->mDataWindow:Lcom/android/gallery3d/ui/AlbumSlidingWindow;

    move/from16 v0, p2

    invoke-virtual {v3, v0}, Lcom/android/gallery3d/ui/AlbumSlidingWindow;->isActiveSlot(I)Z

    move-result v3

    if-nez v3, :cond_2

    .line 139
    :cond_1
    const/16 v23, 0x0

    .line 243
    :goto_0
    return v23

    .line 141
    :cond_2
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/gallery3d/ui/AlbumSlotRenderer;->mDataWindow:Lcom/android/gallery3d/ui/AlbumSlidingWindow;

    move/from16 v0, p2

    invoke-virtual {v3, v0}, Lcom/android/gallery3d/ui/AlbumSlidingWindow;->get(I)Lcom/android/gallery3d/ui/AlbumSlidingWindow$AlbumEntry;

    move-result-object v16

    .line 143
    .local v16, entry:Lcom/android/gallery3d/ui/AlbumSlidingWindow$AlbumEntry;
    const/16 v23, 0x0

    .line 145
    .local v23, renderRequestFlags:I
    move-object/from16 v0, v16

    iget-object v5, v0, Lcom/android/gallery3d/ui/AlbumSlidingWindow$AlbumEntry;->content:Lcom/android/gallery3d/ui/Texture;

    .line 146
    .local v5, content:Lcom/android/gallery3d/ui/Texture;
    if-nez v5, :cond_b

    .line 147
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/gallery3d/ui/AlbumSlotRenderer;->mWaitLoadingTexture:Lcom/android/gallery3d/ui/ColorTexture;

    .line 148
    const/4 v3, 0x1

    move-object/from16 v0, v16

    iput-boolean v3, v0, Lcom/android/gallery3d/ui/AlbumSlidingWindow$AlbumEntry;->isWaitDisplayed:Z

    .line 154
    :cond_3
    :goto_1
    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/gallery3d/ui/AlbumSlotRenderer;->mPhotoWidth:I

    .line 155
    .local v6, w:I
    move-object/from16 v0, p0

    iget v7, v0, Lcom/android/gallery3d/ui/AlbumSlotRenderer;->mPhotoHeight:I

    .line 156
    .local v7, h:I
    sub-int v3, p4, v6

    div-int/lit8 v20, v3, 0x2

    .line 157
    .local v20, left:I
    sub-int v3, p5, v7

    div-int/lit8 v26, v3, 0x2

    .line 158
    .local v26, top:I
    move/from16 v0, v20

    int-to-float v3, v0

    move/from16 v0, v26

    int-to-float v4, v0

    move-object/from16 v0, p1

    invoke-interface {v0, v3, v4}, Lcom/android/gallery3d/ui/GLCanvas;->translate(FF)V

    .line 159
    move-object/from16 v0, v16

    iget v8, v0, Lcom/android/gallery3d/ui/AlbumSlidingWindow$AlbumEntry;->rotation:I

    move-object/from16 v3, p0

    move-object/from16 v4, p1

    invoke-virtual/range {v3 .. v8}, Lcom/android/gallery3d/ui/AlbumSlotRenderer;->drawContent(Lcom/android/gallery3d/ui/GLCanvas;Lcom/android/gallery3d/ui/Texture;III)V

    .line 161
    instance-of v3, v5, Lcom/android/gallery3d/ui/FadeInTexture;

    if-eqz v3, :cond_4

    check-cast v5, Lcom/android/gallery3d/ui/FadeInTexture;

    .end local v5           #content:Lcom/android/gallery3d/ui/Texture;
    invoke-virtual {v5}, Lcom/android/gallery3d/ui/FadeInTexture;->isAnimating()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 163
    or-int/lit8 v23, v23, 0x2

    .line 166
    :cond_4
    move-object/from16 v0, v16

    iget v3, v0, Lcom/android/gallery3d/ui/AlbumSlidingWindow$AlbumEntry;->mediaType:I

    const/4 v4, 0x4

    if-ne v3, v4, :cond_5

    .line 167
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v0, v1, v6, v7}, Lcom/android/gallery3d/ui/AlbumSlotRenderer;->drawVideoOverlay(Lcom/android/gallery3d/ui/GLCanvas;II)V

    .line 170
    :cond_5
    move-object/from16 v0, v16

    iget-boolean v3, v0, Lcom/android/gallery3d/ui/AlbumSlidingWindow$AlbumEntry;->isPanorama:Z

    if-eqz v3, :cond_6

    .line 171
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v0, v1, v6, v7}, Lcom/android/gallery3d/ui/AlbumSlotRenderer;->drawPanoramaIcon(Lcom/android/gallery3d/ui/GLCanvas;II)V

    .line 175
    :cond_6
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/gallery3d/ui/AlbumSlotRenderer;->mActivity:Lcom/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v3}, Lcom/android/gallery3d/app/AbstractGalleryActivity;->getAndroidContext()Landroid/content/Context;

    move-result-object v3

    move-object/from16 v0, v16

    iget v4, v0, Lcom/android/gallery3d/ui/AlbumSlidingWindow$AlbumEntry;->subType:I

    move-object/from16 v0, p1

    move/from16 v1, p4

    move/from16 v2, p5

    invoke-static {v3, v0, v1, v2, v4}, Lcom/android/gallery3d/util/GalleryUtils;->renderSubTypeOverlay(Landroid/content/Context;Lcom/android/gallery3d/ui/GLCanvas;III)V

    .line 178
    move-object/from16 v0, v16

    iget-boolean v3, v0, Lcom/android/gallery3d/ui/AlbumSlidingWindow$AlbumEntry;->isVoiceImage:Z

    if-eqz v3, :cond_7

    .line 179
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v0, v1, v6, v7}, Lcom/android/gallery3d/ui/AlbumSlotRenderer;->drawVoiceImageIcon(Lcom/android/gallery3d/ui/GLCanvas;II)V

    .line 181
    :cond_7
    move/from16 v0, v20

    neg-int v3, v0

    int-to-float v3, v3

    move/from16 v0, v26

    neg-int v4, v0

    int-to-float v4, v4

    move-object/from16 v0, p1

    invoke-interface {v0, v3, v4}, Lcom/android/gallery3d/ui/GLCanvas;->translate(FF)V

    .line 182
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/gallery3d/ui/AlbumSlotRenderer;->mFramePhoto:Lcom/android/gallery3d/ui/NinePatchTexture;

    move-object/from16 v17, v0

    .line 183
    .local v17, frame:Lcom/android/gallery3d/ui/Texture;
    move/from16 v6, p4

    .line 184
    move/from16 v7, p5

    .line 185
    sub-int v3, p4, v6

    div-int/lit8 v20, v3, 0x2

    .line 186
    sub-int v3, p5, v7

    div-int/lit8 v26, v3, 0x2

    .line 187
    move/from16 v0, v20

    int-to-float v3, v0

    move/from16 v0, v26

    int-to-float v4, v0

    move-object/from16 v0, p1

    invoke-interface {v0, v3, v4}, Lcom/android/gallery3d/ui/GLCanvas;->translate(FF)V

    .line 188
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/gallery3d/ui/AlbumSlotRenderer;->mFramePhoto:Lcom/android/gallery3d/ui/NinePatchTexture;

    invoke-virtual {v3}, Lcom/android/gallery3d/ui/NinePatchTexture;->getPaddings()Landroid/graphics/Rect;

    move-result-object v9

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/gallery3d/ui/AlbumSlotRenderer;->mFramePhoto:Lcom/android/gallery3d/ui/NinePatchTexture;

    const/4 v11, 0x0

    const/4 v12, 0x0

    move-object/from16 v8, p1

    move v13, v6

    move v14, v7

    invoke-static/range {v8 .. v14}, Lcom/android/gallery3d/ui/AlbumSlotRenderer;->drawFrame(Lcom/android/gallery3d/ui/GLCanvas;Landroid/graphics/Rect;Lcom/android/gallery3d/ui/Texture;IIII)V

    .line 190
    move-object/from16 v0, v16

    iget-object v3, v0, Lcom/android/gallery3d/ui/AlbumSlidingWindow$AlbumEntry;->item:Lcom/android/gallery3d/data/MediaItem;

    if-eqz v3, :cond_8

    const-string v3, "photoshare"

    move-object/from16 v0, v16

    iget-object v4, v0, Lcom/android/gallery3d/ui/AlbumSlidingWindow$AlbumEntry;->item:Lcom/android/gallery3d/data/MediaItem;

    invoke-virtual {v4}, Lcom/android/gallery3d/data/MediaItem;->getPath()Lcom/android/gallery3d/data/Path;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/gallery3d/data/Path;->getPrefix()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 191
    move-object/from16 v0, v16

    iget-object v3, v0, Lcom/android/gallery3d/ui/AlbumSlidingWindow$AlbumEntry;->item:Lcom/android/gallery3d/data/MediaItem;

    check-cast v3, Lcom/android/gallery3d/data/PhotoShareImage;

    check-cast v3, Lcom/android/gallery3d/data/PhotoShareImage;

    invoke-virtual {v3}, Lcom/android/gallery3d/data/PhotoShareImage;->getIsNew()Z

    move-result v3

    if-eqz v3, :cond_8

    .line 192
    move/from16 v0, v20

    neg-int v3, v0

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/gallery3d/ui/AlbumSlotRenderer;->mPhotoWidth:I

    sub-int v4, p4, v4

    div-int/lit8 v4, v4, 0x2

    add-int v21, v3, v4

    .line 193
    .local v21, newFlagLeft:I
    move/from16 v0, v26

    neg-int v3, v0

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/gallery3d/ui/AlbumSlotRenderer;->mPhotoHeight:I

    sub-int v4, p5, v4

    div-int/lit8 v4, v4, 0x2

    add-int v22, v3, v4

    .line 194
    .local v22, newFlagTop:I
    move/from16 v0, v21

    int-to-float v3, v0

    move/from16 v0, v22

    int-to-float v4, v0

    move-object/from16 v0, p1

    invoke-interface {v0, v3, v4}, Lcom/android/gallery3d/ui/GLCanvas;->translate(FF)V

    .line 195
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/gallery3d/ui/AlbumSlotRenderer;->mPhotoShareNewFlagPhoto:Lcom/android/gallery3d/ui/ResourceTexture;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/gallery3d/ui/AlbumSlotRenderer;->mPhotoShareNewFlagPhoto:Lcom/android/gallery3d/ui/ResourceTexture;

    invoke-virtual {v3}, Lcom/android/gallery3d/ui/ResourceTexture;->getWidth()I

    move-result v11

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/gallery3d/ui/AlbumSlotRenderer;->mPhotoShareNewFlagPhoto:Lcom/android/gallery3d/ui/ResourceTexture;

    invoke-virtual {v3}, Lcom/android/gallery3d/ui/ResourceTexture;->getHeight()I

    move-result v12

    const/4 v13, 0x0

    move-object/from16 v8, p0

    move-object/from16 v9, p1

    invoke-virtual/range {v8 .. v13}, Lcom/android/gallery3d/ui/AlbumSlotRenderer;->drawContent(Lcom/android/gallery3d/ui/GLCanvas;Lcom/android/gallery3d/ui/Texture;III)V

    .line 197
    move/from16 v0, v21

    neg-int v3, v0

    int-to-float v3, v3

    move/from16 v0, v22

    neg-int v4, v0

    int-to-float v4, v4

    move-object/from16 v0, p1

    invoke-interface {v0, v3, v4}, Lcom/android/gallery3d/ui/GLCanvas;->translate(FF)V

    .line 201
    .end local v21           #newFlagLeft:I
    .end local v22           #newFlagTop:I
    :cond_8
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/gallery3d/ui/AlbumSlotRenderer;->mSelectionManager:Lcom/android/gallery3d/ui/SelectionManager;

    invoke-virtual {v3}, Lcom/android/gallery3d/ui/SelectionManager;->inSelectionMode()Z

    move-result v3

    if-eqz v3, :cond_a

    .line 202
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/gallery3d/ui/AlbumSlotRenderer;->mPressedIndex:I

    move/from16 v0, p2

    if-ne v3, v0, :cond_9

    .line 203
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/gallery3d/ui/AlbumSlotRenderer;->mAnimatePressedUp:Z

    if-eqz v3, :cond_9

    .line 204
    invoke-virtual/range {p0 .. p0}, Lcom/android/gallery3d/ui/AlbumSlotRenderer;->isPressedUpFrameFinished()Z

    move-result v3

    if-eqz v3, :cond_9

    .line 205
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/android/gallery3d/ui/AlbumSlotRenderer;->mAnimatePressedUp:Z

    .line 206
    const/4 v3, -0x1

    move-object/from16 v0, p0

    iput v3, v0, Lcom/android/gallery3d/ui/AlbumSlotRenderer;->mPressedIndex:I

    .line 211
    :cond_9
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-direct {v0, v1}, Lcom/android/gallery3d/ui/AlbumSlotRenderer;->isSelectedStatus(Lcom/android/gallery3d/ui/AlbumSlidingWindow$AlbumEntry;)Z

    move-result v24

    .line 218
    .local v24, selected:Z
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/gallery3d/ui/AlbumSlotRenderer;->mSelectionManager:Lcom/android/gallery3d/ui/SelectionManager;

    invoke-virtual {v3}, Lcom/android/gallery3d/ui/SelectionManager;->inSingleMode()Z

    move-result v25

    .line 219
    .local v25, singleSelectMode:Z
    if-eqz v24, :cond_f

    .line 220
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/gallery3d/ui/AlbumSlotRenderer;->mPressedIndex:I

    move/from16 v0, p2

    if-ne v3, v0, :cond_d

    .line 221
    if-eqz v25, :cond_c

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/gallery3d/ui/AbstractSlotRenderer;->mRadioOnPressedIcon:Lcom/android/gallery3d/ui/ResourceTexture;

    .local v10, checkedFrameIcon:Lcom/android/gallery3d/ui/Texture;
    :goto_2
    move-object v15, v10

    .line 225
    .end local v10           #checkedFrameIcon:Lcom/android/gallery3d/ui/Texture;
    .local v15, checkedFrameIcon:Lcom/android/gallery3d/ui/ResourceTexture;
    :goto_3
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/gallery3d/ui/AlbumSlotRenderer;->mCheckedFrameMask:Lcom/android/gallery3d/ui/NinePatchTexture;

    invoke-virtual {v3}, Lcom/android/gallery3d/ui/NinePatchTexture;->getPaddings()Landroid/graphics/Rect;

    move-result-object v9

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/gallery3d/ui/AlbumSlotRenderer;->mCheckedFrameMask:Lcom/android/gallery3d/ui/NinePatchTexture;

    const/4 v11, 0x0

    const/4 v12, 0x0

    move-object/from16 v8, p1

    move v13, v6

    move v14, v7

    invoke-static/range {v8 .. v14}, Lcom/android/gallery3d/ui/AlbumSlotRenderer;->drawFrame(Lcom/android/gallery3d/ui/GLCanvas;Landroid/graphics/Rect;Lcom/android/gallery3d/ui/Texture;IIII)V

    move-object v10, v15

    .line 234
    .end local v15           #checkedFrameIcon:Lcom/android/gallery3d/ui/ResourceTexture;
    :goto_4
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/gallery3d/ui/AlbumSlotRenderer;->mPhotoHeight:I

    sub-int v3, v7, v3

    div-int/lit8 v19, v3, 0x2

    .line 235
    .local v19, iconTop:I
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/gallery3d/ui/AlbumSlotRenderer;->mPhotoWidth:I

    add-int/2addr v3, v6

    div-int/lit8 v3, v3, 0x2

    invoke-interface {v10}, Lcom/android/gallery3d/ui/Texture;->getWidth()I

    move-result v4

    sub-int v18, v3, v4

    .line 237
    .local v18, iconLeft:I
    move/from16 v0, v18

    int-to-float v3, v0

    move/from16 v0, v19

    int-to-float v4, v0

    move-object/from16 v0, p1

    invoke-interface {v0, v3, v4}, Lcom/android/gallery3d/ui/GLCanvas;->translate(FF)V

    .line 238
    invoke-interface {v10}, Lcom/android/gallery3d/ui/Texture;->getWidth()I

    move-result v11

    invoke-interface {v10}, Lcom/android/gallery3d/ui/Texture;->getHeight()I

    move-result v12

    const/4 v13, 0x0

    move-object/from16 v8, p0

    move-object/from16 v9, p1

    invoke-virtual/range {v8 .. v13}, Lcom/android/gallery3d/ui/AlbumSlotRenderer;->drawContent(Lcom/android/gallery3d/ui/GLCanvas;Lcom/android/gallery3d/ui/Texture;III)V

    .line 239
    move/from16 v0, v18

    neg-int v3, v0

    int-to-float v3, v3

    move/from16 v0, v19

    neg-int v4, v0

    int-to-float v4, v4

    move-object/from16 v0, p1

    invoke-interface {v0, v3, v4}, Lcom/android/gallery3d/ui/GLCanvas;->translate(FF)V

    .line 241
    .end local v18           #iconLeft:I
    .end local v19           #iconTop:I
    .end local v24           #selected:Z
    .end local v25           #singleSelectMode:Z
    :cond_a
    move/from16 v0, v20

    neg-int v3, v0

    int-to-float v3, v3

    move/from16 v0, v26

    neg-int v4, v0

    int-to-float v4, v4

    move-object/from16 v0, p1

    invoke-interface {v0, v3, v4}, Lcom/android/gallery3d/ui/GLCanvas;->translate(FF)V

    goto/16 :goto_0

    .line 149
    .end local v6           #w:I
    .end local v7           #h:I
    .end local v17           #frame:Lcom/android/gallery3d/ui/Texture;
    .end local v20           #left:I
    .end local v26           #top:I
    .restart local v5       #content:Lcom/android/gallery3d/ui/Texture;
    :cond_b
    move-object/from16 v0, v16

    iget-boolean v3, v0, Lcom/android/gallery3d/ui/AlbumSlidingWindow$AlbumEntry;->isWaitDisplayed:Z

    if-eqz v3, :cond_3

    .line 150
    const/4 v3, 0x0

    move-object/from16 v0, v16

    iput-boolean v3, v0, Lcom/android/gallery3d/ui/AlbumSlidingWindow$AlbumEntry;->isWaitDisplayed:Z

    .line 151
    new-instance v5, Lcom/android/gallery3d/ui/FadeInTexture;

    .end local v5           #content:Lcom/android/gallery3d/ui/Texture;
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/gallery3d/ui/AlbumSlotRenderer;->mPlaceholderColor:I

    move-object/from16 v0, v16

    iget-object v4, v0, Lcom/android/gallery3d/ui/AlbumSlidingWindow$AlbumEntry;->bitmapTexture:Lcom/android/gallery3d/ui/BitmapTexture;

    invoke-direct {v5, v3, v4}, Lcom/android/gallery3d/ui/FadeInTexture;-><init>(ILcom/android/gallery3d/ui/BasicTexture;)V

    .line 152
    .restart local v5       #content:Lcom/android/gallery3d/ui/Texture;
    move-object/from16 v0, v16

    iput-object v5, v0, Lcom/android/gallery3d/ui/AlbumSlidingWindow$AlbumEntry;->content:Lcom/android/gallery3d/ui/Texture;

    goto/16 :goto_1

    .line 221
    .end local v5           #content:Lcom/android/gallery3d/ui/Texture;
    .restart local v6       #w:I
    .restart local v7       #h:I
    .restart local v17       #frame:Lcom/android/gallery3d/ui/Texture;
    .restart local v20       #left:I
    .restart local v24       #selected:Z
    .restart local v25       #singleSelectMode:Z
    .restart local v26       #top:I
    :cond_c
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/gallery3d/ui/AbstractSlotRenderer;->mCheckedPressFrameIcon:Lcom/android/gallery3d/ui/ResourceTexture;

    goto/16 :goto_2

    .line 223
    :cond_d
    if-eqz v25, :cond_e

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/gallery3d/ui/AbstractSlotRenderer;->mRadioOnIcon:Lcom/android/gallery3d/ui/ResourceTexture;

    .restart local v10       #checkedFrameIcon:Lcom/android/gallery3d/ui/Texture;
    :goto_5
    move-object v15, v10

    .restart local v15       #checkedFrameIcon:Lcom/android/gallery3d/ui/ResourceTexture;
    goto/16 :goto_3

    .end local v10           #checkedFrameIcon:Lcom/android/gallery3d/ui/Texture;
    .end local v15           #checkedFrameIcon:Lcom/android/gallery3d/ui/ResourceTexture;
    :cond_e
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/gallery3d/ui/AbstractSlotRenderer;->mCheckedFrameIcon:Lcom/android/gallery3d/ui/ResourceTexture;

    goto :goto_5

    .line 228
    :cond_f
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/gallery3d/ui/AlbumSlotRenderer;->mPressedIndex:I

    move/from16 v0, p2

    if-ne v3, v0, :cond_11

    .line 229
    if-eqz v25, :cond_10

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/gallery3d/ui/AbstractSlotRenderer;->mRadioOffPressedIcon:Lcom/android/gallery3d/ui/ResourceTexture;

    .restart local v10       #checkedFrameIcon:Lcom/android/gallery3d/ui/Texture;
    :goto_6
    goto/16 :goto_4

    .end local v10           #checkedFrameIcon:Lcom/android/gallery3d/ui/Texture;
    :cond_10
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/gallery3d/ui/AbstractSlotRenderer;->mUncheckedPressedFrameIcon:Lcom/android/gallery3d/ui/ResourceTexture;

    goto :goto_6

    .line 231
    :cond_11
    if-eqz v25, :cond_12

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/gallery3d/ui/AbstractSlotRenderer;->mRadioOffIcon:Lcom/android/gallery3d/ui/ResourceTexture;

    .restart local v10       #checkedFrameIcon:Lcom/android/gallery3d/ui/Texture;
    :goto_7
    goto/16 :goto_4

    .end local v10           #checkedFrameIcon:Lcom/android/gallery3d/ui/Texture;
    :cond_12
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/gallery3d/ui/AbstractSlotRenderer;->mUncheckedFrameIcon:Lcom/android/gallery3d/ui/ResourceTexture;

    goto :goto_7
.end method

.method public resetFocusIndex()V
    .locals 1

    .prologue
    .line 123
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/gallery3d/ui/AlbumSlotRenderer;->mUpdateFocus:Z

    .line 124
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/gallery3d/ui/AlbumSlotRenderer;->mFocusIndex:I

    .line 125
    return-void
.end method

.method public resume()V
    .locals 1

    .prologue
    .line 271
    iget-object v0, p0, Lcom/android/gallery3d/ui/AlbumSlotRenderer;->mDataWindow:Lcom/android/gallery3d/ui/AlbumSlidingWindow;

    invoke-virtual {v0}, Lcom/android/gallery3d/ui/AlbumSlidingWindow;->resume()V

    .line 272
    return-void
.end method

.method public setFocusIndex(I)V
    .locals 1
    .parameter "index"

    .prologue
    .line 118
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/gallery3d/ui/AlbumSlotRenderer;->mUpdateFocus:Z

    .line 119
    iput p1, p0, Lcom/android/gallery3d/ui/AlbumSlotRenderer;->mFocusIndex:I

    .line 120
    return-void
.end method

.method public setHighlightItemPath(Lcom/android/gallery3d/data/Path;)V
    .locals 1
    .parameter "path"

    .prologue
    .line 98
    iget-object v0, p0, Lcom/android/gallery3d/ui/AlbumSlotRenderer;->mHighlightItemPath:Lcom/android/gallery3d/data/Path;

    if-ne v0, p1, :cond_0

    .line 101
    :goto_0
    return-void

    .line 99
    :cond_0
    iput-object p1, p0, Lcom/android/gallery3d/ui/AlbumSlotRenderer;->mHighlightItemPath:Lcom/android/gallery3d/data/Path;

    .line 100
    iget-object v0, p0, Lcom/android/gallery3d/ui/AlbumSlotRenderer;->mSlotView:Lcom/android/gallery3d/ui/SlotView;

    invoke-virtual {v0}, Lcom/android/gallery3d/ui/SlotView;->invalidate()V

    goto :goto_0
.end method

.method public setModel(Lcom/android/gallery3d/app/AlbumDataLoader;)V
    .locals 4
    .parameter "model"

    .prologue
    const/4 v3, 0x0

    .line 104
    iget-object v0, p0, Lcom/android/gallery3d/ui/AlbumSlotRenderer;->mDataWindow:Lcom/android/gallery3d/ui/AlbumSlidingWindow;

    if-eqz v0, :cond_0

    .line 105
    iget-object v0, p0, Lcom/android/gallery3d/ui/AlbumSlotRenderer;->mDataWindow:Lcom/android/gallery3d/ui/AlbumSlidingWindow;

    invoke-virtual {v0, v3}, Lcom/android/gallery3d/ui/AlbumSlidingWindow;->setListener(Lcom/android/gallery3d/ui/AlbumSlidingWindow$Listener;)V

    .line 106
    iget-object v0, p0, Lcom/android/gallery3d/ui/AlbumSlotRenderer;->mSlotView:Lcom/android/gallery3d/ui/SlotView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/ui/SlotView;->setSlotCount(I)Z

    .line 107
    iput-object v3, p0, Lcom/android/gallery3d/ui/AlbumSlotRenderer;->mDataWindow:Lcom/android/gallery3d/ui/AlbumSlidingWindow;

    .line 109
    :cond_0
    if-eqz p1, :cond_1

    .line 110
    new-instance v0, Lcom/android/gallery3d/ui/AlbumSlidingWindow;

    iget-object v1, p0, Lcom/android/gallery3d/ui/AlbumSlotRenderer;->mActivity:Lcom/android/gallery3d/app/AbstractGalleryActivity;

    const/16 v2, 0x60

    invoke-direct {v0, v1, p1, v2}, Lcom/android/gallery3d/ui/AlbumSlidingWindow;-><init>(Lcom/android/gallery3d/app/AbstractGalleryActivity;Lcom/android/gallery3d/app/AlbumDataLoader;I)V

    iput-object v0, p0, Lcom/android/gallery3d/ui/AlbumSlotRenderer;->mDataWindow:Lcom/android/gallery3d/ui/AlbumSlidingWindow;

    .line 111
    iget-object v0, p0, Lcom/android/gallery3d/ui/AlbumSlotRenderer;->mDataWindow:Lcom/android/gallery3d/ui/AlbumSlidingWindow;

    new-instance v1, Lcom/android/gallery3d/ui/AlbumSlotRenderer$MyDataModelListener;

    invoke-direct {v1, p0, v3}, Lcom/android/gallery3d/ui/AlbumSlotRenderer$MyDataModelListener;-><init>(Lcom/android/gallery3d/ui/AlbumSlotRenderer;Lcom/android/gallery3d/ui/AlbumSlotRenderer$1;)V

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/ui/AlbumSlidingWindow;->setListener(Lcom/android/gallery3d/ui/AlbumSlidingWindow$Listener;)V

    .line 112
    iget-object v0, p0, Lcom/android/gallery3d/ui/AlbumSlotRenderer;->mSlotView:Lcom/android/gallery3d/ui/SlotView;

    invoke-virtual {p1}, Lcom/android/gallery3d/app/AlbumDataLoader;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/ui/SlotView;->setSlotCount(I)Z

    .line 114
    :cond_1
    return-void
.end method

.method public setPressedIndex(I)V
    .locals 1
    .parameter "index"

    .prologue
    .line 86
    iget v0, p0, Lcom/android/gallery3d/ui/AlbumSlotRenderer;->mPressedIndex:I

    if-ne v0, p1, :cond_0

    .line 89
    :goto_0
    return-void

    .line 87
    :cond_0
    iput p1, p0, Lcom/android/gallery3d/ui/AlbumSlotRenderer;->mPressedIndex:I

    .line 88
    iget-object v0, p0, Lcom/android/gallery3d/ui/AlbumSlotRenderer;->mSlotView:Lcom/android/gallery3d/ui/SlotView;

    invoke-virtual {v0}, Lcom/android/gallery3d/ui/SlotView;->invalidate()V

    goto :goto_0
.end method

.method public setPressedUp()V
    .locals 2

    .prologue
    .line 92
    iget v0, p0, Lcom/android/gallery3d/ui/AlbumSlotRenderer;->mPressedIndex:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 95
    :goto_0
    return-void

    .line 93
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/gallery3d/ui/AlbumSlotRenderer;->mAnimatePressedUp:Z

    .line 94
    iget-object v0, p0, Lcom/android/gallery3d/ui/AlbumSlotRenderer;->mSlotView:Lcom/android/gallery3d/ui/SlotView;

    invoke-virtual {v0}, Lcom/android/gallery3d/ui/SlotView;->invalidate()V

    goto :goto_0
.end method

.method public setSlotFilter(Lcom/android/gallery3d/ui/AlbumSlotRenderer$SlotFilter;)V
    .locals 0
    .parameter "slotFilter"

    .prologue
    .line 296
    iput-object p1, p0, Lcom/android/gallery3d/ui/AlbumSlotRenderer;->mSlotFilter:Lcom/android/gallery3d/ui/AlbumSlotRenderer$SlotFilter;

    .line 297
    return-void
.end method
