.class public abstract Lcom/android/hwcamera/settings/AbstractMenuInflater;
.super Ljava/lang/Object;
.source "AbstractMenuInflater.java"

# interfaces
.implements Lcom/android/hwcamera/settings/IMenuInflater;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private reflateMenuItem(Lcom/android/hwcamera/settings/MenuItem;Lcom/android/hwcamera/MenuIconListPreference;)V
    .locals 6
    .parameter "item"
    .parameter "pref"

    .prologue
    .line 20
    invoke-virtual {p2}, Lcom/android/hwcamera/MenuIconListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v0

    .line 21
    .local v0, entries:[Ljava/lang/CharSequence;
    invoke-static {v0}, Lcom/android/hwcamera/Util;->isEmptyCollection([Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 60
    :goto_0
    return-void

    .line 23
    :cond_0
    invoke-virtual {p1}, Lcom/android/hwcamera/settings/MenuItem;->getIndex()I

    move-result v5

    invoke-static {v5, v0}, Lcom/android/hwcamera/Util;->checkArrayInbounds(I[Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 25
    invoke-virtual {p1}, Lcom/android/hwcamera/settings/MenuItem;->getIndex()I

    move-result v5

    aget-object v5, v0, v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v5}, Lcom/android/hwcamera/settings/MenuItem;->setEntry(Ljava/lang/String;)V

    .line 28
    :cond_1
    invoke-virtual {p2}, Lcom/android/hwcamera/MenuIconListPreference;->getEntryValues()[Ljava/lang/CharSequence;

    move-result-object v1

    .line 30
    .local v1, entryValues:[Ljava/lang/CharSequence;
    invoke-virtual {p1}, Lcom/android/hwcamera/settings/MenuItem;->getIndex()I

    move-result v5

    invoke-static {v5, v1}, Lcom/android/hwcamera/Util;->checkArrayInbounds(I[Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 32
    invoke-virtual {p1}, Lcom/android/hwcamera/settings/MenuItem;->getIndex()I

    move-result v5

    aget-object v5, v1, v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v5}, Lcom/android/hwcamera/settings/MenuItem;->setEntryValue(Ljava/lang/String;)V

    .line 35
    :cond_2
    invoke-virtual {p1}, Lcom/android/hwcamera/settings/MenuItem;->isUseSingleIcon()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 36
    invoke-virtual {p1}, Lcom/android/hwcamera/settings/MenuItem;->reflate()V

    goto :goto_0

    .line 40
    :cond_3
    invoke-virtual {p2}, Lcom/android/hwcamera/MenuIconListPreference;->getIconIds()[I

    move-result-object v2

    .line 42
    .local v2, icons:[I
    invoke-virtual {p2}, Lcom/android/hwcamera/MenuIconListPreference;->getUseSingleIcon()Z

    move-result v5

    if-nez v5, :cond_4

    invoke-virtual {p1}, Lcom/android/hwcamera/settings/MenuItem;->getIndex()I

    move-result v5

    invoke-static {v5, v2}, Lcom/android/hwcamera/Util;->checkArrayInbounds(I[I)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 44
    invoke-virtual {p1}, Lcom/android/hwcamera/settings/MenuItem;->getIndex()I

    move-result v5

    aget v5, v2, v5

    invoke-virtual {p1, v5}, Lcom/android/hwcamera/settings/MenuItem;->setIcon(I)V

    .line 47
    :cond_4
    invoke-virtual {p2}, Lcom/android/hwcamera/MenuIconListPreference;->getImageIds()[I

    move-result-object v3

    .line 48
    .local v3, images:[I
    invoke-virtual {p2}, Lcom/android/hwcamera/MenuIconListPreference;->getUseSingleIcon()Z

    move-result v5

    if-nez v5, :cond_5

    invoke-virtual {p1}, Lcom/android/hwcamera/settings/MenuItem;->getIndex()I

    move-result v5

    invoke-static {v5, v3}, Lcom/android/hwcamera/Util;->checkArrayInbounds(I[I)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 49
    invoke-virtual {p1}, Lcom/android/hwcamera/settings/MenuItem;->getIndex()I

    move-result v5

    aget v5, v3, v5

    invoke-virtual {p1, v5}, Lcom/android/hwcamera/settings/MenuItem;->setImage(I)V

    .line 52
    :cond_5
    invoke-virtual {p2}, Lcom/android/hwcamera/MenuIconListPreference;->getLargeIconIds()[I

    move-result-object v4

    .line 54
    .local v4, largeIcons:[I
    invoke-virtual {p2}, Lcom/android/hwcamera/MenuIconListPreference;->getUseSingleIcon()Z

    move-result v5

    if-nez v5, :cond_6

    invoke-virtual {p1}, Lcom/android/hwcamera/settings/MenuItem;->getIndex()I

    move-result v5

    invoke-static {v5, v4}, Lcom/android/hwcamera/Util;->checkArrayInbounds(I[I)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 56
    invoke-virtual {p1}, Lcom/android/hwcamera/settings/MenuItem;->getIndex()I

    move-result v5

    aget v5, v4, v5

    invoke-virtual {p1, v5}, Lcom/android/hwcamera/settings/MenuItem;->setLargeIcon(I)V

    .line 59
    :cond_6
    invoke-virtual {p1}, Lcom/android/hwcamera/settings/MenuItem;->reflate()V

    goto/16 :goto_0
.end method


# virtual methods
.method protected getMenuLayoutParams(Lcom/android/hwcamera/settings/MenuItem;)Landroid/view/ViewGroup$LayoutParams;
    .locals 1
    .parameter "item"

    .prologue
    .line 95
    const/4 v0, 0x0

    return-object v0
.end method

.method protected inflateRootItemView(Landroid/view/ViewGroup;Landroid/view/ViewGroup;Lcom/android/hwcamera/settings/MenuItem;Landroid/content/Context;)V
    .locals 5
    .parameter "rootViewGroup"
    .parameter "middleViewGroup"
    .parameter "item"
    .parameter "context"

    .prologue
    .line 64
    invoke-static {p3, p4}, Lcom/android/hwcamera/settings/dynaui/MenuItemFactory;->inflateDynamicUI(Lcom/android/hwcamera/settings/MenuItem;Landroid/content/Context;)Lcom/android/hwcamera/settings/dynaui/DynamicUI;

    .line 65
    const/4 v2, 0x0

    .line 66
    .local v2, view:Landroid/view/View;
    invoke-virtual {p3}, Lcom/android/hwcamera/settings/MenuItem;->getView()Landroid/view/View;

    move-result-object v2

    if-nez v2, :cond_1

    .line 91
    :cond_0
    :goto_0
    return-void

    .line 68
    :cond_1
    invoke-virtual {p0, p3}, Lcom/android/hwcamera/settings/AbstractMenuInflater;->getMenuLayoutParams(Lcom/android/hwcamera/settings/MenuItem;)Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    .line 70
    .local v1, params:Landroid/view/ViewGroup$LayoutParams;
    if-eqz v1, :cond_2

    invoke-virtual {v2, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 72
    :cond_2
    invoke-virtual {p3}, Lcom/android/hwcamera/settings/MenuItem;->getOnClickListener()Lcom/android/hwcamera/settings/MenuItem$OnClickListener;

    move-result-object v0

    .line 74
    .local v0, clickListener:Lcom/android/hwcamera/settings/MenuItem$OnClickListener;
    new-instance v3, Lcom/android/hwcamera/settings/AbstractMenuInflater$1;

    invoke-direct {v3, p0, v0}, Lcom/android/hwcamera/settings/AbstractMenuInflater$1;-><init>(Lcom/android/hwcamera/settings/AbstractMenuInflater;Lcom/android/hwcamera/settings/MenuItem$OnClickListener;)V

    invoke-virtual {p3, v3}, Lcom/android/hwcamera/settings/MenuItem;->setOnClickListener(Lcom/android/hwcamera/settings/MenuItem$OnClickListener;)V

    .line 84
    invoke-virtual {p3}, Lcom/android/hwcamera/settings/MenuItem;->getPosition()I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_3

    .line 85
    invoke-virtual {p2, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    goto :goto_0

    .line 86
    :cond_3
    invoke-virtual {p3}, Lcom/android/hwcamera/settings/MenuItem;->getPosition()I

    move-result v3

    const/4 v4, 0x2

    if-ne v3, v4, :cond_4

    .line 87
    invoke-virtual {p1, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    goto :goto_0

    .line 88
    :cond_4
    invoke-virtual {p3}, Lcom/android/hwcamera/settings/MenuItem;->getPosition()I

    move-result v3

    if-nez v3, :cond_0

    .line 89
    const/4 v3, 0x0

    invoke-virtual {p1, v2, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    goto :goto_0
.end method

.method public reflateItem(Lcom/android/hwcamera/settings/MenuItem;Lcom/android/hwcamera/MenuIconListPreference;)V
    .locals 0
    .parameter "item"
    .parameter "pref"

    .prologue
    .line 16
    invoke-direct {p0, p1, p2}, Lcom/android/hwcamera/settings/AbstractMenuInflater;->reflateMenuItem(Lcom/android/hwcamera/settings/MenuItem;Lcom/android/hwcamera/MenuIconListPreference;)V

    .line 17
    return-void
.end method
