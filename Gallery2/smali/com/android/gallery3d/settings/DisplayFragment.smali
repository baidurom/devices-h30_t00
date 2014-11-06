.class public Lcom/android/gallery3d/settings/DisplayFragment;
.super Landroid/preference/PreferenceFragment;
.source "DisplayFragment.java"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0xb
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "Settings_Display"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Landroid/preference/PreferenceFragment;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .parameter "savedInstanceState"

    .prologue
    .line 20
    invoke-super {p0, p1}, Landroid/preference/PreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 22
    const v0, 0x7f070004

    invoke-virtual {p0, v0}, Lcom/android/gallery3d/settings/DisplayFragment;->addPreferencesFromResource(I)V

    .line 23
    sget-object v0, Lcom/android/gallery3d/settings/GallerySettings;->SUPPORTED_MENU_ITEMS:Ljava/util/HashMap;

    const-string v1, "key-browser-mode"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_0

    .line 24
    invoke-virtual {p0}, Lcom/android/gallery3d/settings/DisplayFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    const-string v1, "key-browser-mode"

    invoke-virtual {p0, v1}, Lcom/android/gallery3d/settings/DisplayFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 26
    :cond_0
    sget-object v0, Lcom/android/gallery3d/settings/GallerySettings;->SUPPORTED_MENU_ITEMS:Ljava/util/HashMap;

    const-string v1, "key_display_time_info"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_1

    .line 27
    invoke-virtual {p0}, Lcom/android/gallery3d/settings/DisplayFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    const-string v1, "key_display_time_info"

    invoke-virtual {p0, v1}, Lcom/android/gallery3d/settings/DisplayFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 29
    :cond_1
    sget-object v0, Lcom/android/gallery3d/settings/GallerySettings;->SUPPORTED_MENU_ITEMS:Ljava/util/HashMap;

    const-string v1, "key_display_location_info"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_2

    .line 30
    invoke-virtual {p0}, Lcom/android/gallery3d/settings/DisplayFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    const-string v1, "key_display_location_info"

    invoke-virtual {p0, v1}, Lcom/android/gallery3d/settings/DisplayFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 32
    :cond_2
    sget-object v0, Lcom/android/gallery3d/settings/GallerySettings;->SUPPORTED_MENU_ITEMS:Ljava/util/HashMap;

    const-string v1, "key-share-info-display"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_3

    .line 33
    invoke-virtual {p0}, Lcom/android/gallery3d/settings/DisplayFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    const-string v1, "key-share-info-display"

    invoke-virtual {p0, v1}, Lcom/android/gallery3d/settings/DisplayFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 35
    :cond_3
    return-void
.end method
