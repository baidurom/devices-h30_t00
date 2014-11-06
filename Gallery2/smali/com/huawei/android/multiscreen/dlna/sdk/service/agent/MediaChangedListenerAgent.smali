.class public Lcom/huawei/android/multiscreen/dlna/sdk/service/agent/MediaChangedListenerAgent;
.super Lcom/huawei/android/multiscreen/dlna/sdk/service/aidl/AIDLMediaChangedListener$Stub;
.source "MediaChangedListenerAgent.java"


# instance fields
.field private listener:Lcom/huawei/android/multiscreen/dlna/sdk/dmc/MediaChangedListener;


# direct methods
.method public constructor <init>(Lcom/huawei/android/multiscreen/dlna/sdk/dmc/MediaChangedListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 15
    invoke-direct {p0}, Lcom/huawei/android/multiscreen/dlna/sdk/service/aidl/AIDLMediaChangedListener$Stub;-><init>()V

    .line 16
    iput-object p1, p0, Lcom/huawei/android/multiscreen/dlna/sdk/service/agent/MediaChangedListenerAgent;->listener:Lcom/huawei/android/multiscreen/dlna/sdk/dmc/MediaChangedListener;

    .line 17
    return-void
.end method


# virtual methods
.method public getId()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 26
    iget-object v0, p0, Lcom/huawei/android/multiscreen/dlna/sdk/service/agent/MediaChangedListenerAgent;->listener:Lcom/huawei/android/multiscreen/dlna/sdk/dmc/MediaChangedListener;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method

.method public onMediaChanged(I)V
    .locals 1
    .parameter "deviceId"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 21
    iget-object v0, p0, Lcom/huawei/android/multiscreen/dlna/sdk/service/agent/MediaChangedListenerAgent;->listener:Lcom/huawei/android/multiscreen/dlna/sdk/dmc/MediaChangedListener;

    invoke-interface {v0, p1}, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/MediaChangedListener;->onMediaChanged(I)V

    .line 22
    return-void
.end method
