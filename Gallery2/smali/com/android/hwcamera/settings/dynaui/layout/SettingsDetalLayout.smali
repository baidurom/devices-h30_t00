.class public Lcom/android/hwcamera/settings/dynaui/layout/SettingsDetalLayout;
.super Ljava/lang/Object;
.source "SettingsDetalLayout.java"

# interfaces
.implements Lcom/android/hwcamera/settings/dynaui/layout/DynamicLayout;


# static fields
.field private static final RADIO_BUTTON:Ljava/lang/String; = "radio_button"

.field private static final RADIO_IMAGE:Ljava/lang/String; = "radio_image"

.field private static final RADIO_TITLE:Ljava/lang/String; = "radio_title"


# instance fields
.field private mListViewContent:Landroid/widget/ListView;

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

.method static synthetic access$000(Lcom/android/hwcamera/settings/dynaui/layout/SettingsDetalLayout;ILandroid/widget/SimpleAdapter;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 22
    invoke-direct {p0, p1, p2}, Lcom/android/hwcamera/settings/dynaui/layout/SettingsDetalLayout;->changeRadioImg(ILandroid/widget/SimpleAdapter;)V

    return-void
.end method

.method private changeRadioImg(ILandroid/widget/SimpleAdapter;)V
    .locals 5
    .parameter "pos"
    .parameter "adapter"

    .prologue
    .line 96
    invoke-virtual {p2}, Landroid/widget/SimpleAdapter;->getCount()I

    move-result v2

    .line 98
    .local v2, size:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v2, :cond_1

    .line 99
    invoke-virtual {p2, v1}, Landroid/widget/SimpleAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    .line 100
    .local v0, currentMap:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    if-ne v1, p1, :cond_0

    .line 101
    const-string v3, "radio_button"

    const/4 v4, 0x1

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 98
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 104
    :cond_0
    const-string v3, "radio_button"

    const/4 v4, 0x0

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 106
    .end local v0           #currentMap:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    :cond_1
    invoke-virtual {p2}, Landroid/widget/SimpleAdapter;->notifyDataSetChanged()V

    .line 107
    return-void
.end method

.method private inflateChild(Landroid/content/Context;Lcom/android/hwcamera/settings/MenuItem;Landroid/widget/ListView;)V
    .locals 8
    .parameter "context"
    .parameter "item"
    .parameter "listView"

    .prologue
    const/4 v7, 0x3

    .line 60
    invoke-virtual {p2}, Lcom/android/hwcamera/settings/MenuItem;->getItems()Ljava/util/List;

    move-result-object v6

    .line 61
    .local v6, items:Ljava/util/List;,"Ljava/util/List<Lcom/android/hwcamera/settings/MenuItem;>;"
    invoke-static {v6}, Lcom/android/hwcamera/Util;->isEmptyCollection(Ljava/util/Collection;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 75
    :goto_0
    return-void

    .line 63
    :cond_0
    invoke-virtual {p2}, Lcom/android/hwcamera/settings/MenuItem;->getIndex()I

    move-result v1

    invoke-direct {p0, v6, v1}, Lcom/android/hwcamera/settings/dynaui/layout/SettingsDetalLayout;->initListViewData(Ljava/util/List;I)Ljava/util/ArrayList;

    move-result-object v2

    .line 64
    .local v2, listItem:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;>;"
    new-instance v0, Landroid/widget/SimpleAdapter;

    const v3, 0x7f040033

    new-array v4, v7, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v5, "radio_image"

    aput-object v5, v4, v1

    const/4 v1, 0x1

    const-string v5, "radio_title"

    aput-object v5, v4, v1

    const/4 v1, 0x2

    const-string v5, "radio_button"

    aput-object v5, v4, v1

    new-array v5, v7, [I

    fill-array-data v5, :array_0

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Landroid/widget/SimpleAdapter;-><init>(Landroid/content/Context;Ljava/util/List;I[Ljava/lang/String;[I)V

    .line 65
    .local v0, mModeadpter:Landroid/widget/SimpleAdapter;
    invoke-virtual {p3, v0}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 67
    new-instance v1, Lcom/android/hwcamera/settings/dynaui/layout/SettingsDetalLayout$2;

    invoke-direct {v1, p0, v0, v6, p2}, Lcom/android/hwcamera/settings/dynaui/layout/SettingsDetalLayout$2;-><init>(Lcom/android/hwcamera/settings/dynaui/layout/SettingsDetalLayout;Landroid/widget/SimpleAdapter;Ljava/util/List;Lcom/android/hwcamera/settings/MenuItem;)V

    invoke-virtual {p3, v1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    goto :goto_0

    .line 64
    nop

    :array_0
    .array-data 0x4
        0x4t 0x1t 0x10t 0x7ft
        0x6t 0x1t 0x10t 0x7ft
        0xct 0x1t 0x10t 0x7ft
    .end array-data
.end method

.method private initListViewData(Ljava/util/List;I)Ljava/util/ArrayList;
    .locals 6
    .parameter
    .parameter "index"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/hwcamera/settings/MenuItem;",
            ">;I)",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 78
    .local p1, items:Ljava/util/List;,"Ljava/util/List<Lcom/android/hwcamera/settings/MenuItem;>;"
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 80
    .local v2, listItem:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;>;"
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v4

    if-ge v0, v4, :cond_1

    .line 81
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/hwcamera/settings/MenuItem;

    .line 82
    .local v1, item:Lcom/android/hwcamera/settings/MenuItem;
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 83
    .local v3, map:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v4, "radio_image"

    invoke-virtual {v1}, Lcom/android/hwcamera/settings/MenuItem;->getIcon()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 84
    const-string v4, "radio_title"

    invoke-virtual {v1}, Lcom/android/hwcamera/settings/MenuItem;->getEntry()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 85
    if-ne v0, p2, :cond_0

    .line 86
    const-string v4, "radio_button"

    const/4 v5, 0x1

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 90
    :goto_1
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 80
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 88
    :cond_0
    const-string v4, "radio_button"

    const/4 v5, 0x0

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 92
    .end local v1           #item:Lcom/android/hwcamera/settings/MenuItem;
    .end local v3           #map:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    :cond_1
    return-object v2
.end method


# virtual methods
.method public getView()Landroid/view/View;
    .locals 1

    .prologue
    .line 111
    iget-object v0, p0, Lcom/android/hwcamera/settings/dynaui/layout/SettingsDetalLayout;->mView:Landroid/view/View;

    return-object v0
.end method

.method public inflate(Landroid/content/Context;Lcom/android/hwcamera/settings/MenuItem;Landroid/view/ViewGroup;)V
    .locals 6
    .parameter "context"
    .parameter "item"
    .parameter "viewGroup"

    .prologue
    .line 35
    move-object v4, p1

    check-cast v4, Landroid/app/Activity;

    invoke-virtual {v4}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    .line 36
    .local v0, inflater:Landroid/view/LayoutInflater;
    const v4, 0x7f04003a

    invoke-virtual {v0, v4, p3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 37
    invoke-virtual {p3}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    invoke-virtual {p3, v4}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    iput-object v4, p0, Lcom/android/hwcamera/settings/dynaui/layout/SettingsDetalLayout;->mView:Landroid/view/View;

    .line 38
    iget-object v4, p0, Lcom/android/hwcamera/settings/dynaui/layout/SettingsDetalLayout;->mView:Landroid/view/View;

    const v5, 0x7f10010f

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 39
    .local v1, mBackIcon:Landroid/view/View;
    iget-object v4, p0, Lcom/android/hwcamera/settings/dynaui/layout/SettingsDetalLayout;->mView:Landroid/view/View;

    const v5, 0x7f100111

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 40
    .local v2, mTitleView:Landroid/widget/TextView;
    const/4 v3, 0x0

    .line 41
    .local v3, onClickListener:Landroid/view/View$OnClickListener;
    invoke-virtual {p2}, Lcom/android/hwcamera/settings/MenuItem;->getParentItem()Lcom/android/hwcamera/settings/MenuItem;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 42
    new-instance v3, Lcom/android/hwcamera/settings/dynaui/layout/SettingsDetalLayout$1;

    .end local v3           #onClickListener:Landroid/view/View$OnClickListener;
    invoke-direct {v3, p0, p2}, Lcom/android/hwcamera/settings/dynaui/layout/SettingsDetalLayout$1;-><init>(Lcom/android/hwcamera/settings/dynaui/layout/SettingsDetalLayout;Lcom/android/hwcamera/settings/MenuItem;)V

    .line 49
    .restart local v3       #onClickListener:Landroid/view/View$OnClickListener;
    :cond_0
    invoke-virtual {v1, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 50
    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 51
    iget-object v4, p0, Lcom/android/hwcamera/settings/dynaui/layout/SettingsDetalLayout;->mView:Landroid/view/View;

    const v5, 0x7f100120

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ListView;

    iput-object v4, p0, Lcom/android/hwcamera/settings/dynaui/layout/SettingsDetalLayout;->mListViewContent:Landroid/widget/ListView;

    .line 52
    iget-object v4, p0, Lcom/android/hwcamera/settings/dynaui/layout/SettingsDetalLayout;->mListViewContent:Landroid/widget/ListView;

    const/16 v5, 0x1e

    invoke-virtual {v4, v5}, Landroid/widget/ListView;->setFadingEdgeLength(I)V

    .line 53
    iget-object v4, p0, Lcom/android/hwcamera/settings/dynaui/layout/SettingsDetalLayout;->mListViewContent:Landroid/widget/ListView;

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Landroid/widget/ListView;->setVerticalFadingEdgeEnabled(Z)V

    .line 54
    invoke-virtual {p2}, Lcom/android/hwcamera/settings/MenuItem;->getTitle()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 55
    iget-object v4, p0, Lcom/android/hwcamera/settings/dynaui/layout/SettingsDetalLayout;->mListViewContent:Landroid/widget/ListView;

    invoke-direct {p0, p1, p2, v4}, Lcom/android/hwcamera/settings/dynaui/layout/SettingsDetalLayout;->inflateChild(Landroid/content/Context;Lcom/android/hwcamera/settings/MenuItem;Landroid/widget/ListView;)V

    .line 56
    invoke-virtual {p2, p0}, Lcom/android/hwcamera/settings/MenuItem;->setChildsLayout(Lcom/android/hwcamera/settings/dynaui/layout/DynamicLayout;)V

    .line 57
    return-void
.end method

.method public reset()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 117
    iget-object v0, p0, Lcom/android/hwcamera/settings/dynaui/layout/SettingsDetalLayout;->mListViewContent:Landroid/widget/ListView;

    if-eqz v0, :cond_0

    .line 118
    iget-object v0, p0, Lcom/android/hwcamera/settings/dynaui/layout/SettingsDetalLayout;->mListViewContent:Landroid/widget/ListView;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setSelection(I)V

    .line 119
    iget-object v0, p0, Lcom/android/hwcamera/settings/dynaui/layout/SettingsDetalLayout;->mListViewContent:Landroid/widget/ListView;

    invoke-virtual {v0, v1, v1}, Landroid/widget/ListView;->scrollTo(II)V

    .line 122
    :cond_0
    return-void
.end method
