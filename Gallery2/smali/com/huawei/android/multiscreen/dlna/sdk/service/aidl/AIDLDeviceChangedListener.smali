.class public interface abstract Lcom/huawei/android/multiscreen/dlna/sdk/service/aidl/AIDLDeviceChangedListener;
.super Ljava/lang/Object;
.source "AIDLDeviceChangedListener.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/huawei/android/multiscreen/dlna/sdk/service/aidl/AIDLDeviceChangedListener$Stub;
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

.method public abstract onDeviceDown(Lcom/huawei/android/multiscreen/dlna/sdk/service/aidl/RemoteDevice;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract onDeviceUp(Lcom/huawei/android/multiscreen/dlna/sdk/service/aidl/RemoteDevice;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
