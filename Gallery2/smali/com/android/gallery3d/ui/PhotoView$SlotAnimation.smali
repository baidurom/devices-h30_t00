.class public abstract Lcom/android/gallery3d/ui/PhotoView$SlotAnimation;
.super Lcom/android/gallery3d/anim/Animation;
.source "PhotoView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/gallery3d/ui/PhotoView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "SlotAnimation"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 1811
    invoke-direct {p0}, Lcom/android/gallery3d/anim/Animation;-><init>()V

    .line 1812
    new-instance v0, Landroid/view/animation/DecelerateInterpolator;

    const/high16 v1, 0x4080

    invoke-direct {v0, v1}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    invoke-virtual {p0, v0}, Lcom/android/gallery3d/ui/PhotoView$SlotAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 1813
    const/16 v0, 0x190

    invoke-virtual {p0, v0}, Lcom/android/gallery3d/ui/PhotoView$SlotAnimation;->setDuration(I)V

    .line 1814
    return-void
.end method


# virtual methods
.method public abstract apply(Lcom/android/gallery3d/ui/GLCanvas;Landroid/graphics/Rect;)V
.end method
