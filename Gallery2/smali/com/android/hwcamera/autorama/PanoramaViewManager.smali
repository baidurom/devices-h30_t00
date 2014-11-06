.class public Lcom/android/hwcamera/autorama/PanoramaViewManager;
.super Ljava/lang/Object;
.source "PanoramaViewManager.java"


# static fields
.field static final ANIMATION:Z = true

.field public static final CAPTURE_STATE:I = 0x1

.field private static final DIRECTION_DOWN:I = 0x3

.field private static final DIRECTION_LEFT:I = 0x1

.field private static final DIRECTION_RIGHT:I = 0x0

.field private static final DIRECTION_UNKNOWN:I = 0x4

.field private static final DIRECTION_UP:I = 0x2

.field public static final IDLE_STATE:I = 0x0

.field public static final MAV_VIEW:I = 0x1

.field public static final PANORAMA_VIEW:I = 0x0

.field public static final PREVEIW_STATE:I = 0x2

.field private static final TAG:Ljava/lang/String; = "PanoramaViewManager"

.field private static final TARGET_DISTANCE_HORIZONTAL:I = 0xa0

.field private static final TARGET_DISTANCE_VERTICAL:I = 0x78

.field private static mCurrentState:I


# instance fields
.field private mAnimation:Lcom/android/hwcamera/autorama/AnimationController;

.field private mAutoramaHint:Landroid/widget/TextView;

.field private mCenterIndicator:Landroid/view/ViewGroup;

.field private mCollimatedArrowsDrawable:Landroid/view/ViewGroup;

.field private mContext:Lcom/android/hwcamera/CameraActivity;

.field private mDirectionSigns:[Landroid/view/ViewGroup;

.field private mDisplayMatrix:Landroid/graphics/Matrix;

.field private mDisplayOrientaion:I

.field private mHalfArrowHeight:I

.field private mHalfArrowLength:I

.field private mNaviLine:Lcom/android/hwcamera/autorama/ui/NaviLineImageView;

.field private mNeedInitialize:Z

.field private mPanoView:Landroid/view/View;

.field private mPhotoModule:Lcom/android/hwcamera/PhotoModule;

.field private mPreviewHeight:I

.field private mPreviewWidth:I

.field private mProgressIndicator:Lcom/android/hwcamera/autorama/ui/ProgressIndicator;

.field private mRootView:Landroid/view/View;

.field private mRotateProgress:Lcom/android/hwcamera/autorama/ui/RotateProgress;

.field private mSensorDirection:I

.field private mSensorMatrix:[Landroid/graphics/Matrix;

.field private mShutterButton:Lcom/android/hwcamera/ShutterButton;

.field private mViewCategory:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 77
    const/4 v0, 0x0

    sput v0, Lcom/android/hwcamera/autorama/PanoramaViewManager;->mCurrentState:I

    return-void
.end method

.method public constructor <init>(Lcom/android/hwcamera/PhotoModule;Lcom/android/hwcamera/CameraActivity;I)V
    .locals 3
    .parameter "photoModule"
    .parameter "context"
    .parameter "viewCategory"

    .prologue
    const/4 v2, 0x4

    const/4 v1, 0x0

    .line 85
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 36
    new-array v0, v2, [Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/android/hwcamera/autorama/PanoramaViewManager;->mDirectionSigns:[Landroid/view/ViewGroup;

    .line 47
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/android/hwcamera/autorama/PanoramaViewManager;->mDisplayMatrix:Landroid/graphics/Matrix;

    .line 56
    iput v2, p0, Lcom/android/hwcamera/autorama/PanoramaViewManager;->mSensorDirection:I

    .line 64
    iput v1, p0, Lcom/android/hwcamera/autorama/PanoramaViewManager;->mHalfArrowHeight:I

    .line 65
    iput v1, p0, Lcom/android/hwcamera/autorama/PanoramaViewManager;->mHalfArrowLength:I

    .line 67
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/hwcamera/autorama/PanoramaViewManager;->mNeedInitialize:Z

    .line 86
    iput-object p2, p0, Lcom/android/hwcamera/autorama/PanoramaViewManager;->mContext:Lcom/android/hwcamera/CameraActivity;

    .line 87
    iput-object p1, p0, Lcom/android/hwcamera/autorama/PanoramaViewManager;->mPhotoModule:Lcom/android/hwcamera/PhotoModule;

    .line 88
    iput p3, p0, Lcom/android/hwcamera/autorama/PanoramaViewManager;->mViewCategory:I

    .line 91
    iget-object v0, p0, Lcom/android/hwcamera/autorama/PanoramaViewManager;->mContext:Lcom/android/hwcamera/CameraActivity;

    const v1, 0x7f10002d

    invoke-virtual {v0, v1}, Lcom/android/hwcamera/CameraActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/hwcamera/ShutterButton;

    iput-object v0, p0, Lcom/android/hwcamera/autorama/PanoramaViewManager;->mShutterButton:Lcom/android/hwcamera/ShutterButton;

    .line 92
    return-void
.end method

.method private getArrowHL()V
    .locals 3

    .prologue
    .line 349
    iget v2, p0, Lcom/android/hwcamera/autorama/PanoramaViewManager;->mHalfArrowHeight:I

    if-nez v2, :cond_0

    .line 350
    iget-object v2, p0, Lcom/android/hwcamera/autorama/PanoramaViewManager;->mNaviLine:Lcom/android/hwcamera/autorama/ui/NaviLineImageView;

    invoke-virtual {v2}, Lcom/android/hwcamera/autorama/ui/NaviLineImageView;->getWidth()I

    move-result v1

    .line 351
    .local v1, naviWidth:I
    iget-object v2, p0, Lcom/android/hwcamera/autorama/PanoramaViewManager;->mNaviLine:Lcom/android/hwcamera/autorama/ui/NaviLineImageView;

    invoke-virtual {v2}, Lcom/android/hwcamera/autorama/ui/NaviLineImageView;->getHeight()I

    move-result v0

    .line 352
    .local v0, naviHeight:I
    if-le v1, v0, :cond_1

    .line 353
    shr-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/android/hwcamera/autorama/PanoramaViewManager;->mHalfArrowLength:I

    .line 354
    shr-int/lit8 v2, v0, 0x1

    iput v2, p0, Lcom/android/hwcamera/autorama/PanoramaViewManager;->mHalfArrowHeight:I

    .line 360
    .end local v0           #naviHeight:I
    .end local v1           #naviWidth:I
    :cond_0
    :goto_0
    return-void

    .line 356
    .restart local v0       #naviHeight:I
    .restart local v1       #naviWidth:I
    :cond_1
    shr-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/android/hwcamera/autorama/PanoramaViewManager;->mHalfArrowHeight:I

    .line 357
    shr-int/lit8 v2, v0, 0x1

    iput v2, p0, Lcom/android/hwcamera/autorama/PanoramaViewManager;->mHalfArrowLength:I

    goto :goto_0
.end method

.method private initializeViewManager()V
    .locals 9

    .prologue
    const/16 v8, 0x8

    const/4 v7, 0x2

    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 130
    const-string v1, "PanoramaViewManager"

    const-string v2, "initializeViewManager is called"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 131
    iget-object v1, p0, Lcom/android/hwcamera/autorama/PanoramaViewManager;->mContext:Lcom/android/hwcamera/CameraActivity;

    const v2, 0x7f100140

    invoke-virtual {v1, v2}, Lcom/android/hwcamera/CameraActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/hwcamera/autorama/PanoramaViewManager;->mRootView:Landroid/view/View;

    .line 132
    iget-object v1, p0, Lcom/android/hwcamera/autorama/PanoramaViewManager;->mRootView:Landroid/view/View;

    const v2, 0x7f100142

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/hwcamera/autorama/PanoramaViewManager;->mPanoView:Landroid/view/View;

    .line 135
    iget-object v1, p0, Lcom/android/hwcamera/autorama/PanoramaViewManager;->mRootView:Landroid/view/View;

    const v2, 0x7f100143

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    iput-object v1, p0, Lcom/android/hwcamera/autorama/PanoramaViewManager;->mCenterIndicator:Landroid/view/ViewGroup;

    .line 136
    iget-object v2, p0, Lcom/android/hwcamera/autorama/PanoramaViewManager;->mDirectionSigns:[Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/android/hwcamera/autorama/PanoramaViewManager;->mRootView:Landroid/view/View;

    const v3, 0x7f100156

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    aput-object v1, v2, v6

    .line 137
    iget-object v2, p0, Lcom/android/hwcamera/autorama/PanoramaViewManager;->mDirectionSigns:[Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/android/hwcamera/autorama/PanoramaViewManager;->mRootView:Landroid/view/View;

    const v3, 0x7f100151

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    aput-object v1, v2, v5

    .line 138
    iget-object v2, p0, Lcom/android/hwcamera/autorama/PanoramaViewManager;->mDirectionSigns:[Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/android/hwcamera/autorama/PanoramaViewManager;->mRootView:Landroid/view/View;

    const v3, 0x7f10015b

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    aput-object v1, v2, v7

    .line 139
    iget-object v2, p0, Lcom/android/hwcamera/autorama/PanoramaViewManager;->mDirectionSigns:[Landroid/view/ViewGroup;

    const/4 v3, 0x3

    iget-object v1, p0, Lcom/android/hwcamera/autorama/PanoramaViewManager;->mRootView:Landroid/view/View;

    const v4, 0x7f10015e

    invoke-virtual {v1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    aput-object v1, v2, v3

    .line 140
    new-instance v2, Lcom/android/hwcamera/autorama/AnimationController;

    iget-object v3, p0, Lcom/android/hwcamera/autorama/PanoramaViewManager;->mDirectionSigns:[Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/android/hwcamera/autorama/PanoramaViewManager;->mCenterIndicator:Landroid/view/ViewGroup;

    invoke-virtual {v1, v6}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    invoke-direct {v2, v3, v1}, Lcom/android/hwcamera/autorama/AnimationController;-><init>([Landroid/view/ViewGroup;Landroid/view/ViewGroup;)V

    iput-object v2, p0, Lcom/android/hwcamera/autorama/PanoramaViewManager;->mAnimation:Lcom/android/hwcamera/autorama/AnimationController;

    .line 142
    iget v1, p0, Lcom/android/hwcamera/autorama/PanoramaViewManager;->mViewCategory:I

    if-nez v1, :cond_1

    .line 143
    iget-object v1, p0, Lcom/android/hwcamera/autorama/PanoramaViewManager;->mRootView:Landroid/view/View;

    const v2, 0x7f100163

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/hwcamera/autorama/ui/NaviLineImageView;

    iput-object v1, p0, Lcom/android/hwcamera/autorama/PanoramaViewManager;->mNaviLine:Lcom/android/hwcamera/autorama/ui/NaviLineImageView;

    .line 144
    iget-object v1, p0, Lcom/android/hwcamera/autorama/PanoramaViewManager;->mRootView:Landroid/view/View;

    const v2, 0x7f100150

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    iput-object v1, p0, Lcom/android/hwcamera/autorama/PanoramaViewManager;->mCollimatedArrowsDrawable:Landroid/view/ViewGroup;

    .line 146
    iget-object v1, p0, Lcom/android/hwcamera/autorama/PanoramaViewManager;->mRootView:Landroid/view/View;

    const v2, 0x7f1001ee

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/hwcamera/autorama/PanoramaViewManager;->mAutoramaHint:Landroid/widget/TextView;

    .line 147
    iget-object v1, p0, Lcom/android/hwcamera/autorama/PanoramaViewManager;->mAutoramaHint:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/android/hwcamera/autorama/PanoramaViewManager;->mContext:Lcom/android/hwcamera/CameraActivity;

    const v3, 0x7f0d01a3

    invoke-virtual {v2, v3}, Lcom/android/hwcamera/CameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 149
    new-instance v1, Lcom/android/hwcamera/autorama/ui/ProgressIndicator;

    iget-object v2, p0, Lcom/android/hwcamera/autorama/PanoramaViewManager;->mContext:Lcom/android/hwcamera/CameraActivity;

    iget-object v3, p0, Lcom/android/hwcamera/autorama/PanoramaViewManager;->mPhotoModule:Lcom/android/hwcamera/PhotoModule;

    invoke-virtual {v3}, Lcom/android/hwcamera/PhotoModule;->getCameraId()I

    move-result v3

    invoke-direct {v1, v2, v7, v3}, Lcom/android/hwcamera/autorama/ui/ProgressIndicator;-><init>(Landroid/app/Activity;II)V

    iput-object v1, p0, Lcom/android/hwcamera/autorama/PanoramaViewManager;->mProgressIndicator:Lcom/android/hwcamera/autorama/ui/ProgressIndicator;

    .line 151
    iget-object v1, p0, Lcom/android/hwcamera/autorama/PanoramaViewManager;->mProgressIndicator:Lcom/android/hwcamera/autorama/ui/ProgressIndicator;

    invoke-virtual {v1, v8}, Lcom/android/hwcamera/autorama/ui/ProgressIndicator;->setVisibility(I)V

    .line 152
    const-string v1, "PanoramaViewManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mProgressIndicator getOrientation"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/android/hwcamera/autorama/PanoramaViewManager;->getOrientation()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 153
    iget-object v1, p0, Lcom/android/hwcamera/autorama/PanoramaViewManager;->mProgressIndicator:Lcom/android/hwcamera/autorama/ui/ProgressIndicator;

    invoke-virtual {p0}, Lcom/android/hwcamera/autorama/PanoramaViewManager;->getOrientation()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/hwcamera/autorama/ui/ProgressIndicator;->setOrientation(I)V

    .line 155
    invoke-direct {p0}, Lcom/android/hwcamera/autorama/PanoramaViewManager;->prepareSensorMatrix()V

    .line 166
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/android/hwcamera/autorama/PanoramaViewManager;->mPhotoModule:Lcom/android/hwcamera/PhotoModule;

    invoke-virtual {v1}, Lcom/android/hwcamera/PhotoModule;->getDisplayOrientation()I

    move-result v1

    iput v1, p0, Lcom/android/hwcamera/autorama/PanoramaViewManager;->mDisplayOrientaion:I

    .line 168
    iget-object v1, p0, Lcom/android/hwcamera/autorama/PanoramaViewManager;->mContext:Lcom/android/hwcamera/CameraActivity;

    invoke-virtual {v1}, Lcom/android/hwcamera/CameraActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 169
    .local v0, metrics:Landroid/util/DisplayMetrics;
    iget v1, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    iget v2, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    iput v1, p0, Lcom/android/hwcamera/autorama/PanoramaViewManager;->mPreviewWidth:I

    .line 170
    iget v1, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    iget v2, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    iput v1, p0, Lcom/android/hwcamera/autorama/PanoramaViewManager;->mPreviewHeight:I

    .line 174
    return-void

    .line 156
    .end local v0           #metrics:Landroid/util/DisplayMetrics;
    :cond_1
    iget v1, p0, Lcom/android/hwcamera/autorama/PanoramaViewManager;->mViewCategory:I

    if-ne v1, v5, :cond_0

    .line 158
    new-instance v1, Lcom/android/hwcamera/autorama/ui/ProgressIndicator;

    iget-object v2, p0, Lcom/android/hwcamera/autorama/PanoramaViewManager;->mContext:Lcom/android/hwcamera/CameraActivity;

    iget-object v3, p0, Lcom/android/hwcamera/autorama/PanoramaViewManager;->mPhotoModule:Lcom/android/hwcamera/PhotoModule;

    invoke-virtual {v3}, Lcom/android/hwcamera/PhotoModule;->getCameraId()I

    move-result v3

    invoke-direct {v1, v2, v5, v3}, Lcom/android/hwcamera/autorama/ui/ProgressIndicator;-><init>(Landroid/app/Activity;II)V

    iput-object v1, p0, Lcom/android/hwcamera/autorama/PanoramaViewManager;->mProgressIndicator:Lcom/android/hwcamera/autorama/ui/ProgressIndicator;

    .line 160
    iget-object v1, p0, Lcom/android/hwcamera/autorama/PanoramaViewManager;->mProgressIndicator:Lcom/android/hwcamera/autorama/ui/ProgressIndicator;

    invoke-virtual {v1, v8}, Lcom/android/hwcamera/autorama/ui/ProgressIndicator;->setVisibility(I)V

    .line 161
    iget-object v1, p0, Lcom/android/hwcamera/autorama/PanoramaViewManager;->mProgressIndicator:Lcom/android/hwcamera/autorama/ui/ProgressIndicator;

    invoke-virtual {p0}, Lcom/android/hwcamera/autorama/PanoramaViewManager;->getOrientation()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/hwcamera/autorama/ui/ProgressIndicator;->setOrientation(I)V

    .line 162
    new-instance v1, Lcom/android/hwcamera/autorama/ui/RotateProgress;

    iget-object v2, p0, Lcom/android/hwcamera/autorama/PanoramaViewManager;->mContext:Lcom/android/hwcamera/CameraActivity;

    invoke-direct {v1, v2}, Lcom/android/hwcamera/autorama/ui/RotateProgress;-><init>(Lcom/android/hwcamera/CameraActivity;)V

    iput-object v1, p0, Lcom/android/hwcamera/autorama/PanoramaViewManager;->mRotateProgress:Lcom/android/hwcamera/autorama/ui/RotateProgress;

    .line 163
    iget-object v1, p0, Lcom/android/hwcamera/autorama/PanoramaViewManager;->mRotateProgress:Lcom/android/hwcamera/autorama/ui/RotateProgress;

    invoke-virtual {v1}, Lcom/android/hwcamera/autorama/ui/RotateProgress;->initView()V

    goto :goto_0
.end method

.method public static isOnPanoramaCapture()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 119
    sget v1, Lcom/android/hwcamera/autorama/PanoramaViewManager;->mCurrentState:I

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isOnPanoramaIdle()Z
    .locals 1

    .prologue
    .line 126
    sget v0, Lcom/android/hwcamera/autorama/PanoramaViewManager;->mCurrentState:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isOnPanoramaPreview()Z
    .locals 2

    .prologue
    .line 123
    sget v0, Lcom/android/hwcamera/autorama/PanoramaViewManager;->mCurrentState:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private prepareSensorMatrix()V
    .locals 7

    .prologue
    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v2, 0x1

    const/4 v4, 0x0

    const/high16 v3, -0x4080

    .line 291
    const/4 v0, 0x4

    new-array v0, v0, [Landroid/graphics/Matrix;

    iput-object v0, p0, Lcom/android/hwcamera/autorama/PanoramaViewManager;->mSensorMatrix:[Landroid/graphics/Matrix;

    .line 293
    iget-object v0, p0, Lcom/android/hwcamera/autorama/PanoramaViewManager;->mSensorMatrix:[Landroid/graphics/Matrix;

    new-instance v1, Landroid/graphics/Matrix;

    invoke-direct {v1}, Landroid/graphics/Matrix;-><init>()V

    aput-object v1, v0, v2

    .line 294
    iget-object v0, p0, Lcom/android/hwcamera/autorama/PanoramaViewManager;->mSensorMatrix:[Landroid/graphics/Matrix;

    aget-object v0, v0, v2

    invoke-virtual {v0, v3, v3}, Landroid/graphics/Matrix;->setScale(FF)V

    .line 295
    iget-object v0, p0, Lcom/android/hwcamera/autorama/PanoramaViewManager;->mSensorMatrix:[Landroid/graphics/Matrix;

    aget-object v0, v0, v2

    const/4 v1, 0x0

    const/high16 v2, 0x42f0

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 297
    iget-object v0, p0, Lcom/android/hwcamera/autorama/PanoramaViewManager;->mSensorMatrix:[Landroid/graphics/Matrix;

    new-instance v1, Landroid/graphics/Matrix;

    invoke-direct {v1}, Landroid/graphics/Matrix;-><init>()V

    aput-object v1, v0, v4

    .line 298
    iget-object v0, p0, Lcom/android/hwcamera/autorama/PanoramaViewManager;->mSensorMatrix:[Landroid/graphics/Matrix;

    aget-object v0, v0, v4

    invoke-virtual {v0, v3, v3}, Landroid/graphics/Matrix;->setScale(FF)V

    .line 299
    iget-object v0, p0, Lcom/android/hwcamera/autorama/PanoramaViewManager;->mSensorMatrix:[Landroid/graphics/Matrix;

    aget-object v0, v0, v4

    const/high16 v1, 0x43a0

    const/high16 v2, 0x42f0

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 301
    iget-object v0, p0, Lcom/android/hwcamera/autorama/PanoramaViewManager;->mSensorMatrix:[Landroid/graphics/Matrix;

    new-instance v1, Landroid/graphics/Matrix;

    invoke-direct {v1}, Landroid/graphics/Matrix;-><init>()V

    aput-object v1, v0, v5

    .line 302
    iget-object v0, p0, Lcom/android/hwcamera/autorama/PanoramaViewManager;->mSensorMatrix:[Landroid/graphics/Matrix;

    aget-object v0, v0, v5

    invoke-virtual {v0, v3, v3}, Landroid/graphics/Matrix;->setScale(FF)V

    .line 303
    iget-object v0, p0, Lcom/android/hwcamera/autorama/PanoramaViewManager;->mSensorMatrix:[Landroid/graphics/Matrix;

    aget-object v0, v0, v5

    const/high16 v1, 0x4320

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 305
    iget-object v0, p0, Lcom/android/hwcamera/autorama/PanoramaViewManager;->mSensorMatrix:[Landroid/graphics/Matrix;

    new-instance v1, Landroid/graphics/Matrix;

    invoke-direct {v1}, Landroid/graphics/Matrix;-><init>()V

    aput-object v1, v0, v6

    .line 306
    iget-object v0, p0, Lcom/android/hwcamera/autorama/PanoramaViewManager;->mSensorMatrix:[Landroid/graphics/Matrix;

    aget-object v0, v0, v6

    invoke-virtual {v0, v3, v3}, Landroid/graphics/Matrix;->setScale(FF)V

    .line 307
    iget-object v0, p0, Lcom/android/hwcamera/autorama/PanoramaViewManager;->mSensorMatrix:[Landroid/graphics/Matrix;

    aget-object v0, v0, v6

    const/high16 v1, 0x4320

    const/high16 v2, 0x4370

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 308
    return-void
.end method

.method private prepareTransformMatrix(I)V
    .locals 9
    .parameter "direction"

    .prologue
    const/4 v8, 0x0

    const/high16 v7, 0x4000

    .line 311
    iget-object v4, p0, Lcom/android/hwcamera/autorama/PanoramaViewManager;->mDisplayMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v4}, Landroid/graphics/Matrix;->reset()V

    .line 312
    const-string v4, "PanoramaViewManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "prepareTransformMatrix mPreviewWidth is "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/android/hwcamera/autorama/PanoramaViewManager;->mPreviewWidth:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 313
    const-string v4, "PanoramaViewManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "prepareTransformMatrix mPreviewHeight is "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/android/hwcamera/autorama/PanoramaViewManager;->mPreviewHeight:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 314
    iget v4, p0, Lcom/android/hwcamera/autorama/PanoramaViewManager;->mPreviewWidth:I

    shr-int/lit8 v1, v4, 0x1

    .line 315
    .local v1, halfPrewWidth:I
    iget v4, p0, Lcom/android/hwcamera/autorama/PanoramaViewManager;->mPreviewHeight:I

    shr-int/lit8 v0, v4, 0x1

    .line 318
    .local v0, halfPrewHeight:I
    invoke-direct {p0}, Lcom/android/hwcamera/autorama/PanoramaViewManager;->getArrowHL()V

    .line 323
    int-to-float v4, v1

    iget v5, p0, Lcom/android/hwcamera/autorama/PanoramaViewManager;->mHalfArrowLength:I

    int-to-float v5, v5

    sub-float v3, v4, v5

    .line 324
    .local v3, halfViewWidth:F
    int-to-float v4, v0

    iget v5, p0, Lcom/android/hwcamera/autorama/PanoramaViewManager;->mHalfArrowLength:I

    int-to-float v5, v5

    sub-float v2, v4, v5

    .line 326
    .local v2, halfViewHeight:F
    iget-object v4, p0, Lcom/android/hwcamera/autorama/PanoramaViewManager;->mDisplayMatrix:Landroid/graphics/Matrix;

    const/high16 v5, 0x4320

    div-float v5, v3, v5

    const/high16 v6, 0x42f0

    div-float v6, v2, v6

    invoke-virtual {v4, v5, v6}, Landroid/graphics/Matrix;->postScale(FF)Z

    .line 327
    iget v4, p0, Lcom/android/hwcamera/autorama/PanoramaViewManager;->mDisplayOrientaion:I

    sparse-switch v4, :sswitch_data_0

    .line 345
    :goto_0
    :sswitch_0
    iget-object v4, p0, Lcom/android/hwcamera/autorama/PanoramaViewManager;->mDisplayMatrix:Landroid/graphics/Matrix;

    iget v5, p0, Lcom/android/hwcamera/autorama/PanoramaViewManager;->mHalfArrowLength:I

    int-to-float v5, v5

    iget v6, p0, Lcom/android/hwcamera/autorama/PanoramaViewManager;->mHalfArrowLength:I

    int-to-float v6, v6

    invoke-virtual {v4, v5, v6}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 346
    return-void

    .line 331
    :sswitch_1
    iget-object v4, p0, Lcom/android/hwcamera/autorama/PanoramaViewManager;->mDisplayMatrix:Landroid/graphics/Matrix;

    neg-float v5, v2

    mul-float/2addr v5, v7

    invoke-virtual {v4, v8, v5}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 332
    iget-object v4, p0, Lcom/android/hwcamera/autorama/PanoramaViewManager;->mDisplayMatrix:Landroid/graphics/Matrix;

    const/high16 v5, 0x42b4

    invoke-virtual {v4, v5}, Landroid/graphics/Matrix;->postRotate(F)Z

    goto :goto_0

    .line 335
    :sswitch_2
    iget-object v4, p0, Lcom/android/hwcamera/autorama/PanoramaViewManager;->mDisplayMatrix:Landroid/graphics/Matrix;

    neg-float v5, v3

    mul-float/2addr v5, v7

    neg-float v6, v2

    mul-float/2addr v6, v7

    invoke-virtual {v4, v5, v6}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 336
    iget-object v4, p0, Lcom/android/hwcamera/autorama/PanoramaViewManager;->mDisplayMatrix:Landroid/graphics/Matrix;

    const/high16 v5, 0x4334

    invoke-virtual {v4, v5}, Landroid/graphics/Matrix;->postRotate(F)Z

    goto :goto_0

    .line 339
    :sswitch_3
    iget-object v4, p0, Lcom/android/hwcamera/autorama/PanoramaViewManager;->mDisplayMatrix:Landroid/graphics/Matrix;

    neg-float v5, v2

    mul-float/2addr v5, v7

    invoke-virtual {v4, v5, v8}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 340
    iget-object v4, p0, Lcom/android/hwcamera/autorama/PanoramaViewManager;->mDisplayMatrix:Landroid/graphics/Matrix;

    const/high16 v5, -0x3d4c

    invoke-virtual {v4, v5}, Landroid/graphics/Matrix;->postRotate(F)Z

    goto :goto_0

    .line 327
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x5a -> :sswitch_1
        0xb4 -> :sswitch_2
        0x10e -> :sswitch_3
    .end sparse-switch
.end method

.method public static setOrientationEx(Landroid/view/View;IZ)V
    .locals 5
    .parameter "view"
    .parameter "orientation"
    .parameter "animation"

    .prologue
    .line 191
    if-nez p0, :cond_1

    .line 202
    .end local p0
    :cond_0
    :goto_0
    return-void

    .line 192
    .restart local p0
    :cond_1
    instance-of v3, p0, Lcom/android/hwcamera/ui/Rotatable;

    if-eqz v3, :cond_2

    .line 193
    const-string v3, "PanoramaViewManager"

    const-string v4, "rotatable enter"

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 194
    check-cast p0, Lcom/android/hwcamera/ui/Rotatable;

    .end local p0
    const/4 v3, 0x1

    invoke-interface {p0, p1, v3}, Lcom/android/hwcamera/ui/Rotatable;->setOrientation(IZ)V

    goto :goto_0

    .line 195
    .restart local p0
    :cond_2
    instance-of v3, p0, Landroid/view/ViewGroup;

    if-eqz v3, :cond_0

    .line 196
    const-string v3, "PanoramaViewManager"

    const-string v4, "ViewGroup enter"

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    move-object v1, p0

    .line 197
    check-cast v1, Landroid/view/ViewGroup;

    .line 198
    .local v1, group:Landroid/view/ViewGroup;
    const/4 v2, 0x0

    .local v2, i:I
    invoke-virtual {v1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    .local v0, count:I
    :goto_1
    if-ge v2, v0, :cond_0

    .line 199
    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-static {v3, p1, p2}, Lcom/android/hwcamera/autorama/PanoramaViewManager;->setOrientationEx(Landroid/view/View;IZ)V

    .line 198
    add-int/lit8 v2, v2, 0x1

    goto :goto_1
.end method

.method private setOrientationIndicator(I)V
    .locals 6
    .parameter "direction"

    .prologue
    const/16 v5, 0x10e

    const/16 v4, 0xb4

    const/16 v3, 0x5a

    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 250
    iget-object v0, p0, Lcom/android/hwcamera/autorama/PanoramaViewManager;->mPhotoModule:Lcom/android/hwcamera/PhotoModule;

    invoke-virtual {v0}, Lcom/android/hwcamera/PhotoModule;->getCameraId()I

    move-result v0

    invoke-static {v0}, Lcom/android/hwcamera/Util;->isBackCamera(I)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 251
    if-nez p1, :cond_1

    .line 252
    iget-object v0, p0, Lcom/android/hwcamera/autorama/PanoramaViewManager;->mCollimatedArrowsDrawable:Landroid/view/ViewGroup;

    check-cast v0, Lcom/android/hwcamera/ui/Rotatable;

    invoke-interface {v0, v2, v1}, Lcom/android/hwcamera/ui/Rotatable;->setOrientation(IZ)V

    .line 253
    iget-object v0, p0, Lcom/android/hwcamera/autorama/PanoramaViewManager;->mCenterIndicator:Landroid/view/ViewGroup;

    check-cast v0, Lcom/android/hwcamera/ui/Rotatable;

    invoke-interface {v0, v2, v1}, Lcom/android/hwcamera/ui/Rotatable;->setOrientation(IZ)V

    .line 254
    iget-object v0, p0, Lcom/android/hwcamera/autorama/PanoramaViewManager;->mNaviLine:Lcom/android/hwcamera/autorama/ui/NaviLineImageView;

    const/high16 v1, -0x3d4c

    invoke-virtual {v0, v1}, Lcom/android/hwcamera/autorama/ui/NaviLineImageView;->setRotation(F)V

    .line 288
    :cond_0
    :goto_0
    return-void

    .line 255
    :cond_1
    if-ne p1, v1, :cond_2

    .line 256
    iget-object v0, p0, Lcom/android/hwcamera/autorama/PanoramaViewManager;->mCollimatedArrowsDrawable:Landroid/view/ViewGroup;

    check-cast v0, Lcom/android/hwcamera/ui/Rotatable;

    invoke-interface {v0, v4, v1}, Lcom/android/hwcamera/ui/Rotatable;->setOrientation(IZ)V

    .line 257
    iget-object v0, p0, Lcom/android/hwcamera/autorama/PanoramaViewManager;->mCenterIndicator:Landroid/view/ViewGroup;

    check-cast v0, Lcom/android/hwcamera/ui/Rotatable;

    invoke-interface {v0, v4, v1}, Lcom/android/hwcamera/ui/Rotatable;->setOrientation(IZ)V

    .line 258
    iget-object v0, p0, Lcom/android/hwcamera/autorama/PanoramaViewManager;->mNaviLine:Lcom/android/hwcamera/autorama/ui/NaviLineImageView;

    const/high16 v1, 0x42b4

    invoke-virtual {v0, v1}, Lcom/android/hwcamera/autorama/ui/NaviLineImageView;->setRotation(F)V

    goto :goto_0

    .line 259
    :cond_2
    const/4 v0, 0x2

    if-ne p1, v0, :cond_3

    .line 260
    iget-object v0, p0, Lcom/android/hwcamera/autorama/PanoramaViewManager;->mCollimatedArrowsDrawable:Landroid/view/ViewGroup;

    check-cast v0, Lcom/android/hwcamera/ui/Rotatable;

    invoke-interface {v0, v3, v1}, Lcom/android/hwcamera/ui/Rotatable;->setOrientation(IZ)V

    .line 261
    iget-object v0, p0, Lcom/android/hwcamera/autorama/PanoramaViewManager;->mCenterIndicator:Landroid/view/ViewGroup;

    check-cast v0, Lcom/android/hwcamera/ui/Rotatable;

    invoke-interface {v0, v3, v1}, Lcom/android/hwcamera/ui/Rotatable;->setOrientation(IZ)V

    .line 262
    iget-object v0, p0, Lcom/android/hwcamera/autorama/PanoramaViewManager;->mNaviLine:Lcom/android/hwcamera/autorama/ui/NaviLineImageView;

    const/high16 v1, 0x4334

    invoke-virtual {v0, v1}, Lcom/android/hwcamera/autorama/ui/NaviLineImageView;->setRotation(F)V

    goto :goto_0

    .line 263
    :cond_3
    const/4 v0, 0x3

    if-ne p1, v0, :cond_0

    .line 264
    iget-object v0, p0, Lcom/android/hwcamera/autorama/PanoramaViewManager;->mCollimatedArrowsDrawable:Landroid/view/ViewGroup;

    check-cast v0, Lcom/android/hwcamera/ui/Rotatable;

    invoke-interface {v0, v5, v1}, Lcom/android/hwcamera/ui/Rotatable;->setOrientation(IZ)V

    .line 265
    iget-object v0, p0, Lcom/android/hwcamera/autorama/PanoramaViewManager;->mCenterIndicator:Landroid/view/ViewGroup;

    check-cast v0, Lcom/android/hwcamera/ui/Rotatable;

    invoke-interface {v0, v5, v1}, Lcom/android/hwcamera/ui/Rotatable;->setOrientation(IZ)V

    .line 266
    iget-object v0, p0, Lcom/android/hwcamera/autorama/PanoramaViewManager;->mNaviLine:Lcom/android/hwcamera/autorama/ui/NaviLineImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/hwcamera/autorama/ui/NaviLineImageView;->setRotation(F)V

    goto :goto_0

    .line 269
    :cond_4
    if-nez p1, :cond_5

    .line 270
    iget-object v0, p0, Lcom/android/hwcamera/autorama/PanoramaViewManager;->mCollimatedArrowsDrawable:Landroid/view/ViewGroup;

    check-cast v0, Lcom/android/hwcamera/ui/Rotatable;

    invoke-interface {v0, v2, v1}, Lcom/android/hwcamera/ui/Rotatable;->setOrientation(IZ)V

    .line 271
    iget-object v0, p0, Lcom/android/hwcamera/autorama/PanoramaViewManager;->mCenterIndicator:Landroid/view/ViewGroup;

    check-cast v0, Lcom/android/hwcamera/ui/Rotatable;

    invoke-interface {v0, v2, v1}, Lcom/android/hwcamera/ui/Rotatable;->setOrientation(IZ)V

    .line 272
    iget-object v0, p0, Lcom/android/hwcamera/autorama/PanoramaViewManager;->mNaviLine:Lcom/android/hwcamera/autorama/ui/NaviLineImageView;

    const/high16 v1, -0x3d4c

    invoke-virtual {v0, v1}, Lcom/android/hwcamera/autorama/ui/NaviLineImageView;->setRotation(F)V

    goto :goto_0

    .line 273
    :cond_5
    if-ne p1, v1, :cond_6

    .line 274
    iget-object v0, p0, Lcom/android/hwcamera/autorama/PanoramaViewManager;->mCollimatedArrowsDrawable:Landroid/view/ViewGroup;

    check-cast v0, Lcom/android/hwcamera/ui/Rotatable;

    invoke-interface {v0, v4, v1}, Lcom/android/hwcamera/ui/Rotatable;->setOrientation(IZ)V

    .line 275
    iget-object v0, p0, Lcom/android/hwcamera/autorama/PanoramaViewManager;->mCenterIndicator:Landroid/view/ViewGroup;

    check-cast v0, Lcom/android/hwcamera/ui/Rotatable;

    invoke-interface {v0, v4, v1}, Lcom/android/hwcamera/ui/Rotatable;->setOrientation(IZ)V

    .line 276
    iget-object v0, p0, Lcom/android/hwcamera/autorama/PanoramaViewManager;->mNaviLine:Lcom/android/hwcamera/autorama/ui/NaviLineImageView;

    const/high16 v1, 0x42b4

    invoke-virtual {v0, v1}, Lcom/android/hwcamera/autorama/ui/NaviLineImageView;->setRotation(F)V

    goto :goto_0

    .line 277
    :cond_6
    const/4 v0, 0x3

    if-ne p1, v0, :cond_7

    .line 278
    iget-object v0, p0, Lcom/android/hwcamera/autorama/PanoramaViewManager;->mCollimatedArrowsDrawable:Landroid/view/ViewGroup;

    check-cast v0, Lcom/android/hwcamera/ui/Rotatable;

    invoke-interface {v0, v3, v1}, Lcom/android/hwcamera/ui/Rotatable;->setOrientation(IZ)V

    .line 279
    iget-object v0, p0, Lcom/android/hwcamera/autorama/PanoramaViewManager;->mCenterIndicator:Landroid/view/ViewGroup;

    check-cast v0, Lcom/android/hwcamera/ui/Rotatable;

    invoke-interface {v0, v3, v1}, Lcom/android/hwcamera/ui/Rotatable;->setOrientation(IZ)V

    .line 280
    iget-object v0, p0, Lcom/android/hwcamera/autorama/PanoramaViewManager;->mNaviLine:Lcom/android/hwcamera/autorama/ui/NaviLineImageView;

    const/high16 v1, 0x4334

    invoke-virtual {v0, v1}, Lcom/android/hwcamera/autorama/ui/NaviLineImageView;->setRotation(F)V

    goto/16 :goto_0

    .line 281
    :cond_7
    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    .line 282
    iget-object v0, p0, Lcom/android/hwcamera/autorama/PanoramaViewManager;->mCollimatedArrowsDrawable:Landroid/view/ViewGroup;

    check-cast v0, Lcom/android/hwcamera/ui/Rotatable;

    invoke-interface {v0, v5, v1}, Lcom/android/hwcamera/ui/Rotatable;->setOrientation(IZ)V

    .line 283
    iget-object v0, p0, Lcom/android/hwcamera/autorama/PanoramaViewManager;->mCenterIndicator:Landroid/view/ViewGroup;

    check-cast v0, Lcom/android/hwcamera/ui/Rotatable;

    invoke-interface {v0, v5, v1}, Lcom/android/hwcamera/ui/Rotatable;->setOrientation(IZ)V

    .line 284
    iget-object v0, p0, Lcom/android/hwcamera/autorama/PanoramaViewManager;->mNaviLine:Lcom/android/hwcamera/autorama/ui/NaviLineImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/hwcamera/autorama/ui/NaviLineImageView;->setRotation(F)V

    goto/16 :goto_0
.end method

.method public static setPanoramaState(I)V
    .locals 0
    .parameter "state"

    .prologue
    .line 116
    sput p0, Lcom/android/hwcamera/autorama/PanoramaViewManager;->mCurrentState:I

    .line 117
    return-void
.end method

.method private updateDirection(I)V
    .locals 5
    .parameter "direction"

    .prologue
    const/4 v4, 0x4

    .line 224
    iget v1, p0, Lcom/android/hwcamera/autorama/PanoramaViewManager;->mDisplayOrientaion:I

    const/16 v2, 0x5a

    if-ne v1, v2, :cond_1

    .line 226
    const/4 v1, 0x1

    if-eq p1, v1, :cond_0

    if-nez p1, :cond_2

    .line 227
    :cond_0
    rsub-int/lit8 p1, p1, 0x3

    .line 232
    :cond_1
    :goto_0
    const-string v1, "PanoramaViewManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "updateDirection mDirection: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/hwcamera/autorama/PanoramaViewManager;->mSensorDirection:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " direction: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 233
    iget v1, p0, Lcom/android/hwcamera/autorama/PanoramaViewManager;->mSensorDirection:I

    if-eq v1, p1, :cond_4

    .line 234
    iput p1, p0, Lcom/android/hwcamera/autorama/PanoramaViewManager;->mSensorDirection:I

    .line 235
    iget v1, p0, Lcom/android/hwcamera/autorama/PanoramaViewManager;->mSensorDirection:I

    if-eq v1, v4, :cond_3

    .line 236
    invoke-direct {p0, p1}, Lcom/android/hwcamera/autorama/PanoramaViewManager;->setOrientationIndicator(I)V

    .line 237
    iget-object v1, p0, Lcom/android/hwcamera/autorama/PanoramaViewManager;->mCenterIndicator:Landroid/view/ViewGroup;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 238
    iget-object v1, p0, Lcom/android/hwcamera/autorama/PanoramaViewManager;->mAnimation:Lcom/android/hwcamera/autorama/AnimationController;

    invoke-virtual {v1}, Lcom/android/hwcamera/autorama/AnimationController;->startCenterAnimation()V

    .line 239
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    if-ge v0, v4, :cond_4

    .line 240
    iget-object v1, p0, Lcom/android/hwcamera/autorama/PanoramaViewManager;->mDirectionSigns:[Landroid/view/ViewGroup;

    aget-object v1, v1, v0

    invoke-virtual {v1, v4}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 239
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 229
    .end local v0           #i:I
    :cond_2
    add-int/lit8 p1, p1, -0x2

    goto :goto_0

    .line 243
    :cond_3
    iget-object v1, p0, Lcom/android/hwcamera/autorama/PanoramaViewManager;->mCenterIndicator:Landroid/view/ViewGroup;

    invoke-virtual {v1, v4}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 246
    :cond_4
    return-void
.end method

.method private updateUIShowingMatrix(III)V
    .locals 9
    .parameter "x"
    .parameter "y"
    .parameter "direction"

    .prologue
    const/4 v6, 0x1

    const/4 v8, 0x0

    .line 364
    const/4 v3, 0x2

    new-array v2, v3, [F

    int-to-float v3, p1

    aput v3, v2, v8

    int-to-float v3, p2

    aput v3, v2, v6

    .line 365
    .local v2, pts:[F
    iget-object v3, p0, Lcom/android/hwcamera/autorama/PanoramaViewManager;->mSensorMatrix:[Landroid/graphics/Matrix;

    aget-object v3, v3, p3

    invoke-virtual {v3, v2}, Landroid/graphics/Matrix;->mapPoints([F)V

    .line 366
    const-string v3, "PanoramaViewManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Matrix x = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    aget v5, v2, v8

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " y = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    aget v5, v2, v6

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 367
    invoke-direct {p0, p3}, Lcom/android/hwcamera/autorama/PanoramaViewManager;->prepareTransformMatrix(I)V

    .line 368
    iget-object v3, p0, Lcom/android/hwcamera/autorama/PanoramaViewManager;->mDisplayMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v3, v2}, Landroid/graphics/Matrix;->mapPoints([F)V

    .line 369
    const-string v3, "PanoramaViewManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "DisplayMatrix x = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    aget v5, v2, v8

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " y = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    aget v5, v2, v6

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 370
    aget v3, v2, v8

    float-to-int v0, v3

    .line 371
    .local v0, fx:I
    aget v3, v2, v6

    float-to-int v1, v3

    .line 373
    .local v1, fy:I
    iget-object v3, p0, Lcom/android/hwcamera/autorama/PanoramaViewManager;->mNaviLine:Lcom/android/hwcamera/autorama/ui/NaviLineImageView;

    iget v4, p0, Lcom/android/hwcamera/autorama/PanoramaViewManager;->mHalfArrowHeight:I

    sub-int v4, v0, v4

    iget v5, p0, Lcom/android/hwcamera/autorama/PanoramaViewManager;->mHalfArrowLength:I

    sub-int v5, v1, v5

    iget v6, p0, Lcom/android/hwcamera/autorama/PanoramaViewManager;->mHalfArrowHeight:I

    add-int/2addr v6, v0

    iget v7, p0, Lcom/android/hwcamera/autorama/PanoramaViewManager;->mHalfArrowLength:I

    add-int/2addr v7, v1

    invoke-virtual {v3, v4, v5, v6, v7}, Lcom/android/hwcamera/autorama/ui/NaviLineImageView;->setLayoutPosition(IIII)V

    .line 376
    invoke-direct {p0, p3}, Lcom/android/hwcamera/autorama/PanoramaViewManager;->updateDirection(I)V

    .line 377
    iget-object v3, p0, Lcom/android/hwcamera/autorama/PanoramaViewManager;->mNaviLine:Lcom/android/hwcamera/autorama/ui/NaviLineImageView;

    invoke-virtual {v3, v8}, Lcom/android/hwcamera/autorama/ui/NaviLineImageView;->setVisibility(I)V

    .line 378
    return-void
.end method


# virtual methods
.method public getOrientation()I
    .locals 3

    .prologue
    .line 186
    const-string v0, "PanoramaViewManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "orientation "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/hwcamera/autorama/PanoramaViewManager;->mContext:Lcom/android/hwcamera/CameraActivity;

    invoke-virtual {v2}, Lcom/android/hwcamera/CameraActivity;->getOrientation()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 187
    iget-object v0, p0, Lcom/android/hwcamera/autorama/PanoramaViewManager;->mContext:Lcom/android/hwcamera/CameraActivity;

    invoke-virtual {v0}, Lcom/android/hwcamera/CameraActivity;->getOrientation()I

    move-result v0

    return v0
.end method

.method public getShutterButton()Lcom/android/hwcamera/ShutterButton;
    .locals 1

    .prologue
    .line 459
    iget-object v0, p0, Lcom/android/hwcamera/autorama/PanoramaViewManager;->mShutterButton:Lcom/android/hwcamera/ShutterButton;

    return-object v0
.end method

.method public hide()V
    .locals 2

    .prologue
    .line 82
    iget-object v0, p0, Lcom/android/hwcamera/autorama/PanoramaViewManager;->mProgressIndicator:Lcom/android/hwcamera/autorama/ui/ProgressIndicator;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/android/hwcamera/autorama/ui/ProgressIndicator;->setVisibility(I)V

    .line 83
    return-void
.end method

.method public hideDirectionSigns()V
    .locals 3

    .prologue
    const/4 v2, 0x4

    .line 464
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v2, :cond_0

    .line 465
    iget-object v1, p0, Lcom/android/hwcamera/autorama/PanoramaViewManager;->mDirectionSigns:[Landroid/view/ViewGroup;

    aget-object v1, v1, v0

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 464
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 467
    :cond_0
    return-void
.end method

.method protected onRelease()V
    .locals 1

    .prologue
    .line 181
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/hwcamera/autorama/PanoramaViewManager;->mNeedInitialize:Z

    .line 182
    invoke-virtual {p0}, Lcom/android/hwcamera/autorama/PanoramaViewManager;->resetController()V

    .line 183
    return-void
.end method

.method public resetController()V
    .locals 5

    .prologue
    const/4 v4, 0x4

    const/4 v3, 0x0

    const/16 v2, 0x8

    .line 434
    iget-object v1, p0, Lcom/android/hwcamera/autorama/PanoramaViewManager;->mPanoView:Landroid/view/View;

    if-nez v1, :cond_1

    .line 456
    :cond_0
    :goto_0
    return-void

    .line 438
    :cond_1
    iget-object v1, p0, Lcom/android/hwcamera/autorama/PanoramaViewManager;->mPanoView:Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 439
    iget-object v1, p0, Lcom/android/hwcamera/autorama/PanoramaViewManager;->mProgressIndicator:Lcom/android/hwcamera/autorama/ui/ProgressIndicator;

    invoke-virtual {v1, v3}, Lcom/android/hwcamera/autorama/ui/ProgressIndicator;->setProgress(I)V

    .line 440
    iget-object v1, p0, Lcom/android/hwcamera/autorama/PanoramaViewManager;->mProgressIndicator:Lcom/android/hwcamera/autorama/ui/ProgressIndicator;

    invoke-virtual {v1, v2}, Lcom/android/hwcamera/autorama/ui/ProgressIndicator;->setVisibility(I)V

    .line 441
    iget-object v1, p0, Lcom/android/hwcamera/autorama/PanoramaViewManager;->mAnimation:Lcom/android/hwcamera/autorama/AnimationController;

    invoke-virtual {v1}, Lcom/android/hwcamera/autorama/AnimationController;->stopCenterAnimation()V

    .line 442
    iget-object v1, p0, Lcom/android/hwcamera/autorama/PanoramaViewManager;->mCenterIndicator:Landroid/view/ViewGroup;

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 445
    iget v1, p0, Lcom/android/hwcamera/autorama/PanoramaViewManager;->mViewCategory:I

    if-nez v1, :cond_0

    .line 446
    iput v4, p0, Lcom/android/hwcamera/autorama/PanoramaViewManager;->mSensorDirection:I

    .line 447
    iget-object v1, p0, Lcom/android/hwcamera/autorama/PanoramaViewManager;->mNaviLine:Lcom/android/hwcamera/autorama/ui/NaviLineImageView;

    invoke-virtual {v1, v2}, Lcom/android/hwcamera/autorama/ui/NaviLineImageView;->setVisibility(I)V

    .line 448
    iget-object v1, p0, Lcom/android/hwcamera/autorama/PanoramaViewManager;->mCollimatedArrowsDrawable:Landroid/view/ViewGroup;

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 449
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    if-ge v0, v4, :cond_2

    .line 450
    iget-object v1, p0, Lcom/android/hwcamera/autorama/PanoramaViewManager;->mDirectionSigns:[Landroid/view/ViewGroup;

    aget-object v1, v1, v0

    invoke-virtual {v1, v3}, Landroid/view/ViewGroup;->setSelected(Z)V

    .line 451
    iget-object v1, p0, Lcom/android/hwcamera/autorama/PanoramaViewManager;->mDirectionSigns:[Landroid/view/ViewGroup;

    aget-object v1, v1, v0

    invoke-virtual {v1, v3}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 449
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 453
    :cond_2
    iget-object v1, p0, Lcom/android/hwcamera/autorama/PanoramaViewManager;->mAutoramaHint:Landroid/widget/TextView;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0
.end method

.method public setProgress(I)V
    .locals 1
    .parameter "num"

    .prologue
    .line 401
    iget-object v0, p0, Lcom/android/hwcamera/autorama/PanoramaViewManager;->mProgressIndicator:Lcom/android/hwcamera/autorama/ui/ProgressIndicator;

    if-eqz v0, :cond_0

    .line 402
    iget-object v0, p0, Lcom/android/hwcamera/autorama/PanoramaViewManager;->mProgressIndicator:Lcom/android/hwcamera/autorama/ui/ProgressIndicator;

    invoke-virtual {v0, p1}, Lcom/android/hwcamera/autorama/ui/ProgressIndicator;->setProgress(I)V

    .line 404
    :cond_0
    return-void
.end method

.method public setViewsForNext(I)V
    .locals 3
    .parameter "imageNum"

    .prologue
    const/16 v2, 0x8

    .line 383
    iget-boolean v0, p0, Lcom/android/hwcamera/autorama/PanoramaViewManager;->mNeedInitialize:Z

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 384
    const-string v0, "PanoramaViewManager"

    const-string v1, "Panorama View Manager need to Initalize"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 398
    :goto_0
    return-void

    .line 388
    :cond_0
    iget-object v0, p0, Lcom/android/hwcamera/autorama/PanoramaViewManager;->mProgressIndicator:Lcom/android/hwcamera/autorama/ui/ProgressIndicator;

    add-int/lit8 v1, p1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/hwcamera/autorama/ui/ProgressIndicator;->setProgress(I)V

    .line 389
    if-nez p1, :cond_1

    .line 390
    iget-object v0, p0, Lcom/android/hwcamera/autorama/PanoramaViewManager;->mAnimation:Lcom/android/hwcamera/autorama/AnimationController;

    invoke-virtual {v0}, Lcom/android/hwcamera/autorama/AnimationController;->startDirectionAnimation()V

    goto :goto_0

    .line 392
    :cond_1
    iget-object v0, p0, Lcom/android/hwcamera/autorama/PanoramaViewManager;->mNaviLine:Lcom/android/hwcamera/autorama/ui/NaviLineImageView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/android/hwcamera/autorama/ui/NaviLineImageView;->setVisibility(I)V

    .line 393
    iget-object v0, p0, Lcom/android/hwcamera/autorama/PanoramaViewManager;->mAnimation:Lcom/android/hwcamera/autorama/AnimationController;

    invoke-virtual {v0}, Lcom/android/hwcamera/autorama/AnimationController;->stopCenterAnimation()V

    .line 394
    iget-object v0, p0, Lcom/android/hwcamera/autorama/PanoramaViewManager;->mCenterIndicator:Landroid/view/ViewGroup;

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 395
    iget-object v0, p0, Lcom/android/hwcamera/autorama/PanoramaViewManager;->mCollimatedArrowsDrawable:Landroid/view/ViewGroup;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 396
    iget-object v0, p0, Lcom/android/hwcamera/autorama/PanoramaViewManager;->mAutoramaHint:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0
.end method

.method public show()V
    .locals 1

    .prologue
    .line 95
    iget-boolean v0, p0, Lcom/android/hwcamera/autorama/PanoramaViewManager;->mNeedInitialize:Z

    if-eqz v0, :cond_0

    .line 96
    invoke-direct {p0}, Lcom/android/hwcamera/autorama/PanoramaViewManager;->initializeViewManager()V

    .line 97
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/hwcamera/autorama/PanoramaViewManager;->mNeedInitialize:Z

    .line 99
    :cond_0
    invoke-virtual {p0}, Lcom/android/hwcamera/autorama/PanoramaViewManager;->showCaptureView()V

    .line 100
    return-void
.end method

.method public showCaptureView()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 207
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    const/4 v1, 0x4

    if-ge v0, v1, :cond_0

    .line 208
    iget-object v1, p0, Lcom/android/hwcamera/autorama/PanoramaViewManager;->mDirectionSigns:[Landroid/view/ViewGroup;

    aget-object v1, v1, v0

    invoke-virtual {v1, v3}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 207
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 210
    :cond_0
    iget-object v1, p0, Lcom/android/hwcamera/autorama/PanoramaViewManager;->mCenterIndicator:Landroid/view/ViewGroup;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 211
    iget v1, p0, Lcom/android/hwcamera/autorama/PanoramaViewManager;->mViewCategory:I

    if-ne v1, v4, :cond_1

    .line 212
    iget-object v1, p0, Lcom/android/hwcamera/autorama/PanoramaViewManager;->mAnimation:Lcom/android/hwcamera/autorama/AnimationController;

    invoke-virtual {v1}, Lcom/android/hwcamera/autorama/AnimationController;->startDirectionAnimation()V

    .line 213
    iget-object v1, p0, Lcom/android/hwcamera/autorama/PanoramaViewManager;->mRotateProgress:Lcom/android/hwcamera/autorama/ui/RotateProgress;

    invoke-virtual {p0}, Lcom/android/hwcamera/autorama/PanoramaViewManager;->getOrientation()I

    move-result v2

    invoke-virtual {v1, v2, v4}, Lcom/android/hwcamera/autorama/ui/RotateProgress;->setRotation(IZ)V

    .line 217
    :cond_1
    iget-object v1, p0, Lcom/android/hwcamera/autorama/PanoramaViewManager;->mPanoView:Landroid/view/View;

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 218
    const-string v1, "PanoramaViewManager"

    const-string v2, "showCaptureView is called"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 219
    iget-object v1, p0, Lcom/android/hwcamera/autorama/PanoramaViewManager;->mRootView:Landroid/view/View;

    invoke-virtual {p0}, Lcom/android/hwcamera/autorama/PanoramaViewManager;->getOrientation()I

    move-result v2

    invoke-static {v1, v2, v4}, Lcom/android/hwcamera/autorama/PanoramaViewManager;->setOrientationEx(Landroid/view/View;IZ)V

    .line 220
    iget-object v1, p0, Lcom/android/hwcamera/autorama/PanoramaViewManager;->mProgressIndicator:Lcom/android/hwcamera/autorama/ui/ProgressIndicator;

    invoke-virtual {v1, v3}, Lcom/android/hwcamera/autorama/ui/ProgressIndicator;->setVisibility(I)V

    .line 221
    return-void
.end method

.method public showSavingHint(Z)V
    .locals 1
    .parameter "show"

    .prologue
    .line 103
    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 104
    iget-object v0, p0, Lcom/android/hwcamera/autorama/PanoramaViewManager;->mRotateProgress:Lcom/android/hwcamera/autorama/ui/RotateProgress;

    invoke-virtual {v0}, Lcom/android/hwcamera/autorama/ui/RotateProgress;->show()V

    .line 108
    :goto_0
    return-void

    .line 106
    :cond_0
    iget-object v0, p0, Lcom/android/hwcamera/autorama/PanoramaViewManager;->mRotateProgress:Lcom/android/hwcamera/autorama/ui/RotateProgress;

    invoke-virtual {v0}, Lcom/android/hwcamera/autorama/ui/RotateProgress;->hide()V

    goto :goto_0
.end method

.method public startCenterAnimation()V
    .locals 2

    .prologue
    .line 407
    iget-object v0, p0, Lcom/android/hwcamera/autorama/PanoramaViewManager;->mCollimatedArrowsDrawable:Landroid/view/ViewGroup;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 408
    iget-object v0, p0, Lcom/android/hwcamera/autorama/PanoramaViewManager;->mAnimation:Lcom/android/hwcamera/autorama/AnimationController;

    invoke-virtual {v0}, Lcom/android/hwcamera/autorama/AnimationController;->startCenterAnimation()V

    .line 409
    iget-object v0, p0, Lcom/android/hwcamera/autorama/PanoramaViewManager;->mCenterIndicator:Landroid/view/ViewGroup;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 410
    const-string v0, "PanoramaViewManager"

    const-string v1, "startCenterAnimation call"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 411
    return-void
.end method

.method public updateMovingUI(IIZ)V
    .locals 5
    .parameter "xy"
    .parameter "direction"
    .parameter "shown"

    .prologue
    const/4 v4, 0x4

    .line 415
    iget-boolean v2, p0, Lcom/android/hwcamera/autorama/PanoramaViewManager;->mNeedInitialize:Z

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    .line 416
    const-string v2, "PanoramaViewManager"

    const-string v3, "Panorama View Manager need to Initalize"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 431
    :goto_0
    return-void

    .line 421
    :cond_0
    if-eq p2, v4, :cond_1

    if-eqz p3, :cond_2

    .line 422
    :cond_1
    iget-object v2, p0, Lcom/android/hwcamera/autorama/PanoramaViewManager;->mNaviLine:Lcom/android/hwcamera/autorama/ui/NaviLineImageView;

    invoke-virtual {v2, v4}, Lcom/android/hwcamera/autorama/ui/NaviLineImageView;->setVisibility(I)V

    .line 423
    const-string v2, "PanoramaViewManager"

    const-string v3, "updateMovingUI begin"

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 426
    :cond_2
    const/high16 v2, -0x1

    and-int/2addr v2, p1

    shr-int/lit8 v2, v2, 0x10

    int-to-short v0, v2

    .line 427
    .local v0, x:S
    const v2, 0xffff

    and-int/2addr v2, p1

    int-to-short v1, v2

    .line 428
    .local v1, y:S
    const-string v2, "PanoramaViewManager"

    const-string v3, "updateMovingUI end"

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 429
    invoke-direct {p0, v0, v1, p2}, Lcom/android/hwcamera/autorama/PanoramaViewManager;->updateUIShowingMatrix(III)V

    .line 430
    iget-object v2, p0, Lcom/android/hwcamera/autorama/PanoramaViewManager;->mAutoramaHint:Landroid/widget/TextView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0
.end method
