.class public Lcom/android/gallery3d/ui/SlotView$Layout;
.super Ljava/lang/Object;
.source "SlotView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/gallery3d/ui/SlotView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "Layout"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/gallery3d/ui/SlotView$Layout$SlotNumAndGap;
    }
.end annotation


# instance fields
.field private mContentLength:I

.field private mHeight:I

.field private mHorizontalPadding:Lcom/android/gallery3d/ui/SlotView$IntegerAnimation;

.field private mScrollPosition:I

.field private mSlotCount:I

.field private mSlotHeight:I

.field private mSlotHeightGap:I

.field private mSlotWidth:I

.field private mSlotWidthGap:I

.field private mSpec:Lcom/android/gallery3d/ui/SlotView$Spec;

.field private mUnitCount:I

.field private mVerticalPadding:Lcom/android/gallery3d/ui/SlotView$IntegerAnimation;

.field private mVisibleEnd:I

.field private mVisibleStart:I

.field private mWidth:I

.field final synthetic this$0:Lcom/android/gallery3d/ui/SlotView;


# direct methods
.method public constructor <init>(Lcom/android/gallery3d/ui/SlotView;)V
    .locals 2
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 592
    iput-object p1, p0, Lcom/android/gallery3d/ui/SlotView$Layout;->this$0:Lcom/android/gallery3d/ui/SlotView;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 612
    new-instance v0, Lcom/android/gallery3d/ui/SlotView$IntegerAnimation;

    invoke-direct {v0, v1}, Lcom/android/gallery3d/ui/SlotView$IntegerAnimation;-><init>(Lcom/android/gallery3d/ui/SlotView$1;)V

    iput-object v0, p0, Lcom/android/gallery3d/ui/SlotView$Layout;->mVerticalPadding:Lcom/android/gallery3d/ui/SlotView$IntegerAnimation;

    .line 613
    new-instance v0, Lcom/android/gallery3d/ui/SlotView$IntegerAnimation;

    invoke-direct {v0, v1}, Lcom/android/gallery3d/ui/SlotView$IntegerAnimation;-><init>(Lcom/android/gallery3d/ui/SlotView$1;)V

    iput-object v0, p0, Lcom/android/gallery3d/ui/SlotView$Layout;->mHorizontalPadding:Lcom/android/gallery3d/ui/SlotView$IntegerAnimation;

    .line 657
    return-void
.end method

.method static synthetic access$100(Lcom/android/gallery3d/ui/SlotView$Layout;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 592
    iget v0, p0, Lcom/android/gallery3d/ui/SlotView$Layout;->mSlotWidth:I

    return v0
.end method

.method static synthetic access$200(Lcom/android/gallery3d/ui/SlotView$Layout;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 592
    iget v0, p0, Lcom/android/gallery3d/ui/SlotView$Layout;->mSlotHeight:I

    return v0
.end method

.method static synthetic access$300(Lcom/android/gallery3d/ui/SlotView$Layout;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 592
    iget v0, p0, Lcom/android/gallery3d/ui/SlotView$Layout;->mVisibleEnd:I

    return v0
.end method

.method static synthetic access$400(Lcom/android/gallery3d/ui/SlotView$Layout;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 592
    iget v0, p0, Lcom/android/gallery3d/ui/SlotView$Layout;->mVisibleStart:I

    return v0
.end method

.method static synthetic access$500(Lcom/android/gallery3d/ui/SlotView$Layout;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 592
    iget v0, p0, Lcom/android/gallery3d/ui/SlotView$Layout;->mSlotCount:I

    return v0
.end method

.method private calSlotNumAndGap(IILcom/android/gallery3d/ui/SlotView$Layout$SlotNumAndGap;)V
    .locals 4
    .parameter "LineLength"
    .parameter "unitSize"
    .parameter "slotData"

    .prologue
    .line 672
    div-int v1, p1, p2

    .line 673
    .local v1, unitCount:I
    if-nez v1, :cond_0

    const/4 v1, 0x1

    .line 676
    :cond_0
    :goto_0
    mul-int v2, v1, p2

    sub-int v2, p1, v2

    add-int/lit8 v3, v1, 0x1

    div-int v0, v2, v3

    .line 677
    .local v0, slotGap:I
    invoke-direct {p0, v0, p2}, Lcom/android/gallery3d/ui/SlotView$Layout;->isSlotGapOK(II)Z

    move-result v2

    if-nez v2, :cond_1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_2

    .line 678
    :cond_1
    iput v0, p3, Lcom/android/gallery3d/ui/SlotView$Layout$SlotNumAndGap;->slotGap:I

    .line 679
    iput v1, p3, Lcom/android/gallery3d/ui/SlotView$Layout$SlotNumAndGap;->slotNumber:I

    .line 680
    return-void

    .line 682
    :cond_2
    add-int/lit8 v1, v1, -0x1

    .line 684
    goto :goto_0
.end method

.method private initLayoutParameters()V
    .locals 9

    .prologue
    const/4 v3, 0x2

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 730
    iget-object v0, p0, Lcom/android/gallery3d/ui/SlotView$Layout;->mSpec:Lcom/android/gallery3d/ui/SlotView$Spec;

    iget v0, v0, Lcom/android/gallery3d/ui/SlotView$Spec;->slotWidth:I

    iput v0, p0, Lcom/android/gallery3d/ui/SlotView$Layout;->mSlotWidth:I

    .line 731
    iget-object v0, p0, Lcom/android/gallery3d/ui/SlotView$Layout;->mSpec:Lcom/android/gallery3d/ui/SlotView$Spec;

    iget v0, v0, Lcom/android/gallery3d/ui/SlotView$Spec;->slotHeight:I

    iput v0, p0, Lcom/android/gallery3d/ui/SlotView$Layout;->mSlotHeight:I

    .line 733
    iget-object v0, p0, Lcom/android/gallery3d/ui/SlotView$Layout;->this$0:Lcom/android/gallery3d/ui/SlotView;

    #getter for: Lcom/android/gallery3d/ui/SlotView;->mRenderer:Lcom/android/gallery3d/ui/SlotView$SlotRenderer;
    invoke-static {v0}, Lcom/android/gallery3d/ui/SlotView;->access$1100(Lcom/android/gallery3d/ui/SlotView;)Lcom/android/gallery3d/ui/SlotView$SlotRenderer;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 734
    iget-object v0, p0, Lcom/android/gallery3d/ui/SlotView$Layout;->this$0:Lcom/android/gallery3d/ui/SlotView;

    #getter for: Lcom/android/gallery3d/ui/SlotView;->mRenderer:Lcom/android/gallery3d/ui/SlotView$SlotRenderer;
    invoke-static {v0}, Lcom/android/gallery3d/ui/SlotView;->access$1100(Lcom/android/gallery3d/ui/SlotView;)Lcom/android/gallery3d/ui/SlotView$SlotRenderer;

    move-result-object v0

    iget v1, p0, Lcom/android/gallery3d/ui/SlotView$Layout;->mSlotWidth:I

    iget v2, p0, Lcom/android/gallery3d/ui/SlotView$Layout;->mSlotHeight:I

    invoke-interface {v0, v1, v2}, Lcom/android/gallery3d/ui/SlotView$SlotRenderer;->onSlotSizeChanged(II)V

    .line 737
    :cond_0
    new-array v5, v3, [I

    .line 738
    .local v5, padding:[I
    new-array v6, v3, [I

    .line 746
    .local v6, gap:[I
    iget v1, p0, Lcom/android/gallery3d/ui/SlotView$Layout;->mHeight:I

    iget v2, p0, Lcom/android/gallery3d/ui/SlotView$Layout;->mWidth:I

    iget v3, p0, Lcom/android/gallery3d/ui/SlotView$Layout;->mSlotHeight:I

    iget v4, p0, Lcom/android/gallery3d/ui/SlotView$Layout;->mSlotWidth:I

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/android/gallery3d/ui/SlotView$Layout;->initLayoutParameters(IIII[I[I)V

    .line 747
    iget-object v0, p0, Lcom/android/gallery3d/ui/SlotView$Layout;->mVerticalPadding:Lcom/android/gallery3d/ui/SlotView$IntegerAnimation;

    aget v1, v5, v8

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/ui/SlotView$IntegerAnimation;->startAnimateTo(I)V

    .line 748
    iget-object v0, p0, Lcom/android/gallery3d/ui/SlotView$Layout;->mHorizontalPadding:Lcom/android/gallery3d/ui/SlotView$IntegerAnimation;

    aget v1, v5, v7

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/ui/SlotView$IntegerAnimation;->startAnimateTo(I)V

    .line 749
    aget v0, v6, v7

    iput v0, p0, Lcom/android/gallery3d/ui/SlotView$Layout;->mSlotWidthGap:I

    .line 750
    aget v0, v6, v8

    iput v0, p0, Lcom/android/gallery3d/ui/SlotView$Layout;->mSlotHeightGap:I

    .line 752
    invoke-direct {p0}, Lcom/android/gallery3d/ui/SlotView$Layout;->updateVisibleSlotRange()V

    .line 753
    return-void
.end method

.method private initLayoutParameters(IIII[I[I)V
    .locals 6
    .parameter "majorLength"
    .parameter "minorLength"
    .parameter "majorUnitSize"
    .parameter "minorUnitSize"
    .parameter "padding"
    .parameter "gap"

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 703
    new-instance v1, Lcom/android/gallery3d/ui/SlotView$Layout$SlotNumAndGap;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/android/gallery3d/ui/SlotView$Layout$SlotNumAndGap;-><init>(Lcom/android/gallery3d/ui/SlotView$Layout;Lcom/android/gallery3d/ui/SlotView$1;)V

    .line 704
    .local v1, slotNumAndGap:Lcom/android/gallery3d/ui/SlotView$Layout$SlotNumAndGap;
    invoke-direct {p0, p2, p4, v1}, Lcom/android/gallery3d/ui/SlotView$Layout;->calSlotNumAndGap(IILcom/android/gallery3d/ui/SlotView$Layout$SlotNumAndGap;)V

    .line 705
    iget v2, v1, Lcom/android/gallery3d/ui/SlotView$Layout$SlotNumAndGap;->slotNumber:I

    iput v2, p0, Lcom/android/gallery3d/ui/SlotView$Layout;->mUnitCount:I

    .line 706
    iget v2, v1, Lcom/android/gallery3d/ui/SlotView$Layout$SlotNumAndGap;->slotGap:I

    aput v2, p6, v5

    .line 708
    iget-object v2, p0, Lcom/android/gallery3d/ui/SlotView$Layout;->mSpec:Lcom/android/gallery3d/ui/SlotView$Spec;

    iget-boolean v2, v2, Lcom/android/gallery3d/ui/SlotView$Spec;->isOneGapLength:Z

    if-eqz v2, :cond_0

    .line 709
    aget v2, p6, v5

    aput v2, p6, v4

    .line 719
    :goto_0
    aput v5, p5, v4

    aput v5, p5, v5

    .line 722
    iget v2, p0, Lcom/android/gallery3d/ui/SlotView$Layout;->mSlotCount:I

    iget v3, p0, Lcom/android/gallery3d/ui/SlotView$Layout;->mUnitCount:I

    add-int/2addr v2, v3

    add-int/lit8 v2, v2, -0x1

    iget v3, p0, Lcom/android/gallery3d/ui/SlotView$Layout;->mUnitCount:I

    div-int v0, v2, v3

    .line 723
    .local v0, count:I
    mul-int v2, v0, p3

    add-int/lit8 v3, v0, 0x1

    aget v4, p6, v4

    mul-int/2addr v3, v4

    add-int/2addr v2, v3

    iput v2, p0, Lcom/android/gallery3d/ui/SlotView$Layout;->mContentLength:I

    .line 726
    return-void

    .line 710
    .end local v0           #count:I
    :cond_0
    const/4 v2, -0x1

    iget-object v3, p0, Lcom/android/gallery3d/ui/SlotView$Layout;->mSpec:Lcom/android/gallery3d/ui/SlotView$Spec;

    iget v3, v3, Lcom/android/gallery3d/ui/SlotView$Spec;->slotHeightGap:I

    if-eq v2, v3, :cond_1

    .line 711
    iget-object v2, p0, Lcom/android/gallery3d/ui/SlotView$Layout;->mSpec:Lcom/android/gallery3d/ui/SlotView$Spec;

    iget v2, v2, Lcom/android/gallery3d/ui/SlotView$Spec;->slotHeightGap:I

    aput v2, p6, v4

    goto :goto_0

    .line 713
    :cond_1
    invoke-direct {p0, p1, p3, v1}, Lcom/android/gallery3d/ui/SlotView$Layout;->calSlotNumAndGap(IILcom/android/gallery3d/ui/SlotView$Layout$SlotNumAndGap;)V

    .line 714
    iget v2, v1, Lcom/android/gallery3d/ui/SlotView$Layout$SlotNumAndGap;->slotGap:I

    aput v2, p6, v4

    goto :goto_0
.end method

.method private isSlotGapOK(II)Z
    .locals 5
    .parameter "slotGap"
    .parameter "slotSize"

    .prologue
    const/4 v0, 0x1

    .line 663
    iget-object v1, p0, Lcom/android/gallery3d/ui/SlotView$Layout;->mSpec:Lcom/android/gallery3d/ui/SlotView$Spec;

    iget-boolean v1, v1, Lcom/android/gallery3d/ui/SlotView$Spec;->isOneGapLength:Z

    if-eqz v1, :cond_0

    .line 664
    int-to-float v1, p1

    int-to-float v2, p2

    div-float/2addr v1, v2

    float-to-double v1, v1

    const-wide v3, 0x3fa999999999999aL

    cmpl-double v1, v1, v3

    if-ltz v1, :cond_1

    .line 666
    :cond_0
    :goto_0
    return v0

    .line 664
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private setVisibleRange(II)V
    .locals 3
    .parameter "start"
    .parameter "end"

    .prologue
    .line 788
    iget v0, p0, Lcom/android/gallery3d/ui/SlotView$Layout;->mVisibleStart:I

    if-ne p1, v0, :cond_1

    iget v0, p0, Lcom/android/gallery3d/ui/SlotView$Layout;->mVisibleEnd:I

    if-ne p2, v0, :cond_1

    .line 798
    :cond_0
    :goto_0
    return-void

    .line 789
    :cond_1
    if-ge p1, p2, :cond_2

    .line 790
    iput p1, p0, Lcom/android/gallery3d/ui/SlotView$Layout;->mVisibleStart:I

    .line 791
    iput p2, p0, Lcom/android/gallery3d/ui/SlotView$Layout;->mVisibleEnd:I

    .line 795
    :goto_1
    iget-object v0, p0, Lcom/android/gallery3d/ui/SlotView$Layout;->this$0:Lcom/android/gallery3d/ui/SlotView;

    #getter for: Lcom/android/gallery3d/ui/SlotView;->mRenderer:Lcom/android/gallery3d/ui/SlotView$SlotRenderer;
    invoke-static {v0}, Lcom/android/gallery3d/ui/SlotView;->access$1100(Lcom/android/gallery3d/ui/SlotView;)Lcom/android/gallery3d/ui/SlotView$SlotRenderer;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 796
    iget-object v0, p0, Lcom/android/gallery3d/ui/SlotView$Layout;->this$0:Lcom/android/gallery3d/ui/SlotView;

    #getter for: Lcom/android/gallery3d/ui/SlotView;->mRenderer:Lcom/android/gallery3d/ui/SlotView$SlotRenderer;
    invoke-static {v0}, Lcom/android/gallery3d/ui/SlotView;->access$1100(Lcom/android/gallery3d/ui/SlotView;)Lcom/android/gallery3d/ui/SlotView$SlotRenderer;

    move-result-object v0

    iget v1, p0, Lcom/android/gallery3d/ui/SlotView$Layout;->mVisibleStart:I

    iget v2, p0, Lcom/android/gallery3d/ui/SlotView$Layout;->mVisibleEnd:I

    invoke-interface {v0, v1, v2}, Lcom/android/gallery3d/ui/SlotView$SlotRenderer;->onVisibleRangeChanged(II)V

    goto :goto_0

    .line 793
    :cond_2
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/gallery3d/ui/SlotView$Layout;->mVisibleEnd:I

    iput v0, p0, Lcom/android/gallery3d/ui/SlotView$Layout;->mVisibleStart:I

    goto :goto_1
.end method

.method private updateVisibleSlotRange()V
    .locals 8

    .prologue
    .line 762
    iget v2, p0, Lcom/android/gallery3d/ui/SlotView$Layout;->mScrollPosition:I

    .line 772
    .local v2, position:I
    iget v5, p0, Lcom/android/gallery3d/ui/SlotView$Layout;->mSlotHeight:I

    iget v6, p0, Lcom/android/gallery3d/ui/SlotView$Layout;->mSlotHeightGap:I

    add-int/2addr v5, v6

    div-int v4, v2, v5

    .line 773
    .local v4, startRow:I
    const/4 v5, 0x0

    iget v6, p0, Lcom/android/gallery3d/ui/SlotView$Layout;->mUnitCount:I

    mul-int/2addr v6, v4

    invoke-static {v5, v6}, Ljava/lang/Math;->max(II)I

    move-result v3

    .line 774
    .local v3, start:I
    iget v5, p0, Lcom/android/gallery3d/ui/SlotView$Layout;->mHeight:I

    add-int/2addr v5, v2

    iget v6, p0, Lcom/android/gallery3d/ui/SlotView$Layout;->mSlotHeight:I

    add-int/2addr v5, v6

    iget v6, p0, Lcom/android/gallery3d/ui/SlotView$Layout;->mSlotHeightGap:I

    add-int/2addr v5, v6

    add-int/lit8 v5, v5, -0x1

    iget v6, p0, Lcom/android/gallery3d/ui/SlotView$Layout;->mSlotHeight:I

    iget v7, p0, Lcom/android/gallery3d/ui/SlotView$Layout;->mSlotHeightGap:I

    add-int/2addr v6, v7

    div-int v1, v5, v6

    .line 776
    .local v1, endRow:I
    iget v5, p0, Lcom/android/gallery3d/ui/SlotView$Layout;->mSlotCount:I

    iget v6, p0, Lcom/android/gallery3d/ui/SlotView$Layout;->mUnitCount:I

    mul-int/2addr v6, v1

    invoke-static {v5, v6}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 777
    .local v0, end:I
    invoke-direct {p0, v3, v0}, Lcom/android/gallery3d/ui/SlotView$Layout;->setVisibleRange(II)V

    .line 779
    return-void
.end method


# virtual methods
.method public advanceAnimation(J)Z
    .locals 2
    .parameter "animTime"

    .prologue
    .line 852
    iget-object v0, p0, Lcom/android/gallery3d/ui/SlotView$Layout;->mVerticalPadding:Lcom/android/gallery3d/ui/SlotView$IntegerAnimation;

    invoke-virtual {v0, p1, p2}, Lcom/android/gallery3d/ui/SlotView$IntegerAnimation;->calculate(J)Z

    move-result v0

    iget-object v1, p0, Lcom/android/gallery3d/ui/SlotView$Layout;->mHorizontalPadding:Lcom/android/gallery3d/ui/SlotView$IntegerAnimation;

    invoke-virtual {v1, p1, p2}, Lcom/android/gallery3d/ui/SlotView$IntegerAnimation;->calculate(J)Z

    move-result v1

    or-int/2addr v0, v1

    return v0
.end method

.method public getScrollLimit()I
    .locals 3

    .prologue
    .line 846
    iget v1, p0, Lcom/android/gallery3d/ui/SlotView$Layout;->mContentLength:I

    iget v2, p0, Lcom/android/gallery3d/ui/SlotView$Layout;->mHeight:I

    sub-int v0, v1, v2

    .line 847
    .local v0, limit:I
    if-gtz v0, :cond_0

    const/4 v0, 0x0

    .end local v0           #limit:I
    :cond_0
    return v0
.end method

.method public getSlotHeight()I
    .locals 1

    .prologue
    .line 654
    iget v0, p0, Lcom/android/gallery3d/ui/SlotView$Layout;->mSlotHeight:I

    return v0
.end method

.method public getSlotIndexByPosition(FF)I
    .locals 8
    .parameter "x"
    .parameter "y"

    .prologue
    const/4 v5, -0x1

    .line 809
    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result v6

    add-int/lit8 v0, v6, 0x0

    .line 810
    .local v0, absoluteX:I
    invoke-static {p2}, Ljava/lang/Math;->round(F)I

    move-result v6

    iget v7, p0, Lcom/android/gallery3d/ui/SlotView$Layout;->mScrollPosition:I

    add-int v1, v6, v7

    .line 812
    .local v1, absoluteY:I
    iget-object v6, p0, Lcom/android/gallery3d/ui/SlotView$Layout;->mHorizontalPadding:Lcom/android/gallery3d/ui/SlotView$IntegerAnimation;

    invoke-virtual {v6}, Lcom/android/gallery3d/ui/SlotView$IntegerAnimation;->get()I

    move-result v6

    sub-int/2addr v0, v6

    .line 813
    iget-object v6, p0, Lcom/android/gallery3d/ui/SlotView$Layout;->mVerticalPadding:Lcom/android/gallery3d/ui/SlotView$IntegerAnimation;

    invoke-virtual {v6}, Lcom/android/gallery3d/ui/SlotView$IntegerAnimation;->get()I

    move-result v6

    sub-int/2addr v1, v6

    .line 815
    if-ltz v0, :cond_0

    if-gez v1, :cond_1

    .line 842
    :cond_0
    :goto_0
    return v5

    .line 819
    :cond_1
    iget v6, p0, Lcom/android/gallery3d/ui/SlotView$Layout;->mSlotWidth:I

    iget v7, p0, Lcom/android/gallery3d/ui/SlotView$Layout;->mSlotWidthGap:I

    add-int/2addr v6, v7

    div-int v2, v0, v6

    .line 820
    .local v2, columnIdx:I
    iget v6, p0, Lcom/android/gallery3d/ui/SlotView$Layout;->mSlotHeight:I

    iget v7, p0, Lcom/android/gallery3d/ui/SlotView$Layout;->mSlotHeightGap:I

    add-int/2addr v6, v7

    div-int v4, v1, v6

    .line 822
    .local v4, rowIdx:I
    iget v6, p0, Lcom/android/gallery3d/ui/SlotView$Layout;->mUnitCount:I

    if-ge v2, v6, :cond_0

    .line 830
    iget v6, p0, Lcom/android/gallery3d/ui/SlotView$Layout;->mSlotWidth:I

    iget v7, p0, Lcom/android/gallery3d/ui/SlotView$Layout;->mSlotWidthGap:I

    add-int/2addr v6, v7

    rem-int v6, v0, v6

    iget v7, p0, Lcom/android/gallery3d/ui/SlotView$Layout;->mSlotWidthGap:I

    if-le v6, v7, :cond_0

    .line 834
    iget v6, p0, Lcom/android/gallery3d/ui/SlotView$Layout;->mSlotHeight:I

    iget v7, p0, Lcom/android/gallery3d/ui/SlotView$Layout;->mSlotHeightGap:I

    add-int/2addr v6, v7

    rem-int v6, v1, v6

    iget v7, p0, Lcom/android/gallery3d/ui/SlotView$Layout;->mSlotHeightGap:I

    if-le v6, v7, :cond_0

    .line 838
    iget v6, p0, Lcom/android/gallery3d/ui/SlotView$Layout;->mUnitCount:I

    mul-int/2addr v6, v4

    add-int v3, v6, v2

    .line 842
    .local v3, index:I
    iget v6, p0, Lcom/android/gallery3d/ui/SlotView$Layout;->mSlotCount:I

    if-lt v3, v6, :cond_2

    move v3, v5

    .end local v3           #index:I
    :cond_2
    move v5, v3

    goto :goto_0
.end method

.method public getSlotRect(ILandroid/graphics/Rect;)Landroid/graphics/Rect;
    .locals 7
    .parameter "index"
    .parameter "rect"

    .prologue
    .line 639
    iget v4, p0, Lcom/android/gallery3d/ui/SlotView$Layout;->mUnitCount:I

    div-int v1, p1, v4

    .line 640
    .local v1, row:I
    iget v4, p0, Lcom/android/gallery3d/ui/SlotView$Layout;->mUnitCount:I

    mul-int/2addr v4, v1

    sub-int v0, p1, v4

    .line 643
    .local v0, col:I
    iget-object v4, p0, Lcom/android/gallery3d/ui/SlotView$Layout;->mHorizontalPadding:Lcom/android/gallery3d/ui/SlotView$IntegerAnimation;

    invoke-virtual {v4}, Lcom/android/gallery3d/ui/SlotView$IntegerAnimation;->get()I

    move-result v4

    iget v5, p0, Lcom/android/gallery3d/ui/SlotView$Layout;->mSlotWidthGap:I

    add-int/2addr v4, v5

    iget v5, p0, Lcom/android/gallery3d/ui/SlotView$Layout;->mSlotWidth:I

    iget v6, p0, Lcom/android/gallery3d/ui/SlotView$Layout;->mSlotWidthGap:I

    add-int/2addr v5, v6

    mul-int/2addr v5, v0

    add-int v2, v4, v5

    .line 644
    .local v2, x:I
    iget-object v4, p0, Lcom/android/gallery3d/ui/SlotView$Layout;->mVerticalPadding:Lcom/android/gallery3d/ui/SlotView$IntegerAnimation;

    invoke-virtual {v4}, Lcom/android/gallery3d/ui/SlotView$IntegerAnimation;->get()I

    move-result v4

    iget v5, p0, Lcom/android/gallery3d/ui/SlotView$Layout;->mSlotHeightGap:I

    add-int/2addr v4, v5

    iget v5, p0, Lcom/android/gallery3d/ui/SlotView$Layout;->mSlotHeight:I

    iget v6, p0, Lcom/android/gallery3d/ui/SlotView$Layout;->mSlotHeightGap:I

    add-int/2addr v5, v6

    mul-int/2addr v5, v1

    add-int v3, v4, v5

    .line 645
    .local v3, y:I
    iget v4, p0, Lcom/android/gallery3d/ui/SlotView$Layout;->mSlotWidth:I

    add-int/2addr v4, v2

    iget v5, p0, Lcom/android/gallery3d/ui/SlotView$Layout;->mSlotHeight:I

    add-int/2addr v5, v3

    invoke-virtual {p2, v2, v3, v4, v5}, Landroid/graphics/Rect;->set(IIII)V

    .line 646
    return-object p2
.end method

.method public getSlotWidth()I
    .locals 1

    .prologue
    .line 650
    iget v0, p0, Lcom/android/gallery3d/ui/SlotView$Layout;->mSlotWidth:I

    return v0
.end method

.method public getVisibleEnd()I
    .locals 1

    .prologue
    .line 805
    iget v0, p0, Lcom/android/gallery3d/ui/SlotView$Layout;->mVisibleEnd:I

    return v0
.end method

.method public getVisibleStart()I
    .locals 1

    .prologue
    .line 801
    iget v0, p0, Lcom/android/gallery3d/ui/SlotView$Layout;->mVisibleStart:I

    return v0
.end method

.method public setScrollPosition(I)V
    .locals 1
    .parameter "position"

    .prologue
    .line 782
    iget v0, p0, Lcom/android/gallery3d/ui/SlotView$Layout;->mScrollPosition:I

    if-ne v0, p1, :cond_0

    .line 785
    :goto_0
    return-void

    .line 783
    :cond_0
    iput p1, p0, Lcom/android/gallery3d/ui/SlotView$Layout;->mScrollPosition:I

    .line 784
    invoke-direct {p0}, Lcom/android/gallery3d/ui/SlotView$Layout;->updateVisibleSlotRange()V

    goto :goto_0
.end method

.method public setSize(II)V
    .locals 0
    .parameter "width"
    .parameter "height"

    .prologue
    .line 756
    iput p1, p0, Lcom/android/gallery3d/ui/SlotView$Layout;->mWidth:I

    .line 757
    iput p2, p0, Lcom/android/gallery3d/ui/SlotView$Layout;->mHeight:I

    .line 758
    invoke-direct {p0}, Lcom/android/gallery3d/ui/SlotView$Layout;->initLayoutParameters()V

    .line 759
    return-void
.end method

.method public setSlotCount(I)Z
    .locals 5
    .parameter "slotCount"

    .prologue
    const/4 v2, 0x0

    const/4 v3, 0x1

    .line 620
    iget v4, p0, Lcom/android/gallery3d/ui/SlotView$Layout;->mSlotCount:I

    if-ne p1, v4, :cond_1

    .line 629
    :cond_0
    :goto_0
    return v2

    .line 621
    :cond_1
    iget v4, p0, Lcom/android/gallery3d/ui/SlotView$Layout;->mSlotCount:I

    if-eqz v4, :cond_2

    .line 622
    iget-object v4, p0, Lcom/android/gallery3d/ui/SlotView$Layout;->mHorizontalPadding:Lcom/android/gallery3d/ui/SlotView$IntegerAnimation;

    invoke-virtual {v4, v3}, Lcom/android/gallery3d/ui/SlotView$IntegerAnimation;->setEnabled(Z)V

    .line 623
    iget-object v4, p0, Lcom/android/gallery3d/ui/SlotView$Layout;->mVerticalPadding:Lcom/android/gallery3d/ui/SlotView$IntegerAnimation;

    invoke-virtual {v4, v3}, Lcom/android/gallery3d/ui/SlotView$IntegerAnimation;->setEnabled(Z)V

    .line 625
    :cond_2
    iput p1, p0, Lcom/android/gallery3d/ui/SlotView$Layout;->mSlotCount:I

    .line 626
    iget-object v4, p0, Lcom/android/gallery3d/ui/SlotView$Layout;->mHorizontalPadding:Lcom/android/gallery3d/ui/SlotView$IntegerAnimation;

    invoke-virtual {v4}, Lcom/android/gallery3d/ui/SlotView$IntegerAnimation;->getTarget()I

    move-result v0

    .line 627
    .local v0, hPadding:I
    iget-object v4, p0, Lcom/android/gallery3d/ui/SlotView$Layout;->mVerticalPadding:Lcom/android/gallery3d/ui/SlotView$IntegerAnimation;

    invoke-virtual {v4}, Lcom/android/gallery3d/ui/SlotView$IntegerAnimation;->getTarget()I

    move-result v1

    .line 628
    .local v1, vPadding:I
    invoke-direct {p0}, Lcom/android/gallery3d/ui/SlotView$Layout;->initLayoutParameters()V

    .line 629
    iget-object v4, p0, Lcom/android/gallery3d/ui/SlotView$Layout;->mVerticalPadding:Lcom/android/gallery3d/ui/SlotView$IntegerAnimation;

    invoke-virtual {v4}, Lcom/android/gallery3d/ui/SlotView$IntegerAnimation;->getTarget()I

    move-result v4

    if-ne v1, v4, :cond_3

    iget-object v4, p0, Lcom/android/gallery3d/ui/SlotView$Layout;->mHorizontalPadding:Lcom/android/gallery3d/ui/SlotView$IntegerAnimation;

    invoke-virtual {v4}, Lcom/android/gallery3d/ui/SlotView$IntegerAnimation;->getTarget()I

    move-result v4

    if-eq v0, v4, :cond_0

    :cond_3
    move v2, v3

    goto :goto_0
.end method

.method public setSlotSpec(Lcom/android/gallery3d/ui/SlotView$Spec;)V
    .locals 0
    .parameter "spec"

    .prologue
    .line 616
    iput-object p1, p0, Lcom/android/gallery3d/ui/SlotView$Layout;->mSpec:Lcom/android/gallery3d/ui/SlotView$Spec;

    .line 617
    return-void
.end method
