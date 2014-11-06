.class public Lcom/android/gallery3d/settings/GallerySettings;
.super Landroid/preference/PreferenceActivity;
.source "GallerySettings.java"


# static fields
.field public static final ACCESS_MODE_ALL:I = 0x1

.field public static final ACCESS_MODE_NONE:I = -0x1

.field public static final ACCESS_MODE_WIFI_ONLY:I = 0x0

.field private static final ALWAYS_SIMPLE_PREFS:Z = false

.field public static final DISPLAY_MODE_FOLDER:I = 0x1

.field public static final DISPLAY_MODE_MAP:I = 0x0

.field public static final KEY_ACCESS_MODE:Ljava/lang/String; = "key-access-mode"

.field public static final KEY_BROWSER_MODE:Ljava/lang/String; = "key-browser-mode"

.field public static final KEY_DISPLAY_LOCATION_INFO:Ljava/lang/String; = "key_display_location_info"

.field public static final KEY_DISPLAY_MENU:Ljava/lang/String; = "key-display-menu"

.field public static final KEY_DISPLAY_TIME_INFO:Ljava/lang/String; = "key_display_time_info"

.field public static final KEY_EDIT_MENU:Ljava/lang/String; = "key-edit-menu"

.field public static final KEY_EDIT_RESOLUTION:Ljava/lang/String; = "key-edit-resolution"

.field public static final KEY_FACE:Ljava/lang/String; = "key-face"

.field public static final KEY_FACE_MENU:Ljava/lang/String; = "key-face-menu"

.field public static final KEY_NETWORK_MENU:Ljava/lang/String; = "key-network-menu"

.field public static final KEY_SHARE_INFO_DISPLAY:Ljava/lang/String; = "key-share-info-display"

.field public static final SHARE_DISPLAY_OPTION_LEFT:I = 0x0

.field public static final SHARE_DISPLAY_OPTION_NONE:I = -0x1

.field public static final SHARE_DISPLAY_OPTION_RIGHT:I = 0x1

.field public static final SUPPORTED_MENU:Ljava/util/HashMap; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field public static final SUPPORTED_MENU_ITEMS:Ljava/util/HashMap; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private static final TAG:Ljava/lang/String; = "GallerySettings"

.field private static sBindPreferenceSummaryToValueListener:Landroid/preference/Preference$OnPreferenceChangeListener;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 245
    new-instance v2, Lcom/android/gallery3d/settings/GallerySettings$1;

    invoke-direct {v2}, Lcom/android/gallery3d/settings/GallerySettings$1;-><init>()V

    sput-object v2, Lcom/android/gallery3d/settings/GallerySettings;->sBindPreferenceSummaryToValueListener:Landroid/preference/Preference$OnPreferenceChangeListener;

    .line 359
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 361
    .local v1, supportedItems:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Boolean;>;"
    const-string v2, "key-face"

    sget-boolean v3, Lcom/android/gallery3d/app/FaceRecognitionSettings;->FACE_RECOGNITION_ENABLED:Z

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 363
    const-string v2, "key-browser-mode"

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 364
    const-string v2, "key_display_time_info"

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 365
    const-string v2, "key_display_location_info"

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 366
    const-string v2, "key-share-info-display"

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 368
    const-string v2, "key-access-mode"

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 369
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    sput-object v2, Lcom/android/gallery3d/settings/GallerySettings;->SUPPORTED_MENU_ITEMS:Ljava/util/HashMap;

    .line 370
    sget-object v2, Lcom/android/gallery3d/settings/GallerySettings;->SUPPORTED_MENU_ITEMS:Ljava/util/HashMap;

    invoke-virtual {v2, v1}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    .line 375
    new-instance v1, Ljava/util/HashMap;

    .end local v1           #supportedItems:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Boolean;>;"
    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 376
    .restart local v1       #supportedItems:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Boolean;>;"
    const/4 v0, 0x0

    .line 377
    .local v0, isSupported:Z
    sget-boolean v0, Lcom/android/gallery3d/app/FaceRecognitionSettings;->FACE_RECOGNITION_ENABLED:Z

    .line 378
    const-string v2, "key-face-menu"

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 379
    const-string v2, "key-display-menu"

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 380
    const-string v2, "key-network-menu"

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 381
    const-string v2, "key-edit-menu"

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 382
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    sput-object v2, Lcom/android/gallery3d/settings/GallerySettings;->SUPPORTED_MENU:Ljava/util/HashMap;

    .line 383
    sget-object v2, Lcom/android/gallery3d/settings/GallerySettings;->SUPPORTED_MENU:Ljava/util/HashMap;

    invoke-virtual {v2, v1}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    .line 384
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 53
    invoke-direct {p0}, Landroid/preference/PreferenceActivity;-><init>()V

    return-void
.end method

.method private static bindPreferenceSummaryToValue(Landroid/preference/Preference;)V
    .locals 4
    .parameter "preference"

    .prologue
    .line 282
    sget-object v0, Lcom/android/gallery3d/settings/GallerySettings;->sBindPreferenceSummaryToValueListener:Landroid/preference/Preference$OnPreferenceChangeListener;

    invoke-virtual {p0, v0}, Landroid/preference/Preference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 286
    sget-object v0, Lcom/android/gallery3d/settings/GallerySettings;->sBindPreferenceSummaryToValueListener:Landroid/preference/Preference$OnPreferenceChangeListener;

    invoke-virtual {p0}, Landroid/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-virtual {p0}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v2

    const-string v3, ""

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, p0, v1}, Landroid/preference/Preference$OnPreferenceChangeListener;->onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z

    .line 290
    return-void
.end method

.method public static getBoolean(Landroid/content/Context;Ljava/lang/String;Z)Z
    .locals 2
    .parameter "context"
    .parameter "key"
    .parameter "defValue"

    .prologue
    .line 323
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 324
    .local v0, prefs:Landroid/content/SharedPreferences;
    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    return v1
.end method

.method public static getFloat(Landroid/content/Context;Ljava/lang/String;F)F
    .locals 2
    .parameter "context"
    .parameter "key"
    .parameter "defValue"

    .prologue
    .line 343
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 344
    .local v0, prefs:Landroid/content/SharedPreferences;
    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences;->getFloat(Ljava/lang/String;F)F

    move-result v1

    return v1
.end method

.method public static getInt(Landroid/content/Context;Ljava/lang/String;I)I
    .locals 2
    .parameter "context"
    .parameter "key"
    .parameter "defValue"

    .prologue
    .line 333
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 334
    .local v0, prefs:Landroid/content/SharedPreferences;
    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    return v1
.end method

.method public static getInt(Landroid/content/Context;Ljava/lang/String;Ljava/util/Set;)Ljava/util/Set;
    .locals 2
    .parameter "context"
    .parameter "key"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 348
    .local p2, defValue:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 349
    .local v0, prefs:Landroid/content/SharedPreferences;
    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences;->getStringSet(Ljava/lang/String;Ljava/util/Set;)Ljava/util/Set;

    move-result-object v1

    return-object v1
.end method

.method public static getLong(Landroid/content/Context;Ljava/lang/String;J)J
    .locals 3
    .parameter "context"
    .parameter "key"
    .parameter "defValue"

    .prologue
    .line 338
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 339
    .local v0, prefs:Landroid/content/SharedPreferences;
    invoke-interface {v0, p1, p2, p3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v1

    return-wide v1
.end method

.method public static getString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "context"
    .parameter "key"
    .parameter "defValue"

    .prologue
    .line 328
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 329
    .local v0, prefs:Landroid/content/SharedPreferences;
    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private initActionBar()V
    .locals 2

    .prologue
    .line 294
    invoke-virtual {p0}, Lcom/android/gallery3d/settings/GallerySettings;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .line 295
    .local v0, actionBar:Landroid/app/ActionBar;
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 296
    const v1, 0x7f0d02f3

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setTitle(I)V

    .line 297
    return-void
.end method

.method private static isSimplePreferences(Landroid/content/Context;)Z
    .locals 2
    .parameter "context"

    .prologue
    .line 196
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-lt v0, v1, :cond_0

    invoke-static {p0}, Lcom/android/gallery3d/settings/GallerySettings;->isXLargeTablet(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static isXLargeTablet(Landroid/content/Context;)Z
    .locals 2
    .parameter "context"

    .prologue
    .line 185
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->screenLayout:I

    and-int/lit8 v0, v0, 0xf

    const/4 v1, 0x4

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private setupSimplePreferenceScreen()V
    .locals 3

    .prologue
    .line 100
    invoke-static {p0}, Lcom/android/gallery3d/settings/GallerySettings;->isSimplePreferences(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 172
    :cond_0
    :goto_0
    return-void

    .line 107
    :cond_1
    const v1, 0x7f070003

    invoke-virtual {p0, v1}, Lcom/android/gallery3d/settings/GallerySettings;->addPreferencesFromResource(I)V

    .line 111
    sget-object v1, Lcom/android/gallery3d/settings/GallerySettings;->SUPPORTED_MENU:Ljava/util/HashMap;

    const-string v2, "key-face-menu"

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 112
    new-instance v0, Landroid/preference/PreferenceCategory;

    invoke-direct {v0, p0}, Landroid/preference/PreferenceCategory;-><init>(Landroid/content/Context;)V

    .line 113
    .local v0, fakeHeader:Landroid/preference/PreferenceCategory;
    const v1, 0x7f0d0453

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceCategory;->setTitle(I)V

    .line 114
    invoke-virtual {p0}, Lcom/android/gallery3d/settings/GallerySettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    .line 115
    const v1, 0x7f070006

    invoke-virtual {p0, v1}, Lcom/android/gallery3d/settings/GallerySettings;->addPreferencesFromResource(I)V

    .line 116
    sget-object v1, Lcom/android/gallery3d/settings/GallerySettings;->SUPPORTED_MENU_ITEMS:Ljava/util/HashMap;

    const-string v2, "key-face"

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 122
    .end local v0           #fakeHeader:Landroid/preference/PreferenceCategory;
    :cond_2
    sget-object v1, Lcom/android/gallery3d/settings/GallerySettings;->SUPPORTED_MENU:Ljava/util/HashMap;

    const-string v2, "key-display-menu"

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 123
    new-instance v0, Landroid/preference/PreferenceCategory;

    invoke-direct {v0, p0}, Landroid/preference/PreferenceCategory;-><init>(Landroid/content/Context;)V

    .line 124
    .restart local v0       #fakeHeader:Landroid/preference/PreferenceCategory;
    const v1, 0x7f0d0454

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceCategory;->setTitle(I)V

    .line 125
    invoke-virtual {p0}, Lcom/android/gallery3d/settings/GallerySettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    .line 126
    const v1, 0x7f070004

    invoke-virtual {p0, v1}, Lcom/android/gallery3d/settings/GallerySettings;->addPreferencesFromResource(I)V

    .line 129
    sget-object v1, Lcom/android/gallery3d/settings/GallerySettings;->SUPPORTED_MENU_ITEMS:Ljava/util/HashMap;

    const-string v2, "key-browser-mode"

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_7

    .line 130
    const-string v1, "key-browser-mode"

    invoke-virtual {p0, v1}, Lcom/android/gallery3d/settings/GallerySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    invoke-static {v1}, Lcom/android/gallery3d/settings/GallerySettings;->bindPreferenceSummaryToValue(Landroid/preference/Preference;)V

    .line 135
    :goto_1
    sget-object v1, Lcom/android/gallery3d/settings/GallerySettings;->SUPPORTED_MENU_ITEMS:Ljava/util/HashMap;

    const-string v2, "key_display_time_info"

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-nez v1, :cond_3

    .line 136
    invoke-virtual {p0}, Lcom/android/gallery3d/settings/GallerySettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    const-string v2, "key_display_time_info"

    invoke-virtual {p0, v2}, Lcom/android/gallery3d/settings/GallerySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 139
    :cond_3
    sget-object v1, Lcom/android/gallery3d/settings/GallerySettings;->SUPPORTED_MENU_ITEMS:Ljava/util/HashMap;

    const-string v2, "key_display_location_info"

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-nez v1, :cond_4

    .line 140
    invoke-virtual {p0}, Lcom/android/gallery3d/settings/GallerySettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    const-string v2, "key_display_location_info"

    invoke-virtual {p0, v2}, Lcom/android/gallery3d/settings/GallerySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 143
    :cond_4
    sget-object v1, Lcom/android/gallery3d/settings/GallerySettings;->SUPPORTED_MENU_ITEMS:Ljava/util/HashMap;

    const-string v2, "key-share-info-display"

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_8

    .line 144
    const-string v1, "key-share-info-display"

    invoke-virtual {p0, v1}, Lcom/android/gallery3d/settings/GallerySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    invoke-static {v1}, Lcom/android/gallery3d/settings/GallerySettings;->bindPreferenceSummaryToValue(Landroid/preference/Preference;)V

    .line 151
    .end local v0           #fakeHeader:Landroid/preference/PreferenceCategory;
    :cond_5
    :goto_2
    sget-object v1, Lcom/android/gallery3d/settings/GallerySettings;->SUPPORTED_MENU:Ljava/util/HashMap;

    const-string v2, "key-network-menu"

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 152
    new-instance v0, Landroid/preference/PreferenceCategory;

    invoke-direct {v0, p0}, Landroid/preference/PreferenceCategory;-><init>(Landroid/content/Context;)V

    .line 153
    .restart local v0       #fakeHeader:Landroid/preference/PreferenceCategory;
    const v1, 0x7f0d0455

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceCategory;->setTitle(I)V

    .line 154
    invoke-virtual {p0}, Lcom/android/gallery3d/settings/GallerySettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    .line 155
    const v1, 0x7f070008

    invoke-virtual {p0, v1}, Lcom/android/gallery3d/settings/GallerySettings;->addPreferencesFromResource(I)V

    .line 156
    sget-object v1, Lcom/android/gallery3d/settings/GallerySettings;->SUPPORTED_MENU_ITEMS:Ljava/util/HashMap;

    const-string v2, "key-access-mode"

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_9

    .line 157
    const-string v1, "key-access-mode"

    invoke-virtual {p0, v1}, Lcom/android/gallery3d/settings/GallerySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    invoke-static {v1}, Lcom/android/gallery3d/settings/GallerySettings;->bindPreferenceSummaryToValue(Landroid/preference/Preference;)V

    .line 163
    .end local v0           #fakeHeader:Landroid/preference/PreferenceCategory;
    :cond_6
    :goto_3
    sget-object v1, Lcom/android/gallery3d/settings/GallerySettings;->SUPPORTED_MENU:Ljava/util/HashMap;

    const-string v2, "key-edit-menu"

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 164
    new-instance v0, Landroid/preference/PreferenceCategory;

    invoke-direct {v0, p0}, Landroid/preference/PreferenceCategory;-><init>(Landroid/content/Context;)V

    .line 166
    .restart local v0       #fakeHeader:Landroid/preference/PreferenceCategory;
    const v1, 0x7f0d0294

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceCategory;->setTitle(I)V

    .line 168
    invoke-virtual {p0}, Lcom/android/gallery3d/settings/GallerySettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    .line 169
    const v1, 0x7f070005

    invoke-virtual {p0, v1}, Lcom/android/gallery3d/settings/GallerySettings;->addPreferencesFromResource(I)V

    .line 170
    const-string v1, "key-edit-resolution"

    invoke-virtual {p0, v1}, Lcom/android/gallery3d/settings/GallerySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    invoke-static {v1}, Lcom/android/gallery3d/settings/GallerySettings;->bindPreferenceSummaryToValue(Landroid/preference/Preference;)V

    goto/16 :goto_0

    .line 132
    :cond_7
    invoke-virtual {p0}, Lcom/android/gallery3d/settings/GallerySettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    const-string v2, "key-browser-mode"

    invoke-virtual {p0, v2}, Lcom/android/gallery3d/settings/GallerySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    goto/16 :goto_1

    .line 146
    :cond_8
    invoke-virtual {p0}, Lcom/android/gallery3d/settings/GallerySettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    const-string v2, "key-share-info-display"

    invoke-virtual {p0, v2}, Lcom/android/gallery3d/settings/GallerySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    goto/16 :goto_2

    .line 159
    :cond_9
    invoke-virtual {p0}, Lcom/android/gallery3d/settings/GallerySettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    const-string v2, "key-access-mode"

    invoke-virtual {p0, v2}, Lcom/android/gallery3d/settings/GallerySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    goto :goto_3
.end method

.method private updateHeaders(Ljava/util/List;)V
    .locals 5
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/preference/PreferenceActivity$Header;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 213
    .local p1, target:Ljava/util/List;,"Ljava/util/List<Landroid/preference/PreferenceActivity$Header;>;"
    const/4 v1, 0x0

    .line 214
    .local v1, i:I
    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    if-ge v1, v3, :cond_5

    .line 215
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceActivity$Header;

    .line 216
    .local v0, header:Landroid/preference/PreferenceActivity$Header;
    iget-wide v3, v0, Landroid/preference/PreferenceActivity$Header;->id:J

    long-to-int v2, v3

    .line 217
    .local v2, id:I
    const v3, 0x7f100226

    if-ne v2, v3, :cond_2

    .line 218
    sget-object v3, Lcom/android/gallery3d/settings/GallerySettings;->SUPPORTED_MENU:Ljava/util/HashMap;

    const-string v4, "key-face-menu"

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-nez v3, :cond_1

    .line 219
    invoke-interface {p1, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 235
    :cond_1
    :goto_1
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    if-ge v1, v3, :cond_0

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    if-ne v3, v0, :cond_0

    .line 236
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 221
    :cond_2
    const v3, 0x7f100227

    if-ne v2, v3, :cond_3

    .line 222
    sget-object v3, Lcom/android/gallery3d/settings/GallerySettings;->SUPPORTED_MENU:Ljava/util/HashMap;

    const-string v4, "key-display-menu"

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-nez v3, :cond_1

    .line 223
    invoke-interface {p1, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto :goto_1

    .line 225
    :cond_3
    const v3, 0x7f100228

    if-ne v2, v3, :cond_4

    .line 226
    sget-object v3, Lcom/android/gallery3d/settings/GallerySettings;->SUPPORTED_MENU:Ljava/util/HashMap;

    const-string v4, "key-network-menu"

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-nez v3, :cond_1

    .line 227
    invoke-interface {p1, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto :goto_1

    .line 229
    :cond_4
    const v3, 0x7f100229

    if-ne v2, v3, :cond_1

    .line 230
    sget-object v3, Lcom/android/gallery3d/settings/GallerySettings;->SUPPORTED_MENU:Ljava/util/HashMap;

    const-string v4, "key-edit-menu"

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-nez v3, :cond_1

    .line 231
    invoke-interface {p1, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto :goto_1

    .line 239
    .end local v0           #header:Landroid/preference/PreferenceActivity$Header;
    .end local v2           #id:I
    :cond_5
    return-void
.end method


# virtual methods
.method public onBuildHeaders(Ljava/util/List;)V
    .locals 1
    .parameter
    .annotation build Landroid/annotation/TargetApi;
        value = 0xb
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/preference/PreferenceActivity$Header;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 205
    .local p1, target:Ljava/util/List;,"Ljava/util/List<Landroid/preference/PreferenceActivity$Header;>;"
    invoke-static {p0}, Lcom/android/gallery3d/settings/GallerySettings;->isSimplePreferences(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 210
    :goto_0
    return-void

    .line 208
    :cond_0
    const v0, 0x7f070007

    invoke-virtual {p0, v0, p1}, Lcom/android/gallery3d/settings/GallerySettings;->loadHeadersFromResource(ILjava/util/List;)V

    .line 209
    invoke-direct {p0, p1}, Lcom/android/gallery3d/settings/GallerySettings;->updateHeaders(Ljava/util/List;)V

    goto :goto_0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 4
    .parameter "newConfig"

    .prologue
    const/16 v3, 0x400

    .line 301
    invoke-virtual {p0}, Lcom/android/gallery3d/settings/GallerySettings;->getWindow()Landroid/view/Window;

    move-result-object v0

    .line 302
    .local v0, win:Landroid/view/Window;
    invoke-virtual {p0}, Lcom/android/gallery3d/settings/GallerySettings;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->orientation:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 303
    invoke-virtual {v0, v3}, Landroid/view/Window;->clearFlags(I)V

    .line 307
    :goto_0
    return-void

    .line 305
    :cond_0
    invoke-virtual {v0, v3}, Landroid/view/Window;->addFlags(I)V

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1
    .parameter "savedInstanceState"

    .prologue
    .line 88
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 89
    invoke-direct {p0}, Lcom/android/gallery3d/settings/GallerySettings;->setupSimplePreferenceScreen()V

    .line 90
    invoke-direct {p0}, Lcom/android/gallery3d/settings/GallerySettings;->initActionBar()V

    .line 91
    new-instance v0, Landroid/content/res/Configuration;

    invoke-direct {v0}, Landroid/content/res/Configuration;-><init>()V

    invoke-virtual {p0, v0}, Lcom/android/gallery3d/settings/GallerySettings;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 92
    return-void
.end method

.method public onIsMultiPane()Z
    .locals 1

    .prologue
    .line 177
    invoke-static {p0}, Lcom/android/gallery3d/settings/GallerySettings;->isXLargeTablet(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p0}, Lcom/android/gallery3d/settings/GallerySettings;->isSimplePreferences(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 1
    .parameter "item"

    .prologue
    .line 311
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 318
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 313
    :pswitch_0
    invoke-virtual {p0}, Lcom/android/gallery3d/settings/GallerySettings;->finish()V

    .line 314
    const/4 v0, 0x1

    goto :goto_0

    .line 311
    :pswitch_data_0
    .packed-switch 0x102002c
        :pswitch_0
    .end packed-switch
.end method
