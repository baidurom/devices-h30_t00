.class public Lcom/android/gallery3d/ui/SimpleTabWidget;
.super Landroid/widget/LinearLayout;
.source "SimpleTabWidget.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/gallery3d/ui/SimpleTabWidget$1;,
        Lcom/android/gallery3d/ui/SimpleTabWidget$TabView;,
        Lcom/android/gallery3d/ui/SimpleTabWidget$TabListener;,
        Lcom/android/gallery3d/ui/SimpleTabWidget$TabClickListener;,
        Lcom/android/gallery3d/ui/SimpleTabWidget$Tab;
    }
.end annotation


# static fields
.field public static final STYLE_TABSBAR:I = 0x1


# instance fields
.field private mClickable:Z

.field private mSelectedTab:Lcom/android/gallery3d/ui/SimpleTabWidget$Tab;

.field private mTabClickListener:Lcom/android/gallery3d/ui/SimpleTabWidget$TabClickListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 21
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/gallery3d/ui/SimpleTabWidget;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 22
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 25
    const v0, 0x7f010017

    invoke-direct {p0, p1, p2, v0}, Lcom/android/gallery3d/ui/SimpleTabWidget;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 26
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 3
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 29
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 30
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/gallery3d/ui/SimpleTabWidget;->setMeasureWithLargestChildEnabled(Z)V

    .line 31
    const/16 v0, 0x11

    invoke-virtual {p0, v0}, Lcom/android/gallery3d/ui/SimpleTabWidget;->setGravity(I)V

    .line 32
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v1, -0x2

    const/4 v2, -0x1

    invoke-direct {v0, v1, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v0}, Lcom/android/gallery3d/ui/SimpleTabWidget;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 34
    return-void
.end method

.method static synthetic access$100(Lcom/android/gallery3d/ui/SimpleTabWidget;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 14
    iget-boolean v0, p0, Lcom/android/gallery3d/ui/SimpleTabWidget;->mClickable:Z

    return v0
.end method

.method private createTabView(Lcom/android/gallery3d/ui/SimpleTabWidget$Tab;)Lcom/android/gallery3d/ui/SimpleTabWidget$TabView;
    .locals 3
    .parameter "tab"

    .prologue
    .line 37
    new-instance v0, Lcom/android/gallery3d/ui/SimpleTabWidget$TabView;

    invoke-virtual {p0}, Lcom/android/gallery3d/ui/SimpleTabWidget;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lcom/android/gallery3d/ui/SimpleTabWidget$TabView;-><init>(Landroid/content/Context;Lcom/android/gallery3d/ui/SimpleTabWidget$Tab;)V

    .line 38
    .local v0, tabView:Lcom/android/gallery3d/ui/SimpleTabWidget$TabView;
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/ui/SimpleTabWidget$TabView;->setFocusable(Z)V

    .line 39
    iget-object v1, p0, Lcom/android/gallery3d/ui/SimpleTabWidget;->mTabClickListener:Lcom/android/gallery3d/ui/SimpleTabWidget$TabClickListener;

    if-nez v1, :cond_0

    .line 40
    new-instance v1, Lcom/android/gallery3d/ui/SimpleTabWidget$TabClickListener;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/android/gallery3d/ui/SimpleTabWidget$TabClickListener;-><init>(Lcom/android/gallery3d/ui/SimpleTabWidget;Lcom/android/gallery3d/ui/SimpleTabWidget$1;)V

    iput-object v1, p0, Lcom/android/gallery3d/ui/SimpleTabWidget;->mTabClickListener:Lcom/android/gallery3d/ui/SimpleTabWidget$TabClickListener;

    .line 42
    :cond_0
    iget-object v1, p0, Lcom/android/gallery3d/ui/SimpleTabWidget;->mTabClickListener:Lcom/android/gallery3d/ui/SimpleTabWidget$TabClickListener;

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/ui/SimpleTabWidget$TabView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 43
    return-object v0
.end method


# virtual methods
.method public addTab(Lcom/android/gallery3d/ui/SimpleTabWidget$Tab;IZ)V
    .locals 5
    .parameter "tab"
    .parameter "position"
    .parameter "setSelected"

    .prologue
    .line 47
    invoke-direct {p0, p1}, Lcom/android/gallery3d/ui/SimpleTabWidget;->createTabView(Lcom/android/gallery3d/ui/SimpleTabWidget$Tab;)Lcom/android/gallery3d/ui/SimpleTabWidget$TabView;

    move-result-object v0

    .line 48
    .local v0, tabView:Lcom/android/gallery3d/ui/SimpleTabWidget$TabView;
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v2, 0x0

    const/4 v3, -0x1

    const/high16 v4, 0x3f80

    invoke-direct {v1, v2, v3, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {p0, v0, p2, v1}, Lcom/android/gallery3d/ui/SimpleTabWidget;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 49
    invoke-virtual {p1, p2}, Lcom/android/gallery3d/ui/SimpleTabWidget$Tab;->setPosition(I)V

    .line 50
    if-eqz p3, :cond_0

    .line 51
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/ui/SimpleTabWidget$TabView;->setSelected(Z)V

    .line 53
    :cond_0
    return-void
.end method

.method public addTab(Lcom/android/gallery3d/ui/SimpleTabWidget$Tab;Z)V
    .locals 5
    .parameter "tab"
    .parameter "setSelected"

    .prologue
    .line 56
    invoke-direct {p0, p1}, Lcom/android/gallery3d/ui/SimpleTabWidget;->createTabView(Lcom/android/gallery3d/ui/SimpleTabWidget$Tab;)Lcom/android/gallery3d/ui/SimpleTabWidget$TabView;

    move-result-object v0

    .line 57
    .local v0, tabView:Lcom/android/gallery3d/ui/SimpleTabWidget$TabView;
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v2, 0x0

    const/4 v3, -0x1

    const/high16 v4, 0x3f80

    invoke-direct {v1, v2, v3, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {p0, v0, v1}, Lcom/android/gallery3d/ui/SimpleTabWidget;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 58
    invoke-virtual {p0}, Lcom/android/gallery3d/ui/SimpleTabWidget;->getTabCount()I

    move-result v1

    invoke-virtual {p1, v1}, Lcom/android/gallery3d/ui/SimpleTabWidget$Tab;->setPosition(I)V

    .line 59
    if-eqz p2, :cond_0

    .line 60
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/ui/SimpleTabWidget$TabView;->setSelected(Z)V

    .line 62
    :cond_0
    return-void
.end method

.method public getSelectedTab()Lcom/android/gallery3d/ui/SimpleTabWidget$Tab;
    .locals 1

    .prologue
    .line 90
    iget-object v0, p0, Lcom/android/gallery3d/ui/SimpleTabWidget;->mSelectedTab:Lcom/android/gallery3d/ui/SimpleTabWidget$Tab;

    return-object v0
.end method

.method public getTabAt(I)Lcom/android/gallery3d/ui/SimpleTabWidget$Tab;
    .locals 2
    .parameter "position"

    .prologue
    .line 94
    invoke-virtual {p0, p1}, Lcom/android/gallery3d/ui/SimpleTabWidget;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 95
    .local v0, view:Landroid/view/View;
    if-eqz v0, :cond_0

    check-cast v0, Lcom/android/gallery3d/ui/SimpleTabWidget$TabView;

    .end local v0           #view:Landroid/view/View;
    invoke-virtual {v0}, Lcom/android/gallery3d/ui/SimpleTabWidget$TabView;->getTab()Lcom/android/gallery3d/ui/SimpleTabWidget$Tab;

    move-result-object v1

    :goto_0
    return-object v1

    .restart local v0       #view:Landroid/view/View;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getTabCount()I
    .locals 1

    .prologue
    .line 99
    invoke-virtual {p0}, Lcom/android/gallery3d/ui/SimpleTabWidget;->getChildCount()I

    move-result v0

    return v0
.end method

.method public newTab()Lcom/android/gallery3d/ui/SimpleTabWidget$Tab;
    .locals 1

    .prologue
    .line 103
    new-instance v0, Lcom/android/gallery3d/ui/SimpleTabWidget$Tab;

    invoke-direct {v0, p0}, Lcom/android/gallery3d/ui/SimpleTabWidget$Tab;-><init>(Lcom/android/gallery3d/ui/SimpleTabWidget;)V

    return-object v0
.end method

.method public newTab(Ljava/lang/CharSequence;Lcom/android/gallery3d/ui/SimpleTabWidget$TabListener;I)Lcom/android/gallery3d/ui/SimpleTabWidget$Tab;
    .locals 2
    .parameter "text"
    .parameter "callback"
    .parameter "tag"

    .prologue
    .line 107
    new-instance v0, Lcom/android/gallery3d/ui/SimpleTabWidget$Tab;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-direct {v0, p0, p1, p2, v1}, Lcom/android/gallery3d/ui/SimpleTabWidget$Tab;-><init>(Lcom/android/gallery3d/ui/SimpleTabWidget;Ljava/lang/CharSequence;Lcom/android/gallery3d/ui/SimpleTabWidget$TabListener;Ljava/lang/Object;)V

    return-object v0
.end method

.method public removeAllTabs()V
    .locals 0

    .prologue
    .line 111
    invoke-virtual {p0}, Lcom/android/gallery3d/ui/SimpleTabWidget;->removeAllViews()V

    .line 112
    return-void
.end method

.method public removeTab(Lcom/android/gallery3d/ui/SimpleTabWidget$Tab;)V
    .locals 1
    .parameter "tab"

    .prologue
    .line 115
    invoke-virtual {p1}, Lcom/android/gallery3d/ui/SimpleTabWidget$Tab;->getPosition()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/gallery3d/ui/SimpleTabWidget;->removeTabAt(I)V

    .line 116
    return-void
.end method

.method public removeTabAt(I)V
    .locals 3
    .parameter "position"

    .prologue
    .line 119
    invoke-virtual {p0, p1}, Lcom/android/gallery3d/ui/SimpleTabWidget;->getTabAt(I)Lcom/android/gallery3d/ui/SimpleTabWidget$Tab;

    move-result-object v0

    .line 120
    .local v0, tab:Lcom/android/gallery3d/ui/SimpleTabWidget$Tab;
    invoke-virtual {p0, p1}, Lcom/android/gallery3d/ui/SimpleTabWidget;->removeViewAt(I)V

    .line 121
    if-eqz v0, :cond_0

    .line 122
    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/ui/SimpleTabWidget$Tab;->setPosition(I)V

    .line 124
    :cond_0
    iget-object v1, p0, Lcom/android/gallery3d/ui/SimpleTabWidget;->mSelectedTab:Lcom/android/gallery3d/ui/SimpleTabWidget$Tab;

    if-ne v0, v1, :cond_1

    .line 125
    const/4 v1, 0x0

    add-int/lit8 v2, p1, -0x1

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/android/gallery3d/ui/SimpleTabWidget;->getTabAt(I)Lcom/android/gallery3d/ui/SimpleTabWidget$Tab;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/gallery3d/ui/SimpleTabWidget;->selectTab(Lcom/android/gallery3d/ui/SimpleTabWidget$Tab;)V

    .line 127
    :cond_1
    return-void
.end method

.method public selectTab(Lcom/android/gallery3d/ui/SimpleTabWidget$Tab;)V
    .locals 2
    .parameter "tab"

    .prologue
    .line 130
    iget-object v0, p0, Lcom/android/gallery3d/ui/SimpleTabWidget;->mSelectedTab:Lcom/android/gallery3d/ui/SimpleTabWidget$Tab;

    if-ne v0, p1, :cond_1

    .line 131
    iget-object v0, p0, Lcom/android/gallery3d/ui/SimpleTabWidget;->mSelectedTab:Lcom/android/gallery3d/ui/SimpleTabWidget$Tab;

    if-eqz v0, :cond_0

    .line 132
    iget-object v0, p0, Lcom/android/gallery3d/ui/SimpleTabWidget;->mSelectedTab:Lcom/android/gallery3d/ui/SimpleTabWidget$Tab;

    invoke-virtual {v0}, Lcom/android/gallery3d/ui/SimpleTabWidget$Tab;->getCallback()Lcom/android/gallery3d/ui/SimpleTabWidget$TabListener;

    move-result-object v0

    iget-object v1, p0, Lcom/android/gallery3d/ui/SimpleTabWidget;->mSelectedTab:Lcom/android/gallery3d/ui/SimpleTabWidget$Tab;

    invoke-interface {v0, v1}, Lcom/android/gallery3d/ui/SimpleTabWidget$TabListener;->onTabReselected(Lcom/android/gallery3d/ui/SimpleTabWidget$Tab;)V

    .line 144
    :cond_0
    :goto_0
    return-void

    .line 135
    :cond_1
    if-eqz p1, :cond_3

    invoke-virtual {p1}, Lcom/android/gallery3d/ui/SimpleTabWidget$Tab;->getPosition()I

    move-result v0

    :goto_1
    invoke-virtual {p0, v0}, Lcom/android/gallery3d/ui/SimpleTabWidget;->setTabSelected(I)V

    .line 136
    iget-object v0, p0, Lcom/android/gallery3d/ui/SimpleTabWidget;->mSelectedTab:Lcom/android/gallery3d/ui/SimpleTabWidget$Tab;

    if-eqz v0, :cond_2

    .line 137
    iget-object v0, p0, Lcom/android/gallery3d/ui/SimpleTabWidget;->mSelectedTab:Lcom/android/gallery3d/ui/SimpleTabWidget$Tab;

    invoke-virtual {v0}, Lcom/android/gallery3d/ui/SimpleTabWidget$Tab;->getCallback()Lcom/android/gallery3d/ui/SimpleTabWidget$TabListener;

    move-result-object v0

    iget-object v1, p0, Lcom/android/gallery3d/ui/SimpleTabWidget;->mSelectedTab:Lcom/android/gallery3d/ui/SimpleTabWidget$Tab;

    invoke-interface {v0, v1}, Lcom/android/gallery3d/ui/SimpleTabWidget$TabListener;->onTabUnselected(Lcom/android/gallery3d/ui/SimpleTabWidget$Tab;)V

    .line 139
    :cond_2
    iput-object p1, p0, Lcom/android/gallery3d/ui/SimpleTabWidget;->mSelectedTab:Lcom/android/gallery3d/ui/SimpleTabWidget$Tab;

    .line 140
    iget-object v0, p0, Lcom/android/gallery3d/ui/SimpleTabWidget;->mSelectedTab:Lcom/android/gallery3d/ui/SimpleTabWidget$Tab;

    if-eqz v0, :cond_0

    .line 141
    iget-object v0, p0, Lcom/android/gallery3d/ui/SimpleTabWidget;->mSelectedTab:Lcom/android/gallery3d/ui/SimpleTabWidget$Tab;

    invoke-virtual {v0}, Lcom/android/gallery3d/ui/SimpleTabWidget$Tab;->getCallback()Lcom/android/gallery3d/ui/SimpleTabWidget$TabListener;

    move-result-object v0

    iget-object v1, p0, Lcom/android/gallery3d/ui/SimpleTabWidget;->mSelectedTab:Lcom/android/gallery3d/ui/SimpleTabWidget$Tab;

    invoke-interface {v0, v1}, Lcom/android/gallery3d/ui/SimpleTabWidget$TabListener;->onTabSelected(Lcom/android/gallery3d/ui/SimpleTabWidget$Tab;)V

    goto :goto_0

    .line 135
    :cond_3
    const/4 v0, -0x1

    goto :goto_1
.end method

.method public setClickable(Z)V
    .locals 0
    .parameter "clickable"

    .prologue
    .line 86
    iput-boolean p1, p0, Lcom/android/gallery3d/ui/SimpleTabWidget;->mClickable:Z

    .line 87
    return-void
.end method

.method public setTabSelected(I)V
    .locals 4
    .parameter "position"

    .prologue
    .line 147
    invoke-virtual {p0}, Lcom/android/gallery3d/ui/SimpleTabWidget;->getChildCount()I

    move-result v3

    .line 148
    .local v3, tabCount:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v3, :cond_1

    .line 149
    invoke-virtual {p0, v1}, Lcom/android/gallery3d/ui/SimpleTabWidget;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 150
    .local v0, child:Landroid/view/View;
    if-ne v1, p1, :cond_0

    const/4 v2, 0x1

    .line 151
    .local v2, isSelected:Z
    :goto_1
    invoke-virtual {v0, v2}, Landroid/view/View;->setSelected(Z)V

    .line 148
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 150
    .end local v2           #isSelected:Z
    :cond_0
    const/4 v2, 0x0

    goto :goto_1

    .line 153
    .end local v0           #child:Landroid/view/View;
    :cond_1
    return-void
.end method

.method public updateTab(I)V
    .locals 1
    .parameter "position"

    .prologue
    .line 156
    invoke-virtual {p0, p1}, Lcom/android/gallery3d/ui/SimpleTabWidget;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/gallery3d/ui/SimpleTabWidget$TabView;

    invoke-virtual {v0}, Lcom/android/gallery3d/ui/SimpleTabWidget$TabView;->update()V

    .line 157
    return-void
.end method

.method public updateWidgetStyle(I)V
    .locals 4
    .parameter "type"

    .prologue
    .line 65
    packed-switch p1, :pswitch_data_0

    .line 83
    :cond_0
    return-void

    .line 67
    :pswitch_0
    invoke-virtual {p0}, Lcom/android/gallery3d/ui/SimpleTabWidget;->getChildCount()I

    move-result v1

    .line 68
    .local v1, childCount:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v1, :cond_0

    .line 69
    invoke-virtual {p0, v2}, Lcom/android/gallery3d/ui/SimpleTabWidget;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 70
    .local v0, child:Landroid/view/View;
    if-nez v2, :cond_1

    .line 71
    const v3, 0x7f020303

    invoke-virtual {v0, v3}, Landroid/view/View;->setBackgroundResource(I)V

    .line 68
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 72
    :cond_1
    add-int/lit8 v3, v1, -0x1

    if-ne v2, v3, :cond_2

    .line 73
    const v3, 0x7f020304

    invoke-virtual {v0, v3}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_1

    .line 75
    :cond_2
    const v3, 0x7f020302

    invoke-virtual {v0, v3}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_1

    .line 65
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
