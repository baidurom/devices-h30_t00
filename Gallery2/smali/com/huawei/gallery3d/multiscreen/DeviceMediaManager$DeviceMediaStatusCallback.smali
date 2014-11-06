.class public interface abstract Lcom/huawei/gallery3d/multiscreen/DeviceMediaManager$DeviceMediaStatusCallback;
.super Ljava/lang/Object;
.source "DeviceMediaManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/huawei/gallery3d/multiscreen/DeviceMediaManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "DeviceMediaStatusCallback"
.end annotation


# virtual methods
.method public abstract onDeviceChanged()V
.end method

.method public abstract onDeviceDown(Lcom/huawei/android/multiscreen/dlna/sdk/dmc/IRemoteDevice;)V
.end method

.method public abstract onDeviceUp(Lcom/huawei/android/multiscreen/dlna/sdk/dmc/IRemoteDevice;)V
.end method

.method public abstract onMediaChanged(I)V
.end method
