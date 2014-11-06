.class public interface abstract Lcom/huawei/android/multiscreen/dlna/sdk/service/aidl/AIDLUploadTransferProgressListener;
.super Ljava/lang/Object;
.source "AIDLUploadTransferProgressListener.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/huawei/android/multiscreen/dlna/sdk/service/aidl/AIDLUploadTransferProgressListener$Stub;
    }
.end annotation


# virtual methods
.method public abstract getId()I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract getTransferId()I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract notifyTransferProgress(Lcom/huawei/android/multiscreen/dlna/sdk/common/DlnaUploadTransferProgressInfo;I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
