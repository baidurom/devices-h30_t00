.class Lcom/android/gallery3d/ui/PositionController$Platform;
.super Lcom/android/gallery3d/ui/PositionController$Animatable;
.source "PositionController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/gallery3d/ui/PositionController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Platform"
.end annotation


# instance fields
.field public mCurrentX:I

.field public mCurrentY:I

.field public mDefaultX:I

.field public mDefaultY:I

.field public mFlingOffset:I

.field public mFromX:I

.field public mFromY:I

.field public mToX:I

.field public mToY:I

.field final synthetic this$0:Lcom/android/gallery3d/ui/PositionController;


# direct methods
.method private constructor <init>(Lcom/android/gallery3d/ui/PositionController;)V
    .locals 1
    .parameter

    .prologue
    .line 1501
    iput-object p1, p0, Lcom/android/gallery3d/ui/PositionController$Platform;->this$0:Lcom/android/gallery3d/ui/PositionController;

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/gallery3d/ui/PositionController$Animatable;-><init>(Lcom/android/gallery3d/ui/PositionController$1;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/gallery3d/ui/PositionController;Lcom/android/gallery3d/ui/PositionController$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1501
    invoke-direct {p0, p1}, Lcom/android/gallery3d/ui/PositionController$Platform;-><init>(Lcom/android/gallery3d/ui/PositionController;)V

    return-void
.end method

.method static synthetic access$400(Lcom/android/gallery3d/ui/PositionController$Platform;III)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 1501
    invoke-direct {p0, p1, p2, p3}, Lcom/android/gallery3d/ui/PositionController$Platform;->doAnimation(III)Z

    move-result v0

    return v0
.end method

.method private doAnimation(III)Z
    .locals 3
    .parameter "targetX"
    .parameter "targetY"
    .parameter "kind"

    .prologue
    const/4 v0, 0x0

    .line 1568
    iget v1, p0, Lcom/android/gallery3d/ui/PositionController$Platform;->mCurrentX:I

    if-ne v1, p1, :cond_0

    iget v1, p0, Lcom/android/gallery3d/ui/PositionController$Platform;->mCurrentY:I

    if-ne v1, p2, :cond_0

    .line 1578
    :goto_0
    return v0

    .line 1569
    :cond_0
    iput p3, p0, Lcom/android/gallery3d/ui/PositionController$Animatable;->mAnimationKind:I

    .line 1570
    iget v1, p0, Lcom/android/gallery3d/ui/PositionController$Platform;->mCurrentX:I

    iput v1, p0, Lcom/android/gallery3d/ui/PositionController$Platform;->mFromX:I

    .line 1571
    iget v1, p0, Lcom/android/gallery3d/ui/PositionController$Platform;->mCurrentY:I

    iput v1, p0, Lcom/android/gallery3d/ui/PositionController$Platform;->mFromY:I

    .line 1572
    iput p1, p0, Lcom/android/gallery3d/ui/PositionController$Platform;->mToX:I

    .line 1573
    iput p2, p0, Lcom/android/gallery3d/ui/PositionController$Platform;->mToY:I

    .line 1574
    invoke-static {}, Lcom/android/gallery3d/ui/AnimationTime;->startTime()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/android/gallery3d/ui/PositionController$Animatable;->mAnimationStartTime:J

    .line 1575
    invoke-static {}, Lcom/android/gallery3d/ui/PositionController;->access$2300()[I

    move-result-object v1

    aget v1, v1, p3

    iput v1, p0, Lcom/android/gallery3d/ui/PositionController$Animatable;->mAnimationDuration:I

    .line 1576
    iput v0, p0, Lcom/android/gallery3d/ui/PositionController$Platform;->mFlingOffset:I

    .line 1577
    invoke-virtual {p0}, Lcom/android/gallery3d/ui/PositionController$Platform;->advanceAnimation()Z

    .line 1578
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private interpolateFlingFilm(F)Z
    .locals 3
    .parameter "progress"

    .prologue
    .line 1593
    iget-object v1, p0, Lcom/android/gallery3d/ui/PositionController$Platform;->this$0:Lcom/android/gallery3d/ui/PositionController;

    #getter for: Lcom/android/gallery3d/ui/PositionController;->mFilmScroller:Landroid/widget/Scroller;
    invoke-static {v1}, Lcom/android/gallery3d/ui/PositionController;->access$2400(Lcom/android/gallery3d/ui/PositionController;)Landroid/widget/Scroller;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Scroller;->computeScrollOffset()Z

    .line 1594
    iget-object v1, p0, Lcom/android/gallery3d/ui/PositionController$Platform;->this$0:Lcom/android/gallery3d/ui/PositionController;

    #getter for: Lcom/android/gallery3d/ui/PositionController;->mFilmScroller:Landroid/widget/Scroller;
    invoke-static {v1}, Lcom/android/gallery3d/ui/PositionController;->access$2400(Lcom/android/gallery3d/ui/PositionController;)Landroid/widget/Scroller;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Scroller;->getCurrX()I

    move-result v1

    iget v2, p0, Lcom/android/gallery3d/ui/PositionController$Platform;->mFlingOffset:I

    add-int/2addr v1, v2

    iput v1, p0, Lcom/android/gallery3d/ui/PositionController$Platform;->mCurrentX:I

    .line 1596
    const/4 v0, -0x1

    .line 1597
    .local v0, dir:I
    iget v1, p0, Lcom/android/gallery3d/ui/PositionController$Platform;->mCurrentX:I

    iget v2, p0, Lcom/android/gallery3d/ui/PositionController$Platform;->mDefaultX:I

    if-ge v1, v2, :cond_2

    .line 1598
    iget-object v1, p0, Lcom/android/gallery3d/ui/PositionController$Platform;->this$0:Lcom/android/gallery3d/ui/PositionController;

    #getter for: Lcom/android/gallery3d/ui/PositionController;->mHasNext:Z
    invoke-static {v1}, Lcom/android/gallery3d/ui/PositionController;->access$2500(Lcom/android/gallery3d/ui/PositionController;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1599
    const/4 v0, 0x3

    .line 1606
    :cond_0
    :goto_0
    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    .line 1610
    iget-object v1, p0, Lcom/android/gallery3d/ui/PositionController$Platform;->this$0:Lcom/android/gallery3d/ui/PositionController;

    #getter for: Lcom/android/gallery3d/ui/PositionController;->mFilmScroller:Landroid/widget/Scroller;
    invoke-static {v1}, Lcom/android/gallery3d/ui/PositionController;->access$2400(Lcom/android/gallery3d/ui/PositionController;)Landroid/widget/Scroller;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/widget/Scroller;->forceFinished(Z)V

    .line 1611
    iget v1, p0, Lcom/android/gallery3d/ui/PositionController$Platform;->mDefaultX:I

    iput v1, p0, Lcom/android/gallery3d/ui/PositionController$Platform;->mCurrentX:I

    .line 1613
    :cond_1
    iget-object v1, p0, Lcom/android/gallery3d/ui/PositionController$Platform;->this$0:Lcom/android/gallery3d/ui/PositionController;

    #getter for: Lcom/android/gallery3d/ui/PositionController;->mFilmScroller:Landroid/widget/Scroller;
    invoke-static {v1}, Lcom/android/gallery3d/ui/PositionController;->access$2400(Lcom/android/gallery3d/ui/PositionController;)Landroid/widget/Scroller;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Scroller;->isFinished()Z

    move-result v1

    return v1

    .line 1601
    :cond_2
    iget v1, p0, Lcom/android/gallery3d/ui/PositionController$Platform;->mCurrentX:I

    iget v2, p0, Lcom/android/gallery3d/ui/PositionController$Platform;->mDefaultX:I

    if-le v1, v2, :cond_0

    .line 1602
    iget-object v1, p0, Lcom/android/gallery3d/ui/PositionController$Platform;->this$0:Lcom/android/gallery3d/ui/PositionController;

    #getter for: Lcom/android/gallery3d/ui/PositionController;->mHasPrev:Z
    invoke-static {v1}, Lcom/android/gallery3d/ui/PositionController;->access$2600(Lcom/android/gallery3d/ui/PositionController;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1603
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private interpolateFlingPage(F)Z
    .locals 8
    .parameter "progress"

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    const/high16 v7, 0x3f00

    .line 1617
    iget-object v5, p0, Lcom/android/gallery3d/ui/PositionController$Platform;->this$0:Lcom/android/gallery3d/ui/PositionController;

    #getter for: Lcom/android/gallery3d/ui/PositionController;->mPageScroller:Lcom/android/gallery3d/ui/FlingScroller;
    invoke-static {v5}, Lcom/android/gallery3d/ui/PositionController;->access$2700(Lcom/android/gallery3d/ui/PositionController;)Lcom/android/gallery3d/ui/FlingScroller;

    move-result-object v5

    invoke-virtual {v5, p1}, Lcom/android/gallery3d/ui/FlingScroller;->computeScrollOffset(F)V

    .line 1618
    iget-object v5, p0, Lcom/android/gallery3d/ui/PositionController$Platform;->this$0:Lcom/android/gallery3d/ui/PositionController;

    #getter for: Lcom/android/gallery3d/ui/PositionController;->mBoxes:Lcom/android/gallery3d/util/RangeArray;
    invoke-static {v5}, Lcom/android/gallery3d/ui/PositionController;->access$900(Lcom/android/gallery3d/ui/PositionController;)Lcom/android/gallery3d/util/RangeArray;

    move-result-object v5

    invoke-virtual {v5, v4}, Lcom/android/gallery3d/util/RangeArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/gallery3d/ui/PositionController$Box;

    .line 1619
    .local v0, b:Lcom/android/gallery3d/ui/PositionController$Box;
    iget-object v5, p0, Lcom/android/gallery3d/ui/PositionController$Platform;->this$0:Lcom/android/gallery3d/ui/PositionController;

    iget v6, v0, Lcom/android/gallery3d/ui/PositionController$Box;->mCurrentScale:F

    #calls: Lcom/android/gallery3d/ui/PositionController;->calculateStableBound(F)V
    invoke-static {v5, v6}, Lcom/android/gallery3d/ui/PositionController;->access$2800(Lcom/android/gallery3d/ui/PositionController;F)V

    .line 1621
    iget v1, p0, Lcom/android/gallery3d/ui/PositionController$Platform;->mCurrentX:I

    .line 1622
    .local v1, oldX:I
    iget-object v5, p0, Lcom/android/gallery3d/ui/PositionController$Platform;->this$0:Lcom/android/gallery3d/ui/PositionController;

    #getter for: Lcom/android/gallery3d/ui/PositionController;->mPageScroller:Lcom/android/gallery3d/ui/FlingScroller;
    invoke-static {v5}, Lcom/android/gallery3d/ui/PositionController;->access$2700(Lcom/android/gallery3d/ui/PositionController;)Lcom/android/gallery3d/ui/FlingScroller;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/gallery3d/ui/FlingScroller;->getCurrX()I

    move-result v5

    iput v5, p0, Lcom/android/gallery3d/ui/PositionController$Platform;->mCurrentX:I

    .line 1625
    iget-object v5, p0, Lcom/android/gallery3d/ui/PositionController$Platform;->this$0:Lcom/android/gallery3d/ui/PositionController;

    #getter for: Lcom/android/gallery3d/ui/PositionController;->mBoundLeft:I
    invoke-static {v5}, Lcom/android/gallery3d/ui/PositionController;->access$1600(Lcom/android/gallery3d/ui/PositionController;)I

    move-result v5

    if-le v1, v5, :cond_1

    iget v5, p0, Lcom/android/gallery3d/ui/PositionController$Platform;->mCurrentX:I

    iget-object v6, p0, Lcom/android/gallery3d/ui/PositionController$Platform;->this$0:Lcom/android/gallery3d/ui/PositionController;

    #getter for: Lcom/android/gallery3d/ui/PositionController;->mBoundLeft:I
    invoke-static {v6}, Lcom/android/gallery3d/ui/PositionController;->access$1600(Lcom/android/gallery3d/ui/PositionController;)I

    move-result v6

    if-ne v5, v6, :cond_1

    .line 1626
    iget-object v5, p0, Lcom/android/gallery3d/ui/PositionController$Platform;->this$0:Lcom/android/gallery3d/ui/PositionController;

    #getter for: Lcom/android/gallery3d/ui/PositionController;->mPageScroller:Lcom/android/gallery3d/ui/FlingScroller;
    invoke-static {v5}, Lcom/android/gallery3d/ui/PositionController;->access$2700(Lcom/android/gallery3d/ui/PositionController;)Lcom/android/gallery3d/ui/FlingScroller;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/gallery3d/ui/FlingScroller;->getCurrVelocityX()I

    move-result v5

    neg-int v5, v5

    int-to-float v5, v5

    add-float/2addr v5, v7

    float-to-int v2, v5

    .line 1627
    .local v2, v:I
    iget-object v5, p0, Lcom/android/gallery3d/ui/PositionController$Platform;->this$0:Lcom/android/gallery3d/ui/PositionController;

    #getter for: Lcom/android/gallery3d/ui/PositionController;->mListener:Lcom/android/gallery3d/ui/PositionController$Listener;
    invoke-static {v5}, Lcom/android/gallery3d/ui/PositionController;->access$700(Lcom/android/gallery3d/ui/PositionController;)Lcom/android/gallery3d/ui/PositionController$Listener;

    move-result-object v5

    const/4 v6, 0x3

    invoke-interface {v5, v2, v6}, Lcom/android/gallery3d/ui/PositionController$Listener;->onAbsorb(II)V

    .line 1633
    .end local v2           #v:I
    :cond_0
    :goto_0
    const/high16 v5, 0x3f80

    cmpl-float v5, p1, v5

    if-ltz v5, :cond_2

    :goto_1
    return v3

    .line 1628
    :cond_1
    iget-object v5, p0, Lcom/android/gallery3d/ui/PositionController$Platform;->this$0:Lcom/android/gallery3d/ui/PositionController;

    #getter for: Lcom/android/gallery3d/ui/PositionController;->mBoundRight:I
    invoke-static {v5}, Lcom/android/gallery3d/ui/PositionController;->access$1700(Lcom/android/gallery3d/ui/PositionController;)I

    move-result v5

    if-ge v1, v5, :cond_0

    iget v5, p0, Lcom/android/gallery3d/ui/PositionController$Platform;->mCurrentX:I

    iget-object v6, p0, Lcom/android/gallery3d/ui/PositionController$Platform;->this$0:Lcom/android/gallery3d/ui/PositionController;

    #getter for: Lcom/android/gallery3d/ui/PositionController;->mBoundRight:I
    invoke-static {v6}, Lcom/android/gallery3d/ui/PositionController;->access$1700(Lcom/android/gallery3d/ui/PositionController;)I

    move-result v6

    if-ne v5, v6, :cond_0

    .line 1629
    iget-object v5, p0, Lcom/android/gallery3d/ui/PositionController$Platform;->this$0:Lcom/android/gallery3d/ui/PositionController;

    #getter for: Lcom/android/gallery3d/ui/PositionController;->mPageScroller:Lcom/android/gallery3d/ui/FlingScroller;
    invoke-static {v5}, Lcom/android/gallery3d/ui/PositionController;->access$2700(Lcom/android/gallery3d/ui/PositionController;)Lcom/android/gallery3d/ui/FlingScroller;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/gallery3d/ui/FlingScroller;->getCurrVelocityX()I

    move-result v5

    int-to-float v5, v5

    add-float/2addr v5, v7

    float-to-int v2, v5

    .line 1630
    .restart local v2       #v:I
    iget-object v5, p0, Lcom/android/gallery3d/ui/PositionController$Platform;->this$0:Lcom/android/gallery3d/ui/PositionController;

    #getter for: Lcom/android/gallery3d/ui/PositionController;->mListener:Lcom/android/gallery3d/ui/PositionController$Listener;
    invoke-static {v5}, Lcom/android/gallery3d/ui/PositionController;->access$700(Lcom/android/gallery3d/ui/PositionController;)Lcom/android/gallery3d/ui/PositionController$Listener;

    move-result-object v5

    invoke-interface {v5, v2, v3}, Lcom/android/gallery3d/ui/PositionController$Listener;->onAbsorb(II)V

    goto :goto_0

    .end local v2           #v:I
    :cond_2
    move v3, v4

    .line 1633
    goto :goto_1
.end method

.method private interpolateLinear(F)Z
    .locals 6
    .parameter "progress"

    .prologue
    const/16 v5, 0x9

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 1638
    const/high16 v2, 0x3f80

    cmpl-float v2, p1, v2

    if-ltz v2, :cond_1

    .line 1639
    iget v1, p0, Lcom/android/gallery3d/ui/PositionController$Platform;->mToX:I

    iput v1, p0, Lcom/android/gallery3d/ui/PositionController$Platform;->mCurrentX:I

    .line 1640
    iget v1, p0, Lcom/android/gallery3d/ui/PositionController$Platform;->mToY:I

    iput v1, p0, Lcom/android/gallery3d/ui/PositionController$Platform;->mCurrentY:I

    .line 1651
    :cond_0
    :goto_0
    return v0

    .line 1643
    :cond_1
    iget v2, p0, Lcom/android/gallery3d/ui/PositionController$Animatable;->mAnimationKind:I

    if-ne v2, v5, :cond_2

    .line 1644
    invoke-static {p1}, Lcom/android/gallery3d/ui/CaptureAnimation;->calculateSlide(F)F

    move-result p1

    .line 1646
    :cond_2
    iget v2, p0, Lcom/android/gallery3d/ui/PositionController$Platform;->mFromX:I

    int-to-float v2, v2

    iget v3, p0, Lcom/android/gallery3d/ui/PositionController$Platform;->mToX:I

    iget v4, p0, Lcom/android/gallery3d/ui/PositionController$Platform;->mFromX:I

    sub-int/2addr v3, v4

    int-to-float v3, v3

    mul-float/2addr v3, p1

    add-float/2addr v2, v3

    float-to-int v2, v2

    iput v2, p0, Lcom/android/gallery3d/ui/PositionController$Platform;->mCurrentX:I

    .line 1647
    iget v2, p0, Lcom/android/gallery3d/ui/PositionController$Platform;->mFromY:I

    int-to-float v2, v2

    iget v3, p0, Lcom/android/gallery3d/ui/PositionController$Platform;->mToY:I

    iget v4, p0, Lcom/android/gallery3d/ui/PositionController$Platform;->mFromY:I

    sub-int/2addr v3, v4

    int-to-float v3, v3

    mul-float/2addr v3, p1

    add-float/2addr v2, v3

    float-to-int v2, v2

    iput v2, p0, Lcom/android/gallery3d/ui/PositionController$Platform;->mCurrentY:I

    .line 1648
    iget v2, p0, Lcom/android/gallery3d/ui/PositionController$Animatable;->mAnimationKind:I

    if-ne v2, v5, :cond_3

    move v0, v1

    .line 1649
    goto :goto_0

    .line 1651
    :cond_3
    iget v2, p0, Lcom/android/gallery3d/ui/PositionController$Platform;->mCurrentX:I

    iget v3, p0, Lcom/android/gallery3d/ui/PositionController$Platform;->mToX:I

    if-ne v2, v3, :cond_4

    iget v2, p0, Lcom/android/gallery3d/ui/PositionController$Platform;->mCurrentY:I

    iget v3, p0, Lcom/android/gallery3d/ui/PositionController$Platform;->mToY:I

    if-eq v2, v3, :cond_0

    :cond_4
    move v0, v1

    goto :goto_0
.end method


# virtual methods
.method protected interpolate(F)Z
    .locals 2
    .parameter "progress"

    .prologue
    .line 1583
    iget v0, p0, Lcom/android/gallery3d/ui/PositionController$Animatable;->mAnimationKind:I

    const/4 v1, 0x6

    if-ne v0, v1, :cond_0

    .line 1584
    invoke-direct {p0, p1}, Lcom/android/gallery3d/ui/PositionController$Platform;->interpolateFlingPage(F)Z

    move-result v0

    .line 1588
    :goto_0
    return v0

    .line 1585
    :cond_0
    iget v0, p0, Lcom/android/gallery3d/ui/PositionController$Animatable;->mAnimationKind:I

    const/4 v1, 0x7

    if-ne v0, v1, :cond_1

    .line 1586
    invoke-direct {p0, p1}, Lcom/android/gallery3d/ui/PositionController$Platform;->interpolateFlingFilm(F)Z

    move-result v0

    goto :goto_0

    .line 1588
    :cond_1
    invoke-direct {p0, p1}, Lcom/android/gallery3d/ui/PositionController$Platform;->interpolateLinear(F)Z

    move-result v0

    goto :goto_0
.end method

.method public startSnapback()Z
    .locals 12

    .prologue
    const/4 v7, 0x0

    .line 1508
    iget-wide v8, p0, Lcom/android/gallery3d/ui/PositionController$Animatable;->mAnimationStartTime:J

    const-wide/16 v10, -0x1

    cmp-long v8, v8, v10

    if-eqz v8, :cond_1

    .line 1545
    :cond_0
    :goto_0
    return v7

    .line 1509
    :cond_1
    iget v8, p0, Lcom/android/gallery3d/ui/PositionController$Animatable;->mAnimationKind:I

    if-nez v8, :cond_2

    iget-object v8, p0, Lcom/android/gallery3d/ui/PositionController$Platform;->this$0:Lcom/android/gallery3d/ui/PositionController;

    #getter for: Lcom/android/gallery3d/ui/PositionController;->mListener:Lcom/android/gallery3d/ui/PositionController$Listener;
    invoke-static {v8}, Lcom/android/gallery3d/ui/PositionController;->access$700(Lcom/android/gallery3d/ui/PositionController;)Lcom/android/gallery3d/ui/PositionController$Listener;

    move-result-object v8

    invoke-interface {v8}, Lcom/android/gallery3d/ui/PositionController$Listener;->isHoldingDown()Z

    move-result v8

    if-nez v8, :cond_0

    .line 1511
    :cond_2
    iget-object v8, p0, Lcom/android/gallery3d/ui/PositionController$Platform;->this$0:Lcom/android/gallery3d/ui/PositionController;

    #getter for: Lcom/android/gallery3d/ui/PositionController;->mInScale:Z
    invoke-static {v8}, Lcom/android/gallery3d/ui/PositionController;->access$800(Lcom/android/gallery3d/ui/PositionController;)Z

    move-result v8

    if-nez v8, :cond_0

    .line 1513
    iget-object v8, p0, Lcom/android/gallery3d/ui/PositionController$Platform;->this$0:Lcom/android/gallery3d/ui/PositionController;

    #getter for: Lcom/android/gallery3d/ui/PositionController;->mBoxes:Lcom/android/gallery3d/util/RangeArray;
    invoke-static {v8}, Lcom/android/gallery3d/ui/PositionController;->access$900(Lcom/android/gallery3d/ui/PositionController;)Lcom/android/gallery3d/util/RangeArray;

    move-result-object v8

    invoke-virtual {v8, v7}, Lcom/android/gallery3d/util/RangeArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/gallery3d/ui/PositionController$Box;

    .line 1514
    .local v0, b:Lcom/android/gallery3d/ui/PositionController$Box;
    iget-object v8, p0, Lcom/android/gallery3d/ui/PositionController$Platform;->this$0:Lcom/android/gallery3d/ui/PositionController;

    #getter for: Lcom/android/gallery3d/ui/PositionController;->mExtraScalingRange:Z
    invoke-static {v8}, Lcom/android/gallery3d/ui/PositionController;->access$1000(Lcom/android/gallery3d/ui/PositionController;)Z

    move-result v8

    if-eqz v8, :cond_4

    iget v8, v0, Lcom/android/gallery3d/ui/PositionController$Box;->mScaleMin:F

    const v9, 0x3f333333

    mul-float v4, v8, v9

    .line 1516
    .local v4, scaleMin:F
    :goto_1
    iget-object v8, p0, Lcom/android/gallery3d/ui/PositionController$Platform;->this$0:Lcom/android/gallery3d/ui/PositionController;

    #getter for: Lcom/android/gallery3d/ui/PositionController;->mExtraScalingRange:Z
    invoke-static {v8}, Lcom/android/gallery3d/ui/PositionController;->access$1000(Lcom/android/gallery3d/ui/PositionController;)Z

    move-result v8

    if-eqz v8, :cond_5

    iget v8, v0, Lcom/android/gallery3d/ui/PositionController$Box;->mScaleMax:F

    const v9, 0x3fb33333

    mul-float v3, v8, v9

    .line 1518
    .local v3, scaleMax:F
    :goto_2
    iget v8, v0, Lcom/android/gallery3d/ui/PositionController$Box;->mCurrentScale:F

    invoke-static {v8, v4, v3}, Lcom/android/gallery3d/common/Utils;->clamp(FFF)F

    move-result v1

    .line 1519
    .local v1, scale:F
    iget v5, p0, Lcom/android/gallery3d/ui/PositionController$Platform;->mCurrentX:I

    .line 1520
    .local v5, x:I
    iget v6, p0, Lcom/android/gallery3d/ui/PositionController$Platform;->mDefaultY:I

    .line 1521
    .local v6, y:I
    iget-object v8, p0, Lcom/android/gallery3d/ui/PositionController$Platform;->this$0:Lcom/android/gallery3d/ui/PositionController;

    #getter for: Lcom/android/gallery3d/ui/PositionController;->mFilmMode:Z
    invoke-static {v8}, Lcom/android/gallery3d/ui/PositionController;->access$1100(Lcom/android/gallery3d/ui/PositionController;)Z

    move-result v8

    if-eqz v8, :cond_6

    .line 1522
    iget v5, p0, Lcom/android/gallery3d/ui/PositionController$Platform;->mDefaultX:I

    .line 1540
    :goto_3
    iget v8, p0, Lcom/android/gallery3d/ui/PositionController$Platform;->mCurrentX:I

    if-ne v8, v5, :cond_3

    iget v8, p0, Lcom/android/gallery3d/ui/PositionController$Platform;->mCurrentY:I

    if-eq v8, v6, :cond_0

    .line 1542
    :cond_3
    iget-object v7, p0, Lcom/android/gallery3d/ui/PositionController$Platform;->this$0:Lcom/android/gallery3d/ui/PositionController;

    #getter for: Lcom/android/gallery3d/ui/PositionController;->mIsDeleteSnapBack:Z
    invoke-static {v7}, Lcom/android/gallery3d/ui/PositionController;->access$1800(Lcom/android/gallery3d/ui/PositionController;)Z

    move-result v7

    if-eqz v7, :cond_8

    const/16 v7, 0xa

    :goto_4
    invoke-direct {p0, v5, v6, v7}, Lcom/android/gallery3d/ui/PositionController$Platform;->doAnimation(III)Z

    move-result v7

    goto :goto_0

    .line 1514
    .end local v1           #scale:F
    .end local v3           #scaleMax:F
    .end local v4           #scaleMin:F
    .end local v5           #x:I
    .end local v6           #y:I
    :cond_4
    iget v4, v0, Lcom/android/gallery3d/ui/PositionController$Box;->mScaleMin:F

    goto :goto_1

    .line 1516
    .restart local v4       #scaleMin:F
    :cond_5
    iget v3, v0, Lcom/android/gallery3d/ui/PositionController$Box;->mScaleMax:F

    goto :goto_2

    .line 1524
    .restart local v1       #scale:F
    .restart local v3       #scaleMax:F
    .restart local v5       #x:I
    .restart local v6       #y:I
    :cond_6
    iget-object v8, p0, Lcom/android/gallery3d/ui/PositionController$Platform;->this$0:Lcom/android/gallery3d/ui/PositionController;

    invoke-static {}, Lcom/android/gallery3d/ui/PositionController;->access$1200()I

    move-result v9

    #calls: Lcom/android/gallery3d/ui/PositionController;->calculateStableBound(FI)V
    invoke-static {v8, v1, v9}, Lcom/android/gallery3d/ui/PositionController;->access$1300(Lcom/android/gallery3d/ui/PositionController;FI)V

    .line 1534
    iget-object v8, p0, Lcom/android/gallery3d/ui/PositionController$Platform;->this$0:Lcom/android/gallery3d/ui/PositionController;

    #calls: Lcom/android/gallery3d/ui/PositionController;->viewWiderThanScaledImage(F)Z
    invoke-static {v8, v1}, Lcom/android/gallery3d/ui/PositionController;->access$1400(Lcom/android/gallery3d/ui/PositionController;F)Z

    move-result v8

    if-nez v8, :cond_7

    .line 1535
    iget v8, v0, Lcom/android/gallery3d/ui/PositionController$Box;->mCurrentScale:F

    sub-float v2, v8, v1

    .line 1536
    .local v2, scaleDiff:F
    iget-object v8, p0, Lcom/android/gallery3d/ui/PositionController$Platform;->this$0:Lcom/android/gallery3d/ui/PositionController;

    #getter for: Lcom/android/gallery3d/ui/PositionController;->mFocusX:F
    invoke-static {v8}, Lcom/android/gallery3d/ui/PositionController;->access$1500(Lcom/android/gallery3d/ui/PositionController;)F

    move-result v8

    mul-float/2addr v8, v2

    const/high16 v9, 0x3f00

    add-float/2addr v8, v9

    float-to-int v8, v8

    add-int/2addr v5, v8

    .line 1538
    .end local v2           #scaleDiff:F
    :cond_7
    iget-object v8, p0, Lcom/android/gallery3d/ui/PositionController$Platform;->this$0:Lcom/android/gallery3d/ui/PositionController;

    #getter for: Lcom/android/gallery3d/ui/PositionController;->mBoundLeft:I
    invoke-static {v8}, Lcom/android/gallery3d/ui/PositionController;->access$1600(Lcom/android/gallery3d/ui/PositionController;)I

    move-result v8

    iget-object v9, p0, Lcom/android/gallery3d/ui/PositionController$Platform;->this$0:Lcom/android/gallery3d/ui/PositionController;

    #getter for: Lcom/android/gallery3d/ui/PositionController;->mBoundRight:I
    invoke-static {v9}, Lcom/android/gallery3d/ui/PositionController;->access$1700(Lcom/android/gallery3d/ui/PositionController;)I

    move-result v9

    invoke-static {v5, v8, v9}, Lcom/android/gallery3d/common/Utils;->clamp(III)I

    move-result v5

    goto :goto_3

    .line 1542
    :cond_8
    const/4 v7, 0x2

    goto :goto_4
.end method

.method public updateDefaultXY()V
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 1556
    iget-object v1, p0, Lcom/android/gallery3d/ui/PositionController$Platform;->this$0:Lcom/android/gallery3d/ui/PositionController;

    #getter for: Lcom/android/gallery3d/ui/PositionController;->mConstrained:Z
    invoke-static {v1}, Lcom/android/gallery3d/ui/PositionController;->access$1900(Lcom/android/gallery3d/ui/PositionController;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/gallery3d/ui/PositionController$Platform;->this$0:Lcom/android/gallery3d/ui/PositionController;

    #getter for: Lcom/android/gallery3d/ui/PositionController;->mConstrainedFrame:Landroid/graphics/Rect;
    invoke-static {v1}, Lcom/android/gallery3d/ui/PositionController;->access$2000(Lcom/android/gallery3d/ui/PositionController;)Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    .line 1557
    iget-object v1, p0, Lcom/android/gallery3d/ui/PositionController$Platform;->this$0:Lcom/android/gallery3d/ui/PositionController;

    #getter for: Lcom/android/gallery3d/ui/PositionController;->mConstrainedFrame:Landroid/graphics/Rect;
    invoke-static {v1}, Lcom/android/gallery3d/ui/PositionController;->access$2000(Lcom/android/gallery3d/ui/PositionController;)Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/Rect;->centerX()I

    move-result v1

    iget-object v2, p0, Lcom/android/gallery3d/ui/PositionController$Platform;->this$0:Lcom/android/gallery3d/ui/PositionController;

    #getter for: Lcom/android/gallery3d/ui/PositionController;->mViewW:I
    invoke-static {v2}, Lcom/android/gallery3d/ui/PositionController;->access$2100(Lcom/android/gallery3d/ui/PositionController;)I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    sub-int/2addr v1, v2

    iput v1, p0, Lcom/android/gallery3d/ui/PositionController$Platform;->mDefaultX:I

    .line 1558
    iget-object v1, p0, Lcom/android/gallery3d/ui/PositionController$Platform;->this$0:Lcom/android/gallery3d/ui/PositionController;

    #getter for: Lcom/android/gallery3d/ui/PositionController;->mFilmMode:Z
    invoke-static {v1}, Lcom/android/gallery3d/ui/PositionController;->access$1100(Lcom/android/gallery3d/ui/PositionController;)Z

    move-result v1

    if-eqz v1, :cond_0

    :goto_0
    iput v0, p0, Lcom/android/gallery3d/ui/PositionController$Platform;->mDefaultY:I

    .line 1564
    :goto_1
    return-void

    .line 1558
    :cond_0
    iget-object v0, p0, Lcom/android/gallery3d/ui/PositionController$Platform;->this$0:Lcom/android/gallery3d/ui/PositionController;

    #getter for: Lcom/android/gallery3d/ui/PositionController;->mConstrainedFrame:Landroid/graphics/Rect;
    invoke-static {v0}, Lcom/android/gallery3d/ui/PositionController;->access$2000(Lcom/android/gallery3d/ui/PositionController;)Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Rect;->centerY()I

    move-result v0

    iget-object v1, p0, Lcom/android/gallery3d/ui/PositionController$Platform;->this$0:Lcom/android/gallery3d/ui/PositionController;

    #getter for: Lcom/android/gallery3d/ui/PositionController;->mViewH:I
    invoke-static {v1}, Lcom/android/gallery3d/ui/PositionController;->access$2200(Lcom/android/gallery3d/ui/PositionController;)I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    sub-int/2addr v0, v1

    goto :goto_0

    .line 1561
    :cond_1
    iput v0, p0, Lcom/android/gallery3d/ui/PositionController$Platform;->mDefaultX:I

    .line 1562
    iput v0, p0, Lcom/android/gallery3d/ui/PositionController$Platform;->mDefaultY:I

    goto :goto_1
.end method
