.class Lcom/android/hwcamera/feature/shot/AbstractShotMode$PictureCallbackWraper;
.super Ljava/lang/Object;
.source "AbstractShotMode.java"

# interfaces
.implements Landroid/hardware/Camera$PictureCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/hwcamera/feature/shot/AbstractShotMode;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "PictureCallbackWraper"
.end annotation


# static fields
.field private static final BEST_PHOTO_REPORT_MARKED:B = 0x45t

.field private static final FAKE_DATA_MARKED:B = 0x35t

.field private static final INTERRUPT_BY_HAL_MARKED:B = 0x75t

.field private static final SMART_SENCE_REPORT_MARKED:B = 0x65t


# instance fields
.field private MIN_PICTURE_HAS_TAKEN:I

.field private mCurrentPicNo:I

.field private mIsInterruptByUserDelayed:Z

.field private pictureCallback:Lcom/android/hwcamera/feature/shot/FeaturePictureCallback;

.field final synthetic this$0:Lcom/android/hwcamera/feature/shot/AbstractShotMode;


# direct methods
.method public constructor <init>(Lcom/android/hwcamera/feature/shot/AbstractShotMode;Lcom/android/hwcamera/feature/shot/FeaturePictureCallback;)V
    .locals 2
    .parameter
    .parameter "pictureCallback"

    .prologue
    const/4 v1, 0x0

    .line 230
    iput-object p1, p0, Lcom/android/hwcamera/feature/shot/AbstractShotMode$PictureCallbackWraper;->this$0:Lcom/android/hwcamera/feature/shot/AbstractShotMode;

    .line 231
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 219
    iput v1, p0, Lcom/android/hwcamera/feature/shot/AbstractShotMode$PictureCallbackWraper;->mCurrentPicNo:I

    .line 227
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/hwcamera/feature/shot/AbstractShotMode$PictureCallbackWraper;->MIN_PICTURE_HAS_TAKEN:I

    .line 228
    iput-boolean v1, p0, Lcom/android/hwcamera/feature/shot/AbstractShotMode$PictureCallbackWraper;->mIsInterruptByUserDelayed:Z

    .line 232
    iput-object p2, p0, Lcom/android/hwcamera/feature/shot/AbstractShotMode$PictureCallbackWraper;->pictureCallback:Lcom/android/hwcamera/feature/shot/FeaturePictureCallback;

    .line 233
    return-void
.end method

.method private checkMarkedData([BB)Z
    .locals 4
    .parameter "data"
    .parameter "mark"

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 338
    if-eqz p1, :cond_0

    array-length v2, p1

    const/4 v3, 0x4

    if-ge v2, v3, :cond_2

    :cond_0
    move v0, v1

    .line 339
    :cond_1
    :goto_0
    return v0

    :cond_2
    aget-byte v2, p1, v1

    if-ne v2, p2, :cond_3

    aget-byte v2, p1, v0

    if-ne v2, p2, :cond_3

    const/4 v2, 0x2

    aget-byte v2, p1, v2

    if-ne v2, p2, :cond_3

    const/4 v2, 0x3

    aget-byte v2, p1, v2

    if-eq v2, p2, :cond_1

    :cond_3
    move v0, v1

    goto :goto_0
.end method

.method private getMsgId([B)I
    .locals 2
    .parameter "data"

    .prologue
    .line 343
    array-length v0, p1

    const/16 v1, 0x8

    if-ge v0, v1, :cond_0

    const/4 v0, 0x0

    .line 344
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x7

    aget-byte v0, p1, v0

    invoke-static {v0}, Lcom/android/hwcamera/Util;->byteToUnsigned(B)I

    move-result v0

    shl-int/lit8 v0, v0, 0x18

    const/4 v1, 0x6

    aget-byte v1, p1, v1

    invoke-static {v1}, Lcom/android/hwcamera/Util;->byteToUnsigned(B)I

    move-result v1

    shl-int/lit8 v1, v1, 0x10

    add-int/2addr v0, v1

    const/4 v1, 0x5

    aget-byte v1, p1, v1

    invoke-static {v1}, Lcom/android/hwcamera/Util;->byteToUnsigned(B)I

    move-result v1

    shl-int/lit8 v1, v1, 0x8

    add-int/2addr v0, v1

    const/4 v1, 0x4

    aget-byte v1, p1, v1

    invoke-static {v1}, Lcom/android/hwcamera/Util;->byteToUnsigned(B)I

    move-result v1

    add-int/2addr v0, v1

    goto :goto_0
.end method

.method private isFakePicture([B)Z
    .locals 4
    .parameter "data"

    .prologue
    const/4 v0, 0x0

    const/16 v3, 0x35

    .line 349
    invoke-direct {p0, p1, v3}, Lcom/android/hwcamera/feature/shot/AbstractShotMode$PictureCallbackWraper;->checkMarkedData([BB)Z

    move-result v1

    if-nez v1, :cond_1

    .line 351
    :cond_0
    :goto_0
    return v0

    .line 350
    :cond_1
    array-length v1, p1

    const/16 v2, 0x8

    if-lt v1, v2, :cond_0

    .line 351
    const/4 v1, 0x4

    aget-byte v1, p1, v1

    if-ne v1, v3, :cond_0

    const/4 v1, 0x5

    aget-byte v1, p1, v1

    if-ne v1, v3, :cond_0

    const/4 v1, 0x6

    aget-byte v1, p1, v1

    if-ne v1, v3, :cond_0

    const/4 v1, 0x7

    aget-byte v1, p1, v1

    if-ne v1, v3, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method private isQuickThumbnail([B)Z
    .locals 3
    .parameter "data"

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 355
    const/16 v2, 0x35

    invoke-direct {p0, p1, v2}, Lcom/android/hwcamera/feature/shot/AbstractShotMode$PictureCallbackWraper;->checkMarkedData([BB)Z

    move-result v2

    if-nez v2, :cond_0

    .line 356
    :goto_0
    return v1

    :cond_0
    invoke-direct {p0, p1}, Lcom/android/hwcamera/feature/shot/AbstractShotMode$PictureCallbackWraper;->getMsgId([B)I

    move-result v2

    if-ne v2, v0, :cond_1

    :goto_1
    move v1, v0

    goto :goto_0

    :cond_1
    move v0, v1

    goto :goto_1
.end method


# virtual methods
.method public handleLastPictureTaken()V
    .locals 2

    .prologue
    .line 247
    iget-object v0, p0, Lcom/android/hwcamera/feature/shot/AbstractShotMode$PictureCallbackWraper;->this$0:Lcom/android/hwcamera/feature/shot/AbstractShotMode;

    invoke-virtual {v0}, Lcom/android/hwcamera/feature/shot/AbstractShotMode;->doBeforeOnLastPicTaken()V

    .line 248
    iget-object v0, p0, Lcom/android/hwcamera/feature/shot/AbstractShotMode$PictureCallbackWraper;->pictureCallback:Lcom/android/hwcamera/feature/shot/FeaturePictureCallback;

    invoke-interface {v0}, Lcom/android/hwcamera/feature/shot/FeaturePictureCallback;->onLastPictureTaken()V

    .line 249
    iget-object v0, p0, Lcom/android/hwcamera/feature/shot/AbstractShotMode$PictureCallbackWraper;->this$0:Lcom/android/hwcamera/feature/shot/AbstractShotMode;

    invoke-virtual {v0}, Lcom/android/hwcamera/feature/shot/AbstractShotMode;->doAfterOnLastPicTaken()V

    .line 250
    iget-object v0, p0, Lcom/android/hwcamera/feature/shot/AbstractShotMode$PictureCallbackWraper;->this$0:Lcom/android/hwcamera/feature/shot/AbstractShotMode;

    const/4 v1, 0x0

    iput v1, v0, Lcom/android/hwcamera/feature/shot/AbstractShotMode;->mMaxPictureNumber:I

    .line 251
    return-void
.end method

.method public interruptTakePicture()V
    .locals 3

    .prologue
    .line 236
    const-string v0, "AbstractShotMode"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onPictureTaken interruptTakePicture No:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/hwcamera/feature/shot/AbstractShotMode$PictureCallbackWraper;->mCurrentPicNo:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " total picture:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/hwcamera/feature/shot/AbstractShotMode$PictureCallbackWraper;->this$0:Lcom/android/hwcamera/feature/shot/AbstractShotMode;

    invoke-virtual {v2}, Lcom/android/hwcamera/feature/shot/AbstractShotMode;->getMaxPictureNum()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " hashcode:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 238
    iget v0, p0, Lcom/android/hwcamera/feature/shot/AbstractShotMode$PictureCallbackWraper;->mCurrentPicNo:I

    iget v1, p0, Lcom/android/hwcamera/feature/shot/AbstractShotMode$PictureCallbackWraper;->MIN_PICTURE_HAS_TAKEN:I

    if-lt v0, v1, :cond_0

    .line 239
    invoke-virtual {p0}, Lcom/android/hwcamera/feature/shot/AbstractShotMode$PictureCallbackWraper;->handleLastPictureTaken()V

    .line 244
    :goto_0
    return-void

    .line 241
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/hwcamera/feature/shot/AbstractShotMode$PictureCallbackWraper;->mIsInterruptByUserDelayed:Z

    goto :goto_0
.end method

.method public onPictureTaken([BLandroid/hardware/Camera;)V
    .locals 10
    .parameter "data"
    .parameter "camera"

    .prologue
    const/4 v9, 0x4

    const/4 v1, 0x2

    const/4 v5, 0x1

    const/4 v2, 0x0

    .line 280
    iget-object v0, p0, Lcom/android/hwcamera/feature/shot/AbstractShotMode$PictureCallbackWraper;->pictureCallback:Lcom/android/hwcamera/feature/shot/FeaturePictureCallback;

    if-eqz v0, :cond_0

    if-nez p1, :cond_1

    .line 335
    :cond_0
    :goto_0
    return-void

    .line 281
    :cond_1
    const/16 v0, 0x65

    invoke-direct {p0, p1, v0}, Lcom/android/hwcamera/feature/shot/AbstractShotMode$PictureCallbackWraper;->checkMarkedData([BB)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 282
    iget-object v0, p0, Lcom/android/hwcamera/feature/shot/AbstractShotMode$PictureCallbackWraper;->pictureCallback:Lcom/android/hwcamera/feature/shot/FeaturePictureCallback;

    aget-byte v1, p1, v9

    invoke-interface {v0, v1}, Lcom/android/hwcamera/feature/shot/FeaturePictureCallback;->onSmartSenceReport(B)V

    goto :goto_0

    .line 286
    :cond_2
    const/16 v0, 0x45

    invoke-direct {p0, p1, v0}, Lcom/android/hwcamera/feature/shot/AbstractShotMode$PictureCallbackWraper;->checkMarkedData([BB)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 287
    iget-object v0, p0, Lcom/android/hwcamera/feature/shot/AbstractShotMode$PictureCallbackWraper;->pictureCallback:Lcom/android/hwcamera/feature/shot/FeaturePictureCallback;

    aget-byte v1, p1, v9

    invoke-interface {v0, v1}, Lcom/android/hwcamera/feature/shot/FeaturePictureCallback;->onBestPhotoReport(I)V

    goto :goto_0

    .line 291
    :cond_3
    const/16 v0, 0x75

    invoke-direct {p0, p1, v0}, Lcom/android/hwcamera/feature/shot/AbstractShotMode$PictureCallbackWraper;->checkMarkedData([BB)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 292
    const-string v0, "AbstractShotMode"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onPictureTaken no memory for burst :"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v5, p0, Lcom/android/hwcamera/feature/shot/AbstractShotMode$PictureCallbackWraper;->mCurrentPicNo:I

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 293
    iput v2, p0, Lcom/android/hwcamera/feature/shot/AbstractShotMode$PictureCallbackWraper;->mCurrentPicNo:I

    .line 294
    invoke-virtual {p0}, Lcom/android/hwcamera/feature/shot/AbstractShotMode$PictureCallbackWraper;->handleLastPictureTaken()V

    goto :goto_0

    .line 298
    :cond_4
    invoke-direct {p0, p1}, Lcom/android/hwcamera/feature/shot/AbstractShotMode$PictureCallbackWraper;->isQuickThumbnail([B)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 299
    iget-object v0, p0, Lcom/android/hwcamera/feature/shot/AbstractShotMode$PictureCallbackWraper;->pictureCallback:Lcom/android/hwcamera/feature/shot/FeaturePictureCallback;

    invoke-interface {v0, p1}, Lcom/android/hwcamera/feature/shot/FeaturePictureCallback;->onQuickThumbnail([B)V

    .line 300
    invoke-static {v5}, Lcom/android/hwcamera/feature/shot/AbstractShotMode;->access$002(Z)Z

    goto :goto_0

    .line 304
    :cond_5
    const/4 v0, 0x3

    new-array v6, v0, [I

    fill-array-data v6, :array_0

    .line 306
    .local v6, postData:[I
    invoke-static {p1, v6}, Lcom/android/hwcamera/Exif;->getJpegExifForPost([B[I)I

    .line 307
    aget v8, v6, v2

    .line 308
    .local v8, postWidth:I
    aget v3, v6, v5

    .line 309
    .local v3, postHeight:I
    aget v7, v6, v1

    .line 311
    .local v7, postMode:I
    and-int/lit8 v0, v7, 0x2

    if-ne v0, v1, :cond_8

    move v4, v5

    .line 313
    .local v4, isHdr:Z
    :goto_1
    and-int/lit8 v0, v7, 0x1

    if-nez v0, :cond_a

    .line 314
    iget v0, p0, Lcom/android/hwcamera/feature/shot/AbstractShotMode$PictureCallbackWraper;->mCurrentPicNo:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/hwcamera/feature/shot/AbstractShotMode$PictureCallbackWraper;->mCurrentPicNo:I

    .line 315
    const-string v0, "AbstractShotMode"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "onPictureTaken No:"

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v9, p0, Lcom/android/hwcamera/feature/shot/AbstractShotMode$PictureCallbackWraper;->mCurrentPicNo:I

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v9, " total picture:"

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v9, p0, Lcom/android/hwcamera/feature/shot/AbstractShotMode$PictureCallbackWraper;->this$0:Lcom/android/hwcamera/feature/shot/AbstractShotMode;

    invoke-virtual {v9}, Lcom/android/hwcamera/feature/shot/AbstractShotMode;->getMaxPictureNum()I

    move-result v9

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v9, " hashcode:"

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v9

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 317
    iget v0, p0, Lcom/android/hwcamera/feature/shot/AbstractShotMode$PictureCallbackWraper;->mCurrentPicNo:I

    iget-object v1, p0, Lcom/android/hwcamera/feature/shot/AbstractShotMode$PictureCallbackWraper;->this$0:Lcom/android/hwcamera/feature/shot/AbstractShotMode;

    invoke-virtual {v1}, Lcom/android/hwcamera/feature/shot/AbstractShotMode;->getMaxPictureNum()I

    move-result v1

    if-eq v0, v1, :cond_6

    iget-boolean v0, p0, Lcom/android/hwcamera/feature/shot/AbstractShotMode$PictureCallbackWraper;->mIsInterruptByUserDelayed:Z

    if-eqz v0, :cond_7

    .line 318
    :cond_6
    const-string v0, "AbstractShotMode"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "onPictureTaken enter last deal:"

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v9, p0, Lcom/android/hwcamera/feature/shot/AbstractShotMode$PictureCallbackWraper;->mCurrentPicNo:I

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v9, " mIsInterruptDelayed:"

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v9, p0, Lcom/android/hwcamera/feature/shot/AbstractShotMode$PictureCallbackWraper;->mIsInterruptByUserDelayed:Z

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 319
    iput v2, p0, Lcom/android/hwcamera/feature/shot/AbstractShotMode$PictureCallbackWraper;->mCurrentPicNo:I

    .line 320
    iput-boolean v2, p0, Lcom/android/hwcamera/feature/shot/AbstractShotMode$PictureCallbackWraper;->mIsInterruptByUserDelayed:Z

    .line 321
    invoke-virtual {p0}, Lcom/android/hwcamera/feature/shot/AbstractShotMode$PictureCallbackWraper;->handleLastPictureTaken()V

    .line 325
    :cond_7
    invoke-direct {p0, p1}, Lcom/android/hwcamera/feature/shot/AbstractShotMode$PictureCallbackWraper;->isFakePicture([B)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 327
    iget-object v0, p0, Lcom/android/hwcamera/feature/shot/AbstractShotMode$PictureCallbackWraper;->pictureCallback:Lcom/android/hwcamera/feature/shot/FeaturePictureCallback;

    invoke-interface {v0}, Lcom/android/hwcamera/feature/shot/FeaturePictureCallback;->onFakePictureTaken()V

    goto/16 :goto_0

    .end local v4           #isHdr:Z
    :cond_8
    move v4, v2

    .line 311
    goto/16 :goto_1

    .line 330
    .restart local v4       #isHdr:Z
    :cond_9
    iget-object v0, p0, Lcom/android/hwcamera/feature/shot/AbstractShotMode$PictureCallbackWraper;->pictureCallback:Lcom/android/hwcamera/feature/shot/FeaturePictureCallback;

    move-object v1, p1

    move v3, v2

    invoke-interface/range {v0 .. v5}, Lcom/android/hwcamera/feature/shot/FeaturePictureCallback;->storeImage([BIIZZ)V

    goto/16 :goto_0

    .line 332
    :cond_a
    and-int/lit8 v0, v7, 0x1

    if-ne v0, v5, :cond_0

    .line 333
    iget-object v0, p0, Lcom/android/hwcamera/feature/shot/AbstractShotMode$PictureCallbackWraper;->pictureCallback:Lcom/android/hwcamera/feature/shot/FeaturePictureCallback;

    invoke-static {}, Lcom/android/hwcamera/feature/shot/AbstractShotMode;->access$000()Z

    move-result v1

    if-nez v1, :cond_b

    :goto_2
    move-object v1, p1

    move v2, v8

    invoke-interface/range {v0 .. v5}, Lcom/android/hwcamera/feature/shot/FeaturePictureCallback;->storeImage([BIIZZ)V

    goto/16 :goto_0

    :cond_b
    move v5, v2

    goto :goto_2

    .line 304
    nop

    :array_0
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
    .end array-data
.end method
