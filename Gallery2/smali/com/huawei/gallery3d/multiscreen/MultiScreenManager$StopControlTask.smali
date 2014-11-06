.class Lcom/huawei/gallery3d/multiscreen/MultiScreenManager$StopControlTask;
.super Landroid/os/AsyncTask;
.source "MultiScreenManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/huawei/gallery3d/multiscreen/MultiScreenManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "StopControlTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Lcom/huawei/android/multiscreen/dlna/sdk/dmc/IDmcTransportController;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 108
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/huawei/gallery3d/multiscreen/MultiScreenManager$1;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 108
    invoke-direct {p0}, Lcom/huawei/gallery3d/multiscreen/MultiScreenManager$StopControlTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 108
    check-cast p1, [Lcom/huawei/android/multiscreen/dlna/sdk/dmc/IDmcTransportController;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/huawei/gallery3d/multiscreen/MultiScreenManager$StopControlTask;->doInBackground([Lcom/huawei/android/multiscreen/dlna/sdk/dmc/IDmcTransportController;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Lcom/huawei/android/multiscreen/dlna/sdk/dmc/IDmcTransportController;)Ljava/lang/Void;
    .locals 3
    .parameter "params"

    .prologue
    const/4 v2, 0x0

    .line 111
    const/4 v1, 0x0

    aget-object v0, p1, v1

    .line 112
    .local v0, controller:Lcom/huawei/android/multiscreen/dlna/sdk/dmc/IDmcTransportController;
    if-nez v0, :cond_0

    .line 115
    :goto_0
    return-object v2

    .line 113
    :cond_0
    invoke-interface {v0}, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/IDmcTransportController;->stopSync()V

    .line 114
    invoke-interface {v0}, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/IDmcTransportController;->stop()Z

    goto :goto_0
.end method
