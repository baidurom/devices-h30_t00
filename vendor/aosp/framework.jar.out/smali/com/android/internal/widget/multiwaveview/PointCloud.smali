.class public Lcom/android/internal/widget/multiwaveview/PointCloud;
.super Ljava/lang/Object;
.source "PointCloud.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/widget/multiwaveview/PointCloud$Point;,
        Lcom/android/internal/widget/multiwaveview/PointCloud$GlowManager;,
        Lcom/android/internal/widget/multiwaveview/PointCloud$WaveManager;
    }
.end annotation


# static fields
.field private static final INNER_POINTS:I = 0x8

.field private static final MAX_POINT_SIZE:F = 4.0f

.field private static final MIN_POINT_SIZE:F = 2.0f

.field private static final PI:F = 3.1415927f

.field private static final TAG:Ljava/lang/String; = "PointCloud"


# instance fields
.field glowManager:Lcom/android/internal/widget/multiwaveview/PointCloud$GlowManager;

.field private mCenterX:F

.field private mCenterY:F

.field private mDrawable:Landroid/graphics/drawable/Drawable;

.field private mIsVoiceAssistantStyle:Z

.field private mOuterRadius:F

.field private mPaint:Landroid/graphics/Paint;

.field private mPointCloud:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/widget/multiwaveview/PointCloud$Point;",
            ">;"
        }
    .end annotation
.end field

.field private mScale:F

.field waveManager:Lcom/android/internal/widget/multiwaveview/PointCloud$WaveManager;


# direct methods
.method public constructor <init>(Landroid/graphics/drawable/Drawable;)V
    .locals 3
    .parameter "drawable"

    .prologue
    const/16 v1, 0xff

    const/4 v2, 0x1

    .line 118
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 33
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/widget/multiwaveview/PointCloud;->mPointCloud:Ljava/util/ArrayList;

    .line 38
    const/high16 v0, 0x3f80

    iput v0, p0, Lcom/android/internal/widget/multiwaveview/PointCloud;->mScale:F

    .line 42
    new-instance v0, Lcom/android/internal/widget/multiwaveview/PointCloud$WaveManager;

    invoke-direct {v0, p0}, Lcom/android/internal/widget/multiwaveview/PointCloud$WaveManager;-><init>(Lcom/android/internal/widget/multiwaveview/PointCloud;)V

    iput-object v0, p0, Lcom/android/internal/widget/multiwaveview/PointCloud;->waveManager:Lcom/android/internal/widget/multiwaveview/PointCloud$WaveManager;

    .line 43
    new-instance v0, Lcom/android/internal/widget/multiwaveview/PointCloud$GlowManager;

    invoke-direct {v0, p0}, Lcom/android/internal/widget/multiwaveview/PointCloud$GlowManager;-><init>(Lcom/android/internal/widget/multiwaveview/PointCloud;)V

    iput-object v0, p0, Lcom/android/internal/widget/multiwaveview/PointCloud;->glowManager:Lcom/android/internal/widget/multiwaveview/PointCloud$GlowManager;

    .line 247
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/widget/multiwaveview/PointCloud;->mIsVoiceAssistantStyle:Z

    .line 119
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/android/internal/widget/multiwaveview/PointCloud;->mPaint:Landroid/graphics/Paint;

    .line 120
    iget-object v0, p0, Lcom/android/internal/widget/multiwaveview/PointCloud;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    .line 121
    iget-object v0, p0, Lcom/android/internal/widget/multiwaveview/PointCloud;->mPaint:Landroid/graphics/Paint;

    invoke-static {v1, v1, v1}, Landroid/graphics/Color;->rgb(III)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 122
    iget-object v0, p0, Lcom/android/internal/widget/multiwaveview/PointCloud;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 123
    iget-object v0, p0, Lcom/android/internal/widget/multiwaveview/PointCloud;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setDither(Z)V

    .line 125
    invoke-virtual {p0, p1}, Lcom/android/internal/widget/multiwaveview/PointCloud;->setDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 127
    return-void
.end method

.method private static hypot(FF)F
    .locals 2
    .parameter "x"
    .parameter "y"

    .prologue
    .line 169
    mul-float v0, p0, p0

    mul-float v1, p1, p1

    add-float/2addr v0, v1

    invoke-static {v0}, Landroid/util/FloatMath;->sqrt(F)F

    move-result v0

    return v0
.end method

.method private interp(FFF)F
    .locals 1
    .parameter "min"
    .parameter "max"
    .parameter "f"

    .prologue
    .line 198
    sub-float v0, p2, p1

    mul-float/2addr v0, p3

    add-float/2addr v0, p1

    return v0
.end method

.method private static max(FF)F
    .locals 1
    .parameter "a"
    .parameter "b"

    .prologue
    .line 173
    cmpl-float v0, p0, p1

    if-lez v0, :cond_0

    .end local p0
    :goto_0
    return p0

    .restart local p0
    :cond_0
    move p0, p1

    goto :goto_0
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 16
    .parameter "canvas"

    .prologue
    .line 203
    move-object/from16 v0, p0

    iget-boolean v12, v0, Lcom/android/internal/widget/multiwaveview/PointCloud;->mIsVoiceAssistantStyle:Z

    if-nez v12, :cond_4

    .line 204
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/internal/widget/multiwaveview/PointCloud;->mPointCloud:Ljava/util/ArrayList;

    .line 205
    .local v8, points:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/internal/widget/multiwaveview/PointCloud$Point;>;"
    const/4 v12, 0x1

    move-object/from16 v0, p1

    invoke-virtual {v0, v12}, Landroid/graphics/Canvas;->save(I)I

    .line 206
    move-object/from16 v0, p0

    iget v12, v0, Lcom/android/internal/widget/multiwaveview/PointCloud;->mScale:F

    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/internal/widget/multiwaveview/PointCloud;->mScale:F

    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/internal/widget/multiwaveview/PointCloud;->mCenterX:F

    move-object/from16 v0, p0

    iget v15, v0, Lcom/android/internal/widget/multiwaveview/PointCloud;->mCenterY:F

    move-object/from16 v0, p1

    invoke-virtual {v0, v12, v13, v14, v15}, Landroid/graphics/Canvas;->scale(FFFF)V

    .line 207
    const/4 v5, 0x0

    .local v5, i:I
    :goto_0
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v12

    if-ge v5, v12, :cond_2

    .line 208
    invoke-virtual {v8, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/internal/widget/multiwaveview/PointCloud$Point;

    .line 209
    .local v6, point:Lcom/android/internal/widget/multiwaveview/PointCloud$Point;
    const/high16 v12, 0x4080

    const/high16 v13, 0x4000

    iget v14, v6, Lcom/android/internal/widget/multiwaveview/PointCloud$Point;->radius:F

    move-object/from16 v0, p0

    iget v15, v0, Lcom/android/internal/widget/multiwaveview/PointCloud;->mOuterRadius:F

    div-float/2addr v14, v15

    move-object/from16 v0, p0

    invoke-direct {v0, v12, v13, v14}, Lcom/android/internal/widget/multiwaveview/PointCloud;->interp(FFF)F

    move-result v7

    .line 211
    .local v7, pointSize:F
    iget v12, v6, Lcom/android/internal/widget/multiwaveview/PointCloud$Point;->x:F

    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/internal/widget/multiwaveview/PointCloud;->mCenterX:F

    add-float v9, v12, v13

    .line 212
    .local v9, px:F
    iget v12, v6, Lcom/android/internal/widget/multiwaveview/PointCloud$Point;->y:F

    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/internal/widget/multiwaveview/PointCloud;->mCenterY:F

    add-float v10, v12, v13

    .line 213
    .local v10, py:F
    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lcom/android/internal/widget/multiwaveview/PointCloud;->getAlphaForPoint(Lcom/android/internal/widget/multiwaveview/PointCloud$Point;)I

    move-result v1

    .line 215
    .local v1, alpha:I
    if-nez v1, :cond_0

    .line 207
    :goto_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 217
    :cond_0
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/internal/widget/multiwaveview/PointCloud;->mDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v12, :cond_1

    .line 218
    const/4 v12, 0x1

    move-object/from16 v0, p1

    invoke-virtual {v0, v12}, Landroid/graphics/Canvas;->save(I)I

    .line 219
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/internal/widget/multiwaveview/PointCloud;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v12}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v12

    int-to-float v12, v12

    const/high16 v13, 0x3f00

    mul-float v2, v12, v13

    .line 220
    .local v2, cx:F
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/internal/widget/multiwaveview/PointCloud;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v12}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v12

    int-to-float v12, v12

    const/high16 v13, 0x3f00

    mul-float v3, v12, v13

    .line 221
    .local v3, cy:F
    const/high16 v12, 0x4080

    div-float v11, v7, v12

    .line 222
    .local v11, s:F
    move-object/from16 v0, p1

    invoke-virtual {v0, v11, v11, v9, v10}, Landroid/graphics/Canvas;->scale(FFFF)V

    .line 223
    sub-float v12, v9, v2

    sub-float v13, v10, v3

    move-object/from16 v0, p1

    invoke-virtual {v0, v12, v13}, Landroid/graphics/Canvas;->translate(FF)V

    .line 224
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/internal/widget/multiwaveview/PointCloud;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v12, v1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 225
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/internal/widget/multiwaveview/PointCloud;->mDrawable:Landroid/graphics/drawable/Drawable;

    move-object/from16 v0, p1

    invoke-virtual {v12, v0}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 226
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    goto :goto_1

    .line 228
    .end local v2           #cx:F
    .end local v3           #cy:F
    .end local v11           #s:F
    :cond_1
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/internal/widget/multiwaveview/PointCloud;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v12, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 229
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/internal/widget/multiwaveview/PointCloud;->mPaint:Landroid/graphics/Paint;

    move-object/from16 v0, p1

    invoke-virtual {v0, v9, v10, v7, v12}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    goto :goto_1

    .line 232
    .end local v1           #alpha:I
    .end local v6           #point:Lcom/android/internal/widget/multiwaveview/PointCloud$Point;
    .end local v7           #pointSize:F
    .end local v9           #px:F
    .end local v10           #py:F
    :cond_2
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    .line 245
    .end local v5           #i:I
    .end local v8           #points:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/internal/widget/multiwaveview/PointCloud$Point;>;"
    :cond_3
    :goto_2
    return-void

    .line 234
    :cond_4
    const/4 v12, 0x1

    move-object/from16 v0, p1

    invoke-virtual {v0, v12}, Landroid/graphics/Canvas;->save(I)I

    .line 235
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/widget/multiwaveview/PointCloud;->mDrawable:Landroid/graphics/drawable/Drawable;

    .line 236
    .local v4, dr:Landroid/graphics/drawable/Drawable;
    if-eqz v4, :cond_3

    .line 237
    const/4 v12, 0x1

    move-object/from16 v0, p1

    invoke-virtual {v0, v12}, Landroid/graphics/Canvas;->save(I)I

    .line 238
    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v12

    int-to-float v12, v12

    const/high16 v13, 0x3f00

    mul-float v2, v12, v13

    .line 239
    .restart local v2       #cx:F
    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v12

    int-to-float v12, v12

    const/high16 v13, 0x3f00

    mul-float v3, v12, v13

    .line 240
    .restart local v3       #cy:F
    move-object/from16 v0, p0

    iget v12, v0, Lcom/android/internal/widget/multiwaveview/PointCloud;->mCenterX:F

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/widget/multiwaveview/PointCloud;->glowManager:Lcom/android/internal/widget/multiwaveview/PointCloud$GlowManager;

    #getter for: Lcom/android/internal/widget/multiwaveview/PointCloud$GlowManager;->x:F
    invoke-static {v13}, Lcom/android/internal/widget/multiwaveview/PointCloud$GlowManager;->access$000(Lcom/android/internal/widget/multiwaveview/PointCloud$GlowManager;)F

    move-result v13

    add-float/2addr v12, v13

    sub-float/2addr v12, v2

    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/internal/widget/multiwaveview/PointCloud;->mCenterY:F

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/widget/multiwaveview/PointCloud;->glowManager:Lcom/android/internal/widget/multiwaveview/PointCloud$GlowManager;

    #getter for: Lcom/android/internal/widget/multiwaveview/PointCloud$GlowManager;->y:F
    invoke-static {v14}, Lcom/android/internal/widget/multiwaveview/PointCloud$GlowManager;->access$100(Lcom/android/internal/widget/multiwaveview/PointCloud$GlowManager;)F

    move-result v14

    add-float/2addr v13, v14

    sub-float/2addr v13, v3

    move-object/from16 v0, p1

    invoke-virtual {v0, v12, v13}, Landroid/graphics/Canvas;->translate(FF)V

    .line 241
    move-object/from16 v0, p1

    invoke-virtual {v4, v0}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 242
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    goto :goto_2
.end method

.method public getAlphaForPoint(Lcom/android/internal/widget/multiwaveview/PointCloud$Point;)I
    .locals 13
    .parameter "point"

    .prologue
    const v12, 0x3f490fdb

    const/4 v11, 0x0

    .line 178
    iget-object v6, p0, Lcom/android/internal/widget/multiwaveview/PointCloud;->glowManager:Lcom/android/internal/widget/multiwaveview/PointCloud$GlowManager;

    #getter for: Lcom/android/internal/widget/multiwaveview/PointCloud$GlowManager;->x:F
    invoke-static {v6}, Lcom/android/internal/widget/multiwaveview/PointCloud$GlowManager;->access$000(Lcom/android/internal/widget/multiwaveview/PointCloud$GlowManager;)F

    move-result v6

    iget v7, p1, Lcom/android/internal/widget/multiwaveview/PointCloud$Point;->x:F

    sub-float/2addr v6, v7

    iget-object v7, p0, Lcom/android/internal/widget/multiwaveview/PointCloud;->glowManager:Lcom/android/internal/widget/multiwaveview/PointCloud$GlowManager;

    #getter for: Lcom/android/internal/widget/multiwaveview/PointCloud$GlowManager;->y:F
    invoke-static {v7}, Lcom/android/internal/widget/multiwaveview/PointCloud$GlowManager;->access$100(Lcom/android/internal/widget/multiwaveview/PointCloud$GlowManager;)F

    move-result v7

    iget v8, p1, Lcom/android/internal/widget/multiwaveview/PointCloud$Point;->y:F

    sub-float/2addr v7, v8

    invoke-static {v6, v7}, Lcom/android/internal/widget/multiwaveview/PointCloud;->hypot(FF)F

    move-result v3

    .line 179
    .local v3, glowDistance:F
    const/4 v2, 0x0

    .line 180
    .local v2, glowAlpha:F
    iget-object v6, p0, Lcom/android/internal/widget/multiwaveview/PointCloud;->glowManager:Lcom/android/internal/widget/multiwaveview/PointCloud$GlowManager;

    #getter for: Lcom/android/internal/widget/multiwaveview/PointCloud$GlowManager;->radius:F
    invoke-static {v6}, Lcom/android/internal/widget/multiwaveview/PointCloud$GlowManager;->access$200(Lcom/android/internal/widget/multiwaveview/PointCloud$GlowManager;)F

    move-result v6

    cmpg-float v6, v3, v6

    if-gez v6, :cond_0

    .line 181
    mul-float v6, v12, v3

    iget-object v7, p0, Lcom/android/internal/widget/multiwaveview/PointCloud;->glowManager:Lcom/android/internal/widget/multiwaveview/PointCloud$GlowManager;

    #getter for: Lcom/android/internal/widget/multiwaveview/PointCloud$GlowManager;->radius:F
    invoke-static {v7}, Lcom/android/internal/widget/multiwaveview/PointCloud$GlowManager;->access$200(Lcom/android/internal/widget/multiwaveview/PointCloud$GlowManager;)F

    move-result v7

    div-float/2addr v6, v7

    invoke-static {v6}, Landroid/util/FloatMath;->cos(F)F

    move-result v0

    .line 182
    .local v0, cosf:F
    iget-object v6, p0, Lcom/android/internal/widget/multiwaveview/PointCloud;->glowManager:Lcom/android/internal/widget/multiwaveview/PointCloud$GlowManager;

    #getter for: Lcom/android/internal/widget/multiwaveview/PointCloud$GlowManager;->alpha:F
    invoke-static {v6}, Lcom/android/internal/widget/multiwaveview/PointCloud$GlowManager;->access$300(Lcom/android/internal/widget/multiwaveview/PointCloud$GlowManager;)F

    move-result v6

    float-to-double v7, v0

    const-wide/high16 v9, 0x4024

    invoke-static {v7, v8, v9, v10}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v7

    double-to-float v7, v7

    invoke-static {v11, v7}, Lcom/android/internal/widget/multiwaveview/PointCloud;->max(FF)F

    move-result v7

    mul-float v2, v6, v7

    .line 186
    .end local v0           #cosf:F
    :cond_0
    iget v6, p1, Lcom/android/internal/widget/multiwaveview/PointCloud$Point;->x:F

    iget v7, p1, Lcom/android/internal/widget/multiwaveview/PointCloud$Point;->y:F

    invoke-static {v6, v7}, Lcom/android/internal/widget/multiwaveview/PointCloud;->hypot(FF)F

    move-result v4

    .line 187
    .local v4, radius:F
    iget-object v6, p0, Lcom/android/internal/widget/multiwaveview/PointCloud;->waveManager:Lcom/android/internal/widget/multiwaveview/PointCloud$WaveManager;

    #getter for: Lcom/android/internal/widget/multiwaveview/PointCloud$WaveManager;->radius:F
    invoke-static {v6}, Lcom/android/internal/widget/multiwaveview/PointCloud$WaveManager;->access$400(Lcom/android/internal/widget/multiwaveview/PointCloud$WaveManager;)F

    move-result v6

    sub-float v1, v4, v6

    .line 188
    .local v1, distanceToWaveRing:F
    const/4 v5, 0x0

    .line 189
    .local v5, waveAlpha:F
    iget-object v6, p0, Lcom/android/internal/widget/multiwaveview/PointCloud;->waveManager:Lcom/android/internal/widget/multiwaveview/PointCloud$WaveManager;

    #getter for: Lcom/android/internal/widget/multiwaveview/PointCloud$WaveManager;->width:F
    invoke-static {v6}, Lcom/android/internal/widget/multiwaveview/PointCloud$WaveManager;->access$500(Lcom/android/internal/widget/multiwaveview/PointCloud$WaveManager;)F

    move-result v6

    const/high16 v7, 0x3f00

    mul-float/2addr v6, v7

    cmpg-float v6, v1, v6

    if-gez v6, :cond_1

    cmpg-float v6, v1, v11

    if-gez v6, :cond_1

    .line 190
    mul-float v6, v12, v1

    iget-object v7, p0, Lcom/android/internal/widget/multiwaveview/PointCloud;->waveManager:Lcom/android/internal/widget/multiwaveview/PointCloud$WaveManager;

    #getter for: Lcom/android/internal/widget/multiwaveview/PointCloud$WaveManager;->width:F
    invoke-static {v7}, Lcom/android/internal/widget/multiwaveview/PointCloud$WaveManager;->access$500(Lcom/android/internal/widget/multiwaveview/PointCloud$WaveManager;)F

    move-result v7

    div-float/2addr v6, v7

    invoke-static {v6}, Landroid/util/FloatMath;->cos(F)F

    move-result v0

    .line 191
    .restart local v0       #cosf:F
    iget-object v6, p0, Lcom/android/internal/widget/multiwaveview/PointCloud;->waveManager:Lcom/android/internal/widget/multiwaveview/PointCloud$WaveManager;

    #getter for: Lcom/android/internal/widget/multiwaveview/PointCloud$WaveManager;->alpha:F
    invoke-static {v6}, Lcom/android/internal/widget/multiwaveview/PointCloud$WaveManager;->access$600(Lcom/android/internal/widget/multiwaveview/PointCloud$WaveManager;)F

    move-result v6

    float-to-double v7, v0

    const-wide/high16 v9, 0x4034

    invoke-static {v7, v8, v9, v10}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v7

    double-to-float v7, v7

    invoke-static {v11, v7}, Lcom/android/internal/widget/multiwaveview/PointCloud;->max(FF)F

    move-result v7

    mul-float v5, v6, v7

    .line 194
    .end local v0           #cosf:F
    :cond_1
    invoke-static {v2, v5}, Lcom/android/internal/widget/multiwaveview/PointCloud;->max(FF)F

    move-result v6

    const/high16 v7, 0x437f

    mul-float/2addr v6, v7

    float-to-int v6, v6

    return v6
.end method

.method public getScale()F
    .locals 1

    .prologue
    .line 165
    iget v0, p0, Lcom/android/internal/widget/multiwaveview/PointCloud;->mScale:F

    return v0
.end method

.method public makePointCloud(FF)V
    .locals 17
    .parameter "innerRadius"
    .parameter "outerRadius"

    .prologue
    .line 135
    const/4 v15, 0x0

    cmpl-float v15, p1, v15

    if-nez v15, :cond_1

    .line 136
    const-string v15, "PointCloud"

    const-string v16, "Must specify an inner radius"

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 158
    :cond_0
    return-void

    .line 139
    :cond_1
    move/from16 v0, p2

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/widget/multiwaveview/PointCloud;->mOuterRadius:F

    .line 140
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/internal/widget/multiwaveview/PointCloud;->mPointCloud:Ljava/util/ArrayList;

    invoke-virtual {v15}, Ljava/util/ArrayList;->clear()V

    .line 141
    sub-float v10, p2, p1

    .line 142
    .local v10, pointAreaRadius:F
    const v15, 0x40c90fdb

    mul-float v15, v15, p1

    const/high16 v16, 0x4100

    div-float v7, v15, v16

    .line 143
    .local v7, ds:F
    div-float v15, v10, v7

    invoke-static {v15}, Ljava/lang/Math;->round(F)I

    move-result v3

    .line 144
    .local v3, bands:I
    int-to-float v15, v3

    div-float v6, v10, v15

    .line 145
    .local v6, dr:F
    move/from16 v12, p1

    .line 146
    .local v12, r:F
    const/4 v2, 0x0

    .local v2, b:I
    :goto_0
    if-gt v2, v3, :cond_0

    .line 147
    const v15, 0x40c90fdb

    mul-float v4, v15, v12

    .line 148
    .local v4, circumference:F
    div-float v15, v4, v7

    float-to-int v11, v15

    .line 149
    .local v11, pointsInBand:I
    const v8, 0x3fc90fdb

    .line 150
    .local v8, eta:F
    const v15, 0x40c90fdb

    int-to-float v0, v11

    move/from16 v16, v0

    div-float v5, v15, v16

    .line 151
    .local v5, dEta:F
    const/4 v9, 0x0

    .local v9, i:I
    :goto_1
    if-ge v9, v11, :cond_2

    .line 152
    invoke-static {v8}, Landroid/util/FloatMath;->cos(F)F

    move-result v15

    mul-float v13, v12, v15

    .line 153
    .local v13, x:F
    invoke-static {v8}, Landroid/util/FloatMath;->sin(F)F

    move-result v15

    mul-float v14, v12, v15

    .line 154
    .local v14, y:F
    add-float/2addr v8, v5

    .line 155
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/internal/widget/multiwaveview/PointCloud;->mPointCloud:Ljava/util/ArrayList;

    new-instance v16, Lcom/android/internal/widget/multiwaveview/PointCloud$Point;

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    invoke-direct {v0, v1, v13, v14, v12}, Lcom/android/internal/widget/multiwaveview/PointCloud$Point;-><init>(Lcom/android/internal/widget/multiwaveview/PointCloud;FFF)V

    invoke-virtual/range {v15 .. v16}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 151
    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    .line 146
    .end local v13           #x:F
    .end local v14           #y:F
    :cond_2
    add-int/lit8 v2, v2, 0x1

    add-float/2addr v12, v6

    goto :goto_0
.end method

.method public setCenter(FF)V
    .locals 0
    .parameter "x"
    .parameter "y"

    .prologue
    .line 130
    iput p1, p0, Lcom/android/internal/widget/multiwaveview/PointCloud;->mCenterX:F

    .line 131
    iput p2, p0, Lcom/android/internal/widget/multiwaveview/PointCloud;->mCenterY:F

    .line 132
    return-void
.end method

.method setDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 3
    .parameter "drawable"

    .prologue
    const/4 v2, 0x0

    .line 258
    iput-object p1, p0, Lcom/android/internal/widget/multiwaveview/PointCloud;->mDrawable:Landroid/graphics/drawable/Drawable;

    .line 259
    iget-object v0, p0, Lcom/android/internal/widget/multiwaveview/PointCloud;->mDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 260
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v1

    invoke-virtual {p1, v2, v2, v0, v1}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 262
    :cond_0
    return-void
.end method

.method public setScale(F)V
    .locals 0
    .parameter "scale"

    .prologue
    .line 161
    iput p1, p0, Lcom/android/internal/widget/multiwaveview/PointCloud;->mScale:F

    .line 162
    return-void
.end method

.method public setVoiceAssistantStyle()V
    .locals 1

    .prologue
    .line 250
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/widget/multiwaveview/PointCloud;->mIsVoiceAssistantStyle:Z

    .line 251
    return-void
.end method

.method public unsetVoiceAssistantStyle()V
    .locals 1

    .prologue
    .line 254
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/widget/multiwaveview/PointCloud;->mIsVoiceAssistantStyle:Z

    .line 255
    return-void
.end method
