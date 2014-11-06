.class public Lcom/android/hwcamera/settings/dynaui/ImageLine;
.super Landroid/widget/ImageView;
.source "ImageLine.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .parameter "context"

    .prologue
    .line 11
    invoke-direct {p0, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 12
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v1, -0x1

    const/4 v2, 0x1

    invoke-static {v2}, Lcom/android/hwcamera/Util;->dpToPixel(I)I

    move-result v2

    invoke-direct {v0, v1, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v0}, Lcom/android/hwcamera/settings/dynaui/ImageLine;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 13
    const v0, 0x7f020036

    invoke-virtual {p0, v0}, Lcom/android/hwcamera/settings/dynaui/ImageLine;->setBackgroundResource(I)V

    .line 15
    return-void
.end method
