.class public Lcom/android/gallery3d/anim/StateTransitionAnimation;
.super Lcom/android/gallery3d/anim/Animation;
.source "StateTransitionAnimation.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/gallery3d/anim/StateTransitionAnimation$1;,
        Lcom/android/gallery3d/anim/StateTransitionAnimation$Transition;,
        Lcom/android/gallery3d/anim/StateTransitionAnimation$SpecX;,
        Lcom/android/gallery3d/anim/StateTransitionAnimation$Spec;
    }
.end annotation


# instance fields
.field private mCurrentBackgroundAlpha:F

.field private mCurrentBackgroundScale:F

.field private mCurrentContentAlpha:F

.field private mCurrentContentScale:F

.field private mCurrentOverlayAlpha:F

.field private mCurrentOverlayScale:F

.field private mOldAnimTexture:Lcom/android/gallery3d/ui/RawTexture;

.field private mOldScreenTexture:Lcom/android/gallery3d/ui/RawTexture;

.field private mProgress:F

.field private mRectContent:Landroid/graphics/Rect;

.field private mRectOld:Landroid/graphics/Rect;

.field private final mTransitionSpec:Lcom/android/gallery3d/anim/StateTransitionAnimation$Spec;

.field private mTransitionX:Lcom/android/gallery3d/anim/BaseTransition;


# direct methods
.method public constructor <init>(Lcom/android/gallery3d/anim/StateTransitionAnimation$Spec;Lcom/android/gallery3d/app/TransitionStore;)V
    .locals 1
    .parameter "spec"
    .parameter "store"

    .prologue
    .line 155
    invoke-direct {p0}, Lcom/android/gallery3d/anim/Animation;-><init>()V

    .line 156
    if-eqz p1, :cond_0

    .end local p1
    :goto_0
    iput-object p1, p0, Lcom/android/gallery3d/anim/StateTransitionAnimation;->mTransitionSpec:Lcom/android/gallery3d/anim/StateTransitionAnimation$Spec;

    .line 157
    iget-object v0, p0, Lcom/android/gallery3d/anim/StateTransitionAnimation;->mTransitionSpec:Lcom/android/gallery3d/anim/StateTransitionAnimation$Spec;

    iget v0, v0, Lcom/android/gallery3d/anim/StateTransitionAnimation$Spec;->duration:I

    invoke-virtual {p0, v0}, Lcom/android/gallery3d/anim/StateTransitionAnimation;->setDuration(I)V

    .line 158
    iget-object v0, p0, Lcom/android/gallery3d/anim/StateTransitionAnimation;->mTransitionSpec:Lcom/android/gallery3d/anim/StateTransitionAnimation$Spec;

    iget-object v0, v0, Lcom/android/gallery3d/anim/StateTransitionAnimation$Spec;->interpolator:Landroid/view/animation/Interpolator;

    invoke-virtual {p0, v0}, Lcom/android/gallery3d/anim/StateTransitionAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 159
    const-string v0, "fade_texture"

    invoke-virtual {p2, v0}, Lcom/android/gallery3d/app/TransitionStore;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/gallery3d/ui/RawTexture;

    iput-object v0, p0, Lcom/android/gallery3d/anim/StateTransitionAnimation;->mOldScreenTexture:Lcom/android/gallery3d/ui/RawTexture;

    .line 160
    invoke-static {}, Lcom/android/gallery3d/ui/TiledScreenNail;->disableDrawPlaceholder()V

    .line 161
    return-void

    .line 156
    .restart local p1
    :cond_0
    sget-object p1, Lcom/android/gallery3d/anim/StateTransitionAnimation$Spec;->OUTGOING:Lcom/android/gallery3d/anim/StateTransitionAnimation$Spec;

    goto :goto_0
.end method

.method public constructor <init>(Lcom/android/gallery3d/anim/StateTransitionAnimation$Transition;Lcom/android/gallery3d/app/TransitionStore;)V
    .locals 1
    .parameter "t"
    .parameter "store"

    .prologue
    .line 141
    #calls: Lcom/android/gallery3d/anim/StateTransitionAnimation$Spec;->specForTransition(Lcom/android/gallery3d/anim/StateTransitionAnimation$Transition;)Lcom/android/gallery3d/anim/StateTransitionAnimation$Spec;
    invoke-static {p1}, Lcom/android/gallery3d/anim/StateTransitionAnimation$Spec;->access$000(Lcom/android/gallery3d/anim/StateTransitionAnimation$Transition;)Lcom/android/gallery3d/anim/StateTransitionAnimation$Spec;

    move-result-object v0

    invoke-direct {p0, v0, p2}, Lcom/android/gallery3d/anim/StateTransitionAnimation;-><init>(Lcom/android/gallery3d/anim/StateTransitionAnimation$Spec;Lcom/android/gallery3d/app/TransitionStore;)V

    .line 144
    sget-boolean v0, Lcom/android/gallery3d/util/GalleryUtils;->IS_SUPPORT_HW_ANIMATION:Z

    if-eqz v0, :cond_0

    .line 145
    #calls: Lcom/android/gallery3d/anim/StateTransitionAnimation$SpecX;->specForTransitionX(Lcom/android/gallery3d/anim/StateTransitionAnimation$Transition;)Lcom/android/gallery3d/anim/BaseTransition;
    invoke-static {p1}, Lcom/android/gallery3d/anim/StateTransitionAnimation$SpecX;->access$100(Lcom/android/gallery3d/anim/StateTransitionAnimation$Transition;)Lcom/android/gallery3d/anim/BaseTransition;

    move-result-object v0

    iput-object v0, p0, Lcom/android/gallery3d/anim/StateTransitionAnimation;->mTransitionX:Lcom/android/gallery3d/anim/BaseTransition;

    .line 148
    :cond_0
    iget-object v0, p0, Lcom/android/gallery3d/anim/StateTransitionAnimation;->mTransitionX:Lcom/android/gallery3d/anim/BaseTransition;

    if-eqz v0, :cond_1

    .line 149
    const-string v0, "anim_texture"

    invoke-virtual {p2, v0}, Lcom/android/gallery3d/app/TransitionStore;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/gallery3d/ui/RawTexture;

    iput-object v0, p0, Lcom/android/gallery3d/anim/StateTransitionAnimation;->mOldAnimTexture:Lcom/android/gallery3d/ui/RawTexture;

    .line 150
    const-string v0, "start_pos"

    invoke-virtual {p2, v0}, Lcom/android/gallery3d/app/TransitionStore;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Rect;

    iput-object v0, p0, Lcom/android/gallery3d/anim/StateTransitionAnimation;->mRectOld:Landroid/graphics/Rect;

    .line 151
    const/16 v0, 0x1c2

    invoke-virtual {p0, v0}, Lcom/android/gallery3d/anim/StateTransitionAnimation;->setDuration(I)V

    .line 153
    :cond_1
    return-void
.end method

.method private applyContentTransformX(Lcom/android/gallery3d/ui/GLView;Lcom/android/gallery3d/ui/GLCanvas;)V
    .locals 7
    .parameter "view"
    .parameter "canvas"

    .prologue
    const v6, 0x3e0f5c29

    const/4 v5, 0x0

    .line 309
    iget v1, p0, Lcom/android/gallery3d/anim/StateTransitionAnimation;->mProgress:F

    .line 312
    .local v1, process:F
    iget-object v2, p0, Lcom/android/gallery3d/anim/StateTransitionAnimation;->mRectContent:Landroid/graphics/Rect;

    if-nez v2, :cond_0

    .line 313
    new-instance v2, Landroid/graphics/Rect;

    invoke-virtual {p1}, Lcom/android/gallery3d/ui/GLView;->getWidth()I

    move-result v3

    invoke-virtual {p1}, Lcom/android/gallery3d/ui/GLView;->getHeight()I

    move-result v4

    invoke-direct {v2, v5, v5, v3, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v2, p0, Lcom/android/gallery3d/anim/StateTransitionAnimation;->mRectContent:Landroid/graphics/Rect;

    .line 318
    :cond_0
    iget-object v2, p0, Lcom/android/gallery3d/anim/StateTransitionAnimation;->mTransitionX:Lcom/android/gallery3d/anim/BaseTransition;

    sget-object v3, Lcom/android/gallery3d/anim/StateTransitionAnimation$SpecX;->PHOTO_INCOMING_ANIMATION:Lcom/android/gallery3d/anim/BaseTransition;

    if-ne v2, v3, :cond_3

    .line 320
    iget v2, p0, Lcom/android/gallery3d/anim/StateTransitionAnimation;->mProgress:F

    cmpg-float v2, v2, v6

    if-gez v2, :cond_2

    .line 322
    const/4 v2, 0x0

    invoke-interface {p2, v2}, Lcom/android/gallery3d/ui/GLCanvas;->setAlpha(F)V

    .line 340
    :cond_1
    :goto_0
    return-void

    .line 326
    :cond_2
    iget v2, p0, Lcom/android/gallery3d/anim/StateTransitionAnimation;->mProgress:F

    sub-float/2addr v2, v6

    const v3, 0x3f5c28f6

    div-float v1, v2, v3

    .line 330
    :cond_3
    iget-object v2, p0, Lcom/android/gallery3d/anim/StateTransitionAnimation;->mTransitionX:Lcom/android/gallery3d/anim/BaseTransition;

    iget-object v3, p0, Lcom/android/gallery3d/anim/StateTransitionAnimation;->mRectOld:Landroid/graphics/Rect;

    invoke-virtual {v2, v3}, Lcom/android/gallery3d/anim/BaseTransition;->setOldRect(Landroid/graphics/Rect;)V

    .line 331
    iget-object v2, p0, Lcom/android/gallery3d/anim/StateTransitionAnimation;->mTransitionX:Lcom/android/gallery3d/anim/BaseTransition;

    iget-object v3, p0, Lcom/android/gallery3d/anim/StateTransitionAnimation;->mRectContent:Landroid/graphics/Rect;

    invoke-virtual {v2, v1, v3}, Lcom/android/gallery3d/anim/BaseTransition;->getTransformation3D(FLandroid/graphics/Rect;)Lcom/android/gallery3d/anim/BaseTransition$TransformationInfo;

    move-result-object v0

    .line 332
    .local v0, info:Lcom/android/gallery3d/anim/BaseTransition$TransformationInfo;
    if-eqz v0, :cond_1

    .line 333
    iget-boolean v2, v0, Lcom/android/gallery3d/anim/BaseTransition$TransformationInfo;->mMatrixDirty:Z

    if-eqz v2, :cond_4

    .line 334
    iget-object v2, v0, Lcom/android/gallery3d/anim/BaseTransition$TransformationInfo;->mMatrix3D:[F

    invoke-interface {p2, v2, v5}, Lcom/android/gallery3d/ui/GLCanvas;->multiplyMatrix([FI)V

    .line 336
    :cond_4
    iget-boolean v2, v0, Lcom/android/gallery3d/anim/BaseTransition$TransformationInfo;->mAlphaDirty:Z

    if-eqz v2, :cond_1

    .line 337
    iget v2, v0, Lcom/android/gallery3d/anim/BaseTransition$TransformationInfo;->mAlpha:F

    invoke-interface {p2, v2}, Lcom/android/gallery3d/ui/GLCanvas;->multiplyAlpha(F)V

    goto :goto_0
.end method

.method private applyOldTexture(Lcom/android/gallery3d/ui/GLView;Lcom/android/gallery3d/ui/GLCanvas;FFZ)V
    .locals 5
    .parameter "view"
    .parameter "canvas"
    .parameter "alpha"
    .parameter "scale"
    .parameter "clear"

    .prologue
    .line 214
    iget-object v2, p0, Lcom/android/gallery3d/anim/StateTransitionAnimation;->mOldScreenTexture:Lcom/android/gallery3d/ui/RawTexture;

    if-nez v2, :cond_0

    .line 234
    :goto_0
    return-void

    .line 216
    :cond_0
    if-eqz p5, :cond_1

    invoke-virtual {p1}, Lcom/android/gallery3d/ui/GLView;->getBackgroundColor()[F

    move-result-object v2

    invoke-interface {p2, v2}, Lcom/android/gallery3d/ui/GLCanvas;->clearBuffer([F)V

    .line 217
    :cond_1
    invoke-interface {p2}, Lcom/android/gallery3d/ui/GLCanvas;->save()V

    .line 221
    iget-object v2, p0, Lcom/android/gallery3d/anim/StateTransitionAnimation;->mTransitionX:Lcom/android/gallery3d/anim/BaseTransition;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/android/gallery3d/anim/StateTransitionAnimation;->mRectOld:Landroid/graphics/Rect;

    if-eqz v2, :cond_2

    .line 222
    invoke-direct {p0, p1, p2, p5}, Lcom/android/gallery3d/anim/StateTransitionAnimation;->applyOldTextureX(Lcom/android/gallery3d/ui/GLView;Lcom/android/gallery3d/ui/GLCanvas;Z)V

    .line 233
    :goto_1
    invoke-interface {p2}, Lcom/android/gallery3d/ui/GLCanvas;->restore()V

    goto :goto_0

    .line 225
    :cond_2
    invoke-interface {p2, p3}, Lcom/android/gallery3d/ui/GLCanvas;->setAlpha(F)V

    .line 226
    invoke-virtual {p1}, Lcom/android/gallery3d/ui/GLView;->getWidth()I

    move-result v2

    div-int/lit8 v0, v2, 0x2

    .line 227
    .local v0, xOffset:I
    invoke-virtual {p1}, Lcom/android/gallery3d/ui/GLView;->getHeight()I

    move-result v2

    div-int/lit8 v1, v2, 0x2

    .line 228
    .local v1, yOffset:I
    int-to-float v2, v0

    int-to-float v3, v1

    invoke-interface {p2, v2, v3}, Lcom/android/gallery3d/ui/GLCanvas;->translate(FF)V

    .line 229
    const/high16 v2, 0x3f80

    invoke-interface {p2, p4, p4, v2}, Lcom/android/gallery3d/ui/GLCanvas;->scale(FFF)V

    .line 230
    iget-object v2, p0, Lcom/android/gallery3d/anim/StateTransitionAnimation;->mOldScreenTexture:Lcom/android/gallery3d/ui/RawTexture;

    neg-int v3, v0

    neg-int v4, v1

    invoke-virtual {v2, p2, v3, v4}, Lcom/android/gallery3d/ui/RawTexture;->draw(Lcom/android/gallery3d/ui/GLCanvas;II)V

    goto :goto_1
.end method

.method private applyOldTextureX(Lcom/android/gallery3d/ui/GLView;Lcom/android/gallery3d/ui/GLCanvas;Z)V
    .locals 11
    .parameter "view"
    .parameter "canvas"
    .parameter "clear"

    .prologue
    const v10, 0x3f0a3d71

    const v9, 0x3e0f5c29

    const/4 v8, 0x0

    .line 238
    iget v3, p0, Lcom/android/gallery3d/anim/StateTransitionAnimation;->mProgress:F

    .line 239
    .local v3, process:F
    iget-object v4, p0, Lcom/android/gallery3d/anim/StateTransitionAnimation;->mOldScreenTexture:Lcom/android/gallery3d/ui/RawTexture;

    .line 242
    .local v4, texture:Lcom/android/gallery3d/ui/RawTexture;
    iget-object v5, p0, Lcom/android/gallery3d/anim/StateTransitionAnimation;->mRectContent:Landroid/graphics/Rect;

    if-nez v5, :cond_0

    .line 243
    new-instance v5, Landroid/graphics/Rect;

    invoke-virtual {p1}, Lcom/android/gallery3d/ui/GLView;->getWidth()I

    move-result v6

    invoke-virtual {p1}, Lcom/android/gallery3d/ui/GLView;->getHeight()I

    move-result v7

    invoke-direct {v5, v8, v8, v6, v7}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v5, p0, Lcom/android/gallery3d/anim/StateTransitionAnimation;->mRectContent:Landroid/graphics/Rect;

    .line 250
    :cond_0
    iget-object v5, p0, Lcom/android/gallery3d/anim/StateTransitionAnimation;->mTransitionX:Lcom/android/gallery3d/anim/BaseTransition;

    sget-object v6, Lcom/android/gallery3d/anim/StateTransitionAnimation$SpecX;->PHOTO_INCOMING_ANIMATION:Lcom/android/gallery3d/anim/BaseTransition;

    if-ne v5, v6, :cond_3

    .line 252
    invoke-interface {p2}, Lcom/android/gallery3d/ui/GLCanvas;->getAlpha()F

    move-result v2

    .line 253
    .local v2, oalpha:F
    iget v5, p0, Lcom/android/gallery3d/anim/StateTransitionAnimation;->mProgress:F

    cmpl-float v5, v5, v9

    if-lez v5, :cond_1

    .line 254
    const/high16 v5, 0x3f80

    iget v6, p0, Lcom/android/gallery3d/anim/StateTransitionAnimation;->mProgress:F

    sub-float/2addr v6, v9

    const v7, 0x3f5c28f6

    div-float/2addr v6, v7

    sub-float v0, v5, v6

    .line 255
    .local v0, alpha:F
    invoke-interface {p2, v0}, Lcom/android/gallery3d/ui/GLCanvas;->multiplyAlpha(F)V

    .line 258
    .end local v0           #alpha:F
    :cond_1
    iget-object v5, p0, Lcom/android/gallery3d/anim/StateTransitionAnimation;->mOldScreenTexture:Lcom/android/gallery3d/ui/RawTexture;

    invoke-virtual {v5, p2, v8, v8}, Lcom/android/gallery3d/ui/RawTexture;->draw(Lcom/android/gallery3d/ui/GLCanvas;II)V

    .line 259
    iget v5, p0, Lcom/android/gallery3d/anim/StateTransitionAnimation;->mProgress:F

    cmpl-float v5, v5, v9

    if-lez v5, :cond_2

    .line 260
    invoke-interface {p2, v2}, Lcom/android/gallery3d/ui/GLCanvas;->setAlpha(F)V

    .line 263
    :cond_2
    iget-object v4, p0, Lcom/android/gallery3d/anim/StateTransitionAnimation;->mOldAnimTexture:Lcom/android/gallery3d/ui/RawTexture;

    .line 265
    iget v5, p0, Lcom/android/gallery3d/anim/StateTransitionAnimation;->mProgress:F

    cmpg-float v5, v5, v10

    if-gez v5, :cond_6

    .line 266
    iget v5, p0, Lcom/android/gallery3d/anim/StateTransitionAnimation;->mProgress:F

    div-float v3, v5, v10

    .line 273
    .end local v2           #oalpha:F
    :cond_3
    iget-object v5, p0, Lcom/android/gallery3d/anim/StateTransitionAnimation;->mRectOld:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->left:I

    int-to-float v5, v5

    iget-object v6, p0, Lcom/android/gallery3d/anim/StateTransitionAnimation;->mRectOld:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->top:I

    int-to-float v6, v6

    invoke-interface {p2, v5, v6}, Lcom/android/gallery3d/ui/GLCanvas;->translate(FF)V

    .line 275
    sget-object v5, Lcom/android/gallery3d/anim/StateTransitionAnimation$SpecX;->mTransitionXBg:Lcom/android/gallery3d/anim/BaseTransition;

    iget-object v6, p0, Lcom/android/gallery3d/anim/StateTransitionAnimation;->mRectOld:Landroid/graphics/Rect;

    invoke-virtual {v5, v6}, Lcom/android/gallery3d/anim/BaseTransition;->setOldRect(Landroid/graphics/Rect;)V

    .line 276
    sget-object v5, Lcom/android/gallery3d/anim/StateTransitionAnimation$SpecX;->mTransitionXBg:Lcom/android/gallery3d/anim/BaseTransition;

    iget-object v6, p0, Lcom/android/gallery3d/anim/StateTransitionAnimation;->mRectContent:Landroid/graphics/Rect;

    invoke-virtual {v5, v3, v6}, Lcom/android/gallery3d/anim/BaseTransition;->getTransformation3D(FLandroid/graphics/Rect;)Lcom/android/gallery3d/anim/BaseTransition$TransformationInfo;

    move-result-object v1

    .line 277
    .local v1, info:Lcom/android/gallery3d/anim/BaseTransition$TransformationInfo;
    if-eqz v1, :cond_5

    .line 278
    iget-boolean v5, v1, Lcom/android/gallery3d/anim/BaseTransition$TransformationInfo;->mMatrixDirty:Z

    if-eqz v5, :cond_4

    .line 279
    iget-object v5, v1, Lcom/android/gallery3d/anim/BaseTransition$TransformationInfo;->mMatrix3D:[F

    invoke-interface {p2, v5, v8}, Lcom/android/gallery3d/ui/GLCanvas;->multiplyMatrix([FI)V

    .line 281
    :cond_4
    iget-boolean v5, v1, Lcom/android/gallery3d/anim/BaseTransition$TransformationInfo;->mAlphaDirty:Z

    if-eqz v5, :cond_5

    .line 282
    iget v5, v1, Lcom/android/gallery3d/anim/BaseTransition$TransformationInfo;->mAlpha:F

    invoke-interface {p2, v5}, Lcom/android/gallery3d/ui/GLCanvas;->multiplyAlpha(F)V

    .line 286
    :cond_5
    invoke-virtual {v4, p2, v8, v8}, Lcom/android/gallery3d/ui/RawTexture;->draw(Lcom/android/gallery3d/ui/GLCanvas;II)V

    .line 287
    .end local v1           #info:Lcom/android/gallery3d/anim/BaseTransition$TransformationInfo;
    :cond_6
    return-void
.end method


# virtual methods
.method public applyBackground(Lcom/android/gallery3d/ui/GLView;Lcom/android/gallery3d/ui/GLCanvas;)V
    .locals 6
    .parameter "view"
    .parameter "canvas"

    .prologue
    .line 290
    iget v0, p0, Lcom/android/gallery3d/anim/StateTransitionAnimation;->mCurrentBackgroundAlpha:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    .line 291
    iget v3, p0, Lcom/android/gallery3d/anim/StateTransitionAnimation;->mCurrentBackgroundAlpha:F

    iget v4, p0, Lcom/android/gallery3d/anim/StateTransitionAnimation;->mCurrentBackgroundScale:F

    const/4 v5, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    invoke-direct/range {v0 .. v5}, Lcom/android/gallery3d/anim/StateTransitionAnimation;->applyOldTexture(Lcom/android/gallery3d/ui/GLView;Lcom/android/gallery3d/ui/GLCanvas;FFZ)V

    .line 293
    :cond_0
    return-void
.end method

.method public applyContentTransform(Lcom/android/gallery3d/ui/GLView;Lcom/android/gallery3d/ui/GLCanvas;)V
    .locals 5
    .parameter "view"
    .parameter "canvas"

    .prologue
    .line 296
    iget-object v2, p0, Lcom/android/gallery3d/anim/StateTransitionAnimation;->mTransitionX:Lcom/android/gallery3d/anim/BaseTransition;

    if-eqz v2, :cond_0

    .line 297
    invoke-direct {p0, p1, p2}, Lcom/android/gallery3d/anim/StateTransitionAnimation;->applyContentTransformX(Lcom/android/gallery3d/ui/GLView;Lcom/android/gallery3d/ui/GLCanvas;)V

    .line 306
    :goto_0
    return-void

    .line 299
    :cond_0
    invoke-virtual {p1}, Lcom/android/gallery3d/ui/GLView;->getWidth()I

    move-result v2

    div-int/lit8 v0, v2, 0x2

    .line 300
    .local v0, xOffset:I
    invoke-virtual {p1}, Lcom/android/gallery3d/ui/GLView;->getHeight()I

    move-result v2

    div-int/lit8 v1, v2, 0x2

    .line 301
    .local v1, yOffset:I
    int-to-float v2, v0

    int-to-float v3, v1

    invoke-interface {p2, v2, v3}, Lcom/android/gallery3d/ui/GLCanvas;->translate(FF)V

    .line 302
    iget v2, p0, Lcom/android/gallery3d/anim/StateTransitionAnimation;->mCurrentContentScale:F

    iget v3, p0, Lcom/android/gallery3d/anim/StateTransitionAnimation;->mCurrentContentScale:F

    const/high16 v4, 0x3f80

    invoke-interface {p2, v2, v3, v4}, Lcom/android/gallery3d/ui/GLCanvas;->scale(FFF)V

    .line 303
    neg-int v2, v0

    int-to-float v2, v2

    neg-int v3, v1

    int-to-float v3, v3

    invoke-interface {p2, v2, v3}, Lcom/android/gallery3d/ui/GLCanvas;->translate(FF)V

    .line 304
    iget v2, p0, Lcom/android/gallery3d/anim/StateTransitionAnimation;->mCurrentContentAlpha:F

    invoke-interface {p2, v2}, Lcom/android/gallery3d/ui/GLCanvas;->setAlpha(F)V

    goto :goto_0
.end method

.method public applyOverlay(Lcom/android/gallery3d/ui/GLView;Lcom/android/gallery3d/ui/GLCanvas;)V
    .locals 6
    .parameter "view"
    .parameter "canvas"

    .prologue
    .line 343
    iget v0, p0, Lcom/android/gallery3d/anim/StateTransitionAnimation;->mCurrentOverlayAlpha:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    .line 344
    iget v3, p0, Lcom/android/gallery3d/anim/StateTransitionAnimation;->mCurrentOverlayAlpha:F

    iget v4, p0, Lcom/android/gallery3d/anim/StateTransitionAnimation;->mCurrentOverlayScale:F

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    invoke-direct/range {v0 .. v5}, Lcom/android/gallery3d/anim/StateTransitionAnimation;->applyOldTexture(Lcom/android/gallery3d/ui/GLView;Lcom/android/gallery3d/ui/GLCanvas;FFZ)V

    .line 346
    :cond_0
    return-void
.end method

.method public calculate(J)Z
    .locals 3
    .parameter "currentTimeMillis"

    .prologue
    const/4 v2, 0x0

    .line 165
    invoke-super {p0, p1, p2}, Lcom/android/gallery3d/anim/Animation;->calculate(J)Z

    move-result v0

    .line 166
    .local v0, retval:Z
    invoke-virtual {p0}, Lcom/android/gallery3d/anim/StateTransitionAnimation;->isActive()Z

    move-result v1

    if-nez v1, :cond_2

    .line 167
    iget-object v1, p0, Lcom/android/gallery3d/anim/StateTransitionAnimation;->mOldScreenTexture:Lcom/android/gallery3d/ui/RawTexture;

    if-eqz v1, :cond_0

    .line 168
    iget-object v1, p0, Lcom/android/gallery3d/anim/StateTransitionAnimation;->mOldScreenTexture:Lcom/android/gallery3d/ui/RawTexture;

    invoke-virtual {v1}, Lcom/android/gallery3d/ui/RawTexture;->recycle()V

    .line 169
    iput-object v2, p0, Lcom/android/gallery3d/anim/StateTransitionAnimation;->mOldScreenTexture:Lcom/android/gallery3d/ui/RawTexture;

    .line 173
    :cond_0
    iget-object v1, p0, Lcom/android/gallery3d/anim/StateTransitionAnimation;->mOldAnimTexture:Lcom/android/gallery3d/ui/RawTexture;

    if-eqz v1, :cond_1

    .line 174
    iget-object v1, p0, Lcom/android/gallery3d/anim/StateTransitionAnimation;->mOldAnimTexture:Lcom/android/gallery3d/ui/RawTexture;

    invoke-virtual {v1}, Lcom/android/gallery3d/ui/RawTexture;->recycle()V

    .line 175
    iput-object v2, p0, Lcom/android/gallery3d/anim/StateTransitionAnimation;->mOldAnimTexture:Lcom/android/gallery3d/ui/RawTexture;

    .line 177
    :cond_1
    invoke-static {}, Lcom/android/gallery3d/ui/TiledScreenNail;->enableDrawPlaceholder()V

    .line 179
    :cond_2
    return v0
.end method

.method protected onCalculate(F)V
    .locals 3
    .parameter "progress"

    .prologue
    const/high16 v2, 0x3f80

    .line 185
    iget-object v0, p0, Lcom/android/gallery3d/anim/StateTransitionAnimation;->mTransitionX:Lcom/android/gallery3d/anim/BaseTransition;

    if-eqz v0, :cond_2

    .line 186
    iput p1, p0, Lcom/android/gallery3d/anim/StateTransitionAnimation;->mProgress:F

    .line 188
    iget-object v0, p0, Lcom/android/gallery3d/anim/StateTransitionAnimation;->mTransitionX:Lcom/android/gallery3d/anim/BaseTransition;

    sget-object v1, Lcom/android/gallery3d/anim/StateTransitionAnimation$SpecX;->PHOTO_INCOMING_ANIMATION:Lcom/android/gallery3d/anim/BaseTransition;

    if-ne v0, v1, :cond_0

    .line 189
    iget v0, p0, Lcom/android/gallery3d/anim/StateTransitionAnimation;->mProgress:F

    cmpg-float v0, v0, v2

    if-gez v0, :cond_1

    .line 190
    iput v2, p0, Lcom/android/gallery3d/anim/StateTransitionAnimation;->mCurrentBackgroundAlpha:F

    .line 211
    :cond_0
    :goto_0
    return-void

    .line 192
    :cond_1
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/gallery3d/anim/StateTransitionAnimation;->mCurrentBackgroundAlpha:F

    goto :goto_0

    .line 197
    :cond_2
    iget-object v0, p0, Lcom/android/gallery3d/anim/StateTransitionAnimation;->mTransitionSpec:Lcom/android/gallery3d/anim/StateTransitionAnimation$Spec;

    iget v0, v0, Lcom/android/gallery3d/anim/StateTransitionAnimation$Spec;->contentScaleFrom:F

    iget-object v1, p0, Lcom/android/gallery3d/anim/StateTransitionAnimation;->mTransitionSpec:Lcom/android/gallery3d/anim/StateTransitionAnimation$Spec;

    iget v1, v1, Lcom/android/gallery3d/anim/StateTransitionAnimation$Spec;->contentScaleTo:F

    iget-object v2, p0, Lcom/android/gallery3d/anim/StateTransitionAnimation;->mTransitionSpec:Lcom/android/gallery3d/anim/StateTransitionAnimation$Spec;

    iget v2, v2, Lcom/android/gallery3d/anim/StateTransitionAnimation$Spec;->contentScaleFrom:F

    sub-float/2addr v1, v2

    mul-float/2addr v1, p1

    add-float/2addr v0, v1

    iput v0, p0, Lcom/android/gallery3d/anim/StateTransitionAnimation;->mCurrentContentScale:F

    .line 199
    iget-object v0, p0, Lcom/android/gallery3d/anim/StateTransitionAnimation;->mTransitionSpec:Lcom/android/gallery3d/anim/StateTransitionAnimation$Spec;

    iget v0, v0, Lcom/android/gallery3d/anim/StateTransitionAnimation$Spec;->contentAlphaFrom:F

    iget-object v1, p0, Lcom/android/gallery3d/anim/StateTransitionAnimation;->mTransitionSpec:Lcom/android/gallery3d/anim/StateTransitionAnimation$Spec;

    iget v1, v1, Lcom/android/gallery3d/anim/StateTransitionAnimation$Spec;->contentAlphaTo:F

    iget-object v2, p0, Lcom/android/gallery3d/anim/StateTransitionAnimation;->mTransitionSpec:Lcom/android/gallery3d/anim/StateTransitionAnimation$Spec;

    iget v2, v2, Lcom/android/gallery3d/anim/StateTransitionAnimation$Spec;->contentAlphaFrom:F

    sub-float/2addr v1, v2

    mul-float/2addr v1, p1

    add-float/2addr v0, v1

    iput v0, p0, Lcom/android/gallery3d/anim/StateTransitionAnimation;->mCurrentContentAlpha:F

    .line 201
    iget-object v0, p0, Lcom/android/gallery3d/anim/StateTransitionAnimation;->mTransitionSpec:Lcom/android/gallery3d/anim/StateTransitionAnimation$Spec;

    iget v0, v0, Lcom/android/gallery3d/anim/StateTransitionAnimation$Spec;->backgroundAlphaFrom:F

    iget-object v1, p0, Lcom/android/gallery3d/anim/StateTransitionAnimation;->mTransitionSpec:Lcom/android/gallery3d/anim/StateTransitionAnimation$Spec;

    iget v1, v1, Lcom/android/gallery3d/anim/StateTransitionAnimation$Spec;->backgroundAlphaTo:F

    iget-object v2, p0, Lcom/android/gallery3d/anim/StateTransitionAnimation;->mTransitionSpec:Lcom/android/gallery3d/anim/StateTransitionAnimation$Spec;

    iget v2, v2, Lcom/android/gallery3d/anim/StateTransitionAnimation$Spec;->backgroundAlphaFrom:F

    sub-float/2addr v1, v2

    mul-float/2addr v1, p1

    add-float/2addr v0, v1

    iput v0, p0, Lcom/android/gallery3d/anim/StateTransitionAnimation;->mCurrentBackgroundAlpha:F

    .line 204
    iget-object v0, p0, Lcom/android/gallery3d/anim/StateTransitionAnimation;->mTransitionSpec:Lcom/android/gallery3d/anim/StateTransitionAnimation$Spec;

    iget v0, v0, Lcom/android/gallery3d/anim/StateTransitionAnimation$Spec;->backgroundScaleFrom:F

    iget-object v1, p0, Lcom/android/gallery3d/anim/StateTransitionAnimation;->mTransitionSpec:Lcom/android/gallery3d/anim/StateTransitionAnimation$Spec;

    iget v1, v1, Lcom/android/gallery3d/anim/StateTransitionAnimation$Spec;->backgroundScaleTo:F

    iget-object v2, p0, Lcom/android/gallery3d/anim/StateTransitionAnimation;->mTransitionSpec:Lcom/android/gallery3d/anim/StateTransitionAnimation$Spec;

    iget v2, v2, Lcom/android/gallery3d/anim/StateTransitionAnimation$Spec;->backgroundScaleFrom:F

    sub-float/2addr v1, v2

    mul-float/2addr v1, p1

    add-float/2addr v0, v1

    iput v0, p0, Lcom/android/gallery3d/anim/StateTransitionAnimation;->mCurrentBackgroundScale:F

    .line 207
    iget-object v0, p0, Lcom/android/gallery3d/anim/StateTransitionAnimation;->mTransitionSpec:Lcom/android/gallery3d/anim/StateTransitionAnimation$Spec;

    iget v0, v0, Lcom/android/gallery3d/anim/StateTransitionAnimation$Spec;->overlayScaleFrom:F

    iget-object v1, p0, Lcom/android/gallery3d/anim/StateTransitionAnimation;->mTransitionSpec:Lcom/android/gallery3d/anim/StateTransitionAnimation$Spec;

    iget v1, v1, Lcom/android/gallery3d/anim/StateTransitionAnimation$Spec;->overlayScaleTo:F

    iget-object v2, p0, Lcom/android/gallery3d/anim/StateTransitionAnimation;->mTransitionSpec:Lcom/android/gallery3d/anim/StateTransitionAnimation$Spec;

    iget v2, v2, Lcom/android/gallery3d/anim/StateTransitionAnimation$Spec;->overlayScaleFrom:F

    sub-float/2addr v1, v2

    mul-float/2addr v1, p1

    add-float/2addr v0, v1

    iput v0, p0, Lcom/android/gallery3d/anim/StateTransitionAnimation;->mCurrentOverlayScale:F

    .line 209
    iget-object v0, p0, Lcom/android/gallery3d/anim/StateTransitionAnimation;->mTransitionSpec:Lcom/android/gallery3d/anim/StateTransitionAnimation$Spec;

    iget v0, v0, Lcom/android/gallery3d/anim/StateTransitionAnimation$Spec;->overlayAlphaFrom:F

    iget-object v1, p0, Lcom/android/gallery3d/anim/StateTransitionAnimation;->mTransitionSpec:Lcom/android/gallery3d/anim/StateTransitionAnimation$Spec;

    iget v1, v1, Lcom/android/gallery3d/anim/StateTransitionAnimation$Spec;->overlayAlphaTo:F

    iget-object v2, p0, Lcom/android/gallery3d/anim/StateTransitionAnimation;->mTransitionSpec:Lcom/android/gallery3d/anim/StateTransitionAnimation$Spec;

    iget v2, v2, Lcom/android/gallery3d/anim/StateTransitionAnimation$Spec;->overlayAlphaFrom:F

    sub-float/2addr v1, v2

    mul-float/2addr v1, p1

    add-float/2addr v0, v1

    iput v0, p0, Lcom/android/gallery3d/anim/StateTransitionAnimation;->mCurrentOverlayAlpha:F

    goto :goto_0
.end method
