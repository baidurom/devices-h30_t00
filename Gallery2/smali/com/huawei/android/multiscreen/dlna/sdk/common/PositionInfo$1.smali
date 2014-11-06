.class Lcom/huawei/android/multiscreen/dlna/sdk/common/PositionInfo$1;
.super Ljava/lang/Object;
.source "PositionInfo.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/huawei/android/multiscreen/dlna/sdk/common/PositionInfo;
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
        "Lcom/huawei/android/multiscreen/dlna/sdk/common/PositionInfo;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 144
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/huawei/android/multiscreen/dlna/sdk/common/PositionInfo;
    .locals 2
    .parameter "source"

    .prologue
    .line 153
    new-instance v0, Lcom/huawei/android/multiscreen/dlna/sdk/common/PositionInfo;

    invoke-direct {v0}, Lcom/huawei/android/multiscreen/dlna/sdk/common/PositionInfo;-><init>()V

    .line 154
    .local v0, position:Lcom/huawei/android/multiscreen/dlna/sdk/common/PositionInfo;
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/huawei/android/multiscreen/dlna/sdk/common/PositionInfo;->setTrackDur(Ljava/lang/String;)V

    .line 155
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/huawei/android/multiscreen/dlna/sdk/common/PositionInfo;->setTrackMetaData(Ljava/lang/String;)V

    .line 156
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/huawei/android/multiscreen/dlna/sdk/common/PositionInfo;->setTrackURI(Ljava/lang/String;)V

    .line 157
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/huawei/android/multiscreen/dlna/sdk/common/PositionInfo;->setRelTime(Ljava/lang/String;)V

    .line 159
    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 1
    invoke-virtual {p0, p1}, Lcom/huawei/android/multiscreen/dlna/sdk/common/PositionInfo$1;->createFromParcel(Landroid/os/Parcel;)Lcom/huawei/android/multiscreen/dlna/sdk/common/PositionInfo;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Lcom/huawei/android/multiscreen/dlna/sdk/common/PositionInfo;
    .locals 1
    .parameter "size"

    .prologue
    .line 148
    new-array v0, p1, [Lcom/huawei/android/multiscreen/dlna/sdk/common/PositionInfo;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 1
    invoke-virtual {p0, p1}, Lcom/huawei/android/multiscreen/dlna/sdk/common/PositionInfo$1;->newArray(I)[Lcom/huawei/android/multiscreen/dlna/sdk/common/PositionInfo;

    move-result-object v0

    return-object v0
.end method
