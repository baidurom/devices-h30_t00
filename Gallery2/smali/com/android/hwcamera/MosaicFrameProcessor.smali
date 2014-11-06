.class public Lcom/android/hwcamera/MosaicFrameProcessor;
.super Ljava/lang/Object;
.source "MosaicFrameProcessor.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/hwcamera/MosaicFrameProcessor$ProgressListener;
    }
.end annotation


# static fields
.field private static final FRAME_COUNT_INDEX:I = 0x9

.field private static final HR_TO_LR_DOWNSAMPLE_FACTOR:I = 0x4

.field private static final MAX_NUMBER_OF_FRAMES:I = 0x64

.field private static final MOSAIC_RET_CODE_INDEX:I = 0xa

.field private static final NUM_FRAMES_IN_BUFFER:I = 0x2

.field private static final TAG:Ljava/lang/String; = "MosaicFrameProcessor"

.field private static final WINDOW_SIZE:I = 0x3

.field private static final X_COORD_INDEX:I = 0x2

.field private static final Y_COORD_INDEX:I = 0x5

.field private static sMosaicFrameProcessor:Lcom/android/hwcamera/MosaicFrameProcessor;


# instance fields
.field private mCurrProcessFrameIdx:I

.field private mDeltaX:[F

.field private mDeltaY:[F

.field private mFillIn:I

.field private mFirstRun:Z

.field private mIsMosaicMemoryAllocated:Z

.field private mLastProcessFrameIdx:I

.field private mMosaicer:Lcom/android/hwcamera/Mosaic;

.field private mOldestIdx:I

.field private mPanningRateX:F

.field private mPanningRateY:F

.field private mPreviewBufferSize:I

.field private mPreviewHeight:I

.field private mPreviewWidth:I

.field private mProgressListener:Lcom/android/hwcamera/MosaicFrameProcessor$ProgressListener;

.field private mTotalFrameCount:I

.field private mTotalTranslationX:F

.field private mTotalTranslationY:F

.field private mTranslationLastX:F

.field private mTranslationLastY:F


# direct methods
.method private constructor <init>()V
    .locals 4

    .prologue
    const/4 v3, 0x3

    const/4 v0, -0x1

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 79
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 36
    iput-boolean v1, p0, Lcom/android/hwcamera/MosaicFrameProcessor;->mIsMosaicMemoryAllocated:Z

    .line 40
    iput v1, p0, Lcom/android/hwcamera/MosaicFrameProcessor;->mFillIn:I

    .line 41
    iput v1, p0, Lcom/android/hwcamera/MosaicFrameProcessor;->mTotalFrameCount:I

    .line 42
    iput v0, p0, Lcom/android/hwcamera/MosaicFrameProcessor;->mLastProcessFrameIdx:I

    .line 43
    iput v0, p0, Lcom/android/hwcamera/MosaicFrameProcessor;->mCurrProcessFrameIdx:I

    .line 51
    new-array v0, v3, [F

    iput-object v0, p0, Lcom/android/hwcamera/MosaicFrameProcessor;->mDeltaX:[F

    .line 52
    new-array v0, v3, [F

    iput-object v0, p0, Lcom/android/hwcamera/MosaicFrameProcessor;->mDeltaY:[F

    .line 53
    iput v1, p0, Lcom/android/hwcamera/MosaicFrameProcessor;->mOldestIdx:I

    .line 54
    iput v2, p0, Lcom/android/hwcamera/MosaicFrameProcessor;->mTotalTranslationX:F

    .line 55
    iput v2, p0, Lcom/android/hwcamera/MosaicFrameProcessor;->mTotalTranslationY:F

    .line 80
    new-instance v0, Lcom/android/hwcamera/Mosaic;

    invoke-direct {v0}, Lcom/android/hwcamera/Mosaic;-><init>()V

    iput-object v0, p0, Lcom/android/hwcamera/MosaicFrameProcessor;->mMosaicer:Lcom/android/hwcamera/Mosaic;

    .line 81
    return-void
.end method

.method public static declared-synchronized getInstance()Lcom/android/hwcamera/MosaicFrameProcessor;
    .locals 2

    .prologue
    .line 73
    const-class v1, Lcom/android/hwcamera/MosaicFrameProcessor;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/android/hwcamera/MosaicFrameProcessor;->sMosaicFrameProcessor:Lcom/android/hwcamera/MosaicFrameProcessor;

    if-nez v0, :cond_0

    .line 74
    new-instance v0, Lcom/android/hwcamera/MosaicFrameProcessor;

    invoke-direct {v0}, Lcom/android/hwcamera/MosaicFrameProcessor;-><init>()V

    sput-object v0, Lcom/android/hwcamera/MosaicFrameProcessor;->sMosaicFrameProcessor:Lcom/android/hwcamera/MosaicFrameProcessor;

    .line 76
    :cond_0
    sget-object v0, Lcom/android/hwcamera/MosaicFrameProcessor;->sMosaicFrameProcessor:Lcom/android/hwcamera/MosaicFrameProcessor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 73
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private setupMosaicer(III)V
    .locals 4
    .parameter "previewWidth"
    .parameter "previewHeight"
    .parameter "bufSize"

    .prologue
    const/16 v3, 0x2c

    .line 119
    const-string v0, "MosaicFrameProcessor"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setupMosaicer w, h="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 121
    iget-boolean v0, p0, Lcom/android/hwcamera/MosaicFrameProcessor;->mIsMosaicMemoryAllocated:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "MosaicFrameProcessor in use!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 122
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/hwcamera/MosaicFrameProcessor;->mIsMosaicMemoryAllocated:Z

    .line 123
    iget-object v0, p0, Lcom/android/hwcamera/MosaicFrameProcessor;->mMosaicer:Lcom/android/hwcamera/Mosaic;

    invoke-virtual {v0, p1, p2}, Lcom/android/hwcamera/Mosaic;->allocateMosaicMemory(II)V

    .line 124
    return-void
.end method


# virtual methods
.method public calculateTranslationRate()V
    .locals 8

    .prologue
    const/high16 v7, 0x4080

    const/high16 v6, 0x4040

    .line 198
    iget-object v4, p0, Lcom/android/hwcamera/MosaicFrameProcessor;->mMosaicer:Lcom/android/hwcamera/Mosaic;

    invoke-virtual {v4}, Lcom/android/hwcamera/Mosaic;->setSourceImageFromGPU()[F

    move-result-object v0

    .line 199
    .local v0, frameData:[F
    const/16 v4, 0x9

    aget v4, v0, v4

    float-to-int v4, v4

    iput v4, p0, Lcom/android/hwcamera/MosaicFrameProcessor;->mTotalFrameCount:I

    .line 200
    const/4 v4, 0x2

    aget v2, v0, v4

    .line 201
    .local v2, translationCurrX:F
    const/4 v4, 0x5

    aget v3, v0, v4

    .line 203
    .local v3, translationCurrY:F
    iget-boolean v4, p0, Lcom/android/hwcamera/MosaicFrameProcessor;->mFirstRun:Z

    if-eqz v4, :cond_0

    .line 205
    iput v2, p0, Lcom/android/hwcamera/MosaicFrameProcessor;->mTranslationLastX:F

    .line 206
    iput v3, p0, Lcom/android/hwcamera/MosaicFrameProcessor;->mTranslationLastY:F

    .line 207
    const/4 v4, 0x0

    iput-boolean v4, p0, Lcom/android/hwcamera/MosaicFrameProcessor;->mFirstRun:Z

    .line 237
    :goto_0
    return-void

    .line 213
    :cond_0
    iget v1, p0, Lcom/android/hwcamera/MosaicFrameProcessor;->mOldestIdx:I

    .line 214
    .local v1, idx:I
    iget v4, p0, Lcom/android/hwcamera/MosaicFrameProcessor;->mTotalTranslationX:F

    iget-object v5, p0, Lcom/android/hwcamera/MosaicFrameProcessor;->mDeltaX:[F

    aget v5, v5, v1

    sub-float/2addr v4, v5

    iput v4, p0, Lcom/android/hwcamera/MosaicFrameProcessor;->mTotalTranslationX:F

    .line 215
    iget v4, p0, Lcom/android/hwcamera/MosaicFrameProcessor;->mTotalTranslationY:F

    iget-object v5, p0, Lcom/android/hwcamera/MosaicFrameProcessor;->mDeltaY:[F

    aget v5, v5, v1

    sub-float/2addr v4, v5

    iput v4, p0, Lcom/android/hwcamera/MosaicFrameProcessor;->mTotalTranslationY:F

    .line 216
    iget-object v4, p0, Lcom/android/hwcamera/MosaicFrameProcessor;->mDeltaX:[F

    iget v5, p0, Lcom/android/hwcamera/MosaicFrameProcessor;->mTranslationLastX:F

    sub-float v5, v2, v5

    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v5

    aput v5, v4, v1

    .line 217
    iget-object v4, p0, Lcom/android/hwcamera/MosaicFrameProcessor;->mDeltaY:[F

    iget v5, p0, Lcom/android/hwcamera/MosaicFrameProcessor;->mTranslationLastY:F

    sub-float v5, v3, v5

    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v5

    aput v5, v4, v1

    .line 218
    iget v4, p0, Lcom/android/hwcamera/MosaicFrameProcessor;->mTotalTranslationX:F

    iget-object v5, p0, Lcom/android/hwcamera/MosaicFrameProcessor;->mDeltaX:[F

    aget v5, v5, v1

    add-float/2addr v4, v5

    iput v4, p0, Lcom/android/hwcamera/MosaicFrameProcessor;->mTotalTranslationX:F

    .line 219
    iget v4, p0, Lcom/android/hwcamera/MosaicFrameProcessor;->mTotalTranslationY:F

    iget-object v5, p0, Lcom/android/hwcamera/MosaicFrameProcessor;->mDeltaY:[F

    aget v5, v5, v1

    add-float/2addr v4, v5

    iput v4, p0, Lcom/android/hwcamera/MosaicFrameProcessor;->mTotalTranslationY:F

    .line 229
    iget v4, p0, Lcom/android/hwcamera/MosaicFrameProcessor;->mTotalTranslationX:F

    iget v5, p0, Lcom/android/hwcamera/MosaicFrameProcessor;->mPreviewWidth:I

    int-to-float v5, v5

    div-float/2addr v5, v7

    div-float/2addr v4, v5

    div-float/2addr v4, v6

    iput v4, p0, Lcom/android/hwcamera/MosaicFrameProcessor;->mPanningRateX:F

    .line 231
    iget v4, p0, Lcom/android/hwcamera/MosaicFrameProcessor;->mTotalTranslationY:F

    iget v5, p0, Lcom/android/hwcamera/MosaicFrameProcessor;->mPreviewHeight:I

    int-to-float v5, v5

    div-float/2addr v5, v7

    div-float/2addr v4, v5

    div-float/2addr v4, v6

    iput v4, p0, Lcom/android/hwcamera/MosaicFrameProcessor;->mPanningRateY:F

    .line 234
    iput v2, p0, Lcom/android/hwcamera/MosaicFrameProcessor;->mTranslationLastX:F

    .line 235
    iput v3, p0, Lcom/android/hwcamera/MosaicFrameProcessor;->mTranslationLastY:F

    .line 236
    iget v4, p0, Lcom/android/hwcamera/MosaicFrameProcessor;->mOldestIdx:I

    add-int/lit8 v4, v4, 0x1

    rem-int/lit8 v4, v4, 0x3

    iput v4, p0, Lcom/android/hwcamera/MosaicFrameProcessor;->mOldestIdx:I

    goto :goto_0
.end method

.method public clear()V
    .locals 1

    .prologue
    .line 101
    iget-boolean v0, p0, Lcom/android/hwcamera/MosaicFrameProcessor;->mIsMosaicMemoryAllocated:Z

    if-eqz v0, :cond_0

    .line 102
    iget-object v0, p0, Lcom/android/hwcamera/MosaicFrameProcessor;->mMosaicer:Lcom/android/hwcamera/Mosaic;

    invoke-virtual {v0}, Lcom/android/hwcamera/Mosaic;->freeMosaicMemory()V

    .line 103
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/hwcamera/MosaicFrameProcessor;->mIsMosaicMemoryAllocated:Z

    .line 105
    :cond_0
    monitor-enter p0

    .line 106
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->notify()V

    .line 107
    monitor-exit p0

    .line 108
    return-void

    .line 107
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public createMosaic(Z)I
    .locals 1
    .parameter "highRes"

    .prologue
    .line 148
    iget-object v0, p0, Lcom/android/hwcamera/MosaicFrameProcessor;->mMosaicer:Lcom/android/hwcamera/Mosaic;

    invoke-virtual {v0, p1}, Lcom/android/hwcamera/Mosaic;->createMosaic(Z)I

    move-result v0

    return v0
.end method

.method public getFinalMosaicNV21()[B
    .locals 1

    .prologue
    .line 152
    iget-object v0, p0, Lcom/android/hwcamera/MosaicFrameProcessor;->mMosaicer:Lcom/android/hwcamera/Mosaic;

    invoke-virtual {v0}, Lcom/android/hwcamera/Mosaic;->getFinalMosaicNV21()[B

    move-result-object v0

    return-object v0
.end method

.method public initialize(III)V
    .locals 3
    .parameter "previewWidth"
    .parameter "previewHeight"
    .parameter "bufSize"

    .prologue
    .line 92
    iput p1, p0, Lcom/android/hwcamera/MosaicFrameProcessor;->mPreviewWidth:I

    .line 93
    iput p2, p0, Lcom/android/hwcamera/MosaicFrameProcessor;->mPreviewHeight:I

    .line 94
    iput p3, p0, Lcom/android/hwcamera/MosaicFrameProcessor;->mPreviewBufferSize:I

    .line 95
    iget v0, p0, Lcom/android/hwcamera/MosaicFrameProcessor;->mPreviewWidth:I

    iget v1, p0, Lcom/android/hwcamera/MosaicFrameProcessor;->mPreviewHeight:I

    iget v2, p0, Lcom/android/hwcamera/MosaicFrameProcessor;->mPreviewBufferSize:I

    invoke-direct {p0, v0, v1, v2}, Lcom/android/hwcamera/MosaicFrameProcessor;->setupMosaicer(III)V

    .line 96
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/hwcamera/MosaicFrameProcessor;->setStripType(I)V

    .line 97
    invoke-virtual {p0}, Lcom/android/hwcamera/MosaicFrameProcessor;->reset()V

    .line 98
    return-void
.end method

.method public isMosaicMemoryAllocated()Z
    .locals 1

    .prologue
    .line 111
    iget-boolean v0, p0, Lcom/android/hwcamera/MosaicFrameProcessor;->mIsMosaicMemoryAllocated:Z

    return v0
.end method

.method public processFrame()V
    .locals 7

    .prologue
    const/high16 v6, 0x4080

    .line 159
    iget-boolean v0, p0, Lcom/android/hwcamera/MosaicFrameProcessor;->mIsMosaicMemoryAllocated:Z

    if-nez v0, :cond_1

    .line 195
    :cond_0
    :goto_0
    return-void

    .line 166
    :cond_1
    iget v0, p0, Lcom/android/hwcamera/MosaicFrameProcessor;->mFillIn:I

    iput v0, p0, Lcom/android/hwcamera/MosaicFrameProcessor;->mCurrProcessFrameIdx:I

    .line 167
    iget v0, p0, Lcom/android/hwcamera/MosaicFrameProcessor;->mFillIn:I

    add-int/lit8 v0, v0, 0x1

    rem-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/android/hwcamera/MosaicFrameProcessor;->mFillIn:I

    .line 171
    iget v0, p0, Lcom/android/hwcamera/MosaicFrameProcessor;->mCurrProcessFrameIdx:I

    iget v1, p0, Lcom/android/hwcamera/MosaicFrameProcessor;->mLastProcessFrameIdx:I

    if-eq v0, v1, :cond_0

    .line 172
    iget v0, p0, Lcom/android/hwcamera/MosaicFrameProcessor;->mCurrProcessFrameIdx:I

    iput v0, p0, Lcom/android/hwcamera/MosaicFrameProcessor;->mLastProcessFrameIdx:I

    .line 176
    iget v0, p0, Lcom/android/hwcamera/MosaicFrameProcessor;->mTotalFrameCount:I

    const/16 v1, 0x64

    if-ge v0, v1, :cond_2

    .line 179
    invoke-virtual {p0}, Lcom/android/hwcamera/MosaicFrameProcessor;->calculateTranslationRate()V

    .line 182
    iget-object v0, p0, Lcom/android/hwcamera/MosaicFrameProcessor;->mProgressListener:Lcom/android/hwcamera/MosaicFrameProcessor$ProgressListener;

    if-eqz v0, :cond_0

    .line 183
    iget-object v0, p0, Lcom/android/hwcamera/MosaicFrameProcessor;->mProgressListener:Lcom/android/hwcamera/MosaicFrameProcessor$ProgressListener;

    const/4 v1, 0x0

    iget v2, p0, Lcom/android/hwcamera/MosaicFrameProcessor;->mPanningRateX:F

    iget v3, p0, Lcom/android/hwcamera/MosaicFrameProcessor;->mPanningRateY:F

    iget v4, p0, Lcom/android/hwcamera/MosaicFrameProcessor;->mTranslationLastX:F

    mul-float/2addr v4, v6

    iget v5, p0, Lcom/android/hwcamera/MosaicFrameProcessor;->mPreviewWidth:I

    int-to-float v5, v5

    div-float/2addr v4, v5

    iget v5, p0, Lcom/android/hwcamera/MosaicFrameProcessor;->mTranslationLastY:F

    mul-float/2addr v5, v6

    iget v6, p0, Lcom/android/hwcamera/MosaicFrameProcessor;->mPreviewHeight:I

    int-to-float v6, v6

    div-float/2addr v5, v6

    invoke-interface/range {v0 .. v5}, Lcom/android/hwcamera/MosaicFrameProcessor$ProgressListener;->onProgress(ZFFFF)V

    goto :goto_0

    .line 188
    :cond_2
    iget-object v0, p0, Lcom/android/hwcamera/MosaicFrameProcessor;->mProgressListener:Lcom/android/hwcamera/MosaicFrameProcessor$ProgressListener;

    if-eqz v0, :cond_0

    .line 189
    iget-object v0, p0, Lcom/android/hwcamera/MosaicFrameProcessor;->mProgressListener:Lcom/android/hwcamera/MosaicFrameProcessor$ProgressListener;

    const/4 v1, 0x1

    iget v2, p0, Lcom/android/hwcamera/MosaicFrameProcessor;->mPanningRateX:F

    iget v3, p0, Lcom/android/hwcamera/MosaicFrameProcessor;->mPanningRateY:F

    iget v4, p0, Lcom/android/hwcamera/MosaicFrameProcessor;->mTranslationLastX:F

    mul-float/2addr v4, v6

    iget v5, p0, Lcom/android/hwcamera/MosaicFrameProcessor;->mPreviewWidth:I

    int-to-float v5, v5

    div-float/2addr v4, v5

    iget v5, p0, Lcom/android/hwcamera/MosaicFrameProcessor;->mTranslationLastY:F

    mul-float/2addr v5, v6

    iget v6, p0, Lcom/android/hwcamera/MosaicFrameProcessor;->mPreviewHeight:I

    int-to-float v6, v6

    div-float/2addr v5, v6

    invoke-interface/range {v0 .. v5}, Lcom/android/hwcamera/MosaicFrameProcessor$ProgressListener;->onProgress(ZFFFF)V

    goto :goto_0
.end method

.method public reportProgress(ZZ)I
    .locals 1
    .parameter "hires"
    .parameter "cancel"

    .prologue
    .line 88
    iget-object v0, p0, Lcom/android/hwcamera/MosaicFrameProcessor;->mMosaicer:Lcom/android/hwcamera/Mosaic;

    invoke-virtual {v0, p1, p2}, Lcom/android/hwcamera/Mosaic;->reportProgress(ZZ)I

    move-result v0

    return v0
.end method

.method public reset()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v3, -0x1

    const/4 v2, 0x0

    .line 129
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/hwcamera/MosaicFrameProcessor;->mFirstRun:Z

    .line 130
    iput v4, p0, Lcom/android/hwcamera/MosaicFrameProcessor;->mTotalFrameCount:I

    .line 131
    iput v4, p0, Lcom/android/hwcamera/MosaicFrameProcessor;->mFillIn:I

    .line 132
    iput v2, p0, Lcom/android/hwcamera/MosaicFrameProcessor;->mTotalTranslationX:F

    .line 133
    iput v2, p0, Lcom/android/hwcamera/MosaicFrameProcessor;->mTranslationLastX:F

    .line 134
    iput v2, p0, Lcom/android/hwcamera/MosaicFrameProcessor;->mTotalTranslationY:F

    .line 135
    iput v2, p0, Lcom/android/hwcamera/MosaicFrameProcessor;->mTranslationLastY:F

    .line 136
    iput v2, p0, Lcom/android/hwcamera/MosaicFrameProcessor;->mPanningRateX:F

    .line 137
    iput v2, p0, Lcom/android/hwcamera/MosaicFrameProcessor;->mPanningRateY:F

    .line 138
    iput v3, p0, Lcom/android/hwcamera/MosaicFrameProcessor;->mLastProcessFrameIdx:I

    .line 139
    iput v3, p0, Lcom/android/hwcamera/MosaicFrameProcessor;->mCurrProcessFrameIdx:I

    .line 140
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    const/4 v1, 0x3

    if-ge v0, v1, :cond_0

    .line 141
    iget-object v1, p0, Lcom/android/hwcamera/MosaicFrameProcessor;->mDeltaX:[F

    aput v2, v1, v0

    .line 142
    iget-object v1, p0, Lcom/android/hwcamera/MosaicFrameProcessor;->mDeltaY:[F

    aput v2, v1, v0

    .line 140
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 144
    :cond_0
    iget-object v1, p0, Lcom/android/hwcamera/MosaicFrameProcessor;->mMosaicer:Lcom/android/hwcamera/Mosaic;

    invoke-virtual {v1}, Lcom/android/hwcamera/Mosaic;->reset()V

    .line 145
    return-void
.end method

.method public setProgressListener(Lcom/android/hwcamera/MosaicFrameProcessor$ProgressListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 84
    iput-object p1, p0, Lcom/android/hwcamera/MosaicFrameProcessor;->mProgressListener:Lcom/android/hwcamera/MosaicFrameProcessor$ProgressListener;

    .line 85
    return-void
.end method

.method public setStripType(I)V
    .locals 1
    .parameter "type"

    .prologue
    .line 115
    iget-object v0, p0, Lcom/android/hwcamera/MosaicFrameProcessor;->mMosaicer:Lcom/android/hwcamera/Mosaic;

    invoke-virtual {v0, p1}, Lcom/android/hwcamera/Mosaic;->setStripType(I)V

    .line 116
    return-void
.end method
