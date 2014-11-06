.class public Lcom/android/gallery3d/ui/PhotoView;
.super Lcom/android/gallery3d/ui/GLView;
.source "PhotoView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/gallery3d/ui/PhotoView$ZInterpolator;,
        Lcom/android/gallery3d/ui/PhotoView$DeleteAnimation;,
        Lcom/android/gallery3d/ui/PhotoView$ScaleAnimation;,
        Lcom/android/gallery3d/ui/PhotoView$SlotAnimation;,
        Lcom/android/gallery3d/ui/PhotoView$MyGestureListener;,
        Lcom/android/gallery3d/ui/PhotoView$ScreenNailPicture;,
        Lcom/android/gallery3d/ui/PhotoView$FullPicture;,
        Lcom/android/gallery3d/ui/PhotoView$Picture;,
        Lcom/android/gallery3d/ui/PhotoView$MyHandler;,
        Lcom/android/gallery3d/ui/PhotoView$Listener;,
        Lcom/android/gallery3d/ui/PhotoView$Model;,
        Lcom/android/gallery3d/ui/PhotoView$Size;
    }
.end annotation


# static fields
.field private static final CARD_EFFECT:Z = true

.field private static final DEFAULT_TEXT_SIZE:F = 20.0f

.field private static final HOLD_CAPTURE_ANIMATION:I = 0x2

.field private static final HOLD_DELETE:I = 0x4

.field private static final HOLD_TOUCH_DOWN:I = 0x1

.field private static final ICON_RATIO:I = 0x6

.field public static final INVALID_DATA_VERSION:J = -0x1L

.field public static final INVALID_SIZE:I = -0x1

.field private static final MAX_DISMISS_VELOCITY:I = 0xfa0

.field private static final MSG_CANCEL_EXTRA_SCALING:I = 0x2

.field private static final MSG_CAPTURE_ANIMATION_DONE:I = 0x4

.field private static final MSG_DELETE_ANIMATION_DONE:I = 0x5

.field private static final MSG_DELETE_DONE:I = 0x6

.field private static final MSG_SWITCH_FOCUS:I = 0x3

.field private static final MSG_UNDO_BAR_FULL_CAMERA:I = 0x8

.field private static final MSG_UNDO_BAR_TIMEOUT:I = 0x7

.field private static final OFFSET_EFFECT:Z = true

.field public static final SCREEN_NAIL_MAX:I = 0x3

.field private static final SWIPE_ESCAPE_VELOCITY:I = 0x9c4

.field private static final SWIPE_THRESHOLD:F = 300.0f

.field private static final TAG:Ljava/lang/String; = "PhotoView"

.field private static TRANSITION_SCALE_FACTOR:F = 0.0f

.field private static final UNDO_BAR_DELETE_LAST:I = 0x10

.field private static final UNDO_BAR_FULL_CAMERA:I = 0x8

.field private static final UNDO_BAR_SHOW:I = 0x1

.field private static final UNDO_BAR_TIMEOUT:I = 0x2

.field private static final UNDO_BAR_TOUCHED:I = 0x4


# instance fields
.field private fadeOutMavOverlay:Lcom/android/gallery3d/ui/FadeOutTexture;

.field private mAlphaInterpolator:Landroid/view/animation/AccelerateInterpolator;

.field private mAnimation:Lcom/android/gallery3d/ui/PhotoView$SlotAnimation;

.field private mCameraRect:Landroid/graphics/Rect;

.field private mCameraRelativeFrame:Landroid/graphics/Rect;

.field private mCameraScreenNail:Lcom/android/gallery3d/ui/ScreenNail;

.field private mCancelExtraScalingPending:Z

.field private mClickDeleteTransition:Lcom/android/gallery3d/anim/ClickDeleteTransition;

.field private mClickScaleTransition:Lcom/android/gallery3d/anim/ClickScaleTransition;

.field private mCompensation:I

.field private mContext:Landroid/content/Context;

.field private mDeleteAnimation:Lcom/android/gallery3d/ui/PhotoView$SlotAnimation;

.field private mDisplayRotation:I

.field private mEdgeView:Lcom/android/gallery3d/ui/EdgeView;

.field private mFaceIndicator:Lcom/android/gallery3d/ui/FaceIndicator;

.field private mFilmMode:Z

.field private mFirst:Z

.field private mFullScreenCamera:Z

.field private final mGestureListener:Lcom/android/gallery3d/ui/PhotoView$MyGestureListener;

.field private final mGestureRecognizer:Lcom/android/gallery3d/ui/GestureRecognizer;

.field private mGifThread:Lcom/android/gallery3d/ui/GifParseThread;

.field private mHandler:Lcom/android/gallery3d/ui/SynchronizedHandler;

.field private mHolding:I

.field private mIsAnimationRender:Z

.field private mIsDelete:Z

.field private mIsMavLoadingFinished:Z

.field private mListener:Lcom/android/gallery3d/ui/PhotoView$Listener;

.field private mMavOverlay:Lcom/android/gallery3d/ui/BasicTexture;

.field private mMeteringDrag:Z

.field private mModel:Lcom/android/gallery3d/ui/PhotoView$Model;

.field private mNextBound:I

.field private mNoThumbnailText:Lcom/android/gallery3d/ui/StringTexture;

.field private mPicture:Lcom/android/gallery3d/ui/PhotoView$Picture;

.field private final mPictures:Lcom/android/gallery3d/util/RangeArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/gallery3d/util/RangeArray",
            "<",
            "Lcom/android/gallery3d/ui/PhotoView$Picture;",
            ">;"
        }
    .end annotation
.end field

.field private final mPlaceholderColor:I

.field private final mPositionController:Lcom/android/gallery3d/ui/PositionController;

.field private mPrevBound:I

.field private mRect:Landroid/graphics/Rect;

.field private mScaleInterpolator:Lcom/android/gallery3d/ui/PhotoView$ZInterpolator;

.field private mSizes:[Lcom/android/gallery3d/ui/PhotoView$Size;

.field private mTileView:Lcom/android/gallery3d/ui/TileImageView;

.field private mTouchBoxDeletable:Z

.field private mTouchBoxIndex:I

.field private mUndoBar:Lcom/android/gallery3d/ui/UndoBarView;

.field private mUndoBarState:I

.field private mUndoIndexHint:I

.field private mVideoPlayIcon:Lcom/android/gallery3d/ui/Texture;

.field private mVideoPlayIconBg:Lcom/android/gallery3d/ui/Texture;

.field private mWantPictureCenterCallbacks:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 183
    const v0, 0x3f3d70a4

    sput v0, Lcom/android/gallery3d/ui/PhotoView;->TRANSITION_SCALE_FACTOR:F

    return-void
.end method

.method public constructor <init>(Lcom/android/gallery3d/app/AbstractGalleryActivity;)V
    .locals 9
    .parameter "activity"

    .prologue
    const v8, 0x7fffffff

    const/4 v7, 0x3

    const/4 v6, 0x1

    const/4 v5, 0x0

    const/4 v4, 0x0

    .line 283
    invoke-direct {p0}, Lcom/android/gallery3d/ui/GLView;-><init>()V

    .line 193
    new-instance v2, Lcom/android/gallery3d/ui/PhotoView$ZInterpolator;

    const/high16 v3, 0x3f00

    invoke-direct {v2, v3}, Lcom/android/gallery3d/ui/PhotoView$ZInterpolator;-><init>(F)V

    iput-object v2, p0, Lcom/android/gallery3d/ui/PhotoView;->mScaleInterpolator:Lcom/android/gallery3d/ui/PhotoView$ZInterpolator;

    .line 196
    new-instance v2, Landroid/view/animation/AccelerateInterpolator;

    const v3, 0x3f666666

    invoke-direct {v2, v3}, Landroid/view/animation/AccelerateInterpolator;-><init>(F)V

    iput-object v2, p0, Lcom/android/gallery3d/ui/PhotoView;->mAlphaInterpolator:Landroid/view/animation/AccelerateInterpolator;

    .line 208
    new-instance v2, Lcom/android/gallery3d/util/RangeArray;

    const/4 v3, -0x3

    invoke-direct {v2, v3, v7}, Lcom/android/gallery3d/util/RangeArray;-><init>(II)V

    iput-object v2, p0, Lcom/android/gallery3d/ui/PhotoView;->mPictures:Lcom/android/gallery3d/util/RangeArray;

    .line 210
    const/4 v2, 0x7

    new-array v2, v2, [Lcom/android/gallery3d/ui/PhotoView$Size;

    iput-object v2, p0, Lcom/android/gallery3d/ui/PhotoView;->mSizes:[Lcom/android/gallery3d/ui/PhotoView$Size;

    .line 228
    iput-boolean v4, p0, Lcom/android/gallery3d/ui/PhotoView;->mFilmMode:Z

    .line 229
    iput-boolean v4, p0, Lcom/android/gallery3d/ui/PhotoView;->mWantPictureCenterCallbacks:Z

    .line 230
    iput v4, p0, Lcom/android/gallery3d/ui/PhotoView;->mDisplayRotation:I

    .line 231
    iput v4, p0, Lcom/android/gallery3d/ui/PhotoView;->mCompensation:I

    .line 233
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    iput-object v2, p0, Lcom/android/gallery3d/ui/PhotoView;->mCameraRelativeFrame:Landroid/graphics/Rect;

    .line 234
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    iput-object v2, p0, Lcom/android/gallery3d/ui/PhotoView;->mCameraRect:Landroid/graphics/Rect;

    .line 235
    iput-boolean v6, p0, Lcom/android/gallery3d/ui/PhotoView;->mFirst:Z

    .line 255
    iput v8, p0, Lcom/android/gallery3d/ui/PhotoView;->mTouchBoxIndex:I

    .line 262
    iput v8, p0, Lcom/android/gallery3d/ui/PhotoView;->mUndoIndexHint:I

    .line 272
    iput-boolean v4, p0, Lcom/android/gallery3d/ui/PhotoView;->mIsDelete:Z

    .line 275
    iput-boolean v4, p0, Lcom/android/gallery3d/ui/PhotoView;->mIsMavLoadingFinished:Z

    .line 277
    iput-boolean v4, p0, Lcom/android/gallery3d/ui/PhotoView;->mIsAnimationRender:Z

    .line 278
    iput-object v5, p0, Lcom/android/gallery3d/ui/PhotoView;->mRect:Landroid/graphics/Rect;

    .line 279
    iput-object v5, p0, Lcom/android/gallery3d/ui/PhotoView;->mPicture:Lcom/android/gallery3d/ui/PhotoView$Picture;

    .line 281
    iput-boolean v4, p0, Lcom/android/gallery3d/ui/PhotoView;->mMeteringDrag:Z

    .line 284
    new-instance v2, Lcom/android/gallery3d/ui/TileImageView;

    invoke-direct {v2, p1}, Lcom/android/gallery3d/ui/TileImageView;-><init>(Lcom/android/gallery3d/app/GalleryContext;)V

    iput-object v2, p0, Lcom/android/gallery3d/ui/PhotoView;->mTileView:Lcom/android/gallery3d/ui/TileImageView;

    .line 285
    iget-object v2, p0, Lcom/android/gallery3d/ui/PhotoView;->mTileView:Lcom/android/gallery3d/ui/TileImageView;

    invoke-virtual {p0, v2}, Lcom/android/gallery3d/ui/PhotoView;->addComponent(Lcom/android/gallery3d/ui/GLView;)V

    .line 287
    iget-object v2, p0, Lcom/android/gallery3d/ui/PhotoView;->mTileView:Lcom/android/gallery3d/ui/TileImageView;

    invoke-virtual {v2, p0}, Lcom/android/gallery3d/ui/TileImageView;->setPhotoView(Lcom/android/gallery3d/ui/PhotoView;)V

    .line 289
    invoke-virtual {p1}, Lcom/android/gallery3d/app/AbstractGalleryActivity;->getAndroidContext()Landroid/content/Context;

    move-result-object v2

    iput-object v2, p0, Lcom/android/gallery3d/ui/PhotoView;->mContext:Landroid/content/Context;

    .line 290
    iget-object v2, p0, Lcom/android/gallery3d/ui/PhotoView;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0a0028

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    iput v2, p0, Lcom/android/gallery3d/ui/PhotoView;->mPlaceholderColor:I

    .line 292
    new-instance v2, Lcom/android/gallery3d/ui/EdgeView;

    iget-object v3, p0, Lcom/android/gallery3d/ui/PhotoView;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Lcom/android/gallery3d/ui/EdgeView;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/android/gallery3d/ui/PhotoView;->mEdgeView:Lcom/android/gallery3d/ui/EdgeView;

    .line 293
    iget-object v2, p0, Lcom/android/gallery3d/ui/PhotoView;->mEdgeView:Lcom/android/gallery3d/ui/EdgeView;

    invoke-virtual {p0, v2}, Lcom/android/gallery3d/ui/PhotoView;->addComponent(Lcom/android/gallery3d/ui/GLView;)V

    .line 294
    new-instance v2, Lcom/android/gallery3d/ui/UndoBarView;

    iget-object v3, p0, Lcom/android/gallery3d/ui/PhotoView;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Lcom/android/gallery3d/ui/UndoBarView;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/android/gallery3d/ui/PhotoView;->mUndoBar:Lcom/android/gallery3d/ui/UndoBarView;

    .line 295
    iget-object v2, p0, Lcom/android/gallery3d/ui/PhotoView;->mUndoBar:Lcom/android/gallery3d/ui/UndoBarView;

    invoke-virtual {p0, v2}, Lcom/android/gallery3d/ui/PhotoView;->addComponent(Lcom/android/gallery3d/ui/GLView;)V

    .line 296
    iget-object v2, p0, Lcom/android/gallery3d/ui/PhotoView;->mUndoBar:Lcom/android/gallery3d/ui/UndoBarView;

    invoke-virtual {v2, v6}, Lcom/android/gallery3d/ui/UndoBarView;->setVisibility(I)V

    .line 297
    iget-object v2, p0, Lcom/android/gallery3d/ui/PhotoView;->mUndoBar:Lcom/android/gallery3d/ui/UndoBarView;

    new-instance v3, Lcom/android/gallery3d/ui/PhotoView$1;

    invoke-direct {v3, p0}, Lcom/android/gallery3d/ui/PhotoView$1;-><init>(Lcom/android/gallery3d/ui/PhotoView;)V

    invoke-virtual {v2, v3}, Lcom/android/gallery3d/ui/UndoBarView;->setOnClickListener(Lcom/android/gallery3d/ui/GLView$OnClickListener;)V

    .line 304
    iget-object v2, p0, Lcom/android/gallery3d/ui/PhotoView;->mContext:Landroid/content/Context;

    const v3, 0x7f0d024d

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/high16 v3, 0x41a0

    const/4 v4, -0x1

    invoke-static {v2, v3, v4}, Lcom/android/gallery3d/ui/StringTexture;->newInstance(Ljava/lang/String;FI)Lcom/android/gallery3d/ui/StringTexture;

    move-result-object v2

    iput-object v2, p0, Lcom/android/gallery3d/ui/PhotoView;->mNoThumbnailText:Lcom/android/gallery3d/ui/StringTexture;

    .line 307
    invoke-virtual {p1}, Lcom/android/gallery3d/app/AbstractGalleryActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 308
    .local v0, context:Landroid/content/Context;
    new-instance v2, Lcom/android/gallery3d/ui/FaceIndicator;

    invoke-direct {v2, v0, p0}, Lcom/android/gallery3d/ui/FaceIndicator;-><init>(Landroid/content/Context;Lcom/android/gallery3d/ui/PhotoView;)V

    iput-object v2, p0, Lcom/android/gallery3d/ui/PhotoView;->mFaceIndicator:Lcom/android/gallery3d/ui/FaceIndicator;

    .line 310
    new-instance v2, Lcom/android/gallery3d/ui/PhotoView$MyHandler;

    invoke-virtual {p1}, Lcom/android/gallery3d/app/AbstractGalleryActivity;->getGLRoot()Lcom/android/gallery3d/ui/GLRoot;

    move-result-object v3

    invoke-direct {v2, p0, v3}, Lcom/android/gallery3d/ui/PhotoView$MyHandler;-><init>(Lcom/android/gallery3d/ui/PhotoView;Lcom/android/gallery3d/ui/GLRoot;)V

    iput-object v2, p0, Lcom/android/gallery3d/ui/PhotoView;->mHandler:Lcom/android/gallery3d/ui/SynchronizedHandler;

    .line 312
    new-instance v2, Lcom/android/gallery3d/ui/PhotoView$MyGestureListener;

    invoke-direct {v2, p0, v5}, Lcom/android/gallery3d/ui/PhotoView$MyGestureListener;-><init>(Lcom/android/gallery3d/ui/PhotoView;Lcom/android/gallery3d/ui/PhotoView$1;)V

    iput-object v2, p0, Lcom/android/gallery3d/ui/PhotoView;->mGestureListener:Lcom/android/gallery3d/ui/PhotoView$MyGestureListener;

    .line 313
    new-instance v2, Lcom/android/gallery3d/ui/GestureRecognizer;

    iget-object v3, p0, Lcom/android/gallery3d/ui/PhotoView;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/android/gallery3d/ui/PhotoView;->mGestureListener:Lcom/android/gallery3d/ui/PhotoView$MyGestureListener;

    invoke-direct {v2, v3, v4}, Lcom/android/gallery3d/ui/GestureRecognizer;-><init>(Landroid/content/Context;Lcom/android/gallery3d/ui/GestureRecognizer$Listener;)V

    iput-object v2, p0, Lcom/android/gallery3d/ui/PhotoView;->mGestureRecognizer:Lcom/android/gallery3d/ui/GestureRecognizer;

    .line 315
    new-instance v2, Lcom/android/gallery3d/ui/PositionController;

    iget-object v3, p0, Lcom/android/gallery3d/ui/PhotoView;->mContext:Landroid/content/Context;

    new-instance v4, Lcom/android/gallery3d/ui/PhotoView$2;

    invoke-direct {v4, p0}, Lcom/android/gallery3d/ui/PhotoView$2;-><init>(Lcom/android/gallery3d/ui/PhotoView;)V

    invoke-direct {v2, v3, v4}, Lcom/android/gallery3d/ui/PositionController;-><init>(Landroid/content/Context;Lcom/android/gallery3d/ui/PositionController$Listener;)V

    iput-object v2, p0, Lcom/android/gallery3d/ui/PhotoView;->mPositionController:Lcom/android/gallery3d/ui/PositionController;

    .line 348
    new-instance v2, Lcom/android/gallery3d/ui/ResourceTexture;

    iget-object v3, p0, Lcom/android/gallery3d/ui/PhotoView;->mContext:Landroid/content/Context;

    const v4, 0x7f020221

    invoke-direct {v2, v3, v4}, Lcom/android/gallery3d/ui/ResourceTexture;-><init>(Landroid/content/Context;I)V

    iput-object v2, p0, Lcom/android/gallery3d/ui/PhotoView;->mVideoPlayIcon:Lcom/android/gallery3d/ui/Texture;

    .line 349
    new-instance v2, Lcom/android/gallery3d/ui/ResourceTexture;

    iget-object v3, p0, Lcom/android/gallery3d/ui/PhotoView;->mContext:Landroid/content/Context;

    const v4, 0x7f02003d

    invoke-direct {v2, v3, v4}, Lcom/android/gallery3d/ui/ResourceTexture;-><init>(Landroid/content/Context;I)V

    iput-object v2, p0, Lcom/android/gallery3d/ui/PhotoView;->mVideoPlayIconBg:Lcom/android/gallery3d/ui/Texture;

    .line 350
    const/4 v1, -0x3

    .local v1, i:I
    :goto_0
    if-gt v1, v7, :cond_1

    .line 351
    if-nez v1, :cond_0

    .line 352
    iget-object v2, p0, Lcom/android/gallery3d/ui/PhotoView;->mPictures:Lcom/android/gallery3d/util/RangeArray;

    new-instance v3, Lcom/android/gallery3d/ui/PhotoView$FullPicture;

    invoke-direct {v3, p0}, Lcom/android/gallery3d/ui/PhotoView$FullPicture;-><init>(Lcom/android/gallery3d/ui/PhotoView;)V

    invoke-virtual {v2, v1, v3}, Lcom/android/gallery3d/util/RangeArray;->put(ILjava/lang/Object;)V

    .line 350
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 354
    :cond_0
    iget-object v2, p0, Lcom/android/gallery3d/ui/PhotoView;->mPictures:Lcom/android/gallery3d/util/RangeArray;

    new-instance v3, Lcom/android/gallery3d/ui/PhotoView$ScreenNailPicture;

    invoke-direct {v3, p0, v1}, Lcom/android/gallery3d/ui/PhotoView$ScreenNailPicture;-><init>(Lcom/android/gallery3d/ui/PhotoView;I)V

    invoke-virtual {v2, v1, v3}, Lcom/android/gallery3d/util/RangeArray;->put(ILjava/lang/Object;)V

    goto :goto_1

    .line 357
    :cond_1
    new-instance v2, Lcom/android/gallery3d/anim/ClickScaleTransition;

    invoke-direct {v2}, Lcom/android/gallery3d/anim/ClickScaleTransition;-><init>()V

    iput-object v2, p0, Lcom/android/gallery3d/ui/PhotoView;->mClickScaleTransition:Lcom/android/gallery3d/anim/ClickScaleTransition;

    .line 358
    new-instance v2, Lcom/android/gallery3d/anim/ClickDeleteTransition;

    invoke-direct {v2}, Lcom/android/gallery3d/anim/ClickDeleteTransition;-><init>()V

    iput-object v2, p0, Lcom/android/gallery3d/ui/PhotoView;->mClickDeleteTransition:Lcom/android/gallery3d/anim/ClickDeleteTransition;

    .line 361
    new-instance v2, Lcom/android/gallery3d/ui/ResourceTexture;

    iget-object v3, p0, Lcom/android/gallery3d/ui/PhotoView;->mContext:Landroid/content/Context;

    const v4, 0x7f020197

    invoke-direct {v2, v3, v4}, Lcom/android/gallery3d/ui/ResourceTexture;-><init>(Landroid/content/Context;I)V

    iput-object v2, p0, Lcom/android/gallery3d/ui/PhotoView;->mMavOverlay:Lcom/android/gallery3d/ui/BasicTexture;

    .line 363
    return-void
.end method

.method static synthetic access$000(Lcom/android/gallery3d/ui/PhotoView;)Lcom/android/gallery3d/ui/PhotoView$Listener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 51
    iget-object v0, p0, Lcom/android/gallery3d/ui/PhotoView;->mListener:Lcom/android/gallery3d/ui/PhotoView$Listener;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/gallery3d/ui/PhotoView;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 51
    invoke-direct {p0}, Lcom/android/gallery3d/ui/PhotoView;->hideUndoBar()V

    return-void
.end method

.method static synthetic access$1000(Lcom/android/gallery3d/ui/PhotoView;)Lcom/android/gallery3d/ui/SynchronizedHandler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 51
    iget-object v0, p0, Lcom/android/gallery3d/ui/PhotoView;->mHandler:Lcom/android/gallery3d/ui/SynchronizedHandler;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/android/gallery3d/ui/PhotoView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 51
    iget v0, p0, Lcom/android/gallery3d/ui/PhotoView;->mNextBound:I

    return v0
.end method

.method static synthetic access$1200(Lcom/android/gallery3d/ui/PhotoView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 51
    iget v0, p0, Lcom/android/gallery3d/ui/PhotoView;->mPrevBound:I

    return v0
.end method

.method static synthetic access$1300(Lcom/android/gallery3d/ui/PhotoView;)Lcom/android/gallery3d/ui/PhotoView$Model;
    .locals 1
    .parameter "x0"

    .prologue
    .line 51
    iget-object v0, p0, Lcom/android/gallery3d/ui/PhotoView;->mModel:Lcom/android/gallery3d/ui/PhotoView$Model;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/android/gallery3d/ui/PhotoView;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 51
    invoke-direct {p0, p1}, Lcom/android/gallery3d/ui/PhotoView;->showUndoBar(Z)V

    return-void
.end method

.method static synthetic access$1500(Lcom/android/gallery3d/ui/PhotoView;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 51
    invoke-direct {p0}, Lcom/android/gallery3d/ui/PhotoView;->snapback()V

    return-void
.end method

.method static synthetic access$1600(Lcom/android/gallery3d/ui/PhotoView;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 51
    invoke-direct {p0, p1}, Lcom/android/gallery3d/ui/PhotoView;->checkHideUndoBar(I)V

    return-void
.end method

.method static synthetic access$1700(Lcom/android/gallery3d/ui/PhotoView;)Lcom/android/gallery3d/ui/TileImageView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 51
    iget-object v0, p0, Lcom/android/gallery3d/ui/PhotoView;->mTileView:Lcom/android/gallery3d/ui/TileImageView;

    return-object v0
.end method

.method static synthetic access$1800(Lcom/android/gallery3d/ui/PhotoView;)Lcom/android/gallery3d/ui/ScreenNail;
    .locals 1
    .parameter "x0"

    .prologue
    .line 51
    iget-object v0, p0, Lcom/android/gallery3d/ui/PhotoView;->mCameraScreenNail:Lcom/android/gallery3d/ui/ScreenNail;

    return-object v0
.end method

.method static synthetic access$1900(Lcom/android/gallery3d/ui/PhotoView;Lcom/android/gallery3d/data/MediaItem;Lcom/android/gallery3d/ui/ScreenNail;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 51
    invoke-direct {p0, p1, p2}, Lcom/android/gallery3d/ui/PhotoView;->parseGifIfNecessary(Lcom/android/gallery3d/data/MediaItem;Lcom/android/gallery3d/ui/ScreenNail;)V

    return-void
.end method

.method static synthetic access$2000(Lcom/android/gallery3d/ui/PhotoView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 51
    invoke-direct {p0}, Lcom/android/gallery3d/ui/PhotoView;->getPanoramaRotation()I

    move-result v0

    return v0
.end method

.method static synthetic access$2100(III)I
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 51
    invoke-static {p0, p1, p2}, Lcom/android/gallery3d/ui/PhotoView;->getRotated(III)I

    move-result v0

    return v0
.end method

.method static synthetic access$2200(Lcom/android/gallery3d/ui/PhotoView;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 51
    iget-boolean v0, p0, Lcom/android/gallery3d/ui/PhotoView;->mWantPictureCenterCallbacks:Z

    return v0
.end method

.method static synthetic access$2300(Lcom/android/gallery3d/ui/PhotoView;)Lcom/android/gallery3d/util/RangeArray;
    .locals 1
    .parameter "x0"

    .prologue
    .line 51
    iget-object v0, p0, Lcom/android/gallery3d/ui/PhotoView;->mPictures:Lcom/android/gallery3d/util/RangeArray;

    return-object v0
.end method

.method static synthetic access$2400(III)F
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 51
    invoke-static {p0, p1, p2}, Lcom/android/gallery3d/ui/PhotoView;->calculateMoveOutProgress(III)F

    move-result v0

    return v0
.end method

.method static synthetic access$2500(Lcom/android/gallery3d/ui/PhotoView;F)F
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 51
    invoke-direct {p0, p1}, Lcom/android/gallery3d/ui/PhotoView;->getScrollScale(F)F

    move-result v0

    return v0
.end method

.method static synthetic access$2600(Lcom/android/gallery3d/ui/PhotoView;F)F
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 51
    invoke-direct {p0, p1}, Lcom/android/gallery3d/ui/PhotoView;->getScrollAlpha(F)F

    move-result v0

    return v0
.end method

.method static synthetic access$2700(FFF)F
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 51
    invoke-static {p0, p1, p2}, Lcom/android/gallery3d/ui/PhotoView;->interpolate(FFF)F

    move-result v0

    return v0
.end method

.method static synthetic access$2800(Lcom/android/gallery3d/ui/PhotoView;F)F
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 51
    invoke-direct {p0, p1}, Lcom/android/gallery3d/ui/PhotoView;->getOffsetAlpha(F)F

    move-result v0

    return v0
.end method

.method static synthetic access$2900(Lcom/android/gallery3d/ui/PhotoView;Lcom/android/gallery3d/ui/GLCanvas;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 51
    invoke-direct {p0, p1, p2}, Lcom/android/gallery3d/ui/PhotoView;->drawVideoPlayIcon(Lcom/android/gallery3d/ui/GLCanvas;I)V

    return-void
.end method

.method static synthetic access$300(Lcom/android/gallery3d/ui/PhotoView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 51
    iget v0, p0, Lcom/android/gallery3d/ui/PhotoView;->mHolding:I

    return v0
.end method

.method static synthetic access$3000(Lcom/android/gallery3d/ui/PhotoView;Lcom/android/gallery3d/ui/GLCanvas;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 51
    invoke-direct {p0, p1, p2}, Lcom/android/gallery3d/ui/PhotoView;->drawMavOverlay(Lcom/android/gallery3d/ui/GLCanvas;I)V

    return-void
.end method

.method static synthetic access$3100(Lcom/android/gallery3d/ui/PhotoView;Lcom/android/gallery3d/ui/GLCanvas;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 51
    invoke-direct {p0, p1}, Lcom/android/gallery3d/ui/PhotoView;->drawLoadingFailMessage(Lcom/android/gallery3d/ui/GLCanvas;)V

    return-void
.end method

.method static synthetic access$3200(Lcom/android/gallery3d/ui/PhotoView;)Lcom/android/gallery3d/ui/FaceIndicator;
    .locals 1
    .parameter "x0"

    .prologue
    .line 51
    iget-object v0, p0, Lcom/android/gallery3d/ui/PhotoView;->mFaceIndicator:Lcom/android/gallery3d/ui/FaceIndicator;

    return-object v0
.end method

.method static synthetic access$3300(Lcom/android/gallery3d/ui/PhotoView;Lcom/android/gallery3d/ui/GLCanvas;Landroid/graphics/Rect;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 51
    invoke-direct {p0, p1, p2}, Lcom/android/gallery3d/ui/PhotoView;->drawPlaceHolder(Lcom/android/gallery3d/ui/GLCanvas;Landroid/graphics/Rect;)V

    return-void
.end method

.method static synthetic access$3400(Lcom/android/gallery3d/ui/PhotoView;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 51
    iget-boolean v0, p0, Lcom/android/gallery3d/ui/PhotoView;->mFilmMode:Z

    return v0
.end method

.method static synthetic access$3500(Lcom/android/gallery3d/ui/PhotoView;II)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 51
    invoke-direct {p0, p1, p2}, Lcom/android/gallery3d/ui/PhotoView;->switchToHitPicture(II)V

    return-void
.end method

.method static synthetic access$3600(Lcom/android/gallery3d/ui/PhotoView;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 51
    iget-object v0, p0, Lcom/android/gallery3d/ui/PhotoView;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$3700(Lcom/android/gallery3d/ui/PhotoView;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 51
    iget-boolean v0, p0, Lcom/android/gallery3d/ui/PhotoView;->mMeteringDrag:Z

    return v0
.end method

.method static synthetic access$3702(Lcom/android/gallery3d/ui/PhotoView;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 51
    iput-boolean p1, p0, Lcom/android/gallery3d/ui/PhotoView;->mMeteringDrag:Z

    return p1
.end method

.method static synthetic access$372(Lcom/android/gallery3d/ui/PhotoView;I)I
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 51
    iget v0, p0, Lcom/android/gallery3d/ui/PhotoView;->mHolding:I

    and-int/2addr v0, p1

    iput v0, p0, Lcom/android/gallery3d/ui/PhotoView;->mHolding:I

    return v0
.end method

.method static synthetic access$376(Lcom/android/gallery3d/ui/PhotoView;I)I
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 51
    iget v0, p0, Lcom/android/gallery3d/ui/PhotoView;->mHolding:I

    or-int/2addr v0, p1

    iput v0, p0, Lcom/android/gallery3d/ui/PhotoView;->mHolding:I

    return v0
.end method

.method static synthetic access$3800(Lcom/android/gallery3d/ui/PhotoView;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 51
    iget-boolean v0, p0, Lcom/android/gallery3d/ui/PhotoView;->mTouchBoxDeletable:Z

    return v0
.end method

.method static synthetic access$3802(Lcom/android/gallery3d/ui/PhotoView;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 51
    iput-boolean p1, p0, Lcom/android/gallery3d/ui/PhotoView;->mTouchBoxDeletable:Z

    return p1
.end method

.method static synthetic access$3900(Lcom/android/gallery3d/ui/PhotoView;FF)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 51
    invoke-direct {p0, p1, p2}, Lcom/android/gallery3d/ui/PhotoView;->swipeImages(FF)Z

    move-result v0

    return v0
.end method

.method static synthetic access$400(Lcom/android/gallery3d/ui/PhotoView;)Lcom/android/gallery3d/ui/EdgeView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 51
    iget-object v0, p0, Lcom/android/gallery3d/ui/PhotoView;->mEdgeView:Lcom/android/gallery3d/ui/EdgeView;

    return-object v0
.end method

.method static synthetic access$4000(Lcom/android/gallery3d/ui/PhotoView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 51
    iget v0, p0, Lcom/android/gallery3d/ui/PhotoView;->mTouchBoxIndex:I

    return v0
.end method

.method static synthetic access$4002(Lcom/android/gallery3d/ui/PhotoView;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 51
    iput p1, p0, Lcom/android/gallery3d/ui/PhotoView;->mTouchBoxIndex:I

    return p1
.end method

.method static synthetic access$4102(Lcom/android/gallery3d/ui/PhotoView;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 51
    iput p1, p0, Lcom/android/gallery3d/ui/PhotoView;->mUndoIndexHint:I

    return p1
.end method

.method static synthetic access$4200(Lcom/android/gallery3d/ui/PhotoView;)Lcom/android/gallery3d/ui/PhotoView$MyGestureListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 51
    iget-object v0, p0, Lcom/android/gallery3d/ui/PhotoView;->mGestureListener:Lcom/android/gallery3d/ui/PhotoView$MyGestureListener;

    return-object v0
.end method

.method static synthetic access$4300(Lcom/android/gallery3d/ui/PhotoView;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 51
    invoke-direct {p0}, Lcom/android/gallery3d/ui/PhotoView;->snapToNeighborImage()Z

    move-result v0

    return v0
.end method

.method static synthetic access$4402(Lcom/android/gallery3d/ui/PhotoView;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 51
    iput-boolean p1, p0, Lcom/android/gallery3d/ui/PhotoView;->mIsDelete:Z

    return p1
.end method

.method static synthetic access$4500(Lcom/android/gallery3d/ui/PhotoView;)Lcom/android/gallery3d/anim/ClickScaleTransition;
    .locals 1
    .parameter "x0"

    .prologue
    .line 51
    iget-object v0, p0, Lcom/android/gallery3d/ui/PhotoView;->mClickScaleTransition:Lcom/android/gallery3d/anim/ClickScaleTransition;

    return-object v0
.end method

.method static synthetic access$4600(Lcom/android/gallery3d/ui/PhotoView;)Lcom/android/gallery3d/anim/ClickDeleteTransition;
    .locals 1
    .parameter "x0"

    .prologue
    .line 51
    iget-object v0, p0, Lcom/android/gallery3d/ui/PhotoView;->mClickDeleteTransition:Lcom/android/gallery3d/anim/ClickDeleteTransition;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/gallery3d/ui/PhotoView;)Lcom/android/gallery3d/ui/GestureRecognizer;
    .locals 1
    .parameter "x0"

    .prologue
    .line 51
    iget-object v0, p0, Lcom/android/gallery3d/ui/PhotoView;->mGestureRecognizer:Lcom/android/gallery3d/ui/GestureRecognizer;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/gallery3d/ui/PhotoView;)Lcom/android/gallery3d/ui/PositionController;
    .locals 1
    .parameter "x0"

    .prologue
    .line 51
    iget-object v0, p0, Lcom/android/gallery3d/ui/PhotoView;->mPositionController:Lcom/android/gallery3d/ui/PositionController;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/gallery3d/ui/PhotoView;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 51
    iget-boolean v0, p0, Lcom/android/gallery3d/ui/PhotoView;->mCancelExtraScalingPending:Z

    return v0
.end method

.method static synthetic access$702(Lcom/android/gallery3d/ui/PhotoView;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 51
    iput-boolean p1, p0, Lcom/android/gallery3d/ui/PhotoView;->mCancelExtraScalingPending:Z

    return p1
.end method

.method static synthetic access$800(Lcom/android/gallery3d/ui/PhotoView;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 51
    invoke-direct {p0}, Lcom/android/gallery3d/ui/PhotoView;->switchFocus()V

    return-void
.end method

.method static synthetic access$900(Lcom/android/gallery3d/ui/PhotoView;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 51
    invoke-direct {p0, p1}, Lcom/android/gallery3d/ui/PhotoView;->captureAnimationDone(I)V

    return-void
.end method

.method private static calculateMoveOutProgress(III)F
    .locals 4
    .parameter "left"
    .parameter "right"
    .parameter "viewWidth"

    .prologue
    .line 2166
    sub-int v0, p1, p0

    .line 2173
    .local v0, w:I
    if-ge v0, p2, :cond_1

    .line 2174
    div-int/lit8 v2, p2, 0x2

    div-int/lit8 v3, v0, 0x2

    sub-int v1, v2, v3

    .line 2175
    .local v1, zx:I
    if-le p0, v1, :cond_0

    .line 2176
    sub-int v2, p0, v1

    neg-int v2, v2

    int-to-float v2, v2

    sub-int v3, p2, v1

    int-to-float v3, v3

    div-float/2addr v2, v3

    .line 2196
    .end local v1           #zx:I
    :goto_0
    return v2

    .line 2178
    .restart local v1       #zx:I
    :cond_0
    sub-int v2, p0, v1

    int-to-float v2, v2

    neg-int v3, v0

    sub-int/2addr v3, v1

    int-to-float v3, v3

    div-float/2addr v2, v3

    goto :goto_0

    .line 2188
    .end local v1           #zx:I
    :cond_1
    if-lez p0, :cond_2

    .line 2189
    neg-int v2, p0

    int-to-float v2, v2

    int-to-float v3, p2

    div-float/2addr v2, v3

    goto :goto_0

    .line 2192
    :cond_2
    if-ge p1, p2, :cond_3

    .line 2193
    sub-int v2, p2, p1

    int-to-float v2, v2

    int-to-float v3, p2

    div-float/2addr v2, v3

    goto :goto_0

    .line 2196
    :cond_3
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private captureAnimationDone(I)V
    .locals 2
    .parameter "offset"

    .prologue
    const/4 v1, 0x1

    .line 2140
    iget v0, p0, Lcom/android/gallery3d/ui/PhotoView;->mHolding:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/android/gallery3d/ui/PhotoView;->mHolding:I

    .line 2141
    if-ne p1, v1, :cond_0

    iget-boolean v0, p0, Lcom/android/gallery3d/ui/PhotoView;->mFilmMode:Z

    if-nez v0, :cond_0

    .line 2143
    iget-object v0, p0, Lcom/android/gallery3d/ui/PhotoView;->mListener:Lcom/android/gallery3d/ui/PhotoView$Listener;

    invoke-interface {v0, v1}, Lcom/android/gallery3d/ui/PhotoView$Listener;->onActionBarAllowed(Z)V

    .line 2144
    iget-object v0, p0, Lcom/android/gallery3d/ui/PhotoView;->mListener:Lcom/android/gallery3d/ui/PhotoView$Listener;

    invoke-interface {v0}, Lcom/android/gallery3d/ui/PhotoView$Listener;->onActionBarWanted()V

    .line 2146
    :cond_0
    invoke-direct {p0}, Lcom/android/gallery3d/ui/PhotoView;->snapback()V

    .line 2147
    return-void
.end method

.method private checkFocusSwitching()V
    .locals 2

    .prologue
    const/4 v1, 0x3

    .line 1917
    iget-boolean v0, p0, Lcom/android/gallery3d/ui/PhotoView;->mFilmMode:Z

    if-nez v0, :cond_1

    .line 1922
    :cond_0
    :goto_0
    return-void

    .line 1918
    :cond_1
    iget-object v0, p0, Lcom/android/gallery3d/ui/PhotoView;->mHandler:Lcom/android/gallery3d/ui/SynchronizedHandler;

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/ui/SynchronizedHandler;->hasMessages(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1919
    invoke-direct {p0}, Lcom/android/gallery3d/ui/PhotoView;->switchPosition()I

    move-result v0

    if-eqz v0, :cond_0

    .line 1920
    iget-object v0, p0, Lcom/android/gallery3d/ui/PhotoView;->mHandler:Lcom/android/gallery3d/ui/SynchronizedHandler;

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/ui/SynchronizedHandler;->sendEmptyMessage(I)Z

    goto :goto_0
.end method

.method private checkHideUndoBar(I)V
    .locals 7
    .parameter "addition"

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 1708
    iget v6, p0, Lcom/android/gallery3d/ui/PhotoView;->mUndoBarState:I

    or-int/2addr v6, p1

    iput v6, p0, Lcom/android/gallery3d/ui/PhotoView;->mUndoBarState:I

    .line 1709
    iget v6, p0, Lcom/android/gallery3d/ui/PhotoView;->mUndoBarState:I

    and-int/lit8 v6, v6, 0x1

    if-nez v6, :cond_1

    .line 1717
    :cond_0
    :goto_0
    return-void

    .line 1710
    :cond_1
    iget v6, p0, Lcom/android/gallery3d/ui/PhotoView;->mUndoBarState:I

    and-int/lit8 v6, v6, 0x2

    if-eqz v6, :cond_4

    move v2, v4

    .line 1711
    .local v2, timeout:Z
    :goto_1
    iget v6, p0, Lcom/android/gallery3d/ui/PhotoView;->mUndoBarState:I

    and-int/lit8 v6, v6, 0x4

    if-eqz v6, :cond_5

    move v3, v4

    .line 1712
    .local v3, touched:Z
    :goto_2
    iget v6, p0, Lcom/android/gallery3d/ui/PhotoView;->mUndoBarState:I

    and-int/lit8 v6, v6, 0x8

    if-eqz v6, :cond_6

    move v1, v4

    .line 1713
    .local v1, fullCamera:Z
    :goto_3
    iget v6, p0, Lcom/android/gallery3d/ui/PhotoView;->mUndoBarState:I

    and-int/lit8 v6, v6, 0x10

    if-eqz v6, :cond_7

    move v0, v4

    .line 1714
    .local v0, deleteLast:Z
    :goto_4
    if-eqz v2, :cond_2

    if-nez v0, :cond_3

    :cond_2
    if-nez v1, :cond_3

    if-eqz v3, :cond_0

    .line 1715
    :cond_3
    invoke-direct {p0}, Lcom/android/gallery3d/ui/PhotoView;->hideUndoBar()V

    goto :goto_0

    .end local v0           #deleteLast:Z
    .end local v1           #fullCamera:Z
    .end local v2           #timeout:Z
    .end local v3           #touched:Z
    :cond_4
    move v2, v5

    .line 1710
    goto :goto_1

    .restart local v2       #timeout:Z
    :cond_5
    move v3, v5

    .line 1711
    goto :goto_2

    .restart local v3       #touched:Z
    :cond_6
    move v1, v5

    .line 1712
    goto :goto_3

    .restart local v1       #fullCamera:Z
    :cond_7
    move v0, v5

    .line 1713
    goto :goto_4
.end method

.method private drawLoadingFailMessage(Lcom/android/gallery3d/ui/GLCanvas;)V
    .locals 3
    .parameter "canvas"

    .prologue
    .line 1065
    iget-object v0, p0, Lcom/android/gallery3d/ui/PhotoView;->mNoThumbnailText:Lcom/android/gallery3d/ui/StringTexture;

    .line 1066
    .local v0, m:Lcom/android/gallery3d/ui/StringTexture;
    invoke-virtual {v0}, Lcom/android/gallery3d/ui/StringTexture;->getWidth()I

    move-result v1

    neg-int v1, v1

    div-int/lit8 v1, v1, 0x2

    invoke-virtual {v0}, Lcom/android/gallery3d/ui/StringTexture;->getHeight()I

    move-result v2

    neg-int v2, v2

    div-int/lit8 v2, v2, 0x2

    invoke-virtual {v0, p1, v1, v2}, Lcom/android/gallery3d/ui/StringTexture;->draw(Lcom/android/gallery3d/ui/GLCanvas;II)V

    .line 1067
    return-void
.end method

.method private drawMavOverlay(Lcom/android/gallery3d/ui/GLCanvas;I)V
    .locals 6
    .parameter "canvas"
    .parameter "side"

    .prologue
    .line 2343
    iget-boolean v0, p0, Lcom/android/gallery3d/ui/PhotoView;->mIsMavLoadingFinished:Z

    if-eqz v0, :cond_2

    .line 2344
    div-int/lit8 v4, p2, 0x6

    .line 2345
    .local v4, s:I
    iget-object v0, p0, Lcom/android/gallery3d/ui/PhotoView;->fadeOutMavOverlay:Lcom/android/gallery3d/ui/FadeOutTexture;

    if-nez v0, :cond_0

    .line 2346
    new-instance v0, Lcom/android/gallery3d/ui/FadeOutTexture;

    iget-object v1, p0, Lcom/android/gallery3d/ui/PhotoView;->mMavOverlay:Lcom/android/gallery3d/ui/BasicTexture;

    invoke-direct {v0, v1}, Lcom/android/gallery3d/ui/FadeOutTexture;-><init>(Lcom/android/gallery3d/ui/BasicTexture;)V

    iput-object v0, p0, Lcom/android/gallery3d/ui/PhotoView;->fadeOutMavOverlay:Lcom/android/gallery3d/ui/FadeOutTexture;

    .line 2348
    :cond_0
    iget-object v0, p0, Lcom/android/gallery3d/ui/PhotoView;->fadeOutMavOverlay:Lcom/android/gallery3d/ui/FadeOutTexture;

    neg-int v1, v4

    div-int/lit8 v2, v1, 0x2

    neg-int v1, v4

    div-int/lit8 v3, v1, 0x2

    move-object v1, p1

    move v5, v4

    invoke-virtual/range {v0 .. v5}, Lcom/android/gallery3d/ui/FadeOutTexture;->draw(Lcom/android/gallery3d/ui/GLCanvas;IIII)V

    .line 2349
    iget-object v0, p0, Lcom/android/gallery3d/ui/PhotoView;->fadeOutMavOverlay:Lcom/android/gallery3d/ui/FadeOutTexture;

    invoke-virtual {v0}, Lcom/android/gallery3d/ui/FadeOutTexture;->isAnimating()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2350
    invoke-virtual {p0}, Lcom/android/gallery3d/ui/PhotoView;->invalidate()V

    .line 2358
    :cond_1
    :goto_0
    return-void

    .line 2353
    .end local v4           #s:I
    :cond_2
    div-int/lit8 v4, p2, 0x6

    .line 2355
    .restart local v4       #s:I
    iget-object v0, p0, Lcom/android/gallery3d/ui/PhotoView;->mMavOverlay:Lcom/android/gallery3d/ui/BasicTexture;

    neg-int v1, v4

    div-int/lit8 v2, v1, 0x2

    neg-int v1, v4

    div-int/lit8 v3, v1, 0x2

    move-object v1, p1

    move v5, v4

    invoke-virtual/range {v0 .. v5}, Lcom/android/gallery3d/ui/BasicTexture;->draw(Lcom/android/gallery3d/ui/GLCanvas;IIII)V

    .line 2356
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/gallery3d/ui/PhotoView;->fadeOutMavOverlay:Lcom/android/gallery3d/ui/FadeOutTexture;

    goto :goto_0
.end method

.method private drawPlaceHolder(Lcom/android/gallery3d/ui/GLCanvas;Landroid/graphics/Rect;)V
    .locals 6
    .parameter "canvas"
    .parameter "r"

    .prologue
    .line 1047
    iget v0, p2, Landroid/graphics/Rect;->left:I

    int-to-float v1, v0

    iget v0, p2, Landroid/graphics/Rect;->top:I

    int-to-float v2, v0

    invoke-virtual {p2}, Landroid/graphics/Rect;->width()I

    move-result v0

    int-to-float v3, v0

    invoke-virtual {p2}, Landroid/graphics/Rect;->height()I

    move-result v0

    int-to-float v4, v0

    iget v5, p0, Lcom/android/gallery3d/ui/PhotoView;->mPlaceholderColor:I

    move-object v0, p1

    invoke-interface/range {v0 .. v5}, Lcom/android/gallery3d/ui/GLCanvas;->fillRect(FFFFI)V

    .line 1048
    return-void
.end method

.method private drawVideoPlayIcon(Lcom/android/gallery3d/ui/GLCanvas;I)V
    .locals 7
    .parameter "canvas"
    .parameter "side"

    .prologue
    .line 1053
    iget-object v4, p0, Lcom/android/gallery3d/ui/PhotoView;->mVideoPlayIconBg:Lcom/android/gallery3d/ui/Texture;

    invoke-interface {v4}, Lcom/android/gallery3d/ui/Texture;->getWidth()I

    move-result v3

    .line 1054
    .local v3, wb:I
    iget-object v4, p0, Lcom/android/gallery3d/ui/PhotoView;->mVideoPlayIconBg:Lcom/android/gallery3d/ui/Texture;

    invoke-interface {v4}, Lcom/android/gallery3d/ui/Texture;->getHeight()I

    move-result v1

    .line 1055
    .local v1, hb:I
    iget-object v4, p0, Lcom/android/gallery3d/ui/PhotoView;->mVideoPlayIcon:Lcom/android/gallery3d/ui/Texture;

    invoke-interface {v4}, Lcom/android/gallery3d/ui/Texture;->getWidth()I

    move-result v2

    .line 1056
    .local v2, w:I
    iget-object v4, p0, Lcom/android/gallery3d/ui/PhotoView;->mVideoPlayIcon:Lcom/android/gallery3d/ui/Texture;

    invoke-interface {v4}, Lcom/android/gallery3d/ui/Texture;->getHeight()I

    move-result v0

    .line 1058
    .local v0, h:I
    iget-object v4, p0, Lcom/android/gallery3d/ui/PhotoView;->mVideoPlayIconBg:Lcom/android/gallery3d/ui/Texture;

    neg-int v5, v3

    div-int/lit8 v5, v5, 0x2

    neg-int v6, v1

    div-int/lit8 v6, v6, 0x2

    invoke-interface {v4, p1, v5, v6}, Lcom/android/gallery3d/ui/Texture;->draw(Lcom/android/gallery3d/ui/GLCanvas;II)V

    .line 1059
    iget-object v4, p0, Lcom/android/gallery3d/ui/PhotoView;->mVideoPlayIcon:Lcom/android/gallery3d/ui/Texture;

    neg-int v5, v2

    div-int/lit8 v5, v5, 0x2

    neg-int v6, v0

    div-int/lit8 v6, v6, 0x2

    invoke-interface {v4, p1, v5, v6}, Lcom/android/gallery3d/ui/Texture;->draw(Lcom/android/gallery3d/ui/GLCanvas;II)V

    .line 1061
    return-void
.end method

.method private static gapToSide(II)I
    .locals 2
    .parameter "imageWidth"
    .parameter "viewWidth"

    .prologue
    .line 2061
    const/4 v0, 0x0

    sub-int v1, p1, p0

    div-int/lit8 v1, v1, 0x2

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    return v0
.end method

.method private getOffsetAlpha(F)F
    .locals 3
    .parameter "offset"

    .prologue
    const/high16 v2, 0x3f80

    .line 2244
    const/high16 v1, 0x3f00

    div-float/2addr p1, v1

    .line 2245
    const/4 v1, 0x0

    cmpl-float v1, p1, v1

    if-lez v1, :cond_0

    sub-float v0, v2, p1

    .line 2246
    .local v0, alpha:F
    :goto_0
    const v1, 0x3cf5c28f

    invoke-static {v0, v1, v2}, Lcom/android/gallery3d/common/Utils;->clamp(FFF)F

    move-result v1

    return v1

    .line 2245
    .end local v0           #alpha:F
    :cond_0
    add-float v0, v2, p1

    goto :goto_0
.end method

.method private getPanoramaRotation()I
    .locals 7

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 623
    iget-object v5, p0, Lcom/android/gallery3d/ui/PhotoView;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v5

    iget v2, v5, Landroid/content/res/Configuration;->orientation:I

    .line 624
    .local v2, orientation:I
    if-ne v2, v3, :cond_1

    iget v5, p0, Lcom/android/gallery3d/ui/PhotoView;->mDisplayRotation:I

    const/16 v6, 0x5a

    if-eq v5, v6, :cond_0

    iget v5, p0, Lcom/android/gallery3d/ui/PhotoView;->mDisplayRotation:I

    const/16 v6, 0x10e

    if-ne v5, v6, :cond_1

    :cond_0
    move v1, v3

    .line 626
    .local v1, invertPortrait:Z
    :goto_0
    iget v5, p0, Lcom/android/gallery3d/ui/PhotoView;->mDisplayRotation:I

    const/16 v6, 0xb4

    if-lt v5, v6, :cond_2

    move v0, v3

    .line 627
    .local v0, invert:Z
    :goto_1
    if-eq v0, v1, :cond_3

    .line 628
    iget v3, p0, Lcom/android/gallery3d/ui/PhotoView;->mCompensation:I

    add-int/lit16 v3, v3, 0xb4

    rem-int/lit16 v3, v3, 0x168

    .line 630
    :goto_2
    return v3

    .end local v0           #invert:Z
    .end local v1           #invertPortrait:Z
    :cond_1
    move v1, v4

    .line 624
    goto :goto_0

    .restart local v1       #invertPortrait:Z
    :cond_2
    move v0, v4

    .line 626
    goto :goto_1

    .line 630
    .restart local v0       #invert:Z
    :cond_3
    iget v3, p0, Lcom/android/gallery3d/ui/PhotoView;->mCompensation:I

    goto :goto_2
.end method

.method private static getRotated(III)I
    .locals 1
    .parameter "degree"
    .parameter "original"
    .parameter "theother"

    .prologue
    .line 1070
    rem-int/lit16 v0, p0, 0xb4

    if-nez v0, :cond_0

    .end local p1
    :goto_0
    return p1

    .restart local p1
    :cond_0
    move p1, p2

    goto :goto_0
.end method

.method private getScrollAlpha(F)F
    .locals 3
    .parameter "scrollProgress"

    .prologue
    const/high16 v0, 0x3f80

    .line 2202
    const/4 v1, 0x0

    cmpg-float v1, p1, v1

    if-gez v1, :cond_0

    iget-object v1, p0, Lcom/android/gallery3d/ui/PhotoView;->mAlphaInterpolator:Landroid/view/animation/AccelerateInterpolator;

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result v2

    sub-float/2addr v0, v2

    invoke-virtual {v1, v0}, Landroid/view/animation/AccelerateInterpolator;->getInterpolation(F)F

    move-result v0

    :cond_0
    return v0
.end method

.method private getScrollScale(F)F
    .locals 4
    .parameter "scrollProgress"

    .prologue
    .line 2209
    iget-object v2, p0, Lcom/android/gallery3d/ui/PhotoView;->mScaleInterpolator:Lcom/android/gallery3d/ui/PhotoView$ZInterpolator;

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result v3

    invoke-virtual {v2, v3}, Lcom/android/gallery3d/ui/PhotoView$ZInterpolator;->getInterpolation(F)F

    move-result v0

    .line 2211
    .local v0, interpolatedProgress:F
    const/high16 v2, 0x3f80

    sub-float/2addr v2, v0

    sget v3, Lcom/android/gallery3d/ui/PhotoView;->TRANSITION_SCALE_FACTOR:F

    mul-float/2addr v3, v0

    add-float v1, v2, v3

    .line 2213
    .local v1, scale:F
    return v1
.end method

.method private hideUndoBar()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 1691
    iget-object v0, p0, Lcom/android/gallery3d/ui/PhotoView;->mHandler:Lcom/android/gallery3d/ui/SynchronizedHandler;

    const/4 v1, 0x7

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/ui/SynchronizedHandler;->removeMessages(I)V

    .line 1692
    iget-object v0, p0, Lcom/android/gallery3d/ui/PhotoView;->mListener:Lcom/android/gallery3d/ui/PhotoView$Listener;

    invoke-interface {v0}, Lcom/android/gallery3d/ui/PhotoView$Listener;->onCommitDeleteImage()V

    .line 1693
    iget-object v0, p0, Lcom/android/gallery3d/ui/PhotoView;->mUndoBar:Lcom/android/gallery3d/ui/UndoBarView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/ui/UndoBarView;->animateVisibility(I)V

    .line 1694
    iput v2, p0, Lcom/android/gallery3d/ui/PhotoView;->mUndoBarState:I

    .line 1695
    const v0, 0x7fffffff

    iput v0, p0, Lcom/android/gallery3d/ui/PhotoView;->mUndoIndexHint:I

    .line 1696
    iget-object v0, p0, Lcom/android/gallery3d/ui/PhotoView;->mListener:Lcom/android/gallery3d/ui/PhotoView$Listener;

    invoke-interface {v0, v2}, Lcom/android/gallery3d/ui/PhotoView$Listener;->onUndoBarVisibilityChanged(Z)V

    .line 1697
    return-void
.end method

.method private static interpolate(FFF)F
    .locals 1
    .parameter "ratio"
    .parameter "from"
    .parameter "to"

    .prologue
    .line 2238
    sub-float v0, p2, p1

    mul-float/2addr v0, p0

    mul-float/2addr v0, p0

    add-float/2addr v0, p1

    return v0
.end method

.method private parseGifIfNecessary(Lcom/android/gallery3d/data/MediaItem;Lcom/android/gallery3d/ui/ScreenNail;)V
    .locals 3
    .parameter "item"
    .parameter "screenNail"

    .prologue
    .line 2304
    iget-object v0, p0, Lcom/android/gallery3d/ui/PhotoView;->mGifThread:Lcom/android/gallery3d/ui/GifParseThread;

    if-eqz v0, :cond_0

    .line 2305
    iget-object v0, p0, Lcom/android/gallery3d/ui/PhotoView;->mGifThread:Lcom/android/gallery3d/ui/GifParseThread;

    invoke-virtual {v0}, Lcom/android/gallery3d/ui/GifParseThread;->interrupt()V

    .line 2306
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/gallery3d/ui/PhotoView;->mGifThread:Lcom/android/gallery3d/ui/GifParseThread;

    .line 2308
    :cond_0
    if-eqz p1, :cond_1

    const-string v0, "image/gif"

    invoke-virtual {p1}, Lcom/android/gallery3d/data/MediaItem;->getMimeType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2309
    new-instance v0, Lcom/android/gallery3d/ui/GifParseThread;

    iget-object v1, p0, Lcom/android/gallery3d/ui/PhotoView;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/gallery3d/ui/PhotoView;->mTileView:Lcom/android/gallery3d/ui/TileImageView;

    invoke-direct {v0, v1, p1, v2, p2}, Lcom/android/gallery3d/ui/GifParseThread;-><init>(Landroid/content/Context;Lcom/android/gallery3d/data/MediaItem;Lcom/android/gallery3d/ui/TileImageView;Lcom/android/gallery3d/ui/ScreenNail;)V

    iput-object v0, p0, Lcom/android/gallery3d/ui/PhotoView;->mGifThread:Lcom/android/gallery3d/ui/GifParseThread;

    .line 2310
    iget-object v0, p0, Lcom/android/gallery3d/ui/PhotoView;->mGifThread:Lcom/android/gallery3d/ui/GifParseThread;

    invoke-virtual {v0}, Lcom/android/gallery3d/ui/GifParseThread;->start()V

    .line 2312
    :cond_1
    return-void
.end method

.method private setPictureSize(I)V
    .locals 4
    .parameter "index"

    .prologue
    .line 523
    iget-object v1, p0, Lcom/android/gallery3d/ui/PhotoView;->mPictures:Lcom/android/gallery3d/util/RangeArray;

    invoke-virtual {v1, p1}, Lcom/android/gallery3d/util/RangeArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/gallery3d/ui/PhotoView$Picture;

    .line 524
    .local v0, p:Lcom/android/gallery3d/ui/PhotoView$Picture;
    iget-object v2, p0, Lcom/android/gallery3d/ui/PhotoView;->mPositionController:Lcom/android/gallery3d/ui/PositionController;

    invoke-interface {v0}, Lcom/android/gallery3d/ui/PhotoView$Picture;->getSize()Lcom/android/gallery3d/ui/PhotoView$Size;

    move-result-object v3

    if-nez p1, :cond_0

    invoke-interface {v0}, Lcom/android/gallery3d/ui/PhotoView$Picture;->isCamera()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/gallery3d/ui/PhotoView;->mCameraRect:Landroid/graphics/Rect;

    :goto_0
    invoke-virtual {v2, p1, v3, v1}, Lcom/android/gallery3d/ui/PositionController;->setImageSize(ILcom/android/gallery3d/ui/PhotoView$Size;Landroid/graphics/Rect;)V

    .line 526
    return-void

    .line 524
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private showUndoBar(Z)V
    .locals 5
    .parameter "deleteLast"

    .prologue
    const/4 v4, 0x7

    const/4 v3, 0x1

    .line 1682
    iget-object v0, p0, Lcom/android/gallery3d/ui/PhotoView;->mHandler:Lcom/android/gallery3d/ui/SynchronizedHandler;

    invoke-virtual {v0, v4}, Lcom/android/gallery3d/ui/SynchronizedHandler;->removeMessages(I)V

    .line 1683
    iput v3, p0, Lcom/android/gallery3d/ui/PhotoView;->mUndoBarState:I

    .line 1684
    if-eqz p1, :cond_0

    iget v0, p0, Lcom/android/gallery3d/ui/PhotoView;->mUndoBarState:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lcom/android/gallery3d/ui/PhotoView;->mUndoBarState:I

    .line 1685
    :cond_0
    iget-object v0, p0, Lcom/android/gallery3d/ui/PhotoView;->mUndoBar:Lcom/android/gallery3d/ui/UndoBarView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/ui/UndoBarView;->animateVisibility(I)V

    .line 1686
    iget-object v0, p0, Lcom/android/gallery3d/ui/PhotoView;->mHandler:Lcom/android/gallery3d/ui/SynchronizedHandler;

    const-wide/16 v1, 0xbb8

    invoke-virtual {v0, v4, v1, v2}, Lcom/android/gallery3d/ui/SynchronizedHandler;->sendEmptyMessageDelayed(IJ)Z

    .line 1687
    iget-object v0, p0, Lcom/android/gallery3d/ui/PhotoView;->mListener:Lcom/android/gallery3d/ui/PhotoView$Listener;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/gallery3d/ui/PhotoView;->mListener:Lcom/android/gallery3d/ui/PhotoView$Listener;

    invoke-interface {v0, v3}, Lcom/android/gallery3d/ui/PhotoView$Listener;->onUndoBarVisibilityChanged(Z)V

    .line 1688
    :cond_1
    return-void
.end method

.method private slideToNextPicture()Z
    .locals 1

    .prologue
    .line 2041
    iget v0, p0, Lcom/android/gallery3d/ui/PhotoView;->mNextBound:I

    if-gtz v0, :cond_0

    const/4 v0, 0x0

    .line 2047
    :goto_0
    return v0

    .line 2042
    :cond_0
    invoke-direct {p0}, Lcom/android/gallery3d/ui/PhotoView;->switchToNextImage()V

    .line 2043
    iget-object v0, p0, Lcom/android/gallery3d/ui/PhotoView;->mPositionController:Lcom/android/gallery3d/ui/PositionController;

    invoke-virtual {v0}, Lcom/android/gallery3d/ui/PositionController;->startHorizontalSlide()V

    .line 2044
    invoke-virtual {p0}, Lcom/android/gallery3d/ui/PhotoView;->getFilmMode()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/gallery3d/ui/PhotoView;->mListener:Lcom/android/gallery3d/ui/PhotoView$Listener;

    if-eqz v0, :cond_1

    .line 2045
    iget-object v0, p0, Lcom/android/gallery3d/ui/PhotoView;->mListener:Lcom/android/gallery3d/ui/PhotoView$Listener;

    invoke-interface {v0}, Lcom/android/gallery3d/ui/PhotoView$Listener;->onActionBarNotWanted()V

    .line 2047
    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private slideToPrevPicture()Z
    .locals 1

    .prologue
    .line 2051
    iget v0, p0, Lcom/android/gallery3d/ui/PhotoView;->mPrevBound:I

    if-ltz v0, :cond_0

    const/4 v0, 0x0

    .line 2057
    :goto_0
    return v0

    .line 2052
    :cond_0
    invoke-direct {p0}, Lcom/android/gallery3d/ui/PhotoView;->switchToPrevImage()V

    .line 2053
    iget-object v0, p0, Lcom/android/gallery3d/ui/PhotoView;->mPositionController:Lcom/android/gallery3d/ui/PositionController;

    invoke-virtual {v0}, Lcom/android/gallery3d/ui/PositionController;->startHorizontalSlide()V

    .line 2054
    invoke-virtual {p0}, Lcom/android/gallery3d/ui/PhotoView;->getFilmMode()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/gallery3d/ui/PhotoView;->mListener:Lcom/android/gallery3d/ui/PhotoView$Listener;

    if-eqz v0, :cond_1

    .line 2055
    iget-object v0, p0, Lcom/android/gallery3d/ui/PhotoView;->mListener:Lcom/android/gallery3d/ui/PhotoView$Listener;

    invoke-interface {v0}, Lcom/android/gallery3d/ui/PhotoView$Listener;->onActionBarNotWanted()V

    .line 2057
    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private snapToNeighborImage()Z
    .locals 6

    .prologue
    const/4 v4, 0x0

    .line 2024
    iget-object v5, p0, Lcom/android/gallery3d/ui/PhotoView;->mPositionController:Lcom/android/gallery3d/ui/PositionController;

    invoke-virtual {v5, v4}, Lcom/android/gallery3d/ui/PositionController;->getPosition(I)Landroid/graphics/Rect;

    move-result-object v1

    .line 2025
    .local v1, r:Landroid/graphics/Rect;
    invoke-virtual {p0}, Lcom/android/gallery3d/ui/PhotoView;->getWidth()I

    move-result v3

    .line 2027
    .local v3, viewW:I
    div-int/lit8 v0, v3, 0x5

    .line 2028
    .local v0, moveThreshold:I
    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v5

    invoke-static {v5, v3}, Lcom/android/gallery3d/ui/PhotoView;->gapToSide(II)I

    move-result v5

    add-int v2, v0, v5

    .line 2031
    .local v2, threshold:I
    iget v5, v1, Landroid/graphics/Rect;->right:I

    sub-int v5, v3, v5

    if-le v5, v2, :cond_1

    .line 2032
    invoke-direct {p0}, Lcom/android/gallery3d/ui/PhotoView;->slideToNextPicture()Z

    move-result v4

    .line 2037
    :cond_0
    :goto_0
    return v4

    .line 2033
    :cond_1
    iget v5, v1, Landroid/graphics/Rect;->left:I

    if-le v5, v2, :cond_0

    .line 2034
    invoke-direct {p0}, Lcom/android/gallery3d/ui/PhotoView;->slideToPrevPicture()Z

    move-result v4

    goto :goto_0
.end method

.method private snapback()V
    .locals 1

    .prologue
    .line 2017
    iget v0, p0, Lcom/android/gallery3d/ui/PhotoView;->mHolding:I

    and-int/lit8 v0, v0, -0x5

    if-eqz v0, :cond_1

    .line 2021
    :cond_0
    :goto_0
    return-void

    .line 2018
    :cond_1
    iget-boolean v0, p0, Lcom/android/gallery3d/ui/PhotoView;->mFilmMode:Z

    if-nez v0, :cond_2

    invoke-direct {p0}, Lcom/android/gallery3d/ui/PhotoView;->snapToNeighborImage()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2019
    :cond_2
    iget-object v0, p0, Lcom/android/gallery3d/ui/PhotoView;->mPositionController:Lcom/android/gallery3d/ui/PositionController;

    invoke-virtual {v0}, Lcom/android/gallery3d/ui/PositionController;->snapback()V

    goto :goto_0
.end method

.method private swipeImages(FF)Z
    .locals 6
    .parameter "velocityX"
    .parameter "velocityY"

    .prologue
    const/4 v3, 0x0

    .line 1991
    iget-boolean v4, p0, Lcom/android/gallery3d/ui/PhotoView;->mFilmMode:Z

    if-eqz v4, :cond_1

    .line 2013
    :cond_0
    :goto_0
    return v3

    .line 1995
    :cond_1
    iget-object v0, p0, Lcom/android/gallery3d/ui/PhotoView;->mPositionController:Lcom/android/gallery3d/ui/PositionController;

    .line 1996
    .local v0, controller:Lcom/android/gallery3d/ui/PositionController;
    invoke-virtual {v0}, Lcom/android/gallery3d/ui/PositionController;->isAtMinimalScale()Z

    move-result v2

    .line 1997
    .local v2, isMinimal:Z
    invoke-virtual {v0}, Lcom/android/gallery3d/ui/PositionController;->getImageAtEdges()I

    move-result v1

    .line 1998
    .local v1, edges:I
    if-nez v2, :cond_2

    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    move-result v4

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result v5

    cmpl-float v4, v4, v5

    if-lez v4, :cond_2

    .line 1999
    and-int/lit8 v4, v1, 0x4

    if-eqz v4, :cond_0

    and-int/lit8 v4, v1, 0x8

    if-eqz v4, :cond_0

    .line 2005
    :cond_2
    const/high16 v4, -0x3c6a

    cmpg-float v4, p1, v4

    if-gez v4, :cond_4

    if-nez v2, :cond_3

    and-int/lit8 v4, v1, 0x2

    if-eqz v4, :cond_4

    .line 2007
    :cond_3
    invoke-direct {p0}, Lcom/android/gallery3d/ui/PhotoView;->slideToNextPicture()Z

    move-result v3

    goto :goto_0

    .line 2008
    :cond_4
    const/high16 v4, 0x4396

    cmpl-float v4, p1, v4

    if-lez v4, :cond_0

    if-nez v2, :cond_5

    and-int/lit8 v4, v1, 0x1

    if-eqz v4, :cond_0

    .line 2010
    :cond_5
    invoke-direct {p0}, Lcom/android/gallery3d/ui/PhotoView;->slideToPrevPicture()Z

    move-result v3

    goto :goto_0
.end method

.method private switchFocus()V
    .locals 1

    .prologue
    .line 1926
    iget v0, p0, Lcom/android/gallery3d/ui/PhotoView;->mHolding:I

    if-eqz v0, :cond_0

    .line 1935
    :goto_0
    return-void

    .line 1927
    :cond_0
    invoke-direct {p0}, Lcom/android/gallery3d/ui/PhotoView;->switchPosition()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    goto :goto_0

    .line 1929
    :pswitch_1
    invoke-direct {p0}, Lcom/android/gallery3d/ui/PhotoView;->switchToPrevImage()V

    goto :goto_0

    .line 1932
    :pswitch_2
    invoke-direct {p0}, Lcom/android/gallery3d/ui/PhotoView;->switchToNextImage()V

    goto :goto_0

    .line 1927
    nop

    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method private switchPosition()I
    .locals 11

    .prologue
    const/4 v8, 0x1

    const/4 v9, 0x0

    const/4 v7, -0x1

    .line 1940
    iget-object v10, p0, Lcom/android/gallery3d/ui/PhotoView;->mPositionController:Lcom/android/gallery3d/ui/PositionController;

    invoke-virtual {v10, v9}, Lcom/android/gallery3d/ui/PositionController;->getPosition(I)Landroid/graphics/Rect;

    move-result-object v1

    .line 1941
    .local v1, curr:Landroid/graphics/Rect;
    invoke-virtual {p0}, Lcom/android/gallery3d/ui/PhotoView;->getWidth()I

    move-result v10

    div-int/lit8 v0, v10, 0x2

    .line 1943
    .local v0, center:I
    iget v10, v1, Landroid/graphics/Rect;->left:I

    if-le v10, v0, :cond_0

    iget v10, p0, Lcom/android/gallery3d/ui/PhotoView;->mPrevBound:I

    if-gez v10, :cond_0

    .line 1944
    iget-object v8, p0, Lcom/android/gallery3d/ui/PhotoView;->mPositionController:Lcom/android/gallery3d/ui/PositionController;

    invoke-virtual {v8, v7}, Lcom/android/gallery3d/ui/PositionController;->getPosition(I)Landroid/graphics/Rect;

    move-result-object v5

    .line 1945
    .local v5, prev:Landroid/graphics/Rect;
    iget v8, v1, Landroid/graphics/Rect;->left:I

    sub-int v2, v8, v0

    .line 1946
    .local v2, currDist:I
    iget v8, v5, Landroid/graphics/Rect;->right:I

    sub-int v6, v0, v8

    .line 1947
    .local v6, prevDist:I
    if-ge v6, v2, :cond_1

    .line 1959
    .end local v2           #currDist:I
    .end local v5           #prev:Landroid/graphics/Rect;
    .end local v6           #prevDist:I
    :goto_0
    return v7

    .line 1950
    :cond_0
    iget v7, v1, Landroid/graphics/Rect;->right:I

    if-ge v7, v0, :cond_1

    iget v7, p0, Lcom/android/gallery3d/ui/PhotoView;->mNextBound:I

    if-lez v7, :cond_1

    .line 1951
    iget-object v7, p0, Lcom/android/gallery3d/ui/PhotoView;->mPositionController:Lcom/android/gallery3d/ui/PositionController;

    invoke-virtual {v7, v8}, Lcom/android/gallery3d/ui/PositionController;->getPosition(I)Landroid/graphics/Rect;

    move-result-object v3

    .line 1952
    .local v3, next:Landroid/graphics/Rect;
    iget v7, v1, Landroid/graphics/Rect;->right:I

    sub-int v2, v0, v7

    .line 1953
    .restart local v2       #currDist:I
    iget v7, v3, Landroid/graphics/Rect;->left:I

    sub-int v4, v7, v0

    .line 1954
    .local v4, nextDist:I
    if-ge v4, v2, :cond_1

    move v7, v8

    .line 1955
    goto :goto_0

    .end local v2           #currDist:I
    .end local v3           #next:Landroid/graphics/Rect;
    .end local v4           #nextDist:I
    :cond_1
    move v7, v9

    .line 1959
    goto :goto_0
.end method

.method private switchToFirstImage()V
    .locals 2

    .prologue
    .line 2081
    iget-object v0, p0, Lcom/android/gallery3d/ui/PhotoView;->mModel:Lcom/android/gallery3d/ui/PhotoView$Model;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/android/gallery3d/ui/PhotoView$Model;->moveTo(I)V

    .line 2082
    return-void
.end method

.method private switchToHitPicture(II)V
    .locals 3
    .parameter "x"
    .parameter "y"

    .prologue
    .line 1965
    iget v1, p0, Lcom/android/gallery3d/ui/PhotoView;->mPrevBound:I

    if-gez v1, :cond_1

    .line 1966
    iget-object v1, p0, Lcom/android/gallery3d/ui/PhotoView;->mPositionController:Lcom/android/gallery3d/ui/PositionController;

    const/4 v2, -0x1

    invoke-virtual {v1, v2}, Lcom/android/gallery3d/ui/PositionController;->getPosition(I)Landroid/graphics/Rect;

    move-result-object v0

    .line 1967
    .local v0, r:Landroid/graphics/Rect;
    iget v1, v0, Landroid/graphics/Rect;->right:I

    if-lt v1, p1, :cond_1

    .line 1968
    invoke-direct {p0}, Lcom/android/gallery3d/ui/PhotoView;->slideToPrevPicture()Z

    .line 1980
    .end local v0           #r:Landroid/graphics/Rect;
    :cond_0
    :goto_0
    return-void

    .line 1973
    :cond_1
    iget v1, p0, Lcom/android/gallery3d/ui/PhotoView;->mNextBound:I

    if-lez v1, :cond_0

    .line 1974
    iget-object v1, p0, Lcom/android/gallery3d/ui/PhotoView;->mPositionController:Lcom/android/gallery3d/ui/PositionController;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/android/gallery3d/ui/PositionController;->getPosition(I)Landroid/graphics/Rect;

    move-result-object v0

    .line 1975
    .restart local v0       #r:Landroid/graphics/Rect;
    iget v1, v0, Landroid/graphics/Rect;->left:I

    if-gt v1, p1, :cond_0

    .line 1976
    invoke-direct {p0}, Lcom/android/gallery3d/ui/PhotoView;->slideToNextPicture()Z

    goto :goto_0
.end method

.method private switchToNextImage()V
    .locals 2

    .prologue
    .line 2073
    iget-object v0, p0, Lcom/android/gallery3d/ui/PhotoView;->mModel:Lcom/android/gallery3d/ui/PhotoView$Model;

    iget-object v1, p0, Lcom/android/gallery3d/ui/PhotoView;->mModel:Lcom/android/gallery3d/ui/PhotoView$Model;

    invoke-interface {v1}, Lcom/android/gallery3d/ui/PhotoView$Model;->getCurrentIndex()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-interface {v0, v1}, Lcom/android/gallery3d/ui/PhotoView$Model;->moveTo(I)V

    .line 2074
    return-void
.end method

.method private switchToPrevImage()V
    .locals 2

    .prologue
    .line 2077
    iget-object v0, p0, Lcom/android/gallery3d/ui/PhotoView;->mModel:Lcom/android/gallery3d/ui/PhotoView$Model;

    iget-object v1, p0, Lcom/android/gallery3d/ui/PhotoView;->mModel:Lcom/android/gallery3d/ui/PhotoView$Model;

    invoke-interface {v1}, Lcom/android/gallery3d/ui/PhotoView$Model;->getCurrentIndex()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v0, v1}, Lcom/android/gallery3d/ui/PhotoView$Model;->moveTo(I)V

    .line 2078
    return-void
.end method

.method private switchWithCaptureAnimationLocked(I)Z
    .locals 5
    .parameter "offset"

    .prologue
    const/4 v4, -0x1

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 2108
    iget v3, p0, Lcom/android/gallery3d/ui/PhotoView;->mHolding:I

    if-eqz v3, :cond_0

    .line 2136
    :goto_0
    return v1

    .line 2109
    :cond_0
    if-ne p1, v1, :cond_3

    .line 2110
    iget v3, p0, Lcom/android/gallery3d/ui/PhotoView;->mNextBound:I

    if-gtz v3, :cond_1

    move v1, v2

    goto :goto_0

    .line 2112
    :cond_1
    iget-boolean v3, p0, Lcom/android/gallery3d/ui/PhotoView;->mFilmMode:Z

    if-nez v3, :cond_2

    iget-object v3, p0, Lcom/android/gallery3d/ui/PhotoView;->mListener:Lcom/android/gallery3d/ui/PhotoView$Listener;

    invoke-interface {v3, v2}, Lcom/android/gallery3d/ui/PhotoView$Listener;->onActionBarAllowed(Z)V

    .line 2113
    :cond_2
    invoke-direct {p0}, Lcom/android/gallery3d/ui/PhotoView;->switchToNextImage()V

    .line 2114
    iget-object v3, p0, Lcom/android/gallery3d/ui/PhotoView;->mPositionController:Lcom/android/gallery3d/ui/PositionController;

    invoke-virtual {v3, v4}, Lcom/android/gallery3d/ui/PositionController;->startCaptureAnimationSlide(I)V

    .line 2133
    :goto_1
    iget v3, p0, Lcom/android/gallery3d/ui/PhotoView;->mHolding:I

    or-int/lit8 v3, v3, 0x2

    iput v3, p0, Lcom/android/gallery3d/ui/PhotoView;->mHolding:I

    .line 2134
    iget-object v3, p0, Lcom/android/gallery3d/ui/PhotoView;->mHandler:Lcom/android/gallery3d/ui/SynchronizedHandler;

    const/4 v4, 0x4

    invoke-virtual {v3, v4, p1, v2}, Lcom/android/gallery3d/ui/SynchronizedHandler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    .line 2135
    .local v0, m:Landroid/os/Message;
    iget-object v2, p0, Lcom/android/gallery3d/ui/PhotoView;->mHandler:Lcom/android/gallery3d/ui/SynchronizedHandler;

    const-wide/16 v3, 0x2bc

    invoke-virtual {v2, v0, v3, v4}, Lcom/android/gallery3d/ui/SynchronizedHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_0

    .line 2115
    .end local v0           #m:Landroid/os/Message;
    :cond_3
    if-ne p1, v4, :cond_7

    .line 2116
    iget v3, p0, Lcom/android/gallery3d/ui/PhotoView;->mPrevBound:I

    if-ltz v3, :cond_4

    move v1, v2

    goto :goto_0

    .line 2117
    :cond_4
    iget-boolean v3, p0, Lcom/android/gallery3d/ui/PhotoView;->mFilmMode:Z

    if-eqz v3, :cond_5

    invoke-virtual {p0, v2}, Lcom/android/gallery3d/ui/PhotoView;->setFilmMode(Z)V

    .line 2122
    :cond_5
    iget-object v3, p0, Lcom/android/gallery3d/ui/PhotoView;->mModel:Lcom/android/gallery3d/ui/PhotoView$Model;

    invoke-interface {v3}, Lcom/android/gallery3d/ui/PhotoView$Model;->getCurrentIndex()I

    move-result v3

    const/4 v4, 0x3

    if-le v3, v4, :cond_6

    .line 2123
    invoke-direct {p0}, Lcom/android/gallery3d/ui/PhotoView;->switchToFirstImage()V

    .line 2124
    iget-object v2, p0, Lcom/android/gallery3d/ui/PhotoView;->mPositionController:Lcom/android/gallery3d/ui/PositionController;

    invoke-virtual {v2}, Lcom/android/gallery3d/ui/PositionController;->skipToFinalPosition()V

    goto :goto_0

    .line 2128
    :cond_6
    invoke-direct {p0}, Lcom/android/gallery3d/ui/PhotoView;->switchToFirstImage()V

    .line 2129
    iget-object v3, p0, Lcom/android/gallery3d/ui/PhotoView;->mPositionController:Lcom/android/gallery3d/ui/PositionController;

    invoke-virtual {v3, v1}, Lcom/android/gallery3d/ui/PositionController;->startCaptureAnimationSlide(I)V

    goto :goto_1

    :cond_7
    move v1, v2

    .line 2131
    goto :goto_0
.end method

.method private updateActionBar()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 1616
    iget-object v1, p0, Lcom/android/gallery3d/ui/PhotoView;->mPictures:Lcom/android/gallery3d/util/RangeArray;

    invoke-virtual {v1, v2}, Lcom/android/gallery3d/util/RangeArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/gallery3d/ui/PhotoView$Picture;

    invoke-interface {v1}, Lcom/android/gallery3d/ui/PhotoView$Picture;->isCamera()Z

    move-result v0

    .line 1617
    .local v0, isCamera:Z
    if-eqz v0, :cond_1

    iget-boolean v1, p0, Lcom/android/gallery3d/ui/PhotoView;->mFilmMode:Z

    if-nez v1, :cond_1

    .line 1619
    iget-object v1, p0, Lcom/android/gallery3d/ui/PhotoView;->mListener:Lcom/android/gallery3d/ui/PhotoView$Listener;

    invoke-interface {v1, v2}, Lcom/android/gallery3d/ui/PhotoView$Listener;->onActionBarAllowed(Z)V

    .line 1624
    :cond_0
    :goto_0
    return-void

    .line 1621
    :cond_1
    iget-object v1, p0, Lcom/android/gallery3d/ui/PhotoView;->mListener:Lcom/android/gallery3d/ui/PhotoView$Listener;

    const/4 v2, 0x1

    invoke-interface {v1, v2}, Lcom/android/gallery3d/ui/PhotoView$Listener;->onActionBarAllowed(Z)V

    .line 1622
    iget-boolean v1, p0, Lcom/android/gallery3d/ui/PhotoView;->mFilmMode:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/gallery3d/ui/PhotoView;->mListener:Lcom/android/gallery3d/ui/PhotoView$Listener;

    invoke-interface {v1}, Lcom/android/gallery3d/ui/PhotoView$Listener;->onActionBarWanted()V

    goto :goto_0
.end method

.method private updateCameraRect()V
    .locals 12

    .prologue
    .line 572
    invoke-virtual {p0}, Lcom/android/gallery3d/ui/PhotoView;->getWidth()I

    move-result v6

    .line 573
    .local v6, w:I
    invoke-virtual {p0}, Lcom/android/gallery3d/ui/PhotoView;->getHeight()I

    move-result v1

    .line 574
    .local v1, h:I
    iget v7, p0, Lcom/android/gallery3d/ui/PhotoView;->mCompensation:I

    rem-int/lit16 v7, v7, 0xb4

    if-eqz v7, :cond_0

    .line 575
    move v5, v6

    .line 576
    .local v5, tmp:I
    move v6, v1

    .line 577
    move v1, v5

    .line 579
    .end local v5           #tmp:I
    :cond_0
    iget-object v7, p0, Lcom/android/gallery3d/ui/PhotoView;->mCameraRelativeFrame:Landroid/graphics/Rect;

    iget v2, v7, Landroid/graphics/Rect;->left:I

    .line 580
    .local v2, l:I
    iget-object v7, p0, Lcom/android/gallery3d/ui/PhotoView;->mCameraRelativeFrame:Landroid/graphics/Rect;

    iget v4, v7, Landroid/graphics/Rect;->top:I

    .line 581
    .local v4, t:I
    iget-object v7, p0, Lcom/android/gallery3d/ui/PhotoView;->mCameraRelativeFrame:Landroid/graphics/Rect;

    iget v3, v7, Landroid/graphics/Rect;->right:I

    .line 582
    .local v3, r:I
    iget-object v7, p0, Lcom/android/gallery3d/ui/PhotoView;->mCameraRelativeFrame:Landroid/graphics/Rect;

    iget v0, v7, Landroid/graphics/Rect;->bottom:I

    .line 585
    .local v0, b:I
    iget v7, p0, Lcom/android/gallery3d/ui/PhotoView;->mCompensation:I

    sparse-switch v7, :sswitch_data_0

    .line 592
    :goto_0
    const-string v7, "PhotoView"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "compensation = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, p0, Lcom/android/gallery3d/ui/PhotoView;->mCompensation:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", CameraRelativeFrame = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/android/gallery3d/ui/PhotoView;->mCameraRelativeFrame:Landroid/graphics/Rect;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", mCameraRect = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/android/gallery3d/ui/PhotoView;->mCameraRect:Landroid/graphics/Rect;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/android/gallery3d/ui/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 595
    return-void

    .line 586
    :sswitch_0
    iget-object v7, p0, Lcom/android/gallery3d/ui/PhotoView;->mCameraRect:Landroid/graphics/Rect;

    invoke-virtual {v7, v2, v4, v3, v0}, Landroid/graphics/Rect;->set(IIII)V

    goto :goto_0

    .line 587
    :sswitch_1
    iget-object v7, p0, Lcom/android/gallery3d/ui/PhotoView;->mCameraRect:Landroid/graphics/Rect;

    sub-int v8, v1, v0

    sub-int v9, v1, v4

    invoke-virtual {v7, v8, v2, v9, v3}, Landroid/graphics/Rect;->set(IIII)V

    goto :goto_0

    .line 588
    :sswitch_2
    iget-object v7, p0, Lcom/android/gallery3d/ui/PhotoView;->mCameraRect:Landroid/graphics/Rect;

    sub-int v8, v6, v3

    sub-int v9, v1, v0

    sub-int v10, v6, v2

    sub-int v11, v1, v4

    invoke-virtual {v7, v8, v9, v10, v11}, Landroid/graphics/Rect;->set(IIII)V

    goto :goto_0

    .line 589
    :sswitch_3
    iget-object v7, p0, Lcom/android/gallery3d/ui/PhotoView;->mCameraRect:Landroid/graphics/Rect;

    sub-int v8, v6, v3

    sub-int v9, v6, v2

    invoke-virtual {v7, v4, v8, v0, v9}, Landroid/graphics/Rect;->set(IIII)V

    goto :goto_0

    .line 585
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x5a -> :sswitch_1
        0xb4 -> :sswitch_2
        0x10e -> :sswitch_3
    .end sparse-switch
.end method


# virtual methods
.method public buildFallbackEffect(Lcom/android/gallery3d/ui/GLView;Lcom/android/gallery3d/ui/GLCanvas;)Lcom/android/gallery3d/ui/PhotoFallbackEffect;
    .locals 17
    .parameter "root"
    .parameter "canvas"

    .prologue
    .line 2262
    new-instance v12, Landroid/graphics/Rect;

    invoke-direct {v12}, Landroid/graphics/Rect;-><init>()V

    .line 2263
    .local v12, location:Landroid/graphics/Rect;
    move-object/from16 v0, p1

    move-object/from16 v1, p0

    invoke-virtual {v0, v1, v12}, Lcom/android/gallery3d/ui/GLView;->getBoundsOf(Lcom/android/gallery3d/ui/GLView;Landroid/graphics/Rect;)Z

    move-result v3

    invoke-static {v3}, Lcom/android/gallery3d/common/Utils;->assertTrue(Z)V

    .line 2265
    invoke-virtual/range {p0 .. p0}, Lcom/android/gallery3d/ui/PhotoView;->bounds()Landroid/graphics/Rect;

    move-result-object v9

    .line 2266
    .local v9, fullRect:Landroid/graphics/Rect;
    new-instance v8, Lcom/android/gallery3d/ui/PhotoFallbackEffect;

    invoke-direct {v8}, Lcom/android/gallery3d/ui/PhotoFallbackEffect;-><init>()V

    .line 2267
    .local v8, effect:Lcom/android/gallery3d/ui/PhotoFallbackEffect;
    const/4 v10, -0x3

    .local v10, i:I
    :goto_0
    const/4 v3, 0x3

    if-gt v10, v3, :cond_3

    .line 2268
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/gallery3d/ui/PhotoView;->mModel:Lcom/android/gallery3d/ui/PhotoView$Model;

    invoke-interface {v3, v10}, Lcom/android/gallery3d/ui/PhotoView$Model;->getMediaItem(I)Lcom/android/gallery3d/data/MediaItem;

    move-result-object v11

    .line 2269
    .local v11, item:Lcom/android/gallery3d/data/MediaItem;
    if-nez v11, :cond_1

    .line 2267
    :cond_0
    :goto_1
    add-int/lit8 v10, v10, 0x1

    goto :goto_0

    .line 2270
    :cond_1
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/gallery3d/ui/PhotoView;->mModel:Lcom/android/gallery3d/ui/PhotoView$Model;

    invoke-interface {v3, v10}, Lcom/android/gallery3d/ui/PhotoView$Model;->getScreenNail(I)Lcom/android/gallery3d/ui/ScreenNail;

    move-result-object v2

    .line 2271
    .local v2, sc:Lcom/android/gallery3d/ui/ScreenNail;
    instance-of v3, v2, Lcom/android/gallery3d/ui/TiledScreenNail;

    if-eqz v3, :cond_0

    move-object v3, v2

    check-cast v3, Lcom/android/gallery3d/ui/TiledScreenNail;

    invoke-virtual {v3}, Lcom/android/gallery3d/ui/TiledScreenNail;->isShowingPlaceholder()Z

    move-result v3

    if-nez v3, :cond_0

    .line 2275
    new-instance v13, Landroid/graphics/Rect;

    move-object/from16 v0, p0

    invoke-virtual {v0, v10}, Lcom/android/gallery3d/ui/PhotoView;->getPhotoRect(I)Landroid/graphics/Rect;

    move-result-object v3

    invoke-direct {v13, v3}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    .line 2276
    .local v13, rect:Landroid/graphics/Rect;
    invoke-static {v9, v13}, Landroid/graphics/Rect;->intersects(Landroid/graphics/Rect;Landroid/graphics/Rect;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 2277
    iget v3, v12, Landroid/graphics/Rect;->left:I

    iget v4, v12, Landroid/graphics/Rect;->top:I

    invoke-virtual {v13, v3, v4}, Landroid/graphics/Rect;->offset(II)V

    .line 2279
    invoke-interface {v2}, Lcom/android/gallery3d/ui/ScreenNail;->getWidth()I

    move-result v6

    .line 2280
    .local v6, width:I
    invoke-interface {v2}, Lcom/android/gallery3d/ui/ScreenNail;->getHeight()I

    move-result v7

    .line 2282
    .local v7, height:I
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/gallery3d/ui/PhotoView;->mModel:Lcom/android/gallery3d/ui/PhotoView$Model;

    invoke-interface {v3, v10}, Lcom/android/gallery3d/ui/PhotoView$Model;->getImageRotation(I)I

    move-result v14

    .line 2284
    .local v14, rotation:I
    rem-int/lit16 v3, v14, 0xb4

    if-nez v3, :cond_2

    .line 2285
    new-instance v15, Lcom/android/gallery3d/ui/RawTexture;

    const/4 v3, 0x1

    invoke-direct {v15, v6, v7, v3}, Lcom/android/gallery3d/ui/RawTexture;-><init>(IIZ)V

    .line 2286
    .local v15, texture:Lcom/android/gallery3d/ui/RawTexture;
    move-object/from16 v0, p2

    invoke-interface {v0, v15}, Lcom/android/gallery3d/ui/GLCanvas;->beginRenderTarget(Lcom/android/gallery3d/ui/RawTexture;)V

    .line 2287
    int-to-float v3, v6

    const/high16 v4, 0x4000

    div-float/2addr v3, v4

    int-to-float v4, v7

    const/high16 v5, 0x4000

    div-float/2addr v4, v5

    move-object/from16 v0, p2

    invoke-interface {v0, v3, v4}, Lcom/android/gallery3d/ui/GLCanvas;->translate(FF)V

    .line 2294
    :goto_2
    int-to-float v3, v14

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/high16 v16, 0x3f80

    move-object/from16 v0, p2

    move/from16 v1, v16

    invoke-interface {v0, v3, v4, v5, v1}, Lcom/android/gallery3d/ui/GLCanvas;->rotate(FFFF)V

    .line 2295
    neg-int v3, v6

    int-to-float v3, v3

    const/high16 v4, 0x4000

    div-float/2addr v3, v4

    neg-int v4, v7

    int-to-float v4, v4

    const/high16 v5, 0x4000

    div-float/2addr v4, v5

    move-object/from16 v0, p2

    invoke-interface {v0, v3, v4}, Lcom/android/gallery3d/ui/GLCanvas;->translate(FF)V

    .line 2296
    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object/from16 v3, p2

    invoke-interface/range {v2 .. v7}, Lcom/android/gallery3d/ui/ScreenNail;->draw(Lcom/android/gallery3d/ui/GLCanvas;IIII)V

    .line 2297
    invoke-interface/range {p2 .. p2}, Lcom/android/gallery3d/ui/GLCanvas;->endRenderTarget()V

    .line 2298
    invoke-virtual {v11}, Lcom/android/gallery3d/data/MediaItem;->getPath()Lcom/android/gallery3d/data/Path;

    move-result-object v3

    invoke-virtual {v8, v3, v13, v15, v10}, Lcom/android/gallery3d/ui/PhotoFallbackEffect;->addEntry(Lcom/android/gallery3d/data/Path;Landroid/graphics/Rect;Lcom/android/gallery3d/ui/RawTexture;I)V

    goto/16 :goto_1

    .line 2289
    .end local v15           #texture:Lcom/android/gallery3d/ui/RawTexture;
    :cond_2
    new-instance v15, Lcom/android/gallery3d/ui/RawTexture;

    const/4 v3, 0x1

    invoke-direct {v15, v7, v6, v3}, Lcom/android/gallery3d/ui/RawTexture;-><init>(IIZ)V

    .line 2290
    .restart local v15       #texture:Lcom/android/gallery3d/ui/RawTexture;
    move-object/from16 v0, p2

    invoke-interface {v0, v15}, Lcom/android/gallery3d/ui/GLCanvas;->beginRenderTarget(Lcom/android/gallery3d/ui/RawTexture;)V

    .line 2291
    int-to-float v3, v7

    const/high16 v4, 0x4000

    div-float/2addr v3, v4

    int-to-float v4, v6

    const/high16 v5, 0x4000

    div-float/2addr v4, v5

    move-object/from16 v0, p2

    invoke-interface {v0, v3, v4}, Lcom/android/gallery3d/ui/GLCanvas;->translate(FF)V

    goto :goto_2

    .line 2300
    .end local v2           #sc:Lcom/android/gallery3d/ui/ScreenNail;
    .end local v6           #width:I
    .end local v7           #height:I
    .end local v11           #item:Lcom/android/gallery3d/data/MediaItem;
    .end local v13           #rect:Landroid/graphics/Rect;
    .end local v14           #rotation:I
    .end local v15           #texture:Lcom/android/gallery3d/ui/RawTexture;
    :cond_3
    return-object v8
.end method

.method public canUndo()Z
    .locals 1

    .prologue
    .line 1720
    iget v0, p0, Lcom/android/gallery3d/ui/PhotoView;->mUndoBarState:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getCameraRotation()I
    .locals 2

    .prologue
    .line 611
    iget v0, p0, Lcom/android/gallery3d/ui/PhotoView;->mCompensation:I

    iget v1, p0, Lcom/android/gallery3d/ui/PhotoView;->mDisplayRotation:I

    sub-int/2addr v0, v1

    add-int/lit16 v0, v0, 0x168

    rem-int/lit16 v0, v0, 0x168

    return v0
.end method

.method public getCameraScreenNail()Lcom/android/gallery3d/ui/ScreenNail;
    .locals 1

    .prologue
    .line 2369
    iget-object v0, p0, Lcom/android/gallery3d/ui/PhotoView;->mCameraScreenNail:Lcom/android/gallery3d/ui/ScreenNail;

    return-object v0
.end method

.method public getDeleteAnimation()Lcom/android/gallery3d/ui/PhotoView$SlotAnimation;
    .locals 1

    .prologue
    .line 1909
    iget-object v0, p0, Lcom/android/gallery3d/ui/PhotoView;->mDeleteAnimation:Lcom/android/gallery3d/ui/PhotoView$SlotAnimation;

    return-object v0
.end method

.method public getFilmMode()Z
    .locals 1

    .prologue
    .line 1638
    iget-boolean v0, p0, Lcom/android/gallery3d/ui/PhotoView;->mFilmMode:Z

    return v0
.end method

.method public getPhotoRect(I)Landroid/graphics/Rect;
    .locals 1
    .parameter "index"

    .prologue
    .line 2258
    iget-object v0, p0, Lcom/android/gallery3d/ui/PhotoView;->mPositionController:Lcom/android/gallery3d/ui/PositionController;

    invoke-virtual {v0, p1}, Lcom/android/gallery3d/ui/PositionController;->getPosition(I)Landroid/graphics/Rect;

    move-result-object v0

    return-object v0
.end method

.method public getShareMenuPoint(ILandroid/graphics/Point;[I)Z
    .locals 3
    .parameter "faceId"
    .parameter "point"
    .parameter "leftPadding"

    .prologue
    const/4 v0, 0x0

    .line 2325
    iget-object v1, p0, Lcom/android/gallery3d/ui/PhotoView;->mPositionController:Lcom/android/gallery3d/ui/PositionController;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/gallery3d/ui/PhotoView;->mFaceIndicator:Lcom/android/gallery3d/ui/FaceIndicator;

    if-nez v1, :cond_1

    .line 2326
    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-object v1, p0, Lcom/android/gallery3d/ui/PhotoView;->mFaceIndicator:Lcom/android/gallery3d/ui/FaceIndicator;

    iget-object v2, p0, Lcom/android/gallery3d/ui/PhotoView;->mPositionController:Lcom/android/gallery3d/ui/PositionController;

    invoke-virtual {v2, v0}, Lcom/android/gallery3d/ui/PositionController;->getPosition(I)Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {v1, v0, p1, p2, p3}, Lcom/android/gallery3d/ui/FaceIndicator;->getShareMenuPoint(Landroid/graphics/Rect;ILandroid/graphics/Point;[I)Z

    move-result v0

    goto :goto_0
.end method

.method public hideFace()V
    .locals 1

    .prologue
    .line 2320
    iget-object v0, p0, Lcom/android/gallery3d/ui/PhotoView;->mFaceIndicator:Lcom/android/gallery3d/ui/FaceIndicator;

    invoke-virtual {v0}, Lcom/android/gallery3d/ui/FaceIndicator;->hide()V

    .line 2321
    invoke-virtual {p0}, Lcom/android/gallery3d/ui/PhotoView;->invalidate()V

    .line 2322
    return-void
.end method

.method public isCamera()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 2362
    iget-object v1, p0, Lcom/android/gallery3d/ui/PhotoView;->mModel:Lcom/android/gallery3d/ui/PhotoView$Model;

    if-nez v1, :cond_0

    .line 2363
    :goto_0
    return v0

    :cond_0
    iget-object v1, p0, Lcom/android/gallery3d/ui/PhotoView;->mModel:Lcom/android/gallery3d/ui/PhotoView$Model;

    invoke-interface {v1, v0}, Lcom/android/gallery3d/ui/PhotoView$Model;->isCamera(I)Z

    move-result v0

    goto :goto_0
.end method

.method public isDeleting()Z
    .locals 1

    .prologue
    .line 509
    iget v0, p0, Lcom/android/gallery3d/ui/PhotoView;->mHolding:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/gallery3d/ui/PhotoView;->mPositionController:Lcom/android/gallery3d/ui/PositionController;

    invoke-virtual {v0}, Lcom/android/gallery3d/ui/PositionController;->hasDeletingBox()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public notifyDataChange([III)V
    .locals 12
    .parameter "fromIndex"
    .parameter "prevBound"
    .parameter "nextBound"

    .prologue
    .line 455
    iput p2, p0, Lcom/android/gallery3d/ui/PhotoView;->mPrevBound:I

    .line 456
    iput p3, p0, Lcom/android/gallery3d/ui/PhotoView;->mNextBound:I

    .line 459
    iget v0, p0, Lcom/android/gallery3d/ui/PhotoView;->mTouchBoxIndex:I

    const v1, 0x7fffffff

    if-eq v0, v1, :cond_0

    .line 460
    iget v8, p0, Lcom/android/gallery3d/ui/PhotoView;->mTouchBoxIndex:I

    .line 461
    .local v8, k:I
    const v0, 0x7fffffff

    iput v0, p0, Lcom/android/gallery3d/ui/PhotoView;->mTouchBoxIndex:I

    .line 462
    const/4 v6, 0x0

    .local v6, i:I
    :goto_0
    const/4 v0, 0x7

    if-ge v6, v0, :cond_0

    .line 463
    aget v0, p1, v6

    if-ne v0, v8, :cond_2

    .line 464
    add-int/lit8 v0, v6, -0x3

    iput v0, p0, Lcom/android/gallery3d/ui/PhotoView;->mTouchBoxIndex:I

    .line 471
    .end local v6           #i:I
    .end local v8           #k:I
    :cond_0
    iget v0, p0, Lcom/android/gallery3d/ui/PhotoView;->mUndoIndexHint:I

    const v1, 0x7fffffff

    if-eq v0, v1, :cond_1

    .line 472
    iget v0, p0, Lcom/android/gallery3d/ui/PhotoView;->mUndoIndexHint:I

    iget-object v1, p0, Lcom/android/gallery3d/ui/PhotoView;->mModel:Lcom/android/gallery3d/ui/PhotoView$Model;

    invoke-interface {v1}, Lcom/android/gallery3d/ui/PhotoView$Model;->getCurrentIndex()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    const/4 v1, 0x3

    if-lt v0, v1, :cond_1

    .line 473
    invoke-direct {p0}, Lcom/android/gallery3d/ui/PhotoView;->hideUndoBar()V

    .line 478
    :cond_1
    const/4 v6, -0x3

    .restart local v6       #i:I
    :goto_1
    const/4 v0, 0x3

    if-gt v6, v0, :cond_3

    .line 479
    iget-object v0, p0, Lcom/android/gallery3d/ui/PhotoView;->mPictures:Lcom/android/gallery3d/util/RangeArray;

    invoke-virtual {v0, v6}, Lcom/android/gallery3d/util/RangeArray;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/gallery3d/ui/PhotoView$Picture;

    .line 480
    .local v10, p:Lcom/android/gallery3d/ui/PhotoView$Picture;
    invoke-interface {v10}, Lcom/android/gallery3d/ui/PhotoView$Picture;->reload()V

    .line 481
    iget-object v0, p0, Lcom/android/gallery3d/ui/PhotoView;->mSizes:[Lcom/android/gallery3d/ui/PhotoView$Size;

    add-int/lit8 v1, v6, 0x3

    invoke-interface {v10}, Lcom/android/gallery3d/ui/PhotoView$Picture;->getSize()Lcom/android/gallery3d/ui/PhotoView$Size;

    move-result-object v2

    aput-object v2, v0, v1

    .line 478
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 462
    .end local v10           #p:Lcom/android/gallery3d/ui/PhotoView$Picture;
    .restart local v8       #k:I
    :cond_2
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 484
    .end local v8           #k:I
    :cond_3
    iget-object v0, p0, Lcom/android/gallery3d/ui/PhotoView;->mPositionController:Lcom/android/gallery3d/ui/PositionController;

    invoke-virtual {v0}, Lcom/android/gallery3d/ui/PositionController;->hasDeletingBox()Z

    move-result v11

    .line 487
    .local v11, wasDeleting:Z
    iget-object v0, p0, Lcom/android/gallery3d/ui/PhotoView;->mPositionController:Lcom/android/gallery3d/ui/PositionController;

    iget v1, p0, Lcom/android/gallery3d/ui/PhotoView;->mPrevBound:I

    if-gez v1, :cond_4

    const/4 v2, 0x1

    :goto_2
    iget v1, p0, Lcom/android/gallery3d/ui/PhotoView;->mNextBound:I

    if-lez v1, :cond_5

    const/4 v3, 0x1

    :goto_3
    iget-object v1, p0, Lcom/android/gallery3d/ui/PhotoView;->mModel:Lcom/android/gallery3d/ui/PhotoView$Model;

    const/4 v4, 0x0

    invoke-interface {v1, v4}, Lcom/android/gallery3d/ui/PhotoView$Model;->isCamera(I)Z

    move-result v4

    iget-object v5, p0, Lcom/android/gallery3d/ui/PhotoView;->mSizes:[Lcom/android/gallery3d/ui/PhotoView$Size;

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Lcom/android/gallery3d/ui/PositionController;->moveBox([IZZZ[Lcom/android/gallery3d/ui/PhotoView$Size;)V

    .line 490
    const/4 v6, -0x3

    :goto_4
    const/4 v0, 0x3

    if-gt v6, v0, :cond_6

    .line 491
    invoke-direct {p0, v6}, Lcom/android/gallery3d/ui/PhotoView;->setPictureSize(I)V

    .line 490
    add-int/lit8 v6, v6, 0x1

    goto :goto_4

    .line 487
    :cond_4
    const/4 v2, 0x0

    goto :goto_2

    :cond_5
    const/4 v3, 0x0

    goto :goto_3

    .line 494
    :cond_6
    iget-object v0, p0, Lcom/android/gallery3d/ui/PhotoView;->mPositionController:Lcom/android/gallery3d/ui/PositionController;

    invoke-virtual {v0}, Lcom/android/gallery3d/ui/PositionController;->hasDeletingBox()Z

    move-result v7

    .line 498
    .local v7, isDeleting:Z
    if-eqz v11, :cond_7

    if-nez v7, :cond_7

    .line 499
    iget-object v0, p0, Lcom/android/gallery3d/ui/PhotoView;->mHandler:Lcom/android/gallery3d/ui/SynchronizedHandler;

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/ui/SynchronizedHandler;->removeMessages(I)V

    .line 500
    iget-object v0, p0, Lcom/android/gallery3d/ui/PhotoView;->mHandler:Lcom/android/gallery3d/ui/SynchronizedHandler;

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/ui/SynchronizedHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v9

    .line 501
    .local v9, m:Landroid/os/Message;
    iget-object v0, p0, Lcom/android/gallery3d/ui/PhotoView;->mHandler:Lcom/android/gallery3d/ui/SynchronizedHandler;

    const-wide/16 v1, 0x258

    invoke-virtual {v0, v9, v1, v2}, Lcom/android/gallery3d/ui/SynchronizedHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 505
    .end local v9           #m:Landroid/os/Message;
    :cond_7
    invoke-virtual {p0}, Lcom/android/gallery3d/ui/PhotoView;->invalidate()V

    .line 506
    return-void
.end method

.method public notifyImageChange(I)V
    .locals 1
    .parameter "index"

    .prologue
    .line 514
    if-nez p1, :cond_0

    .line 515
    iget-object v0, p0, Lcom/android/gallery3d/ui/PhotoView;->mListener:Lcom/android/gallery3d/ui/PhotoView$Listener;

    invoke-interface {v0}, Lcom/android/gallery3d/ui/PhotoView$Listener;->onCurrentImageUpdated()V

    .line 517
    :cond_0
    iget-object v0, p0, Lcom/android/gallery3d/ui/PhotoView;->mPictures:Lcom/android/gallery3d/util/RangeArray;

    invoke-virtual {v0, p1}, Lcom/android/gallery3d/util/RangeArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/gallery3d/ui/PhotoView$Picture;

    invoke-interface {v0}, Lcom/android/gallery3d/ui/PhotoView$Picture;->reload()V

    .line 518
    invoke-direct {p0, p1}, Lcom/android/gallery3d/ui/PhotoView;->setPictureSize(I)V

    .line 519
    invoke-virtual {p0}, Lcom/android/gallery3d/ui/PhotoView;->invalidate()V

    .line 520
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 10
    .parameter "changeSize"
    .parameter "left"
    .parameter "top"
    .parameter "right"
    .parameter "bottom"

    .prologue
    const/4 v9, 0x0

    .line 531
    sub-int v6, p4, p2

    .line 532
    .local v6, w:I
    sub-int v2, p5, p3

    .line 533
    .local v2, h:I
    iget-object v7, p0, Lcom/android/gallery3d/ui/PhotoView;->mTileView:Lcom/android/gallery3d/ui/TileImageView;

    invoke-virtual {v7, v9, v9, v6, v2}, Lcom/android/gallery3d/ui/TileImageView;->layout(IIII)V

    .line 534
    iget-object v7, p0, Lcom/android/gallery3d/ui/PhotoView;->mEdgeView:Lcom/android/gallery3d/ui/EdgeView;

    invoke-virtual {v7, v9, v9, v6, v2}, Lcom/android/gallery3d/ui/EdgeView;->layout(IIII)V

    .line 535
    iget-object v7, p0, Lcom/android/gallery3d/ui/PhotoView;->mUndoBar:Lcom/android/gallery3d/ui/UndoBarView;

    invoke-virtual {v7, v9, v9}, Lcom/android/gallery3d/ui/UndoBarView;->measure(II)V

    .line 536
    iget-object v7, p0, Lcom/android/gallery3d/ui/PhotoView;->mUndoBar:Lcom/android/gallery3d/ui/UndoBarView;

    iget-object v8, p0, Lcom/android/gallery3d/ui/PhotoView;->mUndoBar:Lcom/android/gallery3d/ui/UndoBarView;

    invoke-virtual {v8}, Lcom/android/gallery3d/ui/UndoBarView;->getMeasuredHeight()I

    move-result v8

    sub-int v8, v2, v8

    invoke-virtual {v7, v9, v8, v6, v2}, Lcom/android/gallery3d/ui/UndoBarView;->layout(IIII)V

    .line 538
    invoke-virtual {p0}, Lcom/android/gallery3d/ui/PhotoView;->getGLRoot()Lcom/android/gallery3d/ui/GLRoot;

    move-result-object v5

    .line 539
    .local v5, root:Lcom/android/gallery3d/ui/GLRoot;
    invoke-interface {v5}, Lcom/android/gallery3d/ui/GLRoot;->getDisplayRotation()I

    move-result v1

    .line 540
    .local v1, displayRotation:I
    invoke-interface {v5}, Lcom/android/gallery3d/ui/GLRoot;->getCompensation()I

    move-result v0

    .line 541
    .local v0, compensation:I
    iget v7, p0, Lcom/android/gallery3d/ui/PhotoView;->mDisplayRotation:I

    if-ne v7, v1, :cond_0

    iget v7, p0, Lcom/android/gallery3d/ui/PhotoView;->mCompensation:I

    if-eq v7, v0, :cond_2

    .line 543
    :cond_0
    iput v1, p0, Lcom/android/gallery3d/ui/PhotoView;->mDisplayRotation:I

    .line 544
    iput v0, p0, Lcom/android/gallery3d/ui/PhotoView;->mCompensation:I

    .line 549
    const/4 v3, -0x3

    .local v3, i:I
    :goto_0
    const/4 v7, 0x3

    if-gt v3, v7, :cond_2

    .line 550
    iget-object v7, p0, Lcom/android/gallery3d/ui/PhotoView;->mPictures:Lcom/android/gallery3d/util/RangeArray;

    invoke-virtual {v7, v3}, Lcom/android/gallery3d/util/RangeArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/gallery3d/ui/PhotoView$Picture;

    .line 551
    .local v4, p:Lcom/android/gallery3d/ui/PhotoView$Picture;
    invoke-interface {v4}, Lcom/android/gallery3d/ui/PhotoView$Picture;->isCamera()Z

    move-result v7

    if-eqz v7, :cond_1

    .line 552
    invoke-interface {v4}, Lcom/android/gallery3d/ui/PhotoView$Picture;->forceSize()V

    .line 549
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 557
    .end local v3           #i:I
    .end local v4           #p:Lcom/android/gallery3d/ui/PhotoView$Picture;
    :cond_2
    invoke-direct {p0}, Lcom/android/gallery3d/ui/PhotoView;->updateCameraRect()V

    .line 558
    iget-object v7, p0, Lcom/android/gallery3d/ui/PhotoView;->mPositionController:Lcom/android/gallery3d/ui/PositionController;

    iget-object v8, p0, Lcom/android/gallery3d/ui/PhotoView;->mCameraRect:Landroid/graphics/Rect;

    invoke-virtual {v7, v8}, Lcom/android/gallery3d/ui/PositionController;->setConstrainedFrame(Landroid/graphics/Rect;)V

    .line 559
    if-eqz p1, :cond_3

    .line 560
    iget-object v7, p0, Lcom/android/gallery3d/ui/PhotoView;->mPositionController:Lcom/android/gallery3d/ui/PositionController;

    invoke-virtual {p0}, Lcom/android/gallery3d/ui/PhotoView;->getWidth()I

    move-result v8

    invoke-virtual {p0}, Lcom/android/gallery3d/ui/PhotoView;->getHeight()I

    move-result v9

    invoke-virtual {v7, v8, v9}, Lcom/android/gallery3d/ui/PositionController;->setViewSize(II)V

    .line 561
    iget-object v7, p0, Lcom/android/gallery3d/ui/PhotoView;->mListener:Lcom/android/gallery3d/ui/PhotoView$Listener;

    if-eqz v7, :cond_3

    .line 562
    iget-object v7, p0, Lcom/android/gallery3d/ui/PhotoView;->mListener:Lcom/android/gallery3d/ui/PhotoView$Listener;

    invoke-interface {v7}, Lcom/android/gallery3d/ui/PhotoView$Listener;->onFaceMenuChange()V

    .line 565
    :cond_3
    return-void
.end method

.method protected onTouch(Landroid/view/MotionEvent;)Z
    .locals 1
    .parameter "event"

    .prologue
    .line 1079
    iget-object v0, p0, Lcom/android/gallery3d/ui/PhotoView;->mGestureRecognizer:Lcom/android/gallery3d/ui/GestureRecognizer;

    invoke-virtual {v0, p1}, Lcom/android/gallery3d/ui/GestureRecognizer;->onTouchEvent(Landroid/view/MotionEvent;)V

    .line 1080
    const/4 v0, 0x1

    return v0
.end method

.method public pause()V
    .locals 3

    .prologue
    .line 1646
    iget-object v1, p0, Lcom/android/gallery3d/ui/PhotoView;->mPositionController:Lcom/android/gallery3d/ui/PositionController;

    invoke-virtual {v1}, Lcom/android/gallery3d/ui/PositionController;->skipAnimation()V

    .line 1647
    iget-object v1, p0, Lcom/android/gallery3d/ui/PhotoView;->mTileView:Lcom/android/gallery3d/ui/TileImageView;

    invoke-virtual {v1}, Lcom/android/gallery3d/ui/TileImageView;->freeTextures()V

    .line 1648
    const/4 v0, -0x3

    .local v0, i:I
    :goto_0
    const/4 v1, 0x3

    if-gt v0, v1, :cond_0

    .line 1649
    iget-object v1, p0, Lcom/android/gallery3d/ui/PhotoView;->mPictures:Lcom/android/gallery3d/util/RangeArray;

    invoke-virtual {v1, v0}, Lcom/android/gallery3d/util/RangeArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/gallery3d/ui/PhotoView$Picture;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Lcom/android/gallery3d/ui/PhotoView$Picture;->setScreenNail(Lcom/android/gallery3d/ui/ScreenNail;)V

    .line 1648
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1651
    :cond_0
    iget-object v1, p0, Lcom/android/gallery3d/ui/PhotoView;->mGifThread:Lcom/android/gallery3d/ui/GifParseThread;

    if-eqz v1, :cond_1

    .line 1652
    iget-object v1, p0, Lcom/android/gallery3d/ui/PhotoView;->mGifThread:Lcom/android/gallery3d/ui/GifParseThread;

    invoke-virtual {v1}, Lcom/android/gallery3d/ui/GifParseThread;->interrupt()V

    .line 1653
    :cond_1
    invoke-direct {p0}, Lcom/android/gallery3d/ui/PhotoView;->hideUndoBar()V

    .line 1654
    return-void
.end method

.method protected render(Lcom/android/gallery3d/ui/GLCanvas;)V
    .locals 14
    .parameter "canvas"

    .prologue
    const/4 v10, 0x1

    const/4 v11, 0x0

    .line 1731
    iget-boolean v12, p0, Lcom/android/gallery3d/ui/PhotoView;->mFilmMode:Z

    if-nez v12, :cond_5

    invoke-virtual {p0}, Lcom/android/gallery3d/ui/PhotoView;->isCamera()Z

    move-result v12

    if-eqz v12, :cond_5

    iget-object v12, p0, Lcom/android/gallery3d/ui/PhotoView;->mPositionController:Lcom/android/gallery3d/ui/PositionController;

    invoke-virtual {v12}, Lcom/android/gallery3d/ui/PositionController;->isCenter()Z

    move-result v12

    if-eqz v12, :cond_5

    iget-object v12, p0, Lcom/android/gallery3d/ui/PhotoView;->mPositionController:Lcom/android/gallery3d/ui/PositionController;

    invoke-virtual {v12}, Lcom/android/gallery3d/ui/PositionController;->isAtMinimalScale()Z

    move-result v12

    if-eqz v12, :cond_5

    move v2, v10

    .line 1735
    .local v2, full:Z
    :goto_0
    iget-boolean v12, p0, Lcom/android/gallery3d/ui/PhotoView;->mFirst:Z

    if-nez v12, :cond_0

    iget-boolean v12, p0, Lcom/android/gallery3d/ui/PhotoView;->mFullScreenCamera:Z

    if-eq v2, v12, :cond_1

    .line 1736
    :cond_0
    iput-boolean v2, p0, Lcom/android/gallery3d/ui/PhotoView;->mFullScreenCamera:Z

    .line 1737
    iput-boolean v11, p0, Lcom/android/gallery3d/ui/PhotoView;->mFirst:Z

    .line 1738
    iget-object v12, p0, Lcom/android/gallery3d/ui/PhotoView;->mListener:Lcom/android/gallery3d/ui/PhotoView$Listener;

    invoke-interface {v12, v2}, Lcom/android/gallery3d/ui/PhotoView$Listener;->onFullScreenChanged(Z)V

    .line 1739
    if-eqz v2, :cond_1

    iget-object v12, p0, Lcom/android/gallery3d/ui/PhotoView;->mHandler:Lcom/android/gallery3d/ui/SynchronizedHandler;

    const/16 v13, 0x8

    invoke-virtual {v12, v13}, Lcom/android/gallery3d/ui/SynchronizedHandler;->sendEmptyMessage(I)Z

    .line 1745
    :cond_1
    iget-boolean v12, p0, Lcom/android/gallery3d/ui/PhotoView;->mFullScreenCamera:Z

    if-eqz v12, :cond_6

    .line 1746
    const/4 v8, 0x0

    .line 1763
    .local v8, neighbors:I
    :goto_1
    invoke-static {}, Lcom/android/gallery3d/ui/AnimationTime;->get()J

    move-result-wide v0

    .line 1764
    .local v0, animTime:J
    const/4 v7, 0x0

    .line 1765
    .local v7, more:Z
    const/4 v6, 0x0

    .line 1766
    .local v6, isActive:Z
    iget-object v12, p0, Lcom/android/gallery3d/ui/PhotoView;->mAnimation:Lcom/android/gallery3d/ui/PhotoView$SlotAnimation;

    if-eqz v12, :cond_2

    .line 1767
    iget-object v12, p0, Lcom/android/gallery3d/ui/PhotoView;->mAnimation:Lcom/android/gallery3d/ui/PhotoView$SlotAnimation;

    invoke-virtual {v12, v0, v1}, Lcom/android/gallery3d/ui/PhotoView$SlotAnimation;->calculate(J)Z

    move-result v7

    .line 1768
    iget-object v12, p0, Lcom/android/gallery3d/ui/PhotoView;->mAnimation:Lcom/android/gallery3d/ui/PhotoView$SlotAnimation;

    invoke-virtual {v12}, Lcom/android/gallery3d/ui/PhotoView$SlotAnimation;->isActive()Z

    move-result v6

    .line 1771
    :cond_2
    if-eqz v7, :cond_a

    .line 1772
    invoke-virtual {p0}, Lcom/android/gallery3d/ui/PhotoView;->invalidate()V

    .line 1773
    iget-object v12, p0, Lcom/android/gallery3d/ui/PhotoView;->mAnimation:Lcom/android/gallery3d/ui/PhotoView$SlotAnimation;

    instance-of v12, v12, Lcom/android/gallery3d/ui/PhotoView$DeleteAnimation;

    if-eqz v12, :cond_3

    .line 1774
    iput-boolean v10, p0, Lcom/android/gallery3d/ui/PhotoView;->mIsAnimationRender:Z

    .line 1786
    :cond_3
    :goto_2
    iget-object v10, p0, Lcom/android/gallery3d/ui/PhotoView;->mPositionController:Lcom/android/gallery3d/ui/PositionController;

    invoke-virtual {v10, v11}, Lcom/android/gallery3d/ui/PositionController;->getPosition(I)Landroid/graphics/Rect;

    move-result-object v10

    iput-object v10, p0, Lcom/android/gallery3d/ui/PhotoView;->mRect:Landroid/graphics/Rect;

    .line 1787
    iget-object v10, p0, Lcom/android/gallery3d/ui/PhotoView;->mPictures:Lcom/android/gallery3d/util/RangeArray;

    invoke-virtual {v10, v11}, Lcom/android/gallery3d/util/RangeArray;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/gallery3d/ui/PhotoView$Picture;

    iput-object v10, p0, Lcom/android/gallery3d/ui/PhotoView;->mPicture:Lcom/android/gallery3d/ui/PhotoView$Picture;

    .line 1789
    iget-object v10, p0, Lcom/android/gallery3d/ui/PhotoView;->mAnimation:Lcom/android/gallery3d/ui/PhotoView$SlotAnimation;

    if-eqz v10, :cond_c

    if-eqz v6, :cond_c

    .line 1790
    const/4 v10, 0x3

    invoke-interface {p1, v10}, Lcom/android/gallery3d/ui/GLCanvas;->save(I)V

    .line 1791
    iget-object v10, p0, Lcom/android/gallery3d/ui/PhotoView;->mAnimation:Lcom/android/gallery3d/ui/PhotoView$SlotAnimation;

    iget-object v11, p0, Lcom/android/gallery3d/ui/PhotoView;->mRect:Landroid/graphics/Rect;

    invoke-virtual {v10, p1, v11}, Lcom/android/gallery3d/ui/PhotoView$SlotAnimation;->apply(Lcom/android/gallery3d/ui/GLCanvas;Landroid/graphics/Rect;)V

    .line 1792
    iget-object v10, p0, Lcom/android/gallery3d/ui/PhotoView;->mPicture:Lcom/android/gallery3d/ui/PhotoView$Picture;

    iget-object v11, p0, Lcom/android/gallery3d/ui/PhotoView;->mRect:Landroid/graphics/Rect;

    invoke-interface {v10, p1, v11}, Lcom/android/gallery3d/ui/PhotoView$Picture;->draw(Lcom/android/gallery3d/ui/GLCanvas;Landroid/graphics/Rect;)V

    .line 1793
    invoke-interface {p1}, Lcom/android/gallery3d/ui/GLCanvas;->restore()V

    .line 1802
    :cond_4
    iget-object v10, p0, Lcom/android/gallery3d/ui/PhotoView;->mEdgeView:Lcom/android/gallery3d/ui/EdgeView;

    invoke-virtual {p0, p1, v10}, Lcom/android/gallery3d/ui/PhotoView;->renderChild(Lcom/android/gallery3d/ui/GLCanvas;Lcom/android/gallery3d/ui/GLView;)V

    .line 1803
    iget-object v10, p0, Lcom/android/gallery3d/ui/PhotoView;->mUndoBar:Lcom/android/gallery3d/ui/UndoBarView;

    invoke-virtual {p0, p1, v10}, Lcom/android/gallery3d/ui/PhotoView;->renderChild(Lcom/android/gallery3d/ui/GLCanvas;Lcom/android/gallery3d/ui/GLView;)V

    .line 1805
    iget-object v10, p0, Lcom/android/gallery3d/ui/PhotoView;->mPositionController:Lcom/android/gallery3d/ui/PositionController;

    invoke-virtual {v10}, Lcom/android/gallery3d/ui/PositionController;->advanceAnimation()V

    .line 1806
    invoke-direct {p0}, Lcom/android/gallery3d/ui/PhotoView;->checkFocusSwitching()V

    .line 1807
    return-void

    .end local v0           #animTime:J
    .end local v2           #full:Z
    .end local v6           #isActive:Z
    .end local v7           #more:Z
    .end local v8           #neighbors:I
    :cond_5
    move v2, v11

    .line 1731
    goto/16 :goto_0

    .line 1750
    .restart local v2       #full:Z
    :cond_6
    iget-object v12, p0, Lcom/android/gallery3d/ui/PhotoView;->mPositionController:Lcom/android/gallery3d/ui/PositionController;

    invoke-virtual {v12}, Lcom/android/gallery3d/ui/PositionController;->getFilmRatio()F

    move-result v12

    const/4 v13, 0x0

    cmpl-float v12, v12, v13

    if-nez v12, :cond_7

    move v5, v10

    .line 1751
    .local v5, inPageMode:Z
    :goto_3
    iget v12, p0, Lcom/android/gallery3d/ui/PhotoView;->mHolding:I

    and-int/lit8 v12, v12, 0x2

    if-eqz v12, :cond_8

    move v4, v10

    .line 1753
    .local v4, inCaptureAnimation:Z
    :goto_4
    if-eqz v5, :cond_9

    if-nez v4, :cond_9

    .line 1754
    const/4 v8, 0x1

    .restart local v8       #neighbors:I
    goto :goto_1

    .end local v4           #inCaptureAnimation:Z
    .end local v5           #inPageMode:Z
    .end local v8           #neighbors:I
    :cond_7
    move v5, v11

    .line 1750
    goto :goto_3

    .restart local v5       #inPageMode:Z
    :cond_8
    move v4, v11

    .line 1751
    goto :goto_4

    .line 1756
    .restart local v4       #inCaptureAnimation:Z
    :cond_9
    const/4 v8, 0x3

    .restart local v8       #neighbors:I
    goto/16 :goto_1

    .line 1777
    .end local v4           #inCaptureAnimation:Z
    .end local v5           #inPageMode:Z
    .restart local v0       #animTime:J
    .restart local v6       #isActive:Z
    .restart local v7       #more:Z
    :cond_a
    iget-boolean v10, p0, Lcom/android/gallery3d/ui/PhotoView;->mIsAnimationRender:Z

    if-eqz v10, :cond_b

    iget-object v10, p0, Lcom/android/gallery3d/ui/PhotoView;->mAnimation:Lcom/android/gallery3d/ui/PhotoView$SlotAnimation;

    instance-of v10, v10, Lcom/android/gallery3d/ui/PhotoView$DeleteAnimation;

    if-eqz v10, :cond_b

    .line 1778
    const/4 v6, 0x1

    .line 1779
    iput-boolean v11, p0, Lcom/android/gallery3d/ui/PhotoView;->mIsAnimationRender:Z

    .line 1781
    :cond_b
    iget-boolean v10, p0, Lcom/android/gallery3d/ui/PhotoView;->mIsDelete:Z

    if-eqz v10, :cond_3

    iget-object v10, p0, Lcom/android/gallery3d/ui/PhotoView;->mAnimation:Lcom/android/gallery3d/ui/PhotoView$SlotAnimation;

    instance-of v10, v10, Lcom/android/gallery3d/ui/PhotoView$ScaleAnimation;

    if-eqz v10, :cond_3

    .line 1782
    const/4 v6, 0x1

    goto :goto_2

    .line 1796
    :cond_c
    move v3, v8

    .local v3, i:I
    :goto_5
    neg-int v10, v8

    if-lt v3, v10, :cond_4

    .line 1797
    iget-object v10, p0, Lcom/android/gallery3d/ui/PhotoView;->mPositionController:Lcom/android/gallery3d/ui/PositionController;

    invoke-virtual {v10, v3}, Lcom/android/gallery3d/ui/PositionController;->getPosition(I)Landroid/graphics/Rect;

    move-result-object v9

    .line 1798
    .local v9, r:Landroid/graphics/Rect;
    iget-object v10, p0, Lcom/android/gallery3d/ui/PhotoView;->mPictures:Lcom/android/gallery3d/util/RangeArray;

    invoke-virtual {v10, v3}, Lcom/android/gallery3d/util/RangeArray;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/gallery3d/ui/PhotoView$Picture;

    invoke-interface {v10, p1, v9}, Lcom/android/gallery3d/ui/PhotoView$Picture;->draw(Lcom/android/gallery3d/ui/GLCanvas;Landroid/graphics/Rect;)V

    .line 1796
    add-int/lit8 v3, v3, -0x1

    goto :goto_5
.end method

.method public resetToFirstPicture()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 1664
    iget-object v0, p0, Lcom/android/gallery3d/ui/PhotoView;->mModel:Lcom/android/gallery3d/ui/PhotoView$Model;

    invoke-interface {v0, v1}, Lcom/android/gallery3d/ui/PhotoView$Model;->moveTo(I)V

    .line 1665
    invoke-virtual {p0, v1}, Lcom/android/gallery3d/ui/PhotoView;->setFilmMode(Z)V

    .line 1666
    return-void
.end method

.method public resume()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 1657
    iget-object v0, p0, Lcom/android/gallery3d/ui/PhotoView;->mTileView:Lcom/android/gallery3d/ui/TileImageView;

    invoke-virtual {v0}, Lcom/android/gallery3d/ui/TileImageView;->prepareTextures()V

    .line 1658
    iget-object v0, p0, Lcom/android/gallery3d/ui/PhotoView;->mPositionController:Lcom/android/gallery3d/ui/PositionController;

    invoke-virtual {v0}, Lcom/android/gallery3d/ui/PositionController;->skipToFinalPosition()V

    .line 1659
    iget-object v0, p0, Lcom/android/gallery3d/ui/PhotoView;->mModel:Lcom/android/gallery3d/ui/PhotoView$Model;

    invoke-interface {v0, v2}, Lcom/android/gallery3d/ui/PhotoView$Model;->getMediaItem(I)Lcom/android/gallery3d/data/MediaItem;

    move-result-object v0

    iget-object v1, p0, Lcom/android/gallery3d/ui/PhotoView;->mModel:Lcom/android/gallery3d/ui/PhotoView$Model;

    invoke-interface {v1, v2}, Lcom/android/gallery3d/ui/PhotoView$Model;->getScreenNail(I)Lcom/android/gallery3d/ui/ScreenNail;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/android/gallery3d/ui/PhotoView;->parseGifIfNecessary(Lcom/android/gallery3d/data/MediaItem;Lcom/android/gallery3d/ui/ScreenNail;)V

    .line 1660
    return-void
.end method

.method public setCameraRelativeFrame(Landroid/graphics/Rect;)V
    .locals 1
    .parameter "frame"

    .prologue
    .line 598
    iget-object v0, p0, Lcom/android/gallery3d/ui/PhotoView;->mCameraRelativeFrame:Landroid/graphics/Rect;

    invoke-virtual {v0, p1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 599
    invoke-direct {p0}, Lcom/android/gallery3d/ui/PhotoView;->updateCameraRect()V

    .line 604
    return-void
.end method

.method public setCameraScreenNail(Lcom/android/gallery3d/ui/ScreenNail;)V
    .locals 0
    .parameter "attachScreenNail"

    .prologue
    .line 2331
    iput-object p1, p0, Lcom/android/gallery3d/ui/PhotoView;->mCameraScreenNail:Lcom/android/gallery3d/ui/ScreenNail;

    .line 2332
    return-void
.end method

.method public setDeleteAnimation(Lcom/android/gallery3d/ui/PhotoView$SlotAnimation;)V
    .locals 0
    .parameter "mAnimation"

    .prologue
    .line 1905
    iput-object p1, p0, Lcom/android/gallery3d/ui/PhotoView;->mDeleteAnimation:Lcom/android/gallery3d/ui/PhotoView$SlotAnimation;

    .line 1906
    return-void
.end method

.method public setFilmMode(Z)V
    .locals 4
    .parameter "enabled"

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 1627
    iget-boolean v0, p0, Lcom/android/gallery3d/ui/PhotoView;->mFilmMode:Z

    if-ne v0, p1, :cond_0

    .line 1635
    :goto_0
    return-void

    .line 1628
    :cond_0
    iput-boolean p1, p0, Lcom/android/gallery3d/ui/PhotoView;->mFilmMode:Z

    .line 1629
    iget-object v0, p0, Lcom/android/gallery3d/ui/PhotoView;->mPositionController:Lcom/android/gallery3d/ui/PositionController;

    iget-boolean v3, p0, Lcom/android/gallery3d/ui/PhotoView;->mFilmMode:Z

    invoke-virtual {v0, v3}, Lcom/android/gallery3d/ui/PositionController;->setFilmMode(Z)V

    .line 1630
    iget-object v3, p0, Lcom/android/gallery3d/ui/PhotoView;->mModel:Lcom/android/gallery3d/ui/PhotoView$Model;

    if-nez p1, :cond_1

    move v0, v1

    :goto_1
    invoke-interface {v3, v0}, Lcom/android/gallery3d/ui/PhotoView$Model;->setNeedFullImage(Z)V

    .line 1631
    iget-object v0, p0, Lcom/android/gallery3d/ui/PhotoView;->mModel:Lcom/android/gallery3d/ui/PhotoView$Model;

    iget-boolean v3, p0, Lcom/android/gallery3d/ui/PhotoView;->mFilmMode:Z

    if-eqz v3, :cond_2

    :goto_2
    invoke-interface {v0, v1}, Lcom/android/gallery3d/ui/PhotoView$Model;->setFocusHintDirection(I)V

    .line 1633
    invoke-direct {p0}, Lcom/android/gallery3d/ui/PhotoView;->updateActionBar()V

    .line 1634
    iget-object v0, p0, Lcom/android/gallery3d/ui/PhotoView;->mListener:Lcom/android/gallery3d/ui/PhotoView$Listener;

    invoke-interface {v0, p1}, Lcom/android/gallery3d/ui/PhotoView$Listener;->onFilmModeChanged(Z)V

    goto :goto_0

    :cond_1
    move v0, v2

    .line 1630
    goto :goto_1

    :cond_2
    move v1, v2

    .line 1631
    goto :goto_2
.end method

.method public setListener(Lcom/android/gallery3d/ui/PhotoView$Listener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 2254
    iput-object p1, p0, Lcom/android/gallery3d/ui/PhotoView;->mListener:Lcom/android/gallery3d/ui/PhotoView$Listener;

    .line 2255
    return-void
.end method

.method public setMavLoadingFinished(Z)V
    .locals 0
    .parameter "isFinished"

    .prologue
    .line 2336
    iput-boolean p1, p0, Lcom/android/gallery3d/ui/PhotoView;->mIsMavLoadingFinished:Z

    .line 2337
    invoke-virtual {p0}, Lcom/android/gallery3d/ui/PhotoView;->invalidate()V

    .line 2338
    return-void
.end method

.method public setModel(Lcom/android/gallery3d/ui/PhotoView$Model;)V
    .locals 2
    .parameter "model"

    .prologue
    .line 370
    iput-object p1, p0, Lcom/android/gallery3d/ui/PhotoView;->mModel:Lcom/android/gallery3d/ui/PhotoView$Model;

    .line 371
    iget-object v0, p0, Lcom/android/gallery3d/ui/PhotoView;->mTileView:Lcom/android/gallery3d/ui/TileImageView;

    iget-object v1, p0, Lcom/android/gallery3d/ui/PhotoView;->mModel:Lcom/android/gallery3d/ui/PhotoView$Model;

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/ui/TileImageView;->setModel(Lcom/android/gallery3d/ui/TileImageView$Model;)V

    .line 372
    iget-object v0, p0, Lcom/android/gallery3d/ui/PhotoView;->mFaceIndicator:Lcom/android/gallery3d/ui/FaceIndicator;

    invoke-virtual {v0, p1}, Lcom/android/gallery3d/ui/FaceIndicator;->setModel(Lcom/android/gallery3d/ui/PhotoView$Model;)V

    .line 373
    return-void
.end method

.method public setOpenAnimationRect(Landroid/graphics/Rect;)V
    .locals 1
    .parameter "rect"

    .prologue
    .line 2089
    iget-object v0, p0, Lcom/android/gallery3d/ui/PhotoView;->mPositionController:Lcom/android/gallery3d/ui/PositionController;

    invoke-virtual {v0, p1}, Lcom/android/gallery3d/ui/PositionController;->setOpenAnimationRect(Landroid/graphics/Rect;)V

    .line 2090
    return-void
.end method

.method public setScaleGestureEnabled(Z)V
    .locals 1
    .parameter "enabled"

    .prologue
    .line 1611
    iget-object v0, p0, Lcom/android/gallery3d/ui/PhotoView;->mGestureListener:Lcom/android/gallery3d/ui/PhotoView$MyGestureListener;

    invoke-virtual {v0, p1}, Lcom/android/gallery3d/ui/PhotoView$MyGestureListener;->setScaleGestureEnabled(Z)V

    .line 1612
    return-void
.end method

.method public setSwipingEnabled(Z)V
    .locals 1
    .parameter "enabled"

    .prologue
    .line 1606
    iget-object v0, p0, Lcom/android/gallery3d/ui/PhotoView;->mGestureListener:Lcom/android/gallery3d/ui/PhotoView$MyGestureListener;

    invoke-virtual {v0, p1}, Lcom/android/gallery3d/ui/PhotoView$MyGestureListener;->setSwipingEnabled(Z)V

    .line 1607
    return-void
.end method

.method public setWantPictureCenterCallbacks(Z)V
    .locals 0
    .parameter "wanted"

    .prologue
    .line 447
    iput-boolean p1, p0, Lcom/android/gallery3d/ui/PhotoView;->mWantPictureCenterCallbacks:Z

    .line 448
    return-void
.end method

.method public showFace()V
    .locals 1

    .prologue
    .line 2315
    iget-object v0, p0, Lcom/android/gallery3d/ui/PhotoView;->mFaceIndicator:Lcom/android/gallery3d/ui/FaceIndicator;

    invoke-virtual {v0}, Lcom/android/gallery3d/ui/FaceIndicator;->show()V

    .line 2316
    invoke-virtual {p0}, Lcom/android/gallery3d/ui/PhotoView;->invalidate()V

    .line 2317
    return-void
.end method

.method public startDeleteAnimation()V
    .locals 1

    .prologue
    .line 1897
    new-instance v0, Lcom/android/gallery3d/ui/PhotoView$DeleteAnimation;

    invoke-direct {v0, p0}, Lcom/android/gallery3d/ui/PhotoView$DeleteAnimation;-><init>(Lcom/android/gallery3d/ui/PhotoView;)V

    iput-object v0, p0, Lcom/android/gallery3d/ui/PhotoView;->mAnimation:Lcom/android/gallery3d/ui/PhotoView$SlotAnimation;

    .line 1898
    iget-object v0, p0, Lcom/android/gallery3d/ui/PhotoView;->mAnimation:Lcom/android/gallery3d/ui/PhotoView$SlotAnimation;

    invoke-virtual {p0, v0}, Lcom/android/gallery3d/ui/PhotoView;->setDeleteAnimation(Lcom/android/gallery3d/ui/PhotoView$SlotAnimation;)V

    .line 1900
    iget-object v0, p0, Lcom/android/gallery3d/ui/PhotoView;->mAnimation:Lcom/android/gallery3d/ui/PhotoView$SlotAnimation;

    invoke-virtual {v0}, Lcom/android/gallery3d/ui/PhotoView$SlotAnimation;->start()V

    .line 1901
    invoke-virtual {p0}, Lcom/android/gallery3d/ui/PhotoView;->invalidate()V

    .line 1902
    return-void
.end method

.method public startScaleAnimation(Z)V
    .locals 1
    .parameter "isCancel"

    .prologue
    .line 1853
    iget-object v0, p0, Lcom/android/gallery3d/ui/PhotoView;->mPositionController:Lcom/android/gallery3d/ui/PositionController;

    invoke-virtual {v0}, Lcom/android/gallery3d/ui/PositionController;->resetToFullView()V

    .line 1854
    new-instance v0, Lcom/android/gallery3d/ui/PhotoView$ScaleAnimation;

    invoke-direct {v0, p0, p1}, Lcom/android/gallery3d/ui/PhotoView$ScaleAnimation;-><init>(Lcom/android/gallery3d/ui/PhotoView;Z)V

    iput-object v0, p0, Lcom/android/gallery3d/ui/PhotoView;->mAnimation:Lcom/android/gallery3d/ui/PhotoView$SlotAnimation;

    .line 1855
    iget-object v0, p0, Lcom/android/gallery3d/ui/PhotoView;->mAnimation:Lcom/android/gallery3d/ui/PhotoView$SlotAnimation;

    invoke-virtual {v0}, Lcom/android/gallery3d/ui/PhotoView$SlotAnimation;->start()V

    .line 1856
    invoke-virtual {p0}, Lcom/android/gallery3d/ui/PhotoView;->invalidate()V

    .line 1857
    return-void
.end method

.method public stopScrolling()V
    .locals 1

    .prologue
    .line 366
    iget-object v0, p0, Lcom/android/gallery3d/ui/PhotoView;->mPositionController:Lcom/android/gallery3d/ui/PositionController;

    invoke-virtual {v0}, Lcom/android/gallery3d/ui/PositionController;->stopScrolling()V

    .line 367
    return-void
.end method

.method public switchToImage(I)V
    .locals 1
    .parameter "index"

    .prologue
    .line 2069
    iget-object v0, p0, Lcom/android/gallery3d/ui/PhotoView;->mModel:Lcom/android/gallery3d/ui/PhotoView$Model;

    invoke-interface {v0, p1}, Lcom/android/gallery3d/ui/PhotoView$Model;->moveTo(I)V

    .line 2070
    return-void
.end method

.method public switchWithCaptureAnimation(I)Z
    .locals 2
    .parameter "offset"

    .prologue
    .line 2097
    invoke-virtual {p0}, Lcom/android/gallery3d/ui/PhotoView;->getGLRoot()Lcom/android/gallery3d/ui/GLRoot;

    move-result-object v0

    .line 2098
    .local v0, root:Lcom/android/gallery3d/ui/GLRoot;
    if-nez v0, :cond_0

    const/4 v1, 0x0

    .line 2103
    :goto_0
    return v1

    .line 2099
    :cond_0
    invoke-interface {v0}, Lcom/android/gallery3d/ui/GLRoot;->lockRenderThread()V

    .line 2101
    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/gallery3d/ui/PhotoView;->switchWithCaptureAnimationLocked(I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    .line 2103
    invoke-interface {v0}, Lcom/android/gallery3d/ui/GLRoot;->unlockRenderThread()V

    goto :goto_0

    :catchall_0
    move-exception v1

    invoke-interface {v0}, Lcom/android/gallery3d/ui/GLRoot;->unlockRenderThread()V

    throw v1
.end method
