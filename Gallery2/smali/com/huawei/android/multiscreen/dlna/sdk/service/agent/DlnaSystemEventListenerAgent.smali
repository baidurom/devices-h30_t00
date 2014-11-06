.class public Lcom/huawei/android/multiscreen/dlna/sdk/service/agent/DlnaSystemEventListenerAgent;
.super Lcom/huawei/android/multiscreen/dlna/sdk/service/aidl/AIDLDlnaSystemEventListener$Stub;
.source "DlnaSystemEventListenerAgent.java"


# instance fields
.field private listener:Lcom/huawei/android/multiscreen/dlna/sdk/dlnamanager/DlnaSystemEventListener;


# direct methods
.method public constructor <init>(Lcom/huawei/android/multiscreen/dlna/sdk/dlnamanager/DlnaSystemEventListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 17
    invoke-direct {p0}, Lcom/huawei/android/multiscreen/dlna/sdk/service/aidl/AIDLDlnaSystemEventListener$Stub;-><init>()V

    .line 18
    iput-object p1, p0, Lcom/huawei/android/multiscreen/dlna/sdk/service/agent/DlnaSystemEventListenerAgent;->listener:Lcom/huawei/android/multiscreen/dlna/sdk/dlnamanager/DlnaSystemEventListener;

    .line 19
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
    .line 28
    iget-object v0, p0, Lcom/huawei/android/multiscreen/dlna/sdk/service/agent/DlnaSystemEventListenerAgent;->listener:Lcom/huawei/android/multiscreen/dlna/sdk/dlnamanager/DlnaSystemEventListener;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method

.method public onEvent(Ljava/lang/String;)V
    .locals 3
    .parameter "eventType"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 23
    iget-object v0, p0, Lcom/huawei/android/multiscreen/dlna/sdk/service/agent/DlnaSystemEventListenerAgent;->listener:Lcom/huawei/android/multiscreen/dlna/sdk/dlnamanager/DlnaSystemEventListener;

    invoke-static {p1}, Lcom/huawei/android/multiscreen/dlna/sdk/dlnamanager/ESystemEventType;->valueOf(Ljava/lang/String;)Lcom/huawei/android/multiscreen/dlna/sdk/dlnamanager/ESystemEventType;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lcom/huawei/android/multiscreen/dlna/sdk/dlnamanager/DlnaSystemEventListener;->onEvent(Lcom/huawei/android/multiscreen/dlna/sdk/dlnamanager/ESystemEventType;Ljava/lang/Object;)V

    .line 24
    return-void
.end method
