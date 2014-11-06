.class public abstract Lcom/android/gallery3d/ui/AbstractSlotRenderer;
.super Ljava/lang/Object;
.source "AbstractSlotRenderer.java"

# interfaces
.implements Lcom/android/gallery3d/ui/SlotView$SlotRenderer;


# instance fields
.field protected final mCheckedFrameIcon:Lcom/android/gallery3d/ui/ResourceTexture;

.field protected final mCheckedPressFrameIcon:Lcom/android/gallery3d/ui/ResourceTexture;

.field private final mFramePressed:Lcom/android/gallery3d/ui/NinePatchTexture;

.field private mFramePressedUp:Lcom/android/gallery3d/ui/FadeOutTexture;

.field private final mFrameSelected:Lcom/android/gallery3d/ui/NinePatchTexture;

.field private final mPanoramaIcon:Lcom/android/gallery3d/ui/ResourceTexture;

.field protected final mRadioOffIcon:Lcom/android/gallery3d/ui/ResourceTexture;

.field protected final mRadioOffPressedIcon:Lcom/android/gallery3d/ui/ResourceTexture;

.field protected final mRadioOnIcon:Lcom/android/gallery3d/ui/ResourceTexture;

.field protected final mRadioOnPressedIcon:Lcom/android/gallery3d/ui/ResourceTexture;

.field protected final mUncheckedFrameIcon:Lcom/android/gallery3d/ui/ResourceTexture;

.field protected final mUncheckedPressedFrameIcon:Lcom/android/gallery3d/ui/ResourceTexture;

.field private final mVideoOverlay:Lcom/android/gallery3d/ui/ResourceTexture;

.field private final mVideoPlayIcon:Lcom/android/gallery3d/ui/ResourceTexture;

.field private final mVoiceImageIcon:Lcom/android/gallery3d/ui/ResourceTexture;


# direct methods
.method protected constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    .line 42
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 43
    new-instance v0, Lcom/android/gallery3d/ui/ResourceTexture;

    const v1, 0x7f020234

    invoke-direct {v0, p1, v1}, Lcom/android/gallery3d/ui/ResourceTexture;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/android/gallery3d/ui/AbstractSlotRenderer;->mVideoOverlay:Lcom/android/gallery3d/ui/ResourceTexture;

    .line 44
    new-instance v0, Lcom/android/gallery3d/ui/ResourceTexture;

    const v1, 0x7f020180

    invoke-direct {v0, p1, v1}, Lcom/android/gallery3d/ui/ResourceTexture;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/android/gallery3d/ui/AbstractSlotRenderer;->mVideoPlayIcon:Lcom/android/gallery3d/ui/ResourceTexture;

    .line 45
    new-instance v0, Lcom/android/gallery3d/ui/ResourceTexture;

    const v1, 0x7f0200fc

    invoke-direct {v0, p1, v1}, Lcom/android/gallery3d/ui/ResourceTexture;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/android/gallery3d/ui/AbstractSlotRenderer;->mPanoramaIcon:Lcom/android/gallery3d/ui/ResourceTexture;

    .line 46
    new-instance v0, Lcom/android/gallery3d/ui/ResourceTexture;

    const v1, 0x7f0200f1

    invoke-direct {v0, p1, v1}, Lcom/android/gallery3d/ui/ResourceTexture;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/android/gallery3d/ui/AbstractSlotRenderer;->mVoiceImageIcon:Lcom/android/gallery3d/ui/ResourceTexture;

    .line 47
    new-instance v0, Lcom/android/gallery3d/ui/NinePatchTexture;

    const v1, 0x7f0200f5

    invoke-direct {v0, p1, v1}, Lcom/android/gallery3d/ui/NinePatchTexture;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/android/gallery3d/ui/AbstractSlotRenderer;->mFramePressed:Lcom/android/gallery3d/ui/NinePatchTexture;

    .line 48
    new-instance v0, Lcom/android/gallery3d/ui/NinePatchTexture;

    const v1, 0x7f0200f6

    invoke-direct {v0, p1, v1}, Lcom/android/gallery3d/ui/NinePatchTexture;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/android/gallery3d/ui/AbstractSlotRenderer;->mFrameSelected:Lcom/android/gallery3d/ui/NinePatchTexture;

    .line 49
    new-instance v0, Lcom/android/gallery3d/ui/ResourceTexture;

    const v1, 0x7f020052

    invoke-direct {v0, p1, v1}, Lcom/android/gallery3d/ui/ResourceTexture;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/android/gallery3d/ui/AbstractSlotRenderer;->mCheckedFrameIcon:Lcom/android/gallery3d/ui/ResourceTexture;

    .line 50
    new-instance v0, Lcom/android/gallery3d/ui/ResourceTexture;

    const v1, 0x7f020053

    invoke-direct {v0, p1, v1}, Lcom/android/gallery3d/ui/ResourceTexture;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/android/gallery3d/ui/AbstractSlotRenderer;->mCheckedPressFrameIcon:Lcom/android/gallery3d/ui/ResourceTexture;

    .line 51
    new-instance v0, Lcom/android/gallery3d/ui/ResourceTexture;

    const v1, 0x7f02004e

    invoke-direct {v0, p1, v1}, Lcom/android/gallery3d/ui/ResourceTexture;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/android/gallery3d/ui/AbstractSlotRenderer;->mUncheckedFrameIcon:Lcom/android/gallery3d/ui/ResourceTexture;

    .line 52
    new-instance v0, Lcom/android/gallery3d/ui/ResourceTexture;

    const v1, 0x7f020051

    invoke-direct {v0, p1, v1}, Lcom/android/gallery3d/ui/ResourceTexture;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/android/gallery3d/ui/AbstractSlotRenderer;->mUncheckedPressedFrameIcon:Lcom/android/gallery3d/ui/ResourceTexture;

    .line 53
    new-instance v0, Lcom/android/gallery3d/ui/ResourceTexture;

    const v1, 0x7f020079

    invoke-direct {v0, p1, v1}, Lcom/android/gallery3d/ui/ResourceTexture;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/android/gallery3d/ui/AbstractSlotRenderer;->mRadioOnIcon:Lcom/android/gallery3d/ui/ResourceTexture;

    .line 54
    new-instance v0, Lcom/android/gallery3d/ui/ResourceTexture;

    const v1, 0x7f02007c

    invoke-direct {v0, p1, v1}, Lcom/android/gallery3d/ui/ResourceTexture;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/android/gallery3d/ui/AbstractSlotRenderer;->mRadioOnPressedIcon:Lcom/android/gallery3d/ui/ResourceTexture;

    .line 56
    new-instance v0, Lcom/android/gallery3d/ui/ResourceTexture;

    const v1, 0x7f020076

    invoke-direct {v0, p1, v1}, Lcom/android/gallery3d/ui/ResourceTexture;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/android/gallery3d/ui/AbstractSlotRenderer;->mRadioOffIcon:Lcom/android/gallery3d/ui/ResourceTexture;

    .line 57
    new-instance v0, Lcom/android/gallery3d/ui/ResourceTexture;

    const v1, 0x7f020078

    invoke-direct {v0, p1, v1}, Lcom/android/gallery3d/ui/ResourceTexture;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/android/gallery3d/ui/AbstractSlotRenderer;->mRadioOffPressedIcon:Lcom/android/gallery3d/ui/ResourceTexture;

    .line 59
    return-void
.end method

.method protected static drawFrame(Lcom/android/gallery3d/ui/GLCanvas;Landroid/graphics/Rect;Lcom/android/gallery3d/ui/Texture;IIII)V
    .locals 6
    .parameter "canvas"
    .parameter "padding"
    .parameter "frame"
    .parameter "x"
    .parameter "y"
    .parameter "width"
    .parameter "height"

    .prologue
    .line 137
    iget v0, p1, Landroid/graphics/Rect;->left:I

    sub-int v2, p3, v0

    iget v0, p1, Landroid/graphics/Rect;->top:I

    sub-int v3, p4, v0

    iget v0, p1, Landroid/graphics/Rect;->left:I

    add-int/2addr v0, p5

    iget v1, p1, Landroid/graphics/Rect;->right:I

    add-int v4, v0, v1

    iget v0, p1, Landroid/graphics/Rect;->top:I

    add-int/2addr v0, p6

    iget v1, p1, Landroid/graphics/Rect;->bottom:I

    add-int v5, v0, v1

    move-object v0, p2

    move-object v1, p0

    invoke-interface/range {v0 .. v5}, Lcom/android/gallery3d/ui/Texture;->draw(Lcom/android/gallery3d/ui/GLCanvas;IIII)V

    .line 139
    return-void
.end method


# virtual methods
.method protected drawContent(Lcom/android/gallery3d/ui/GLCanvas;Lcom/android/gallery3d/ui/Texture;III)V
    .locals 6
    .parameter "canvas"
    .parameter "content"
    .parameter "width"
    .parameter "height"
    .parameter "rotation"

    .prologue
    const/4 v5, 0x0

    const/high16 v4, 0x3f80

    const/4 v3, 0x0

    .line 63
    const/4 v1, 0x2

    invoke-interface {p1, v1}, Lcom/android/gallery3d/ui/GLCanvas;->save(I)V

    .line 67
    invoke-static {p3, p4}, Ljava/lang/Math;->min(II)I

    move-result p4

    move p3, p4

    .line 68
    if-eqz p5, :cond_0

    .line 69
    div-int/lit8 v1, p3, 0x2

    int-to-float v1, v1

    div-int/lit8 v2, p4, 0x2

    int-to-float v2, v2

    invoke-interface {p1, v1, v2}, Lcom/android/gallery3d/ui/GLCanvas;->translate(FF)V

    .line 70
    int-to-float v1, p5

    invoke-interface {p1, v1, v3, v3, v4}, Lcom/android/gallery3d/ui/GLCanvas;->rotate(FFFF)V

    .line 71
    neg-int v1, p3

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    neg-int v2, p4

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    invoke-interface {p1, v1, v2}, Lcom/android/gallery3d/ui/GLCanvas;->translate(FF)V

    .line 75
    :cond_0
    int-to-float v1, p3

    invoke-interface {p2}, Lcom/android/gallery3d/ui/Texture;->getWidth()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v1, v2

    int-to-float v2, p4

    invoke-interface {p2}, Lcom/android/gallery3d/ui/Texture;->getHeight()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v2, v3

    invoke-static {v1, v2}, Ljava/lang/Math;->min(FF)F

    move-result v0

    .line 78
    .local v0, scale:F
    invoke-interface {p1, v0, v0, v4}, Lcom/android/gallery3d/ui/GLCanvas;->scale(FFF)V

    .line 79
    invoke-interface {p2, p1, v5, v5}, Lcom/android/gallery3d/ui/Texture;->draw(Lcom/android/gallery3d/ui/GLCanvas;II)V

    .line 81
    invoke-interface {p1}, Lcom/android/gallery3d/ui/GLCanvas;->restore()V

    .line 82
    return-void
.end method

.method protected drawPanoramaIcon(Lcom/android/gallery3d/ui/GLCanvas;II)V
    .locals 6
    .parameter "canvas"
    .parameter "width"
    .parameter "height"

    .prologue
    .line 98
    invoke-static {p2, p3}, Ljava/lang/Math;->min(II)I

    move-result v0

    div-int/lit8 v4, v0, 0x6

    .line 99
    .local v4, iconSize:I
    iget-object v0, p0, Lcom/android/gallery3d/ui/AbstractSlotRenderer;->mPanoramaIcon:Lcom/android/gallery3d/ui/ResourceTexture;

    sub-int v1, p2, v4

    div-int/lit8 v2, v1, 0x2

    sub-int v1, p3, v4

    div-int/lit8 v3, v1, 0x2

    move-object v1, p1

    move v5, v4

    invoke-virtual/range {v0 .. v5}, Lcom/android/gallery3d/ui/ResourceTexture;->draw(Lcom/android/gallery3d/ui/GLCanvas;IIII)V

    .line 101
    return-void
.end method

.method protected drawPressedFrame(Lcom/android/gallery3d/ui/GLCanvas;II)V
    .locals 7
    .parameter "canvas"
    .parameter "width"
    .parameter "height"

    .prologue
    const/4 v3, 0x0

    .line 128
    iget-object v0, p0, Lcom/android/gallery3d/ui/AbstractSlotRenderer;->mFramePressed:Lcom/android/gallery3d/ui/NinePatchTexture;

    invoke-virtual {v0}, Lcom/android/gallery3d/ui/NinePatchTexture;->getPaddings()Landroid/graphics/Rect;

    move-result-object v1

    iget-object v2, p0, Lcom/android/gallery3d/ui/AbstractSlotRenderer;->mFramePressed:Lcom/android/gallery3d/ui/NinePatchTexture;

    move-object v0, p1

    move v4, v3

    move v5, p2

    move v6, p3

    invoke-static/range {v0 .. v6}, Lcom/android/gallery3d/ui/AbstractSlotRenderer;->drawFrame(Lcom/android/gallery3d/ui/GLCanvas;Landroid/graphics/Rect;Lcom/android/gallery3d/ui/Texture;IIII)V

    .line 129
    return-void
.end method

.method protected drawPressedUpFrame(Lcom/android/gallery3d/ui/GLCanvas;II)V
    .locals 7
    .parameter "canvas"
    .parameter "width"
    .parameter "height"

    .prologue
    const/4 v3, 0x0

    .line 121
    iget-object v0, p0, Lcom/android/gallery3d/ui/AbstractSlotRenderer;->mFramePressedUp:Lcom/android/gallery3d/ui/FadeOutTexture;

    if-nez v0, :cond_0

    .line 122
    new-instance v0, Lcom/android/gallery3d/ui/FadeOutTexture;

    iget-object v1, p0, Lcom/android/gallery3d/ui/AbstractSlotRenderer;->mFramePressed:Lcom/android/gallery3d/ui/NinePatchTexture;

    invoke-direct {v0, v1}, Lcom/android/gallery3d/ui/FadeOutTexture;-><init>(Lcom/android/gallery3d/ui/BasicTexture;)V

    iput-object v0, p0, Lcom/android/gallery3d/ui/AbstractSlotRenderer;->mFramePressedUp:Lcom/android/gallery3d/ui/FadeOutTexture;

    .line 124
    :cond_0
    iget-object v0, p0, Lcom/android/gallery3d/ui/AbstractSlotRenderer;->mFramePressed:Lcom/android/gallery3d/ui/NinePatchTexture;

    invoke-virtual {v0}, Lcom/android/gallery3d/ui/NinePatchTexture;->getPaddings()Landroid/graphics/Rect;

    move-result-object v1

    iget-object v2, p0, Lcom/android/gallery3d/ui/AbstractSlotRenderer;->mFramePressedUp:Lcom/android/gallery3d/ui/FadeOutTexture;

    move-object v0, p1

    move v4, v3

    move v5, p2

    move v6, p3

    invoke-static/range {v0 .. v6}, Lcom/android/gallery3d/ui/AbstractSlotRenderer;->drawFrame(Lcom/android/gallery3d/ui/GLCanvas;Landroid/graphics/Rect;Lcom/android/gallery3d/ui/Texture;IIII)V

    .line 125
    return-void
.end method

.method protected drawSelectedFrame(Lcom/android/gallery3d/ui/GLCanvas;II)V
    .locals 7
    .parameter "canvas"
    .parameter "width"
    .parameter "height"

    .prologue
    const/4 v3, 0x0

    .line 132
    iget-object v0, p0, Lcom/android/gallery3d/ui/AbstractSlotRenderer;->mFrameSelected:Lcom/android/gallery3d/ui/NinePatchTexture;

    invoke-virtual {v0}, Lcom/android/gallery3d/ui/NinePatchTexture;->getPaddings()Landroid/graphics/Rect;

    move-result-object v1

    iget-object v2, p0, Lcom/android/gallery3d/ui/AbstractSlotRenderer;->mFrameSelected:Lcom/android/gallery3d/ui/NinePatchTexture;

    move-object v0, p1

    move v4, v3

    move v5, p2

    move v6, p3

    invoke-static/range {v0 .. v6}, Lcom/android/gallery3d/ui/AbstractSlotRenderer;->drawFrame(Lcom/android/gallery3d/ui/GLCanvas;Landroid/graphics/Rect;Lcom/android/gallery3d/ui/Texture;IIII)V

    .line 133
    return-void
.end method

.method protected drawVideoOverlay(Lcom/android/gallery3d/ui/GLCanvas;II)V
    .locals 14
    .parameter "canvas"
    .parameter "width"
    .parameter "height"

    .prologue
    .line 87
    iget-object v1, p0, Lcom/android/gallery3d/ui/AbstractSlotRenderer;->mVideoOverlay:Lcom/android/gallery3d/ui/ResourceTexture;

    .line 88
    .local v1, v:Lcom/android/gallery3d/ui/ResourceTexture;
    move/from16 v0, p3

    int-to-float v2, v0

    invoke-virtual {v1}, Lcom/android/gallery3d/ui/ResourceTexture;->getHeight()I

    move-result v3

    int-to-float v3, v3

    div-float v13, v2, v3

    .line 89
    .local v13, scale:F
    invoke-virtual {v1}, Lcom/android/gallery3d/ui/ResourceTexture;->getWidth()I

    move-result v2

    int-to-float v2, v2

    mul-float/2addr v2, v13

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v5

    .line 90
    .local v5, w:I
    invoke-virtual {v1}, Lcom/android/gallery3d/ui/ResourceTexture;->getHeight()I

    move-result v2

    int-to-float v2, v2

    mul-float/2addr v2, v13

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v6

    .line 91
    .local v6, h:I
    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v2, p1

    invoke-virtual/range {v1 .. v6}, Lcom/android/gallery3d/ui/ResourceTexture;->draw(Lcom/android/gallery3d/ui/GLCanvas;IIII)V

    .line 93
    invoke-static/range {p2 .. p3}, Ljava/lang/Math;->min(II)I

    move-result v2

    div-int/lit8 v11, v2, 0x4

    .line 94
    .local v11, s:I
    iget-object v7, p0, Lcom/android/gallery3d/ui/AbstractSlotRenderer;->mVideoPlayIcon:Lcom/android/gallery3d/ui/ResourceTexture;

    sub-int v2, p2, v11

    div-int/lit8 v9, v2, 0x2

    sub-int v2, p3, v11

    div-int/lit8 v10, v2, 0x2

    move-object v8, p1

    move v12, v11

    invoke-virtual/range {v7 .. v12}, Lcom/android/gallery3d/ui/ResourceTexture;->draw(Lcom/android/gallery3d/ui/GLCanvas;IIII)V

    .line 95
    return-void
.end method

.method protected drawVoiceImageIcon(Lcom/android/gallery3d/ui/GLCanvas;II)V
    .locals 6
    .parameter "canvas"
    .parameter "width"
    .parameter "height"

    .prologue
    .line 104
    iget-object v0, p0, Lcom/android/gallery3d/ui/AbstractSlotRenderer;->mVoiceImageIcon:Lcom/android/gallery3d/ui/ResourceTexture;

    invoke-virtual {v0}, Lcom/android/gallery3d/ui/ResourceTexture;->getWidth()I

    move-result v4

    .line 105
    .local v4, w:I
    iget-object v0, p0, Lcom/android/gallery3d/ui/AbstractSlotRenderer;->mVoiceImageIcon:Lcom/android/gallery3d/ui/ResourceTexture;

    invoke-virtual {v0}, Lcom/android/gallery3d/ui/ResourceTexture;->getHeight()I

    move-result v5

    .line 106
    .local v5, h:I
    iget-object v0, p0, Lcom/android/gallery3d/ui/AbstractSlotRenderer;->mVoiceImageIcon:Lcom/android/gallery3d/ui/ResourceTexture;

    const/4 v2, 0x0

    sub-int v3, p3, v5

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Lcom/android/gallery3d/ui/ResourceTexture;->draw(Lcom/android/gallery3d/ui/GLCanvas;IIII)V

    .line 107
    return-void
.end method

.method protected isPressedUpFrameFinished()Z
    .locals 1

    .prologue
    .line 110
    iget-object v0, p0, Lcom/android/gallery3d/ui/AbstractSlotRenderer;->mFramePressedUp:Lcom/android/gallery3d/ui/FadeOutTexture;

    if-eqz v0, :cond_1

    .line 111
    iget-object v0, p0, Lcom/android/gallery3d/ui/AbstractSlotRenderer;->mFramePressedUp:Lcom/android/gallery3d/ui/FadeOutTexture;

    invoke-virtual {v0}, Lcom/android/gallery3d/ui/FadeOutTexture;->isAnimating()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 112
    const/4 v0, 0x0

    .line 117
    :goto_0
    return v0

    .line 114
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/gallery3d/ui/AbstractSlotRenderer;->mFramePressedUp:Lcom/android/gallery3d/ui/FadeOutTexture;

    .line 117
    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method
