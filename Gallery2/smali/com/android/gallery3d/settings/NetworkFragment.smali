.class public Lcom/android/gallery3d/settings/NetworkFragment;
.super Landroid/preference/PreferenceFragment;
.source "NetworkFragment.java"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0xb
.end annotation


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
    .line 19
    invoke-super {p0, p1}, Landroid/preference/PreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 21
    const v0, 0x7f070008

    invoke-virtual {p0, v0}, Lcom/android/gallery3d/settings/NetworkFragment;->addPreferencesFromResource(I)V

    .line 22
    sget-object v0, Lcom/android/gallery3d/settings/GallerySettings;->SUPPORTED_MENU_ITEMS:Ljava/util/HashMap;

    const-string v1, "key-access-mode"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_0

    .line 23
    invoke-virtual {p0}, Lcom/android/gallery3d/settings/NetworkFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    const-string v1, "key-access-mode"

    invoke-virtual {p0, v1}, Lcom/android/gallery3d/settings/NetworkFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 25
    :cond_0
    return-void
.end method
