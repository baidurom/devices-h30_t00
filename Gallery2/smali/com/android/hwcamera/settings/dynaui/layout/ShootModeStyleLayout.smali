.class public Lcom/android/hwcamera/settings/dynaui/layout/ShootModeStyleLayout;
.super Ljava/lang/Object;
.source "ShootModeStyleLayout.java"

# interfaces
.implements Lcom/android/hwcamera/settings/dynaui/layout/DynamicLayout;


# static fields
.field private static final RADIO_IMAGE:Ljava/lang/String; = "radio_image"

.field private static final RADIO_TITLE:Ljava/lang/String; = "radio_title"

.field private static final RADIO_TITLE_SELECTED:Ljava/lang/String; = "radio_title_selected"


# instance fields
.field private mView:Landroid/view/View;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 35
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 36
    return-void
.end method

.method static synthetic access$000(Lcom/android/hwcamera/settings/dynaui/layout/ShootModeStyleLayout;Ljava/util/List;ILandroid/widget/SimpleAdapter;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 28
    invoke-direct {p0, p1, p2, p3}, Lcom/android/hwcamera/settings/dynaui/layout/ShootModeStyleLayout;->changeRadioImg(Ljava/util/List;ILandroid/widget/SimpleAdapter;)V

    return-void
.end method

.method private changeRadioImg(Ljava/util/List;ILandroid/widget/SimpleAdapter;)V
    .locals 6
    .parameter
    .parameter "pos"
    .parameter "adapter"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/hwcamera/settings/MenuItem;",
            ">;I",
            "Landroid/widget/SimpleAdapter;",
            ")V"
        }
    .end annotation

    .prologue
    .line 92
    .local p1, items:Ljava/util/List;,"Ljava/util/List<Lcom/android/hwcamera/settings/MenuItem;>;"
    invoke-virtual {p3}, Landroid/widget/SimpleAdapter;->getCount()I

    move-result v3

    .line 94
    .local v3, size:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v3, :cond_1

    .line 95
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/hwcamera/settings/MenuItem;

    .line 96
    .local v2, item:Lcom/android/hwcamera/settings/MenuItem;
    invoke-virtual {p3, v1}, Landroid/widget/SimpleAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    .line 97
    .local v0, currentMap:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v4, "radio_title"

    invoke-virtual {v2}, Lcom/android/hwcamera/settings/MenuItem;->getEntry()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 98
    if-ne v1, p2, :cond_0

    .line 99
    const-string v4, "radio_title"

    invoke-virtual {v0, v4}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 100
    const-string v4, "radio_title_selected"

    invoke-virtual {v2}, Lcom/android/hwcamera/settings/MenuItem;->getEntry()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 101
    const-string v4, "radio_image"

    invoke-virtual {v2}, Lcom/android/hwcamera/settings/MenuItem;->getLargeIcon()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 94
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 104
    :cond_0
    const-string v4, "radio_image"

    invoke-virtual {v2}, Lcom/android/hwcamera/settings/MenuItem;->getIcon()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 106
    .end local v0           #currentMap:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    .end local v2           #item:Lcom/android/hwcamera/settings/MenuItem;
    :cond_1
    invoke-virtual {p3}, Landroid/widget/SimpleAdapter;->notifyDataSetChanged()V

    .line 107
    return-void
.end method

.method private inflateGridView(Landroid/widget/GridView;Landroid/content/Context;Lcom/android/hwcamera/settings/MenuItem;Ljava/util/List;)V
    .locals 7
    .parameter "gridView"
    .parameter "context"
    .parameter "item"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/GridView;",
            "Landroid/content/Context;",
            "Lcom/android/hwcamera/settings/MenuItem;",
            "Ljava/util/List",
            "<",
            "Lcom/android/hwcamera/settings/MenuItem;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p4, items:Ljava/util/List;,"Ljava/util/List<Lcom/android/hwcamera/settings/MenuItem;>;"
    const/4 v6, 0x3

    .line 59
    invoke-virtual {p3}, Lcom/android/hwcamera/settings/MenuItem;->getIndex()I

    move-result v1

    invoke-direct {p0, p4, v1}, Lcom/android/hwcamera/settings/dynaui/layout/ShootModeStyleLayout;->initListViewData(Ljava/util/List;I)Ljava/util/ArrayList;

    move-result-object v2

    .line 60
    .local v2, listItem:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;>;"
    new-instance v0, Landroid/widget/SimpleAdapter;

    const v3, 0x7f040031

    new-array v4, v6, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v5, "radio_image"

    aput-object v5, v4, v1

    const/4 v1, 0x1

    const-string v5, "radio_title"

    aput-object v5, v4, v1

    const/4 v1, 0x2

    const-string v5, "radio_title_selected"

    aput-object v5, v4, v1

    new-array v5, v6, [I

    fill-array-data v5, :array_0

    move-object v1, p2

    invoke-direct/range {v0 .. v5}, Landroid/widget/SimpleAdapter;-><init>(Landroid/content/Context;Ljava/util/List;I[Ljava/lang/String;[I)V

    .line 61
    .local v0, mModeadpter:Landroid/widget/SimpleAdapter;
    invoke-virtual {p1, v0}, Landroid/widget/GridView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 62
    new-instance v1, Landroid/graphics/drawable/ColorDrawable;

    const v3, 0x106000d

    invoke-direct {v1, v3}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {p1, v1}, Landroid/widget/GridView;->setSelector(Landroid/graphics/drawable/Drawable;)V

    .line 63
    new-instance v1, Lcom/android/hwcamera/settings/dynaui/layout/ShootModeStyleLayout$1;

    invoke-direct {v1, p0, p4, v0}, Lcom/android/hwcamera/settings/dynaui/layout/ShootModeStyleLayout$1;-><init>(Lcom/android/hwcamera/settings/dynaui/layout/ShootModeStyleLayout;Ljava/util/List;Landroid/widget/SimpleAdapter;)V

    invoke-virtual {p1, v1}, Landroid/widget/GridView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 70
    return-void

    .line 60
    nop

    :array_0
    .array-data 0x4
        0x4t 0x1t 0x10t 0x7ft
        0x6t 0x1t 0x10t 0x7ft
        0x5t 0x1t 0x10t 0x7ft
    .end array-data
.end method

.method private initData(Landroid/content/Context;Landroid/widget/GridView;Lcom/android/hwcamera/settings/MenuItem;)V
    .locals 2
    .parameter "context"
    .parameter "mGridView"
    .parameter "parentItem"

    .prologue
    .line 48
    invoke-virtual {p3}, Lcom/android/hwcamera/settings/MenuItem;->getItems()Ljava/util/List;

    move-result-object v0

    .line 50
    .local v0, items:Ljava/util/List;,"Ljava/util/List<Lcom/android/hwcamera/settings/MenuItem;>;"
    invoke-static {v0}, Lcom/android/hwcamera/Util;->isEmptyCollection(Ljava/util/Collection;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 54
    :cond_0
    :goto_0
    return-void

    .line 53
    :cond_1
    invoke-static {v0}, Lcom/android/hwcamera/Util;->isEmptyCollection(Ljava/util/Collection;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-direct {p0, p2, p1, p3, v0}, Lcom/android/hwcamera/settings/dynaui/layout/ShootModeStyleLayout;->inflateGridView(Landroid/widget/GridView;Landroid/content/Context;Lcom/android/hwcamera/settings/MenuItem;Ljava/util/List;)V

    goto :goto_0
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
    .line 73
    .local p1, items:Ljava/util/List;,"Ljava/util/List<Lcom/android/hwcamera/settings/MenuItem;>;"
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 75
    .local v2, listItem:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;>;"
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v4

    if-ge v0, v4, :cond_1

    .line 76
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/hwcamera/settings/MenuItem;

    .line 77
    .local v1, item:Lcom/android/hwcamera/settings/MenuItem;
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 78
    .local v3, map:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v4, "radio_title"

    invoke-virtual {v1}, Lcom/android/hwcamera/settings/MenuItem;->getEntry()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 79
    if-ne v0, p2, :cond_0

    .line 80
    const-string v4, "radio_title"

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 81
    const-string v4, "radio_title_selected"

    invoke-virtual {v1}, Lcom/android/hwcamera/settings/MenuItem;->getEntry()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 82
    const-string v4, "radio_image"

    invoke-virtual {v1}, Lcom/android/hwcamera/settings/MenuItem;->getLargeIcon()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 86
    :goto_1
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 75
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 84
    :cond_0
    const-string v4, "radio_image"

    invoke-virtual {v1}, Lcom/android/hwcamera/settings/MenuItem;->getIcon()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 88
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
    iget-object v0, p0, Lcom/android/hwcamera/settings/dynaui/layout/ShootModeStyleLayout;->mView:Landroid/view/View;

    return-object v0
.end method

.method public inflate(Landroid/content/Context;Lcom/android/hwcamera/settings/MenuItem;Landroid/view/ViewGroup;)V
    .locals 4
    .parameter "context"
    .parameter "item"
    .parameter "viewGroup"

    .prologue
    .line 39
    move-object v2, p1

    check-cast v2, Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    .line 40
    .local v0, inflater:Landroid/view/LayoutInflater;
    const v2, 0x7f040030

    invoke-virtual {v0, v2, p3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 41
    invoke-virtual {p3}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {p3, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/android/hwcamera/settings/dynaui/layout/ShootModeStyleLayout;->mView:Landroid/view/View;

    .line 42
    invoke-virtual {p2, p0}, Lcom/android/hwcamera/settings/MenuItem;->setChildsLayout(Lcom/android/hwcamera/settings/dynaui/layout/DynamicLayout;)V

    .line 43
    iget-object v2, p0, Lcom/android/hwcamera/settings/dynaui/layout/ShootModeStyleLayout;->mView:Landroid/view/View;

    const v3, 0x7f100102

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/GridView;

    .line 44
    .local v1, mGridView:Landroid/widget/GridView;
    invoke-direct {p0, p1, v1, p2}, Lcom/android/hwcamera/settings/dynaui/layout/ShootModeStyleLayout;->initData(Landroid/content/Context;Landroid/widget/GridView;Lcom/android/hwcamera/settings/MenuItem;)V

    .line 45
    return-void
.end method

.method public reset()V
    .locals 0

    .prologue
    .line 117
    return-void
.end method
