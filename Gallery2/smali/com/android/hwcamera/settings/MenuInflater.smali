.class public Lcom/android/hwcamera/settings/MenuInflater;
.super Lcom/android/hwcamera/settings/AbstractMenuInflater;
.source "MenuInflater.java"


# static fields
.field private static final SUBMENU_SETTINGS_BACK_GROUNDS:[I

.field private static final SUBMENU_SHOOTMODE_BACK_GROUNDS:[I


# instance fields
.field private land_height:I

.field private land_width:I

.field private mCameraExtandMenuLayout:Landroid/view/ViewGroup;

.field private mCameraMainMenuLayout:Landroid/view/ViewGroup;

.field private mCameraMainMenuMiddleLayout:Landroid/view/ViewGroup;

.field private mCameraShootmodeMenuLayout:Landroid/view/ViewGroup;

.field private mContext:Landroid/content/Context;

.field private mExtandRotateLayout:Lcom/android/hwcamera/ui/RotateLayout;

.field private mOrientation:I

.field private mShootmodeRotateLayout:Lcom/android/hwcamera/ui/RotateLayout;

.field private mlistener:Lcom/android/hwcamera/settings/MenuController$OnMenuStateChangedListener;

.field private port_height:I

.field private port_width:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x4

    .line 174
    new-array v0, v1, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/android/hwcamera/settings/MenuInflater;->SUBMENU_SHOOTMODE_BACK_GROUNDS:[I

    .line 175
    new-array v0, v1, [I

    fill-array-data v0, :array_1

    sput-object v0, Lcom/android/hwcamera/settings/MenuInflater;->SUBMENU_SETTINGS_BACK_GROUNDS:[I

    return-void

    .line 174
    :array_0
    .array-data 0x4
        0x2et 0x0t 0x2t 0x7ft
        0x35t 0x0t 0x2t 0x7ft
        0x2ft 0x0t 0x2t 0x7ft
        0x34t 0x0t 0x2t 0x7ft
    .end array-data

    .line 175
    :array_1
    .array-data 0x4
        0x30t 0x0t 0x2t 0x7ft
        0x33t 0x0t 0x2t 0x7ft
        0x31t 0x0t 0x2t 0x7ft
        0x32t 0x0t 0x2t 0x7ft
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter "mContext"

    .prologue
    const/4 v1, 0x0

    .line 61
    invoke-direct {p0}, Lcom/android/hwcamera/settings/AbstractMenuInflater;-><init>()V

    .line 53
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/hwcamera/settings/MenuInflater;->mOrientation:I

    .line 55
    iput v1, p0, Lcom/android/hwcamera/settings/MenuInflater;->land_width:I

    .line 56
    iput v1, p0, Lcom/android/hwcamera/settings/MenuInflater;->land_height:I

    .line 57
    iput v1, p0, Lcom/android/hwcamera/settings/MenuInflater;->port_width:I

    .line 58
    iput v1, p0, Lcom/android/hwcamera/settings/MenuInflater;->port_height:I

    .line 62
    iput-object p1, p0, Lcom/android/hwcamera/settings/MenuInflater;->mContext:Landroid/content/Context;

    .line 64
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0b004d

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/hwcamera/settings/MenuInflater;->land_width:I

    .line 65
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0b004e

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/hwcamera/settings/MenuInflater;->land_height:I

    .line 66
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0b004f

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/hwcamera/settings/MenuInflater;->port_width:I

    .line 67
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0b0050

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/hwcamera/settings/MenuInflater;->port_height:I

    .line 69
    return-void
.end method

.method private onOrientationChanged(IZ)V
    .locals 8
    .parameter "orientation"
    .parameter "isforce"

    .prologue
    const/4 v7, 0x1

    const/4 v6, -0x2

    .line 183
    const/4 v3, -0x1

    if-ne p1, v3, :cond_1

    .line 240
    :cond_0
    :goto_0
    return-void

    .line 184
    :cond_1
    if-nez p2, :cond_2

    iget v3, p0, Lcom/android/hwcamera/settings/MenuInflater;->mOrientation:I

    if-eq p1, v3, :cond_0

    .line 185
    :cond_2
    iput p1, p0, Lcom/android/hwcamera/settings/MenuInflater;->mOrientation:I

    .line 186
    iget-object v3, p0, Lcom/android/hwcamera/settings/MenuInflater;->mContext:Landroid/content/Context;

    check-cast v3, Lcom/android/hwcamera/CameraActivity;

    invoke-virtual {v3}, Lcom/android/hwcamera/CameraActivity;->isPortraitLocked()Z

    move-result v1

    .line 188
    .local v1, isPortrait:Z
    iget-object v3, p0, Lcom/android/hwcamera/settings/MenuInflater;->mContext:Landroid/content/Context;

    check-cast v3, Lcom/android/hwcamera/CameraActivity;

    iget-object v5, p0, Lcom/android/hwcamera/settings/MenuInflater;->mCameraMainMenuLayout:Landroid/view/ViewGroup;

    if-eqz v1, :cond_3

    iget v4, p0, Lcom/android/hwcamera/settings/MenuInflater;->mOrientation:I

    :goto_1
    invoke-virtual {v3, v5, v4, v7}, Lcom/android/hwcamera/CameraActivity;->rotatateView(Landroid/view/View;IZ)V

    .line 190
    iget-object v3, p0, Lcom/android/hwcamera/settings/MenuInflater;->mExtandRotateLayout:Lcom/android/hwcamera/ui/RotateLayout;

    invoke-virtual {v3}, Lcom/android/hwcamera/ui/RotateLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 191
    .local v0, extandParam:Landroid/view/ViewGroup$LayoutParams;
    iget-object v3, p0, Lcom/android/hwcamera/settings/MenuInflater;->mShootmodeRotateLayout:Lcom/android/hwcamera/ui/RotateLayout;

    invoke-virtual {v3}, Lcom/android/hwcamera/ui/RotateLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    .line 193
    .local v2, shootModeParam:Landroid/view/ViewGroup$LayoutParams;
    if-eqz v1, :cond_4

    .line 194
    iget-object v3, p0, Lcom/android/hwcamera/settings/MenuInflater;->mCameraExtandMenuLayout:Landroid/view/ViewGroup;

    sget-object v4, Lcom/android/hwcamera/settings/MenuInflater;->SUBMENU_SETTINGS_BACK_GROUNDS:[I

    div-int/lit8 v5, p1, 0x5a

    rem-int/lit8 v5, v5, 0x4

    aget v4, v4, v5

    invoke-virtual {v3, v4}, Landroid/view/ViewGroup;->setBackgroundResource(I)V

    .line 195
    iget-object v3, p0, Lcom/android/hwcamera/settings/MenuInflater;->mCameraShootmodeMenuLayout:Landroid/view/ViewGroup;

    sget-object v4, Lcom/android/hwcamera/settings/MenuInflater;->SUBMENU_SHOOTMODE_BACK_GROUNDS:[I

    div-int/lit8 v5, p1, 0x5a

    rem-int/lit8 v5, v5, 0x4

    aget v4, v4, v5

    invoke-virtual {v3, v4}, Landroid/view/ViewGroup;->setBackgroundResource(I)V

    .line 202
    :goto_2
    sparse-switch p1, :sswitch_data_0

    .line 236
    :goto_3
    iget-object v3, p0, Lcom/android/hwcamera/settings/MenuInflater;->mShootmodeRotateLayout:Lcom/android/hwcamera/ui/RotateLayout;

    invoke-virtual {v3, v2}, Lcom/android/hwcamera/ui/RotateLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 237
    iget-object v3, p0, Lcom/android/hwcamera/settings/MenuInflater;->mShootmodeRotateLayout:Lcom/android/hwcamera/ui/RotateLayout;

    invoke-virtual {v3, p1, v7}, Lcom/android/hwcamera/ui/RotateLayout;->setOrientation(IZ)V

    .line 238
    iget-object v3, p0, Lcom/android/hwcamera/settings/MenuInflater;->mExtandRotateLayout:Lcom/android/hwcamera/ui/RotateLayout;

    invoke-virtual {v3, v0}, Lcom/android/hwcamera/ui/RotateLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 239
    iget-object v3, p0, Lcom/android/hwcamera/settings/MenuInflater;->mExtandRotateLayout:Lcom/android/hwcamera/ui/RotateLayout;

    invoke-virtual {v3, p1, v7}, Lcom/android/hwcamera/ui/RotateLayout;->setOrientation(IZ)V

    goto :goto_0

    .line 188
    .end local v0           #extandParam:Landroid/view/ViewGroup$LayoutParams;
    .end local v2           #shootModeParam:Landroid/view/ViewGroup$LayoutParams;
    :cond_3
    iget v4, p0, Lcom/android/hwcamera/settings/MenuInflater;->mOrientation:I

    add-int/lit8 v4, v4, 0x5a

    goto :goto_1

    .line 197
    .restart local v0       #extandParam:Landroid/view/ViewGroup$LayoutParams;
    .restart local v2       #shootModeParam:Landroid/view/ViewGroup$LayoutParams;
    :cond_4
    add-int/lit8 v3, p1, 0x5a

    rem-int/lit16 p1, v3, 0x168

    .line 198
    iget-object v3, p0, Lcom/android/hwcamera/settings/MenuInflater;->mCameraExtandMenuLayout:Landroid/view/ViewGroup;

    sget-object v4, Lcom/android/hwcamera/settings/MenuInflater;->SUBMENU_SETTINGS_BACK_GROUNDS:[I

    div-int/lit8 v5, p1, 0x5a

    add-int/lit8 v5, v5, 0x3

    rem-int/lit8 v5, v5, 0x4

    aget v4, v4, v5

    invoke-virtual {v3, v4}, Landroid/view/ViewGroup;->setBackgroundResource(I)V

    .line 199
    iget-object v3, p0, Lcom/android/hwcamera/settings/MenuInflater;->mCameraShootmodeMenuLayout:Landroid/view/ViewGroup;

    sget-object v4, Lcom/android/hwcamera/settings/MenuInflater;->SUBMENU_SHOOTMODE_BACK_GROUNDS:[I

    div-int/lit8 v5, p1, 0x5a

    add-int/lit8 v5, v5, 0x3

    rem-int/lit8 v5, v5, 0x4

    aget v4, v4, v5

    invoke-virtual {v3, v4}, Landroid/view/ViewGroup;->setBackgroundResource(I)V

    goto :goto_2

    .line 205
    :sswitch_0
    if-eqz v1, :cond_5

    .line 206
    iget v3, p0, Lcom/android/hwcamera/settings/MenuInflater;->port_width:I

    iput v3, v2, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 207
    iput v6, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 208
    iget v3, p0, Lcom/android/hwcamera/settings/MenuInflater;->port_width:I

    iput v3, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 209
    iget v3, p0, Lcom/android/hwcamera/settings/MenuInflater;->port_height:I

    iput v3, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    goto :goto_3

    .line 211
    :cond_5
    iput v6, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 212
    iget v3, p0, Lcom/android/hwcamera/settings/MenuInflater;->land_width:I

    iput v3, v2, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 213
    iget v3, p0, Lcom/android/hwcamera/settings/MenuInflater;->land_height:I

    iput v3, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 214
    iget v3, p0, Lcom/android/hwcamera/settings/MenuInflater;->land_width:I

    iput v3, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    goto :goto_3

    .line 220
    :sswitch_1
    if-eqz v1, :cond_6

    .line 221
    iput v6, v2, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 222
    iget v3, p0, Lcom/android/hwcamera/settings/MenuInflater;->land_width:I

    iput v3, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 223
    iget v3, p0, Lcom/android/hwcamera/settings/MenuInflater;->land_height:I

    iput v3, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 224
    iget v3, p0, Lcom/android/hwcamera/settings/MenuInflater;->land_width:I

    iput v3, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    goto :goto_3

    .line 226
    :cond_6
    iget v3, p0, Lcom/android/hwcamera/settings/MenuInflater;->port_width:I

    iput v3, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 227
    iput v6, v2, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 228
    iget v3, p0, Lcom/android/hwcamera/settings/MenuInflater;->port_width:I

    iput v3, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 229
    iget v3, p0, Lcom/android/hwcamera/settings/MenuInflater;->port_height:I

    iput v3, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    goto :goto_3

    .line 202
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x5a -> :sswitch_1
        0xb4 -> :sswitch_0
        0x10e -> :sswitch_1
    .end sparse-switch
.end method


# virtual methods
.method public bridge synthetic getMenuLayoutParams(Lcom/android/hwcamera/settings/MenuItem;)Landroid/view/ViewGroup$LayoutParams;
    .locals 1
    .parameter "x0"

    .prologue
    .line 41
    invoke-virtual {p0, p1}, Lcom/android/hwcamera/settings/MenuInflater;->getMenuLayoutParams(Lcom/android/hwcamera/settings/MenuItem;)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v0

    return-object v0
.end method

.method public getMenuLayoutParams(Lcom/android/hwcamera/settings/MenuItem;)Landroid/widget/LinearLayout$LayoutParams;
    .locals 9
    .parameter "item"

    .prologue
    const/4 v5, 0x0

    const/4 v8, -0x1

    const/high16 v6, 0x3f80

    const/4 v7, 0x0

    const/4 v4, 0x1

    .line 164
    invoke-virtual {p1}, Lcom/android/hwcamera/settings/MenuItem;->getPosition()I

    move-result v3

    if-ne v3, v4, :cond_0

    move v1, v4

    .line 165
    .local v1, isMiddle:Z
    :goto_0
    iget-object v3, p0, Lcom/android/hwcamera/settings/MenuInflater;->mCameraMainMenuLayout:Landroid/view/ViewGroup;

    check-cast v3, Landroid/widget/LinearLayout;

    invoke-virtual {v3}, Landroid/widget/LinearLayout;->getOrientation()I

    move-result v3

    if-ne v3, v4, :cond_1

    move v0, v4

    .line 166
    .local v0, isHorizontal:Z
    :goto_1
    if-eqz v0, :cond_3

    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    const/16 v3, 0x54

    invoke-static {v3}, Lcom/android/hwcamera/Util;->dpToPixel(I)I

    move-result v4

    if-eqz v1, :cond_2

    move v3, v6

    :goto_2
    invoke-direct {v2, v8, v4, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    .line 167
    .local v2, layoutParams:Landroid/widget/LinearLayout$LayoutParams;
    :goto_3
    return-object v2

    .end local v0           #isHorizontal:Z
    .end local v1           #isMiddle:Z
    .end local v2           #layoutParams:Landroid/widget/LinearLayout$LayoutParams;
    :cond_0
    move v1, v5

    .line 164
    goto :goto_0

    .restart local v1       #isMiddle:Z
    :cond_1
    move v0, v5

    .line 165
    goto :goto_1

    .restart local v0       #isHorizontal:Z
    :cond_2
    move v3, v7

    .line 166
    goto :goto_2

    :cond_3
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    const/16 v3, 0x54

    invoke-static {v3}, Lcom/android/hwcamera/Util;->dpToPixel(I)I

    move-result v3

    if-eqz v1, :cond_4

    :goto_4
    invoke-direct {v2, v3, v8, v6}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    goto :goto_3

    :cond_4
    move v6, v7

    goto :goto_4
.end method

.method public inflateItems(Lcom/android/hwcamera/settings/MenuItem;Z)V
    .locals 6
    .parameter "item"
    .parameter "revert"

    .prologue
    const/4 v5, 0x0

    .line 83
    invoke-virtual {p0}, Lcom/android/hwcamera/settings/MenuInflater;->isMenuOpen()Z

    move-result v3

    if-nez v3, :cond_0

    .line 84
    iget-object v3, p0, Lcom/android/hwcamera/settings/MenuInflater;->mlistener:Lcom/android/hwcamera/settings/MenuController$OnMenuStateChangedListener;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/hwcamera/settings/MenuInflater;->mlistener:Lcom/android/hwcamera/settings/MenuController$OnMenuStateChangedListener;

    invoke-interface {v3}, Lcom/android/hwcamera/settings/MenuController$OnMenuStateChangedListener;->onMenuOpened()V

    .line 88
    :cond_0
    invoke-virtual {p1}, Lcom/android/hwcamera/settings/MenuItem;->getChildViewType()I

    move-result v3

    const/4 v4, 0x2

    if-ne v3, v4, :cond_3

    .line 89
    iget-object v1, p0, Lcom/android/hwcamera/settings/MenuInflater;->mShootmodeRotateLayout:Lcom/android/hwcamera/ui/RotateLayout;

    .line 90
    .local v1, rotateView:Landroid/view/ViewGroup;
    iget-object v2, p0, Lcom/android/hwcamera/settings/MenuInflater;->mCameraShootmodeMenuLayout:Landroid/view/ViewGroup;

    .line 95
    .local v2, settingsLayout:Landroid/view/ViewGroup;
    :goto_0
    invoke-virtual {v1}, Lcom/android/hwcamera/ui/RotateLayout;->getVisibility()I

    move-result v3

    if-eqz v3, :cond_1

    .line 96
    invoke-virtual {v1}, Lcom/android/hwcamera/ui/RotateLayout;->requestLayout()V

    .line 97
    invoke-virtual {v1, v5}, Lcom/android/hwcamera/ui/RotateLayout;->setVisibility(I)V

    .line 99
    :cond_1
    const/4 v0, 0x0

    .line 100
    .local v0, isDelay:Z
    invoke-virtual {p1}, Lcom/android/hwcamera/settings/MenuItem;->getChildsLayout()Lcom/android/hwcamera/settings/dynaui/layout/DynamicLayout;

    move-result-object v3

    if-eqz v3, :cond_4

    invoke-virtual {p1}, Lcom/android/hwcamera/settings/MenuItem;->getChildsLayout()Lcom/android/hwcamera/settings/dynaui/layout/DynamicLayout;

    move-result-object v3

    invoke-interface {v3}, Lcom/android/hwcamera/settings/dynaui/layout/DynamicLayout;->getView()Landroid/view/View;

    move-result-object v3

    if-eqz v3, :cond_4

    .line 101
    invoke-virtual {p1}, Lcom/android/hwcamera/settings/MenuItem;->getChildsLayout()Lcom/android/hwcamera/settings/dynaui/layout/DynamicLayout;

    move-result-object v3

    invoke-interface {v3}, Lcom/android/hwcamera/settings/dynaui/layout/DynamicLayout;->getView()Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, v5}, Landroid/view/View;->setVisibility(I)V

    .line 102
    if-nez p2, :cond_2

    invoke-virtual {p1}, Lcom/android/hwcamera/settings/MenuItem;->getChildsLayout()Lcom/android/hwcamera/settings/dynaui/layout/DynamicLayout;

    move-result-object v3

    invoke-interface {v3}, Lcom/android/hwcamera/settings/dynaui/layout/DynamicLayout;->reset()V

    .line 107
    :cond_2
    :goto_1
    invoke-static {v2, p2, v0}, Lcom/android/hwcamera/settings/AnimationUtil;->translate(Landroid/view/ViewGroup;ZZ)V

    .line 108
    return-void

    .line 92
    .end local v0           #isDelay:Z
    .end local v1           #rotateView:Landroid/view/ViewGroup;
    .end local v2           #settingsLayout:Landroid/view/ViewGroup;
    :cond_3
    iget-object v1, p0, Lcom/android/hwcamera/settings/MenuInflater;->mExtandRotateLayout:Lcom/android/hwcamera/ui/RotateLayout;

    .line 93
    .restart local v1       #rotateView:Landroid/view/ViewGroup;
    iget-object v2, p0, Lcom/android/hwcamera/settings/MenuInflater;->mCameraExtandMenuLayout:Landroid/view/ViewGroup;

    .restart local v2       #settingsLayout:Landroid/view/ViewGroup;
    goto :goto_0

    .line 104
    .restart local v0       #isDelay:Z
    :cond_4
    iget-object v3, p0, Lcom/android/hwcamera/settings/MenuInflater;->mContext:Landroid/content/Context;

    invoke-static {v2, p1, v3}, Lcom/android/hwcamera/settings/dynaui/layout/MenuInflateUtil;->inflateDynamicLayout(Landroid/view/ViewGroup;Lcom/android/hwcamera/settings/MenuItem;Landroid/content/Context;)V

    .line 105
    const/4 v0, 0x1

    goto :goto_1
.end method

.method public inflaterItem(Lcom/android/hwcamera/settings/MenuItem;)V
    .locals 3
    .parameter "item"

    .prologue
    .line 73
    iget-object v0, p0, Lcom/android/hwcamera/settings/MenuInflater;->mCameraMainMenuLayout:Landroid/view/ViewGroup;

    if-nez v0, :cond_0

    .line 79
    :goto_0
    return-void

    .line 75
    :cond_0
    iget-object v0, p0, Lcom/android/hwcamera/settings/MenuInflater;->mCameraMainMenuLayout:Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/android/hwcamera/settings/MenuInflater;->mCameraMainMenuMiddleLayout:Landroid/view/ViewGroup;

    iget-object v2, p0, Lcom/android/hwcamera/settings/MenuInflater;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v0, v1, p1, v2}, Lcom/android/hwcamera/settings/MenuInflater;->inflateRootItemView(Landroid/view/ViewGroup;Landroid/view/ViewGroup;Lcom/android/hwcamera/settings/MenuItem;Landroid/content/Context;)V

    .line 78
    iget v0, p0, Lcom/android/hwcamera/settings/MenuInflater;->mOrientation:I

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/android/hwcamera/settings/MenuInflater;->onOrientationChanged(IZ)V

    goto :goto_0
.end method

.method public initialize(I)V
    .locals 5
    .parameter "orientation"

    .prologue
    const/16 v4, 0x8

    const/4 v3, -0x1

    .line 112
    iput p1, p0, Lcom/android/hwcamera/settings/MenuInflater;->mOrientation:I

    .line 113
    iget-object v1, p0, Lcom/android/hwcamera/settings/MenuInflater;->mContext:Landroid/content/Context;

    check-cast v1, Landroid/app/Activity;

    const v2, 0x7f100027

    invoke-virtual {v1, v2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    iput-object v1, p0, Lcom/android/hwcamera/settings/MenuInflater;->mCameraMainMenuLayout:Landroid/view/ViewGroup;

    .line 114
    iget-object v1, p0, Lcom/android/hwcamera/settings/MenuInflater;->mCameraMainMenuLayout:Landroid/view/ViewGroup;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/hwcamera/settings/MenuInflater;->mCameraMainMenuLayout:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 117
    :cond_0
    new-instance v1, Landroid/widget/LinearLayout;

    iget-object v2, p0, Lcom/android/hwcamera/settings/MenuInflater;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/hwcamera/settings/MenuInflater;->mCameraMainMenuMiddleLayout:Landroid/view/ViewGroup;

    .line 118
    iget-object v1, p0, Lcom/android/hwcamera/settings/MenuInflater;->mCameraMainMenuMiddleLayout:Landroid/view/ViewGroup;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/hwcamera/settings/MenuInflater;->mCameraMainMenuLayout:Landroid/view/ViewGroup;

    if-eqz v1, :cond_1

    .line 119
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v1, 0x3f80

    invoke-direct {v0, v3, v3, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    .line 120
    .local v0, layoutParams:Landroid/widget/LinearLayout$LayoutParams;
    iget-object v1, p0, Lcom/android/hwcamera/settings/MenuInflater;->mCameraMainMenuMiddleLayout:Landroid/view/ViewGroup;

    check-cast v1, Landroid/widget/LinearLayout;

    iget-object v2, p0, Lcom/android/hwcamera/settings/MenuInflater;->mCameraMainMenuLayout:Landroid/view/ViewGroup;

    check-cast v2, Landroid/widget/LinearLayout;

    invoke-virtual {v2}, Landroid/widget/LinearLayout;->getOrientation()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 121
    iget-object v1, p0, Lcom/android/hwcamera/settings/MenuInflater;->mCameraMainMenuMiddleLayout:Landroid/view/ViewGroup;

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 122
    iget-object v1, p0, Lcom/android/hwcamera/settings/MenuInflater;->mCameraMainMenuLayout:Landroid/view/ViewGroup;

    iget-object v2, p0, Lcom/android/hwcamera/settings/MenuInflater;->mCameraMainMenuMiddleLayout:Landroid/view/ViewGroup;

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 126
    .end local v0           #layoutParams:Landroid/widget/LinearLayout$LayoutParams;
    :cond_1
    iget-object v1, p0, Lcom/android/hwcamera/settings/MenuInflater;->mContext:Landroid/content/Context;

    check-cast v1, Landroid/app/Activity;

    const v2, 0x7f100029

    invoke-virtual {v1, v2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    iput-object v1, p0, Lcom/android/hwcamera/settings/MenuInflater;->mCameraExtandMenuLayout:Landroid/view/ViewGroup;

    .line 127
    iget-object v1, p0, Lcom/android/hwcamera/settings/MenuInflater;->mCameraExtandMenuLayout:Landroid/view/ViewGroup;

    new-instance v2, Lcom/android/hwcamera/settings/MenuInflater$1;

    invoke-direct {v2, p0}, Lcom/android/hwcamera/settings/MenuInflater$1;-><init>(Lcom/android/hwcamera/settings/MenuInflater;)V

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 132
    iget-object v1, p0, Lcom/android/hwcamera/settings/MenuInflater;->mCameraExtandMenuLayout:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 133
    iget-object v1, p0, Lcom/android/hwcamera/settings/MenuInflater;->mContext:Landroid/content/Context;

    check-cast v1, Landroid/app/Activity;

    const v2, 0x7f100028

    invoke-virtual {v1, v2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/hwcamera/ui/RotateLayout;

    iput-object v1, p0, Lcom/android/hwcamera/settings/MenuInflater;->mExtandRotateLayout:Lcom/android/hwcamera/ui/RotateLayout;

    .line 134
    iget-object v1, p0, Lcom/android/hwcamera/settings/MenuInflater;->mExtandRotateLayout:Lcom/android/hwcamera/ui/RotateLayout;

    invoke-virtual {v1, v4}, Lcom/android/hwcamera/ui/RotateLayout;->setVisibility(I)V

    .line 135
    iget-object v1, p0, Lcom/android/hwcamera/settings/MenuInflater;->mContext:Landroid/content/Context;

    check-cast v1, Landroid/app/Activity;

    const v2, 0x7f10002b

    invoke-virtual {v1, v2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    iput-object v1, p0, Lcom/android/hwcamera/settings/MenuInflater;->mCameraShootmodeMenuLayout:Landroid/view/ViewGroup;

    .line 136
    iget-object v1, p0, Lcom/android/hwcamera/settings/MenuInflater;->mCameraShootmodeMenuLayout:Landroid/view/ViewGroup;

    new-instance v2, Lcom/android/hwcamera/settings/MenuInflater$2;

    invoke-direct {v2, p0}, Lcom/android/hwcamera/settings/MenuInflater$2;-><init>(Lcom/android/hwcamera/settings/MenuInflater;)V

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 141
    iget-object v1, p0, Lcom/android/hwcamera/settings/MenuInflater;->mCameraShootmodeMenuLayout:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 142
    iget-object v1, p0, Lcom/android/hwcamera/settings/MenuInflater;->mContext:Landroid/content/Context;

    check-cast v1, Landroid/app/Activity;

    const v2, 0x7f10002a

    invoke-virtual {v1, v2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/hwcamera/ui/RotateLayout;

    iput-object v1, p0, Lcom/android/hwcamera/settings/MenuInflater;->mShootmodeRotateLayout:Lcom/android/hwcamera/ui/RotateLayout;

    .line 143
    iget-object v1, p0, Lcom/android/hwcamera/settings/MenuInflater;->mShootmodeRotateLayout:Lcom/android/hwcamera/ui/RotateLayout;

    invoke-virtual {v1, v4}, Lcom/android/hwcamera/ui/RotateLayout;->setVisibility(I)V

    .line 144
    iget v1, p0, Lcom/android/hwcamera/settings/MenuInflater;->mOrientation:I

    invoke-virtual {p0, v1}, Lcom/android/hwcamera/settings/MenuInflater;->onOrientationChanged(I)V

    .line 145
    return-void
.end method

.method public isMenuOpen()Z
    .locals 1

    .prologue
    .line 149
    iget-object v0, p0, Lcom/android/hwcamera/settings/MenuInflater;->mExtandRotateLayout:Lcom/android/hwcamera/ui/RotateLayout;

    invoke-virtual {v0}, Lcom/android/hwcamera/ui/RotateLayout;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/hwcamera/settings/MenuInflater;->mShootmodeRotateLayout:Lcom/android/hwcamera/ui/RotateLayout;

    invoke-virtual {v0}, Lcom/android/hwcamera/ui/RotateLayout;->getVisibility()I

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

.method public onOrientationChanged(I)V
    .locals 1
    .parameter "orientation"

    .prologue
    .line 179
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/hwcamera/settings/MenuInflater;->onOrientationChanged(IZ)V

    .line 180
    return-void
.end method

.method public popupDismissed()V
    .locals 2

    .prologue
    const/16 v1, 0x8

    .line 155
    iget-object v0, p0, Lcom/android/hwcamera/settings/MenuInflater;->mlistener:Lcom/android/hwcamera/settings/MenuController$OnMenuStateChangedListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/hwcamera/settings/MenuInflater;->mlistener:Lcom/android/hwcamera/settings/MenuController$OnMenuStateChangedListener;

    invoke-interface {v0}, Lcom/android/hwcamera/settings/MenuController$OnMenuStateChangedListener;->onMenuClosed()V

    .line 156
    :cond_0
    iget-object v0, p0, Lcom/android/hwcamera/settings/MenuInflater;->mExtandRotateLayout:Lcom/android/hwcamera/ui/RotateLayout;

    invoke-virtual {v0, v1}, Lcom/android/hwcamera/ui/RotateLayout;->setVisibility(I)V

    .line 157
    iget-object v0, p0, Lcom/android/hwcamera/settings/MenuInflater;->mCameraExtandMenuLayout:Landroid/view/ViewGroup;

    invoke-static {v0}, Lcom/android/hwcamera/Util;->invisibleChildViews(Landroid/view/ViewGroup;)V

    .line 158
    iget-object v0, p0, Lcom/android/hwcamera/settings/MenuInflater;->mShootmodeRotateLayout:Lcom/android/hwcamera/ui/RotateLayout;

    invoke-virtual {v0, v1}, Lcom/android/hwcamera/ui/RotateLayout;->setVisibility(I)V

    .line 159
    iget-object v0, p0, Lcom/android/hwcamera/settings/MenuInflater;->mCameraShootmodeMenuLayout:Landroid/view/ViewGroup;

    invoke-static {v0}, Lcom/android/hwcamera/Util;->invisibleChildViews(Landroid/view/ViewGroup;)V

    .line 160
    return-void
.end method

.method public setlistener(Lcom/android/hwcamera/settings/MenuController$OnMenuStateChangedListener;)V
    .locals 0
    .parameter "mlistener"

    .prologue
    .line 171
    iput-object p1, p0, Lcom/android/hwcamera/settings/MenuInflater;->mlistener:Lcom/android/hwcamera/settings/MenuController$OnMenuStateChangedListener;

    .line 172
    return-void
.end method
