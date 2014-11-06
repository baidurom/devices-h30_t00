.class public Lcom/huawei/android/multiscreen/dlna/sdk/common/PositionInfo;
.super Ljava/lang/Object;
.source "PositionInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/huawei/android/multiscreen/dlna/sdk/common/PositionInfo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private relTime:Ljava/lang/String;

.field private trackDur:Ljava/lang/String;

.field private trackMetaData:Ljava/lang/String;

.field private trackURI:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 144
    new-instance v0, Lcom/huawei/android/multiscreen/dlna/sdk/common/PositionInfo$1;

    invoke-direct {v0}, Lcom/huawei/android/multiscreen/dlna/sdk/common/PositionInfo$1;-><init>()V

    sput-object v0, Lcom/huawei/android/multiscreen/dlna/sdk/common/PositionInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 22
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 22
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 130
    const/4 v0, 0x0

    return v0
.end method

.method public getRelTime()Ljava/lang/String;
    .locals 1

    .prologue
    .line 107
    iget-object v0, p0, Lcom/huawei/android/multiscreen/dlna/sdk/common/PositionInfo;->relTime:Ljava/lang/String;

    return-object v0
.end method

.method public getTrackDur()Ljava/lang/String;
    .locals 1

    .prologue
    .line 50
    iget-object v0, p0, Lcom/huawei/android/multiscreen/dlna/sdk/common/PositionInfo;->trackDur:Ljava/lang/String;

    return-object v0
.end method

.method public getTrackMetaData()Ljava/lang/String;
    .locals 1

    .prologue
    .line 69
    iget-object v0, p0, Lcom/huawei/android/multiscreen/dlna/sdk/common/PositionInfo;->trackMetaData:Ljava/lang/String;

    return-object v0
.end method

.method public getTrackURI()Ljava/lang/String;
    .locals 1

    .prologue
    .line 88
    iget-object v0, p0, Lcom/huawei/android/multiscreen/dlna/sdk/common/PositionInfo;->trackURI:Ljava/lang/String;

    return-object v0
.end method

.method public setRelTime(Ljava/lang/String;)V
    .locals 0
    .parameter "relTime"

    .prologue
    .line 117
    iput-object p1, p0, Lcom/huawei/android/multiscreen/dlna/sdk/common/PositionInfo;->relTime:Ljava/lang/String;

    .line 118
    return-void
.end method

.method public setTrackDur(Ljava/lang/String;)V
    .locals 0
    .parameter "trackDur"

    .prologue
    .line 60
    iput-object p1, p0, Lcom/huawei/android/multiscreen/dlna/sdk/common/PositionInfo;->trackDur:Ljava/lang/String;

    .line 61
    return-void
.end method

.method public setTrackMetaData(Ljava/lang/String;)V
    .locals 0
    .parameter "trackMetaData"

    .prologue
    .line 79
    iput-object p1, p0, Lcom/huawei/android/multiscreen/dlna/sdk/common/PositionInfo;->trackMetaData:Ljava/lang/String;

    .line 80
    return-void
.end method

.method public setTrackURI(Ljava/lang/String;)V
    .locals 0
    .parameter "trackURI"

    .prologue
    .line 98
    iput-object p1, p0, Lcom/huawei/android/multiscreen/dlna/sdk/common/PositionInfo;->trackURI:Ljava/lang/String;

    .line 99
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 122
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "PositionInfo [trackDur="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/huawei/android/multiscreen/dlna/sdk/common/PositionInfo;->trackDur:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", trackMetaData="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 123
    iget-object v1, p0, Lcom/huawei/android/multiscreen/dlna/sdk/common/PositionInfo;->trackMetaData:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", trackURI="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/huawei/android/multiscreen/dlna/sdk/common/PositionInfo;->trackURI:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", relTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 124
    iget-object v1, p0, Lcom/huawei/android/multiscreen/dlna/sdk/common/PositionInfo;->relTime:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 122
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .parameter "dest"
    .parameter "flags"

    .prologue
    .line 136
    iget-object v0, p0, Lcom/huawei/android/multiscreen/dlna/sdk/common/PositionInfo;->trackDur:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 137
    iget-object v0, p0, Lcom/huawei/android/multiscreen/dlna/sdk/common/PositionInfo;->trackMetaData:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 138
    iget-object v0, p0, Lcom/huawei/android/multiscreen/dlna/sdk/common/PositionInfo;->trackURI:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 139
    iget-object v0, p0, Lcom/huawei/android/multiscreen/dlna/sdk/common/PositionInfo;->relTime:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 142
    return-void
.end method
