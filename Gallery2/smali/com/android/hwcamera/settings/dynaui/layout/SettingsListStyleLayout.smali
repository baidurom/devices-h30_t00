.class public Lcom/android/hwcamera/settings/dynaui/layout/SettingsListStyleLayout;
.super Lcom/android/hwcamera/settings/dynaui/layout/AbstractSettingsListStyleLayout;
.source "SettingsListStyleLayout.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Lcom/android/hwcamera/settings/dynaui/layout/AbstractSettingsListStyleLayout;-><init>()V

    return-void
.end method


# virtual methods
.method public getInflateLayout()I
    .locals 1

    .prologue
    .line 13
    const v0, 0x7f040034

    return v0
.end method

.method public inflate(Landroid/content/Context;Lcom/android/hwcamera/settings/MenuItem;Landroid/view/ViewGroup;)V
    .locals 1
    .parameter "context"
    .parameter "item"
    .parameter "viewGroup"

    .prologue
    .line 17
    const/4 v0, 0x1

    invoke-super {p0, p1, p2, p3, v0}, Lcom/android/hwcamera/settings/dynaui/layout/AbstractSettingsListStyleLayout;->inflate(Landroid/content/Context;Lcom/android/hwcamera/settings/MenuItem;Landroid/view/ViewGroup;Z)V

    .line 18
    return-void
.end method
