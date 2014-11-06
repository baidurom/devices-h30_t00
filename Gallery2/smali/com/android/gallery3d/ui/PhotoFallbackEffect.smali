.class public Lcom/android/gallery3d/ui/PhotoFallbackEffect;
.super Lcom/android/gallery3d/anim/Animation;
.source "PhotoFallbackEffect.java"

# interfaces
.implements Lcom/android/gallery3d/ui/AlbumSlotRenderer$SlotFilter;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/gallery3d/ui/PhotoFallbackEffect$PositionProvider;,
        Lcom/android/gallery3d/ui/PhotoFallbackEffect$Entry;
    }
.end annotation


# static fields
.field private static final ANIM_DURATION:I = 0xfa

.field private static final ANIM_INTERPOLATE:Landroid/view/animation/Interpolator;


# instance fields
.field private mList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/gallery3d/ui/PhotoFallbackEffect$Entry;",
            ">;"
        }
    .end annotation
.end field

.field mPhotoViewBackTransition:Lcom/android/gallery3d/anim/PhotoViewBackTransition;

.field private mPositionProvider:Lcom/android/gallery3d/ui/PhotoFallbackEffect$PositionProvider;

.field private mProgress:F

.field private mSource:Landroid/graphics/RectF;

.field private mTarget:Landroid/graphics/RectF;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 36
    new-instance v0, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    sput-object v0, Lcom/android/gallery3d/ui/PhotoFallbackEffect;->ANIM_INTERPOLATE:Landroid/view/animation/Interpolator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 74
    invoke-direct {p0}, Lcom/android/gallery3d/anim/Animation;-><init>()V

    .line 65
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/android/gallery3d/ui/PhotoFallbackEffect;->mSource:Landroid/graphics/RectF;

    .line 66
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/android/gallery3d/ui/PhotoFallbackEffect;->mTarget:Landroid/graphics/RectF;

    .line 70
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/gallery3d/ui/PhotoFallbackEffect;->mList:Ljava/util/ArrayList;

    .line 73
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/gallery3d/ui/PhotoFallbackEffect;->mPhotoViewBackTransition:Lcom/android/gallery3d/anim/PhotoViewBackTransition;

    .line 75
    const/16 v0, 0xfa

    invoke-virtual {p0, v0}, Lcom/android/gallery3d/ui/PhotoFallbackEffect;->setDuration(I)V

    .line 76
    sget-object v0, Lcom/android/gallery3d/ui/PhotoFallbackEffect;->ANIM_INTERPOLATE:Landroid/view/animation/Interpolator;

    invoke-virtual {p0, v0}, Lcom/android/gallery3d/ui/PhotoFallbackEffect;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 77
    new-instance v0, Lcom/android/gallery3d/anim/PhotoViewBackTransition;

    invoke-direct {v0}, Lcom/android/gallery3d/anim/PhotoViewBackTransition;-><init>()V

    iput-object v0, p0, Lcom/android/gallery3d/ui/PhotoFallbackEffect;->mPhotoViewBackTransition:Lcom/android/gallery3d/anim/PhotoViewBackTransition;

    .line 78
    return-void
.end method

.method private drawEntry(Lcom/android/gallery3d/ui/GLCanvas;Lcom/android/gallery3d/ui/PhotoFallbackEffect$Entry;)V
    .locals 19
    .parameter "canvas"
    .parameter "entry"

    .prologue
    .line 96
    move-object/from16 v0, p2

    iget-object v13, v0, Lcom/android/gallery3d/ui/PhotoFallbackEffect$Entry;->texture:Lcom/android/gallery3d/ui/RawTexture;

    invoke-virtual {v13}, Lcom/android/gallery3d/ui/RawTexture;->isLoaded()Z

    move-result v13

    if-nez v13, :cond_1

    .line 139
    :cond_0
    :goto_0
    return-void

    .line 98
    :cond_1
    move-object/from16 v0, p2

    iget-object v13, v0, Lcom/android/gallery3d/ui/PhotoFallbackEffect$Entry;->texture:Lcom/android/gallery3d/ui/RawTexture;

    invoke-virtual {v13}, Lcom/android/gallery3d/ui/RawTexture;->getWidth()I

    move-result v12

    .line 99
    .local v12, w:I
    move-object/from16 v0, p2

    iget-object v13, v0, Lcom/android/gallery3d/ui/PhotoFallbackEffect$Entry;->texture:Lcom/android/gallery3d/ui/RawTexture;

    invoke-virtual {v13}, Lcom/android/gallery3d/ui/RawTexture;->getHeight()I

    move-result v7

    .line 101
    .local v7, h:I
    move-object/from16 v0, p2

    iget-object v10, v0, Lcom/android/gallery3d/ui/PhotoFallbackEffect$Entry;->source:Landroid/graphics/Rect;

    .line 102
    .local v10, s:Landroid/graphics/Rect;
    move-object/from16 v0, p2

    iget-object v5, v0, Lcom/android/gallery3d/ui/PhotoFallbackEffect$Entry;->dest:Landroid/graphics/Rect;

    .line 106
    .local v5, d:Landroid/graphics/Rect;
    move-object/from16 v0, p0

    iget v9, v0, Lcom/android/gallery3d/ui/PhotoFallbackEffect;->mProgress:F

    .line 108
    .local v9, p:F
    const v6, 0x3f63d70a

    .line 109
    .local v6, fullScale:F
    const/high16 v13, 0x3f80

    sub-float v13, v6, v13

    mul-float/2addr v13, v9

    const/high16 v14, 0x3f80

    add-float v11, v13, v14

    .line 111
    .local v11, scale:F
    invoke-virtual {v5}, Landroid/graphics/Rect;->centerX()I

    move-result v13

    int-to-float v13, v13

    mul-float/2addr v13, v9

    invoke-virtual {v10}, Landroid/graphics/Rect;->centerX()I

    move-result v14

    int-to-float v14, v14

    const/high16 v15, 0x3f80

    sub-float/2addr v15, v9

    mul-float/2addr v14, v15

    add-float v3, v13, v14

    .line 112
    .local v3, cx:F
    invoke-virtual {v5}, Landroid/graphics/Rect;->centerY()I

    move-result v13

    int-to-float v13, v13

    mul-float/2addr v13, v9

    invoke-virtual {v10}, Landroid/graphics/Rect;->centerY()I

    move-result v14

    int-to-float v14, v14

    const/high16 v15, 0x3f80

    sub-float/2addr v15, v9

    mul-float/2addr v14, v15

    add-float v4, v13, v14

    .line 114
    .local v4, cy:F
    invoke-virtual {v10}, Landroid/graphics/Rect;->height()I

    move-result v13

    int-to-float v13, v13

    mul-float v1, v13, v11

    .line 115
    .local v1, ch:F
    invoke-virtual {v10}, Landroid/graphics/Rect;->width()I

    move-result v13

    int-to-float v13, v13

    mul-float v2, v13, v11

    .line 116
    .local v2, cw:F
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/gallery3d/ui/PhotoFallbackEffect;->mPhotoViewBackTransition:Lcom/android/gallery3d/anim/PhotoViewBackTransition;

    invoke-virtual {v13, v9, v5}, Lcom/android/gallery3d/anim/PhotoViewBackTransition;->getTransformation3D(FLandroid/graphics/Rect;)Lcom/android/gallery3d/anim/BaseTransition$TransformationInfo;

    move-result-object v8

    .line 117
    .local v8, info:Lcom/android/gallery3d/anim/BaseTransition$TransformationInfo;
    if-eqz v8, :cond_0

    .line 118
    iget-boolean v13, v8, Lcom/android/gallery3d/anim/BaseTransition$TransformationInfo;->mMatrixDirty:Z

    if-eqz v13, :cond_2

    .line 119
    iget-object v13, v8, Lcom/android/gallery3d/anim/BaseTransition$TransformationInfo;->mMatrix3D:[F

    const/4 v14, 0x0

    move-object/from16 v0, p1

    invoke-interface {v0, v13, v14}, Lcom/android/gallery3d/ui/GLCanvas;->multiplyMatrix([FI)V

    .line 121
    :cond_2
    iget-boolean v13, v8, Lcom/android/gallery3d/anim/BaseTransition$TransformationInfo;->mAlphaDirty:Z

    if-eqz v13, :cond_3

    .line 122
    iget v13, v8, Lcom/android/gallery3d/anim/BaseTransition$TransformationInfo;->mAlpha:F

    move-object/from16 v0, p1

    invoke-interface {v0, v13}, Lcom/android/gallery3d/ui/GLCanvas;->multiplyAlpha(F)V

    .line 127
    :cond_3
    if-le v12, v7, :cond_4

    .line 130
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/gallery3d/ui/PhotoFallbackEffect;->mTarget:Landroid/graphics/RectF;

    const/high16 v14, 0x4000

    div-float v14, v1, v14

    sub-float v14, v3, v14

    const/high16 v15, 0x4000

    div-float v15, v1, v15

    sub-float v15, v4, v15

    const/high16 v16, 0x4000

    div-float v16, v1, v16

    add-float v16, v16, v3

    const/high16 v17, 0x4000

    div-float v17, v1, v17

    add-float v17, v17, v4

    invoke-virtual/range {v13 .. v17}, Landroid/graphics/RectF;->set(FFFF)V

    .line 131
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/gallery3d/ui/PhotoFallbackEffect;->mSource:Landroid/graphics/RectF;

    sub-int v14, v12, v7

    int-to-float v14, v14

    const/high16 v15, 0x4000

    div-float/2addr v14, v15

    const/4 v15, 0x0

    add-int v16, v12, v7

    move/from16 v0, v16

    int-to-float v0, v0

    move/from16 v16, v0

    const/high16 v17, 0x4000

    div-float v16, v16, v17

    int-to-float v0, v7

    move/from16 v17, v0

    invoke-virtual/range {v13 .. v17}, Landroid/graphics/RectF;->set(FFFF)V

    .line 132
    move-object/from16 v0, p2

    iget-object v13, v0, Lcom/android/gallery3d/ui/PhotoFallbackEffect$Entry;->texture:Lcom/android/gallery3d/ui/RawTexture;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/gallery3d/ui/PhotoFallbackEffect;->mSource:Landroid/graphics/RectF;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/gallery3d/ui/PhotoFallbackEffect;->mTarget:Landroid/graphics/RectF;

    move-object/from16 v0, p1

    invoke-interface {v0, v13, v14, v15}, Lcom/android/gallery3d/ui/GLCanvas;->drawTexture(Lcom/android/gallery3d/ui/BasicTexture;Landroid/graphics/RectF;Landroid/graphics/RectF;)V

    goto/16 :goto_0

    .line 135
    :cond_4
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/gallery3d/ui/PhotoFallbackEffect;->mTarget:Landroid/graphics/RectF;

    const/high16 v14, 0x4000

    div-float v14, v2, v14

    sub-float v14, v3, v14

    const/high16 v15, 0x4000

    div-float v15, v2, v15

    sub-float v15, v4, v15

    const/high16 v16, 0x4000

    div-float v16, v2, v16

    add-float v16, v16, v3

    const/high16 v17, 0x4000

    div-float v17, v2, v17

    add-float v17, v17, v4

    invoke-virtual/range {v13 .. v17}, Landroid/graphics/RectF;->set(FFFF)V

    .line 136
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/gallery3d/ui/PhotoFallbackEffect;->mSource:Landroid/graphics/RectF;

    const/4 v14, 0x0

    sub-int v15, v7, v12

    int-to-float v15, v15

    const/high16 v16, 0x4000

    div-float v15, v15, v16

    int-to-float v0, v12

    move/from16 v16, v0

    add-int v17, v7, v12

    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v17, v0

    const/high16 v18, 0x4000

    div-float v17, v17, v18

    invoke-virtual/range {v13 .. v17}, Landroid/graphics/RectF;->set(FFFF)V

    .line 137
    move-object/from16 v0, p2

    iget-object v13, v0, Lcom/android/gallery3d/ui/PhotoFallbackEffect$Entry;->texture:Lcom/android/gallery3d/ui/RawTexture;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/gallery3d/ui/PhotoFallbackEffect;->mSource:Landroid/graphics/RectF;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/gallery3d/ui/PhotoFallbackEffect;->mTarget:Landroid/graphics/RectF;

    move-object/from16 v0, p1

    invoke-interface {v0, v13, v14, v15}, Lcom/android/gallery3d/ui/GLCanvas;->drawTexture(Lcom/android/gallery3d/ui/BasicTexture;Landroid/graphics/RectF;Landroid/graphics/RectF;)V

    goto/16 :goto_0
.end method


# virtual methods
.method public acceptSlot(I)Z
    .locals 4
    .parameter "index"

    .prologue
    .line 158
    const/4 v1, 0x0

    .local v1, i:I
    iget-object v3, p0, Lcom/android/gallery3d/ui/PhotoFallbackEffect;->mList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v2

    .local v2, n:I
    :goto_0
    if-ge v1, v2, :cond_1

    .line 159
    iget-object v3, p0, Lcom/android/gallery3d/ui/PhotoFallbackEffect;->mList:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/gallery3d/ui/PhotoFallbackEffect$Entry;

    .line 160
    .local v0, entry:Lcom/android/gallery3d/ui/PhotoFallbackEffect$Entry;
    iget v3, v0, Lcom/android/gallery3d/ui/PhotoFallbackEffect$Entry;->index:I

    if-ne v3, p1, :cond_0

    const/4 v3, 0x0

    .line 162
    .end local v0           #entry:Lcom/android/gallery3d/ui/PhotoFallbackEffect$Entry;
    :goto_1
    return v3

    .line 158
    .restart local v0       #entry:Lcom/android/gallery3d/ui/PhotoFallbackEffect$Entry;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 162
    .end local v0           #entry:Lcom/android/gallery3d/ui/PhotoFallbackEffect$Entry;
    :cond_1
    const/4 v3, 0x1

    goto :goto_1
.end method

.method public addEntry(Lcom/android/gallery3d/data/Path;Landroid/graphics/Rect;Lcom/android/gallery3d/ui/RawTexture;I)V
    .locals 2
    .parameter "path"
    .parameter "rect"
    .parameter "texture"
    .parameter "i"

    .prologue
    .line 81
    iget-object v0, p0, Lcom/android/gallery3d/ui/PhotoFallbackEffect;->mList:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/gallery3d/ui/PhotoFallbackEffect$Entry;

    invoke-direct {v1, p1, p2, p3, p4}, Lcom/android/gallery3d/ui/PhotoFallbackEffect$Entry;-><init>(Lcom/android/gallery3d/data/Path;Landroid/graphics/Rect;Lcom/android/gallery3d/ui/RawTexture;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 82
    return-void
.end method

.method public draw(Lcom/android/gallery3d/ui/GLCanvas;)Z
    .locals 6
    .parameter "canvas"

    .prologue
    .line 85
    invoke-static {}, Lcom/android/gallery3d/ui/AnimationTime;->get()J

    move-result-wide v4

    invoke-virtual {p0, v4, v5}, Lcom/android/gallery3d/ui/PhotoFallbackEffect;->calculate(J)Z

    move-result v2

    .line 86
    .local v2, more:Z
    const/4 v1, 0x0

    .local v1, i:I
    iget-object v4, p0, Lcom/android/gallery3d/ui/PhotoFallbackEffect;->mList:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v3

    .local v3, n:I
    :goto_0
    if-ge v1, v3, :cond_1

    .line 87
    iget-object v4, p0, Lcom/android/gallery3d/ui/PhotoFallbackEffect;->mList:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/gallery3d/ui/PhotoFallbackEffect$Entry;

    .line 88
    .local v0, entry:Lcom/android/gallery3d/ui/PhotoFallbackEffect$Entry;
    iget v4, v0, Lcom/android/gallery3d/ui/PhotoFallbackEffect$Entry;->index:I

    if-gez v4, :cond_0

    .line 86
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 89
    :cond_0
    iget-object v4, p0, Lcom/android/gallery3d/ui/PhotoFallbackEffect;->mPositionProvider:Lcom/android/gallery3d/ui/PhotoFallbackEffect$PositionProvider;

    iget v5, v0, Lcom/android/gallery3d/ui/PhotoFallbackEffect$Entry;->index:I

    invoke-interface {v4, v5}, Lcom/android/gallery3d/ui/PhotoFallbackEffect$PositionProvider;->getPosition(I)Landroid/graphics/Rect;

    move-result-object v4

    iput-object v4, v0, Lcom/android/gallery3d/ui/PhotoFallbackEffect$Entry;->dest:Landroid/graphics/Rect;

    .line 90
    invoke-direct {p0, p1, v0}, Lcom/android/gallery3d/ui/PhotoFallbackEffect;->drawEntry(Lcom/android/gallery3d/ui/GLCanvas;Lcom/android/gallery3d/ui/PhotoFallbackEffect$Entry;)V

    goto :goto_1

    .line 92
    .end local v0           #entry:Lcom/android/gallery3d/ui/PhotoFallbackEffect$Entry;
    :cond_1
    return v2
.end method

.method protected onCalculate(F)V
    .locals 0
    .parameter "progress"

    .prologue
    .line 143
    iput p1, p0, Lcom/android/gallery3d/ui/PhotoFallbackEffect;->mProgress:F

    .line 144
    return-void
.end method

.method public setPositionProvider(ILcom/android/gallery3d/ui/PhotoFallbackEffect$PositionProvider;)V
    .locals 4
    .parameter "entryIndex"
    .parameter "provider"

    .prologue
    .line 147
    iput-object p2, p0, Lcom/android/gallery3d/ui/PhotoFallbackEffect;->mPositionProvider:Lcom/android/gallery3d/ui/PhotoFallbackEffect$PositionProvider;

    .line 148
    iget-object v3, p0, Lcom/android/gallery3d/ui/PhotoFallbackEffect;->mPositionProvider:Lcom/android/gallery3d/ui/PhotoFallbackEffect$PositionProvider;

    if-eqz v3, :cond_0

    .line 149
    const/4 v1, 0x0

    .local v1, i:I
    iget-object v3, p0, Lcom/android/gallery3d/ui/PhotoFallbackEffect;->mList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v2

    .local v2, n:I
    :goto_0
    if-ge v1, v2, :cond_0

    .line 150
    iget-object v3, p0, Lcom/android/gallery3d/ui/PhotoFallbackEffect;->mList:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/gallery3d/ui/PhotoFallbackEffect$Entry;

    .line 151
    .local v0, entry:Lcom/android/gallery3d/ui/PhotoFallbackEffect$Entry;
    iget v3, v0, Lcom/android/gallery3d/ui/PhotoFallbackEffect$Entry;->relativeIndex:I

    add-int/2addr v3, p1

    iput v3, v0, Lcom/android/gallery3d/ui/PhotoFallbackEffect$Entry;->index:I

    .line 149
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 154
    .end local v0           #entry:Lcom/android/gallery3d/ui/PhotoFallbackEffect$Entry;
    .end local v1           #i:I
    .end local v2           #n:I
    :cond_0
    return-void
.end method
