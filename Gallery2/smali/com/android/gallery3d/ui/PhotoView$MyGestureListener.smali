.class Lcom/android/gallery3d/ui/PhotoView$MyGestureListener;
.super Ljava/lang/Object;
.source "PhotoView.java"

# interfaces
.implements Lcom/android/gallery3d/ui/GestureRecognizer$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/gallery3d/ui/PhotoView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MyGestureListener"
.end annotation


# instance fields
.field private mAccScale:F

.field private mCanChangeMode:Z

.field private mDownInScrolling:Z

.field private mFirstScrollX:Z

.field private mHadFling:Z

.field private mIgnoreScaleGesture:Z

.field private mIgnoreScalingGesture:Z

.field private mIgnoreSwipingGesture:Z

.field private mIgnoreUpEvent:Z

.field private mModeChanged:Z

.field private mScrolledAfterDown:Z

.field final synthetic this$0:Lcom/android/gallery3d/ui/PhotoView;


# direct methods
.method private constructor <init>(Lcom/android/gallery3d/ui/PhotoView;)V
    .locals 1
    .parameter

    .prologue
    .line 1083
    iput-object p1, p0, Lcom/android/gallery3d/ui/PhotoView$MyGestureListener;->this$0:Lcom/android/gallery3d/ui/PhotoView;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 1084
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/gallery3d/ui/PhotoView$MyGestureListener;->mIgnoreUpEvent:Z

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/gallery3d/ui/PhotoView;Lcom/android/gallery3d/ui/PhotoView$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1083
    invoke-direct {p0, p1}, Lcom/android/gallery3d/ui/PhotoView$MyGestureListener;-><init>(Lcom/android/gallery3d/ui/PhotoView;)V

    return-void
.end method

.method private calculateDeltaY(F)I
    .locals 5
    .parameter "delta"

    .prologue
    const/high16 v4, 0x3f00

    .line 1284
    iget-object v2, p0, Lcom/android/gallery3d/ui/PhotoView$MyGestureListener;->this$0:Lcom/android/gallery3d/ui/PhotoView;

    #getter for: Lcom/android/gallery3d/ui/PhotoView;->mTouchBoxDeletable:Z
    invoke-static {v2}, Lcom/android/gallery3d/ui/PhotoView;->access$3800(Lcom/android/gallery3d/ui/PhotoView;)Z

    move-result v2

    if-eqz v2, :cond_0

    add-float v2, p1, v4

    float-to-int v2, v2

    .line 1296
    :goto_0
    return v2

    .line 1288
    :cond_0
    iget-object v2, p0, Lcom/android/gallery3d/ui/PhotoView$MyGestureListener;->this$0:Lcom/android/gallery3d/ui/PhotoView;

    invoke-virtual {v2}, Lcom/android/gallery3d/ui/PhotoView;->getHeight()I

    move-result v1

    .line 1289
    .local v1, size:I
    const v2, 0x3e19999a

    int-to-float v3, v1

    mul-float v0, v2, v3

    .line 1290
    .local v0, maxScrollDistance:F
    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result v2

    int-to-float v3, v1

    cmpl-float v2, v2, v3

    if-ltz v2, :cond_2

    .line 1291
    const/4 v2, 0x0

    cmpl-float v2, p1, v2

    if-lez v2, :cond_1

    move p1, v0

    .line 1296
    :goto_1
    add-float v2, p1, v4

    float-to-int v2, v2

    goto :goto_0

    .line 1291
    :cond_1
    neg-float p1, v0

    goto :goto_1

    .line 1293
    :cond_2
    int-to-float v2, v1

    div-float v2, p1, v2

    const v3, 0x3fc90fdb

    mul-float/2addr v2, v3

    invoke-static {v2}, Landroid/util/FloatMath;->sin(F)F

    move-result v2

    mul-float p1, v0, v2

    goto :goto_1
.end method

.method private calculateScale(IIF)F
    .locals 9
    .parameter "width"
    .parameter "height"
    .parameter "origScale"

    .prologue
    const/high16 v7, 0x4000

    const/high16 v6, 0x3f00

    .line 1222
    iget-object v5, p0, Lcom/android/gallery3d/ui/PhotoView$MyGestureListener;->this$0:Lcom/android/gallery3d/ui/PhotoView;

    #getter for: Lcom/android/gallery3d/ui/PhotoView;->mContext:Landroid/content/Context;
    invoke-static {v5}, Lcom/android/gallery3d/ui/PhotoView;->access$3600(Lcom/android/gallery3d/ui/PhotoView;)Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v5

    iget v3, v5, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 1223
    .local v3, widthScreen:I
    iget-object v5, p0, Lcom/android/gallery3d/ui/PhotoView$MyGestureListener;->this$0:Lcom/android/gallery3d/ui/PhotoView;

    #getter for: Lcom/android/gallery3d/ui/PhotoView;->mContext:Landroid/content/Context;
    invoke-static {v5}, Lcom/android/gallery3d/ui/PhotoView;->access$3600(Lcom/android/gallery3d/ui/PhotoView;)Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v5

    iget v0, v5, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 1224
    .local v0, heightScreen:I
    invoke-static {v3, v0}, Ljava/lang/Math;->min(II)I

    move-result v5

    int-to-float v1, v5

    .line 1225
    .local v1, minScreenLength:F
    invoke-static {p1, p2}, Ljava/lang/Math;->min(II)I

    move-result v5

    int-to-float v4, v5

    .line 1226
    .local v4, x:F
    const/4 v2, 0x0

    .line 1228
    .local v2, scale:F
    div-float v5, v1, v7

    cmpg-float v5, v4, v5

    if-gtz v5, :cond_1

    .line 1229
    const/high16 v2, 0x4000

    .line 1235
    :goto_0
    sub-float v5, p3, v2

    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v5

    float-to-double v5, v5

    const-wide v7, 0x3fb999999999999aL

    cmpg-double v5, v5, v7

    if-gez v5, :cond_0

    move v2, p3

    .line 1236
    :cond_0
    return v2

    .line 1230
    :cond_1
    mul-float v5, v1, v7

    cmpg-float v5, v4, v5

    if-gez v5, :cond_2

    .line 1231
    const v5, 0x3eaaaaab

    const/high16 v6, 0x40a0

    mul-float/2addr v6, v1

    const/high16 v7, 0x40c0

    mul-float/2addr v7, v4

    div-float/2addr v6, v7

    add-float v2, v5, v6

    goto :goto_0

    .line 1233
    :cond_2
    mul-float v5, v6, v1

    div-float/2addr v5, v4

    add-float v2, v6, v5

    goto :goto_0
.end method

.method private canFreeShare(FF)Z
    .locals 1
    .parameter "velocityX"
    .parameter "velocityY"

    .prologue
    .line 1584
    invoke-direct {p0}, Lcom/android/gallery3d/ui/PhotoView$MyGestureListener;->isFreeShareMode()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0, p1, p2}, Lcom/android/gallery3d/ui/PhotoView$MyGestureListener;->isFreeShareVelocity(FF)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private deleteAfterAnimation(I)V
    .locals 5
    .parameter "duration"

    .prologue
    .line 1357
    iget-object v2, p0, Lcom/android/gallery3d/ui/PhotoView$MyGestureListener;->this$0:Lcom/android/gallery3d/ui/PhotoView;

    #getter for: Lcom/android/gallery3d/ui/PhotoView;->mModel:Lcom/android/gallery3d/ui/PhotoView$Model;
    invoke-static {v2}, Lcom/android/gallery3d/ui/PhotoView;->access$1300(Lcom/android/gallery3d/ui/PhotoView;)Lcom/android/gallery3d/ui/PhotoView$Model;

    move-result-object v2

    iget-object v3, p0, Lcom/android/gallery3d/ui/PhotoView$MyGestureListener;->this$0:Lcom/android/gallery3d/ui/PhotoView;

    #getter for: Lcom/android/gallery3d/ui/PhotoView;->mTouchBoxIndex:I
    invoke-static {v3}, Lcom/android/gallery3d/ui/PhotoView;->access$4000(Lcom/android/gallery3d/ui/PhotoView;)I

    move-result v3

    invoke-interface {v2, v3}, Lcom/android/gallery3d/ui/PhotoView$Model;->getMediaItem(I)Lcom/android/gallery3d/data/MediaItem;

    move-result-object v0

    .line 1358
    .local v0, item:Lcom/android/gallery3d/data/MediaItem;
    if-nez v0, :cond_0

    .line 1366
    :goto_0
    return-void

    .line 1359
    :cond_0
    iget-object v2, p0, Lcom/android/gallery3d/ui/PhotoView$MyGestureListener;->this$0:Lcom/android/gallery3d/ui/PhotoView;

    #getter for: Lcom/android/gallery3d/ui/PhotoView;->mListener:Lcom/android/gallery3d/ui/PhotoView$Listener;
    invoke-static {v2}, Lcom/android/gallery3d/ui/PhotoView;->access$000(Lcom/android/gallery3d/ui/PhotoView;)Lcom/android/gallery3d/ui/PhotoView$Listener;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/gallery3d/ui/PhotoView$Listener;->onCommitDeleteImage()V

    .line 1360
    iget-object v2, p0, Lcom/android/gallery3d/ui/PhotoView$MyGestureListener;->this$0:Lcom/android/gallery3d/ui/PhotoView;

    iget-object v3, p0, Lcom/android/gallery3d/ui/PhotoView$MyGestureListener;->this$0:Lcom/android/gallery3d/ui/PhotoView;

    #getter for: Lcom/android/gallery3d/ui/PhotoView;->mModel:Lcom/android/gallery3d/ui/PhotoView$Model;
    invoke-static {v3}, Lcom/android/gallery3d/ui/PhotoView;->access$1300(Lcom/android/gallery3d/ui/PhotoView;)Lcom/android/gallery3d/ui/PhotoView$Model;

    move-result-object v3

    invoke-interface {v3}, Lcom/android/gallery3d/ui/PhotoView$Model;->getCurrentIndex()I

    move-result v3

    iget-object v4, p0, Lcom/android/gallery3d/ui/PhotoView$MyGestureListener;->this$0:Lcom/android/gallery3d/ui/PhotoView;

    #getter for: Lcom/android/gallery3d/ui/PhotoView;->mTouchBoxIndex:I
    invoke-static {v4}, Lcom/android/gallery3d/ui/PhotoView;->access$4000(Lcom/android/gallery3d/ui/PhotoView;)I

    move-result v4

    add-int/2addr v3, v4

    #setter for: Lcom/android/gallery3d/ui/PhotoView;->mUndoIndexHint:I
    invoke-static {v2, v3}, Lcom/android/gallery3d/ui/PhotoView;->access$4102(Lcom/android/gallery3d/ui/PhotoView;I)I

    .line 1361
    iget-object v2, p0, Lcom/android/gallery3d/ui/PhotoView$MyGestureListener;->this$0:Lcom/android/gallery3d/ui/PhotoView;

    const/4 v3, 0x4

    invoke-static {v2, v3}, Lcom/android/gallery3d/ui/PhotoView;->access$376(Lcom/android/gallery3d/ui/PhotoView;I)I

    .line 1362
    iget-object v2, p0, Lcom/android/gallery3d/ui/PhotoView$MyGestureListener;->this$0:Lcom/android/gallery3d/ui/PhotoView;

    #getter for: Lcom/android/gallery3d/ui/PhotoView;->mHandler:Lcom/android/gallery3d/ui/SynchronizedHandler;
    invoke-static {v2}, Lcom/android/gallery3d/ui/PhotoView;->access$1000(Lcom/android/gallery3d/ui/PhotoView;)Lcom/android/gallery3d/ui/SynchronizedHandler;

    move-result-object v2

    const/4 v3, 0x5

    invoke-virtual {v2, v3}, Lcom/android/gallery3d/ui/SynchronizedHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    .line 1363
    .local v1, m:Landroid/os/Message;
    invoke-virtual {v0}, Lcom/android/gallery3d/data/MediaItem;->getPath()Lcom/android/gallery3d/data/Path;

    move-result-object v2

    iput-object v2, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 1364
    iget-object v2, p0, Lcom/android/gallery3d/ui/PhotoView$MyGestureListener;->this$0:Lcom/android/gallery3d/ui/PhotoView;

    #getter for: Lcom/android/gallery3d/ui/PhotoView;->mTouchBoxIndex:I
    invoke-static {v2}, Lcom/android/gallery3d/ui/PhotoView;->access$4000(Lcom/android/gallery3d/ui/PhotoView;)I

    move-result v2

    iput v2, v1, Landroid/os/Message;->arg1:I

    .line 1365
    iget-object v2, p0, Lcom/android/gallery3d/ui/PhotoView$MyGestureListener;->this$0:Lcom/android/gallery3d/ui/PhotoView;

    #getter for: Lcom/android/gallery3d/ui/PhotoView;->mHandler:Lcom/android/gallery3d/ui/SynchronizedHandler;
    invoke-static {v2}, Lcom/android/gallery3d/ui/PhotoView;->access$1000(Lcom/android/gallery3d/ui/PhotoView;)Lcom/android/gallery3d/ui/SynchronizedHandler;

    move-result-object v2

    int-to-long v3, p1

    invoke-virtual {v2, v1, v3, v4}, Lcom/android/gallery3d/ui/SynchronizedHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_0
.end method

.method private doFreeShare(FF)Z
    .locals 1
    .parameter "velocityX"
    .parameter "velocityY"

    .prologue
    .line 1588
    invoke-direct {p0, p1, p2}, Lcom/android/gallery3d/ui/PhotoView$MyGestureListener;->canFreeShare(FF)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 1595
    :goto_0
    return v0

    .line 1590
    :cond_0
    const/high16 v0, -0x3cb8

    cmpg-float v0, p2, v0

    if-gez v0, :cond_2

    .line 1591
    iget-object v0, p0, Lcom/android/gallery3d/ui/PhotoView$MyGestureListener;->this$0:Lcom/android/gallery3d/ui/PhotoView;

    #getter for: Lcom/android/gallery3d/ui/PhotoView;->mListener:Lcom/android/gallery3d/ui/PhotoView$Listener;
    invoke-static {v0}, Lcom/android/gallery3d/ui/PhotoView;->access$000(Lcom/android/gallery3d/ui/PhotoView;)Lcom/android/gallery3d/ui/PhotoView$Listener;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/gallery3d/ui/PhotoView$Listener;->onFlingUp()V

    .line 1595
    :cond_1
    :goto_1
    const/4 v0, 0x1

    goto :goto_0

    .line 1592
    :cond_2
    const/high16 v0, 0x4348

    cmpl-float v0, p2, v0

    if-lez v0, :cond_1

    .line 1593
    iget-object v0, p0, Lcom/android/gallery3d/ui/PhotoView$MyGestureListener;->this$0:Lcom/android/gallery3d/ui/PhotoView;

    #getter for: Lcom/android/gallery3d/ui/PhotoView;->mListener:Lcom/android/gallery3d/ui/PhotoView$Listener;
    invoke-static {v0}, Lcom/android/gallery3d/ui/PhotoView;->access$000(Lcom/android/gallery3d/ui/PhotoView;)Lcom/android/gallery3d/ui/PhotoView$Listener;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/gallery3d/ui/PhotoView$Listener;->onFlingDown()V

    goto :goto_1
.end method

.method private flingImages(FF)Z
    .locals 5
    .parameter "velocityX"
    .parameter "velocityY"

    .prologue
    const/4 v2, 0x0

    const/high16 v4, 0x3f00

    .line 1315
    add-float v3, p1, v4

    float-to-int v0, v3

    .line 1316
    .local v0, vx:I
    add-float v3, p2, v4

    float-to-int v1, v3

    .line 1317
    .local v1, vy:I
    iget-object v3, p0, Lcom/android/gallery3d/ui/PhotoView$MyGestureListener;->this$0:Lcom/android/gallery3d/ui/PhotoView;

    #getter for: Lcom/android/gallery3d/ui/PhotoView;->mFilmMode:Z
    invoke-static {v3}, Lcom/android/gallery3d/ui/PhotoView;->access$3400(Lcom/android/gallery3d/ui/PhotoView;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 1318
    iget-object v2, p0, Lcom/android/gallery3d/ui/PhotoView$MyGestureListener;->this$0:Lcom/android/gallery3d/ui/PhotoView;

    #getter for: Lcom/android/gallery3d/ui/PhotoView;->mPositionController:Lcom/android/gallery3d/ui/PositionController;
    invoke-static {v2}, Lcom/android/gallery3d/ui/PhotoView;->access$600(Lcom/android/gallery3d/ui/PhotoView;)Lcom/android/gallery3d/ui/PositionController;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Lcom/android/gallery3d/ui/PositionController;->flingPage(II)Z

    move-result v2

    .line 1353
    :cond_0
    :goto_0
    return v2

    .line 1320
    :cond_1
    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result v3

    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    move-result v4

    cmpl-float v3, v3, v4

    if-lez v3, :cond_2

    .line 1321
    iget-object v2, p0, Lcom/android/gallery3d/ui/PhotoView$MyGestureListener;->this$0:Lcom/android/gallery3d/ui/PhotoView;

    #getter for: Lcom/android/gallery3d/ui/PhotoView;->mPositionController:Lcom/android/gallery3d/ui/PositionController;
    invoke-static {v2}, Lcom/android/gallery3d/ui/PhotoView;->access$600(Lcom/android/gallery3d/ui/PhotoView;)Lcom/android/gallery3d/ui/PositionController;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/android/gallery3d/ui/PositionController;->flingFilmX(I)Z

    move-result v2

    goto :goto_0

    .line 1325
    :cond_2
    iget-object v3, p0, Lcom/android/gallery3d/ui/PhotoView$MyGestureListener;->this$0:Lcom/android/gallery3d/ui/PhotoView;

    #getter for: Lcom/android/gallery3d/ui/PhotoView;->mFilmMode:Z
    invoke-static {v3}, Lcom/android/gallery3d/ui/PhotoView;->access$3400(Lcom/android/gallery3d/ui/PhotoView;)Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/gallery3d/ui/PhotoView$MyGestureListener;->this$0:Lcom/android/gallery3d/ui/PhotoView;

    #getter for: Lcom/android/gallery3d/ui/PhotoView;->mTouchBoxIndex:I
    invoke-static {v3}, Lcom/android/gallery3d/ui/PhotoView;->access$4000(Lcom/android/gallery3d/ui/PhotoView;)I

    move-result v3

    const v4, 0x7fffffff

    if-eq v3, v4, :cond_0

    iget-object v3, p0, Lcom/android/gallery3d/ui/PhotoView$MyGestureListener;->this$0:Lcom/android/gallery3d/ui/PhotoView;

    #getter for: Lcom/android/gallery3d/ui/PhotoView;->mTouchBoxDeletable:Z
    invoke-static {v3}, Lcom/android/gallery3d/ui/PhotoView;->access$3800(Lcom/android/gallery3d/ui/PhotoView;)Z

    move-result v3

    if-nez v3, :cond_0

    goto :goto_0
.end method

.method private isFreeShareMode()Z
    .locals 1

    .prologue
    .line 1579
    iget-boolean v0, p0, Lcom/android/gallery3d/ui/PhotoView$MyGestureListener;->mIgnoreSwipingGesture:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/gallery3d/ui/PhotoView$MyGestureListener;->this$0:Lcom/android/gallery3d/ui/PhotoView;

    #getter for: Lcom/android/gallery3d/ui/PhotoView;->mFilmMode:Z
    invoke-static {v0}, Lcom/android/gallery3d/ui/PhotoView;->access$3400(Lcom/android/gallery3d/ui/PhotoView;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/gallery3d/ui/PhotoView$MyGestureListener;->mFirstScrollX:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/gallery3d/ui/PhotoView$MyGestureListener;->this$0:Lcom/android/gallery3d/ui/PhotoView;

    #getter for: Lcom/android/gallery3d/ui/PhotoView;->mPositionController:Lcom/android/gallery3d/ui/PositionController;
    invoke-static {v0}, Lcom/android/gallery3d/ui/PhotoView;->access$600(Lcom/android/gallery3d/ui/PhotoView;)Lcom/android/gallery3d/ui/PositionController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/gallery3d/ui/PositionController;->isAtMinimalScale()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isFreeShareVelocity(FF)Z
    .locals 3
    .parameter "velocityX"
    .parameter "velocityY"

    .prologue
    .line 1573
    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    move-result v0

    const v1, 0x3fd0a3d7

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result v2

    mul-float/2addr v1, v2

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    move-result v0

    const/high16 v1, 0x4348

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private startExtraScalingIfNeeded()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 1457
    iget-object v0, p0, Lcom/android/gallery3d/ui/PhotoView$MyGestureListener;->this$0:Lcom/android/gallery3d/ui/PhotoView;

    #getter for: Lcom/android/gallery3d/ui/PhotoView;->mCancelExtraScalingPending:Z
    invoke-static {v0}, Lcom/android/gallery3d/ui/PhotoView;->access$700(Lcom/android/gallery3d/ui/PhotoView;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1458
    iget-object v0, p0, Lcom/android/gallery3d/ui/PhotoView$MyGestureListener;->this$0:Lcom/android/gallery3d/ui/PhotoView;

    #getter for: Lcom/android/gallery3d/ui/PhotoView;->mHandler:Lcom/android/gallery3d/ui/SynchronizedHandler;
    invoke-static {v0}, Lcom/android/gallery3d/ui/PhotoView;->access$1000(Lcom/android/gallery3d/ui/PhotoView;)Lcom/android/gallery3d/ui/SynchronizedHandler;

    move-result-object v0

    const/4 v1, 0x2

    const-wide/16 v2, 0x2bc

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/gallery3d/ui/SynchronizedHandler;->sendEmptyMessageDelayed(IJ)Z

    .line 1460
    iget-object v0, p0, Lcom/android/gallery3d/ui/PhotoView$MyGestureListener;->this$0:Lcom/android/gallery3d/ui/PhotoView;

    #getter for: Lcom/android/gallery3d/ui/PhotoView;->mPositionController:Lcom/android/gallery3d/ui/PositionController;
    invoke-static {v0}, Lcom/android/gallery3d/ui/PhotoView;->access$600(Lcom/android/gallery3d/ui/PhotoView;)Lcom/android/gallery3d/ui/PositionController;

    move-result-object v0

    invoke-virtual {v0, v4}, Lcom/android/gallery3d/ui/PositionController;->setExtraScalingRange(Z)V

    .line 1461
    iget-object v0, p0, Lcom/android/gallery3d/ui/PhotoView$MyGestureListener;->this$0:Lcom/android/gallery3d/ui/PhotoView;

    #setter for: Lcom/android/gallery3d/ui/PhotoView;->mCancelExtraScalingPending:Z
    invoke-static {v0, v4}, Lcom/android/gallery3d/ui/PhotoView;->access$702(Lcom/android/gallery3d/ui/PhotoView;Z)Z

    .line 1463
    :cond_0
    return-void
.end method

.method private stopExtraScalingIfNeeded()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 1466
    iget-object v0, p0, Lcom/android/gallery3d/ui/PhotoView$MyGestureListener;->this$0:Lcom/android/gallery3d/ui/PhotoView;

    #getter for: Lcom/android/gallery3d/ui/PhotoView;->mCancelExtraScalingPending:Z
    invoke-static {v0}, Lcom/android/gallery3d/ui/PhotoView;->access$700(Lcom/android/gallery3d/ui/PhotoView;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1467
    iget-object v0, p0, Lcom/android/gallery3d/ui/PhotoView$MyGestureListener;->this$0:Lcom/android/gallery3d/ui/PhotoView;

    #getter for: Lcom/android/gallery3d/ui/PhotoView;->mHandler:Lcom/android/gallery3d/ui/SynchronizedHandler;
    invoke-static {v0}, Lcom/android/gallery3d/ui/PhotoView;->access$1000(Lcom/android/gallery3d/ui/PhotoView;)Lcom/android/gallery3d/ui/SynchronizedHandler;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/ui/SynchronizedHandler;->removeMessages(I)V

    .line 1468
    iget-object v0, p0, Lcom/android/gallery3d/ui/PhotoView$MyGestureListener;->this$0:Lcom/android/gallery3d/ui/PhotoView;

    #getter for: Lcom/android/gallery3d/ui/PhotoView;->mPositionController:Lcom/android/gallery3d/ui/PositionController;
    invoke-static {v0}, Lcom/android/gallery3d/ui/PhotoView;->access$600(Lcom/android/gallery3d/ui/PhotoView;)Lcom/android/gallery3d/ui/PositionController;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/android/gallery3d/ui/PositionController;->setExtraScalingRange(Z)V

    .line 1469
    iget-object v0, p0, Lcom/android/gallery3d/ui/PhotoView$MyGestureListener;->this$0:Lcom/android/gallery3d/ui/PhotoView;

    #setter for: Lcom/android/gallery3d/ui/PhotoView;->mCancelExtraScalingPending:Z
    invoke-static {v0, v2}, Lcom/android/gallery3d/ui/PhotoView;->access$702(Lcom/android/gallery3d/ui/PhotoView;Z)Z

    .line 1471
    :cond_0
    return-void
.end method


# virtual methods
.method public onDoubleTap(FF)Z
    .locals 8
    .parameter "x"
    .parameter "y"

    .prologue
    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 1181
    iget-boolean v5, p0, Lcom/android/gallery3d/ui/PhotoView$MyGestureListener;->mIgnoreScaleGesture:Z

    if-eqz v5, :cond_0

    move v5, v6

    .line 1203
    :goto_0
    return v5

    .line 1183
    :cond_0
    iget-boolean v5, p0, Lcom/android/gallery3d/ui/PhotoView$MyGestureListener;->mIgnoreSwipingGesture:Z

    if-eqz v5, :cond_1

    move v5, v6

    goto :goto_0

    .line 1184
    :cond_1
    iget-object v5, p0, Lcom/android/gallery3d/ui/PhotoView$MyGestureListener;->this$0:Lcom/android/gallery3d/ui/PhotoView;

    #getter for: Lcom/android/gallery3d/ui/PhotoView;->mPictures:Lcom/android/gallery3d/util/RangeArray;
    invoke-static {v5}, Lcom/android/gallery3d/ui/PhotoView;->access$2300(Lcom/android/gallery3d/ui/PhotoView;)Lcom/android/gallery3d/util/RangeArray;

    move-result-object v5

    invoke-virtual {v5, v7}, Lcom/android/gallery3d/util/RangeArray;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/gallery3d/ui/PhotoView$Picture;

    invoke-interface {v5}, Lcom/android/gallery3d/ui/PhotoView$Picture;->isCamera()Z

    move-result v5

    if-eqz v5, :cond_2

    move v5, v7

    goto :goto_0

    .line 1185
    :cond_2
    iget-object v5, p0, Lcom/android/gallery3d/ui/PhotoView$MyGestureListener;->this$0:Lcom/android/gallery3d/ui/PhotoView;

    #getter for: Lcom/android/gallery3d/ui/PhotoView;->mPositionController:Lcom/android/gallery3d/ui/PositionController;
    invoke-static {v5}, Lcom/android/gallery3d/ui/PhotoView;->access$600(Lcom/android/gallery3d/ui/PhotoView;)Lcom/android/gallery3d/ui/PositionController;

    move-result-object v0

    .line 1187
    .local v0, controller:Lcom/android/gallery3d/ui/PositionController;
    iget-object v5, p0, Lcom/android/gallery3d/ui/PhotoView$MyGestureListener;->this$0:Lcom/android/gallery3d/ui/PhotoView;

    #getter for: Lcom/android/gallery3d/ui/PhotoView;->mPictures:Lcom/android/gallery3d/util/RangeArray;
    invoke-static {v5}, Lcom/android/gallery3d/ui/PhotoView;->access$2300(Lcom/android/gallery3d/ui/PhotoView;)Lcom/android/gallery3d/util/RangeArray;

    move-result-object v5

    invoke-virtual {v5, v7}, Lcom/android/gallery3d/util/RangeArray;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/gallery3d/ui/PhotoView$Picture;

    invoke-interface {v5}, Lcom/android/gallery3d/ui/PhotoView$Picture;->isVideo()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-virtual {v0}, Lcom/android/gallery3d/ui/PositionController;->isAtMinimalScale()Z

    move-result v5

    if-eqz v5, :cond_3

    move v5, v7

    goto :goto_0

    .line 1189
    :cond_3
    invoke-virtual {v0}, Lcom/android/gallery3d/ui/PositionController;->getImageScale()F

    move-result v4

    .line 1192
    .local v4, scale:F
    iput-boolean v6, p0, Lcom/android/gallery3d/ui/PhotoView$MyGestureListener;->mIgnoreUpEvent:Z

    .line 1193
    invoke-virtual {v0}, Lcom/android/gallery3d/ui/PositionController;->getImageWidth()I

    move-result v2

    .line 1194
    .local v2, imageWidth:I
    invoke-virtual {v0}, Lcom/android/gallery3d/ui/PositionController;->getImageHeight()I

    move-result v1

    .line 1195
    .local v1, imageHeight:I
    invoke-direct {p0, v2, v1, v4}, Lcom/android/gallery3d/ui/PhotoView$MyGestureListener;->calculateScale(IIF)F

    move-result v3

    .line 1197
    .local v3, newScale:F
    invoke-virtual {v0}, Lcom/android/gallery3d/ui/PositionController;->isAtMinimalScale()Z

    move-result v5

    if-eqz v5, :cond_4

    .line 1198
    const/high16 v5, 0x3f80

    mul-float/2addr v5, v4

    invoke-static {v3, v5}, Ljava/lang/Math;->max(FF)F

    move-result v5

    invoke-virtual {v0, p1, p2, v5}, Lcom/android/gallery3d/ui/PositionController;->zoomIn(FFF)V

    :goto_1
    move v5, v6

    .line 1203
    goto :goto_0

    .line 1201
    :cond_4
    invoke-virtual {v0}, Lcom/android/gallery3d/ui/PositionController;->resetToFullView()V

    goto :goto_1
.end method

.method public onDown(FF)V
    .locals 10
    .parameter "x"
    .parameter "y"

    .prologue
    const v9, 0x7fffffff

    const/high16 v8, 0x3f00

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 1476
    const/4 v3, 0x2

    new-array v0, v3, [F

    aput p1, v0, v6

    aput p2, v0, v7

    .line 1477
    .local v0, pts:[F
    invoke-virtual {p0, v0}, Lcom/android/gallery3d/ui/PhotoView$MyGestureListener;->viewMapPoints([F)V

    .line 1478
    iget-object v3, p0, Lcom/android/gallery3d/ui/PhotoView$MyGestureListener;->this$0:Lcom/android/gallery3d/ui/PhotoView;

    #getter for: Lcom/android/gallery3d/ui/PhotoView;->mPictures:Lcom/android/gallery3d/util/RangeArray;
    invoke-static {v3}, Lcom/android/gallery3d/ui/PhotoView;->access$2300(Lcom/android/gallery3d/ui/PhotoView;)Lcom/android/gallery3d/util/RangeArray;

    move-result-object v3

    invoke-virtual {v3, v6}, Lcom/android/gallery3d/util/RangeArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/gallery3d/ui/PhotoView$Picture;

    invoke-interface {v3}, Lcom/android/gallery3d/ui/PhotoView$Picture;->isCamera()Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/gallery3d/ui/PhotoView$MyGestureListener;->this$0:Lcom/android/gallery3d/ui/PhotoView;

    #getter for: Lcom/android/gallery3d/ui/PhotoView;->mListener:Lcom/android/gallery3d/ui/PhotoView$Listener;
    invoke-static {v3}, Lcom/android/gallery3d/ui/PhotoView;->access$000(Lcom/android/gallery3d/ui/PhotoView;)Lcom/android/gallery3d/ui/PhotoView$Listener;

    move-result-object v3

    aget v4, v0, v6

    add-float/2addr v4, v8

    float-to-int v4, v4

    aget v5, v0, v7

    add-float/2addr v5, v8

    float-to-int v5, v5

    invoke-interface {v3, v4, v5}, Lcom/android/gallery3d/ui/PhotoView$Listener;->isInMeteringRect(II)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1479
    iget-object v3, p0, Lcom/android/gallery3d/ui/PhotoView$MyGestureListener;->this$0:Lcom/android/gallery3d/ui/PhotoView;

    #setter for: Lcom/android/gallery3d/ui/PhotoView;->mMeteringDrag:Z
    invoke-static {v3, v7}, Lcom/android/gallery3d/ui/PhotoView;->access$3702(Lcom/android/gallery3d/ui/PhotoView;Z)Z

    .line 1480
    iput-boolean v7, p0, Lcom/android/gallery3d/ui/PhotoView$MyGestureListener;->mIgnoreSwipingGesture:Z

    .line 1481
    iget-object v3, p0, Lcom/android/gallery3d/ui/PhotoView$MyGestureListener;->this$0:Lcom/android/gallery3d/ui/PhotoView;

    #getter for: Lcom/android/gallery3d/ui/PhotoView;->mGestureListener:Lcom/android/gallery3d/ui/PhotoView$MyGestureListener;
    invoke-static {v3}, Lcom/android/gallery3d/ui/PhotoView;->access$4200(Lcom/android/gallery3d/ui/PhotoView;)Lcom/android/gallery3d/ui/PhotoView$MyGestureListener;

    move-result-object v3

    invoke-virtual {v3, v6}, Lcom/android/gallery3d/ui/PhotoView$MyGestureListener;->setSwipingEnabled(Z)V

    .line 1484
    :cond_0
    iget-object v3, p0, Lcom/android/gallery3d/ui/PhotoView$MyGestureListener;->this$0:Lcom/android/gallery3d/ui/PhotoView;

    const/4 v4, 0x4

    #calls: Lcom/android/gallery3d/ui/PhotoView;->checkHideUndoBar(I)V
    invoke-static {v3, v4}, Lcom/android/gallery3d/ui/PhotoView;->access$1600(Lcom/android/gallery3d/ui/PhotoView;I)V

    .line 1489
    iput-boolean v6, p0, Lcom/android/gallery3d/ui/PhotoView$MyGestureListener;->mModeChanged:Z

    .line 1491
    iget-boolean v3, p0, Lcom/android/gallery3d/ui/PhotoView$MyGestureListener;->mIgnoreSwipingGesture:Z

    if-eqz v3, :cond_1

    .line 1516
    :goto_0
    return-void

    .line 1493
    :cond_1
    iget-object v3, p0, Lcom/android/gallery3d/ui/PhotoView$MyGestureListener;->this$0:Lcom/android/gallery3d/ui/PhotoView;

    invoke-static {v3, v7}, Lcom/android/gallery3d/ui/PhotoView;->access$376(Lcom/android/gallery3d/ui/PhotoView;I)I

    .line 1495
    iget-object v3, p0, Lcom/android/gallery3d/ui/PhotoView$MyGestureListener;->this$0:Lcom/android/gallery3d/ui/PhotoView;

    #getter for: Lcom/android/gallery3d/ui/PhotoView;->mFilmMode:Z
    invoke-static {v3}, Lcom/android/gallery3d/ui/PhotoView;->access$3400(Lcom/android/gallery3d/ui/PhotoView;)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/android/gallery3d/ui/PhotoView$MyGestureListener;->this$0:Lcom/android/gallery3d/ui/PhotoView;

    #getter for: Lcom/android/gallery3d/ui/PhotoView;->mPositionController:Lcom/android/gallery3d/ui/PositionController;
    invoke-static {v3}, Lcom/android/gallery3d/ui/PhotoView;->access$600(Lcom/android/gallery3d/ui/PhotoView;)Lcom/android/gallery3d/ui/PositionController;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/gallery3d/ui/PositionController;->isScrolling()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 1496
    iput-boolean v7, p0, Lcom/android/gallery3d/ui/PhotoView$MyGestureListener;->mDownInScrolling:Z

    .line 1497
    iget-object v3, p0, Lcom/android/gallery3d/ui/PhotoView$MyGestureListener;->this$0:Lcom/android/gallery3d/ui/PhotoView;

    #getter for: Lcom/android/gallery3d/ui/PhotoView;->mPositionController:Lcom/android/gallery3d/ui/PositionController;
    invoke-static {v3}, Lcom/android/gallery3d/ui/PhotoView;->access$600(Lcom/android/gallery3d/ui/PhotoView;)Lcom/android/gallery3d/ui/PositionController;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/gallery3d/ui/PositionController;->stopScrolling()V

    .line 1501
    :goto_1
    iput-boolean v6, p0, Lcom/android/gallery3d/ui/PhotoView$MyGestureListener;->mHadFling:Z

    .line 1502
    iput-boolean v6, p0, Lcom/android/gallery3d/ui/PhotoView$MyGestureListener;->mScrolledAfterDown:Z

    .line 1503
    iget-object v3, p0, Lcom/android/gallery3d/ui/PhotoView$MyGestureListener;->this$0:Lcom/android/gallery3d/ui/PhotoView;

    #getter for: Lcom/android/gallery3d/ui/PhotoView;->mFilmMode:Z
    invoke-static {v3}, Lcom/android/gallery3d/ui/PhotoView;->access$3400(Lcom/android/gallery3d/ui/PhotoView;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 1504
    add-float v3, p1, v8

    float-to-int v1, v3

    .line 1505
    .local v1, xi:I
    add-float v3, p2, v8

    float-to-int v2, v3

    .line 1506
    .local v2, yi:I
    iget-object v3, p0, Lcom/android/gallery3d/ui/PhotoView$MyGestureListener;->this$0:Lcom/android/gallery3d/ui/PhotoView;

    iget-object v4, p0, Lcom/android/gallery3d/ui/PhotoView$MyGestureListener;->this$0:Lcom/android/gallery3d/ui/PhotoView;

    #getter for: Lcom/android/gallery3d/ui/PhotoView;->mPositionController:Lcom/android/gallery3d/ui/PositionController;
    invoke-static {v4}, Lcom/android/gallery3d/ui/PhotoView;->access$600(Lcom/android/gallery3d/ui/PhotoView;)Lcom/android/gallery3d/ui/PositionController;

    move-result-object v4

    invoke-virtual {v4, v1, v2}, Lcom/android/gallery3d/ui/PositionController;->hitTest(II)I

    move-result v4

    #setter for: Lcom/android/gallery3d/ui/PhotoView;->mTouchBoxIndex:I
    invoke-static {v3, v4}, Lcom/android/gallery3d/ui/PhotoView;->access$4002(Lcom/android/gallery3d/ui/PhotoView;I)I

    .line 1507
    iget-object v3, p0, Lcom/android/gallery3d/ui/PhotoView$MyGestureListener;->this$0:Lcom/android/gallery3d/ui/PhotoView;

    #getter for: Lcom/android/gallery3d/ui/PhotoView;->mTouchBoxIndex:I
    invoke-static {v3}, Lcom/android/gallery3d/ui/PhotoView;->access$4000(Lcom/android/gallery3d/ui/PhotoView;)I

    move-result v3

    iget-object v4, p0, Lcom/android/gallery3d/ui/PhotoView$MyGestureListener;->this$0:Lcom/android/gallery3d/ui/PhotoView;

    #getter for: Lcom/android/gallery3d/ui/PhotoView;->mPrevBound:I
    invoke-static {v4}, Lcom/android/gallery3d/ui/PhotoView;->access$1200(Lcom/android/gallery3d/ui/PhotoView;)I

    move-result v4

    if-lt v3, v4, :cond_2

    iget-object v3, p0, Lcom/android/gallery3d/ui/PhotoView$MyGestureListener;->this$0:Lcom/android/gallery3d/ui/PhotoView;

    #getter for: Lcom/android/gallery3d/ui/PhotoView;->mTouchBoxIndex:I
    invoke-static {v3}, Lcom/android/gallery3d/ui/PhotoView;->access$4000(Lcom/android/gallery3d/ui/PhotoView;)I

    move-result v3

    iget-object v4, p0, Lcom/android/gallery3d/ui/PhotoView$MyGestureListener;->this$0:Lcom/android/gallery3d/ui/PhotoView;

    #getter for: Lcom/android/gallery3d/ui/PhotoView;->mNextBound:I
    invoke-static {v4}, Lcom/android/gallery3d/ui/PhotoView;->access$1100(Lcom/android/gallery3d/ui/PhotoView;)I

    move-result v4

    if-le v3, v4, :cond_4

    .line 1508
    :cond_2
    iget-object v3, p0, Lcom/android/gallery3d/ui/PhotoView$MyGestureListener;->this$0:Lcom/android/gallery3d/ui/PhotoView;

    #setter for: Lcom/android/gallery3d/ui/PhotoView;->mTouchBoxIndex:I
    invoke-static {v3, v9}, Lcom/android/gallery3d/ui/PhotoView;->access$4002(Lcom/android/gallery3d/ui/PhotoView;I)I

    goto :goto_0

    .line 1499
    .end local v1           #xi:I
    .end local v2           #yi:I
    :cond_3
    iput-boolean v6, p0, Lcom/android/gallery3d/ui/PhotoView$MyGestureListener;->mDownInScrolling:Z

    goto :goto_1

    .line 1510
    .restart local v1       #xi:I
    .restart local v2       #yi:I
    :cond_4
    iget-object v4, p0, Lcom/android/gallery3d/ui/PhotoView$MyGestureListener;->this$0:Lcom/android/gallery3d/ui/PhotoView;

    iget-object v3, p0, Lcom/android/gallery3d/ui/PhotoView$MyGestureListener;->this$0:Lcom/android/gallery3d/ui/PhotoView;

    #getter for: Lcom/android/gallery3d/ui/PhotoView;->mPictures:Lcom/android/gallery3d/util/RangeArray;
    invoke-static {v3}, Lcom/android/gallery3d/ui/PhotoView;->access$2300(Lcom/android/gallery3d/ui/PhotoView;)Lcom/android/gallery3d/util/RangeArray;

    move-result-object v3

    iget-object v5, p0, Lcom/android/gallery3d/ui/PhotoView$MyGestureListener;->this$0:Lcom/android/gallery3d/ui/PhotoView;

    #getter for: Lcom/android/gallery3d/ui/PhotoView;->mTouchBoxIndex:I
    invoke-static {v5}, Lcom/android/gallery3d/ui/PhotoView;->access$4000(Lcom/android/gallery3d/ui/PhotoView;)I

    move-result v5

    invoke-virtual {v3, v5}, Lcom/android/gallery3d/util/RangeArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/gallery3d/ui/PhotoView$Picture;

    invoke-interface {v3}, Lcom/android/gallery3d/ui/PhotoView$Picture;->isDeletable()Z

    move-result v3

    #setter for: Lcom/android/gallery3d/ui/PhotoView;->mTouchBoxDeletable:Z
    invoke-static {v4, v3}, Lcom/android/gallery3d/ui/PhotoView;->access$3802(Lcom/android/gallery3d/ui/PhotoView;Z)Z

    goto/16 :goto_0

    .line 1514
    .end local v1           #xi:I
    .end local v2           #yi:I
    :cond_5
    iget-object v3, p0, Lcom/android/gallery3d/ui/PhotoView$MyGestureListener;->this$0:Lcom/android/gallery3d/ui/PhotoView;

    #setter for: Lcom/android/gallery3d/ui/PhotoView;->mTouchBoxIndex:I
    invoke-static {v3, v9}, Lcom/android/gallery3d/ui/PhotoView;->access$4002(Lcom/android/gallery3d/ui/PhotoView;I)I

    goto/16 :goto_0
.end method

.method public onFling(FF)Z
    .locals 2
    .parameter "velocityX"
    .parameter "velocityY"

    .prologue
    const/4 v1, 0x1

    .line 1301
    invoke-direct {p0, p1, p2}, Lcom/android/gallery3d/ui/PhotoView$MyGestureListener;->doFreeShare(FF)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1311
    :cond_0
    :goto_0
    return v1

    .line 1303
    :cond_1
    iget-boolean v0, p0, Lcom/android/gallery3d/ui/PhotoView$MyGestureListener;->mIgnoreSwipingGesture:Z

    if-nez v0, :cond_0

    .line 1304
    iget-boolean v0, p0, Lcom/android/gallery3d/ui/PhotoView$MyGestureListener;->mModeChanged:Z

    if-nez v0, :cond_0

    .line 1305
    iget-object v0, p0, Lcom/android/gallery3d/ui/PhotoView$MyGestureListener;->this$0:Lcom/android/gallery3d/ui/PhotoView;

    #calls: Lcom/android/gallery3d/ui/PhotoView;->swipeImages(FF)Z
    invoke-static {v0, p1, p2}, Lcom/android/gallery3d/ui/PhotoView;->access$3900(Lcom/android/gallery3d/ui/PhotoView;FF)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1306
    iput-boolean v1, p0, Lcom/android/gallery3d/ui/PhotoView$MyGestureListener;->mIgnoreUpEvent:Z

    .line 1310
    :goto_1
    iput-boolean v1, p0, Lcom/android/gallery3d/ui/PhotoView$MyGestureListener;->mHadFling:Z

    goto :goto_0

    .line 1308
    :cond_2
    invoke-direct {p0, p1, p2}, Lcom/android/gallery3d/ui/PhotoView$MyGestureListener;->flingImages(FF)Z

    goto :goto_1
.end method

.method public onScale(FFF)Z
    .locals 6
    .parameter "focusX"
    .parameter "focusY"
    .parameter "scale"

    .prologue
    const/4 v3, 0x0

    const/4 v4, 0x1

    .line 1395
    iget-boolean v2, p0, Lcom/android/gallery3d/ui/PhotoView$MyGestureListener;->mIgnoreScaleGesture:Z

    if-eqz v2, :cond_1

    .line 1437
    :cond_0
    :goto_0
    return v4

    .line 1397
    :cond_1
    iget-boolean v2, p0, Lcom/android/gallery3d/ui/PhotoView$MyGestureListener;->mIgnoreSwipingGesture:Z

    if-nez v2, :cond_0

    .line 1398
    iget-boolean v2, p0, Lcom/android/gallery3d/ui/PhotoView$MyGestureListener;->mIgnoreScalingGesture:Z

    if-nez v2, :cond_0

    .line 1399
    iget-boolean v2, p0, Lcom/android/gallery3d/ui/PhotoView$MyGestureListener;->mModeChanged:Z

    if-nez v2, :cond_0

    .line 1401
    iget-object v2, p0, Lcom/android/gallery3d/ui/PhotoView$MyGestureListener;->this$0:Lcom/android/gallery3d/ui/PhotoView;

    #getter for: Lcom/android/gallery3d/ui/PhotoView;->mPictures:Lcom/android/gallery3d/util/RangeArray;
    invoke-static {v2}, Lcom/android/gallery3d/ui/PhotoView;->access$2300(Lcom/android/gallery3d/ui/PhotoView;)Lcom/android/gallery3d/util/RangeArray;

    move-result-object v2

    invoke-virtual {v2, v3}, Lcom/android/gallery3d/util/RangeArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/gallery3d/ui/PhotoView$Picture;

    invoke-interface {v2}, Lcom/android/gallery3d/ui/PhotoView$Picture;->isVideo()Z

    move-result v2

    if-eqz v2, :cond_2

    const/high16 v2, 0x3f80

    cmpl-float v2, p3, v2

    if-lez v2, :cond_2

    iget-object v2, p0, Lcom/android/gallery3d/ui/PhotoView$MyGestureListener;->this$0:Lcom/android/gallery3d/ui/PhotoView;

    #getter for: Lcom/android/gallery3d/ui/PhotoView;->mFilmMode:Z
    invoke-static {v2}, Lcom/android/gallery3d/ui/PhotoView;->access$3400(Lcom/android/gallery3d/ui/PhotoView;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1403
    :cond_2
    invoke-static {p3}, Ljava/lang/Float;->isNaN(F)Z

    move-result v2

    if-nez v2, :cond_3

    invoke-static {p3}, Ljava/lang/Float;->isInfinite(F)Z

    move-result v2

    if-eqz v2, :cond_4

    :cond_3
    move v4, v3

    goto :goto_0

    .line 1405
    :cond_4
    iget-object v2, p0, Lcom/android/gallery3d/ui/PhotoView$MyGestureListener;->this$0:Lcom/android/gallery3d/ui/PhotoView;

    #getter for: Lcom/android/gallery3d/ui/PhotoView;->mPositionController:Lcom/android/gallery3d/ui/PositionController;
    invoke-static {v2}, Lcom/android/gallery3d/ui/PhotoView;->access$600(Lcom/android/gallery3d/ui/PhotoView;)Lcom/android/gallery3d/ui/PositionController;

    move-result-object v2

    invoke-virtual {v2, p3, p1, p2}, Lcom/android/gallery3d/ui/PositionController;->scaleBy(FFF)I

    move-result v1

    .line 1410
    .local v1, outOfRange:I
    iget v2, p0, Lcom/android/gallery3d/ui/PhotoView$MyGestureListener;->mAccScale:F

    mul-float/2addr v2, p3

    iput v2, p0, Lcom/android/gallery3d/ui/PhotoView$MyGestureListener;->mAccScale:F

    .line 1411
    iget v2, p0, Lcom/android/gallery3d/ui/PhotoView$MyGestureListener;->mAccScale:F

    const v5, 0x3f7851ec

    cmpg-float v2, v2, v5

    if-ltz v2, :cond_5

    iget v2, p0, Lcom/android/gallery3d/ui/PhotoView$MyGestureListener;->mAccScale:F

    const v5, 0x3f83d70a

    cmpl-float v2, v2, v5

    if-lez v2, :cond_9

    :cond_5
    move v0, v4

    .line 1414
    .local v0, largeEnough:Z
    :goto_1
    iget-boolean v2, p0, Lcom/android/gallery3d/ui/PhotoView$MyGestureListener;->mCanChangeMode:Z

    if-eqz v2, :cond_a

    if-eqz v0, :cond_a

    .line 1415
    if-gez v1, :cond_6

    iget-object v2, p0, Lcom/android/gallery3d/ui/PhotoView$MyGestureListener;->this$0:Lcom/android/gallery3d/ui/PhotoView;

    #getter for: Lcom/android/gallery3d/ui/PhotoView;->mFilmMode:Z
    invoke-static {v2}, Lcom/android/gallery3d/ui/PhotoView;->access$3400(Lcom/android/gallery3d/ui/PhotoView;)Z

    move-result v2

    if-eqz v2, :cond_7

    :cond_6
    if-lez v1, :cond_a

    iget-object v2, p0, Lcom/android/gallery3d/ui/PhotoView$MyGestureListener;->this$0:Lcom/android/gallery3d/ui/PhotoView;

    #getter for: Lcom/android/gallery3d/ui/PhotoView;->mFilmMode:Z
    invoke-static {v2}, Lcom/android/gallery3d/ui/PhotoView;->access$3400(Lcom/android/gallery3d/ui/PhotoView;)Z

    move-result v2

    if-eqz v2, :cond_a

    .line 1417
    :cond_7
    invoke-direct {p0}, Lcom/android/gallery3d/ui/PhotoView$MyGestureListener;->stopExtraScalingIfNeeded()V

    .line 1421
    iget-object v2, p0, Lcom/android/gallery3d/ui/PhotoView$MyGestureListener;->this$0:Lcom/android/gallery3d/ui/PhotoView;

    const/4 v5, -0x2

    invoke-static {v2, v5}, Lcom/android/gallery3d/ui/PhotoView;->access$372(Lcom/android/gallery3d/ui/PhotoView;I)I

    .line 1422
    iget-object v2, p0, Lcom/android/gallery3d/ui/PhotoView$MyGestureListener;->this$0:Lcom/android/gallery3d/ui/PhotoView;

    iget-object v5, p0, Lcom/android/gallery3d/ui/PhotoView$MyGestureListener;->this$0:Lcom/android/gallery3d/ui/PhotoView;

    #getter for: Lcom/android/gallery3d/ui/PhotoView;->mFilmMode:Z
    invoke-static {v5}, Lcom/android/gallery3d/ui/PhotoView;->access$3400(Lcom/android/gallery3d/ui/PhotoView;)Z

    move-result v5

    if-nez v5, :cond_8

    move v3, v4

    :cond_8
    invoke-virtual {v2, v3}, Lcom/android/gallery3d/ui/PhotoView;->setFilmMode(Z)V

    .line 1426
    invoke-virtual {p0}, Lcom/android/gallery3d/ui/PhotoView$MyGestureListener;->onScaleEnd()V

    .line 1427
    iput-boolean v4, p0, Lcom/android/gallery3d/ui/PhotoView$MyGestureListener;->mModeChanged:Z

    goto/16 :goto_0

    .end local v0           #largeEnough:Z
    :cond_9
    move v0, v3

    .line 1411
    goto :goto_1

    .line 1432
    .restart local v0       #largeEnough:Z
    :cond_a
    if-eqz v1, :cond_b

    .line 1433
    invoke-direct {p0}, Lcom/android/gallery3d/ui/PhotoView$MyGestureListener;->startExtraScalingIfNeeded()V

    goto/16 :goto_0

    .line 1435
    :cond_b
    invoke-direct {p0}, Lcom/android/gallery3d/ui/PhotoView$MyGestureListener;->stopExtraScalingIfNeeded()V

    goto/16 :goto_0
.end method

.method public onScaleBegin(FF)Z
    .locals 2
    .parameter "focusX"
    .parameter "focusY"

    .prologue
    const/4 v1, 0x1

    .line 1372
    iget-boolean v0, p0, Lcom/android/gallery3d/ui/PhotoView$MyGestureListener;->mIgnoreScaleGesture:Z

    if-eqz v0, :cond_1

    .line 1388
    :cond_0
    :goto_0
    return v1

    .line 1374
    :cond_1
    iget-boolean v0, p0, Lcom/android/gallery3d/ui/PhotoView$MyGestureListener;->mIgnoreSwipingGesture:Z

    if-nez v0, :cond_0

    .line 1377
    iget-object v0, p0, Lcom/android/gallery3d/ui/PhotoView$MyGestureListener;->this$0:Lcom/android/gallery3d/ui/PhotoView;

    invoke-virtual {v0}, Lcom/android/gallery3d/ui/PhotoView;->isCamera()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/gallery3d/ui/PhotoView$MyGestureListener;->mIgnoreScalingGesture:Z

    .line 1379
    iget-boolean v0, p0, Lcom/android/gallery3d/ui/PhotoView$MyGestureListener;->mIgnoreScalingGesture:Z

    if-nez v0, :cond_0

    .line 1382
    iget-object v0, p0, Lcom/android/gallery3d/ui/PhotoView$MyGestureListener;->this$0:Lcom/android/gallery3d/ui/PhotoView;

    #getter for: Lcom/android/gallery3d/ui/PhotoView;->mPositionController:Lcom/android/gallery3d/ui/PositionController;
    invoke-static {v0}, Lcom/android/gallery3d/ui/PhotoView;->access$600(Lcom/android/gallery3d/ui/PhotoView;)Lcom/android/gallery3d/ui/PositionController;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/android/gallery3d/ui/PositionController;->beginScale(FF)V

    .line 1385
    iget-object v0, p0, Lcom/android/gallery3d/ui/PhotoView$MyGestureListener;->this$0:Lcom/android/gallery3d/ui/PhotoView;

    #getter for: Lcom/android/gallery3d/ui/PhotoView;->mFilmMode:Z
    invoke-static {v0}, Lcom/android/gallery3d/ui/PhotoView;->access$3400(Lcom/android/gallery3d/ui/PhotoView;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/android/gallery3d/ui/PhotoView$MyGestureListener;->this$0:Lcom/android/gallery3d/ui/PhotoView;

    #getter for: Lcom/android/gallery3d/ui/PhotoView;->mPositionController:Lcom/android/gallery3d/ui/PositionController;
    invoke-static {v0}, Lcom/android/gallery3d/ui/PhotoView;->access$600(Lcom/android/gallery3d/ui/PhotoView;)Lcom/android/gallery3d/ui/PositionController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/gallery3d/ui/PositionController;->isAtMinimalScale()Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_2
    move v0, v1

    :goto_1
    iput-boolean v0, p0, Lcom/android/gallery3d/ui/PhotoView$MyGestureListener;->mCanChangeMode:Z

    .line 1387
    const/high16 v0, 0x3f80

    iput v0, p0, Lcom/android/gallery3d/ui/PhotoView$MyGestureListener;->mAccScale:F

    goto :goto_0

    .line 1385
    :cond_3
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public onScaleEnd()V
    .locals 1

    .prologue
    .line 1444
    iget-boolean v0, p0, Lcom/android/gallery3d/ui/PhotoView$MyGestureListener;->mIgnoreScaleGesture:Z

    if-eqz v0, :cond_1

    .line 1454
    :cond_0
    :goto_0
    return-void

    .line 1446
    :cond_1
    iget-boolean v0, p0, Lcom/android/gallery3d/ui/PhotoView$MyGestureListener;->mIgnoreSwipingGesture:Z

    if-nez v0, :cond_0

    .line 1447
    iget-boolean v0, p0, Lcom/android/gallery3d/ui/PhotoView$MyGestureListener;->mIgnoreScalingGesture:Z

    if-nez v0, :cond_0

    .line 1450
    iget-object v0, p0, Lcom/android/gallery3d/ui/PhotoView$MyGestureListener;->this$0:Lcom/android/gallery3d/ui/PhotoView;

    #getter for: Lcom/android/gallery3d/ui/PhotoView;->mPositionController:Lcom/android/gallery3d/ui/PositionController;
    invoke-static {v0}, Lcom/android/gallery3d/ui/PhotoView;->access$600(Lcom/android/gallery3d/ui/PhotoView;)Lcom/android/gallery3d/ui/PositionController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/gallery3d/ui/PositionController;->endScale()V

    .line 1451
    iget-boolean v0, p0, Lcom/android/gallery3d/ui/PhotoView$MyGestureListener;->mModeChanged:Z

    if-nez v0, :cond_0

    .line 1452
    iget-object v0, p0, Lcom/android/gallery3d/ui/PhotoView$MyGestureListener;->this$0:Lcom/android/gallery3d/ui/PhotoView;

    #getter for: Lcom/android/gallery3d/ui/PhotoView;->mPositionController:Lcom/android/gallery3d/ui/PositionController;
    invoke-static {v0}, Lcom/android/gallery3d/ui/PhotoView;->access$600(Lcom/android/gallery3d/ui/PhotoView;)Lcom/android/gallery3d/ui/PositionController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/gallery3d/ui/PositionController;->snapback()V

    goto :goto_0
.end method

.method public onScroll(FFFFFF)Z
    .locals 9
    .parameter "dx"
    .parameter "dy"
    .parameter "totalX"
    .parameter "totalY"
    .parameter "lastX"
    .parameter "lastY"

    .prologue
    const/high16 v8, 0x3f00

    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 1244
    iget-object v3, p0, Lcom/android/gallery3d/ui/PhotoView$MyGestureListener;->this$0:Lcom/android/gallery3d/ui/PhotoView;

    #getter for: Lcom/android/gallery3d/ui/PhotoView;->mPictures:Lcom/android/gallery3d/util/RangeArray;
    invoke-static {v3}, Lcom/android/gallery3d/ui/PhotoView;->access$2300(Lcom/android/gallery3d/ui/PhotoView;)Lcom/android/gallery3d/util/RangeArray;

    move-result-object v3

    invoke-virtual {v3, v5}, Lcom/android/gallery3d/util/RangeArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/gallery3d/ui/PhotoView$Picture;

    invoke-interface {v3}, Lcom/android/gallery3d/ui/PhotoView$Picture;->isCamera()Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/gallery3d/ui/PhotoView$MyGestureListener;->this$0:Lcom/android/gallery3d/ui/PhotoView;

    #getter for: Lcom/android/gallery3d/ui/PhotoView;->mMeteringDrag:Z
    invoke-static {v3}, Lcom/android/gallery3d/ui/PhotoView;->access$3700(Lcom/android/gallery3d/ui/PhotoView;)Z

    move-result v3

    if-ne v4, v3, :cond_0

    .line 1245
    const/4 v3, 0x2

    new-array v2, v3, [F

    aput p5, v2, v5

    aput p6, v2, v4

    .line 1246
    .local v2, pts:[F
    invoke-virtual {p0, v2}, Lcom/android/gallery3d/ui/PhotoView$MyGestureListener;->viewMapPoints([F)V

    .line 1247
    iget-object v3, p0, Lcom/android/gallery3d/ui/PhotoView$MyGestureListener;->this$0:Lcom/android/gallery3d/ui/PhotoView;

    #getter for: Lcom/android/gallery3d/ui/PhotoView;->mListener:Lcom/android/gallery3d/ui/PhotoView$Listener;
    invoke-static {v3}, Lcom/android/gallery3d/ui/PhotoView;->access$000(Lcom/android/gallery3d/ui/PhotoView;)Lcom/android/gallery3d/ui/PhotoView$Listener;

    move-result-object v3

    aget v6, v2, v5

    add-float/2addr v6, v8

    float-to-int v6, v6

    aget v7, v2, v4

    add-float/2addr v7, v8

    float-to-int v7, v7

    invoke-interface {v3, v6, v7, v5}, Lcom/android/gallery3d/ui/PhotoView$Listener;->updateMeteringPos(IIZ)V

    .line 1250
    .end local v2           #pts:[F
    :cond_0
    iget-boolean v3, p0, Lcom/android/gallery3d/ui/PhotoView$MyGestureListener;->mIgnoreSwipingGesture:Z

    if-eqz v3, :cond_2

    .line 1280
    :cond_1
    :goto_0
    return v4

    .line 1251
    :cond_2
    iget-boolean v3, p0, Lcom/android/gallery3d/ui/PhotoView$MyGestureListener;->mScrolledAfterDown:Z

    if-nez v3, :cond_3

    .line 1252
    iput-boolean v4, p0, Lcom/android/gallery3d/ui/PhotoView$MyGestureListener;->mScrolledAfterDown:Z

    .line 1253
    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result v3

    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    move-result v6

    cmpl-float v3, v3, v6

    if-lez v3, :cond_4

    move v3, v4

    :goto_1
    iput-boolean v3, p0, Lcom/android/gallery3d/ui/PhotoView$MyGestureListener;->mFirstScrollX:Z

    .line 1256
    :cond_3
    invoke-direct {p0}, Lcom/android/gallery3d/ui/PhotoView$MyGestureListener;->isFreeShareMode()Z

    move-result v3

    if-nez v3, :cond_1

    .line 1258
    neg-float v3, p1

    add-float/2addr v3, v8

    float-to-int v0, v3

    .line 1259
    .local v0, dxi:I
    neg-float v3, p2

    add-float/2addr v3, v8

    float-to-int v1, v3

    .line 1260
    .local v1, dyi:I
    iget-object v3, p0, Lcom/android/gallery3d/ui/PhotoView$MyGestureListener;->this$0:Lcom/android/gallery3d/ui/PhotoView;

    #getter for: Lcom/android/gallery3d/ui/PhotoView;->mFilmMode:Z
    invoke-static {v3}, Lcom/android/gallery3d/ui/PhotoView;->access$3400(Lcom/android/gallery3d/ui/PhotoView;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 1261
    iget-boolean v3, p0, Lcom/android/gallery3d/ui/PhotoView$MyGestureListener;->mFirstScrollX:Z

    if-eqz v3, :cond_1

    .line 1262
    iget-object v3, p0, Lcom/android/gallery3d/ui/PhotoView$MyGestureListener;->this$0:Lcom/android/gallery3d/ui/PhotoView;

    #getter for: Lcom/android/gallery3d/ui/PhotoView;->mPositionController:Lcom/android/gallery3d/ui/PositionController;
    invoke-static {v3}, Lcom/android/gallery3d/ui/PhotoView;->access$600(Lcom/android/gallery3d/ui/PhotoView;)Lcom/android/gallery3d/ui/PositionController;

    move-result-object v3

    invoke-virtual {v3, v0}, Lcom/android/gallery3d/ui/PositionController;->scrollFilmX(I)V

    goto :goto_0

    .end local v0           #dxi:I
    .end local v1           #dyi:I
    :cond_4
    move v3, v5

    .line 1253
    goto :goto_1

    .line 1278
    .restart local v0       #dxi:I
    .restart local v1       #dyi:I
    :cond_5
    iget-object v3, p0, Lcom/android/gallery3d/ui/PhotoView$MyGestureListener;->this$0:Lcom/android/gallery3d/ui/PhotoView;

    #getter for: Lcom/android/gallery3d/ui/PhotoView;->mPositionController:Lcom/android/gallery3d/ui/PositionController;
    invoke-static {v3}, Lcom/android/gallery3d/ui/PhotoView;->access$600(Lcom/android/gallery3d/ui/PhotoView;)Lcom/android/gallery3d/ui/PositionController;

    move-result-object v3

    invoke-virtual {v3, v0, v1}, Lcom/android/gallery3d/ui/PositionController;->scrollPage(II)V

    goto :goto_0
.end method

.method public onSingleTapUp(FF)Z
    .locals 13
    .parameter "x"
    .parameter "y"

    .prologue
    .line 1124
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xe

    if-ge v0, v1, :cond_0

    .line 1125
    iget-object v0, p0, Lcom/android/gallery3d/ui/PhotoView$MyGestureListener;->this$0:Lcom/android/gallery3d/ui/PhotoView;

    #getter for: Lcom/android/gallery3d/ui/PhotoView;->mHolding:I
    invoke-static {v0}, Lcom/android/gallery3d/ui/PhotoView;->access$300(Lcom/android/gallery3d/ui/PhotoView;)I

    move-result v0

    and-int/lit8 v0, v0, 0x1

    if-nez v0, :cond_0

    .line 1126
    const/4 v0, 0x1

    .line 1174
    :goto_0
    return v0

    .line 1131
    :cond_0
    iget-boolean v0, p0, Lcom/android/gallery3d/ui/PhotoView$MyGestureListener;->mIgnoreSwipingGesture:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/gallery3d/ui/PhotoView$MyGestureListener;->this$0:Lcom/android/gallery3d/ui/PhotoView;

    invoke-virtual {v0}, Lcom/android/gallery3d/ui/PhotoView;->isCamera()Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    .line 1136
    :cond_1
    iget-object v0, p0, Lcom/android/gallery3d/ui/PhotoView$MyGestureListener;->this$0:Lcom/android/gallery3d/ui/PhotoView;

    const/4 v1, -0x2

    invoke-static {v0, v1}, Lcom/android/gallery3d/ui/PhotoView;->access$372(Lcom/android/gallery3d/ui/PhotoView;I)I

    .line 1138
    iget-object v0, p0, Lcom/android/gallery3d/ui/PhotoView$MyGestureListener;->this$0:Lcom/android/gallery3d/ui/PhotoView;

    #getter for: Lcom/android/gallery3d/ui/PhotoView;->mFilmMode:Z
    invoke-static {v0}, Lcom/android/gallery3d/ui/PhotoView;->access$3400(Lcom/android/gallery3d/ui/PhotoView;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-boolean v0, p0, Lcom/android/gallery3d/ui/PhotoView$MyGestureListener;->mDownInScrolling:Z

    if-nez v0, :cond_3

    .line 1139
    iget-object v0, p0, Lcom/android/gallery3d/ui/PhotoView$MyGestureListener;->this$0:Lcom/android/gallery3d/ui/PhotoView;

    const/high16 v1, 0x3f00

    add-float/2addr v1, p1

    float-to-int v1, v1

    const/high16 v2, 0x3f00

    add-float/2addr v2, p2

    float-to-int v2, v2

    #calls: Lcom/android/gallery3d/ui/PhotoView;->switchToHitPicture(II)V
    invoke-static {v0, v1, v2}, Lcom/android/gallery3d/ui/PhotoView;->access$3500(Lcom/android/gallery3d/ui/PhotoView;II)V

    .line 1144
    iget-object v0, p0, Lcom/android/gallery3d/ui/PhotoView$MyGestureListener;->this$0:Lcom/android/gallery3d/ui/PhotoView;

    #getter for: Lcom/android/gallery3d/ui/PhotoView;->mModel:Lcom/android/gallery3d/ui/PhotoView$Model;
    invoke-static {v0}, Lcom/android/gallery3d/ui/PhotoView;->access$1300(Lcom/android/gallery3d/ui/PhotoView;)Lcom/android/gallery3d/ui/PhotoView$Model;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/android/gallery3d/ui/PhotoView$Model;->getMediaItem(I)Lcom/android/gallery3d/data/MediaItem;

    move-result-object v9

    .line 1145
    .local v9, item:Lcom/android/gallery3d/data/MediaItem;
    const/4 v12, 0x0

    .line 1146
    .local v12, supported:I
    if-eqz v9, :cond_2

    invoke-virtual {v9}, Lcom/android/gallery3d/data/MediaItem;->getSupportedOperations()I

    move-result v12

    .line 1147
    :cond_2
    const v0, 0x8000

    and-int/2addr v0, v12

    if-nez v0, :cond_3

    .line 1148
    iget-object v0, p0, Lcom/android/gallery3d/ui/PhotoView$MyGestureListener;->this$0:Lcom/android/gallery3d/ui/PhotoView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/ui/PhotoView;->setFilmMode(Z)V

    .line 1149
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/gallery3d/ui/PhotoView$MyGestureListener;->mIgnoreUpEvent:Z

    .line 1150
    const/4 v0, 0x1

    goto :goto_0

    .line 1154
    .end local v9           #item:Lcom/android/gallery3d/data/MediaItem;
    .end local v12           #supported:I
    :cond_3
    iget-object v0, p0, Lcom/android/gallery3d/ui/PhotoView$MyGestureListener;->this$0:Lcom/android/gallery3d/ui/PhotoView;

    #getter for: Lcom/android/gallery3d/ui/PhotoView;->mListener:Lcom/android/gallery3d/ui/PhotoView$Listener;
    invoke-static {v0}, Lcom/android/gallery3d/ui/PhotoView;->access$000(Lcom/android/gallery3d/ui/PhotoView;)Lcom/android/gallery3d/ui/PhotoView$Listener;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 1155
    const/4 v0, 0x1

    new-array v4, v0, [I

    .line 1156
    .local v4, nameType:[I
    new-instance v5, Landroid/graphics/Point;

    invoke-direct {v5}, Landroid/graphics/Point;-><init>()V

    .line 1157
    .local v5, point:Landroid/graphics/Point;
    const/4 v0, 0x1

    new-array v6, v0, [I

    .line 1158
    .local v6, leftPadding:[I
    iget-object v0, p0, Lcom/android/gallery3d/ui/PhotoView$MyGestureListener;->this$0:Lcom/android/gallery3d/ui/PhotoView;

    #getter for: Lcom/android/gallery3d/ui/PhotoView;->mFaceIndicator:Lcom/android/gallery3d/ui/FaceIndicator;
    invoke-static {v0}, Lcom/android/gallery3d/ui/PhotoView;->access$3200(Lcom/android/gallery3d/ui/PhotoView;)Lcom/android/gallery3d/ui/FaceIndicator;

    move-result-object v0

    iget-object v1, p0, Lcom/android/gallery3d/ui/PhotoView$MyGestureListener;->this$0:Lcom/android/gallery3d/ui/PhotoView;

    #getter for: Lcom/android/gallery3d/ui/PhotoView;->mPositionController:Lcom/android/gallery3d/ui/PositionController;
    invoke-static {v1}, Lcom/android/gallery3d/ui/PhotoView;->access$600(Lcom/android/gallery3d/ui/PhotoView;)Lcom/android/gallery3d/ui/PositionController;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/gallery3d/ui/PositionController;->getPosition(I)Landroid/graphics/Rect;

    move-result-object v3

    move v1, p1

    move v2, p2

    invoke-virtual/range {v0 .. v6}, Lcom/android/gallery3d/ui/FaceIndicator;->onTouch(FFLandroid/graphics/Rect;[ILandroid/graphics/Point;[I)I

    move-result v7

    .line 1159
    .local v7, faceId:I
    if-ltz v7, :cond_4

    .line 1160
    iget-object v0, p0, Lcom/android/gallery3d/ui/PhotoView$MyGestureListener;->this$0:Lcom/android/gallery3d/ui/PhotoView;

    #getter for: Lcom/android/gallery3d/ui/PhotoView;->mListener:Lcom/android/gallery3d/ui/PhotoView$Listener;
    invoke-static {v0}, Lcom/android/gallery3d/ui/PhotoView;->access$000(Lcom/android/gallery3d/ui/PhotoView;)Lcom/android/gallery3d/ui/PhotoView$Listener;

    move-result-object v0

    const/4 v1, 0x0

    aget v1, v4, v1

    const/4 v2, 0x0

    aget v2, v6, v2

    invoke-interface {v0, v7, v1, v5, v2}, Lcom/android/gallery3d/ui/PhotoView$Listener;->onFaceTouched(IILandroid/graphics/Point;I)V

    .line 1161
    const/4 v0, 0x3

    const/4 v1, 0x0

    aget v1, v4, v1

    if-ne v0, v1, :cond_4

    .line 1162
    iget-object v0, p0, Lcom/android/gallery3d/ui/PhotoView$MyGestureListener;->this$0:Lcom/android/gallery3d/ui/PhotoView;

    invoke-virtual {v0}, Lcom/android/gallery3d/ui/PhotoView;->invalidate()V

    .line 1163
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 1167
    :cond_4
    iget-object v0, p0, Lcom/android/gallery3d/ui/PhotoView$MyGestureListener;->this$0:Lcom/android/gallery3d/ui/PhotoView;

    invoke-virtual {v0}, Lcom/android/gallery3d/ui/PhotoView;->getGLRoot()Lcom/android/gallery3d/ui/GLRoot;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/gallery3d/ui/GLRoot;->getCompensationMatrix()Landroid/graphics/Matrix;

    move-result-object v10

    .line 1168
    .local v10, m:Landroid/graphics/Matrix;
    new-instance v8, Landroid/graphics/Matrix;

    invoke-direct {v8}, Landroid/graphics/Matrix;-><init>()V

    .line 1169
    .local v8, inv:Landroid/graphics/Matrix;
    invoke-virtual {v10, v8}, Landroid/graphics/Matrix;->invert(Landroid/graphics/Matrix;)Z

    .line 1170
    const/4 v0, 0x2

    new-array v11, v0, [F

    const/4 v0, 0x0

    aput p1, v11, v0

    const/4 v0, 0x1

    aput p2, v11, v0

    .line 1171
    .local v11, pts:[F
    invoke-virtual {v8, v11}, Landroid/graphics/Matrix;->mapPoints([F)V

    .line 1172
    iget-object v0, p0, Lcom/android/gallery3d/ui/PhotoView$MyGestureListener;->this$0:Lcom/android/gallery3d/ui/PhotoView;

    #getter for: Lcom/android/gallery3d/ui/PhotoView;->mListener:Lcom/android/gallery3d/ui/PhotoView$Listener;
    invoke-static {v0}, Lcom/android/gallery3d/ui/PhotoView;->access$000(Lcom/android/gallery3d/ui/PhotoView;)Lcom/android/gallery3d/ui/PhotoView$Listener;

    move-result-object v0

    const/4 v1, 0x0

    aget v1, v11, v1

    const/high16 v2, 0x3f00

    add-float/2addr v1, v2

    float-to-int v1, v1

    const/4 v2, 0x1

    aget v2, v11, v2

    const/high16 v3, 0x3f00

    add-float/2addr v2, v3

    float-to-int v2, v2

    invoke-interface {v0, v1, v2}, Lcom/android/gallery3d/ui/PhotoView$Listener;->onSingleTapUp(II)V

    .line 1174
    .end local v4           #nameType:[I
    .end local v5           #point:Landroid/graphics/Point;
    .end local v6           #leftPadding:[I
    .end local v7           #faceId:I
    .end local v8           #inv:Landroid/graphics/Matrix;
    .end local v10           #m:Landroid/graphics/Matrix;
    .end local v11           #pts:[F
    :cond_5
    const/4 v0, 0x1

    goto/16 :goto_0
.end method

.method public onUp(FF)V
    .locals 7
    .parameter "x"
    .parameter "y"

    .prologue
    const/high16 v6, 0x3f00

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 1521
    iget-object v1, p0, Lcom/android/gallery3d/ui/PhotoView$MyGestureListener;->this$0:Lcom/android/gallery3d/ui/PhotoView;

    #getter for: Lcom/android/gallery3d/ui/PhotoView;->mPictures:Lcom/android/gallery3d/util/RangeArray;
    invoke-static {v1}, Lcom/android/gallery3d/ui/PhotoView;->access$2300(Lcom/android/gallery3d/ui/PhotoView;)Lcom/android/gallery3d/util/RangeArray;

    move-result-object v1

    invoke-virtual {v1, v4}, Lcom/android/gallery3d/util/RangeArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/gallery3d/ui/PhotoView$Picture;

    invoke-interface {v1}, Lcom/android/gallery3d/ui/PhotoView$Picture;->isCamera()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/gallery3d/ui/PhotoView$MyGestureListener;->this$0:Lcom/android/gallery3d/ui/PhotoView;

    #getter for: Lcom/android/gallery3d/ui/PhotoView;->mMeteringDrag:Z
    invoke-static {v1}, Lcom/android/gallery3d/ui/PhotoView;->access$3700(Lcom/android/gallery3d/ui/PhotoView;)Z

    move-result v1

    if-ne v5, v1, :cond_0

    .line 1522
    const/4 v1, 0x2

    new-array v0, v1, [F

    aput p1, v0, v4

    aput p2, v0, v5

    .line 1523
    .local v0, pts:[F
    invoke-virtual {p0, v0}, Lcom/android/gallery3d/ui/PhotoView$MyGestureListener;->viewMapPoints([F)V

    .line 1525
    iget-object v1, p0, Lcom/android/gallery3d/ui/PhotoView$MyGestureListener;->this$0:Lcom/android/gallery3d/ui/PhotoView;

    #setter for: Lcom/android/gallery3d/ui/PhotoView;->mMeteringDrag:Z
    invoke-static {v1, v4}, Lcom/android/gallery3d/ui/PhotoView;->access$3702(Lcom/android/gallery3d/ui/PhotoView;Z)Z

    .line 1526
    iget-object v1, p0, Lcom/android/gallery3d/ui/PhotoView$MyGestureListener;->this$0:Lcom/android/gallery3d/ui/PhotoView;

    #getter for: Lcom/android/gallery3d/ui/PhotoView;->mListener:Lcom/android/gallery3d/ui/PhotoView$Listener;
    invoke-static {v1}, Lcom/android/gallery3d/ui/PhotoView;->access$000(Lcom/android/gallery3d/ui/PhotoView;)Lcom/android/gallery3d/ui/PhotoView$Listener;

    move-result-object v1

    aget v2, v0, v4

    add-float/2addr v2, v6

    float-to-int v2, v2

    aget v3, v0, v5

    add-float/2addr v3, v6

    float-to-int v3, v3

    invoke-interface {v1, v2, v3, v5}, Lcom/android/gallery3d/ui/PhotoView$Listener;->updateMeteringPos(IIZ)V

    .line 1527
    iput-boolean v4, p0, Lcom/android/gallery3d/ui/PhotoView$MyGestureListener;->mIgnoreSwipingGesture:Z

    .line 1528
    iget-object v1, p0, Lcom/android/gallery3d/ui/PhotoView$MyGestureListener;->this$0:Lcom/android/gallery3d/ui/PhotoView;

    #getter for: Lcom/android/gallery3d/ui/PhotoView;->mGestureListener:Lcom/android/gallery3d/ui/PhotoView$MyGestureListener;
    invoke-static {v1}, Lcom/android/gallery3d/ui/PhotoView;->access$4200(Lcom/android/gallery3d/ui/PhotoView;)Lcom/android/gallery3d/ui/PhotoView$MyGestureListener;

    move-result-object v1

    invoke-virtual {v1, v5}, Lcom/android/gallery3d/ui/PhotoView$MyGestureListener;->setSwipingEnabled(Z)V

    .line 1531
    .end local v0           #pts:[F
    :cond_0
    iget-boolean v1, p0, Lcom/android/gallery3d/ui/PhotoView$MyGestureListener;->mIgnoreSwipingGesture:Z

    if-eqz v1, :cond_2

    .line 1566
    :cond_1
    :goto_0
    return-void

    .line 1532
    :cond_2
    iget-object v1, p0, Lcom/android/gallery3d/ui/PhotoView$MyGestureListener;->this$0:Lcom/android/gallery3d/ui/PhotoView;

    const/4 v2, -0x2

    invoke-static {v1, v2}, Lcom/android/gallery3d/ui/PhotoView;->access$372(Lcom/android/gallery3d/ui/PhotoView;I)I

    .line 1533
    iget-object v1, p0, Lcom/android/gallery3d/ui/PhotoView$MyGestureListener;->this$0:Lcom/android/gallery3d/ui/PhotoView;

    #getter for: Lcom/android/gallery3d/ui/PhotoView;->mEdgeView:Lcom/android/gallery3d/ui/EdgeView;
    invoke-static {v1}, Lcom/android/gallery3d/ui/PhotoView;->access$400(Lcom/android/gallery3d/ui/PhotoView;)Lcom/android/gallery3d/ui/EdgeView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/gallery3d/ui/EdgeView;->onRelease()V

    .line 1556
    iget-boolean v1, p0, Lcom/android/gallery3d/ui/PhotoView$MyGestureListener;->mIgnoreUpEvent:Z

    if-eqz v1, :cond_3

    .line 1557
    iput-boolean v4, p0, Lcom/android/gallery3d/ui/PhotoView$MyGestureListener;->mIgnoreUpEvent:Z

    goto :goto_0

    .line 1561
    :cond_3
    invoke-direct {p0}, Lcom/android/gallery3d/ui/PhotoView$MyGestureListener;->isFreeShareMode()Z

    move-result v1

    if-nez v1, :cond_1

    .line 1562
    iget-object v1, p0, Lcom/android/gallery3d/ui/PhotoView$MyGestureListener;->this$0:Lcom/android/gallery3d/ui/PhotoView;

    #getter for: Lcom/android/gallery3d/ui/PhotoView;->mFilmMode:Z
    invoke-static {v1}, Lcom/android/gallery3d/ui/PhotoView;->access$3400(Lcom/android/gallery3d/ui/PhotoView;)Z

    move-result v1

    if-eqz v1, :cond_4

    iget-boolean v1, p0, Lcom/android/gallery3d/ui/PhotoView$MyGestureListener;->mHadFling:Z

    if-nez v1, :cond_4

    iget-boolean v1, p0, Lcom/android/gallery3d/ui/PhotoView$MyGestureListener;->mFirstScrollX:Z

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/android/gallery3d/ui/PhotoView$MyGestureListener;->this$0:Lcom/android/gallery3d/ui/PhotoView;

    #calls: Lcom/android/gallery3d/ui/PhotoView;->snapToNeighborImage()Z
    invoke-static {v1}, Lcom/android/gallery3d/ui/PhotoView;->access$4300(Lcom/android/gallery3d/ui/PhotoView;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 1564
    :cond_4
    iget-object v1, p0, Lcom/android/gallery3d/ui/PhotoView$MyGestureListener;->this$0:Lcom/android/gallery3d/ui/PhotoView;

    #calls: Lcom/android/gallery3d/ui/PhotoView;->snapback()V
    invoke-static {v1}, Lcom/android/gallery3d/ui/PhotoView;->access$1500(Lcom/android/gallery3d/ui/PhotoView;)V

    goto :goto_0
.end method

.method public setScaleGestureEnabled(Z)V
    .locals 1
    .parameter "enabled"

    .prologue
    .line 1600
    if-nez p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/android/gallery3d/ui/PhotoView$MyGestureListener;->mIgnoreScaleGesture:Z

    .line 1601
    return-void

    .line 1600
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setSwipingEnabled(Z)V
    .locals 1
    .parameter "enabled"

    .prologue
    .line 1569
    if-nez p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/android/gallery3d/ui/PhotoView$MyGestureListener;->mIgnoreSwipingGesture:Z

    .line 1570
    return-void

    .line 1569
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public viewMapPoints([F)V
    .locals 3
    .parameter "pts"

    .prologue
    .line 1208
    iget-object v2, p0, Lcom/android/gallery3d/ui/PhotoView$MyGestureListener;->this$0:Lcom/android/gallery3d/ui/PhotoView;

    invoke-virtual {v2}, Lcom/android/gallery3d/ui/PhotoView;->getGLRoot()Lcom/android/gallery3d/ui/GLRoot;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/gallery3d/ui/GLRoot;->getCompensationMatrix()Landroid/graphics/Matrix;

    move-result-object v1

    .line 1209
    .local v1, m:Landroid/graphics/Matrix;
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    .line 1210
    .local v0, inv:Landroid/graphics/Matrix;
    invoke-virtual {v1, v0}, Landroid/graphics/Matrix;->invert(Landroid/graphics/Matrix;)Z

    .line 1211
    invoke-virtual {v0, p1}, Landroid/graphics/Matrix;->mapPoints([F)V

    .line 1212
    return-void
.end method
