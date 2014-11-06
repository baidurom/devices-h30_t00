.class public Lcom/huawei/android/multiscreen/dlna/sdk/service/agent/IShareFileFilterAgent;
.super Lcom/huawei/android/multiscreen/dlna/sdk/service/aidl/AIDLIShareFileFilter$Stub;
.source "IShareFileFilterAgent.java"


# instance fields
.field private shareFileFilter:Lcom/huawei/android/multiscreen/dlna/sdk/dms/IShareFileFilter;


# direct methods
.method public constructor <init>(Lcom/huawei/android/multiscreen/dlna/sdk/dms/IShareFileFilter;)V
    .locals 0
    .parameter "shareFileFilter"

    .prologue
    .line 14
    invoke-direct {p0}, Lcom/huawei/android/multiscreen/dlna/sdk/service/aidl/AIDLIShareFileFilter$Stub;-><init>()V

    .line 15
    iput-object p1, p0, Lcom/huawei/android/multiscreen/dlna/sdk/service/agent/IShareFileFilterAgent;->shareFileFilter:Lcom/huawei/android/multiscreen/dlna/sdk/dms/IShareFileFilter;

    .line 16
    return-void
.end method


# virtual methods
.method public isValidSharePath(Ljava/lang/String;)Z
    .locals 1
    .parameter "filePath"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 20
    iget-object v0, p0, Lcom/huawei/android/multiscreen/dlna/sdk/service/agent/IShareFileFilterAgent;->shareFileFilter:Lcom/huawei/android/multiscreen/dlna/sdk/dms/IShareFileFilter;

    invoke-interface {v0, p1}, Lcom/huawei/android/multiscreen/dlna/sdk/dms/IShareFileFilter;->isValidSharePath(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method
