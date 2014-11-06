.class Lcom/android/hwcamera/PanoramaModule$PanoOrientationEventListener;
.super Landroid/view/OrientationEventListener;
.source "PanoramaModule.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/hwcamera/PanoramaModule;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "PanoOrientationEventListener"
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter "context"

    .prologue
    .line 208
    invoke-direct {p0, p1}, Landroid/view/OrientationEventListener;-><init>(Landroid/content/Context;)V

    .line 209
    return-void
.end method


# virtual methods
.method public onOrientationChanged(I)V
    .locals 0
    .parameter "orientation"

    .prologue
    .line 226
    return-void
.end method
