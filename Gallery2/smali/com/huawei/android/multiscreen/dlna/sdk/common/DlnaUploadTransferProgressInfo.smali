.class public Lcom/huawei/android/multiscreen/dlna/sdk/common/DlnaUploadTransferProgressInfo;
.super Ljava/lang/Object;
.source "DlnaUploadTransferProgressInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/huawei/android/multiscreen/dlna/sdk/common/DlnaUploadTransferProgressInfo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private transferLength:Ljava/lang/String;

.field private transferStatus:Lcom/huawei/android/multiscreen/dlna/sdk/common/ETransferProgressInfo;

.field private transferTotal:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 97
    new-instance v0, Lcom/huawei/android/multiscreen/dlna/sdk/common/DlnaUploadTransferProgressInfo$1;

    invoke-direct {v0}, Lcom/huawei/android/multiscreen/dlna/sdk/common/DlnaUploadTransferProgressInfo$1;-><init>()V

    sput-object v0, Lcom/huawei/android/multiscreen/dlna/sdk/common/DlnaUploadTransferProgressInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 10
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 85
    const/4 v0, 0x0

    return v0
.end method

.method public getTransferLength()Ljava/lang/String;
    .locals 1

    .prologue
    .line 51
    iget-object v0, p0, Lcom/huawei/android/multiscreen/dlna/sdk/common/DlnaUploadTransferProgressInfo;->transferLength:Ljava/lang/String;

    return-object v0
.end method

.method public getTransferStatus()Lcom/huawei/android/multiscreen/dlna/sdk/common/ETransferProgressInfo;
    .locals 1

    .prologue
    .line 33
    iget-object v0, p0, Lcom/huawei/android/multiscreen/dlna/sdk/common/DlnaUploadTransferProgressInfo;->transferStatus:Lcom/huawei/android/multiscreen/dlna/sdk/common/ETransferProgressInfo;

    return-object v0
.end method

.method public getTransferTotal()Ljava/lang/String;
    .locals 1

    .prologue
    .line 69
    iget-object v0, p0, Lcom/huawei/android/multiscreen/dlna/sdk/common/DlnaUploadTransferProgressInfo;->transferTotal:Ljava/lang/String;

    return-object v0
.end method

.method public setTransferLength(Ljava/lang/String;)V
    .locals 0
    .parameter "transferLength"

    .prologue
    .line 60
    iput-object p1, p0, Lcom/huawei/android/multiscreen/dlna/sdk/common/DlnaUploadTransferProgressInfo;->transferLength:Ljava/lang/String;

    .line 61
    return-void
.end method

.method public setTransferStatus(Lcom/huawei/android/multiscreen/dlna/sdk/common/ETransferProgressInfo;)V
    .locals 0
    .parameter "transferStatus"

    .prologue
    .line 42
    iput-object p1, p0, Lcom/huawei/android/multiscreen/dlna/sdk/common/DlnaUploadTransferProgressInfo;->transferStatus:Lcom/huawei/android/multiscreen/dlna/sdk/common/ETransferProgressInfo;

    .line 43
    return-void
.end method

.method public setTransferTotal(Ljava/lang/String;)V
    .locals 0
    .parameter "transferTotal"

    .prologue
    .line 78
    iput-object p1, p0, Lcom/huawei/android/multiscreen/dlna/sdk/common/DlnaUploadTransferProgressInfo;->transferTotal:Ljava/lang/String;

    .line 79
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .parameter "dest"
    .parameter "flags"

    .prologue
    .line 91
    iget-object v0, p0, Lcom/huawei/android/multiscreen/dlna/sdk/common/DlnaUploadTransferProgressInfo;->transferStatus:Lcom/huawei/android/multiscreen/dlna/sdk/common/ETransferProgressInfo;

    invoke-virtual {v0}, Lcom/huawei/android/multiscreen/dlna/sdk/common/ETransferProgressInfo;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 92
    iget-object v0, p0, Lcom/huawei/android/multiscreen/dlna/sdk/common/DlnaUploadTransferProgressInfo;->transferLength:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 93
    iget-object v0, p0, Lcom/huawei/android/multiscreen/dlna/sdk/common/DlnaUploadTransferProgressInfo;->transferTotal:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 94
    return-void
.end method
