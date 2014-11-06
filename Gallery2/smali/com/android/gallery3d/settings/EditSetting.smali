.class public Lcom/android/gallery3d/settings/EditSetting;
.super Landroid/preference/PreferenceFragment;
.source "EditSetting.java"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0xb
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/gallery3d/settings/EditSetting$EditSaveResolution;
    }
.end annotation


# static fields
.field private static final KEY_EDIT_RESOLUTION:Ljava/lang/String; = "key-edit-resolution"

.field private static final TAG:Ljava/lang/String; = "EditSetting"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Landroid/preference/PreferenceFragment;-><init>()V

    return-void
.end method

.method public static getEditSaveResulution(Landroid/content/Context;)Lcom/android/gallery3d/settings/EditSetting$EditSaveResolution;
    .locals 4
    .parameter "context"

    .prologue
    .line 49
    const/4 v1, 0x1

    .line 51
    .local v1, value:I
    :try_start_0
    const-string v2, "key-edit-resolution"

    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {p0, v2, v3}, Lcom/android/gallery3d/settings/GallerySettings;->getString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 59
    :goto_0
    invoke-static {v1}, Lcom/android/gallery3d/settings/EditSetting$EditSaveResolution;->parseInt(I)Lcom/android/gallery3d/settings/EditSetting$EditSaveResolution;

    move-result-object v2

    return-object v2

    .line 56
    :catch_0
    move-exception v0

    .line 57
    .local v0, e:Ljava/lang/NumberFormatException;
    const-string v2, "EditSetting"

    const-string v3, "Error when get the setting for edit save resolution, using default value"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .parameter "savedInstanceState"

    .prologue
    .line 20
    invoke-super {p0, p1}, Landroid/preference/PreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 21
    const v0, 0x7f070005

    invoke-virtual {p0, v0}, Lcom/android/gallery3d/settings/EditSetting;->addPreferencesFromResource(I)V

    .line 22
    return-void
.end method
