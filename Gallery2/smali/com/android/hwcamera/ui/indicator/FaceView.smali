.class public Lcom/android/hwcamera/ui/indicator/FaceView;
.super Landroid/view/View;
.source "FaceView.java"

# interfaces
.implements Lcom/android/hwcamera/ui/indicator/FocusIndicator;
.implements Lcom/android/hwcamera/ui/Rotatable;


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0xe
.end annotation


# static fields
.field private static final LOGV:Z = false

.field private static final MSG_SHOW_FACES:I = 0x1

.field private static final SHOW_FACE_DRUAL:I = 0x64

.field private static final TAG:Ljava/lang/String; = "CAM FaceView"


# instance fields
.field private volatile mBlocked:Z

.field private mDisplayOrientation:I

.field private mFaces:[Lcom/android/hwcamera/facedetect/event/Face;

.field private final mFailColor:I

.field private final mFocusStartColor:I

.field private final mFocusedColor:I

.field private final mFocusingColor:I

.field private mHandler:Landroid/os/Handler;

.field private mIsVisible:Z

.field private mMatrix:Landroid/graphics/Matrix;

.field private mMirror:Z

.field private mOrientation:I

.field private mPaint:Landroid/graphics/Paint;

.field private mPause:Z

.field private mPoints:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Landroid/graphics/Point;",
            ">;"
        }
    .end annotation
.end field

.field private mRect:Landroid/graphics/RectF;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v2, 0x1

    .line 95
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 64
    new-instance v1, Landroid/graphics/Matrix;

    invoke-direct {v1}, Landroid/graphics/Matrix;-><init>()V

    iput-object v1, p0, Lcom/android/hwcamera/ui/indicator/FaceView;->mMatrix:Landroid/graphics/Matrix;

    .line 65
    new-instance v1, Landroid/graphics/RectF;

    invoke-direct {v1}, Landroid/graphics/RectF;-><init>()V

    iput-object v1, p0, Lcom/android/hwcamera/ui/indicator/FaceView;->mRect:Landroid/graphics/RectF;

    .line 77
    new-instance v1, Ljava/util/LinkedList;

    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    iput-object v1, p0, Lcom/android/hwcamera/ui/indicator/FaceView;->mPoints:Ljava/util/LinkedList;

    .line 81
    new-instance v1, Lcom/android/hwcamera/ui/indicator/FaceView$1;

    invoke-direct {v1, p0}, Lcom/android/hwcamera/ui/indicator/FaceView$1;-><init>(Lcom/android/hwcamera/ui/indicator/FaceView;)V

    iput-object v1, p0, Lcom/android/hwcamera/ui/indicator/FaceView;->mHandler:Landroid/os/Handler;

    .line 282
    iput-boolean v2, p0, Lcom/android/hwcamera/ui/indicator/FaceView;->mIsVisible:Z

    .line 96
    invoke-virtual {p0}, Lcom/android/hwcamera/ui/indicator/FaceView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 97
    .local v0, res:Landroid/content/res/Resources;
    const v1, 0x7f0a0013

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    iput v1, p0, Lcom/android/hwcamera/ui/indicator/FaceView;->mFocusStartColor:I

    .line 98
    const v1, 0x7f0a0014

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    iput v1, p0, Lcom/android/hwcamera/ui/indicator/FaceView;->mFocusingColor:I

    .line 99
    const v1, 0x7f0a0015

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    iput v1, p0, Lcom/android/hwcamera/ui/indicator/FaceView;->mFocusedColor:I

    .line 100
    const v1, 0x7f0a0016

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    iput v1, p0, Lcom/android/hwcamera/ui/indicator/FaceView;->mFailColor:I

    .line 102
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    iput-object v1, p0, Lcom/android/hwcamera/ui/indicator/FaceView;->mPaint:Landroid/graphics/Paint;

    .line 103
    iget-object v1, p0, Lcom/android/hwcamera/ui/indicator/FaceView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 104
    iget-object v1, p0, Lcom/android/hwcamera/ui/indicator/FaceView;->mPaint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 105
    iget-object v1, p0, Lcom/android/hwcamera/ui/indicator/FaceView;->mPaint:Landroid/graphics/Paint;

    const v2, 0x7f0b004a

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 106
    return-void
.end method


# virtual methods
.method public clear()V
    .locals 2

    .prologue
    .line 163
    iget-object v0, p0, Lcom/android/hwcamera/ui/indicator/FaceView;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 164
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/hwcamera/ui/indicator/FaceView;->mFaces:[Lcom/android/hwcamera/facedetect/event/Face;

    .line 165
    invoke-virtual {p0}, Lcom/android/hwcamera/ui/indicator/FaceView;->invalidate()V

    .line 166
    return-void
.end method

.method public faceExists()Z
    .locals 1

    .prologue
    .line 140
    iget-object v0, p0, Lcom/android/hwcamera/ui/indicator/FaceView;->mFaces:[Lcom/android/hwcamera/facedetect/event/Face;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/hwcamera/ui/indicator/FaceView;->mFaces:[Lcom/android/hwcamera/facedetect/event/Face;

    array-length v0, v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getSize()I
    .locals 1

    .prologue
    .line 279
    const/4 v0, 0x0

    return v0
.end method

.method public declared-synchronized isNeedAutoFocus(Landroid/graphics/RectF;Landroid/graphics/RectF;)Z
    .locals 10
    .parameter "lastRectF"
    .parameter "mFaceRect"

    .prologue
    const/high16 v8, 0x3f80

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 252
    monitor-enter p0

    if-eqz p2, :cond_0

    :try_start_0
    invoke-virtual {p2}, Landroid/graphics/RectF;->isEmpty()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v6

    if-eqz v6, :cond_1

    .line 274
    :cond_0
    :goto_0
    monitor-exit p0

    return v4

    .line 254
    :cond_1
    if-eqz p1, :cond_2

    :try_start_1
    invoke-virtual {p1}, Landroid/graphics/RectF;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_3

    :cond_2
    move v4, v5

    goto :goto_0

    .line 256
    :cond_3
    invoke-static {p1, p2}, Lcom/android/hwcamera/Util;->distance(Landroid/graphics/RectF;Landroid/graphics/RectF;)F

    move-result v0

    .line 257
    .local v0, distance:F
    const v3, 0x3d888889

    .line 258
    .local v3, ratio:F
    invoke-virtual {p0}, Lcom/android/hwcamera/ui/indicator/FaceView;->getWidth()I

    move-result v6

    invoke-virtual {p0}, Lcom/android/hwcamera/ui/indicator/FaceView;->getHeight()I

    move-result v7

    invoke-static {v6, v7}, Ljava/lang/Math;->min(II)I

    move-result v6

    int-to-float v6, v6

    mul-float/2addr v6, v3

    cmpl-float v6, v0, v6

    if-lez v6, :cond_7

    move v2, v5

    .line 261
    .local v2, isDistanceEnough:Z
    :goto_1
    invoke-static {p1}, Lcom/android/hwcamera/Util;->getArea(Landroid/graphics/RectF;)F

    move-result v6

    invoke-static {p2}, Lcom/android/hwcamera/Util;->getArea(Landroid/graphics/RectF;)F

    move-result v7

    div-float v3, v6, v7

    .line 262
    cmpg-float v6, v3, v8

    if-gez v6, :cond_4

    div-float v3, v8, v3

    .line 263
    :cond_4
    const v6, 0x3faaaaab

    cmpl-float v6, v3, v6

    if-lez v6, :cond_8

    move v1, v5

    .line 265
    .local v1, isAreaEnouth:Z
    :goto_2
    if-nez v1, :cond_5

    if-eqz v2, :cond_0

    .line 267
    :cond_5
    iget-object v6, p0, Lcom/android/hwcamera/ui/indicator/FaceView;->mPoints:Ljava/util/LinkedList;

    new-instance v7, Landroid/graphics/Point;

    invoke-virtual {p2}, Landroid/graphics/RectF;->centerX()F

    move-result v8

    float-to-int v8, v8

    invoke-virtual {p2}, Landroid/graphics/RectF;->centerY()F

    move-result v9

    float-to-int v9, v9

    invoke-direct {v7, v8, v9}, Landroid/graphics/Point;-><init>(II)V

    invoke-virtual {v6, v7}, Ljava/util/LinkedList;->addFirst(Ljava/lang/Object;)V

    .line 268
    iget-object v6, p0, Lcom/android/hwcamera/ui/indicator/FaceView;->mPoints:Ljava/util/LinkedList;

    invoke-virtual {v6}, Ljava/util/LinkedList;->size()I

    move-result v6

    const/16 v7, 0xb

    if-le v6, v7, :cond_6

    iget-object v6, p0, Lcom/android/hwcamera/ui/indicator/FaceView;->mPoints:Ljava/util/LinkedList;

    invoke-virtual {v6}, Ljava/util/LinkedList;->removeLast()Ljava/lang/Object;

    .line 270
    :cond_6
    iget-object v6, p0, Lcom/android/hwcamera/ui/indicator/FaceView;->mPoints:Ljava/util/LinkedList;

    invoke-static {v6}, Lcom/android/hwcamera/Util;->isPointsStable(Ljava/util/List;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 271
    iget-object v4, p0, Lcom/android/hwcamera/ui/indicator/FaceView;->mPoints:Ljava/util/LinkedList;

    invoke-virtual {v4}, Ljava/util/LinkedList;->clear()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move v4, v5

    .line 272
    goto :goto_0

    .end local v1           #isAreaEnouth:Z
    .end local v2           #isDistanceEnough:Z
    :cond_7
    move v2, v4

    .line 258
    goto :goto_1

    .restart local v2       #isDistanceEnough:Z
    :cond_8
    move v1, v4

    .line 263
    goto :goto_2

    .line 252
    .end local v0           #distance:F
    .end local v2           #isDistanceEnough:Z
    .end local v3           #ratio:F
    :catchall_0
    move-exception v4

    monitor-exit p0

    throw v4
.end method

.method public isTouchOnFaces(II)I
    .locals 9
    .parameter "x"
    .parameter "y"

    .prologue
    const/4 v6, -0x1

    .line 234
    iget-object v2, p0, Lcom/android/hwcamera/ui/indicator/FaceView;->mFaces:[Lcom/android/hwcamera/facedetect/event/Face;

    .line 235
    .local v2, faces:[Lcom/android/hwcamera/facedetect/event/Face;
    invoke-static {v2}, Lcom/android/hwcamera/Util;->isEmptyCollection([Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 243
    :cond_0
    :goto_0
    return v6

    .line 237
    :cond_1
    move-object v0, v2

    .local v0, arr$:[Lcom/android/hwcamera/facedetect/event/Face;
    array-length v4, v0

    .local v4, len$:I
    const/4 v3, 0x0

    .local v3, i$:I
    :goto_1
    if-ge v3, v4, :cond_0

    aget-object v1, v0, v3

    .line 238
    .local v1, face:Lcom/android/hwcamera/facedetect/event/Face;
    new-instance v5, Landroid/graphics/RectF;

    invoke-direct {v5}, Landroid/graphics/RectF;-><init>()V

    .line 239
    .local v5, rectF:Landroid/graphics/RectF;
    iget-object v7, v1, Lcom/android/hwcamera/facedetect/event/Face;->rect:Landroid/graphics/Rect;

    invoke-virtual {v5, v7}, Landroid/graphics/RectF;->set(Landroid/graphics/Rect;)V

    .line 240
    invoke-virtual {p0, v5}, Lcom/android/hwcamera/ui/indicator/FaceView;->matrixRect(Landroid/graphics/RectF;)V

    .line 241
    int-to-float v7, p1

    int-to-float v8, p2

    invoke-virtual {v5, v7, v8}, Landroid/graphics/RectF;->contains(FF)Z

    move-result v7

    if-eqz v7, :cond_2

    iget v6, v1, Lcom/android/hwcamera/facedetect/event/Face;->id:I

    goto :goto_0

    .line 237
    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1
.end method

.method public matrixRect(Landroid/graphics/RectF;)V
    .locals 1
    .parameter "rectF"

    .prologue
    .line 247
    iget-object v0, p0, Lcom/android/hwcamera/ui/indicator/FaceView;->mMatrix:Landroid/graphics/Matrix;

    .line 248
    .local v0, matrix:Landroid/graphics/Matrix;
    invoke-virtual {v0, p1}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    .line 249
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 10
    .parameter "canvas"

    .prologue
    .line 182
    iget-boolean v7, p0, Lcom/android/hwcamera/ui/indicator/FaceView;->mBlocked:Z

    if-nez v7, :cond_6

    iget-object v7, p0, Lcom/android/hwcamera/ui/indicator/FaceView;->mFaces:[Lcom/android/hwcamera/facedetect/event/Face;

    if-eqz v7, :cond_6

    iget-object v7, p0, Lcom/android/hwcamera/ui/indicator/FaceView;->mFaces:[Lcom/android/hwcamera/facedetect/event/Face;

    array-length v7, v7

    if-lez v7, :cond_6

    .line 183
    invoke-virtual {p0}, Lcom/android/hwcamera/ui/indicator/FaceView;->getContext()Landroid/content/Context;

    move-result-object v7

    check-cast v7, Lcom/android/hwcamera/CameraActivity;

    invoke-virtual {v7}, Lcom/android/hwcamera/CameraActivity;->getCameraScreenNail()Lcom/android/hwcamera/CameraScreenNail;

    move-result-object v5

    .line 184
    .local v5, sn:Lcom/android/hwcamera/CameraScreenNail;
    invoke-virtual {v5}, Lcom/android/hwcamera/CameraScreenNail;->getUncroppedRenderWidth()I

    move-result v4

    .line 185
    .local v4, rw:I
    invoke-virtual {v5}, Lcom/android/hwcamera/CameraScreenNail;->getUncroppedRenderHeight()I

    move-result v3

    .line 187
    .local v3, rh:I
    if-le v3, v4, :cond_0

    iget v7, p0, Lcom/android/hwcamera/ui/indicator/FaceView;->mDisplayOrientation:I

    if-eqz v7, :cond_1

    iget v7, p0, Lcom/android/hwcamera/ui/indicator/FaceView;->mDisplayOrientation:I

    const/16 v8, 0xb4

    if-eq v7, v8, :cond_1

    :cond_0
    if-le v4, v3, :cond_2

    iget v7, p0, Lcom/android/hwcamera/ui/indicator/FaceView;->mDisplayOrientation:I

    const/16 v8, 0x5a

    if-eq v7, v8, :cond_1

    iget v7, p0, Lcom/android/hwcamera/ui/indicator/FaceView;->mDisplayOrientation:I

    const/16 v8, 0x10e

    if-ne v7, v8, :cond_2

    .line 189
    :cond_1
    move v6, v4

    .line 190
    .local v6, temp:I
    move v4, v3

    .line 191
    move v3, v6

    .line 193
    .end local v6           #temp:I
    :cond_2
    iget-object v7, p0, Lcom/android/hwcamera/ui/indicator/FaceView;->mMatrix:Landroid/graphics/Matrix;

    iget-boolean v8, p0, Lcom/android/hwcamera/ui/indicator/FaceView;->mMirror:Z

    iget v9, p0, Lcom/android/hwcamera/ui/indicator/FaceView;->mDisplayOrientation:I

    invoke-static {v7, v8, v9, v4, v3}, Lcom/android/hwcamera/Util;->prepareMatrix(Landroid/graphics/Matrix;ZIII)V

    .line 194
    invoke-virtual {p0}, Lcom/android/hwcamera/ui/indicator/FaceView;->getWidth()I

    move-result v7

    sub-int/2addr v7, v4

    div-int/lit8 v0, v7, 0x2

    .line 195
    .local v0, dx:I
    invoke-virtual {p0}, Lcom/android/hwcamera/ui/indicator/FaceView;->getHeight()I

    move-result v7

    sub-int/2addr v7, v3

    div-int/lit8 v1, v7, 0x2

    .line 199
    .local v1, dy:I
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 200
    iget-object v7, p0, Lcom/android/hwcamera/ui/indicator/FaceView;->mMatrix:Landroid/graphics/Matrix;

    iget v8, p0, Lcom/android/hwcamera/ui/indicator/FaceView;->mOrientation:I

    int-to-float v8, v8

    invoke-virtual {v7, v8}, Landroid/graphics/Matrix;->postRotate(F)Z

    .line 201
    iget v7, p0, Lcom/android/hwcamera/ui/indicator/FaceView;->mOrientation:I

    neg-int v7, v7

    int-to-float v7, v7

    invoke-virtual {p1, v7}, Landroid/graphics/Canvas;->rotate(F)V

    .line 202
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    iget-object v7, p0, Lcom/android/hwcamera/ui/indicator/FaceView;->mFaces:[Lcom/android/hwcamera/facedetect/event/Face;

    array-length v7, v7

    if-ge v2, v7, :cond_5

    iget-boolean v7, p0, Lcom/android/hwcamera/ui/indicator/FaceView;->mIsVisible:Z

    if-eqz v7, :cond_5

    .line 207
    iget-object v7, p0, Lcom/android/hwcamera/ui/indicator/FaceView;->mRect:Landroid/graphics/RectF;

    iget-object v8, p0, Lcom/android/hwcamera/ui/indicator/FaceView;->mFaces:[Lcom/android/hwcamera/facedetect/event/Face;

    aget-object v8, v8, v2

    iget-object v8, v8, Lcom/android/hwcamera/facedetect/event/Face;->rect:Landroid/graphics/Rect;

    invoke-virtual {v7, v8}, Landroid/graphics/RectF;->set(Landroid/graphics/Rect;)V

    .line 209
    iget-object v7, p0, Lcom/android/hwcamera/ui/indicator/FaceView;->mMatrix:Landroid/graphics/Matrix;

    iget-object v8, p0, Lcom/android/hwcamera/ui/indicator/FaceView;->mRect:Landroid/graphics/RectF;

    invoke-virtual {v7, v8}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    .line 212
    iget-object v7, p0, Lcom/android/hwcamera/ui/indicator/FaceView;->mFaces:[Lcom/android/hwcamera/facedetect/event/Face;

    aget-object v7, v7, v2

    invoke-virtual {v7}, Lcom/android/hwcamera/facedetect/event/Face;->getFocusStatus()I

    move-result v7

    const/4 v8, 0x1

    if-ne v7, v8, :cond_3

    .line 213
    iget-object v7, p0, Lcom/android/hwcamera/ui/indicator/FaceView;->mPaint:Landroid/graphics/Paint;

    iget v8, p0, Lcom/android/hwcamera/ui/indicator/FaceView;->mFocusingColor:I

    invoke-virtual {v7, v8}, Landroid/graphics/Paint;->setColor(I)V

    .line 220
    :goto_1
    iget-object v7, p0, Lcom/android/hwcamera/ui/indicator/FaceView;->mRect:Landroid/graphics/RectF;

    int-to-float v8, v0

    int-to-float v9, v1

    invoke-virtual {v7, v8, v9}, Landroid/graphics/RectF;->offset(FF)V

    .line 222
    iget-object v7, p0, Lcom/android/hwcamera/ui/indicator/FaceView;->mRect:Landroid/graphics/RectF;

    iget-object v8, p0, Lcom/android/hwcamera/ui/indicator/FaceView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v7, v8}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 202
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 214
    :cond_3
    iget-object v7, p0, Lcom/android/hwcamera/ui/indicator/FaceView;->mFaces:[Lcom/android/hwcamera/facedetect/event/Face;

    aget-object v7, v7, v2

    invoke-virtual {v7}, Lcom/android/hwcamera/facedetect/event/Face;->getFocusStatus()I

    move-result v7

    const/4 v8, 0x2

    if-ne v7, v8, :cond_4

    .line 215
    iget-object v7, p0, Lcom/android/hwcamera/ui/indicator/FaceView;->mPaint:Landroid/graphics/Paint;

    iget v8, p0, Lcom/android/hwcamera/ui/indicator/FaceView;->mFocusedColor:I

    invoke-virtual {v7, v8}, Landroid/graphics/Paint;->setColor(I)V

    goto :goto_1

    .line 217
    :cond_4
    iget-object v7, p0, Lcom/android/hwcamera/ui/indicator/FaceView;->mPaint:Landroid/graphics/Paint;

    iget v8, p0, Lcom/android/hwcamera/ui/indicator/FaceView;->mFocusStartColor:I

    invoke-virtual {v7, v8}, Landroid/graphics/Paint;->setColor(I)V

    goto :goto_1

    .line 228
    :cond_5
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 230
    .end local v0           #dx:I
    .end local v1           #dy:I
    .end local v2           #i:I
    .end local v3           #rh:I
    .end local v4           #rw:I
    .end local v5           #sn:Lcom/android/hwcamera/CameraScreenNail;
    :cond_6
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 231
    return-void
.end method

.method public pause()V
    .locals 1

    .prologue
    .line 169
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/hwcamera/ui/indicator/FaceView;->mPause:Z

    .line 170
    return-void
.end method

.method public release()V
    .locals 0

    .prologue
    .line 290
    return-void
.end method

.method public resume()V
    .locals 1

    .prologue
    .line 173
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/hwcamera/ui/indicator/FaceView;->mPause:Z

    .line 174
    return-void
.end method

.method public setBlockDraw(Z)V
    .locals 0
    .parameter "block"

    .prologue
    .line 177
    iput-boolean p1, p0, Lcom/android/hwcamera/ui/indicator/FaceView;->mBlocked:Z

    .line 178
    return-void
.end method

.method public setDisplayOrientation(I)V
    .locals 0
    .parameter "orientation"

    .prologue
    .line 124
    iput p1, p0, Lcom/android/hwcamera/ui/indicator/FaceView;->mDisplayOrientation:I

    .line 126
    return-void
.end method

.method public setFaces([Lcom/android/hwcamera/facedetect/event/Face;)V
    .locals 4
    .parameter "faces"
    .annotation build Ledu/umd/cs/findbugs/annotations/SuppressWarnings;
        value = {
            "EI_EXPOSE_REP2"
        }
    .end annotation

    .prologue
    const/4 v3, 0x1

    .line 111
    iget-boolean v0, p0, Lcom/android/hwcamera/ui/indicator/FaceView;->mPause:Z

    if-eqz v0, :cond_1

    .line 121
    :cond_0
    :goto_0
    return-void

    .line 112
    :cond_1
    iput-object p1, p0, Lcom/android/hwcamera/ui/indicator/FaceView;->mFaces:[Lcom/android/hwcamera/facedetect/event/Face;

    .line 113
    iget-object v0, p0, Lcom/android/hwcamera/ui/indicator/FaceView;->mFaces:[Lcom/android/hwcamera/facedetect/event/Face;

    if-eqz v0, :cond_2

    .line 114
    iget-object v0, p0, Lcom/android/hwcamera/ui/indicator/FaceView;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v3}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 117
    iget-object v0, p0, Lcom/android/hwcamera/ui/indicator/FaceView;->mHandler:Landroid/os/Handler;

    const-wide/16 v1, 0x64

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    .line 120
    :cond_2
    invoke-virtual {p0}, Lcom/android/hwcamera/ui/indicator/FaceView;->invalidate()V

    goto :goto_0
.end method

.method public setMirror(Z)V
    .locals 0
    .parameter "mirror"

    .prologue
    .line 135
    iput-boolean p1, p0, Lcom/android/hwcamera/ui/indicator/FaceView;->mMirror:Z

    .line 137
    return-void
.end method

.method public setOrientation(IZ)V
    .locals 0
    .parameter "orientation"
    .parameter "animation"

    .prologue
    .line 130
    iput p1, p0, Lcom/android/hwcamera/ui/indicator/FaceView;->mOrientation:I

    .line 131
    invoke-virtual {p0}, Lcom/android/hwcamera/ui/indicator/FaceView;->invalidate()V

    .line 132
    return-void
.end method

.method public setVisible(Z)V
    .locals 0
    .parameter "isvisible"

    .prologue
    .line 284
    iput-boolean p1, p0, Lcom/android/hwcamera/ui/indicator/FaceView;->mIsVisible:Z

    .line 285
    return-void
.end method

.method public showFail(Z)V
    .locals 0
    .parameter "timeout"

    .prologue
    .line 157
    invoke-virtual {p0}, Lcom/android/hwcamera/ui/indicator/FaceView;->invalidate()V

    .line 158
    return-void
.end method

.method public showStart()V
    .locals 0

    .prologue
    .line 145
    invoke-virtual {p0}, Lcom/android/hwcamera/ui/indicator/FaceView;->invalidate()V

    .line 146
    return-void
.end method

.method public showSuccess(Z)V
    .locals 0
    .parameter "timeout"

    .prologue
    .line 151
    invoke-virtual {p0}, Lcom/android/hwcamera/ui/indicator/FaceView;->invalidate()V

    .line 152
    return-void
.end method
