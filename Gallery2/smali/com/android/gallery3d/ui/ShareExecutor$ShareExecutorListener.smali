.class public interface abstract Lcom/android/gallery3d/ui/ShareExecutor$ShareExecutorListener;
.super Ljava/lang/Object;
.source "ShareExecutor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/gallery3d/ui/ShareExecutor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "ShareExecutorListener"
.end annotation


# virtual methods
.method public abstract getUIHandler()Landroid/os/Handler;
.end method

.method public abstract onProcessDone(Ljava/util/ArrayList;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/net/Uri;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract onProgress(Lcom/android/gallery3d/data/MediaObject;)V
.end method

.method public abstract shouldAddWaterMark()Z
.end method

.method public abstract shouldConvertVI()Z
.end method
