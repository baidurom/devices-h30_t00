.class public interface abstract Lcom/huawei/android/multiscreen/mirror/sdk/service/aidl/AIDLWifiDisplayDeviceChangedListener;
.super Ljava/lang/Object;
.source "AIDLWifiDisplayDeviceChangedListener.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/huawei/android/multiscreen/mirror/sdk/service/aidl/AIDLWifiDisplayDeviceChangedListener$Stub;
    }
.end annotation


# virtual methods
.method public abstract onWifiDeviceChanged()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
