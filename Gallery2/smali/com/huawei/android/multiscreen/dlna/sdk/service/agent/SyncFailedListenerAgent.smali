.class public Lcom/huawei/android/multiscreen/dlna/sdk/service/agent/SyncFailedListenerAgent;
.super Lcom/huawei/android/multiscreen/dlna/sdk/service/aidl/AIDLSyncFailedListener$Stub;
.source "SyncFailedListenerAgent.java"


# instance fields
.field private syncFailedListener:Lcom/huawei/android/multiscreen/dlna/sdk/common/SyncFailedListener;


# direct methods
.method public constructor <init>(Lcom/huawei/android/multiscreen/dlna/sdk/common/SyncFailedListener;)V
    .locals 0
    .parameter "syncFailedListener"

    .prologue
    .line 16
    invoke-direct {p0}, Lcom/huawei/android/multiscreen/dlna/sdk/service/aidl/AIDLSyncFailedListener$Stub;-><init>()V

    .line 17
    iput-object p1, p0, Lcom/huawei/android/multiscreen/dlna/sdk/service/agent/SyncFailedListenerAgent;->syncFailedListener:Lcom/huawei/android/multiscreen/dlna/sdk/common/SyncFailedListener;

    .line 18
    return-void
.end method


# virtual methods
.method public OnFaild(Ljava/lang/String;Lcom/huawei/android/multiscreen/dlna/sdk/common/SyncFaildMessage;)V
    .locals 2
    .parameter "type"
    .parameter "value"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 23
    iget-object v0, p0, Lcom/huawei/android/multiscreen/dlna/sdk/service/agent/SyncFailedListenerAgent;->syncFailedListener:Lcom/huawei/android/multiscreen/dlna/sdk/common/SyncFailedListener;

    invoke-static {p1}, Lcom/huawei/android/multiscreen/dlna/sdk/common/ESyncFailedType;->valueOf(Ljava/lang/String;)Lcom/huawei/android/multiscreen/dlna/sdk/common/ESyncFailedType;

    move-result-object v1

    invoke-interface {v0, v1, p2}, Lcom/huawei/android/multiscreen/dlna/sdk/common/SyncFailedListener;->OnFaild(Lcom/huawei/android/multiscreen/dlna/sdk/common/ESyncFailedType;Lcom/huawei/android/multiscreen/dlna/sdk/common/SyncFaildMessage;)V

    .line 24
    return-void
.end method

.method public getId()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 28
    iget-object v0, p0, Lcom/huawei/android/multiscreen/dlna/sdk/service/agent/SyncFailedListenerAgent;->syncFailedListener:Lcom/huawei/android/multiscreen/dlna/sdk/common/SyncFailedListener;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method
