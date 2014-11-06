.class public Lcom/huawei/android/multiscreen/dlna/sdk/common/TransportStateInfo;
.super Ljava/lang/Object;
.source "TransportStateInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/huawei/android/multiscreen/dlna/sdk/common/TransportStateInfo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private transportState:Lcom/huawei/android/multiscreen/dlna/sdk/common/ETransportState;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 68
    new-instance v0, Lcom/huawei/android/multiscreen/dlna/sdk/common/TransportStateInfo$1;

    invoke-direct {v0}, Lcom/huawei/android/multiscreen/dlna/sdk/common/TransportStateInfo$1;-><init>()V

    sput-object v0, Lcom/huawei/android/multiscreen/dlna/sdk/common/TransportStateInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 21
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 26
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 36
    sget-object v0, Lcom/huawei/android/multiscreen/dlna/sdk/common/ETransportState;->INVALID:Lcom/huawei/android/multiscreen/dlna/sdk/common/ETransportState;

    iput-object v0, p0, Lcom/huawei/android/multiscreen/dlna/sdk/common/TransportStateInfo;->transportState:Lcom/huawei/android/multiscreen/dlna/sdk/common/ETransportState;

    .line 28
    return-void
.end method

.method public constructor <init>(Lcom/huawei/android/multiscreen/dlna/sdk/common/ETransportState;)V
    .locals 1
    .parameter "transportState"

    .prologue
    .line 29
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 36
    sget-object v0, Lcom/huawei/android/multiscreen/dlna/sdk/common/ETransportState;->INVALID:Lcom/huawei/android/multiscreen/dlna/sdk/common/ETransportState;

    iput-object v0, p0, Lcom/huawei/android/multiscreen/dlna/sdk/common/TransportStateInfo;->transportState:Lcom/huawei/android/multiscreen/dlna/sdk/common/ETransportState;

    .line 30
    iput-object p1, p0, Lcom/huawei/android/multiscreen/dlna/sdk/common/TransportStateInfo;->transportState:Lcom/huawei/android/multiscreen/dlna/sdk/common/ETransportState;

    .line 32
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 60
    const/4 v0, 0x0

    return v0
.end method

.method public getTransportState()Lcom/huawei/android/multiscreen/dlna/sdk/common/ETransportState;
    .locals 1

    .prologue
    .line 44
    iget-object v0, p0, Lcom/huawei/android/multiscreen/dlna/sdk/common/TransportStateInfo;->transportState:Lcom/huawei/android/multiscreen/dlna/sdk/common/ETransportState;

    return-object v0
.end method

.method public setTransportState(Lcom/huawei/android/multiscreen/dlna/sdk/common/ETransportState;)V
    .locals 0
    .parameter "transportState"

    .prologue
    .line 54
    iput-object p1, p0, Lcom/huawei/android/multiscreen/dlna/sdk/common/TransportStateInfo;->transportState:Lcom/huawei/android/multiscreen/dlna/sdk/common/ETransportState;

    .line 55
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 85
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "TransportStateInfo [transportState="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/huawei/android/multiscreen/dlna/sdk/common/TransportStateInfo;->transportState:Lcom/huawei/android/multiscreen/dlna/sdk/common/ETransportState;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .parameter "dest"
    .parameter "flags"

    .prologue
    .line 65
    iget-object v0, p0, Lcom/huawei/android/multiscreen/dlna/sdk/common/TransportStateInfo;->transportState:Lcom/huawei/android/multiscreen/dlna/sdk/common/ETransportState;

    invoke-virtual {v0}, Lcom/huawei/android/multiscreen/dlna/sdk/common/ETransportState;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 66
    return-void
.end method
