.class Lcom/huawei/android/multiscreen/dlna/sdk/service/aidl/AIDLDeviceChangedListener$Stub$Proxy;
.super Ljava/lang/Object;
.source "AIDLDeviceChangedListener.java"

# interfaces
.implements Lcom/huawei/android/multiscreen/dlna/sdk/service/aidl/AIDLDeviceChangedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/huawei/android/multiscreen/dlna/sdk/service/aidl/AIDLDeviceChangedListener$Stub;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Proxy"
.end annotation


# instance fields
.field private mRemote:Landroid/os/IBinder;


# direct methods
.method constructor <init>(Landroid/os/IBinder;)V
    .locals 0
    .parameter "remote"

    .prologue
    .line 90
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 92
    iput-object p1, p0, Lcom/huawei/android/multiscreen/dlna/sdk/service/aidl/AIDLDeviceChangedListener$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    .line 93
    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 1

    .prologue
    .line 96
    iget-object v0, p0, Lcom/huawei/android/multiscreen/dlna/sdk/service/aidl/AIDLDeviceChangedListener$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    return-object v0
.end method

.method public getId()I
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 107
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 108
    .local v0, _data:Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 111
    .local v1, _reply:Landroid/os/Parcel;
    :try_start_0
    const-string v3, "com.huawei.android.multiscreen.dlna.sdk.service.aidl.AIDLDeviceChangedListener"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 112
    iget-object v3, p0, Lcom/huawei/android/multiscreen/dlna/sdk/service/aidl/AIDLDeviceChangedListener$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v4, 0x1

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 113
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 114
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    .line 117
    .local v2, _result:I
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 118
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 120
    return v2

    .line 116
    .end local v2           #_result:I
    :catchall_0
    move-exception v3

    .line 117
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 118
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 119
    throw v3
.end method

.method public getInterfaceDescriptor()Ljava/lang/String;
    .locals 1

    .prologue
    .line 100
    const-string v0, "com.huawei.android.multiscreen.dlna.sdk.service.aidl.AIDLDeviceChangedListener"

    return-object v0
.end method

.method public onDeviceDown(Lcom/huawei/android/multiscreen/dlna/sdk/service/aidl/RemoteDevice;)V
    .locals 5
    .parameter "device"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 155
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 156
    .local v0, _data:Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 158
    .local v1, _reply:Landroid/os/Parcel;
    :try_start_0
    const-string v2, "com.huawei.android.multiscreen.dlna.sdk.service.aidl.AIDLDeviceChangedListener"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 159
    if-eqz p1, :cond_0

    .line 160
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 161
    const/4 v2, 0x0

    invoke-virtual {p1, v0, v2}, Lcom/huawei/android/multiscreen/dlna/sdk/service/aidl/RemoteDevice;->writeToParcel(Landroid/os/Parcel;I)V

    .line 166
    :goto_0
    iget-object v2, p0, Lcom/huawei/android/multiscreen/dlna/sdk/service/aidl/AIDLDeviceChangedListener$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x3

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 167
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 170
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 171
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 173
    return-void

    .line 164
    :cond_0
    const/4 v2, 0x0

    :try_start_1
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 169
    :catchall_0
    move-exception v2

    .line 170
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 171
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 172
    throw v2
.end method

.method public onDeviceUp(Lcom/huawei/android/multiscreen/dlna/sdk/service/aidl/RemoteDevice;)V
    .locals 5
    .parameter "device"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 129
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 130
    .local v0, _data:Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 132
    .local v1, _reply:Landroid/os/Parcel;
    :try_start_0
    const-string v2, "com.huawei.android.multiscreen.dlna.sdk.service.aidl.AIDLDeviceChangedListener"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 133
    if-eqz p1, :cond_0

    .line 134
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 135
    const/4 v2, 0x0

    invoke-virtual {p1, v0, v2}, Lcom/huawei/android/multiscreen/dlna/sdk/service/aidl/RemoteDevice;->writeToParcel(Landroid/os/Parcel;I)V

    .line 140
    :goto_0
    iget-object v2, p0, Lcom/huawei/android/multiscreen/dlna/sdk/service/aidl/AIDLDeviceChangedListener$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x2

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 141
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 144
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 145
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 147
    return-void

    .line 138
    :cond_0
    const/4 v2, 0x0

    :try_start_1
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 143
    :catchall_0
    move-exception v2

    .line 144
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 145
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 146
    throw v2
.end method
