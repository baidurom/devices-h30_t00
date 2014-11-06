.class public Lcom/android/gallery3d/app/Wallpaper;
.super Landroid/app/Activity;
.source "Wallpaper.java"


# static fields
.field public static final ACTIVITY_ALIAS_NAME:Ljava/lang/String; = "com.android.gallery3d.app.LockWallpaper"

.field private static final IMAGE_TYPE:Ljava/lang/String; = "image/*"

.field private static final KEY_PICKED_ITEM:Ljava/lang/String; = "picked-item"

.field private static final KEY_STATE:Ljava/lang/String; = "activity-state"

.field private static final STATE_INIT:I = 0x0

.field private static final STATE_PHOTO_PICKED:I = 0x1

.field private static final TAG:Ljava/lang/String; = "Wallpaper"


# instance fields
.field private mPickedItem:Landroid/net/Uri;

.field private mState:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 34
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 46
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/gallery3d/app/Wallpaper;->mState:I

    return-void
.end method

.method private getDefaultDisplaySize(Landroid/graphics/Point;)Landroid/graphics/Point;
    .locals 3
    .parameter "size"
    .annotation build Landroid/annotation/TargetApi;
        value = 0xd
    .end annotation

    .prologue
    .line 69
    invoke-virtual {p0}, Lcom/android/gallery3d/app/Wallpaper;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v1

    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    .line 70
    .local v0, d:Landroid/view/Display;
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0xd

    if-lt v1, v2, :cond_0

    .line 72
    invoke-virtual {v0, p1}, Landroid/view/Display;->getRealSize(Landroid/graphics/Point;)V

    .line 77
    :goto_0
    return-object p1

    .line 75
    :cond_0
    invoke-virtual {v0}, Landroid/view/Display;->getWidth()I

    move-result v1

    invoke-virtual {v0}, Landroid/view/Display;->getHeight()I

    move-result v2

    invoke-virtual {p1, v1, v2}, Landroid/graphics/Point;->set(II)V

    goto :goto_0
.end method


# virtual methods
.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 2
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    .line 152
    const/4 v0, -0x1

    if-eq p2, v0, :cond_1

    .line 153
    invoke-virtual {p0, p2}, Lcom/android/gallery3d/app/Wallpaper;->setResult(I)V

    .line 154
    invoke-virtual {p0}, Lcom/android/gallery3d/app/Wallpaper;->finish()V

    .line 163
    :cond_0
    :goto_0
    return-void

    .line 157
    :cond_1
    iput p1, p0, Lcom/android/gallery3d/app/Wallpaper;->mState:I

    .line 158
    iget v0, p0, Lcom/android/gallery3d/app/Wallpaper;->mState:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 159
    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/android/gallery3d/app/Wallpaper;->mPickedItem:Landroid/net/Uri;

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1
    .parameter "bundle"

    .prologue
    .line 51
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 52
    if-eqz p1, :cond_0

    .line 53
    const-string v0, "activity-state"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/gallery3d/app/Wallpaper;->mState:I

    .line 54
    const-string v0, "picked-item"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    iput-object v0, p0, Lcom/android/gallery3d/app/Wallpaper;->mPickedItem:Landroid/net/Uri;

    .line 56
    :cond_0
    return-void
.end method

.method protected onResume()V
    .locals 15

    .prologue
    const/4 v11, 0x1

    .line 83
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 84
    invoke-virtual {p0}, Lcom/android/gallery3d/app/Wallpaper;->getIntent()Landroid/content/Intent;

    move-result-object v2

    .line 85
    .local v2, intent:Landroid/content/Intent;
    iget v12, p0, Lcom/android/gallery3d/app/Wallpaper;->mState:I

    packed-switch v12, :pswitch_data_0

    .line 148
    :goto_0
    return-void

    .line 87
    :pswitch_0
    invoke-virtual {v2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v12

    iput-object v12, p0, Lcom/android/gallery3d/app/Wallpaper;->mPickedItem:Landroid/net/Uri;

    .line 88
    iget-object v12, p0, Lcom/android/gallery3d/app/Wallpaper;->mPickedItem:Landroid/net/Uri;

    if-nez v12, :cond_0

    .line 89
    new-instance v12, Landroid/content/Intent;

    const-string v13, "android.intent.action.GET_CONTENT"

    invoke-direct {v12, v13}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-class v13, Lcom/android/gallery3d/app/DialogPicker;

    invoke-virtual {v12, p0, v13}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object v12

    const-string v13, "image/*"

    invoke-virtual {v12, v13}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v4

    .line 92
    .local v4, request:Landroid/content/Intent;
    invoke-virtual {p0, v4, v11}, Lcom/android/gallery3d/app/Wallpaper;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    .line 95
    .end local v4           #request:Landroid/content/Intent;
    :cond_0
    iput v11, p0, Lcom/android/gallery3d/app/Wallpaper;->mState:I

    .line 99
    :pswitch_1
    invoke-virtual {p0}, Lcom/android/gallery3d/app/Wallpaper;->getWallpaperDesiredMinimumWidth()I

    move-result v10

    .line 100
    .local v10, width:I
    invoke-virtual {p0}, Lcom/android/gallery3d/app/Wallpaper;->getWallpaperDesiredMinimumHeight()I

    move-result v1

    .line 101
    .local v1, height:I
    new-instance v12, Landroid/graphics/Point;

    invoke-direct {v12}, Landroid/graphics/Point;-><init>()V

    invoke-direct {p0, v12}, Lcom/android/gallery3d/app/Wallpaper;->getDefaultDisplaySize(Landroid/graphics/Point;)Landroid/graphics/Point;

    move-result-object v6

    .line 102
    .local v6, size:Landroid/graphics/Point;
    iget v12, v6, Landroid/graphics/Point;->x:I

    int-to-float v12, v12

    int-to-float v13, v10

    div-float v7, v12, v13

    .line 103
    .local v7, spotlightX:F
    iget v12, v6, Landroid/graphics/Point;->y:I

    int-to-float v12, v12

    int-to-float v13, v1

    div-float v8, v12, v13

    .line 105
    .local v8, spotlightY:F
    invoke-virtual {v2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 106
    .local v0, extras:Landroid/os/Bundle;
    const/4 v5, 0x0

    .line 107
    .local v5, setAsTheme:Ljava/lang/String;
    const/4 v3, 0x0

    .line 108
    .local v3, isSetLockScreen:Z
    if-eqz v0, :cond_1

    .line 109
    const-string v12, "set-as-theme"

    invoke-virtual {v0, v12}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 111
    :cond_1
    const-string v12, "com.android.gallery3d.app.LockWallpaper"

    invoke-virtual {p0}, Lcom/android/gallery3d/app/Wallpaper;->getIntent()Landroid/content/Intent;

    move-result-object v13

    invoke-virtual {v13}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v13

    invoke-virtual {v13}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    .line 112
    .local v9, unlockWallpaper:Z
    const-string v12, "unlock"

    invoke-virtual {v12, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_2

    if-eqz v9, :cond_3

    .line 114
    :cond_2
    iget v10, v6, Landroid/graphics/Point;->x:I

    .line 115
    iget v1, v6, Landroid/graphics/Point;->y:I

    .line 117
    const/4 v7, 0x0

    .line 118
    const/4 v8, 0x0

    .line 119
    const/4 v3, 0x1

    .line 120
    if-nez v5, :cond_3

    const-string v5, "unlock"

    .line 123
    :cond_3
    new-instance v12, Landroid/content/Intent;

    const-string v13, "com.android.camera.action.CROP"

    invoke-direct {v12, v13}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v13, p0, Lcom/android/gallery3d/app/Wallpaper;->mPickedItem:Landroid/net/Uri;

    const-string v14, "image/*"

    invoke-virtual {v12, v13, v14}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v12

    const/high16 v13, 0x200

    invoke-virtual {v12, v13}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object v12

    const-string v13, "outputX"

    invoke-virtual {v12, v13, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v12

    const-string v13, "outputY"

    invoke-virtual {v12, v13, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v12

    const-string v13, "aspectX"

    invoke-virtual {v12, v13, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v12

    const-string v13, "aspectY"

    invoke-virtual {v12, v13, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v12

    const-string v13, "fixedX"

    iget v14, v6, Landroid/graphics/Point;->x:I

    invoke-virtual {v12, v13, v14}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v12

    const-string v13, "fixedY"

    iget v14, v6, Landroid/graphics/Point;->y:I

    invoke-static {v14, v1}, Ljava/lang/Math;->max(II)I

    move-result v14

    invoke-virtual {v12, v13, v14}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v12

    const-string v13, "unlock-wallpaper"

    invoke-virtual {v12, v13, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    move-result-object v12

    const-string v13, "spotlightX"

    invoke-virtual {v12, v13, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;F)Landroid/content/Intent;

    move-result-object v12

    const-string v13, "spotlightY"

    invoke-virtual {v12, v13, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;F)Landroid/content/Intent;

    move-result-object v12

    const-string v13, "scale"

    invoke-virtual {v12, v13, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    move-result-object v12

    const-string v13, "scaleUpIfNeeded"

    invoke-virtual {v12, v13, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    move-result-object v12

    const-string v13, "noFaceDetection"

    invoke-virtual {v12, v13, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    move-result-object v12

    const-string v13, "set-as-wallpaper"

    if-nez v3, :cond_4

    :goto_1
    invoke-virtual {v12, v13, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    move-result-object v11

    const-string v12, "set-as-theme"

    invoke-virtual {v11, v12, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v4

    .line 143
    .restart local v4       #request:Landroid/content/Intent;
    const-class v11, Lcom/android/gallery3d/app/CropImage;

    invoke-virtual {v4, p0, v11}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object v11

    invoke-virtual {p0, v11}, Lcom/android/gallery3d/app/Wallpaper;->startActivity(Landroid/content/Intent;)V

    .line 145
    invoke-virtual {p0}, Lcom/android/gallery3d/app/Wallpaper;->finish()V

    goto/16 :goto_0

    .line 123
    .end local v4           #request:Landroid/content/Intent;
    :cond_4
    const/4 v11, 0x0

    goto :goto_1

    .line 85
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .parameter "saveState"

    .prologue
    .line 60
    const-string v0, "activity-state"

    iget v1, p0, Lcom/android/gallery3d/app/Wallpaper;->mState:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 61
    iget-object v0, p0, Lcom/android/gallery3d/app/Wallpaper;->mPickedItem:Landroid/net/Uri;

    if-eqz v0, :cond_0

    .line 62
    const-string v0, "picked-item"

    iget-object v1, p0, Lcom/android/gallery3d/app/Wallpaper;->mPickedItem:Landroid/net/Uri;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 64
    :cond_0
    return-void
.end method
