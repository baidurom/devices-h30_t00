.class Lcom/android/gallery3d/app/DmrController$ChangeVolumeTask;
.super Landroid/os/AsyncTask;
.source "DmrController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/gallery3d/app/DmrController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ChangeVolumeTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Integer;",
        "Ljava/lang/Void;",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/gallery3d/app/DmrController;


# direct methods
.method private constructor <init>(Lcom/android/gallery3d/app/DmrController;)V
    .locals 0
    .parameter

    .prologue
    .line 152
    iput-object p1, p0, Lcom/android/gallery3d/app/DmrController$ChangeVolumeTask;->this$0:Lcom/android/gallery3d/app/DmrController;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/gallery3d/app/DmrController;Lcom/android/gallery3d/app/DmrController$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 152
    invoke-direct {p0, p1}, Lcom/android/gallery3d/app/DmrController$ChangeVolumeTask;-><init>(Lcom/android/gallery3d/app/DmrController;)V

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Integer;)Ljava/lang/Boolean;
    .locals 7
    .parameter "params"

    .prologue
    .line 155
    const/4 v2, 0x0

    .line 156
    .local v2, result:Z
    iget-object v4, p0, Lcom/android/gallery3d/app/DmrController$ChangeVolumeTask;->this$0:Lcom/android/gallery3d/app/DmrController;

    #getter for: Lcom/android/gallery3d/app/DmrController;->mController:Lcom/huawei/android/multiscreen/dlna/sdk/dmc/IDmcTransportController;
    invoke-static {v4}, Lcom/android/gallery3d/app/DmrController;->access$200(Lcom/android/gallery3d/app/DmrController;)Lcom/huawei/android/multiscreen/dlna/sdk/dmc/IDmcTransportController;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 157
    const/4 v4, 0x0

    aget-object v4, p1, v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 158
    .local v3, volume:I
    const/4 v4, 0x1

    aget-object v4, p1, v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 159
    .local v0, maxVolume:I
    const-string v4, "AirSharing_Controller"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/gallery3d/app/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 160
    mul-int/lit8 v4, v3, 0x64

    div-int v1, v4, v0

    .line 161
    .local v1, res:I
    iget-object v4, p0, Lcom/android/gallery3d/app/DmrController$ChangeVolumeTask;->this$0:Lcom/android/gallery3d/app/DmrController;

    #getter for: Lcom/android/gallery3d/app/DmrController;->mController:Lcom/huawei/android/multiscreen/dlna/sdk/dmc/IDmcTransportController;
    invoke-static {v4}, Lcom/android/gallery3d/app/DmrController;->access$200(Lcom/android/gallery3d/app/DmrController;)Lcom/huawei/android/multiscreen/dlna/sdk/dmc/IDmcTransportController;

    move-result-object v4

    invoke-interface {v4, v1}, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/IDmcTransportController;->setVolume(I)Z

    move-result v2

    .line 163
    .end local v0           #maxVolume:I
    .end local v1           #res:I
    .end local v3           #volume:I
    :cond_0
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    return-object v4
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 152
    check-cast p1, [Ljava/lang/Integer;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/android/gallery3d/app/DmrController$ChangeVolumeTask;->doInBackground([Ljava/lang/Integer;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method
