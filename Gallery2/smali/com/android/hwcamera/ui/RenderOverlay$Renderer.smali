.class interface abstract Lcom/android/hwcamera/ui/RenderOverlay$Renderer;
.super Ljava/lang/Object;
.source "RenderOverlay.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/hwcamera/ui/RenderOverlay;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x608
    name = "Renderer"
.end annotation


# virtual methods
.method public abstract draw(Landroid/graphics/Canvas;)V
.end method

.method public abstract handlesTouch()Z
.end method

.method public abstract layout(IIII)V
.end method

.method public abstract onTouchEvent(Landroid/view/MotionEvent;)Z
.end method

.method public abstract setOverlay(Lcom/android/hwcamera/ui/RenderOverlay;)V
.end method
