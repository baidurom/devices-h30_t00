.class public interface abstract Lcom/android/gallery3d/app/ControllerOverlay;
.super Ljava/lang/Object;
.source "ControllerOverlay.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/gallery3d/app/ControllerOverlay$ListenerEx;,
        Lcom/android/gallery3d/app/ControllerOverlay$Listener;
    }
.end annotation


# virtual methods
.method public abstract getView()Landroid/view/View;
.end method

.method public abstract setCanReplay(Z)V
.end method

.method public abstract setListener(Lcom/android/gallery3d/app/ControllerOverlay$Listener;)V
.end method

.method public abstract setListenerEx(Lcom/android/gallery3d/app/ControllerOverlay$ListenerEx;)V
.end method

.method public abstract setTimes(IIII)V
.end method

.method public abstract show()V
.end method

.method public abstract showEnded()V
.end method

.method public abstract showErrorMessage(Ljava/lang/String;)V
.end method

.method public abstract showLoading()V
.end method

.method public abstract showPaused()V
.end method

.method public abstract showPlaying()V
.end method
