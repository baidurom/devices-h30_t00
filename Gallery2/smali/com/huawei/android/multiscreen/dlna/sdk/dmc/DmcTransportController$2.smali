.class Lcom/huawei/android/multiscreen/dlna/sdk/dmc/DmcTransportController$2;
.super Ljava/lang/Object;
.source "DmcTransportController.java"

# interfaces
.implements Lcom/huawei/android/multiscreen/dlna/sdk/dmc/VolumeChangedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/huawei/android/multiscreen/dlna/sdk/dmc/DmcTransportController;-><init>(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/huawei/android/multiscreen/dlna/sdk/dmc/DmcTransportController;


# direct methods
.method constructor <init>(Lcom/huawei/android/multiscreen/dlna/sdk/dmc/DmcTransportController;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/DmcTransportController$2;->this$0:Lcom/huawei/android/multiscreen/dlna/sdk/dmc/DmcTransportController;

    .line 66
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onVolumeChange(Lcom/huawei/android/multiscreen/dlna/sdk/common/VolumeInfo;)V
    .locals 1
    .parameter "volume"

    .prologue
    .line 70
    iget-object v0, p0, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/DmcTransportController$2;->this$0:Lcom/huawei/android/multiscreen/dlna/sdk/dmc/DmcTransportController;

    #getter for: Lcom/huawei/android/multiscreen/dlna/sdk/dmc/DmcTransportController;->mPlayerStateChangedListener:Lcom/huawei/android/multiscreen/dlna/sdk/common/PlayerStateChangedListener;
    invoke-static {v0}, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/DmcTransportController;->access$0(Lcom/huawei/android/multiscreen/dlna/sdk/dmc/DmcTransportController;)Lcom/huawei/android/multiscreen/dlna/sdk/common/PlayerStateChangedListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 71
    iget-object v0, p0, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/DmcTransportController$2;->this$0:Lcom/huawei/android/multiscreen/dlna/sdk/dmc/DmcTransportController;

    #getter for: Lcom/huawei/android/multiscreen/dlna/sdk/dmc/DmcTransportController;->mPlayerStateChangedListener:Lcom/huawei/android/multiscreen/dlna/sdk/common/PlayerStateChangedListener;
    invoke-static {v0}, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/DmcTransportController;->access$0(Lcom/huawei/android/multiscreen/dlna/sdk/dmc/DmcTransportController;)Lcom/huawei/android/multiscreen/dlna/sdk/common/PlayerStateChangedListener;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/huawei/android/multiscreen/dlna/sdk/common/PlayerStateChangedListener;->onVolumeChanged(Lcom/huawei/android/multiscreen/dlna/sdk/common/VolumeInfo;)V

    .line 73
    :cond_0
    return-void
.end method
