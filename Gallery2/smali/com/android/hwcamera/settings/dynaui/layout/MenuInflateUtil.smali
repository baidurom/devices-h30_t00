.class public Lcom/android/hwcamera/settings/dynaui/layout/MenuInflateUtil;
.super Ljava/lang/Object;
.source "MenuInflateUtil.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static inflateDynamicLayout(Landroid/view/ViewGroup;Lcom/android/hwcamera/settings/MenuItem;Landroid/content/Context;)V
    .locals 1
    .parameter "viewGroup"
    .parameter "item"
    .parameter "context"

    .prologue
    .line 17
    invoke-virtual {p1}, Lcom/android/hwcamera/settings/MenuItem;->getChildViewType()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 40
    :goto_0
    return-void

    .line 19
    :pswitch_0
    new-instance v0, Lcom/android/hwcamera/settings/dynaui/layout/TabStyleLayout;

    invoke-direct {v0}, Lcom/android/hwcamera/settings/dynaui/layout/TabStyleLayout;-><init>()V

    invoke-virtual {v0, p2, p1, p0}, Lcom/android/hwcamera/settings/dynaui/layout/TabStyleLayout;->inflate(Landroid/content/Context;Lcom/android/hwcamera/settings/MenuItem;Landroid/view/ViewGroup;)V

    goto :goto_0

    .line 22
    :pswitch_1
    new-instance v0, Lcom/android/hwcamera/settings/dynaui/layout/ShootModeStyleLayout;

    invoke-direct {v0}, Lcom/android/hwcamera/settings/dynaui/layout/ShootModeStyleLayout;-><init>()V

    invoke-virtual {v0, p2, p1, p0}, Lcom/android/hwcamera/settings/dynaui/layout/ShootModeStyleLayout;->inflate(Landroid/content/Context;Lcom/android/hwcamera/settings/MenuItem;Landroid/view/ViewGroup;)V

    goto :goto_0

    .line 26
    :pswitch_2
    new-instance v0, Lcom/android/hwcamera/settings/dynaui/layout/SettingsListWithOutIconStyleLayout;

    invoke-direct {v0}, Lcom/android/hwcamera/settings/dynaui/layout/SettingsListWithOutIconStyleLayout;-><init>()V

    invoke-virtual {v0, p2, p1, p0}, Lcom/android/hwcamera/settings/dynaui/layout/SettingsListWithOutIconStyleLayout;->inflate(Landroid/content/Context;Lcom/android/hwcamera/settings/MenuItem;Landroid/view/ViewGroup;)V

    goto :goto_0

    .line 30
    :pswitch_3
    new-instance v0, Lcom/android/hwcamera/settings/dynaui/layout/SettingsDetalLayout;

    invoke-direct {v0}, Lcom/android/hwcamera/settings/dynaui/layout/SettingsDetalLayout;-><init>()V

    invoke-virtual {v0, p2, p1, p0}, Lcom/android/hwcamera/settings/dynaui/layout/SettingsDetalLayout;->inflate(Landroid/content/Context;Lcom/android/hwcamera/settings/MenuItem;Landroid/view/ViewGroup;)V

    goto :goto_0

    .line 34
    :pswitch_4
    new-instance v0, Lcom/android/hwcamera/settings/dynaui/layout/SettingsListStyleLayout;

    invoke-direct {v0}, Lcom/android/hwcamera/settings/dynaui/layout/SettingsListStyleLayout;-><init>()V

    invoke-virtual {v0, p2, p1, p0}, Lcom/android/hwcamera/settings/dynaui/layout/SettingsListStyleLayout;->inflate(Landroid/content/Context;Lcom/android/hwcamera/settings/MenuItem;Landroid/view/ViewGroup;)V

    goto :goto_0

    .line 17
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_0
    .end packed-switch
.end method
