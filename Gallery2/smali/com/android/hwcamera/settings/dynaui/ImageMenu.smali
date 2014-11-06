.class public Lcom/android/hwcamera/settings/dynaui/ImageMenu;
.super Lcom/android/hwcamera/settings/dynaui/AbstractDynamicUI;
.source "ImageMenu.java"


# instance fields
.field private imageView:Lcom/android/hwcamera/ui/RotateImageView;


# direct methods
.method public constructor <init>(Lcom/android/hwcamera/settings/MenuItem;Landroid/content/Context;)V
    .locals 2
    .parameter "item"
    .parameter "context"

    .prologue
    .line 14
    invoke-direct {p0}, Lcom/android/hwcamera/settings/dynaui/AbstractDynamicUI;-><init>()V

    .line 15
    new-instance v1, Lcom/android/hwcamera/ui/RotateImageView;

    invoke-direct {v1, p2}, Lcom/android/hwcamera/ui/RotateImageView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/hwcamera/settings/dynaui/ImageMenu;->imageView:Lcom/android/hwcamera/ui/RotateImageView;

    .line 16
    invoke-virtual {p1}, Lcom/android/hwcamera/settings/MenuItem;->getImage()I

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p1}, Lcom/android/hwcamera/settings/MenuItem;->getImage()I

    move-result v0

    .line 17
    .local v0, iconResId:I
    :goto_0
    iget-object v1, p0, Lcom/android/hwcamera/settings/dynaui/ImageMenu;->imageView:Lcom/android/hwcamera/ui/RotateImageView;

    invoke-virtual {v1, v0}, Lcom/android/hwcamera/ui/RotateImageView;->setImageResource(I)V

    .line 18
    invoke-virtual {p1, p0}, Lcom/android/hwcamera/settings/MenuItem;->setDynamicView(Lcom/android/hwcamera/settings/dynaui/DynamicUI;)V

    .line 19
    return-void

    .line 16
    .end local v0           #iconResId:I
    :cond_0
    invoke-virtual {p1}, Lcom/android/hwcamera/settings/MenuItem;->getIcon()I

    move-result v0

    goto :goto_0
.end method


# virtual methods
.method public getView()Landroid/view/View;
    .locals 1

    .prologue
    .line 23
    iget-object v0, p0, Lcom/android/hwcamera/settings/dynaui/ImageMenu;->imageView:Lcom/android/hwcamera/ui/RotateImageView;

    return-object v0
.end method

.method public reflate(Lcom/android/hwcamera/settings/MenuItem;)V
    .locals 2
    .parameter "item"

    .prologue
    .line 28
    invoke-virtual {p1}, Lcom/android/hwcamera/settings/MenuItem;->getImage()I

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p1}, Lcom/android/hwcamera/settings/MenuItem;->getImage()I

    move-result v0

    .line 29
    .local v0, iconResId:I
    :goto_0
    iget-object v1, p0, Lcom/android/hwcamera/settings/dynaui/ImageMenu;->imageView:Lcom/android/hwcamera/ui/RotateImageView;

    invoke-virtual {v1, v0}, Lcom/android/hwcamera/ui/RotateImageView;->setImageResource(I)V

    .line 30
    return-void

    .line 28
    .end local v0           #iconResId:I
    :cond_0
    invoke-virtual {p1}, Lcom/android/hwcamera/settings/MenuItem;->getIcon()I

    move-result v0

    goto :goto_0
.end method

.method public setContentDescription(Ljava/lang/String;)V
    .locals 1
    .parameter "contentDescription"

    .prologue
    .line 35
    iget-object v0, p0, Lcom/android/hwcamera/settings/dynaui/ImageMenu;->imageView:Lcom/android/hwcamera/ui/RotateImageView;

    invoke-virtual {v0, p1}, Lcom/android/hwcamera/ui/RotateImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 36
    return-void
.end method
