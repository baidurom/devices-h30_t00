.class Lcom/huawei/android/multiscreen/dlna/sdk/common/DlnaUploadTransferProgressInfo$1;
.super Ljava/lang/Object;
.source "DlnaUploadTransferProgressInfo.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/huawei/android/multiscreen/dlna/sdk/common/DlnaUploadTransferProgressInfo;
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
        "Lcom/huawei/android/multiscreen/dlna/sdk/common/DlnaUploadTransferProgressInfo;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 97
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/huawei/android/multiscreen/dlna/sdk/common/DlnaUploadTransferProgressInfo;
    .locals 2
    .parameter "source"

    .prologue
    .line 106
    new-instance v0, Lcom/huawei/android/multiscreen/dlna/sdk/common/DlnaUploadTransferProgressInfo;

    invoke-direct {v0}, Lcom/huawei/android/multiscreen/dlna/sdk/common/DlnaUploadTransferProgressInfo;-><init>()V

    .line 107
    .local v0, progressInfo:Lcom/huawei/android/multiscreen/dlna/sdk/common/DlnaUploadTransferProgressInfo;
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/huawei/android/multiscreen/dlna/sdk/common/ETransferProgressInfo;->valueOf(Ljava/lang/String;)Lcom/huawei/android/multiscreen/dlna/sdk/common/ETransferProgressInfo;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/huawei/android/multiscreen/dlna/sdk/common/DlnaUploadTransferProgressInfo;->setTransferStatus(Lcom/huawei/android/multiscreen/dlna/sdk/common/ETransferProgressInfo;)V

    .line 108
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/huawei/android/multiscreen/dlna/sdk/common/DlnaUploadTransferProgressInfo;->setTransferLength(Ljava/lang/String;)V

    .line 109
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/huawei/android/multiscreen/dlna/sdk/common/DlnaUploadTransferProgressInfo;->setTransferTotal(Ljava/lang/String;)V

    .line 110
    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 1
    invoke-virtual {p0, p1}, Lcom/huawei/android/multiscreen/dlna/sdk/common/DlnaUploadTransferProgressInfo$1;->createFromParcel(Landroid/os/Parcel;)Lcom/huawei/android/multiscreen/dlna/sdk/common/DlnaUploadTransferProgressInfo;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Lcom/huawei/android/multiscreen/dlna/sdk/common/DlnaUploadTransferProgressInfo;
    .locals 1
    .parameter "size"

    .prologue
    .line 101
    new-array v0, p1, [Lcom/huawei/android/multiscreen/dlna/sdk/common/DlnaUploadTransferProgressInfo;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 1
    invoke-virtual {p0, p1}, Lcom/huawei/android/multiscreen/dlna/sdk/common/DlnaUploadTransferProgressInfo$1;->newArray(I)[Lcom/huawei/android/multiscreen/dlna/sdk/common/DlnaUploadTransferProgressInfo;

    move-result-object v0

    return-object v0
.end method
