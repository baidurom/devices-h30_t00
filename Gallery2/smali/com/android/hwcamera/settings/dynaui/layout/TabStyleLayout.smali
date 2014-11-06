.class public Lcom/android/hwcamera/settings/dynaui/layout/TabStyleLayout;
.super Ljava/lang/Object;
.source "TabStyleLayout.java"

# interfaces
.implements Lcom/android/hwcamera/settings/dynaui/layout/DynamicLayout;


# instance fields
.field private mFrameLayout:Landroid/widget/FrameLayout;

.field private mView:Landroid/view/View;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 26
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 27
    return-void
.end method

.method private createTabView(Ljava/lang/String;Landroid/content/Context;)Landroid/view/View;
    .locals 5
    .parameter "text"
    .parameter "context"

    .prologue
    .line 92
    check-cast p2, Landroid/app/Activity;

    .end local p2
    invoke-virtual {p2}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    .line 93
    .local v0, inflater:Landroid/view/LayoutInflater;
    const v3, 0x7f040038

    const/4 v4, 0x0

    invoke-virtual {v0, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 94
    .local v2, view:Landroid/view/View;
    const v3, 0x7f10011e

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 95
    .local v1, tv:Landroid/widget/TextView;
    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 96
    return-object v2
.end method

.method private disableItems(Ljava/util/List;)V
    .locals 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/hwcamera/settings/MenuItem;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 85
    .local p1, items:Ljava/util/List;,"Ljava/util/List<Lcom/android/hwcamera/settings/MenuItem;>;"
    invoke-static {p1}, Lcom/android/hwcamera/Util;->isEmptyCollection(Ljava/util/Collection;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 89
    :cond_0
    return-void

    .line 86
    :cond_1
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/hwcamera/settings/MenuItem;

    .line 87
    .local v1, item:Lcom/android/hwcamera/settings/MenuItem;
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/hwcamera/settings/MenuItem;->enableItem(Z)V

    goto :goto_0
.end method

.method private initData(Landroid/content/Context;Landroid/widget/TabHost;Landroid/widget/FrameLayout;Lcom/android/hwcamera/settings/MenuItem;)V
    .locals 8
    .parameter "context"
    .parameter "tabHost"
    .parameter "frameLayout"
    .parameter "parentItem"

    .prologue
    .line 48
    invoke-virtual {p4}, Lcom/android/hwcamera/settings/MenuItem;->getItems()Ljava/util/List;

    move-result-object v3

    .line 49
    .local v3, items:Ljava/util/List;,"Ljava/util/List<Lcom/android/hwcamera/settings/MenuItem;>;"
    invoke-static {v3}, Lcom/android/hwcamera/Util;->isEmptyCollection(Ljava/util/Collection;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 82
    :cond_0
    return-void

    .line 53
    :cond_1
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v6

    if-ge v1, v6, :cond_0

    .line 54
    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/hwcamera/settings/MenuItem;

    .line 55
    .local v2, item:Lcom/android/hwcamera/settings/MenuItem;
    invoke-virtual {v2}, Lcom/android/hwcamera/settings/MenuItem;->getItems()Ljava/util/List;

    move-result-object v6

    invoke-static {v6}, Lcom/android/hwcamera/Util;->isEmptyCollection(Ljava/util/Collection;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 53
    :cond_2
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 56
    :cond_3
    invoke-virtual {v2}, Lcom/android/hwcamera/settings/MenuItem;->getPrefKey()Ljava/lang/String;

    move-result-object v6

    const-string v7, "pref_camera_settings_key"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    move-object v6, p1

    check-cast v6, Landroid/app/Activity;

    invoke-static {v6}, Lcom/android/hwcamera/Util;->isVideoCaptureIntent(Landroid/app/Activity;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 57
    invoke-virtual {v2}, Lcom/android/hwcamera/settings/MenuItem;->getItems()Ljava/util/List;

    move-result-object v6

    invoke-direct {p0, v6}, Lcom/android/hwcamera/settings/dynaui/layout/TabStyleLayout;->disableItems(Ljava/util/List;)V

    .line 59
    :cond_4
    invoke-virtual {v2}, Lcom/android/hwcamera/settings/MenuItem;->getPrefKey()Ljava/lang/String;

    move-result-object v6

    const-string v7, "pref_video_settings_key"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    move-object v6, p1

    check-cast v6, Landroid/app/Activity;

    invoke-static {v6}, Lcom/android/hwcamera/Util;->isImageCaptureIntent(Landroid/app/Activity;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 60
    invoke-virtual {v2}, Lcom/android/hwcamera/settings/MenuItem;->getItems()Ljava/util/List;

    move-result-object v6

    invoke-direct {p0, v6}, Lcom/android/hwcamera/settings/dynaui/layout/TabStyleLayout;->disableItems(Ljava/util/List;)V

    .line 62
    :cond_5
    const/4 v6, 0x0

    invoke-static {v6, v2, p1}, Lcom/android/hwcamera/settings/dynaui/layout/MenuInflateUtil;->inflateDynamicLayout(Landroid/view/ViewGroup;Lcom/android/hwcamera/settings/MenuItem;Landroid/content/Context;)V

    .line 63
    invoke-virtual {v2}, Lcom/android/hwcamera/settings/MenuItem;->getChildsLayout()Lcom/android/hwcamera/settings/dynaui/layout/DynamicLayout;

    move-result-object v0

    .line 64
    .local v0, dynamicLayout:Lcom/android/hwcamera/settings/dynaui/layout/DynamicLayout;
    if-eqz v0, :cond_2

    .line 65
    invoke-interface {v0}, Lcom/android/hwcamera/settings/dynaui/layout/DynamicLayout;->getView()Landroid/view/View;

    move-result-object v5

    .line 66
    .local v5, view:Landroid/view/View;
    invoke-virtual {v2, p0}, Lcom/android/hwcamera/settings/MenuItem;->setChildsLayout(Lcom/android/hwcamera/settings/dynaui/layout/DynamicLayout;)V

    .line 67
    invoke-virtual {v5, v1}, Landroid/view/View;->setId(I)V

    .line 68
    invoke-virtual {p3, v5}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 69
    invoke-virtual {v2}, Lcom/android/hwcamera/settings/MenuItem;->getTitle()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v6, p1}, Lcom/android/hwcamera/settings/dynaui/layout/TabStyleLayout;->createTabView(Ljava/lang/String;Landroid/content/Context;)Landroid/view/View;

    move-result-object v4

    .line 70
    .local v4, tabIndicator:Landroid/view/View;
    if-nez v1, :cond_6

    .line 71
    const v6, 0x7f02026b

    invoke-virtual {v4, v6}, Landroid/view/View;->setBackgroundResource(I)V

    .line 77
    :goto_2
    invoke-virtual {v2}, Lcom/android/hwcamera/settings/MenuItem;->getTitle()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p2, v6}, Landroid/widget/TabHost;->newTabSpec(Ljava/lang/String;)Landroid/widget/TabHost$TabSpec;

    move-result-object v6

    invoke-virtual {v6, v4}, Landroid/widget/TabHost$TabSpec;->setIndicator(Landroid/view/View;)Landroid/widget/TabHost$TabSpec;

    move-result-object v6

    invoke-virtual {v5}, Landroid/view/View;->getId()I

    move-result v7

    invoke-virtual {v6, v7}, Landroid/widget/TabHost$TabSpec;->setContent(I)Landroid/widget/TabHost$TabSpec;

    move-result-object v6

    invoke-virtual {p2, v6}, Landroid/widget/TabHost;->addTab(Landroid/widget/TabHost$TabSpec;)V

    .line 78
    invoke-virtual {v2}, Lcom/android/hwcamera/settings/MenuItem;->getPrefKey()Ljava/lang/String;

    move-result-object v6

    const-string v7, "pref_video_settings_key"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    move-object v6, p1

    check-cast v6, Landroid/app/Activity;

    invoke-static {v6}, Lcom/android/hwcamera/Util;->isVideoCaptureIntent(Landroid/app/Activity;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 79
    invoke-virtual {p2, v1}, Landroid/widget/TabHost;->setCurrentTab(I)V

    goto/16 :goto_1

    .line 72
    :cond_6
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    if-ne v1, v6, :cond_7

    .line 73
    const v6, 0x7f02026d

    invoke-virtual {v4, v6}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_2

    .line 75
    :cond_7
    const v6, 0x7f02026c

    invoke-virtual {v4, v6}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_2
.end method


# virtual methods
.method public getView()Landroid/view/View;
    .locals 1

    .prologue
    .line 101
    iget-object v0, p0, Lcom/android/hwcamera/settings/dynaui/layout/TabStyleLayout;->mView:Landroid/view/View;

    return-object v0
.end method

.method public inflate(Landroid/content/Context;Lcom/android/hwcamera/settings/MenuItem;Landroid/view/ViewGroup;)V
    .locals 4
    .parameter "context"
    .parameter "item"
    .parameter "viewGroup"

    .prologue
    .line 35
    move-object v2, p1

    check-cast v2, Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    .line 36
    .local v0, inflater:Landroid/view/LayoutInflater;
    const v2, 0x7f040039

    invoke-virtual {v0, v2, p3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 37
    invoke-virtual {p3}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {p3, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/android/hwcamera/settings/dynaui/layout/TabStyleLayout;->mView:Landroid/view/View;

    .line 38
    invoke-virtual {p2, p0}, Lcom/android/hwcamera/settings/MenuItem;->setChildsLayout(Lcom/android/hwcamera/settings/dynaui/layout/DynamicLayout;)V

    .line 39
    iget-object v2, p0, Lcom/android/hwcamera/settings/dynaui/layout/TabStyleLayout;->mView:Landroid/view/View;

    const v3, 0x7f10011f

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TabHost;

    .line 40
    .local v1, tabHost:Landroid/widget/TabHost;
    invoke-virtual {v1}, Landroid/widget/TabHost;->setup()V

    .line 42
    iget-object v2, p0, Lcom/android/hwcamera/settings/dynaui/layout/TabStyleLayout;->mView:Landroid/view/View;

    const v3, 0x1020011

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/FrameLayout;

    iput-object v2, p0, Lcom/android/hwcamera/settings/dynaui/layout/TabStyleLayout;->mFrameLayout:Landroid/widget/FrameLayout;

    .line 44
    iget-object v2, p0, Lcom/android/hwcamera/settings/dynaui/layout/TabStyleLayout;->mFrameLayout:Landroid/widget/FrameLayout;

    invoke-direct {p0, p1, v1, v2, p2}, Lcom/android/hwcamera/settings/dynaui/layout/TabStyleLayout;->initData(Landroid/content/Context;Landroid/widget/TabHost;Landroid/widget/FrameLayout;Lcom/android/hwcamera/settings/MenuItem;)V

    .line 45
    return-void
.end method

.method public reset()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 107
    iget-object v3, p0, Lcom/android/hwcamera/settings/dynaui/layout/TabStyleLayout;->mFrameLayout:Landroid/widget/FrameLayout;

    if-nez v3, :cond_1

    .line 116
    :cond_0
    return-void

    .line 108
    :cond_1
    iget-object v3, p0, Lcom/android/hwcamera/settings/dynaui/layout/TabStyleLayout;->mFrameLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v3}, Landroid/widget/FrameLayout;->getChildCount()I

    move-result v0

    .line 109
    .local v0, count:I
    if-lez v0, :cond_0

    .line 111
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 112
    iget-object v3, p0, Lcom/android/hwcamera/settings/dynaui/layout/TabStyleLayout;->mFrameLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v3, v1}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    const v4, 0x7f100112

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 113
    .local v2, v:Landroid/view/View;
    if-eqz v2, :cond_2

    invoke-virtual {v2, v5, v5}, Landroid/view/View;->scrollTo(II)V

    .line 111
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method
