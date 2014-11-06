.class public Lcom/huawei/android/multiscreen/mirror/sdk/service/agent/WifiDisplayDeviceChangedListenerAgent;
.super Lcom/huawei/android/multiscreen/mirror/sdk/service/aidl/AIDLWifiDisplayDeviceChangedListener$Stub;
.source "WifiDisplayDeviceChangedListenerAgent.java"


# instance fields
.field private listener:Lcom/huawei/android/multiscreen/mirror/sdk/common/WifiDisplayDeviceChangedListener;


# direct methods
.method public constructor <init>(Lcom/huawei/android/multiscreen/mirror/sdk/common/WifiDisplayDeviceChangedListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 12
    invoke-direct {p0}, Lcom/huawei/android/multiscreen/mirror/sdk/service/aidl/AIDLWifiDisplayDeviceChangedListener$Stub;-><init>()V

    .line 14
    iput-object p1, p0, Lcom/huawei/android/multiscreen/mirror/sdk/service/agent/WifiDisplayDeviceChangedListenerAgent;->listener:Lcom/huawei/android/multiscreen/mirror/sdk/common/WifiDisplayDeviceChangedListener;

    .line 15
    return-void
.end method


# virtual methods
.method public onWifiDeviceChanged()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 19
    iget-object v0, p0, Lcom/huawei/android/multiscreen/mirror/sdk/service/agent/WifiDisplayDeviceChangedListenerAgent;->listener:Lcom/huawei/android/multiscreen/mirror/sdk/common/WifiDisplayDeviceChangedListener;

    invoke-interface {v0}, Lcom/huawei/android/multiscreen/mirror/sdk/common/WifiDisplayDeviceChangedListener;->onWifiDeviceChanged()V

    .line 20
    return-void
.end method
