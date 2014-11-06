.class public interface abstract Lcom/huawei/android/multiscreen/dlna/sdk/service/aidl/AIDLSyncFailedListener;
.super Ljava/lang/Object;
.source "AIDLSyncFailedListener.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/huawei/android/multiscreen/dlna/sdk/service/aidl/AIDLSyncFailedListener$Stub;
    }
.end annotation


# virtual methods
.method public abstract OnFaild(Ljava/lang/String;Lcom/huawei/android/multiscreen/dlna/sdk/common/SyncFaildMessage;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract getId()I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
