.class public Lcom/android/hwcamera/settings/dynaui/MenuItemFactory;
.super Ljava/lang/Object;
.source "MenuItemFactory.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static inflateDynamicUI(Lcom/android/hwcamera/settings/MenuItem;Landroid/content/Context;)Lcom/android/hwcamera/settings/dynaui/DynamicUI;
    .locals 1
    .parameter "item"
    .parameter "context"

    .prologue
    .line 14
    invoke-virtual {p0}, Lcom/android/hwcamera/settings/MenuItem;->getViewType()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 24
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 16
    :pswitch_0
    new-instance v0, Lcom/android/hwcamera/settings/dynaui/ImageMenu;

    invoke-direct {v0, p0, p1}, Lcom/android/hwcamera/settings/dynaui/ImageMenu;-><init>(Lcom/android/hwcamera/settings/MenuItem;Landroid/content/Context;)V

    goto :goto_0

    .line 18
    :pswitch_1
    new-instance v0, Lcom/android/hwcamera/settings/dynaui/CheckboxStyleMenu;

    invoke-direct {v0, p0, p1}, Lcom/android/hwcamera/settings/dynaui/CheckboxStyleMenu;-><init>(Lcom/android/hwcamera/settings/MenuItem;Landroid/content/Context;)V

    goto :goto_0

    .line 20
    :pswitch_2
    new-instance v0, Lcom/android/hwcamera/settings/dynaui/SingleLineStyleMenu;

    invoke-direct {v0, p0, p1}, Lcom/android/hwcamera/settings/dynaui/SingleLineStyleMenu;-><init>(Lcom/android/hwcamera/settings/MenuItem;Landroid/content/Context;)V

    goto :goto_0

    .line 22
    :pswitch_3
    new-instance v0, Lcom/android/hwcamera/settings/dynaui/SeekbarStyleMenu;

    invoke-direct {v0, p1, p0}, Lcom/android/hwcamera/settings/dynaui/SeekbarStyleMenu;-><init>(Landroid/content/Context;Lcom/android/hwcamera/settings/MenuItem;)V

    goto :goto_0

    .line 14
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
