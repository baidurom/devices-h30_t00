.class public Lcom/morpho/core/MorphoPanoramaGP;
.super Ljava/lang/Object;
.source "MorphoPanoramaGP.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/morpho/core/MorphoPanoramaGP$InitParam;
    }
.end annotation


# static fields
.field public static final DIRECTION_HORIZONTAL:I = 0x0

.field public static final DIRECTION_HORIZONTAL_LEFT:I = 0x2

.field public static final DIRECTION_HORIZONTAL_RIGHT:I = 0x3

.field public static final DIRECTION_VERTICAL:I = 0x1

.field public static final DIRECTION_VERTICAL_DOWN:I = 0x5

.field public static final DIRECTION_VERTICAL_UP:I = 0x4

.field public static final GUIDE_TYPE_HORIZONTAL:I = 0x0

.field public static final GUIDE_TYPE_VERTICAL:I = 0x1

.field private static final RECT_BOTTOM_OFFSET:I = 0x3

.field private static final RECT_INFO_SIZE:I = 0x4

.field private static final RECT_LEFT_OFFSET:I = 0x0

.field private static final RECT_RIGHT_OFFSET:I = 0x2

.field private static final RECT_TOP_OFFSET:I = 0x1

.field public static final ROTATE_0:I = 0x0

.field public static final ROTATE_180:I = 0x2

.field public static final ROTATE_270:I = 0x3

.field public static final ROTATE_90:I = 0x1

.field public static final SENSOR_TYPE_GYROSCOPE:I = 0x0

.field public static final SENSOR_TYPE_ROTATION_VECTOR:I = 0x1

.field public static final STATUS_ALIGN_FAILURE:I = 0x2

.field public static final STATUS_OUT_OF_MEMORY:I = 0x1

.field public static final STATUS_STITCHING:I = 0x0

.field public static final STATUS_STOPPED_BY_ERROR:I = 0x3

.field public static final STATUS_WARNING_ALIGN_FAILURE:I = 0x7

.field public static final STATUS_WARNING_NEED_TO_STOP:I = 0x4

.field public static final STATUS_WARNING_TOO_FAR:I = 0x6

.field public static final STATUS_WARNING_TOO_FAR_1:I = 0x8

.field public static final STATUS_WARNING_TOO_FAR_2:I = 0x9

.field public static final STATUS_WARNING_TOO_FAST:I = 0x5

.field public static final STATUS_WHOLE_AREA_COMPLETE:I = 0xa

.field public static final STILL_IMAGE_FORMAT_JPEG:I = 0x100

.field public static final STILL_IMAGE_FORMAT_YVU420SP:I = 0x11

.field public static final USE_IMAGE_FORCE:I = 0x1

.field public static final USE_IMAGE_NONE:I = -0x1

.field public static final USE_IMAGE_NORMAL:I

.field public static final USE_SENSOR_FOR_ALIGNMENT_WHEN_FAILED:I

.field private static mMorphoLibLoaded:Z


# instance fields
.field private mNative:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 18
    const/4 v0, 0x0

    sput-boolean v0, Lcom/morpho/core/MorphoPanoramaGP;->mMorphoLibLoaded:Z

    .line 20
    invoke-static {}, Lcom/morpho/core/MorphoPanoramaGP;->loadMorphoLib()V

    .line 21
    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 139
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 74
    iput v1, p0, Lcom/morpho/core/MorphoPanoramaGP;->mNative:I

    .line 140
    invoke-direct {p0}, Lcom/morpho/core/MorphoPanoramaGP;->createNativeObject()I

    move-result v0

    .line 141
    .local v0, ret:I
    if-lez v0, :cond_0

    .line 143
    iput v0, p0, Lcom/morpho/core/MorphoPanoramaGP;->mNative:I

    .line 148
    :goto_0
    return-void

    .line 145
    :cond_0
    iput v1, p0, Lcom/morpho/core/MorphoPanoramaGP;->mNative:I

    .line 146
    const v0, -0x7ffffffc

    goto :goto_0
.end method

.method public static calcImageSize(Lcom/morpho/core/MorphoPanoramaGP$InitParam;D)I
    .locals 1
    .parameter "param"
    .parameter "goal_angle"

    .prologue
    .line 126
    invoke-static {p0, p1, p2}, Lcom/morpho/core/MorphoPanoramaGP;->nativeCalcImageSize(Lcom/morpho/core/MorphoPanoramaGP$InitParam;D)I

    move-result v0

    return v0
.end method

.method private final native createNativeObject()I
.end method

.method public static decodeJpeg(Ljava/lang/String;[BLjava/lang/String;II)I
    .locals 1
    .parameter "path"
    .parameter "output_data"
    .parameter "format"
    .parameter "width"
    .parameter "height"

    .prologue
    .line 136
    invoke-static {p0, p1, p2, p3, p4}, Lcom/morpho/core/MorphoPanoramaGP;->nativeDecodeJpeg(Ljava/lang/String;[BLjava/lang/String;II)I

    move-result v0

    return v0
.end method

.method private final native deleteNativeObject(I)V
.end method

.method public static getVersion()Ljava/lang/String;
    .locals 1

    .prologue
    .line 121
    invoke-static {}, Lcom/morpho/core/MorphoPanoramaGP;->nativeGetVersion()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static isMorphoPanoramaSupported()Z
    .locals 1

    .prologue
    .line 115
    invoke-static {}, Lcom/morpho/core/MorphoPanoramaGP;->loadMorphoLib()V

    .line 116
    sget-boolean v0, Lcom/morpho/core/MorphoPanoramaGP;->mMorphoLibLoaded:Z

    return v0
.end method

.method private static loadMorphoLib()V
    .locals 4

    .prologue
    .line 24
    sget-boolean v1, Lcom/morpho/core/MorphoPanoramaGP;->mMorphoLibLoaded:Z

    if-eqz v1, :cond_0

    .line 35
    .local v0, e:Ljava/lang/UnsatisfiedLinkError;
    :goto_0
    return-void

    .line 29
    .end local v0           #e:Ljava/lang/UnsatisfiedLinkError;
    :cond_0
    :try_start_0
    const-string v1, "morpho_panorama_gp"

    invoke-static {v1}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 30
    const/4 v1, 0x1

    sput-boolean v1, Lcom/morpho/core/MorphoPanoramaGP;->mMorphoLibLoaded:Z
    :try_end_0
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 31
    :catch_0
    move-exception v0

    .line 32
    .restart local v0       #e:Ljava/lang/UnsatisfiedLinkError;
    const/4 v1, 0x0

    sput-boolean v1, Lcom/morpho/core/MorphoPanoramaGP;->mMorphoLibLoaded:Z

    .line 33
    const-string v1, "MorphoPanoramaGP"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "can\'t loadLibrary \r\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/UnsatisfiedLinkError;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private final native nativeAttachPreview(I[BI[I[B[ILandroid/graphics/Bitmap;)I
.end method

.method private final native nativeAttachStillImage(I[BI[B)I
.end method

.method private final native nativeAttachStillImageExt(ILjava/nio/ByteBuffer;ILjava/nio/ByteBuffer;)I
.end method

.method private static final native nativeCalcImageSize(Lcom/morpho/core/MorphoPanoramaGP$InitParam;D)I
.end method

.method private static final native nativeDecodeJpeg(Ljava/lang/String;[BLjava/lang/String;II)I
.end method

.method private final native nativeEnd(I)I
.end method

.method private final native nativeFinish(I)I
.end method

.method private final native nativeGetBoundingRect(I[I)I
.end method

.method private final native nativeGetClippingRect(I[I)I
.end method

.method private final native nativeGetCurrentDirection(I[I)I
.end method

.method private final native nativeGetGuidancePos(I[I)I
.end method

.method private final native nativeGetMotionlessThreshold(I[I)I
.end method

.method private final native nativeGetUseSensorAssist(II[I)I
.end method

.method private final native nativeGetUseThreshold(I[I)I
.end method

.method private final native nativeGetUsedHeapSize(I[I)I
.end method

.method private static final native nativeGetVersion()Ljava/lang/String;
.end method

.method private final native nativeInitialize(ILcom/morpho/core/MorphoPanoramaGP$InitParam;[I)I
.end method

.method private static final native nativeSaveJpeg(Ljava/lang/String;[BLjava/lang/String;III)I
.end method

.method private final native nativeSaveOutputJpeg(ILjava/lang/String;IIIII[I)I
.end method

.method private final native nativeSetAngleMatrix(I[DI)I
.end method

.method private final native nativeSetMotionlessThreshold(II)I
.end method

.method private final native nativeSetUseSensorAssist(III)I
.end method

.method private final native nativeSetUseSensorThreshold(II)I
.end method

.method private final native nativeSetUseThreshold(II)I
.end method

.method private final native nativeStart(I)I
.end method

.method public static saveJpeg(Ljava/lang/String;[BLjava/lang/String;III)I
    .locals 1
    .parameter "path"
    .parameter "raw_data"
    .parameter "format"
    .parameter "width"
    .parameter "height"
    .parameter "orientation"

    .prologue
    .line 131
    invoke-static/range {p0 .. p5}, Lcom/morpho/core/MorphoPanoramaGP;->nativeSaveJpeg(Ljava/lang/String;[BLjava/lang/String;III)I

    move-result v0

    return v0
.end method

.method private final native setBrightnessCorrection(II)I
.end method


# virtual methods
.method public attachPreview([BI[I[B[ILandroid/graphics/Bitmap;)I
    .locals 9
    .parameter "input_image"
    .parameter "use_image"
    .parameter "image_id"
    .parameter "motion_data"
    .parameter "status"
    .parameter "preview_image"

    .prologue
    .line 201
    const/4 v8, 0x0

    .line 203
    .local v8, ret:I
    iget v0, p0, Lcom/morpho/core/MorphoPanoramaGP;->mNative:I

    if-lez v0, :cond_0

    .line 205
    iget v1, p0, Lcom/morpho/core/MorphoPanoramaGP;->mNative:I

    move-object v0, p0

    move-object v2, p1

    move v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    move-object v7, p6

    invoke-direct/range {v0 .. v7}, Lcom/morpho/core/MorphoPanoramaGP;->nativeAttachPreview(I[BI[I[B[ILandroid/graphics/Bitmap;)I

    move-result v8

    .line 212
    :goto_0
    return v8

    .line 209
    :cond_0
    const v8, -0x7ffffffe

    goto :goto_0
.end method

.method public attachStillImage([BI[B)I
    .locals 2
    .parameter "input_image"
    .parameter "image_id"
    .parameter "motion_data"

    .prologue
    .line 217
    const/4 v0, 0x0

    .line 219
    .local v0, ret:I
    iget v1, p0, Lcom/morpho/core/MorphoPanoramaGP;->mNative:I

    if-lez v1, :cond_0

    .line 221
    iget v1, p0, Lcom/morpho/core/MorphoPanoramaGP;->mNative:I

    invoke-direct {p0, v1, p1, p2, p3}, Lcom/morpho/core/MorphoPanoramaGP;->nativeAttachStillImage(I[BI[B)I

    move-result v0

    .line 228
    :goto_0
    return v0

    .line 225
    :cond_0
    const v0, -0x7ffffffe

    goto :goto_0
.end method

.method public attachStillImageExt(Ljava/nio/ByteBuffer;ILjava/nio/ByteBuffer;)I
    .locals 2
    .parameter "input_image"
    .parameter "image_id"
    .parameter "motion_data"

    .prologue
    .line 233
    const/4 v0, 0x0

    .line 235
    .local v0, ret:I
    iget v1, p0, Lcom/morpho/core/MorphoPanoramaGP;->mNative:I

    if-lez v1, :cond_0

    .line 237
    iget v1, p0, Lcom/morpho/core/MorphoPanoramaGP;->mNative:I

    invoke-direct {p0, v1, p1, p2, p3}, Lcom/morpho/core/MorphoPanoramaGP;->nativeAttachStillImageExt(ILjava/nio/ByteBuffer;ILjava/nio/ByteBuffer;)I

    move-result v0

    .line 244
    :goto_0
    return v0

    .line 241
    :cond_0
    const v0, -0x7ffffffe

    goto :goto_0
.end method

.method public end()I
    .locals 2

    .prologue
    .line 249
    const/4 v0, 0x0

    .line 251
    .local v0, ret:I
    iget v1, p0, Lcom/morpho/core/MorphoPanoramaGP;->mNative:I

    if-lez v1, :cond_0

    .line 253
    iget v1, p0, Lcom/morpho/core/MorphoPanoramaGP;->mNative:I

    invoke-direct {p0, v1}, Lcom/morpho/core/MorphoPanoramaGP;->nativeEnd(I)I

    move-result v0

    .line 260
    :goto_0
    return v0

    .line 257
    :cond_0
    const v0, -0x7ffffffe

    goto :goto_0
.end method

.method public finish()I
    .locals 2

    .prologue
    .line 167
    const/4 v0, 0x0

    .line 169
    .local v0, ret:I
    iget v1, p0, Lcom/morpho/core/MorphoPanoramaGP;->mNative:I

    if-lez v1, :cond_0

    .line 171
    iget v1, p0, Lcom/morpho/core/MorphoPanoramaGP;->mNative:I

    invoke-direct {p0, v1}, Lcom/morpho/core/MorphoPanoramaGP;->nativeFinish(I)I

    move-result v0

    .line 172
    iget v1, p0, Lcom/morpho/core/MorphoPanoramaGP;->mNative:I

    invoke-direct {p0, v1}, Lcom/morpho/core/MorphoPanoramaGP;->deleteNativeObject(I)V

    .line 173
    const/4 v1, 0x0

    iput v1, p0, Lcom/morpho/core/MorphoPanoramaGP;->mNative:I

    .line 180
    :goto_0
    return v0

    .line 177
    :cond_0
    const v0, -0x7ffffffe

    goto :goto_0
.end method

.method public getBoundingRect(Landroid/graphics/Rect;)I
    .locals 7
    .parameter "rect"

    .prologue
    const/4 v6, 0x0

    .line 265
    const/4 v1, 0x0

    .line 266
    .local v1, ret:I
    const/4 v2, 0x4

    new-array v0, v2, [I

    .line 268
    .local v0, rect_info:[I
    iget v2, p0, Lcom/morpho/core/MorphoPanoramaGP;->mNative:I

    if-lez v2, :cond_2

    .line 270
    iget v2, p0, Lcom/morpho/core/MorphoPanoramaGP;->mNative:I

    invoke-direct {p0, v2, v0}, Lcom/morpho/core/MorphoPanoramaGP;->nativeGetBoundingRect(I[I)I

    move-result v1

    .line 271
    if-nez v1, :cond_0

    .line 273
    aget v2, v0, v6

    const/4 v3, 0x1

    aget v3, v0, v3

    const/4 v4, 0x2

    aget v4, v0, v4

    const/4 v5, 0x3

    aget v5, v0, v5

    invoke-virtual {p1, v2, v3, v4, v5}, Landroid/graphics/Rect;->set(IIII)V

    .line 284
    :cond_0
    :goto_0
    if-eqz v1, :cond_1

    .line 286
    invoke-virtual {p1, v6, v6, v6, v6}, Landroid/graphics/Rect;->set(IIII)V

    .line 289
    :cond_1
    return v1

    .line 281
    :cond_2
    const v1, -0x7ffffffe

    goto :goto_0
.end method

.method public getClippingRect(Landroid/graphics/Rect;)I
    .locals 7
    .parameter "rect"

    .prologue
    const/4 v6, 0x0

    .line 294
    const/4 v1, 0x0

    .line 295
    .local v1, ret:I
    const/4 v2, 0x4

    new-array v0, v2, [I

    .line 297
    .local v0, rect_info:[I
    iget v2, p0, Lcom/morpho/core/MorphoPanoramaGP;->mNative:I

    if-lez v2, :cond_2

    .line 299
    iget v2, p0, Lcom/morpho/core/MorphoPanoramaGP;->mNative:I

    invoke-direct {p0, v2, v0}, Lcom/morpho/core/MorphoPanoramaGP;->nativeGetClippingRect(I[I)I

    move-result v1

    .line 300
    if-nez v1, :cond_0

    .line 302
    aget v2, v0, v6

    const/4 v3, 0x1

    aget v3, v0, v3

    const/4 v4, 0x2

    aget v4, v0, v4

    const/4 v5, 0x3

    aget v5, v0, v5

    invoke-virtual {p1, v2, v3, v4, v5}, Landroid/graphics/Rect;->set(IIII)V

    .line 313
    :cond_0
    :goto_0
    if-eqz v1, :cond_1

    .line 315
    invoke-virtual {p1, v6, v6, v6, v6}, Landroid/graphics/Rect;->set(IIII)V

    .line 318
    :cond_1
    return v1

    .line 310
    :cond_2
    const v1, -0x7ffffffe

    goto :goto_0
.end method

.method public getCurrentDirection([I)I
    .locals 2
    .parameter "direction"

    .prologue
    .line 403
    const/4 v0, 0x0

    .line 405
    .local v0, ret:I
    iget v1, p0, Lcom/morpho/core/MorphoPanoramaGP;->mNative:I

    if-lez v1, :cond_0

    .line 407
    iget v1, p0, Lcom/morpho/core/MorphoPanoramaGP;->mNative:I

    invoke-direct {p0, v1, p1}, Lcom/morpho/core/MorphoPanoramaGP;->nativeGetCurrentDirection(I[I)I

    move-result v0

    .line 414
    :goto_0
    return v0

    .line 411
    :cond_0
    const v0, -0x7ffffffe

    goto :goto_0
.end method

.method public getGuidancePos(Landroid/graphics/Point;Landroid/graphics/Point;)I
    .locals 4
    .parameter "attached"
    .parameter "guide"

    .prologue
    .line 467
    const/4 v1, 0x0

    .line 468
    .local v1, ret:I
    const/4 v2, 0x4

    new-array v0, v2, [I

    .line 470
    .local v0, pos:[I
    iget v2, p0, Lcom/morpho/core/MorphoPanoramaGP;->mNative:I

    if-lez v2, :cond_0

    .line 472
    iget v2, p0, Lcom/morpho/core/MorphoPanoramaGP;->mNative:I

    invoke-direct {p0, v2, v0}, Lcom/morpho/core/MorphoPanoramaGP;->nativeGetGuidancePos(I[I)I

    move-result v1

    .line 473
    const/4 v2, 0x0

    aget v2, v0, v2

    const/4 v3, 0x1

    aget v3, v0, v3

    invoke-virtual {p1, v2, v3}, Landroid/graphics/Point;->set(II)V

    .line 474
    const/4 v2, 0x2

    aget v2, v0, v2

    const/4 v3, 0x3

    aget v3, v0, v3

    invoke-virtual {p2, v2, v3}, Landroid/graphics/Point;->set(II)V

    .line 481
    :goto_0
    return v1

    .line 478
    :cond_0
    const v1, -0x7ffffffe

    goto :goto_0
.end method

.method public getUseSensorAssist(I[I)I
    .locals 2
    .parameter "use_case"
    .parameter "enable"

    .prologue
    .line 339
    const/4 v0, 0x0

    .line 341
    .local v0, ret:I
    iget v1, p0, Lcom/morpho/core/MorphoPanoramaGP;->mNative:I

    if-lez v1, :cond_0

    .line 343
    iget v1, p0, Lcom/morpho/core/MorphoPanoramaGP;->mNative:I

    invoke-direct {p0, v1, p1, p2}, Lcom/morpho/core/MorphoPanoramaGP;->nativeGetUseSensorAssist(II[I)I

    move-result v0

    .line 350
    :goto_0
    return v0

    .line 347
    :cond_0
    const v0, -0x7ffffffe

    goto :goto_0
.end method

.method public getUsedHeapSize([I)I
    .locals 2
    .parameter "used_heap_size"

    .prologue
    .line 323
    const/4 v0, 0x0

    .line 325
    .local v0, ret:I
    iget v1, p0, Lcom/morpho/core/MorphoPanoramaGP;->mNative:I

    if-lez v1, :cond_0

    .line 327
    iget v1, p0, Lcom/morpho/core/MorphoPanoramaGP;->mNative:I

    invoke-direct {p0, v1, p1}, Lcom/morpho/core/MorphoPanoramaGP;->nativeGetUsedHeapSize(I[I)I

    move-result v0

    .line 334
    :goto_0
    return v0

    .line 331
    :cond_0
    const v0, -0x7ffffffe

    goto :goto_0
.end method

.method public initialize(Lcom/morpho/core/MorphoPanoramaGP$InitParam;[I)I
    .locals 2
    .parameter "param"
    .parameter "buffer_size"

    .prologue
    .line 152
    const/4 v0, 0x0

    .line 153
    .local v0, ret:I
    iget v1, p0, Lcom/morpho/core/MorphoPanoramaGP;->mNative:I

    if-lez v1, :cond_0

    .line 155
    iget v1, p0, Lcom/morpho/core/MorphoPanoramaGP;->mNative:I

    invoke-direct {p0, v1, p1, p2}, Lcom/morpho/core/MorphoPanoramaGP;->nativeInitialize(ILcom/morpho/core/MorphoPanoramaGP$InitParam;[I)I

    move-result v0

    .line 162
    :goto_0
    return v0

    .line 159
    :cond_0
    const v0, -0x7ffffffe

    goto :goto_0
.end method

.method public saveOutputJpeg(Ljava/lang/String;Landroid/graphics/Rect;I[I)I
    .locals 10
    .parameter "path"
    .parameter "rect"
    .parameter "orientation"
    .parameter "progress"

    .prologue
    .line 486
    const/4 v9, 0x0

    .line 488
    .local v9, ret:I
    iget v0, p0, Lcom/morpho/core/MorphoPanoramaGP;->mNative:I

    if-lez v0, :cond_0

    .line 490
    iget v1, p0, Lcom/morpho/core/MorphoPanoramaGP;->mNative:I

    iget v3, p2, Landroid/graphics/Rect;->left:I

    iget v4, p2, Landroid/graphics/Rect;->top:I

    iget v5, p2, Landroid/graphics/Rect;->right:I

    iget v6, p2, Landroid/graphics/Rect;->bottom:I

    move-object v0, p0

    move-object v2, p1

    move v7, p3

    move-object v8, p4

    invoke-direct/range {v0 .. v8}, Lcom/morpho/core/MorphoPanoramaGP;->nativeSaveOutputJpeg(ILjava/lang/String;IIIII[I)I

    move-result v9

    .line 497
    :goto_0
    return v9

    .line 494
    :cond_0
    const v9, -0x7ffffffe

    goto :goto_0
.end method

.method public setAngleMatrix([DI)I
    .locals 2
    .parameter "matrix"
    .parameter "sensor_type"

    .prologue
    .line 387
    const/4 v0, 0x0

    .line 389
    .local v0, ret:I
    iget v1, p0, Lcom/morpho/core/MorphoPanoramaGP;->mNative:I

    if-lez v1, :cond_0

    .line 391
    iget v1, p0, Lcom/morpho/core/MorphoPanoramaGP;->mNative:I

    invoke-direct {p0, v1, p1, p2}, Lcom/morpho/core/MorphoPanoramaGP;->nativeSetAngleMatrix(I[DI)I

    move-result v0

    .line 398
    :goto_0
    return v0

    .line 395
    :cond_0
    const v0, -0x7ffffffe

    goto :goto_0
.end method

.method public setBrightnessCorrection(I)I
    .locals 2
    .parameter "corect"

    .prologue
    .line 435
    const/4 v0, 0x0

    .line 437
    .local v0, ret:I
    iget v1, p0, Lcom/morpho/core/MorphoPanoramaGP;->mNative:I

    if-lez v1, :cond_0

    .line 439
    iget v1, p0, Lcom/morpho/core/MorphoPanoramaGP;->mNative:I

    invoke-direct {p0, v1, p1}, Lcom/morpho/core/MorphoPanoramaGP;->setBrightnessCorrection(II)I

    move-result v0

    .line 446
    :goto_0
    return v0

    .line 443
    :cond_0
    const v0, -0x7ffffffe

    goto :goto_0
.end method

.method public setMotionlessThreshold(I)I
    .locals 2
    .parameter "motionless_threshold"

    .prologue
    .line 355
    const/4 v0, 0x0

    .line 357
    .local v0, ret:I
    iget v1, p0, Lcom/morpho/core/MorphoPanoramaGP;->mNative:I

    if-lez v1, :cond_0

    .line 359
    iget v1, p0, Lcom/morpho/core/MorphoPanoramaGP;->mNative:I

    invoke-direct {p0, v1, p1}, Lcom/morpho/core/MorphoPanoramaGP;->nativeSetMotionlessThreshold(II)I

    move-result v0

    .line 366
    :goto_0
    return v0

    .line 363
    :cond_0
    const v0, -0x7ffffffe

    goto :goto_0
.end method

.method public setUseSensorAssist(II)I
    .locals 2
    .parameter "use_case"
    .parameter "enable"

    .prologue
    .line 419
    const/4 v0, 0x0

    .line 421
    .local v0, ret:I
    iget v1, p0, Lcom/morpho/core/MorphoPanoramaGP;->mNative:I

    if-lez v1, :cond_0

    .line 423
    iget v1, p0, Lcom/morpho/core/MorphoPanoramaGP;->mNative:I

    invoke-direct {p0, v1, p1, p2}, Lcom/morpho/core/MorphoPanoramaGP;->nativeSetUseSensorAssist(III)I

    move-result v0

    .line 430
    :goto_0
    return v0

    .line 427
    :cond_0
    const v0, -0x7ffffffe

    goto :goto_0
.end method

.method public setUseSensorThreshold(I)I
    .locals 2
    .parameter "threshold"

    .prologue
    .line 451
    const/4 v0, 0x0

    .line 453
    .local v0, ret:I
    iget v1, p0, Lcom/morpho/core/MorphoPanoramaGP;->mNative:I

    if-lez v1, :cond_0

    .line 455
    iget v1, p0, Lcom/morpho/core/MorphoPanoramaGP;->mNative:I

    invoke-direct {p0, v1, p1}, Lcom/morpho/core/MorphoPanoramaGP;->nativeSetUseSensorThreshold(II)I

    move-result v0

    .line 462
    :goto_0
    return v0

    .line 459
    :cond_0
    const v0, -0x7ffffffe

    goto :goto_0
.end method

.method public setUseThreshold(I)I
    .locals 2
    .parameter "use_threshold"

    .prologue
    .line 371
    const/4 v0, 0x0

    .line 373
    .local v0, ret:I
    iget v1, p0, Lcom/morpho/core/MorphoPanoramaGP;->mNative:I

    if-lez v1, :cond_0

    .line 375
    iget v1, p0, Lcom/morpho/core/MorphoPanoramaGP;->mNative:I

    invoke-direct {p0, v1, p1}, Lcom/morpho/core/MorphoPanoramaGP;->nativeSetUseThreshold(II)I

    move-result v0

    .line 382
    :goto_0
    return v0

    .line 379
    :cond_0
    const v0, -0x7ffffffe

    goto :goto_0
.end method

.method public start()I
    .locals 2

    .prologue
    .line 185
    const/4 v0, 0x0

    .line 187
    .local v0, ret:I
    iget v1, p0, Lcom/morpho/core/MorphoPanoramaGP;->mNative:I

    if-lez v1, :cond_0

    .line 189
    iget v1, p0, Lcom/morpho/core/MorphoPanoramaGP;->mNative:I

    invoke-direct {p0, v1}, Lcom/morpho/core/MorphoPanoramaGP;->nativeStart(I)I

    move-result v0

    .line 196
    :goto_0
    return v0

    .line 193
    :cond_0
    const v0, -0x7ffffffe

    goto :goto_0
.end method
