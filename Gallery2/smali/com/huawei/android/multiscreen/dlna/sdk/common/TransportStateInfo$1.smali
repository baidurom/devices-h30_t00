.class Lcom/huawei/android/multiscreen/dlna/sdk/common/TransportStateInfo$1;
.super Ljava/lang/Object;
.source "TransportStateInfo.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/huawei/android/multiscreen/dlna/sdk/common/TransportStateInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator",
        "<",
        "Lcom/huawei/android/multiscreen/dlna/sdk/common/TransportStateInfo;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 68
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/huawei/android/multiscreen/dlna/sdk/common/TransportStateInfo;
    .locals 2
    .parameter "source"

    .prologue
    .line 77
    new-instance v0, Lcom/huawei/android/multiscreen/dlna/sdk/common/TransportStateInfo;

    invoke-direct {v0}, Lcom/huawei/android/multiscreen/dlna/sdk/common/TransportStateInfo;-><init>()V

    .line 78
    .local v0, transportStateInfo:Lcom/huawei/android/multiscreen/dlna/sdk/common/TransportStateInfo;
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/huawei/android/multiscreen/dlna/sdk/common/ETransportState;->valueOf(Ljava/lang/String;)Lcom/huawei/android/multiscreen/dlna/sdk/common/ETransportState;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/huawei/android/multiscreen/dlna/sdk/common/TransportStateInfo;->setTransportState(Lcom/huawei/android/multiscreen/dlna/sdk/common/ETransportState;)V

    .line 79
    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 1
    invoke-virtual {p0, p1}, Lcom/huawei/android/multiscreen/dlna/sdk/common/TransportStateInfo$1;->createFromParcel(Landroid/os/Parcel;)Lcom/huawei/android/multiscreen/dlna/sdk/common/TransportStateInfo;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Lcom/huawei/android/multiscreen/dlna/sdk/common/TransportStateInfo;
    .locals 1
    .parameter "size"

    .prologue
    .line 72
    new-array v0, p1, [Lcom/huawei/android/multiscreen/dlna/sdk/common/TransportStateInfo;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 1
    invoke-virtual {p0, p1}, Lcom/huawei/android/multiscreen/dlna/sdk/common/TransportStateInfo$1;->newArray(I)[Lcom/huawei/android/multiscreen/dlna/sdk/common/TransportStateInfo;

    move-result-object v0

    return-object v0
.end method
