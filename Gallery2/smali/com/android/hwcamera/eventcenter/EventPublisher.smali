.class public interface abstract Lcom/android/hwcamera/eventcenter/EventPublisher;
.super Ljava/lang/Object;
.source "EventPublisher.java"


# virtual methods
.method public abstract onPause()V
.end method

.method public abstract onResume()V
.end method

.method public abstract publish(Lcom/android/hwcamera/eventcenter/Event;Ljava/util/List;Lcom/android/hwcamera/CameraActivity;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/hwcamera/eventcenter/Event;",
            "Ljava/util/List",
            "<",
            "Lcom/android/hwcamera/eventcenter/EventListener;",
            ">;",
            "Lcom/android/hwcamera/CameraActivity;",
            ")V"
        }
    .end annotation
.end method
