.class Lcom/huawei/android/multiscreen/dlna/sdk/dms/ShareOperationFlagEnum$1;
.super Ljava/lang/Object;
.source "ShareOperationFlagEnum.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/huawei/android/multiscreen/dlna/sdk/dms/ShareOperationFlagEnum;
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
        "Lcom/huawei/android/multiscreen/dlna/sdk/dms/ShareOperationFlagEnum;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 55
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/huawei/android/multiscreen/dlna/sdk/dms/ShareOperationFlagEnum;
    .locals 1
    .parameter "source"

    .prologue
    .line 66
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/huawei/android/multiscreen/dlna/sdk/dms/ShareOperationFlagEnum;->valueOf(Ljava/lang/String;)Lcom/huawei/android/multiscreen/dlna/sdk/dms/ShareOperationFlagEnum;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 1
    invoke-virtual {p0, p1}, Lcom/huawei/android/multiscreen/dlna/sdk/dms/ShareOperationFlagEnum$1;->createFromParcel(Landroid/os/Parcel;)Lcom/huawei/android/multiscreen/dlna/sdk/dms/ShareOperationFlagEnum;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Lcom/huawei/android/multiscreen/dlna/sdk/dms/ShareOperationFlagEnum;
    .locals 1
    .parameter "size"

    .prologue
    .line 60
    new-array v0, p1, [Lcom/huawei/android/multiscreen/dlna/sdk/dms/ShareOperationFlagEnum;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 1
    invoke-virtual {p0, p1}, Lcom/huawei/android/multiscreen/dlna/sdk/dms/ShareOperationFlagEnum$1;->newArray(I)[Lcom/huawei/android/multiscreen/dlna/sdk/dms/ShareOperationFlagEnum;

    move-result-object v0

    return-object v0
.end method
