.class public abstract Lcom/android/hwcamera/settings/dynaui/layout/AbstractSettingsListStyleLayout;
.super Ljava/lang/Object;
.source "AbstractSettingsListStyleLayout.java"

# interfaces
.implements Lcom/android/hwcamera/settings/dynaui/layout/DynamicLayout;


# instance fields
.field private mScrollView:Landroid/widget/ScrollView;

.field private mView:Landroid/view/View;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 31
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 32
    return-void
.end method

.method private inflateChild(Landroid/content/Context;Ljava/util/List;Landroid/view/ViewGroup;)V
    .locals 5
    .parameter "context"
    .parameter
    .parameter "viewGroup"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Lcom/android/hwcamera/settings/MenuItem;",
            ">;",
            "Landroid/view/ViewGroup;",
            ")V"
        }
    .end annotation

    .prologue
    .line 77
    .local p2, items:Ljava/util/List;,"Ljava/util/List<Lcom/android/hwcamera/settings/MenuItem;>;"
    invoke-static {p2}, Lcom/android/hwcamera/Util;->isEmptyCollection(Ljava/util/Collection;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 88
    :cond_0
    return-void

    .line 78
    :cond_1
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v3

    .line 79
    .local v3, size:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v3, :cond_0

    .line 80
    invoke-interface {p2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/hwcamera/settings/MenuItem;

    .line 81
    .local v2, item:Lcom/android/hwcamera/settings/MenuItem;
    invoke-static {v2, p1}, Lcom/android/hwcamera/settings/dynaui/MenuItemFactory;->inflateDynamicUI(Lcom/android/hwcamera/settings/MenuItem;Landroid/content/Context;)Lcom/android/hwcamera/settings/dynaui/DynamicUI;

    move-result-object v0

    .line 82
    .local v0, dynamicUI:Lcom/android/hwcamera/settings/dynaui/DynamicUI;
    if-eqz v0, :cond_2

    invoke-interface {v0}, Lcom/android/hwcamera/settings/dynaui/DynamicUI;->getView()Landroid/view/View;

    move-result-object v4

    if-eqz v4, :cond_2

    .line 83
    invoke-interface {v0}, Lcom/android/hwcamera/settings/dynaui/DynamicUI;->getView()Landroid/view/View;

    move-result-object v4

    invoke-virtual {p3, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 84
    add-int/lit8 v4, v3, -0x1

    if-ne v1, v4, :cond_3

    .line 79
    :cond_2
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 85
    :cond_3
    invoke-interface {v0, p3}, Lcom/android/hwcamera/settings/dynaui/DynamicUI;->addImageLine(Landroid/view/ViewGroup;)V

    goto :goto_1
.end method


# virtual methods
.method public abstract getInflateLayout()I
.end method

.method public getView()Landroid/view/View;
    .locals 1

    .prologue
    .line 92
    iget-object v0, p0, Lcom/android/hwcamera/settings/dynaui/layout/AbstractSettingsListStyleLayout;->mView:Landroid/view/View;

    return-object v0
.end method

.method public inflate(Landroid/content/Context;Lcom/android/hwcamera/settings/MenuItem;Landroid/view/ViewGroup;Z)V
    .locals 10
    .parameter "context"
    .parameter "item"
    .parameter "viewGroup"
    .parameter "isWithBackIcon"

    .prologue
    const/4 v9, 0x0

    .line 37
    move-object v6, p1

    check-cast v6, Landroid/app/Activity;

    invoke-virtual {v6}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    .line 38
    .local v0, inflater:Landroid/view/LayoutInflater;
    invoke-virtual {p0}, Lcom/android/hwcamera/settings/dynaui/layout/AbstractSettingsListStyleLayout;->getInflateLayout()I

    move-result v6

    invoke-virtual {v0, v6, p3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v5

    .line 39
    .local v5, view:Landroid/view/View;
    if-eqz p3, :cond_0

    invoke-virtual {p3}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    invoke-virtual {p3, v6}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    .end local v5           #view:Landroid/view/View;
    :cond_0
    iput-object v5, p0, Lcom/android/hwcamera/settings/dynaui/layout/AbstractSettingsListStyleLayout;->mView:Landroid/view/View;

    .line 40
    if-eqz p4, :cond_2

    .line 41
    iget-object v6, p0, Lcom/android/hwcamera/settings/dynaui/layout/AbstractSettingsListStyleLayout;->mView:Landroid/view/View;

    const v7, 0x7f10010e

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    invoke-virtual {v6, v9}, Landroid/view/View;->setVisibility(I)V

    .line 42
    iget-object v6, p0, Lcom/android/hwcamera/settings/dynaui/layout/AbstractSettingsListStyleLayout;->mView:Landroid/view/View;

    const v7, 0x7f10010f

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 43
    .local v1, mBackIcon:Landroid/widget/ImageView;
    iget-object v6, p0, Lcom/android/hwcamera/settings/dynaui/layout/AbstractSettingsListStyleLayout;->mView:Landroid/view/View;

    const v7, 0x7f100111

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 44
    .local v3, mTitleView:Landroid/widget/TextView;
    const/4 v4, 0x0

    .line 45
    .local v4, onClickListener:Landroid/view/View$OnClickListener;
    invoke-virtual {p2}, Lcom/android/hwcamera/settings/MenuItem;->getParentItem()Lcom/android/hwcamera/settings/MenuItem;

    move-result-object v6

    if-eqz v6, :cond_1

    .line 46
    new-instance v4, Lcom/android/hwcamera/settings/dynaui/layout/AbstractSettingsListStyleLayout$1;

    .end local v4           #onClickListener:Landroid/view/View$OnClickListener;
    invoke-direct {v4, p0, p2}, Lcom/android/hwcamera/settings/dynaui/layout/AbstractSettingsListStyleLayout$1;-><init>(Lcom/android/hwcamera/settings/dynaui/layout/AbstractSettingsListStyleLayout;Lcom/android/hwcamera/settings/MenuItem;)V

    .line 54
    .restart local v4       #onClickListener:Landroid/view/View$OnClickListener;
    :cond_1
    if-eqz v4, :cond_3

    .line 55
    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 56
    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 66
    :goto_0
    invoke-virtual {p2}, Lcom/android/hwcamera/settings/MenuItem;->getTitle()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 68
    .end local v1           #mBackIcon:Landroid/widget/ImageView;
    .end local v3           #mTitleView:Landroid/widget/TextView;
    .end local v4           #onClickListener:Landroid/view/View$OnClickListener;
    :cond_2
    iget-object v6, p0, Lcom/android/hwcamera/settings/dynaui/layout/AbstractSettingsListStyleLayout;->mView:Landroid/view/View;

    const v7, 0x7f100113

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    .line 69
    .local v2, mScrollViewContent:Landroid/widget/LinearLayout;
    iget-object v6, p0, Lcom/android/hwcamera/settings/dynaui/layout/AbstractSettingsListStyleLayout;->mView:Landroid/view/View;

    const v7, 0x7f100112

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/ScrollView;

    iput-object v6, p0, Lcom/android/hwcamera/settings/dynaui/layout/AbstractSettingsListStyleLayout;->mScrollView:Landroid/widget/ScrollView;

    .line 70
    iget-object v6, p0, Lcom/android/hwcamera/settings/dynaui/layout/AbstractSettingsListStyleLayout;->mScrollView:Landroid/widget/ScrollView;

    const/16 v7, 0x1e

    invoke-virtual {v6, v7}, Landroid/widget/ScrollView;->setFadingEdgeLength(I)V

    .line 71
    iget-object v6, p0, Lcom/android/hwcamera/settings/dynaui/layout/AbstractSettingsListStyleLayout;->mScrollView:Landroid/widget/ScrollView;

    const/4 v7, 0x1

    invoke-virtual {v6, v7}, Landroid/widget/ScrollView;->setVerticalFadingEdgeEnabled(Z)V

    .line 72
    invoke-virtual {p2}, Lcom/android/hwcamera/settings/MenuItem;->getItems()Ljava/util/List;

    move-result-object v6

    invoke-direct {p0, p1, v6, v2}, Lcom/android/hwcamera/settings/dynaui/layout/AbstractSettingsListStyleLayout;->inflateChild(Landroid/content/Context;Ljava/util/List;Landroid/view/ViewGroup;)V

    .line 73
    invoke-virtual {p2, p0}, Lcom/android/hwcamera/settings/MenuItem;->setChildsLayout(Lcom/android/hwcamera/settings/dynaui/layout/DynamicLayout;)V

    .line 74
    return-void

    .line 59
    .end local v2           #mScrollViewContent:Landroid/widget/LinearLayout;
    .restart local v1       #mBackIcon:Landroid/widget/ImageView;
    .restart local v3       #mTitleView:Landroid/widget/TextView;
    .restart local v4       #onClickListener:Landroid/view/View$OnClickListener;
    :cond_3
    iget-object v6, p0, Lcom/android/hwcamera/settings/dynaui/layout/AbstractSettingsListStyleLayout;->mView:Landroid/view/View;

    invoke-virtual {p2}, Lcom/android/hwcamera/settings/MenuItem;->getTitle()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 61
    const v6, 0x7f02015d

    invoke-virtual {v1, v6}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 62
    const v6, 0x106000d

    invoke-virtual {v1, v6}, Landroid/widget/ImageView;->setBackgroundColor(I)V

    .line 63
    iget-object v6, p0, Lcom/android/hwcamera/settings/dynaui/layout/AbstractSettingsListStyleLayout;->mView:Landroid/view/View;

    const v7, 0x7f100110

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    const/16 v7, 0x8

    invoke-virtual {v6, v7}, Landroid/view/View;->setVisibility(I)V

    .line 64
    invoke-virtual {v3}, Landroid/widget/TextView;->getPaddingTop()I

    move-result v6

    invoke-virtual {v3}, Landroid/widget/TextView;->getPaddingRight()I

    move-result v7

    invoke-virtual {v3}, Landroid/widget/TextView;->getPaddingBottom()I

    move-result v8

    invoke-virtual {v3, v9, v6, v7, v8}, Landroid/widget/TextView;->setPadding(IIII)V

    goto :goto_0
.end method

.method public reset()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 97
    iget-object v0, p0, Lcom/android/hwcamera/settings/dynaui/layout/AbstractSettingsListStyleLayout;->mScrollView:Landroid/widget/ScrollView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/hwcamera/settings/dynaui/layout/AbstractSettingsListStyleLayout;->mScrollView:Landroid/widget/ScrollView;

    invoke-virtual {v0, v1, v1}, Landroid/widget/ScrollView;->scrollTo(II)V

    .line 98
    :cond_0
    return-void
.end method
