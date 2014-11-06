.class public interface abstract Lcom/huawei/android/multiscreen/dlna/sdk/cache/IBitmapCache;
.super Ljava/lang/Object;
.source "IBitmapCache.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/huawei/android/multiscreen/dlna/sdk/cache/IBitmapCache$LoaderCallback;
    }
.end annotation


# virtual methods
.method public abstract cancelLoaderBitmap(Ljava/lang/String;)V
.end method

.method public abstract cleanCache(Ljava/lang/String;)V
.end method

.method public abstract cleanFileCache()V
.end method

.method public abstract cleanMemonryCache()V
.end method

.method public abstract get(Ljava/lang/String;)Landroid/graphics/Bitmap;
.end method

.method public abstract getFromMemory(Ljava/lang/String;)Landroid/graphics/Bitmap;
.end method

.method public abstract loadBitmap(Ljava/lang/String;Lcom/huawei/android/multiscreen/dlna/sdk/cache/IBitmapCache$LoaderCallback;)V
.end method

.method public abstract removeAllBitmapDownloadTasks()V
.end method

.method public abstract setBitmapSize(I)V
.end method
