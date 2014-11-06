.class public Lcom/android/hwcamera/settings/MenuController;
.super Ljava/lang/Object;
.source "MenuController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/hwcamera/settings/MenuController$OnMenuStateChangedListener;
    }
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;

.field private mMenuInflater:Lcom/android/hwcamera/settings/MenuInflater;

.field private mOverrides:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/hwcamera/settings/MenuMutexConfigs$MenuMutexInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mOverridesForUser:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field protected mPreferenceChangedListener:Lcom/android/hwcamera/CameraPreference$OnPreferenceChangedListener;

.field private mPreferenceGroup:Lcom/android/hwcamera/PreferenceGroup;

.field private mPreferenceMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcom/android/hwcamera/MenuIconListPreference;",
            "Lcom/android/hwcamera/settings/MenuItem;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "mContext"

    .prologue
    .line 46
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 47
    iput-object p1, p0, Lcom/android/hwcamera/settings/MenuController;->mContext:Landroid/content/Context;

    .line 48
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/hwcamera/settings/MenuController;->mPreferenceMap:Ljava/util/Map;

    .line 49
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/hwcamera/settings/MenuController;->mOverrides:Ljava/util/Map;

    .line 51
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/hwcamera/settings/MenuController;->mOverridesForUser:Ljava/util/Map;

    .line 53
    return-void
.end method

.method static synthetic access$000(Lcom/android/hwcamera/settings/MenuController;)Ljava/util/Map;
    .locals 1
    .parameter "x0"

    .prologue
    .line 28
    iget-object v0, p0, Lcom/android/hwcamera/settings/MenuController;->mPreferenceMap:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/hwcamera/settings/MenuController;)Lcom/android/hwcamera/settings/MenuInflater;
    .locals 1
    .parameter "x0"

    .prologue
    .line 28
    iget-object v0, p0, Lcom/android/hwcamera/settings/MenuController;->mMenuInflater:Lcom/android/hwcamera/settings/MenuInflater;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/hwcamera/settings/MenuController;Lcom/android/hwcamera/MenuIconListPreference;)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 28
    invoke-direct {p0, p1}, Lcom/android/hwcamera/settings/MenuController;->hasEntries(Lcom/android/hwcamera/MenuIconListPreference;)Z

    move-result v0

    return v0
.end method

.method private addMainItem(Ljava/lang/String;I)V
    .locals 1
    .parameter "prefkey"
    .parameter "pos"

    .prologue
    .line 278
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, p2}, Lcom/android/hwcamera/settings/MenuController;->addItem(Ljava/lang/String;II)V

    .line 279
    return-void
.end method

.method private addSpecialItem(Ljava/lang/String;I)V
    .locals 1
    .parameter "prefkey"
    .parameter "pos"

    .prologue
    .line 282
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0, p2}, Lcom/android/hwcamera/settings/MenuController;->addItem(Ljava/lang/String;II)V

    .line 283
    return-void
.end method

.method private changeItemState(Lcom/android/hwcamera/settings/MenuItem;I)V
    .locals 1
    .parameter "item"
    .parameter "type"

    .prologue
    .line 156
    packed-switch p2, :pswitch_data_0

    .line 169
    :goto_0
    return-void

    .line 158
    :pswitch_0
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/android/hwcamera/settings/MenuItem;->enableItem(Z)V

    goto :goto_0

    .line 161
    :pswitch_1
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/android/hwcamera/settings/MenuItem;->enableItem(Z)V

    goto :goto_0

    .line 164
    :pswitch_2
    invoke-virtual {p1}, Lcom/android/hwcamera/settings/MenuItem;->hide()V

    goto :goto_0

    .line 156
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_0
    .end packed-switch
.end method

.method private varargs clearOverrideSettings(Z[Ljava/lang/String;)Ljava/util/Set;
    .locals 13
    .parameter "isChangeUi"
    .parameter "keyvalues"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z[",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Set",
            "<",
            "Lcom/android/hwcamera/MenuIconListPreference;",
            ">;"
        }
    .end annotation

    .prologue
    .line 205
    const/4 v8, 0x0

    .line 206
    .local v8, prefs:Ljava/util/Set;,"Ljava/util/Set<Lcom/android/hwcamera/MenuIconListPreference;>;"
    iget-object v11, p0, Lcom/android/hwcamera/settings/MenuController;->mOverrides:Ljava/util/Map;

    invoke-interface {v11}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v5

    .line 207
    .local v5, overrides:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    invoke-static {v5}, Lcom/android/hwcamera/Util;->isEmptyCollection(Ljava/util/Collection;)Z

    move-result v11

    if-nez v11, :cond_b

    .line 208
    const/4 v7, 0x0

    .line 209
    .local v7, pref:Lcom/android/hwcamera/MenuIconListPreference;
    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_8

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 210
    .local v4, key:Ljava/lang/String;
    iget-object v11, p0, Lcom/android/hwcamera/settings/MenuController;->mPreferenceGroup:Lcom/android/hwcamera/PreferenceGroup;

    invoke-virtual {v11, v4}, Lcom/android/hwcamera/PreferenceGroup;->findPreference(Ljava/lang/String;)Lcom/android/hwcamera/ListPreference;

    move-result-object v7

    .end local v7           #pref:Lcom/android/hwcamera/MenuIconListPreference;
    check-cast v7, Lcom/android/hwcamera/MenuIconListPreference;

    .line 211
    .restart local v7       #pref:Lcom/android/hwcamera/MenuIconListPreference;
    if-eqz v7, :cond_0

    .line 212
    invoke-static {p2}, Lcom/android/hwcamera/Util;->isEmptyCollection([Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_1

    invoke-virtual {v7}, Lcom/android/hwcamera/MenuIconListPreference;->getKey()Ljava/lang/String;

    move-result-object v11

    invoke-direct {p0, p2, v11}, Lcom/android/hwcamera/settings/MenuController;->hasValue([Ljava/lang/String;Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_0

    .line 214
    :cond_1
    iget-object v11, p0, Lcom/android/hwcamera/settings/MenuController;->mOverridesForUser:Ljava/util/Map;

    invoke-static {v11}, Lcom/android/hwcamera/Util;->isEmptyCollection(Ljava/util/Map;)Z

    move-result v11

    if-nez v11, :cond_5

    iget-object v11, p0, Lcom/android/hwcamera/settings/MenuController;->mOverridesForUser:Ljava/util/Map;

    invoke-virtual {v7}, Lcom/android/hwcamera/MenuIconListPreference;->getKey()Ljava/lang/String;

    move-result-object v12

    invoke-interface {v11, v12}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_5

    const/4 v2, 0x1

    .line 215
    .local v2, isOverrideByUser:Z
    :goto_1
    if-eqz v2, :cond_6

    iget-object v11, p0, Lcom/android/hwcamera/settings/MenuController;->mOverridesForUser:Ljava/util/Map;

    invoke-virtual {v7}, Lcom/android/hwcamera/MenuIconListPreference;->getKey()Ljava/lang/String;

    move-result-object v12

    invoke-interface {v11, v12}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    move-object v10, v11

    .line 216
    .local v10, value:Ljava/lang/String;
    :goto_2
    invoke-virtual {v7, v10}, Lcom/android/hwcamera/MenuIconListPreference;->findIndexOfValue(Ljava/lang/String;)I

    move-result v1

    .line 217
    .local v1, index:I
    if-ltz v1, :cond_2

    invoke-virtual {v7, v10}, Lcom/android/hwcamera/MenuIconListPreference;->setValue(Ljava/lang/String;)V

    .line 218
    :cond_2
    if-eqz p1, :cond_3

    .line 219
    iget-object v11, p0, Lcom/android/hwcamera/settings/MenuController;->mPreferenceMap:Ljava/util/Map;

    invoke-interface {v11, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/hwcamera/settings/MenuItem;

    .line 220
    .local v3, item:Lcom/android/hwcamera/settings/MenuItem;
    if-eqz v3, :cond_3

    .line 221
    if-nez v2, :cond_7

    const/4 v11, 0x1

    :goto_3
    invoke-virtual {v3, v11}, Lcom/android/hwcamera/settings/MenuItem;->enableItem(Z)V

    .line 222
    invoke-direct {p0, v7}, Lcom/android/hwcamera/settings/MenuController;->hasEntries(Lcom/android/hwcamera/MenuIconListPreference;)Z

    move-result v11

    if-eqz v11, :cond_3

    invoke-virtual {p0, v7}, Lcom/android/hwcamera/settings/MenuController;->reloadPreference(Lcom/android/hwcamera/MenuIconListPreference;)V

    .line 226
    .end local v3           #item:Lcom/android/hwcamera/settings/MenuItem;
    :cond_3
    if-nez v8, :cond_4

    new-instance v8, Ljava/util/HashSet;

    .end local v8           #prefs:Ljava/util/Set;,"Ljava/util/Set<Lcom/android/hwcamera/MenuIconListPreference;>;"
    invoke-direct {v8}, Ljava/util/HashSet;-><init>()V

    .line 227
    .restart local v8       #prefs:Ljava/util/Set;,"Ljava/util/Set<Lcom/android/hwcamera/MenuIconListPreference;>;"
    :cond_4
    invoke-interface {v8, v7}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 214
    .end local v1           #index:I
    .end local v2           #isOverrideByUser:Z
    .end local v10           #value:Ljava/lang/String;
    :cond_5
    const/4 v2, 0x0

    goto :goto_1

    .line 215
    .restart local v2       #isOverrideByUser:Z
    :cond_6
    iget-object v11, p0, Lcom/android/hwcamera/settings/MenuController;->mOverrides:Ljava/util/Map;

    invoke-virtual {v7}, Lcom/android/hwcamera/MenuIconListPreference;->getKey()Ljava/lang/String;

    move-result-object v12

    invoke-interface {v11, v12}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/hwcamera/settings/MenuMutexConfigs$MenuMutexInfo;

    invoke-virtual {v11}, Lcom/android/hwcamera/settings/MenuMutexConfigs$MenuMutexInfo;->getMutexValue()Ljava/lang/String;

    move-result-object v10

    goto :goto_2

    .line 221
    .restart local v1       #index:I
    .restart local v3       #item:Lcom/android/hwcamera/settings/MenuItem;
    .restart local v10       #value:Ljava/lang/String;
    :cond_7
    const/4 v11, 0x0

    goto :goto_3

    .line 230
    .end local v1           #index:I
    .end local v2           #isOverrideByUser:Z
    .end local v3           #item:Lcom/android/hwcamera/settings/MenuItem;
    .end local v4           #key:Ljava/lang/String;
    .end local v10           #value:Ljava/lang/String;
    :cond_8
    invoke-static {v8}, Lcom/android/hwcamera/Util;->isEmptyCollection(Ljava/util/Collection;)Z

    move-result v11

    if-eqz v11, :cond_9

    move-object v9, v8

    .line 239
    .end local v0           #i$:Ljava/util/Iterator;
    .end local v7           #pref:Lcom/android/hwcamera/MenuIconListPreference;
    .end local v8           #prefs:Ljava/util/Set;,"Ljava/util/Set<Lcom/android/hwcamera/MenuIconListPreference;>;"
    .local v9, prefs:Ljava/util/Set;,"Ljava/util/Set<Lcom/android/hwcamera/MenuIconListPreference;>;"
    :goto_4
    return-object v9

    .line 232
    .end local v9           #prefs:Ljava/util/Set;,"Ljava/util/Set<Lcom/android/hwcamera/MenuIconListPreference;>;"
    .restart local v0       #i$:Ljava/util/Iterator;
    .restart local v7       #pref:Lcom/android/hwcamera/MenuIconListPreference;
    .restart local v8       #prefs:Ljava/util/Set;,"Ljava/util/Set<Lcom/android/hwcamera/MenuIconListPreference;>;"
    :cond_9
    invoke-interface {v8}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_a
    :goto_5
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_b

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/hwcamera/MenuIconListPreference;

    .line 233
    .local v6, pr:Lcom/android/hwcamera/MenuIconListPreference;
    iget-object v11, p0, Lcom/android/hwcamera/settings/MenuController;->mOverridesForUser:Ljava/util/Map;

    invoke-virtual {v6}, Lcom/android/hwcamera/MenuIconListPreference;->getKey()Ljava/lang/String;

    move-result-object v12

    invoke-interface {v11, v12}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_a

    .line 234
    iget-object v11, p0, Lcom/android/hwcamera/settings/MenuController;->mOverrides:Ljava/util/Map;

    invoke-virtual {v6}, Lcom/android/hwcamera/MenuIconListPreference;->getKey()Ljava/lang/String;

    move-result-object v12

    invoke-interface {v11, v12}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_5

    .end local v0           #i$:Ljava/util/Iterator;
    .end local v6           #pr:Lcom/android/hwcamera/MenuIconListPreference;
    .end local v7           #pref:Lcom/android/hwcamera/MenuIconListPreference;
    :cond_b
    move-object v9, v8

    .line 239
    .end local v8           #prefs:Ljava/util/Set;,"Ljava/util/Set<Lcom/android/hwcamera/MenuIconListPreference;>;"
    .restart local v9       #prefs:Ljava/util/Set;,"Ljava/util/Set<Lcom/android/hwcamera/MenuIconListPreference;>;"
    goto :goto_4
.end method

.method private filterOverrides(Ljava/util/Map;Ljava/util/Map;Z)Ljava/util/Map;
    .locals 6
    .parameter
    .parameter
    .parameter "isUpdateShootMode"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/hwcamera/settings/MenuMutexConfigs$MenuMutexInfo;",
            ">;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/hwcamera/settings/MenuMutexConfigs$MenuMutexInfo;",
            ">;Z)",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/hwcamera/settings/MenuMutexConfigs$MenuMutexInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 92
    .local p1, overrides:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Lcom/android/hwcamera/settings/MenuMutexConfigs$MenuMutexInfo;>;"
    .local p2, menuMutexCofigs:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Lcom/android/hwcamera/settings/MenuMutexConfigs$MenuMutexInfo;>;"
    invoke-static {p1}, Lcom/android/hwcamera/Util;->isEmptyCollection(Ljava/util/Map;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 110
    .end local p2           #menuMutexCofigs:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Lcom/android/hwcamera/settings/MenuMutexConfigs$MenuMutexInfo;>;"
    :goto_0
    return-object p2

    .line 93
    .restart local p2       #menuMutexCofigs:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Lcom/android/hwcamera/settings/MenuMutexConfigs$MenuMutexInfo;>;"
    :cond_0
    invoke-static {p2}, Lcom/android/hwcamera/Util;->isEmptyCollection(Ljava/util/Map;)Z

    move-result v5

    if-eqz v5, :cond_1

    const/4 p2, 0x0

    goto :goto_0

    .line 94
    :cond_1
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0, p2}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    .line 96
    .local v0, _menuMutexCofigs:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Lcom/android/hwcamera/settings/MenuMutexConfigs$MenuMutexInfo;>;"
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_2
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    .line 97
    .local v4, tempEntry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/hwcamera/settings/MenuMutexConfigs$MenuMutexInfo;>;"
    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 98
    .local v2, key:Ljava/lang/String;
    invoke-interface {p2, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 100
    if-nez p3, :cond_2

    .line 102
    invoke-interface {p1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/hwcamera/settings/MenuMutexConfigs$MenuMutexInfo;

    .line 103
    .local v3, overrideMutexInfo:Lcom/android/hwcamera/settings/MenuMutexConfigs$MenuMutexInfo;
    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/hwcamera/settings/MenuMutexConfigs$MenuMutexInfo;

    invoke-virtual {v5}, Lcom/android/hwcamera/settings/MenuMutexConfigs$MenuMutexInfo;->getMutexValue()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Lcom/android/hwcamera/settings/MenuMutexConfigs$MenuMutexInfo;->setMutexValue(Ljava/lang/String;)V

    .line 104
    invoke-interface {v0, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .end local v2           #key:Ljava/lang/String;
    .end local v3           #overrideMutexInfo:Lcom/android/hwcamera/settings/MenuMutexConfigs$MenuMutexInfo;
    .end local v4           #tempEntry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/hwcamera/settings/MenuMutexConfigs$MenuMutexInfo;>;"
    :cond_3
    move-object p2, v0

    .line 110
    goto :goto_0
.end method

.method private genItemsFromEnties(Lcom/android/hwcamera/MenuIconListPreference;)Ljava/util/List;
    .locals 5
    .parameter "pref"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/hwcamera/MenuIconListPreference;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/android/hwcamera/settings/MenuItem;",
            ">;"
        }
    .end annotation

    .prologue
    .line 295
    invoke-virtual {p1}, Lcom/android/hwcamera/MenuIconListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v0

    .line 296
    .local v0, enties:[Ljava/lang/CharSequence;
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 297
    .local v3, items:Ljava/util/List;,"Ljava/util/List<Lcom/android/hwcamera/settings/MenuItem;>;"
    const/4 v2, 0x0

    .line 298
    .local v2, item:Lcom/android/hwcamera/settings/MenuItem;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    array-length v4, v0

    if-ge v1, v4, :cond_1

    .line 299
    invoke-direct {p0, p1, v1}, Lcom/android/hwcamera/settings/MenuController;->makeItem(Lcom/android/hwcamera/MenuIconListPreference;I)Lcom/android/hwcamera/settings/MenuItem;

    move-result-object v2

    .line 300
    if-eqz v2, :cond_0

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 298
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 302
    :cond_1
    return-object v3
.end method

.method private genItemsFromPrefs(Lcom/android/hwcamera/MenuIconListPreference;)Ljava/util/List;
    .locals 7
    .parameter "pref"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/hwcamera/MenuIconListPreference;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/android/hwcamera/settings/MenuItem;",
            ">;"
        }
    .end annotation

    .prologue
    .line 306
    invoke-virtual {p1}, Lcom/android/hwcamera/MenuIconListPreference;->getPrefs()[Ljava/lang/CharSequence;

    move-result-object v3

    .line 307
    .local v3, prefs:[Ljava/lang/CharSequence;
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 308
    .local v2, items:Ljava/util/List;,"Ljava/util/List<Lcom/android/hwcamera/settings/MenuItem;>;"
    const/4 v1, 0x0

    .line 309
    .local v1, item:Lcom/android/hwcamera/settings/MenuItem;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    array-length v4, v3

    if-ge v0, v4, :cond_1

    .line 310
    aget-object v4, v3, v0

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x2

    invoke-direct {p0, v4, v5, v6}, Lcom/android/hwcamera/settings/MenuController;->genMenuItem(Ljava/lang/String;II)Lcom/android/hwcamera/settings/MenuItem;

    move-result-object v1

    .line 311
    if-eqz v1, :cond_0

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 309
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 313
    :cond_1
    return-object v2
.end method

.method private genMenuItem(Ljava/lang/String;II)Lcom/android/hwcamera/settings/MenuItem;
    .locals 7
    .parameter "prefkey"
    .parameter "menuType"
    .parameter "pos"

    .prologue
    .line 257
    iget-object v5, p0, Lcom/android/hwcamera/settings/MenuController;->mPreferenceGroup:Lcom/android/hwcamera/PreferenceGroup;

    invoke-virtual {v5, p1}, Lcom/android/hwcamera/PreferenceGroup;->findPreference(Ljava/lang/String;)Lcom/android/hwcamera/ListPreference;

    move-result-object v4

    check-cast v4, Lcom/android/hwcamera/MenuIconListPreference;

    .line 258
    .local v4, pref:Lcom/android/hwcamera/MenuIconListPreference;
    if-nez v4, :cond_1

    const/4 v1, 0x0

    .line 274
    :cond_0
    :goto_0
    return-object v1

    .line 261
    :cond_1
    invoke-virtual {v4}, Lcom/android/hwcamera/MenuIconListPreference;->getValue()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/android/hwcamera/MenuIconListPreference;->findIndexOfValue(Ljava/lang/String;)I

    move-result v0

    .line 262
    .local v0, index:I
    const/4 v5, 0x1

    invoke-direct {p0, v4, v0, v5}, Lcom/android/hwcamera/settings/MenuController;->makeItem(Lcom/android/hwcamera/MenuIconListPreference;IZ)Lcom/android/hwcamera/settings/MenuItem;

    move-result-object v1

    .line 263
    .local v1, item:Lcom/android/hwcamera/settings/MenuItem;
    invoke-virtual {v1, p2}, Lcom/android/hwcamera/settings/MenuItem;->setMenuType(I)V

    .line 264
    invoke-virtual {v1, p3}, Lcom/android/hwcamera/settings/MenuItem;->setPosition(I)V

    .line 266
    iget-object v5, p0, Lcom/android/hwcamera/settings/MenuController;->mOverrides:Ljava/util/Map;

    if-eqz v5, :cond_2

    iget-object v5, p0, Lcom/android/hwcamera/settings/MenuController;->mOverrides:Ljava/util/Map;

    invoke-virtual {v4}, Lcom/android/hwcamera/MenuIconListPreference;->getKey()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/hwcamera/settings/MenuMutexConfigs$MenuMutexInfo;

    .local v3, mutexInfo:Lcom/android/hwcamera/settings/MenuMutexConfigs$MenuMutexInfo;
    if-eqz v3, :cond_2

    .line 267
    invoke-virtual {v3}, Lcom/android/hwcamera/settings/MenuMutexConfigs$MenuMutexInfo;->getMutexType()I

    move-result v5

    invoke-direct {p0, v1, v5}, Lcom/android/hwcamera/settings/MenuController;->changeItemState(Lcom/android/hwcamera/settings/MenuItem;I)V

    .line 271
    .end local v3           #mutexInfo:Lcom/android/hwcamera/settings/MenuMutexConfigs$MenuMutexInfo;
    :cond_2
    iget-object v5, p0, Lcom/android/hwcamera/settings/MenuController;->mPreferenceMap:Ljava/util/Map;

    invoke-interface {v5, v4, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 272
    invoke-direct {p0, v4}, Lcom/android/hwcamera/settings/MenuController;->makeItems(Lcom/android/hwcamera/MenuIconListPreference;)Ljava/util/List;

    move-result-object v2

    .line 273
    .local v2, items:Ljava/util/List;,"Ljava/util/List<Lcom/android/hwcamera/settings/MenuItem;>;"
    if-eqz v2, :cond_0

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v5

    if-lez v5, :cond_0

    invoke-virtual {v1, v2}, Lcom/android/hwcamera/settings/MenuItem;->addItems(Ljava/util/List;)V

    goto :goto_0
.end method

.method private hasEntries(Lcom/android/hwcamera/MenuIconListPreference;)Z
    .locals 1
    .parameter "pref"

    .prologue
    .line 412
    invoke-virtual {p1}, Lcom/android/hwcamera/MenuIconListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/android/hwcamera/MenuIconListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v0

    array-length v0, v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private hasPrefs(Lcom/android/hwcamera/MenuIconListPreference;)Z
    .locals 1
    .parameter "pref"

    .prologue
    .line 416
    invoke-virtual {p1}, Lcom/android/hwcamera/MenuIconListPreference;->getPrefs()[Ljava/lang/CharSequence;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/android/hwcamera/MenuIconListPreference;->getPrefs()[Ljava/lang/CharSequence;

    move-result-object v0

    array-length v0, v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private hasValue([Ljava/lang/String;Ljava/lang/String;)Z
    .locals 7
    .parameter "keyvalues"
    .parameter "key"

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 243
    invoke-static {p1}, Lcom/android/hwcamera/Util;->isEmptyCollection([Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 248
    :cond_0
    :goto_0
    return v4

    .line 244
    :cond_1
    invoke-static {p2}, Lcom/android/hwcamera/Util;->isEmptyString(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_2

    move v4, v5

    goto :goto_0

    .line 245
    :cond_2
    move-object v0, p1

    .local v0, arr$:[Ljava/lang/String;
    array-length v2, v0

    .local v2, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_1
    if-ge v1, v2, :cond_0

    aget-object v3, v0, v1

    .line 246
    .local v3, value:Ljava/lang/String;
    if-eqz v3, :cond_3

    invoke-virtual {v3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    move v4, v5

    goto :goto_0

    .line 245
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method private isPhotoModule()Z
    .locals 1

    .prologue
    .line 439
    iget-object v0, p0, Lcom/android/hwcamera/settings/MenuController;->mContext:Landroid/content/Context;

    check-cast v0, Lcom/android/hwcamera/CameraActivity;

    invoke-virtual {v0}, Lcom/android/hwcamera/CameraActivity;->getCurrentModule()Lcom/android/hwcamera/CameraModule;

    move-result-object v0

    instance-of v0, v0, Lcom/android/hwcamera/PhotoModule;

    return v0
.end method

.method private makeItem(Lcom/android/hwcamera/MenuIconListPreference;I)Lcom/android/hwcamera/settings/MenuItem;
    .locals 1
    .parameter "pref"
    .parameter "index"

    .prologue
    .line 317
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/hwcamera/settings/MenuController;->makeItem(Lcom/android/hwcamera/MenuIconListPreference;IZ)Lcom/android/hwcamera/settings/MenuItem;

    move-result-object v0

    return-object v0
.end method

.method private makeItem(Lcom/android/hwcamera/MenuIconListPreference;IZ)Lcom/android/hwcamera/settings/MenuItem;
    .locals 9
    .parameter "pref"
    .parameter "index"
    .parameter "useSigleIcon"

    .prologue
    .line 321
    if-nez p1, :cond_0

    const/4 v5, 0x0

    .line 408
    :goto_0
    return-object v5

    .line 322
    :cond_0
    if-gez p2, :cond_8

    const/4 v0, 0x0

    .line 323
    .local v0, currentIndex:I
    :goto_1
    new-instance v5, Lcom/android/hwcamera/settings/MenuItem;

    invoke-direct {v5}, Lcom/android/hwcamera/settings/MenuItem;-><init>()V

    .line 324
    .local v5, item:Lcom/android/hwcamera/settings/MenuItem;
    invoke-virtual {p1}, Lcom/android/hwcamera/MenuIconListPreference;->getKey()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Lcom/android/hwcamera/settings/MenuItem;->setPrefKey(Ljava/lang/String;)V

    .line 325
    invoke-virtual {p1}, Lcom/android/hwcamera/MenuIconListPreference;->getTitle()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Lcom/android/hwcamera/settings/MenuItem;->setTitle(Ljava/lang/String;)V

    .line 327
    invoke-virtual {p1}, Lcom/android/hwcamera/MenuIconListPreference;->getContentDescription()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Lcom/android/hwcamera/settings/MenuItem;->setContentDescription(Ljava/lang/String;)V

    .line 329
    invoke-virtual {p1}, Lcom/android/hwcamera/MenuIconListPreference;->getIconIds()[I

    move-result-object v2

    .line 331
    .local v2, icons:[I
    const/4 v1, 0x0

    .line 333
    .local v1, icon:I
    if-eqz p3, :cond_1

    invoke-virtual {p1}, Lcom/android/hwcamera/MenuIconListPreference;->getSingleIcon()I

    move-result v8

    if-gtz v8, :cond_2

    :cond_1
    if-eqz v2, :cond_2

    array-length v8, v2

    if-ge v8, p2, :cond_9

    .line 334
    :cond_2
    const/4 v8, 0x1

    invoke-virtual {v5, v8}, Lcom/android/hwcamera/settings/MenuItem;->setUseSingleIcon(Z)V

    .line 335
    invoke-virtual {p1}, Lcom/android/hwcamera/MenuIconListPreference;->getSingleIcon()I

    move-result v1

    .line 342
    :cond_3
    :goto_2
    invoke-virtual {v5, v1}, Lcom/android/hwcamera/settings/MenuItem;->setIcon(I)V

    .line 344
    invoke-virtual {v5}, Lcom/android/hwcamera/settings/MenuItem;->isUseSingleIcon()Z

    move-result v8

    if-eqz v8, :cond_a

    .line 345
    invoke-virtual {v5}, Lcom/android/hwcamera/settings/MenuItem;->getIcon()I

    move-result v8

    invoke-virtual {v5, v8}, Lcom/android/hwcamera/settings/MenuItem;->setImage(I)V

    .line 357
    :goto_3
    invoke-virtual {p1}, Lcom/android/hwcamera/MenuIconListPreference;->getLargeIconIds()[I

    move-result-object v7

    .line 359
    .local v7, largeIcons:[I
    const/4 v6, 0x0

    .line 361
    .local v6, largeIcon:I
    if-eqz p3, :cond_4

    invoke-virtual {p1}, Lcom/android/hwcamera/MenuIconListPreference;->getSingleIcon()I

    move-result v8

    if-gtz v8, :cond_5

    :cond_4
    if-eqz v7, :cond_5

    array-length v8, v7

    if-ge v8, p2, :cond_d

    .line 362
    :cond_5
    invoke-virtual {p1}, Lcom/android/hwcamera/MenuIconListPreference;->getSingleIcon()I

    move-result v6

    .line 368
    :cond_6
    :goto_4
    invoke-virtual {v5, v6}, Lcom/android/hwcamera/settings/MenuItem;->setLargeIcon(I)V

    .line 370
    invoke-virtual {p1}, Lcom/android/hwcamera/MenuIconListPreference;->getChildViewType()I

    move-result v8

    invoke-virtual {v5, v8}, Lcom/android/hwcamera/settings/MenuItem;->setChildViewType(I)V

    .line 371
    invoke-virtual {p1}, Lcom/android/hwcamera/MenuIconListPreference;->getViewType()I

    move-result v8

    invoke-virtual {v5, v8}, Lcom/android/hwcamera/settings/MenuItem;->setViewType(I)V

    .line 372
    invoke-virtual {v5, v0}, Lcom/android/hwcamera/settings/MenuItem;->setIndex(I)V

    .line 373
    invoke-direct {p0, p1}, Lcom/android/hwcamera/settings/MenuController;->hasEntries(Lcom/android/hwcamera/MenuIconListPreference;)Z

    move-result v8

    if-eqz v8, :cond_7

    .line 374
    invoke-virtual {p1}, Lcom/android/hwcamera/MenuIconListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v8

    aget-object v8, v8, v0

    invoke-virtual {v8}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Lcom/android/hwcamera/settings/MenuItem;->setEntry(Ljava/lang/String;)V

    .line 375
    invoke-virtual {p1}, Lcom/android/hwcamera/MenuIconListPreference;->getEntryValues()[Ljava/lang/CharSequence;

    move-result-object v8

    aget-object v8, v8, v0

    invoke-virtual {v8}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Lcom/android/hwcamera/settings/MenuItem;->setEntryValue(Ljava/lang/String;)V

    .line 377
    :cond_7
    new-instance v8, Lcom/android/hwcamera/settings/MenuController$1;

    invoke-direct {v8, p0, p1, v0}, Lcom/android/hwcamera/settings/MenuController$1;-><init>(Lcom/android/hwcamera/settings/MenuController;Lcom/android/hwcamera/MenuIconListPreference;I)V

    invoke-virtual {v5, v8}, Lcom/android/hwcamera/settings/MenuItem;->setOnClickListener(Lcom/android/hwcamera/settings/MenuItem$OnClickListener;)V

    goto/16 :goto_0

    .end local v0           #currentIndex:I
    .end local v1           #icon:I
    .end local v2           #icons:[I
    .end local v5           #item:Lcom/android/hwcamera/settings/MenuItem;
    .end local v6           #largeIcon:I
    .end local v7           #largeIcons:[I
    :cond_8
    move v0, p2

    .line 322
    goto/16 :goto_1

    .line 337
    .restart local v0       #currentIndex:I
    .restart local v1       #icon:I
    .restart local v2       #icons:[I
    .restart local v5       #item:Lcom/android/hwcamera/settings/MenuItem;
    :cond_9
    invoke-static {v0, v2}, Lcom/android/hwcamera/Util;->checkArrayInbounds(I[I)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 339
    aget v1, v2, v0

    goto :goto_2

    .line 347
    :cond_a
    invoke-virtual {p1}, Lcom/android/hwcamera/MenuIconListPreference;->getImageIds()[I

    move-result-object v4

    .line 349
    .local v4, images:[I
    if-eqz v4, :cond_b

    array-length v8, v4

    if-ge v8, p2, :cond_c

    .line 350
    :cond_b
    invoke-virtual {p1}, Lcom/android/hwcamera/MenuIconListPreference;->getSingleIcon()I

    move-result v3

    .line 354
    .local v3, image:I
    :goto_5
    invoke-virtual {v5, v3}, Lcom/android/hwcamera/settings/MenuItem;->setImage(I)V

    goto :goto_3

    .line 352
    .end local v3           #image:I
    :cond_c
    aget v3, v4, v0

    .restart local v3       #image:I
    goto :goto_5

    .line 364
    .end local v3           #image:I
    .end local v4           #images:[I
    .restart local v6       #largeIcon:I
    .restart local v7       #largeIcons:[I
    :cond_d
    invoke-static {v0, v7}, Lcom/android/hwcamera/Util;->checkArrayInbounds(I[I)Z

    move-result v8

    if-eqz v8, :cond_6

    .line 366
    aget v6, v7, v0

    goto :goto_4
.end method

.method private makeItems(Lcom/android/hwcamera/MenuIconListPreference;)Ljava/util/List;
    .locals 2
    .parameter "pref"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/hwcamera/MenuIconListPreference;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/android/hwcamera/settings/MenuItem;",
            ">;"
        }
    .end annotation

    .prologue
    .line 286
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 288
    .local v0, items:Ljava/util/List;,"Ljava/util/List<Lcom/android/hwcamera/settings/MenuItem;>;"
    invoke-direct {p0, p1}, Lcom/android/hwcamera/settings/MenuController;->hasEntries(Lcom/android/hwcamera/MenuIconListPreference;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-direct {p0, p1}, Lcom/android/hwcamera/settings/MenuController;->genItemsFromEnties(Lcom/android/hwcamera/MenuIconListPreference;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 289
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/hwcamera/settings/MenuController;->hasPrefs(Lcom/android/hwcamera/MenuIconListPreference;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-direct {p0, p1}, Lcom/android/hwcamera/settings/MenuController;->genItemsFromPrefs(Lcom/android/hwcamera/MenuIconListPreference;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 291
    :cond_1
    return-object v0
.end method

.method private override(ILjava/lang/String;Ljava/lang/String;)Lcom/android/hwcamera/MenuIconListPreference;
    .locals 9
    .parameter "type"
    .parameter "key"
    .parameter "value"

    .prologue
    const/4 v4, 0x0

    .line 128
    iget-object v5, p0, Lcom/android/hwcamera/settings/MenuController;->mPreferenceGroup:Lcom/android/hwcamera/PreferenceGroup;

    if-nez v5, :cond_1

    .line 151
    :cond_0
    :goto_0
    return-object v4

    .line 130
    :cond_1
    iget-object v5, p0, Lcom/android/hwcamera/settings/MenuController;->mPreferenceGroup:Lcom/android/hwcamera/PreferenceGroup;

    invoke-virtual {v5, p2}, Lcom/android/hwcamera/PreferenceGroup;->findPreference(Ljava/lang/String;)Lcom/android/hwcamera/ListPreference;

    move-result-object v3

    check-cast v3, Lcom/android/hwcamera/MenuIconListPreference;

    .line 132
    .local v3, pref:Lcom/android/hwcamera/MenuIconListPreference;
    if-eqz v3, :cond_0

    .line 133
    invoke-static {p3}, Lcom/android/hwcamera/Util;->isEmptyString(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_6

    invoke-virtual {v3}, Lcom/android/hwcamera/MenuIconListPreference;->getValue()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6

    const/4 v1, 0x1

    .line 136
    .local v1, isTheSameValue:Z
    :goto_1
    const/4 v5, 0x3

    if-eq p1, v5, :cond_7

    .line 138
    iget-object v5, p0, Lcom/android/hwcamera/settings/MenuController;->mOverrides:Ljava/util/Map;

    invoke-virtual {v3}, Lcom/android/hwcamera/MenuIconListPreference;->getKey()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2

    iget-object v5, p0, Lcom/android/hwcamera/settings/MenuController;->mOverrides:Ljava/util/Map;

    invoke-virtual {v3}, Lcom/android/hwcamera/MenuIconListPreference;->getKey()Ljava/lang/String;

    move-result-object v6

    new-instance v7, Lcom/android/hwcamera/settings/MenuMutexConfigs$MenuMutexInfo;

    invoke-virtual {v3}, Lcom/android/hwcamera/MenuIconListPreference;->getValue()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8, p1}, Lcom/android/hwcamera/settings/MenuMutexConfigs$MenuMutexInfo;-><init>(Ljava/lang/String;I)V

    invoke-interface {v5, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 142
    :cond_2
    :goto_2
    invoke-virtual {v3, p3}, Lcom/android/hwcamera/MenuIconListPreference;->findIndexOfValue(Ljava/lang/String;)I

    move-result v0

    .line 143
    .local v0, index:I
    if-ltz v0, :cond_3

    invoke-virtual {v3, p3}, Lcom/android/hwcamera/MenuIconListPreference;->setValue(Ljava/lang/String;)V

    .line 144
    :cond_3
    iget-object v5, p0, Lcom/android/hwcamera/settings/MenuController;->mPreferenceMap:Ljava/util/Map;

    invoke-interface {v5, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/hwcamera/settings/MenuItem;

    .line 145
    .local v2, item:Lcom/android/hwcamera/settings/MenuItem;
    if-eqz v2, :cond_4

    .line 147
    invoke-direct {p0, v2, p1}, Lcom/android/hwcamera/settings/MenuController;->changeItemState(Lcom/android/hwcamera/settings/MenuItem;I)V

    .line 148
    invoke-direct {p0, v3}, Lcom/android/hwcamera/settings/MenuController;->hasEntries(Lcom/android/hwcamera/MenuIconListPreference;)Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-virtual {p0, v3}, Lcom/android/hwcamera/settings/MenuController;->reloadPreference(Lcom/android/hwcamera/MenuIconListPreference;)V

    .line 151
    :cond_4
    if-eqz v1, :cond_5

    move-object v3, v4

    .end local v3           #pref:Lcom/android/hwcamera/MenuIconListPreference;
    :cond_5
    move-object v4, v3

    goto :goto_0

    .line 133
    .end local v0           #index:I
    .end local v1           #isTheSameValue:Z
    .end local v2           #item:Lcom/android/hwcamera/settings/MenuItem;
    .restart local v3       #pref:Lcom/android/hwcamera/MenuIconListPreference;
    :cond_6
    const/4 v1, 0x0

    goto :goto_1

    .line 140
    .restart local v1       #isTheSameValue:Z
    :cond_7
    iget-object v5, p0, Lcom/android/hwcamera/settings/MenuController;->mOverrides:Ljava/util/Map;

    invoke-virtual {v3}, Lcom/android/hwcamera/MenuIconListPreference;->getKey()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    iget-object v5, p0, Lcom/android/hwcamera/settings/MenuController;->mOverrides:Ljava/util/Map;

    invoke-virtual {v3}, Lcom/android/hwcamera/MenuIconListPreference;->getKey()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2
.end method

.method private overrideMenuMutexConfigs(Ljava/util/Map;)Ljava/util/List;
    .locals 8
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/hwcamera/settings/MenuMutexConfigs$MenuMutexInfo;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Lcom/android/hwcamera/MenuIconListPreference;",
            ">;"
        }
    .end annotation

    .prologue
    .line 114
    .local p1, menuMutexCofigs:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Lcom/android/hwcamera/settings/MenuMutexConfigs$MenuMutexInfo;>;"
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v5

    invoke-static {v5}, Lcom/android/hwcamera/Util;->isEmptyCollection(Ljava/util/Collection;)Z

    move-result v5

    if-eqz v5, :cond_2

    :cond_0
    const/4 v4, 0x0

    .line 124
    :cond_1
    return-object v4

    .line 115
    :cond_2
    const/4 v4, 0x0

    .line 116
    .local v4, prefs:Ljava/util/List;,"Ljava/util/List<Lcom/android/hwcamera/MenuIconListPreference;>;"
    const/4 v3, 0x0

    .line 117
    .local v3, pref:Lcom/android/hwcamera/MenuIconListPreference;
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    .line 118
    .local v1, entrySet:Ljava/util/Set;,"Ljava/util/Set<Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/hwcamera/settings/MenuMutexConfigs$MenuMutexInfo;>;>;"
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :cond_3
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 119
    .local v0, entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/hwcamera/settings/MenuMutexConfigs$MenuMutexInfo;>;"
    if-eqz v0, :cond_3

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    if-eqz v5, :cond_3

    .line 120
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/hwcamera/settings/MenuMutexConfigs$MenuMutexInfo;

    invoke-virtual {v5}, Lcom/android/hwcamera/settings/MenuMutexConfigs$MenuMutexInfo;->getMutexType()I

    move-result v7

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/hwcamera/settings/MenuMutexConfigs$MenuMutexInfo;

    invoke-virtual {v6}, Lcom/android/hwcamera/settings/MenuMutexConfigs$MenuMutexInfo;->getMutexValue()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v7, v5, v6}, Lcom/android/hwcamera/settings/MenuController;->override(ILjava/lang/String;Ljava/lang/String;)Lcom/android/hwcamera/MenuIconListPreference;

    move-result-object v3

    .line 121
    if-nez v4, :cond_4

    new-instance v4, Ljava/util/ArrayList;

    .end local v4           #prefs:Ljava/util/List;,"Ljava/util/List<Lcom/android/hwcamera/MenuIconListPreference;>;"
    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 122
    .restart local v4       #prefs:Ljava/util/List;,"Ljava/util/List<Lcom/android/hwcamera/MenuIconListPreference;>;"
    :cond_4
    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method private overrideSettings(Ljava/lang/String;Z)V
    .locals 9
    .parameter "menuMutexConfigsKey"
    .parameter "isUpdateShootMode"

    .prologue
    const/4 v2, 0x0

    .line 445
    if-eqz p2, :cond_0

    const/4 v7, 0x1

    invoke-direct {p0, v7, v2}, Lcom/android/hwcamera/settings/MenuController;->clearOverrideSettings(Z[Ljava/lang/String;)Ljava/util/Set;

    move-result-object v2

    .line 448
    .local v2, prefs:Ljava/util/Set;,"Ljava/util/Set<Lcom/android/hwcamera/MenuIconListPreference;>;"
    :cond_0
    const/4 v1, 0x0

    .line 449
    .local v1, menuMutexCofigs:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Lcom/android/hwcamera/settings/MenuMutexConfigs$MenuMutexInfo;>;"
    const/4 v6, 0x0

    .line 450
    .local v6, tempMenuMutexConfigsKey:Ljava/lang/String;
    const/4 v5, 0x0

    .line 452
    .local v5, tempMenuMutexCofigs:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Lcom/android/hwcamera/settings/MenuMutexConfigs$MenuMutexInfo;>;"
    const-string v7, "pref_camera_scenemode_key"

    invoke-virtual {p1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_1

    const-string v7, "single"

    invoke-virtual {p1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 453
    :cond_1
    iget-object v7, p0, Lcom/android/hwcamera/settings/MenuController;->mPreferenceGroup:Lcom/android/hwcamera/PreferenceGroup;

    const-string v8, "pref_camera_scenemode_key"

    invoke-virtual {v7, v8}, Lcom/android/hwcamera/PreferenceGroup;->findPreference(Ljava/lang/String;)Lcom/android/hwcamera/ListPreference;

    move-result-object v4

    check-cast v4, Lcom/android/hwcamera/MenuIconListPreference;

    .line 454
    .local v4, scene_pref:Lcom/android/hwcamera/MenuIconListPreference;
    if-eqz v4, :cond_2

    .line 455
    invoke-virtual {v4}, Lcom/android/hwcamera/MenuIconListPreference;->getValue()Ljava/lang/String;

    move-result-object v7

    const-string v8, "auto"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_6

    .line 456
    const-string v6, "scenemode-auto"

    .line 463
    .end local v4           #scene_pref:Lcom/android/hwcamera/MenuIconListPreference;
    :cond_2
    :goto_0
    if-eqz v6, :cond_4

    .line 464
    invoke-static {v6}, Lcom/android/hwcamera/settings/MenuMutexConfigs;->getMutexConfigs(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v5

    .line 465
    if-eqz v5, :cond_4

    .line 466
    invoke-direct {p0, v5}, Lcom/android/hwcamera/settings/MenuController;->overrideMenuMutexConfigs(Ljava/util/Map;)Ljava/util/List;

    move-result-object v3

    .line 467
    .local v3, scenePrefList:Ljava/util/List;,"Ljava/util/List<Lcom/android/hwcamera/MenuIconListPreference;>;"
    invoke-static {v3}, Lcom/android/hwcamera/Util;->isEmptyCollection(Ljava/util/Collection;)Z

    move-result v7

    if-nez v7, :cond_4

    .line 468
    invoke-static {v2}, Lcom/android/hwcamera/Util;->isEmptyCollection(Ljava/util/Collection;)Z

    move-result v7

    if-eqz v7, :cond_3

    new-instance v2, Ljava/util/HashSet;

    .end local v2           #prefs:Ljava/util/Set;,"Ljava/util/Set<Lcom/android/hwcamera/MenuIconListPreference;>;"
    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    .line 469
    .restart local v2       #prefs:Ljava/util/Set;,"Ljava/util/Set<Lcom/android/hwcamera/MenuIconListPreference;>;"
    :cond_3
    invoke-interface {v2, v3}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 474
    .end local v3           #scenePrefList:Ljava/util/List;,"Ljava/util/List<Lcom/android/hwcamera/MenuIconListPreference;>;"
    :cond_4
    invoke-static {p1}, Lcom/android/hwcamera/settings/MenuMutexConfigs;->getMutexConfigs(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v1

    if-nez v1, :cond_7

    .line 475
    invoke-static {v2}, Lcom/android/hwcamera/Util;->isEmptyCollection(Ljava/util/Collection;)Z

    move-result v7

    if-nez v7, :cond_5

    invoke-virtual {p0, v2}, Lcom/android/hwcamera/settings/MenuController;->onSettingsChanged(Ljava/util/Set;)V

    .line 492
    :cond_5
    :goto_1
    return-void

    .line 458
    .restart local v4       #scene_pref:Lcom/android/hwcamera/MenuIconListPreference;
    :cond_6
    const-string v6, "scenemode-others"

    goto :goto_0

    .line 480
    .end local v4           #scene_pref:Lcom/android/hwcamera/MenuIconListPreference;
    :cond_7
    iget-object v7, p0, Lcom/android/hwcamera/settings/MenuController;->mOverrides:Ljava/util/Map;

    invoke-direct {p0, v7, v1, p2}, Lcom/android/hwcamera/settings/MenuController;->filterOverrides(Ljava/util/Map;Ljava/util/Map;Z)Ljava/util/Map;

    move-result-object v1

    .line 484
    invoke-direct {p0, v1}, Lcom/android/hwcamera/settings/MenuController;->overrideMenuMutexConfigs(Ljava/util/Map;)Ljava/util/List;

    move-result-object v0

    .line 486
    .local v0, _prefs:Ljava/util/List;,"Ljava/util/List<Lcom/android/hwcamera/MenuIconListPreference;>;"
    invoke-static {v0}, Lcom/android/hwcamera/Util;->isEmptyCollection(Ljava/util/Collection;)Z

    move-result v7

    if-nez v7, :cond_9

    .line 487
    invoke-static {v2}, Lcom/android/hwcamera/Util;->isEmptyCollection(Ljava/util/Collection;)Z

    move-result v7

    if-eqz v7, :cond_8

    new-instance v2, Ljava/util/HashSet;

    .end local v2           #prefs:Ljava/util/Set;,"Ljava/util/Set<Lcom/android/hwcamera/MenuIconListPreference;>;"
    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    .line 488
    .restart local v2       #prefs:Ljava/util/Set;,"Ljava/util/Set<Lcom/android/hwcamera/MenuIconListPreference;>;"
    :cond_8
    invoke-interface {v2, v0}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 491
    :cond_9
    invoke-static {v2}, Lcom/android/hwcamera/Util;->isEmptyCollection(Ljava/util/Collection;)Z

    move-result v7

    if-nez v7, :cond_5

    invoke-virtual {p0, v2}, Lcom/android/hwcamera/settings/MenuController;->onSettingsChanged(Ljava/util/Set;)V

    goto :goto_1
.end method


# virtual methods
.method protected addItem(Ljava/lang/String;II)V
    .locals 2
    .parameter "prefkey"
    .parameter "menuType"
    .parameter "pos"

    .prologue
    .line 252
    invoke-direct {p0, p1, p2, p3}, Lcom/android/hwcamera/settings/MenuController;->genMenuItem(Ljava/lang/String;II)Lcom/android/hwcamera/settings/MenuItem;

    move-result-object v0

    .line 253
    .local v0, item:Lcom/android/hwcamera/settings/MenuItem;
    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/android/hwcamera/settings/MenuController;->mMenuInflater:Lcom/android/hwcamera/settings/MenuInflater;

    invoke-virtual {v1, v0}, Lcom/android/hwcamera/settings/MenuInflater;->inflaterItem(Lcom/android/hwcamera/settings/MenuItem;)V

    .line 254
    :cond_0
    return-void
.end method

.method public clearOverrideSettings()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 195
    iget-object v0, p0, Lcom/android/hwcamera/settings/MenuController;->mOverridesForUser:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 196
    new-array v0, v1, [Ljava/lang/String;

    invoke-direct {p0, v1, v0}, Lcom/android/hwcamera/settings/MenuController;->clearOverrideSettings(Z[Ljava/lang/String;)Ljava/util/Set;

    .line 197
    return-void
.end method

.method public varargs clearOverrideSettings([Ljava/lang/String;)V
    .locals 7
    .parameter "keyvalues"

    .prologue
    const/4 v6, 0x0

    .line 172
    const/4 v2, 0x0

    .line 173
    .local v2, pref:Lcom/android/hwcamera/MenuIconListPreference;
    iget-object v4, p0, Lcom/android/hwcamera/settings/MenuController;->mPreferenceGroup:Lcom/android/hwcamera/PreferenceGroup;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/android/hwcamera/settings/MenuController;->mPreferenceGroup:Lcom/android/hwcamera/PreferenceGroup;

    const-string v5, "pref_camera_shooting_mode_key"

    invoke-virtual {v4, v5}, Lcom/android/hwcamera/PreferenceGroup;->findPreference(Ljava/lang/String;)Lcom/android/hwcamera/ListPreference;

    move-result-object v2

    .end local v2           #pref:Lcom/android/hwcamera/MenuIconListPreference;
    check-cast v2, Lcom/android/hwcamera/MenuIconListPreference;

    .line 174
    .restart local v2       #pref:Lcom/android/hwcamera/MenuIconListPreference;
    :cond_0
    const/4 v0, 0x0

    .line 175
    .local v0, configs:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Lcom/android/hwcamera/settings/MenuMutexConfigs$MenuMutexInfo;>;"
    if-eqz v2, :cond_1

    invoke-virtual {v2}, Lcom/android/hwcamera/MenuIconListPreference;->getValue()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/android/hwcamera/settings/MenuMutexConfigs;->getMutexConfigs(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v0

    .line 177
    :cond_1
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    array-length v4, p1

    if-ge v1, v4, :cond_4

    .line 179
    iget-object v4, p0, Lcom/android/hwcamera/settings/MenuController;->mOverridesForUser:Ljava/util/Map;

    aget-object v5, p1, v1

    invoke-interface {v4, v5}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 180
    iget-object v4, p0, Lcom/android/hwcamera/settings/MenuController;->mOverridesForUser:Ljava/util/Map;

    aget-object v5, p1, v1

    invoke-interface {v4, v5}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 184
    :goto_1
    if-eqz v0, :cond_2

    aget-object v4, p1, v1

    invoke-interface {v0, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 185
    aput-object v6, p1, v1

    .line 177
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 182
    :cond_3
    aput-object v6, p1, v1

    goto :goto_1

    .line 189
    :cond_4
    const/4 v4, 0x1

    invoke-direct {p0, v4, p1}, Lcom/android/hwcamera/settings/MenuController;->clearOverrideSettings(Z[Ljava/lang/String;)Ljava/util/Set;

    move-result-object v3

    .line 190
    .local v3, prefs:Ljava/util/Set;,"Ljava/util/Set<Lcom/android/hwcamera/MenuIconListPreference;>;"
    invoke-static {v3}, Lcom/android/hwcamera/Util;->isEmptyCollection(Ljava/util/Collection;)Z

    move-result v4

    if-nez v4, :cond_5

    invoke-virtual {p0, v3}, Lcom/android/hwcamera/settings/MenuController;->onSettingsChanged(Ljava/util/Set;)V

    .line 191
    :cond_5
    return-void
.end method

.method public getMenuItem(Ljava/lang/String;)Lcom/android/hwcamera/settings/MenuItem;
    .locals 2
    .parameter "key"

    .prologue
    .line 588
    iget-object v1, p0, Lcom/android/hwcamera/settings/MenuController;->mPreferenceGroup:Lcom/android/hwcamera/PreferenceGroup;

    invoke-virtual {v1, p1}, Lcom/android/hwcamera/PreferenceGroup;->findPreference(Ljava/lang/String;)Lcom/android/hwcamera/ListPreference;

    move-result-object v0

    check-cast v0, Lcom/android/hwcamera/MenuIconListPreference;

    .line 589
    .local v0, pref:Lcom/android/hwcamera/MenuIconListPreference;
    iget-object v1, p0, Lcom/android/hwcamera/settings/MenuController;->mPreferenceMap:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/hwcamera/settings/MenuItem;

    return-object v1
.end method

.method public init()V
    .locals 4

    .prologue
    const/4 v3, 0x2

    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 528
    iget-object v0, p0, Lcom/android/hwcamera/settings/MenuController;->mContext:Landroid/content/Context;

    check-cast v0, Lcom/android/hwcamera/CameraActivity;

    invoke-virtual {v0}, Lcom/android/hwcamera/CameraActivity;->isPortraitLocked()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 529
    const-string v0, "pref_camera_shooting_mode_key"

    invoke-direct {p0, v0, v2}, Lcom/android/hwcamera/settings/MenuController;->addMainItem(Ljava/lang/String;I)V

    .line 530
    const-string v0, "pref_camera_flashmode_key"

    invoke-direct {p0, v0, v1}, Lcom/android/hwcamera/settings/MenuController;->addMainItem(Ljava/lang/String;I)V

    .line 531
    const-string v0, "pref_camera_front_flashmode_key"

    invoke-direct {p0, v0, v1}, Lcom/android/hwcamera/settings/MenuController;->addMainItem(Ljava/lang/String;I)V

    .line 532
    const-string v0, "pref_camera_panorama_direction_key"

    invoke-direct {p0, v0, v1}, Lcom/android/hwcamera/settings/MenuController;->addMainItem(Ljava/lang/String;I)V

    .line 534
    invoke-static {}, Lcom/android/hwcamera/Util;->isSimpleUiOn()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 535
    const-string v0, "pref_camera_id_key"

    invoke-direct {p0, v0, v3}, Lcom/android/hwcamera/settings/MenuController;->addMainItem(Ljava/lang/String;I)V

    .line 555
    :goto_0
    return-void

    .line 537
    :cond_0
    const-string v0, "pref_camera_id_key"

    invoke-direct {p0, v0, v1}, Lcom/android/hwcamera/settings/MenuController;->addMainItem(Ljava/lang/String;I)V

    .line 538
    const-string v0, "pref_camera_tab_key"

    invoke-direct {p0, v0, v3}, Lcom/android/hwcamera/settings/MenuController;->addMainItem(Ljava/lang/String;I)V

    goto :goto_0

    .line 543
    :cond_1
    invoke-static {}, Lcom/android/hwcamera/Util;->isSimpleUiOn()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 544
    const-string v0, "pref_camera_id_key"

    invoke-direct {p0, v0, v2}, Lcom/android/hwcamera/settings/MenuController;->addMainItem(Ljava/lang/String;I)V

    .line 550
    :goto_1
    const-string v0, "pref_camera_flashmode_key"

    invoke-direct {p0, v0, v1}, Lcom/android/hwcamera/settings/MenuController;->addMainItem(Ljava/lang/String;I)V

    .line 551
    const-string v0, "pref_camera_front_flashmode_key"

    invoke-direct {p0, v0, v1}, Lcom/android/hwcamera/settings/MenuController;->addMainItem(Ljava/lang/String;I)V

    .line 552
    const-string v0, "pref_camera_panorama_direction_key"

    invoke-direct {p0, v0, v1}, Lcom/android/hwcamera/settings/MenuController;->addMainItem(Ljava/lang/String;I)V

    .line 553
    const-string v0, "pref_camera_shooting_mode_key"

    invoke-direct {p0, v0, v3}, Lcom/android/hwcamera/settings/MenuController;->addMainItem(Ljava/lang/String;I)V

    goto :goto_0

    .line 546
    :cond_2
    const-string v0, "pref_camera_tab_key"

    invoke-direct {p0, v0, v2}, Lcom/android/hwcamera/settings/MenuController;->addMainItem(Ljava/lang/String;I)V

    .line 547
    const-string v0, "pref_camera_id_key"

    invoke-direct {p0, v0, v1}, Lcom/android/hwcamera/settings/MenuController;->addMainItem(Ljava/lang/String;I)V

    goto :goto_1
.end method

.method public initialize(I)V
    .locals 3
    .parameter "mOrientation"

    .prologue
    .line 60
    iget-object v1, p0, Lcom/android/hwcamera/settings/MenuController;->mPreferenceGroup:Lcom/android/hwcamera/PreferenceGroup;

    if-nez v1, :cond_0

    .line 74
    :goto_0
    return-void

    .line 63
    :cond_0
    iget-object v1, p0, Lcom/android/hwcamera/settings/MenuController;->mOverridesForUser:Ljava/util/Map;

    invoke-static {v1}, Lcom/android/hwcamera/Util;->isEmptyCollection(Ljava/util/Map;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 64
    iget-object v1, p0, Lcom/android/hwcamera/settings/MenuController;->mOverrides:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->clear()V

    .line 72
    :cond_1
    iget-object v1, p0, Lcom/android/hwcamera/settings/MenuController;->mPreferenceGroup:Lcom/android/hwcamera/PreferenceGroup;

    invoke-virtual {v1}, Lcom/android/hwcamera/PreferenceGroup;->reloadValue()V

    .line 73
    iget-object v1, p0, Lcom/android/hwcamera/settings/MenuController;->mPreferenceGroup:Lcom/android/hwcamera/PreferenceGroup;

    invoke-virtual {p0, v1, p1}, Lcom/android/hwcamera/settings/MenuController;->initialize(Lcom/android/hwcamera/PreferenceGroup;I)V

    goto :goto_0

    .line 66
    :cond_2
    iget-object v1, p0, Lcom/android/hwcamera/settings/MenuController;->mOverrides:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 67
    .local v0, it:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/String;>;"
    :cond_3
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 68
    iget-object v1, p0, Lcom/android/hwcamera/settings/MenuController;->mOverridesForUser:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    goto :goto_1
.end method

.method public initialize(Lcom/android/hwcamera/PreferenceGroup;I)V
    .locals 3
    .parameter "mPreferenceGroup"
    .parameter "mOrientation"

    .prologue
    .line 77
    iput-object p1, p0, Lcom/android/hwcamera/settings/MenuController;->mPreferenceGroup:Lcom/android/hwcamera/PreferenceGroup;

    .line 78
    iget-object v1, p0, Lcom/android/hwcamera/settings/MenuController;->mPreferenceMap:Ljava/util/Map;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/hwcamera/settings/MenuController;->mPreferenceMap:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->clear()V

    .line 79
    :cond_0
    iget-object v1, p0, Lcom/android/hwcamera/settings/MenuController;->mMenuInflater:Lcom/android/hwcamera/settings/MenuInflater;

    if-nez v1, :cond_1

    new-instance v1, Lcom/android/hwcamera/settings/MenuInflater;

    iget-object v2, p0, Lcom/android/hwcamera/settings/MenuController;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/android/hwcamera/settings/MenuInflater;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/hwcamera/settings/MenuController;->mMenuInflater:Lcom/android/hwcamera/settings/MenuInflater;

    .line 80
    :cond_1
    iget-object v1, p0, Lcom/android/hwcamera/settings/MenuController;->mMenuInflater:Lcom/android/hwcamera/settings/MenuInflater;

    invoke-virtual {v1, p2}, Lcom/android/hwcamera/settings/MenuInflater;->initialize(I)V

    .line 82
    const-string v1, "pref_camera_shooting_mode_key"

    invoke-virtual {p1, v1}, Lcom/android/hwcamera/PreferenceGroup;->findPreference(Ljava/lang/String;)Lcom/android/hwcamera/ListPreference;

    move-result-object v0

    check-cast v0, Lcom/android/hwcamera/MenuIconListPreference;

    .line 84
    .local v0, pref:Lcom/android/hwcamera/MenuIconListPreference;
    if-eqz v0, :cond_2

    invoke-direct {p0}, Lcom/android/hwcamera/settings/MenuController;->isPhotoModule()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {v0}, Lcom/android/hwcamera/MenuIconListPreference;->getValue()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-direct {p0, v1, v2}, Lcom/android/hwcamera/settings/MenuController;->overrideSettings(Ljava/lang/String;Z)V

    .line 86
    :cond_2
    invoke-virtual {p0}, Lcom/android/hwcamera/settings/MenuController;->init()V

    .line 87
    return-void
.end method

.method public isMenuOpen()Z
    .locals 1

    .prologue
    .line 569
    iget-object v0, p0, Lcom/android/hwcamera/settings/MenuController;->mMenuInflater:Lcom/android/hwcamera/settings/MenuInflater;

    invoke-virtual {v0}, Lcom/android/hwcamera/settings/MenuInflater;->isMenuOpen()Z

    move-result v0

    return v0
.end method

.method public onOrientationChanged(I)V
    .locals 1
    .parameter "mOrientation"

    .prologue
    .line 577
    iget-object v0, p0, Lcom/android/hwcamera/settings/MenuController;->mMenuInflater:Lcom/android/hwcamera/settings/MenuInflater;

    invoke-virtual {v0, p1}, Lcom/android/hwcamera/settings/MenuInflater;->onOrientationChanged(I)V

    .line 578
    return-void
.end method

.method protected onSettingChanged(Lcom/android/hwcamera/MenuIconListPreference;)V
    .locals 3
    .parameter "pref"

    .prologue
    const/4 v2, 0x0

    .line 425
    iget-object v0, p0, Lcom/android/hwcamera/settings/MenuController;->mPreferenceChangedListener:Lcom/android/hwcamera/CameraPreference$OnPreferenceChangedListener;

    if-eqz v0, :cond_2

    .line 426
    const-string v0, "pref_camera_shooting_mode_key"

    invoke-virtual {p1}, Lcom/android/hwcamera/MenuIconListPreference;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 428
    invoke-direct {p0}, Lcom/android/hwcamera/settings/MenuController;->isPhotoModule()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/android/hwcamera/MenuIconListPreference;->getValue()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/android/hwcamera/settings/MenuController;->overrideSettings(Ljava/lang/String;Z)V

    .line 433
    :cond_0
    :goto_0
    const-string v0, "pref_camera_id_key"

    invoke-virtual {p1}, Lcom/android/hwcamera/MenuIconListPreference;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    new-array v0, v2, [Ljava/lang/String;

    invoke-direct {p0, v2, v0}, Lcom/android/hwcamera/settings/MenuController;->clearOverrideSettings(Z[Ljava/lang/String;)Ljava/util/Set;

    .line 434
    :cond_1
    iget-object v0, p0, Lcom/android/hwcamera/settings/MenuController;->mPreferenceChangedListener:Lcom/android/hwcamera/CameraPreference$OnPreferenceChangedListener;

    invoke-interface {v0, p1}, Lcom/android/hwcamera/CameraPreference$OnPreferenceChangedListener;->onSharedPreferenceChanged(Lcom/android/hwcamera/CameraPreference;)V

    .line 436
    :cond_2
    return-void

    .line 431
    :cond_3
    invoke-virtual {p1}, Lcom/android/hwcamera/MenuIconListPreference;->getKey()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, v2}, Lcom/android/hwcamera/settings/MenuController;->overrideSettings(Ljava/lang/String;Z)V

    goto :goto_0
.end method

.method protected onSettingsChanged(Ljava/util/Set;)V
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Lcom/android/hwcamera/MenuIconListPreference;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 522
    .local p1, prefs:Ljava/util/Set;,"Ljava/util/Set<Lcom/android/hwcamera/MenuIconListPreference;>;"
    iget-object v0, p0, Lcom/android/hwcamera/settings/MenuController;->mPreferenceChangedListener:Lcom/android/hwcamera/CameraPreference$OnPreferenceChangedListener;

    if-eqz v0, :cond_0

    .line 523
    iget-object v0, p0, Lcom/android/hwcamera/settings/MenuController;->mPreferenceChangedListener:Lcom/android/hwcamera/CameraPreference$OnPreferenceChangedListener;

    invoke-static {p1}, Lcom/android/hwcamera/Util;->listToSet(Ljava/util/Set;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/android/hwcamera/CameraPreference$OnPreferenceChangedListener;->onSharedPreferencesChanged(Ljava/util/List;)V

    .line 525
    :cond_0
    return-void
.end method

.method public varargs overrideSettings(Z[Ljava/lang/String;)V
    .locals 7
    .parameter "enable"
    .parameter "keyvalues"

    .prologue
    const/4 v3, 0x3

    const/4 v4, 0x1

    .line 496
    iget-object v2, p0, Lcom/android/hwcamera/settings/MenuController;->mPreferenceGroup:Lcom/android/hwcamera/PreferenceGroup;

    if-nez v2, :cond_1

    .line 519
    :cond_0
    return-void

    .line 498
    :cond_1
    array-length v2, p2

    rem-int/lit8 v2, v2, 0x2

    if-eqz v2, :cond_2

    .line 499
    new-instance v2, Ljava/lang/IllegalArgumentException;

    invoke-direct {v2}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v2

    .line 501
    :cond_2
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    array-length v2, p2

    if-ge v0, v2, :cond_0

    .line 504
    iget-object v2, p0, Lcom/android/hwcamera/settings/MenuController;->mOverridesForUser:Ljava/util/Map;

    aget-object v5, p2, v0

    invoke-interface {v2, v5}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/android/hwcamera/settings/MenuController;->mOverridesForUser:Ljava/util/Map;

    aget-object v5, p2, v0

    invoke-interface {v2, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    add-int/lit8 v5, v0, 0x1

    aget-object v5, p2, v5

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 501
    :cond_3
    :goto_1
    add-int/lit8 v0, v0, 0x2

    goto :goto_0

    .line 506
    :cond_4
    iget-object v2, p0, Lcom/android/hwcamera/settings/MenuController;->mOverrides:Ljava/util/Map;

    aget-object v5, p2, v0

    invoke-interface {v2, v5}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    iget-object v2, p0, Lcom/android/hwcamera/settings/MenuController;->mOverridesForUser:Ljava/util/Map;

    aget-object v5, p2, v0

    invoke-interface {v2, v5}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_6

    .line 507
    iget-object v2, p0, Lcom/android/hwcamera/settings/MenuController;->mOverrides:Ljava/util/Map;

    aget-object v5, p2, v0

    invoke-interface {v2, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/hwcamera/settings/MenuMutexConfigs$MenuMutexInfo;

    .line 508
    .local v1, info:Lcom/android/hwcamera/settings/MenuMutexConfigs$MenuMutexInfo;
    add-int/lit8 v2, v0, 0x1

    aget-object v2, p2, v2

    invoke-virtual {v1, v2}, Lcom/android/hwcamera/settings/MenuMutexConfigs$MenuMutexInfo;->setMutexValue(Ljava/lang/String;)V

    .line 509
    if-eqz p1, :cond_5

    move v2, v3

    :goto_2
    invoke-virtual {v1, v2}, Lcom/android/hwcamera/settings/MenuMutexConfigs$MenuMutexInfo;->setMutexType(I)V

    .line 510
    if-nez p1, :cond_3

    iget-object v2, p0, Lcom/android/hwcamera/settings/MenuController;->mOverridesForUser:Ljava/util/Map;

    aget-object v5, p2, v0

    add-int/lit8 v6, v0, 0x1

    aget-object v6, p2, v6

    invoke-interface {v2, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_5
    move v2, v4

    .line 509
    goto :goto_2

    .line 514
    .end local v1           #info:Lcom/android/hwcamera/settings/MenuMutexConfigs$MenuMutexInfo;
    :cond_6
    if-eqz p1, :cond_7

    move v2, v3

    :goto_3
    aget-object v5, p2, v0

    add-int/lit8 v6, v0, 0x1

    aget-object v6, p2, v6

    invoke-direct {p0, v2, v5, v6}, Lcom/android/hwcamera/settings/MenuController;->override(ILjava/lang/String;Ljava/lang/String;)Lcom/android/hwcamera/MenuIconListPreference;

    .line 516
    if-nez p1, :cond_3

    iget-object v2, p0, Lcom/android/hwcamera/settings/MenuController;->mOverridesForUser:Ljava/util/Map;

    aget-object v5, p2, v0

    add-int/lit8 v6, v0, 0x1

    aget-object v6, p2, v6

    invoke-interface {v2, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_7
    move v2, v4

    .line 514
    goto :goto_3
.end method

.method public pause()V
    .locals 1

    .prologue
    .line 581
    iget-object v0, p0, Lcom/android/hwcamera/settings/MenuController;->mPreferenceMap:Ljava/util/Map;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/hwcamera/settings/MenuController;->mPreferenceMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 582
    :cond_0
    iget-object v0, p0, Lcom/android/hwcamera/settings/MenuController;->mOverrides:Ljava/util/Map;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/hwcamera/settings/MenuController;->mOverrides:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 583
    :cond_1
    iget-object v0, p0, Lcom/android/hwcamera/settings/MenuController;->mOverridesForUser:Ljava/util/Map;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/hwcamera/settings/MenuController;->mOverridesForUser:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 584
    :cond_2
    return-void
.end method

.method public popupDismissed()V
    .locals 1

    .prologue
    .line 565
    iget-object v0, p0, Lcom/android/hwcamera/settings/MenuController;->mMenuInflater:Lcom/android/hwcamera/settings/MenuInflater;

    invoke-virtual {v0}, Lcom/android/hwcamera/settings/MenuInflater;->popupDismissed()V

    .line 566
    return-void
.end method

.method protected reloadPreference(Lcom/android/hwcamera/MenuIconListPreference;)V
    .locals 2
    .parameter "pref"

    .prologue
    .line 419
    iget-object v1, p0, Lcom/android/hwcamera/settings/MenuController;->mPreferenceMap:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/hwcamera/settings/MenuItem;

    .line 420
    .local v0, item:Lcom/android/hwcamera/settings/MenuItem;
    invoke-virtual {p1}, Lcom/android/hwcamera/MenuIconListPreference;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/android/hwcamera/MenuIconListPreference;->findIndexOfValue(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/hwcamera/settings/MenuItem;->setIndex(I)V

    .line 421
    iget-object v1, p0, Lcom/android/hwcamera/settings/MenuController;->mMenuInflater:Lcom/android/hwcamera/settings/MenuInflater;

    invoke-virtual {v1, v0, p1}, Lcom/android/hwcamera/settings/MenuInflater;->reflateItem(Lcom/android/hwcamera/settings/MenuItem;Lcom/android/hwcamera/MenuIconListPreference;)V

    .line 422
    return-void
.end method

.method public reloadPreferences()V
    .locals 0

    .prologue
    .line 558
    return-void
.end method

.method public setCameraId(I)V
    .locals 0
    .parameter "mCameraId"

    .prologue
    .line 562
    return-void
.end method

.method public setListener(Lcom/android/hwcamera/CameraPreference$OnPreferenceChangedListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 56
    iput-object p1, p0, Lcom/android/hwcamera/settings/MenuController;->mPreferenceChangedListener:Lcom/android/hwcamera/CameraPreference$OnPreferenceChangedListener;

    .line 57
    return-void
.end method

.method public setOnMenuStatedChangelistener(Lcom/android/hwcamera/settings/MenuController$OnMenuStateChangedListener;)V
    .locals 1
    .parameter "mlistener"

    .prologue
    .line 573
    iget-object v0, p0, Lcom/android/hwcamera/settings/MenuController;->mMenuInflater:Lcom/android/hwcamera/settings/MenuInflater;

    invoke-virtual {v0, p1}, Lcom/android/hwcamera/settings/MenuInflater;->setlistener(Lcom/android/hwcamera/settings/MenuController$OnMenuStateChangedListener;)V

    .line 574
    return-void
.end method
