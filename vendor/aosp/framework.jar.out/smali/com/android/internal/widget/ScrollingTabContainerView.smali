.class public Lcom/android/internal/widget/ScrollingTabContainerView;
.super Landroid/widget/HorizontalScrollView;
.source "ScrollingTabContainerView.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/widget/ScrollingTabContainerView$VisibilityAnimListener;,
        Lcom/android/internal/widget/ScrollingTabContainerView$TabClickListener;,
        Lcom/android/internal/widget/ScrollingTabContainerView$TabAdapter;,
        Lcom/android/internal/widget/ScrollingTabContainerView$TabView;,
        Lcom/android/internal/widget/ScrollingTabContainerView$EmuiLinearLayout;
    }
.end annotation


# static fields
.field private static final FADE_DURATION:I = 0xc8

.field private static final TAG:Ljava/lang/String; = "ScrollingTabContainerView"

.field private static final sAlphaInterpolator:Landroid/animation/TimeInterpolator;


# instance fields
.field private mAllowCollapse:Z

.field private mContentHeight:I

.field private mCurrentTabTextSize:I

.field private mDisplayDensity:I

.field private mDividerCount:I

.field private mIsHwActionBar:Z

.field private final mLastConfiguration:Landroid/content/res/Configuration;

.field mMaxTabWidth:I

.field private mMenuTabMaxFontSize:I

.field private mMenuTabMinFontSize:I

.field private mSelectedTabIndex:I

.field mStackedTabMaxWidth:I

.field private mTabClickListener:Lcom/android/internal/widget/ScrollingTabContainerView$TabClickListener;

.field private mTabLayout:Landroid/widget/LinearLayout;

.field mTabSelector:Ljava/lang/Runnable;

.field private mTabSpinner:Landroid/widget/Spinner;

.field private mTabTextViewExample:Landroid/widget/TextView;

.field protected final mVisAnimListener:Lcom/android/internal/widget/ScrollingTabContainerView$VisibilityAnimListener;

.field protected mVisibilityAnim:Landroid/animation/Animator;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 79
    new-instance v0, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    sput-object v0, Lcom/android/internal/widget/ScrollingTabContainerView;->sAlphaInterpolator:Landroid/animation/TimeInterpolator;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 5
    .parameter "context"

    .prologue
    const/4 v2, 0x0

    .line 148
    invoke-direct {p0, p1}, Landroid/widget/HorizontalScrollView;-><init>(Landroid/content/Context;)V

    .line 77
    new-instance v1, Lcom/android/internal/widget/ScrollingTabContainerView$VisibilityAnimListener;

    invoke-direct {v1, p0}, Lcom/android/internal/widget/ScrollingTabContainerView$VisibilityAnimListener;-><init>(Lcom/android/internal/widget/ScrollingTabContainerView;)V

    iput-object v1, p0, Lcom/android/internal/widget/ScrollingTabContainerView;->mVisAnimListener:Lcom/android/internal/widget/ScrollingTabContainerView$VisibilityAnimListener;

    .line 95
    iput v2, p0, Lcom/android/internal/widget/ScrollingTabContainerView;->mDividerCount:I

    .line 99
    new-instance v1, Landroid/content/res/Configuration;

    invoke-direct {v1}, Landroid/content/res/Configuration;-><init>()V

    iput-object v1, p0, Lcom/android/internal/widget/ScrollingTabContainerView;->mLastConfiguration:Landroid/content/res/Configuration;

    .line 149
    invoke-virtual {p0, v2}, Lcom/android/internal/widget/ScrollingTabContainerView;->setHorizontalScrollBarEnabled(Z)V

    .line 151
    invoke-static {p1}, Lcom/android/internal/view/ActionBarPolicy;->get(Landroid/content/Context;)Lcom/android/internal/view/ActionBarPolicy;

    move-result-object v0

    .line 152
    .local v0, abp:Lcom/android/internal/view/ActionBarPolicy;
    invoke-virtual {v0}, Lcom/android/internal/view/ActionBarPolicy;->getTabContainerHeight()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/android/internal/widget/ScrollingTabContainerView;->setContentHeight(I)V

    .line 153
    invoke-virtual {v0}, Lcom/android/internal/view/ActionBarPolicy;->getStackedTabMaxWidth()I

    move-result v1

    iput v1, p0, Lcom/android/internal/widget/ScrollingTabContainerView;->mStackedTabMaxWidth:I

    .line 155
    invoke-direct {p0}, Lcom/android/internal/widget/ScrollingTabContainerView;->createTabLayout()Landroid/widget/LinearLayout;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/widget/ScrollingTabContainerView;->mTabLayout:Landroid/widget/LinearLayout;

    .line 156
    iget-object v1, p0, Lcom/android/internal/widget/ScrollingTabContainerView;->mTabLayout:Landroid/widget/LinearLayout;

    new-instance v2, Landroid/view/ViewGroup$LayoutParams;

    const/4 v3, -0x2

    const/4 v4, -0x1

    invoke-direct {v2, v3, v4}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v1, v2}, Lcom/android/internal/widget/ScrollingTabContainerView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 158
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Z)V
    .locals 6
    .parameter "context"
    .parameter "isHwActionBar"

    .prologue
    const/4 v3, 0x0

    .line 103
    invoke-direct {p0, p1}, Landroid/widget/HorizontalScrollView;-><init>(Landroid/content/Context;)V

    .line 77
    new-instance v2, Lcom/android/internal/widget/ScrollingTabContainerView$VisibilityAnimListener;

    invoke-direct {v2, p0}, Lcom/android/internal/widget/ScrollingTabContainerView$VisibilityAnimListener;-><init>(Lcom/android/internal/widget/ScrollingTabContainerView;)V

    iput-object v2, p0, Lcom/android/internal/widget/ScrollingTabContainerView;->mVisAnimListener:Lcom/android/internal/widget/ScrollingTabContainerView$VisibilityAnimListener;

    .line 95
    iput v3, p0, Lcom/android/internal/widget/ScrollingTabContainerView;->mDividerCount:I

    .line 99
    new-instance v2, Landroid/content/res/Configuration;

    invoke-direct {v2}, Landroid/content/res/Configuration;-><init>()V

    iput-object v2, p0, Lcom/android/internal/widget/ScrollingTabContainerView;->mLastConfiguration:Landroid/content/res/Configuration;

    .line 104
    iput-boolean p2, p0, Lcom/android/internal/widget/ScrollingTabContainerView;->mIsHwActionBar:Z

    .line 106
    invoke-virtual {p0, v3}, Lcom/android/internal/widget/ScrollingTabContainerView;->setHorizontalScrollBarEnabled(Z)V

    .line 108
    invoke-static {p1}, Lcom/android/internal/view/ActionBarPolicy;->get(Landroid/content/Context;)Lcom/android/internal/view/ActionBarPolicy;

    move-result-object v0

    .line 109
    .local v0, abp:Lcom/android/internal/view/ActionBarPolicy;
    invoke-virtual {v0}, Lcom/android/internal/view/ActionBarPolicy;->getTabContainerHeight()I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/android/internal/widget/ScrollingTabContainerView;->setContentHeight(I)V

    .line 110
    invoke-virtual {v0}, Lcom/android/internal/view/ActionBarPolicy;->getStackedTabMaxWidth()I

    move-result v2

    iput v2, p0, Lcom/android/internal/widget/ScrollingTabContainerView;->mStackedTabMaxWidth:I

    .line 112
    iget-boolean v2, p0, Lcom/android/internal/widget/ScrollingTabContainerView;->mIsHwActionBar:Z

    if-eqz v2, :cond_2

    .line 113
    invoke-direct {p0}, Lcom/android/internal/widget/ScrollingTabContainerView;->createTabLayoutEmui()Landroid/widget/LinearLayout;

    move-result-object v2

    iput-object v2, p0, Lcom/android/internal/widget/ScrollingTabContainerView;->mTabLayout:Landroid/widget/LinearLayout;

    .line 115
    iget-object v2, p0, Lcom/android/internal/widget/ScrollingTabContainerView;->mTabLayout:Landroid/widget/LinearLayout;

    const/4 v3, 0x3

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 116
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 119
    .local v1, res:Landroid/content/res/Resources;
    const v2, 0x30b0032

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    float-to-int v2, v2

    iput v2, p0, Lcom/android/internal/widget/ScrollingTabContainerView;->mMenuTabMaxFontSize:I

    .line 120
    const v2, 0x30b0031

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    float-to-int v2, v2

    iput v2, p0, Lcom/android/internal/widget/ScrollingTabContainerView;->mMenuTabMinFontSize:I

    .line 121
    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v2, v2, Landroid/util/DisplayMetrics;->density:F

    float-to-int v2, v2

    iput v2, p0, Lcom/android/internal/widget/ScrollingTabContainerView;->mDisplayDensity:I

    .line 123
    iget v2, p0, Lcom/android/internal/widget/ScrollingTabContainerView;->mMenuTabMaxFontSize:I

    iput v2, p0, Lcom/android/internal/widget/ScrollingTabContainerView;->mCurrentTabTextSize:I

    .line 130
    iget-object v2, p0, Lcom/android/internal/widget/ScrollingTabContainerView;->mTabLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v2}, Landroid/widget/LinearLayout;->getShowDividers()I

    move-result v2

    iget-object v3, p0, Lcom/android/internal/widget/ScrollingTabContainerView;->mTabLayout:Landroid/widget/LinearLayout;

    and-int/lit8 v2, v2, 0x1

    iget-object v3, p0, Lcom/android/internal/widget/ScrollingTabContainerView;->mTabLayout:Landroid/widget/LinearLayout;

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    .line 131
    iget v2, p0, Lcom/android/internal/widget/ScrollingTabContainerView;->mDividerCount:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/android/internal/widget/ScrollingTabContainerView;->mDividerCount:I

    .line 133
    :cond_0
    iget-object v2, p0, Lcom/android/internal/widget/ScrollingTabContainerView;->mTabLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v2}, Landroid/widget/LinearLayout;->getShowDividers()I

    move-result v2

    iget-object v3, p0, Lcom/android/internal/widget/ScrollingTabContainerView;->mTabLayout:Landroid/widget/LinearLayout;

    and-int/lit8 v2, v2, 0x4

    iget-object v3, p0, Lcom/android/internal/widget/ScrollingTabContainerView;->mTabLayout:Landroid/widget/LinearLayout;

    const/4 v3, 0x4

    if-ne v2, v3, :cond_1

    .line 134
    iget v2, p0, Lcom/android/internal/widget/ScrollingTabContainerView;->mDividerCount:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/android/internal/widget/ScrollingTabContainerView;->mDividerCount:I

    .line 141
    .end local v1           #res:Landroid/content/res/Resources;
    :cond_1
    :goto_0
    iget-object v2, p0, Lcom/android/internal/widget/ScrollingTabContainerView;->mTabLayout:Landroid/widget/LinearLayout;

    new-instance v3, Landroid/view/ViewGroup$LayoutParams;

    const/4 v4, -0x2

    const/4 v5, -0x1

    invoke-direct {v3, v4, v5}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v2, v3}, Lcom/android/internal/widget/ScrollingTabContainerView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 143
    return-void

    .line 137
    :cond_2
    invoke-direct {p0}, Lcom/android/internal/widget/ScrollingTabContainerView;->createTabLayout()Landroid/widget/LinearLayout;

    move-result-object v2

    iput-object v2, p0, Lcom/android/internal/widget/ScrollingTabContainerView;->mTabLayout:Landroid/widget/LinearLayout;

    goto :goto_0
.end method

.method static synthetic access$100(Lcom/android/internal/widget/ScrollingTabContainerView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 61
    iget v0, p0, Lcom/android/internal/widget/ScrollingTabContainerView;->mDividerCount:I

    return v0
.end method

.method static synthetic access$200(Lcom/android/internal/widget/ScrollingTabContainerView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 61
    iget v0, p0, Lcom/android/internal/widget/ScrollingTabContainerView;->mSelectedTabIndex:I

    return v0
.end method

.method static synthetic access$400(Lcom/android/internal/widget/ScrollingTabContainerView;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 61
    iget-boolean v0, p0, Lcom/android/internal/widget/ScrollingTabContainerView;->mIsHwActionBar:Z

    return v0
.end method

.method static synthetic access$500(Lcom/android/internal/widget/ScrollingTabContainerView;)Landroid/widget/LinearLayout;
    .locals 1
    .parameter "x0"

    .prologue
    .line 61
    iget-object v0, p0, Lcom/android/internal/widget/ScrollingTabContainerView;->mTabLayout:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/internal/widget/ScrollingTabContainerView;Landroid/app/ActionBar$Tab;Z)Lcom/android/internal/widget/ScrollingTabContainerView$TabView;
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 61
    invoke-direct {p0, p1, p2}, Lcom/android/internal/widget/ScrollingTabContainerView;->createTabView(Landroid/app/ActionBar$Tab;Z)Lcom/android/internal/widget/ScrollingTabContainerView$TabView;

    move-result-object v0

    return-object v0
.end method

.method private adaptForTabWidth()V
    .locals 7

    .prologue
    .line 369
    invoke-direct {p0}, Lcom/android/internal/widget/ScrollingTabContainerView;->catchCurrentTabTextSize()I

    move-result v0

    .line 371
    .local v0, currentTabTextSize:I
    iget v5, p0, Lcom/android/internal/widget/ScrollingTabContainerView;->mCurrentTabTextSize:I

    if-eq v5, v0, :cond_2

    .line 372
    iget-object v5, p0, Lcom/android/internal/widget/ScrollingTabContainerView;->mTabLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v5}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v2

    .line 373
    .local v2, tabCount:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v2, :cond_1

    .line 374
    iget-object v5, p0, Lcom/android/internal/widget/ScrollingTabContainerView;->mTabLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v5, v1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 375
    .local v4, view:Landroid/view/View;
    const/16 v5, 0x8

    invoke-virtual {v4}, Landroid/view/View;->getVisibility()I

    move-result v6

    if-eq v5, v6, :cond_0

    instance-of v5, v4, Lcom/android/internal/widget/ScrollingTabContainerView$TabView;

    if-eqz v5, :cond_0

    move-object v3, v4

    .line 376
    check-cast v3, Lcom/android/internal/widget/ScrollingTabContainerView$TabView;

    .line 377
    .local v3, tabViewTmp:Lcom/android/internal/widget/ScrollingTabContainerView$TabView;
    const/4 v5, 0x0

    invoke-virtual {v3, v5, v0}, Lcom/android/internal/widget/ScrollingTabContainerView$TabView;->setTextViewFontSizeOfHw(II)V

    .line 373
    .end local v3           #tabViewTmp:Lcom/android/internal/widget/ScrollingTabContainerView$TabView;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 380
    .end local v4           #view:Landroid/view/View;
    :cond_1
    iput v0, p0, Lcom/android/internal/widget/ScrollingTabContainerView;->mCurrentTabTextSize:I

    .line 382
    .end local v1           #i:I
    .end local v2           #tabCount:I
    :cond_2
    return-void
.end method

.method private catchCurrentTabTextSize()I
    .locals 13

    .prologue
    const/16 v12, 0x8

    .line 391
    iget v0, p0, Lcom/android/internal/widget/ScrollingTabContainerView;->mMenuTabMaxFontSize:I

    .line 392
    .local v0, currentTextSize:I
    iget-object v10, p0, Lcom/android/internal/widget/ScrollingTabContainerView;->mTabLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v10}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v2

    .line 394
    .local v2, tabCount:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v2, :cond_2

    .line 395
    iget-object v10, p0, Lcom/android/internal/widget/ScrollingTabContainerView;->mTabLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v10, v1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v9

    .line 396
    .local v9, view:Landroid/view/View;
    invoke-virtual {v9}, Landroid/view/View;->getVisibility()I

    move-result v10

    if-eq v12, v10, :cond_1

    instance-of v10, v9, Lcom/android/internal/widget/ScrollingTabContainerView$TabView;

    if-eqz v10, :cond_1

    move-object v6, v9

    .line 397
    check-cast v6, Lcom/android/internal/widget/ScrollingTabContainerView$TabView;

    .line 398
    .local v6, tabViewTmp:Lcom/android/internal/widget/ScrollingTabContainerView$TabView;
    iget-object v3, v6, Lcom/android/internal/widget/ScrollingTabContainerView$TabView;->mTextView:Landroid/widget/TextView;

    .line 399
    .local v3, tabTextView:Landroid/widget/TextView;
    iget v10, p0, Lcom/android/internal/widget/ScrollingTabContainerView;->mMaxTabWidth:I

    invoke-virtual {v9}, Landroid/view/View;->getPaddingLeft()I

    move-result v11

    sub-int/2addr v10, v11

    invoke-virtual {v9}, Landroid/view/View;->getPaddingRight()I

    move-result v11

    sub-int v4, v10, v11

    .line 401
    .local v4, tabTextWidth:I
    if-eqz v3, :cond_1

    invoke-virtual {v3}, Landroid/widget/TextView;->getVisibility()I

    move-result v10

    if-eq v12, v10, :cond_1

    .line 402
    invoke-virtual {v3}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    .line 403
    .local v5, tabTitle:Ljava/lang/String;
    iget v8, p0, Lcom/android/internal/widget/ScrollingTabContainerView;->mMenuTabMaxFontSize:I

    .line 404
    .local v8, titleSize:I
    invoke-direct {p0, v5, v8}, Lcom/android/internal/widget/ScrollingTabContainerView;->measureTabTextViewExample(Ljava/lang/String;I)I

    move-result v7

    .line 406
    .local v7, titleLength:I
    :goto_1
    iget v10, p0, Lcom/android/internal/widget/ScrollingTabContainerView;->mMenuTabMinFontSize:I

    if-le v8, v10, :cond_0

    if-le v7, v4, :cond_0

    .line 407
    iget v10, p0, Lcom/android/internal/widget/ScrollingTabContainerView;->mDisplayDensity:I

    sub-int/2addr v8, v10

    .line 408
    invoke-direct {p0, v5, v8}, Lcom/android/internal/widget/ScrollingTabContainerView;->measureTabTextViewExample(Ljava/lang/String;I)I

    move-result v7

    goto :goto_1

    .line 411
    :cond_0
    if-ge v8, v0, :cond_1

    .line 412
    move v0, v8

    .line 394
    .end local v3           #tabTextView:Landroid/widget/TextView;
    .end local v4           #tabTextWidth:I
    .end local v5           #tabTitle:Ljava/lang/String;
    .end local v6           #tabViewTmp:Lcom/android/internal/widget/ScrollingTabContainerView$TabView;
    .end local v7           #titleLength:I
    .end local v8           #titleSize:I
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 418
    .end local v9           #view:Landroid/view/View;
    :cond_2
    return v0
.end method

.method private createSpinner()Landroid/widget/Spinner;
    .locals 4

    .prologue
    .line 550
    new-instance v0, Landroid/widget/Spinner;

    invoke-virtual {p0}, Lcom/android/internal/widget/ScrollingTabContainerView;->getContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x0

    const v3, 0x10102d7

    invoke-direct {v0, v1, v2, v3}, Landroid/widget/Spinner;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 552
    .local v0, spinner:Landroid/widget/Spinner;
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v2, -0x2

    const/4 v3, -0x1

    invoke-direct {v1, v2, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 554
    invoke-virtual {v0, p0}, Landroid/widget/Spinner;->setOnItemClickListenerInt(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 555
    return-object v0
.end method

.method private createTabLayout()Landroid/widget/LinearLayout;
    .locals 4

    .prologue
    .line 277
    new-instance v0, Landroid/widget/LinearLayout;

    invoke-virtual {p0}, Lcom/android/internal/widget/ScrollingTabContainerView;->getContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x0

    const v3, 0x10102f4

    invoke-direct {v0, v1, v2, v3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 279
    .local v0, tabLayout:Landroid/widget/LinearLayout;
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setMeasureWithLargestChildEnabled(Z)V

    .line 280
    const/16 v1, 0x11

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 281
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v2, -0x2

    const/4 v3, -0x1

    invoke-direct {v1, v2, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 283
    return-object v0
.end method

.method private createTabLayoutEmui()Landroid/widget/LinearLayout;
    .locals 4

    .prologue
    .line 293
    new-instance v0, Lcom/android/internal/widget/ScrollingTabContainerView$EmuiLinearLayout;

    invoke-virtual {p0}, Lcom/android/internal/widget/ScrollingTabContainerView;->getContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x0

    const v3, 0x10102f4

    invoke-direct {v0, p0, v1, v2, v3}, Lcom/android/internal/widget/ScrollingTabContainerView$EmuiLinearLayout;-><init>(Lcom/android/internal/widget/ScrollingTabContainerView;Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 295
    .local v0, tabLayout:Landroid/widget/LinearLayout;
    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 296
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setMeasureWithLargestChildEnabled(Z)V

    .line 297
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v2, -0x2

    const/4 v3, -0x1

    invoke-direct {v1, v2, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 299
    return-object v0
.end method

.method private createTabView(Landroid/app/ActionBar$Tab;Z)Lcom/android/internal/widget/ScrollingTabContainerView$TabView;
    .locals 4
    .parameter "tab"
    .parameter "forAdapter"

    .prologue
    const/4 v2, 0x0

    .line 630
    new-instance v0, Lcom/android/internal/widget/ScrollingTabContainerView$TabView;

    invoke-virtual {p0}, Lcom/android/internal/widget/ScrollingTabContainerView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, p0, v1, p1, p2}, Lcom/android/internal/widget/ScrollingTabContainerView$TabView;-><init>(Lcom/android/internal/widget/ScrollingTabContainerView;Landroid/content/Context;Landroid/app/ActionBar$Tab;Z)V

    .line 631
    .local v0, tabView:Lcom/android/internal/widget/ScrollingTabContainerView$TabView;
    if-eqz p2, :cond_0

    .line 632
    invoke-virtual {v0, v2}, Lcom/android/internal/widget/ScrollingTabContainerView$TabView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 633
    new-instance v1, Landroid/widget/AbsListView$LayoutParams;

    const/4 v2, -0x1

    iget v3, p0, Lcom/android/internal/widget/ScrollingTabContainerView;->mContentHeight:I

    invoke-direct {v1, v2, v3}, Landroid/widget/AbsListView$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/ScrollingTabContainerView$TabView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 643
    :goto_0
    return-object v0

    .line 636
    :cond_0
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/ScrollingTabContainerView$TabView;->setFocusable(Z)V

    .line 638
    iget-object v1, p0, Lcom/android/internal/widget/ScrollingTabContainerView;->mTabClickListener:Lcom/android/internal/widget/ScrollingTabContainerView$TabClickListener;

    if-nez v1, :cond_1

    .line 639
    new-instance v1, Lcom/android/internal/widget/ScrollingTabContainerView$TabClickListener;

    invoke-direct {v1, p0, v2}, Lcom/android/internal/widget/ScrollingTabContainerView$TabClickListener;-><init>(Lcom/android/internal/widget/ScrollingTabContainerView;Lcom/android/internal/widget/ScrollingTabContainerView$1;)V

    iput-object v1, p0, Lcom/android/internal/widget/ScrollingTabContainerView;->mTabClickListener:Lcom/android/internal/widget/ScrollingTabContainerView$TabClickListener;

    .line 641
    :cond_1
    iget-object v1, p0, Lcom/android/internal/widget/ScrollingTabContainerView;->mTabClickListener:Lcom/android/internal/widget/ScrollingTabContainerView$TabClickListener;

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/ScrollingTabContainerView$TabView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0
.end method

.method private isCollapsed()Z
    .locals 1

    .prologue
    .line 217
    iget-object v0, p0, Lcom/android/internal/widget/ScrollingTabContainerView;->mTabSpinner:Landroid/widget/Spinner;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/widget/ScrollingTabContainerView;->mTabSpinner:Landroid/widget/Spinner;

    invoke-virtual {v0}, Landroid/widget/Spinner;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-ne v0, p0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private measureTabTextViewExample(Ljava/lang/String;I)I
    .locals 4
    .parameter "title"
    .parameter "fontSize"

    .prologue
    const/4 v3, -0x2

    const/4 v2, 0x0

    .line 428
    iget-object v0, p0, Lcom/android/internal/widget/ScrollingTabContainerView;->mTabTextViewExample:Landroid/widget/TextView;

    if-nez v0, :cond_0

    .line 429
    new-instance v0, Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/android/internal/widget/ScrollingTabContainerView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/internal/widget/ScrollingTabContainerView;->mTabTextViewExample:Landroid/widget/TextView;

    .line 430
    iget-object v0, p0, Lcom/android/internal/widget/ScrollingTabContainerView;->mTabTextViewExample:Landroid/widget/TextView;

    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v1, v3, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 433
    :cond_0
    iget-object v0, p0, Lcom/android/internal/widget/ScrollingTabContainerView;->mTabTextViewExample:Landroid/widget/TextView;

    int-to-float v1, p2

    invoke-virtual {v0, v2, v1}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 434
    iget-object v0, p0, Lcom/android/internal/widget/ScrollingTabContainerView;->mTabTextViewExample:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 435
    iget-object v0, p0, Lcom/android/internal/widget/ScrollingTabContainerView;->mTabTextViewExample:Landroid/widget/TextView;

    invoke-virtual {v0, v2, v2}, Landroid/widget/TextView;->measure(II)V

    .line 436
    iget-object v0, p0, Lcom/android/internal/widget/ScrollingTabContainerView;->mTabTextViewExample:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v0

    return v0
.end method

.method private onMeasureEmui(II)V
    .locals 10
    .parameter "widthMeasureSpec"
    .parameter "heightMeasureSpec"

    .prologue
    const/4 v6, 0x1

    const/high16 v9, 0x4000

    .line 309
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v5

    .line 310
    .local v5, widthMode:I
    if-ne v5, v9, :cond_2

    move v1, v6

    .line 311
    .local v1, lockedExpanded:Z
    :goto_0
    invoke-virtual {p0, v1}, Lcom/android/internal/widget/ScrollingTabContainerView;->setFillViewport(Z)V

    .line 313
    iget-object v7, p0, Lcom/android/internal/widget/ScrollingTabContainerView;->mTabLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v7}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v0

    .line 315
    .local v0, childCount:I
    if-le v0, v6, :cond_4

    if-eq v5, v9, :cond_0

    const/high16 v6, -0x8000

    if-ne v5, v6, :cond_4

    .line 317
    :cond_0
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v6

    iget v7, p0, Lcom/android/internal/widget/ScrollingTabContainerView;->mDividerCount:I

    iget-object v8, p0, Lcom/android/internal/widget/ScrollingTabContainerView;->mTabLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v8}, Landroid/widget/LinearLayout;->getDividerWidth()I

    move-result v8

    mul-int/2addr v7, v8

    sub-int v4, v6, v7

    .line 319
    .local v4, tabBarWidthExceptDivider:I
    const/4 v6, 0x5

    if-ge v0, v6, :cond_3

    .line 320
    div-int v6, v4, v0

    iput v6, p0, Lcom/android/internal/widget/ScrollingTabContainerView;->mMaxTabWidth:I

    .line 324
    :goto_1
    iget v6, p0, Lcom/android/internal/widget/ScrollingTabContainerView;->mMaxTabWidth:I

    iget v7, p0, Lcom/android/internal/widget/ScrollingTabContainerView;->mStackedTabMaxWidth:I

    invoke-static {v6, v7}, Ljava/lang/Math;->min(II)I

    move-result v6

    iput v6, p0, Lcom/android/internal/widget/ScrollingTabContainerView;->mMaxTabWidth:I

    .line 328
    .end local v4           #tabBarWidthExceptDivider:I
    :goto_2
    iget v6, p0, Lcom/android/internal/widget/ScrollingTabContainerView;->mContentHeight:I

    invoke-static {v6, v9}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    .line 346
    invoke-direct {p0}, Lcom/android/internal/widget/ScrollingTabContainerView;->performExpand()Z

    .line 349
    invoke-direct {p0}, Lcom/android/internal/widget/ScrollingTabContainerView;->adaptForTabWidth()V

    .line 351
    invoke-virtual {p0}, Lcom/android/internal/widget/ScrollingTabContainerView;->getMeasuredWidth()I

    move-result v3

    .line 352
    .local v3, oldWidth:I
    invoke-super {p0, p1, p2}, Landroid/widget/HorizontalScrollView;->onMeasure(II)V

    .line 353
    invoke-virtual {p0}, Lcom/android/internal/widget/ScrollingTabContainerView;->getMeasuredWidth()I

    move-result v2

    .line 355
    .local v2, newWidth:I
    if-eqz v1, :cond_1

    if-eq v3, v2, :cond_1

    .line 357
    iget v6, p0, Lcom/android/internal/widget/ScrollingTabContainerView;->mSelectedTabIndex:I

    invoke-virtual {p0, v6}, Lcom/android/internal/widget/ScrollingTabContainerView;->setTabSelected(I)V

    .line 359
    :cond_1
    return-void

    .line 310
    .end local v0           #childCount:I
    .end local v1           #lockedExpanded:Z
    .end local v2           #newWidth:I
    .end local v3           #oldWidth:I
    :cond_2
    const/4 v1, 0x0

    goto :goto_0

    .line 322
    .restart local v0       #childCount:I
    .restart local v1       #lockedExpanded:Z
    .restart local v4       #tabBarWidthExceptDivider:I
    :cond_3
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v6

    int-to-float v6, v6

    const v7, 0x3ecccccd

    mul-float/2addr v6, v7

    float-to-int v6, v6

    iput v6, p0, Lcom/android/internal/widget/ScrollingTabContainerView;->mMaxTabWidth:I

    goto :goto_1

    .line 326
    .end local v4           #tabBarWidthExceptDivider:I
    :cond_4
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v6

    iput v6, p0, Lcom/android/internal/widget/ScrollingTabContainerView;->mMaxTabWidth:I

    goto :goto_2
.end method

.method private performCollapse()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 225
    invoke-direct {p0}, Lcom/android/internal/widget/ScrollingTabContainerView;->isCollapsed()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 241
    :goto_0
    return-void

    .line 227
    :cond_0
    iget-object v0, p0, Lcom/android/internal/widget/ScrollingTabContainerView;->mTabSpinner:Landroid/widget/Spinner;

    if-nez v0, :cond_1

    .line 228
    invoke-direct {p0}, Lcom/android/internal/widget/ScrollingTabContainerView;->createSpinner()Landroid/widget/Spinner;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/widget/ScrollingTabContainerView;->mTabSpinner:Landroid/widget/Spinner;

    .line 230
    :cond_1
    iget-object v0, p0, Lcom/android/internal/widget/ScrollingTabContainerView;->mTabLayout:Landroid/widget/LinearLayout;

    invoke-virtual {p0, v0}, Lcom/android/internal/widget/ScrollingTabContainerView;->removeView(Landroid/view/View;)V

    .line 231
    iget-object v0, p0, Lcom/android/internal/widget/ScrollingTabContainerView;->mTabSpinner:Landroid/widget/Spinner;

    new-instance v1, Landroid/view/ViewGroup$LayoutParams;

    const/4 v2, -0x2

    const/4 v3, -0x1

    invoke-direct {v1, v2, v3}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v0, v1}, Lcom/android/internal/widget/ScrollingTabContainerView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 233
    iget-object v0, p0, Lcom/android/internal/widget/ScrollingTabContainerView;->mTabSpinner:Landroid/widget/Spinner;

    invoke-virtual {v0}, Landroid/widget/Spinner;->getAdapter()Landroid/widget/SpinnerAdapter;

    move-result-object v0

    if-nez v0, :cond_2

    .line 234
    iget-object v0, p0, Lcom/android/internal/widget/ScrollingTabContainerView;->mTabSpinner:Landroid/widget/Spinner;

    new-instance v1, Lcom/android/internal/widget/ScrollingTabContainerView$TabAdapter;

    invoke-direct {v1, p0, v4}, Lcom/android/internal/widget/ScrollingTabContainerView$TabAdapter;-><init>(Lcom/android/internal/widget/ScrollingTabContainerView;Lcom/android/internal/widget/ScrollingTabContainerView$1;)V

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 236
    :cond_2
    iget-object v0, p0, Lcom/android/internal/widget/ScrollingTabContainerView;->mTabSelector:Ljava/lang/Runnable;

    if-eqz v0, :cond_3

    .line 237
    iget-object v0, p0, Lcom/android/internal/widget/ScrollingTabContainerView;->mTabSelector:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/android/internal/widget/ScrollingTabContainerView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 238
    iput-object v4, p0, Lcom/android/internal/widget/ScrollingTabContainerView;->mTabSelector:Ljava/lang/Runnable;

    .line 240
    :cond_3
    iget-object v0, p0, Lcom/android/internal/widget/ScrollingTabContainerView;->mTabSpinner:Landroid/widget/Spinner;

    iget v1, p0, Lcom/android/internal/widget/ScrollingTabContainerView;->mSelectedTabIndex:I

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setSelection(I)V

    goto :goto_0
.end method

.method private performExpand()Z
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 244
    invoke-direct {p0}, Lcom/android/internal/widget/ScrollingTabContainerView;->isCollapsed()Z

    move-result v0

    if-nez v0, :cond_0

    .line 250
    :goto_0
    return v4

    .line 246
    :cond_0
    iget-object v0, p0, Lcom/android/internal/widget/ScrollingTabContainerView;->mTabSpinner:Landroid/widget/Spinner;

    invoke-virtual {p0, v0}, Lcom/android/internal/widget/ScrollingTabContainerView;->removeView(Landroid/view/View;)V

    .line 247
    iget-object v0, p0, Lcom/android/internal/widget/ScrollingTabContainerView;->mTabLayout:Landroid/widget/LinearLayout;

    new-instance v1, Landroid/view/ViewGroup$LayoutParams;

    const/4 v2, -0x2

    const/4 v3, -0x1

    invoke-direct {v1, v2, v3}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v0, v1}, Lcom/android/internal/widget/ScrollingTabContainerView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 249
    iget-object v0, p0, Lcom/android/internal/widget/ScrollingTabContainerView;->mTabSpinner:Landroid/widget/Spinner;

    invoke-virtual {v0}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/internal/widget/ScrollingTabContainerView;->setTabSelected(I)V

    goto :goto_0
.end method


# virtual methods
.method public addTab(Landroid/app/ActionBar$Tab;IZ)V
    .locals 7
    .parameter "tab"
    .parameter "position"
    .parameter "setSelected"

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 669
    invoke-direct {p0, p1, v5}, Lcom/android/internal/widget/ScrollingTabContainerView;->createTabView(Landroid/app/ActionBar$Tab;Z)Lcom/android/internal/widget/ScrollingTabContainerView$TabView;

    move-result-object v0

    .line 670
    .local v0, tabView:Lcom/android/internal/widget/ScrollingTabContainerView$TabView;
    iget-object v1, p0, Lcom/android/internal/widget/ScrollingTabContainerView;->mTabLayout:Landroid/widget/LinearLayout;

    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v3, -0x1

    const/high16 v4, 0x3f80

    invoke-direct {v2, v5, v3, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v1, v0, p2, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 673
    iget-boolean v1, p0, Lcom/android/internal/widget/ScrollingTabContainerView;->mIsHwActionBar:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/internal/widget/ScrollingTabContainerView;->mTabLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getShowDividers()I

    move-result v1

    iget-object v2, p0, Lcom/android/internal/widget/ScrollingTabContainerView;->mTabLayout:Landroid/widget/LinearLayout;

    and-int/lit8 v1, v1, 0x2

    iget-object v2, p0, Lcom/android/internal/widget/ScrollingTabContainerView;->mTabLayout:Landroid/widget/LinearLayout;

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Lcom/android/internal/widget/ScrollingTabContainerView;->mTabLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v1

    if-le v1, v6, :cond_0

    .line 676
    iget v1, p0, Lcom/android/internal/widget/ScrollingTabContainerView;->mDividerCount:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/android/internal/widget/ScrollingTabContainerView;->mDividerCount:I

    .line 679
    :cond_0
    iget-object v1, p0, Lcom/android/internal/widget/ScrollingTabContainerView;->mTabSpinner:Landroid/widget/Spinner;

    if-eqz v1, :cond_1

    .line 680
    iget-object v1, p0, Lcom/android/internal/widget/ScrollingTabContainerView;->mTabSpinner:Landroid/widget/Spinner;

    invoke-virtual {v1}, Landroid/widget/Spinner;->getAdapter()Landroid/widget/SpinnerAdapter;

    move-result-object v1

    check-cast v1, Lcom/android/internal/widget/ScrollingTabContainerView$TabAdapter;

    invoke-virtual {v1}, Lcom/android/internal/widget/ScrollingTabContainerView$TabAdapter;->notifyDataSetChanged()V

    .line 682
    :cond_1
    if-eqz p3, :cond_2

    .line 683
    invoke-virtual {v0, v6}, Lcom/android/internal/widget/ScrollingTabContainerView$TabView;->setSelected(Z)V

    .line 685
    :cond_2
    iget-boolean v1, p0, Lcom/android/internal/widget/ScrollingTabContainerView;->mAllowCollapse:Z

    if-eqz v1, :cond_3

    .line 686
    invoke-virtual {p0}, Lcom/android/internal/widget/ScrollingTabContainerView;->requestLayout()V

    .line 688
    :cond_3
    return-void
.end method

.method public addTab(Landroid/app/ActionBar$Tab;Z)V
    .locals 7
    .parameter "tab"
    .parameter "setSelected"

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 647
    invoke-direct {p0, p1, v5}, Lcom/android/internal/widget/ScrollingTabContainerView;->createTabView(Landroid/app/ActionBar$Tab;Z)Lcom/android/internal/widget/ScrollingTabContainerView$TabView;

    move-result-object v0

    .line 648
    .local v0, tabView:Lcom/android/internal/widget/ScrollingTabContainerView$TabView;
    iget-object v1, p0, Lcom/android/internal/widget/ScrollingTabContainerView;->mTabLayout:Landroid/widget/LinearLayout;

    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v3, -0x1

    const/high16 v4, 0x3f80

    invoke-direct {v2, v5, v3, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v1, v0, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 651
    iget-boolean v1, p0, Lcom/android/internal/widget/ScrollingTabContainerView;->mIsHwActionBar:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/internal/widget/ScrollingTabContainerView;->mTabLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getShowDividers()I

    move-result v1

    iget-object v2, p0, Lcom/android/internal/widget/ScrollingTabContainerView;->mTabLayout:Landroid/widget/LinearLayout;

    and-int/lit8 v1, v1, 0x2

    iget-object v2, p0, Lcom/android/internal/widget/ScrollingTabContainerView;->mTabLayout:Landroid/widget/LinearLayout;

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Lcom/android/internal/widget/ScrollingTabContainerView;->mTabLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v1

    if-le v1, v6, :cond_0

    .line 654
    iget v1, p0, Lcom/android/internal/widget/ScrollingTabContainerView;->mDividerCount:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/android/internal/widget/ScrollingTabContainerView;->mDividerCount:I

    .line 657
    :cond_0
    iget-object v1, p0, Lcom/android/internal/widget/ScrollingTabContainerView;->mTabSpinner:Landroid/widget/Spinner;

    if-eqz v1, :cond_1

    .line 658
    iget-object v1, p0, Lcom/android/internal/widget/ScrollingTabContainerView;->mTabSpinner:Landroid/widget/Spinner;

    invoke-virtual {v1}, Landroid/widget/Spinner;->getAdapter()Landroid/widget/SpinnerAdapter;

    move-result-object v1

    check-cast v1, Lcom/android/internal/widget/ScrollingTabContainerView$TabAdapter;

    invoke-virtual {v1}, Lcom/android/internal/widget/ScrollingTabContainerView$TabAdapter;->notifyDataSetChanged()V

    .line 660
    :cond_1
    if-eqz p2, :cond_2

    .line 661
    invoke-virtual {v0, v6}, Lcom/android/internal/widget/ScrollingTabContainerView$TabView;->setSelected(Z)V

    .line 663
    :cond_2
    iget-boolean v1, p0, Lcom/android/internal/widget/ScrollingTabContainerView;->mAllowCollapse:Z

    if-eqz v1, :cond_3

    .line 664
    invoke-virtual {p0}, Lcom/android/internal/widget/ScrollingTabContainerView;->requestLayout()V

    .line 666
    :cond_3
    return-void
.end method

.method public animateToTab(I)V
    .locals 2
    .parameter "position"

    .prologue
    .line 598
    iget-object v1, p0, Lcom/android/internal/widget/ScrollingTabContainerView;->mTabLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v1, p1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 599
    .local v0, tabView:Landroid/view/View;
    iget-object v1, p0, Lcom/android/internal/widget/ScrollingTabContainerView;->mTabSelector:Ljava/lang/Runnable;

    if-eqz v1, :cond_0

    .line 600
    iget-object v1, p0, Lcom/android/internal/widget/ScrollingTabContainerView;->mTabSelector:Ljava/lang/Runnable;

    invoke-virtual {p0, v1}, Lcom/android/internal/widget/ScrollingTabContainerView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 602
    :cond_0
    new-instance v1, Lcom/android/internal/widget/ScrollingTabContainerView$1;

    invoke-direct {v1, p0, v0}, Lcom/android/internal/widget/ScrollingTabContainerView$1;-><init>(Lcom/android/internal/widget/ScrollingTabContainerView;Landroid/view/View;)V

    iput-object v1, p0, Lcom/android/internal/widget/ScrollingTabContainerView;->mTabSelector:Ljava/lang/Runnable;

    .line 609
    iget-object v1, p0, Lcom/android/internal/widget/ScrollingTabContainerView;->mTabSelector:Ljava/lang/Runnable;

    invoke-virtual {p0, v1}, Lcom/android/internal/widget/ScrollingTabContainerView;->post(Ljava/lang/Runnable;)Z

    .line 610
    return-void
.end method

.method public animateToVisibility(I)V
    .locals 7
    .parameter "visibility"

    .prologue
    const-wide/16 v5, 0xc8

    const/4 v2, 0x1

    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 574
    iget-object v1, p0, Lcom/android/internal/widget/ScrollingTabContainerView;->mVisibilityAnim:Landroid/animation/Animator;

    if-eqz v1, :cond_0

    .line 575
    iget-object v1, p0, Lcom/android/internal/widget/ScrollingTabContainerView;->mVisibilityAnim:Landroid/animation/Animator;

    invoke-virtual {v1}, Landroid/animation/Animator;->cancel()V

    .line 577
    :cond_0
    if-nez p1, :cond_2

    .line 578
    invoke-virtual {p0}, Lcom/android/internal/widget/ScrollingTabContainerView;->getVisibility()I

    move-result v1

    if-eqz v1, :cond_1

    .line 579
    invoke-virtual {p0, v3}, Lcom/android/internal/widget/ScrollingTabContainerView;->setAlpha(F)V

    .line 581
    :cond_1
    const-string v1, "alpha"

    new-array v2, v2, [F

    const/high16 v3, 0x3f80

    aput v3, v2, v4

    invoke-static {p0, v1, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 582
    .local v0, anim:Landroid/animation/ObjectAnimator;
    invoke-virtual {v0, v5, v6}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 583
    sget-object v1, Lcom/android/internal/widget/ScrollingTabContainerView;->sAlphaInterpolator:Landroid/animation/TimeInterpolator;

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 585
    iget-object v1, p0, Lcom/android/internal/widget/ScrollingTabContainerView;->mVisAnimListener:Lcom/android/internal/widget/ScrollingTabContainerView$VisibilityAnimListener;

    invoke-virtual {v1, p1}, Lcom/android/internal/widget/ScrollingTabContainerView$VisibilityAnimListener;->withFinalVisibility(I)Lcom/android/internal/widget/ScrollingTabContainerView$VisibilityAnimListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 586
    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    .line 595
    :goto_0
    return-void

    .line 588
    .end local v0           #anim:Landroid/animation/ObjectAnimator;
    :cond_2
    const-string v1, "alpha"

    new-array v2, v2, [F

    aput v3, v2, v4

    invoke-static {p0, v1, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 589
    .restart local v0       #anim:Landroid/animation/ObjectAnimator;
    invoke-virtual {v0, v5, v6}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 590
    sget-object v1, Lcom/android/internal/widget/ScrollingTabContainerView;->sAlphaInterpolator:Landroid/animation/TimeInterpolator;

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 592
    iget-object v1, p0, Lcom/android/internal/widget/ScrollingTabContainerView;->mVisAnimListener:Lcom/android/internal/widget/ScrollingTabContainerView$VisibilityAnimListener;

    invoke-virtual {v1, p1}, Lcom/android/internal/widget/ScrollingTabContainerView$VisibilityAnimListener;->withFinalVisibility(I)Lcom/android/internal/widget/ScrollingTabContainerView$VisibilityAnimListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 593
    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    goto :goto_0
.end method

.method public onAttachedToWindow()V
    .locals 1

    .prologue
    .line 614
    invoke-super {p0}, Landroid/widget/HorizontalScrollView;->onAttachedToWindow()V

    .line 615
    iget-object v0, p0, Lcom/android/internal/widget/ScrollingTabContainerView;->mTabSelector:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    .line 617
    iget-object v0, p0, Lcom/android/internal/widget/ScrollingTabContainerView;->mTabSelector:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/android/internal/widget/ScrollingTabContainerView;->post(Ljava/lang/Runnable;)Z

    .line 619
    :cond_0
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2
    .parameter "newConfig"

    .prologue
    .line 561
    iget-object v1, p0, Lcom/android/internal/widget/ScrollingTabContainerView;->mLastConfiguration:Landroid/content/res/Configuration;

    invoke-virtual {v1, p1}, Landroid/content/res/Configuration;->diff(Landroid/content/res/Configuration;)I

    move-result v1

    if-nez v1, :cond_0

    .line 570
    :goto_0
    return-void

    .line 562
    :cond_0
    iget-object v1, p0, Lcom/android/internal/widget/ScrollingTabContainerView;->mLastConfiguration:Landroid/content/res/Configuration;

    invoke-virtual {v1, p1}, Landroid/content/res/Configuration;->setTo(Landroid/content/res/Configuration;)V

    .line 563
    invoke-super {p0, p1}, Landroid/widget/HorizontalScrollView;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 565
    invoke-virtual {p0}, Lcom/android/internal/widget/ScrollingTabContainerView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/view/ActionBarPolicy;->get(Landroid/content/Context;)Lcom/android/internal/view/ActionBarPolicy;

    move-result-object v0

    .line 568
    .local v0, abp:Lcom/android/internal/view/ActionBarPolicy;
    invoke-virtual {v0}, Lcom/android/internal/view/ActionBarPolicy;->getTabContainerHeight()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/android/internal/widget/ScrollingTabContainerView;->setContentHeight(I)V

    .line 569
    invoke-virtual {v0}, Lcom/android/internal/view/ActionBarPolicy;->getStackedTabMaxWidth()I

    move-result v1

    iput v1, p0, Lcom/android/internal/widget/ScrollingTabContainerView;->mStackedTabMaxWidth:I

    goto :goto_0
.end method

.method public onDetachedFromWindow()V
    .locals 1

    .prologue
    .line 623
    invoke-super {p0}, Landroid/widget/HorizontalScrollView;->onDetachedFromWindow()V

    .line 624
    iget-object v0, p0, Lcom/android/internal/widget/ScrollingTabContainerView;->mTabSelector:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    .line 625
    iget-object v0, p0, Lcom/android/internal/widget/ScrollingTabContainerView;->mTabSelector:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/android/internal/widget/ScrollingTabContainerView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 627
    :cond_0
    return-void
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 2
    .parameter
    .parameter "view"
    .parameter "position"
    .parameter "id"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 722
    .local p1, parent:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    move-object v0, p2

    check-cast v0, Lcom/android/internal/widget/ScrollingTabContainerView$TabView;

    .line 723
    .local v0, tabView:Lcom/android/internal/widget/ScrollingTabContainerView$TabView;
    invoke-virtual {v0}, Lcom/android/internal/widget/ScrollingTabContainerView$TabView;->getTab()Landroid/app/ActionBar$Tab;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/ActionBar$Tab;->select()V

    .line 724
    return-void
.end method

.method public onMeasure(II)V
    .locals 11
    .parameter "widthMeasureSpec"
    .parameter "heightMeasureSpec"

    .prologue
    const/high16 v10, 0x4000

    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 163
    iget-boolean v8, p0, Lcom/android/internal/widget/ScrollingTabContainerView;->mIsHwActionBar:Z

    if-eqz v8, :cond_1

    .line 164
    invoke-direct {p0, p1, p2}, Lcom/android/internal/widget/ScrollingTabContainerView;->onMeasureEmui(II)V

    .line 209
    :cond_0
    :goto_0
    return-void

    .line 168
    :cond_1
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v5

    .line 169
    .local v5, widthMode:I
    if-ne v5, v10, :cond_3

    move v2, v6

    .line 170
    .local v2, lockedExpanded:Z
    :goto_1
    invoke-virtual {p0, v2}, Lcom/android/internal/widget/ScrollingTabContainerView;->setFillViewport(Z)V

    .line 172
    iget-object v8, p0, Lcom/android/internal/widget/ScrollingTabContainerView;->mTabLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v8}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v1

    .line 173
    .local v1, childCount:I
    if-le v1, v6, :cond_5

    if-eq v5, v10, :cond_2

    const/high16 v8, -0x8000

    if-ne v5, v8, :cond_5

    .line 175
    :cond_2
    const/4 v8, 0x2

    if-le v1, v8, :cond_4

    .line 176
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v8

    int-to-float v8, v8

    const v9, 0x3ecccccd

    mul-float/2addr v8, v9

    float-to-int v8, v8

    iput v8, p0, Lcom/android/internal/widget/ScrollingTabContainerView;->mMaxTabWidth:I

    .line 180
    :goto_2
    iget v8, p0, Lcom/android/internal/widget/ScrollingTabContainerView;->mMaxTabWidth:I

    iget v9, p0, Lcom/android/internal/widget/ScrollingTabContainerView;->mStackedTabMaxWidth:I

    invoke-static {v8, v9}, Ljava/lang/Math;->min(II)I

    move-result v8

    iput v8, p0, Lcom/android/internal/widget/ScrollingTabContainerView;->mMaxTabWidth:I

    .line 185
    :goto_3
    iget v8, p0, Lcom/android/internal/widget/ScrollingTabContainerView;->mContentHeight:I

    invoke-static {v8, v10}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    .line 187
    if-nez v2, :cond_6

    iget-boolean v8, p0, Lcom/android/internal/widget/ScrollingTabContainerView;->mAllowCollapse:Z

    if-eqz v8, :cond_6

    move v0, v6

    .line 189
    .local v0, canCollapse:Z
    :goto_4
    if-eqz v0, :cond_8

    .line 191
    iget-object v6, p0, Lcom/android/internal/widget/ScrollingTabContainerView;->mTabLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v6, v7, p2}, Landroid/widget/LinearLayout;->measure(II)V

    .line 192
    iget-object v6, p0, Lcom/android/internal/widget/ScrollingTabContainerView;->mTabLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v6}, Landroid/widget/LinearLayout;->getMeasuredWidth()I

    move-result v6

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v7

    if-le v6, v7, :cond_7

    .line 193
    invoke-direct {p0}, Lcom/android/internal/widget/ScrollingTabContainerView;->performCollapse()V

    .line 201
    :goto_5
    invoke-virtual {p0}, Lcom/android/internal/widget/ScrollingTabContainerView;->getMeasuredWidth()I

    move-result v4

    .line 202
    .local v4, oldWidth:I
    invoke-super {p0, p1, p2}, Landroid/widget/HorizontalScrollView;->onMeasure(II)V

    .line 203
    invoke-virtual {p0}, Lcom/android/internal/widget/ScrollingTabContainerView;->getMeasuredWidth()I

    move-result v3

    .line 205
    .local v3, newWidth:I
    if-eqz v2, :cond_0

    if-eq v4, v3, :cond_0

    .line 207
    iget v6, p0, Lcom/android/internal/widget/ScrollingTabContainerView;->mSelectedTabIndex:I

    invoke-virtual {p0, v6}, Lcom/android/internal/widget/ScrollingTabContainerView;->setTabSelected(I)V

    goto :goto_0

    .end local v0           #canCollapse:Z
    .end local v1           #childCount:I
    .end local v2           #lockedExpanded:Z
    .end local v3           #newWidth:I
    .end local v4           #oldWidth:I
    :cond_3
    move v2, v7

    .line 169
    goto :goto_1

    .line 178
    .restart local v1       #childCount:I
    .restart local v2       #lockedExpanded:Z
    :cond_4
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v8

    div-int/lit8 v8, v8, 0x2

    iput v8, p0, Lcom/android/internal/widget/ScrollingTabContainerView;->mMaxTabWidth:I

    goto :goto_2

    .line 182
    :cond_5
    const/4 v8, -0x1

    iput v8, p0, Lcom/android/internal/widget/ScrollingTabContainerView;->mMaxTabWidth:I

    goto :goto_3

    :cond_6
    move v0, v7

    .line 187
    goto :goto_4

    .line 195
    .restart local v0       #canCollapse:Z
    :cond_7
    invoke-direct {p0}, Lcom/android/internal/widget/ScrollingTabContainerView;->performExpand()Z

    goto :goto_5

    .line 198
    :cond_8
    invoke-direct {p0}, Lcom/android/internal/widget/ScrollingTabContainerView;->performExpand()Z

    goto :goto_5
.end method

.method public removeAllTabs()V
    .locals 1

    .prologue
    .line 711
    iget-object v0, p0, Lcom/android/internal/widget/ScrollingTabContainerView;->mTabLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 712
    iget-object v0, p0, Lcom/android/internal/widget/ScrollingTabContainerView;->mTabSpinner:Landroid/widget/Spinner;

    if-eqz v0, :cond_0

    .line 713
    iget-object v0, p0, Lcom/android/internal/widget/ScrollingTabContainerView;->mTabSpinner:Landroid/widget/Spinner;

    invoke-virtual {v0}, Landroid/widget/Spinner;->getAdapter()Landroid/widget/SpinnerAdapter;

    move-result-object v0

    check-cast v0, Lcom/android/internal/widget/ScrollingTabContainerView$TabAdapter;

    invoke-virtual {v0}, Lcom/android/internal/widget/ScrollingTabContainerView$TabAdapter;->notifyDataSetChanged()V

    .line 715
    :cond_0
    iget-boolean v0, p0, Lcom/android/internal/widget/ScrollingTabContainerView;->mAllowCollapse:Z

    if-eqz v0, :cond_1

    .line 716
    invoke-virtual {p0}, Lcom/android/internal/widget/ScrollingTabContainerView;->requestLayout()V

    .line 718
    :cond_1
    return-void
.end method

.method public removeTabAt(I)V
    .locals 1
    .parameter "position"

    .prologue
    .line 701
    iget-object v0, p0, Lcom/android/internal/widget/ScrollingTabContainerView;->mTabLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->removeViewAt(I)V

    .line 702
    iget-object v0, p0, Lcom/android/internal/widget/ScrollingTabContainerView;->mTabSpinner:Landroid/widget/Spinner;

    if-eqz v0, :cond_0

    .line 703
    iget-object v0, p0, Lcom/android/internal/widget/ScrollingTabContainerView;->mTabSpinner:Landroid/widget/Spinner;

    invoke-virtual {v0}, Landroid/widget/Spinner;->getAdapter()Landroid/widget/SpinnerAdapter;

    move-result-object v0

    check-cast v0, Lcom/android/internal/widget/ScrollingTabContainerView$TabAdapter;

    invoke-virtual {v0}, Lcom/android/internal/widget/ScrollingTabContainerView$TabAdapter;->notifyDataSetChanged()V

    .line 705
    :cond_0
    iget-boolean v0, p0, Lcom/android/internal/widget/ScrollingTabContainerView;->mAllowCollapse:Z

    if-eqz v0, :cond_1

    .line 706
    invoke-virtual {p0}, Lcom/android/internal/widget/ScrollingTabContainerView;->requestLayout()V

    .line 708
    :cond_1
    return-void
.end method

.method public setAllowCollapse(Z)V
    .locals 0
    .parameter "allowCollapse"

    .prologue
    .line 221
    iput-boolean p1, p0, Lcom/android/internal/widget/ScrollingTabContainerView;->mAllowCollapse:Z

    .line 222
    return-void
.end method

.method public setContentHeight(I)V
    .locals 0
    .parameter "contentHeight"

    .prologue
    .line 272
    iput p1, p0, Lcom/android/internal/widget/ScrollingTabContainerView;->mContentHeight:I

    .line 273
    invoke-virtual {p0}, Lcom/android/internal/widget/ScrollingTabContainerView;->requestLayout()V

    .line 274
    return-void
.end method

.method public setTabSelected(I)V
    .locals 5
    .parameter "position"

    .prologue
    .line 254
    iput p1, p0, Lcom/android/internal/widget/ScrollingTabContainerView;->mSelectedTabIndex:I

    .line 255
    iget-object v4, p0, Lcom/android/internal/widget/ScrollingTabContainerView;->mTabLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v4}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v3

    .line 256
    .local v3, tabCount:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v3, :cond_2

    .line 257
    iget-object v4, p0, Lcom/android/internal/widget/ScrollingTabContainerView;->mTabLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v4, v1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 258
    .local v0, child:Landroid/view/View;
    if-ne v1, p1, :cond_1

    const/4 v2, 0x1

    .line 259
    .local v2, isSelected:Z
    :goto_1
    invoke-virtual {v0, v2}, Landroid/view/View;->setSelected(Z)V

    .line 260
    if-eqz v2, :cond_0

    .line 261
    invoke-virtual {p0, p1}, Lcom/android/internal/widget/ScrollingTabContainerView;->animateToTab(I)V

    .line 256
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 258
    .end local v2           #isSelected:Z
    :cond_1
    const/4 v2, 0x0

    goto :goto_1

    .line 265
    .end local v0           #child:Landroid/view/View;
    :cond_2
    iget-boolean v4, p0, Lcom/android/internal/widget/ScrollingTabContainerView;->mIsHwActionBar:Z

    if-eqz v4, :cond_3

    .line 266
    iget-object v4, p0, Lcom/android/internal/widget/ScrollingTabContainerView;->mTabLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v4}, Landroid/widget/LinearLayout;->invalidate()V

    .line 269
    :cond_3
    return-void
.end method

.method public updateTab(I)V
    .locals 1
    .parameter "position"

    .prologue
    .line 691
    iget-object v0, p0, Lcom/android/internal/widget/ScrollingTabContainerView;->mTabLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/internal/widget/ScrollingTabContainerView$TabView;

    invoke-virtual {v0}, Lcom/android/internal/widget/ScrollingTabContainerView$TabView;->update()V

    .line 692
    iget-object v0, p0, Lcom/android/internal/widget/ScrollingTabContainerView;->mTabSpinner:Landroid/widget/Spinner;

    if-eqz v0, :cond_0

    .line 693
    iget-object v0, p0, Lcom/android/internal/widget/ScrollingTabContainerView;->mTabSpinner:Landroid/widget/Spinner;

    invoke-virtual {v0}, Landroid/widget/Spinner;->getAdapter()Landroid/widget/SpinnerAdapter;

    move-result-object v0

    check-cast v0, Lcom/android/internal/widget/ScrollingTabContainerView$TabAdapter;

    invoke-virtual {v0}, Lcom/android/internal/widget/ScrollingTabContainerView$TabAdapter;->notifyDataSetChanged()V

    .line 695
    :cond_0
    iget-boolean v0, p0, Lcom/android/internal/widget/ScrollingTabContainerView;->mAllowCollapse:Z

    if-eqz v0, :cond_1

    .line 696
    invoke-virtual {p0}, Lcom/android/internal/widget/ScrollingTabContainerView;->requestLayout()V

    .line 698
    :cond_1
    return-void
.end method
