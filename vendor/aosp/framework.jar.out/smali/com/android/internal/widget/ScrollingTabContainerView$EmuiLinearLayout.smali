.class Lcom/android/internal/widget/ScrollingTabContainerView$EmuiLinearLayout;
.super Landroid/widget/LinearLayout;
.source "ScrollingTabContainerView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/widget/ScrollingTabContainerView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "EmuiLinearLayout"
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;

.field private mDividerEmui:Landroid/graphics/drawable/Drawable;

.field private mDividerLand:Landroid/graphics/drawable/Drawable;

.field private mDividerPort:Landroid/graphics/drawable/Drawable;

.field private mDividerTransparent:Landroid/graphics/drawable/Drawable;

.field final synthetic this$0:Lcom/android/internal/widget/ScrollingTabContainerView;


# direct methods
.method public constructor <init>(Lcom/android/internal/widget/ScrollingTabContainerView;Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2
    .parameter
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 450
    iput-object p1, p0, Lcom/android/internal/widget/ScrollingTabContainerView$EmuiLinearLayout;->this$0:Lcom/android/internal/widget/ScrollingTabContainerView;

    .line 451
    invoke-direct {p0, p2, p3, p4}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 452
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/widget/ScrollingTabContainerView$EmuiLinearLayout;->mHwActionBarTabLayoutUsed:Z

    .line 453
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x30300fe

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/widget/ScrollingTabContainerView$EmuiLinearLayout;->mDividerTransparent:Landroid/graphics/drawable/Drawable;

    .line 454
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x3030100

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/widget/ScrollingTabContainerView$EmuiLinearLayout;->mDividerLand:Landroid/graphics/drawable/Drawable;

    .line 455
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x3030101

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/widget/ScrollingTabContainerView$EmuiLinearLayout;->mDividerPort:Landroid/graphics/drawable/Drawable;

    .line 456
    iput-object p2, p0, Lcom/android/internal/widget/ScrollingTabContainerView$EmuiLinearLayout;->mContext:Landroid/content/Context;

    .line 457
    return-void
.end method

.method private drawVerticalDividerTransparent(Landroid/graphics/Canvas;I)V
    .locals 6
    .parameter "canvas"
    .parameter "left"

    .prologue
    .line 527
    invoke-virtual {p0}, Lcom/android/internal/widget/ScrollingTabContainerView$EmuiLinearLayout;->getDividerPadding()I

    move-result v0

    .line 528
    .local v0, dividerPadding:I
    iget-object v1, p0, Lcom/android/internal/widget/ScrollingTabContainerView$EmuiLinearLayout;->mDividerTransparent:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Lcom/android/internal/widget/ScrollingTabContainerView$EmuiLinearLayout;->getPaddingTop()I

    move-result v2

    add-int/2addr v2, v0

    invoke-virtual {p0}, Lcom/android/internal/widget/ScrollingTabContainerView$EmuiLinearLayout;->getDividerWidth()I

    move-result v3

    add-int/2addr v3, p2

    invoke-virtual {p0}, Lcom/android/internal/widget/ScrollingTabContainerView$EmuiLinearLayout;->getHeight()I

    move-result v4

    invoke-virtual {p0}, Lcom/android/internal/widget/ScrollingTabContainerView$EmuiLinearLayout;->getPaddingBottom()I

    move-result v5

    sub-int/2addr v4, v5

    sub-int/2addr v4, v0

    invoke-virtual {v1, p2, v2, v3, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 530
    iget-object v1, p0, Lcom/android/internal/widget/ScrollingTabContainerView$EmuiLinearLayout;->mDividerTransparent:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 531
    return-void
.end method


# virtual methods
.method drawDividersHorizontal(Landroid/graphics/Canvas;)V
    .locals 9
    .parameter "canvas"

    .prologue
    .line 485
    invoke-virtual {p0}, Lcom/android/internal/widget/ScrollingTabContainerView$EmuiLinearLayout;->getChildCount()I

    move-result v1

    .line 486
    .local v1, count:I
    invoke-virtual {p0}, Lcom/android/internal/widget/ScrollingTabContainerView$EmuiLinearLayout;->getDividerWidth()I

    move-result v2

    .line 488
    .local v2, dividerWidth:I
    const/4 v3, 0x0

    .local v3, i:I
    :goto_0
    if-ge v3, v1, :cond_3

    .line 489
    invoke-virtual {p0, v3}, Lcom/android/internal/widget/ScrollingTabContainerView$EmuiLinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 491
    .local v0, child:Landroid/view/View;
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v7

    const/16 v8, 0x8

    if-eq v7, v8, :cond_1

    .line 492
    invoke-virtual {p0, v3}, Lcom/android/internal/widget/ScrollingTabContainerView$EmuiLinearLayout;->hasDividerBeforeChildAt(I)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 493
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    check-cast v5, Landroid/widget/LinearLayout$LayoutParams;

    .line 494
    .local v5, lp:Landroid/widget/LinearLayout$LayoutParams;
    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v7

    iget v8, v5, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    sub-int/2addr v7, v8

    sub-int v4, v7, v2

    .line 496
    .local v4, left:I
    iget-object v7, p0, Lcom/android/internal/widget/ScrollingTabContainerView$EmuiLinearLayout;->this$0:Lcom/android/internal/widget/ScrollingTabContainerView;

    #getter for: Lcom/android/internal/widget/ScrollingTabContainerView;->mSelectedTabIndex:I
    invoke-static {v7}, Lcom/android/internal/widget/ScrollingTabContainerView;->access$200(Lcom/android/internal/widget/ScrollingTabContainerView;)I

    move-result v7

    if-eq v7, v3, :cond_0

    iget-object v7, p0, Lcom/android/internal/widget/ScrollingTabContainerView$EmuiLinearLayout;->this$0:Lcom/android/internal/widget/ScrollingTabContainerView;

    #getter for: Lcom/android/internal/widget/ScrollingTabContainerView;->mSelectedTabIndex:I
    invoke-static {v7}, Lcom/android/internal/widget/ScrollingTabContainerView;->access$200(Lcom/android/internal/widget/ScrollingTabContainerView;)I

    move-result v7

    add-int/lit8 v8, v3, -0x1

    if-ne v7, v8, :cond_2

    .line 497
    :cond_0
    invoke-direct {p0, p1, v4}, Lcom/android/internal/widget/ScrollingTabContainerView$EmuiLinearLayout;->drawVerticalDividerTransparent(Landroid/graphics/Canvas;I)V

    .line 488
    .end local v4           #left:I
    .end local v5           #lp:Landroid/widget/LinearLayout$LayoutParams;
    :cond_1
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 499
    .restart local v4       #left:I
    .restart local v5       #lp:Landroid/widget/LinearLayout$LayoutParams;
    :cond_2
    invoke-virtual {p0, p1, v4}, Lcom/android/internal/widget/ScrollingTabContainerView$EmuiLinearLayout;->drawVerticalDivider(Landroid/graphics/Canvas;I)V

    goto :goto_1

    .line 505
    .end local v0           #child:Landroid/view/View;
    .end local v4           #left:I
    .end local v5           #lp:Landroid/widget/LinearLayout$LayoutParams;
    :cond_3
    invoke-virtual {p0, v1}, Lcom/android/internal/widget/ScrollingTabContainerView$EmuiLinearLayout;->hasDividerBeforeChildAt(I)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 506
    add-int/lit8 v7, v1, -0x1

    invoke-virtual {p0, v7}, Lcom/android/internal/widget/ScrollingTabContainerView$EmuiLinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 507
    .restart local v0       #child:Landroid/view/View;
    const/4 v6, 0x0

    .line 508
    .local v6, right:I
    if-nez v0, :cond_5

    .line 509
    invoke-virtual {p0}, Lcom/android/internal/widget/ScrollingTabContainerView$EmuiLinearLayout;->getWidth()I

    move-result v7

    invoke-virtual {p0}, Lcom/android/internal/widget/ScrollingTabContainerView$EmuiLinearLayout;->getPaddingRight()I

    move-result v8

    sub-int/2addr v7, v8

    sub-int v6, v7, v2

    .line 515
    :goto_2
    iget-object v7, p0, Lcom/android/internal/widget/ScrollingTabContainerView$EmuiLinearLayout;->this$0:Lcom/android/internal/widget/ScrollingTabContainerView;

    #getter for: Lcom/android/internal/widget/ScrollingTabContainerView;->mSelectedTabIndex:I
    invoke-static {v7}, Lcom/android/internal/widget/ScrollingTabContainerView;->access$200(Lcom/android/internal/widget/ScrollingTabContainerView;)I

    move-result v7

    add-int/lit8 v7, v7, 0x1

    if-ne v7, v1, :cond_6

    .line 516
    invoke-direct {p0, p1, v6}, Lcom/android/internal/widget/ScrollingTabContainerView$EmuiLinearLayout;->drawVerticalDividerTransparent(Landroid/graphics/Canvas;I)V

    .line 522
    .end local v0           #child:Landroid/view/View;
    .end local v6           #right:I
    :cond_4
    :goto_3
    return-void

    .line 511
    .restart local v0       #child:Landroid/view/View;
    .restart local v6       #right:I
    :cond_5
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    check-cast v5, Landroid/widget/LinearLayout$LayoutParams;

    .line 512
    .restart local v5       #lp:Landroid/widget/LinearLayout$LayoutParams;
    invoke-virtual {v0}, Landroid/view/View;->getRight()I

    move-result v7

    iget v8, v5, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    add-int v6, v7, v8

    goto :goto_2

    .line 518
    .end local v5           #lp:Landroid/widget/LinearLayout$LayoutParams;
    :cond_6
    invoke-virtual {p0, p1, v6}, Lcom/android/internal/widget/ScrollingTabContainerView$EmuiLinearLayout;->drawVerticalDivider(Landroid/graphics/Canvas;I)V

    goto :goto_3
.end method

.method drawVerticalDivider(Landroid/graphics/Canvas;I)V
    .locals 7
    .parameter "canvas"
    .parameter "left"

    .prologue
    .line 534
    iget-object v2, p0, Lcom/android/internal/widget/ScrollingTabContainerView$EmuiLinearLayout;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget v1, v2, Landroid/content/res/Configuration;->orientation:I

    .line 535
    .local v1, orientation:I
    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    .line 536
    iget-object v2, p0, Lcom/android/internal/widget/ScrollingTabContainerView$EmuiLinearLayout;->mDividerLand:Landroid/graphics/drawable/Drawable;

    iput-object v2, p0, Lcom/android/internal/widget/ScrollingTabContainerView$EmuiLinearLayout;->mDividerEmui:Landroid/graphics/drawable/Drawable;

    .line 541
    :goto_0
    invoke-virtual {p0}, Lcom/android/internal/widget/ScrollingTabContainerView$EmuiLinearLayout;->getDividerPadding()I

    move-result v0

    .line 542
    .local v0, dividerPadding:I
    iget-object v2, p0, Lcom/android/internal/widget/ScrollingTabContainerView$EmuiLinearLayout;->mDividerEmui:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Lcom/android/internal/widget/ScrollingTabContainerView$EmuiLinearLayout;->getPaddingTop()I

    move-result v3

    add-int/2addr v3, v0

    invoke-virtual {p0}, Lcom/android/internal/widget/ScrollingTabContainerView$EmuiLinearLayout;->getDividerWidth()I

    move-result v4

    add-int/2addr v4, p2

    invoke-virtual {p0}, Lcom/android/internal/widget/ScrollingTabContainerView$EmuiLinearLayout;->getHeight()I

    move-result v5

    invoke-virtual {p0}, Lcom/android/internal/widget/ScrollingTabContainerView$EmuiLinearLayout;->getPaddingBottom()I

    move-result v6

    sub-int/2addr v5, v6

    sub-int/2addr v5, v0

    invoke-virtual {v2, p2, v3, v4, v5}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 544
    iget-object v2, p0, Lcom/android/internal/widget/ScrollingTabContainerView$EmuiLinearLayout;->mDividerEmui:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 545
    return-void

    .line 538
    .end local v0           #dividerPadding:I
    :cond_0
    iget-object v2, p0, Lcom/android/internal/widget/ScrollingTabContainerView$EmuiLinearLayout;->mDividerPort:Landroid/graphics/drawable/Drawable;

    iput-object v2, p0, Lcom/android/internal/widget/ScrollingTabContainerView$EmuiLinearLayout;->mDividerEmui:Landroid/graphics/drawable/Drawable;

    goto :goto_0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 10
    .parameter "canvas"

    .prologue
    .line 466
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onDraw(Landroid/graphics/Canvas;)V

    .line 468
    invoke-virtual {p0}, Lcom/android/internal/widget/ScrollingTabContainerView$EmuiLinearLayout;->getChildCount()I

    move-result v0

    .line 469
    .local v0, childCount:I
    if-lez v0, :cond_0

    .line 470
    iget-object v5, p0, Lcom/android/internal/widget/ScrollingTabContainerView$EmuiLinearLayout;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v5

    iget v2, v5, Landroid/content/res/Configuration;->orientation:I

    .line 471
    .local v2, orientation:I
    invoke-virtual {p0}, Lcom/android/internal/widget/ScrollingTabContainerView$EmuiLinearLayout;->getWidth()I

    move-result v3

    .line 473
    .local v3, tabLayoutWidth:I
    iget-object v5, p0, Lcom/android/internal/widget/ScrollingTabContainerView$EmuiLinearLayout;->this$0:Lcom/android/internal/widget/ScrollingTabContainerView;

    #getter for: Lcom/android/internal/widget/ScrollingTabContainerView;->mDividerCount:I
    invoke-static {v5}, Lcom/android/internal/widget/ScrollingTabContainerView;->access$100(Lcom/android/internal/widget/ScrollingTabContainerView;)I

    move-result v5

    invoke-virtual {p0}, Lcom/android/internal/widget/ScrollingTabContainerView$EmuiLinearLayout;->getDividerWidth()I

    move-result v6

    mul-int/2addr v5, v6

    sub-int v4, v3, v5

    .line 475
    .local v4, tabsWidth:I
    const/4 v5, 0x1

    if-ne v2, v5, :cond_0

    rem-int v5, v4, v0

    if-eqz v5, :cond_0

    .line 476
    invoke-virtual {p0}, Lcom/android/internal/widget/ScrollingTabContainerView$EmuiLinearLayout;->getDividerPadding()I

    move-result v1

    .line 477
    .local v1, dividerPadding:I
    iget-object v5, p0, Lcom/android/internal/widget/ScrollingTabContainerView$EmuiLinearLayout;->mDividerTransparent:Landroid/graphics/drawable/Drawable;

    rem-int v6, v4, v0

    sub-int v6, v3, v6

    invoke-virtual {p0}, Lcom/android/internal/widget/ScrollingTabContainerView$EmuiLinearLayout;->getPaddingTop()I

    move-result v7

    add-int/2addr v7, v1

    invoke-virtual {p0}, Lcom/android/internal/widget/ScrollingTabContainerView$EmuiLinearLayout;->getHeight()I

    move-result v8

    invoke-virtual {p0}, Lcom/android/internal/widget/ScrollingTabContainerView$EmuiLinearLayout;->getPaddingBottom()I

    move-result v9

    sub-int/2addr v8, v9

    sub-int/2addr v8, v1

    invoke-virtual {v5, v6, v7, v3, v8}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 479
    iget-object v5, p0, Lcom/android/internal/widget/ScrollingTabContainerView$EmuiLinearLayout;->mDividerTransparent:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v5, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 482
    .end local v1           #dividerPadding:I
    .end local v2           #orientation:I
    .end local v3           #tabLayoutWidth:I
    .end local v4           #tabsWidth:I
    :cond_0
    return-void
.end method
