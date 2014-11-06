.class public interface abstract Lcom/android/gallery3d/data/FaceInfoProcess$ScanProgressListener;
.super Ljava/lang/Object;
.source "FaceInfoProcess.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/gallery3d/data/FaceInfoProcess;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "ScanProgressListener"
.end annotation


# virtual methods
.method public abstract onProgress(I)V
.end method

.method public abstract onScanBegin(I)V
.end method

.method public abstract onScanFinish()V
.end method
