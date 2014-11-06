.class public abstract Lcom/huawei/android/multiscreen/dlna/sdk/cache/BaseAsyncTask;
.super Landroid/os/AsyncTask;
.source "BaseAsyncTask.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Landroid/graphics/Bitmap;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract addLoaderCallback(Lcom/huawei/android/multiscreen/dlna/sdk/cache/IBitmapCache$LoaderCallback;)V
.end method

.method public abstract setTimeoutOccur(Z)V
.end method
