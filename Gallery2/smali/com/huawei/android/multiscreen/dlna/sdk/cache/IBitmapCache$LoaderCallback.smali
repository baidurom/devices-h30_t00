.class public interface abstract Lcom/huawei/android/multiscreen/dlna/sdk/cache/IBitmapCache$LoaderCallback;
.super Ljava/lang/Object;
.source "IBitmapCache.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/huawei/android/multiscreen/dlna/sdk/cache/IBitmapCache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "LoaderCallback"
.end annotation


# virtual methods
.method public abstract onLoaded(Ljava/lang/String;Landroid/graphics/Bitmap;)V
.end method

.method public abstract onTimeout(Ljava/lang/String;)V
.end method
