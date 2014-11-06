.class public Lcom/android/hwcamera/ui/RotateLayoutForZoom;
.super Lcom/android/hwcamera/ui/RotateLayout;
.source "RotateLayoutForZoom.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 9
    invoke-direct {p0, p1, p2}, Lcom/android/hwcamera/ui/RotateLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 11
    return-void
.end method


# virtual methods
.method public shouldDelayChildPressedState()Z
    .locals 1

    .prologue
    .line 16
    const/4 v0, 0x1

    return v0
.end method
