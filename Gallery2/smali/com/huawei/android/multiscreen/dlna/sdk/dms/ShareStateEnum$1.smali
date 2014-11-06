.class Lcom/huawei/android/multiscreen/dlna/sdk/dms/ShareStateEnum$1;
.super Ljava/lang/Object;
.source "ShareStateEnum.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/huawei/android/multiscreen/dlna/sdk/dms/ShareStateEnum;
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
        "Lcom/huawei/android/multiscreen/dlna/sdk/dms/ShareStateEnum;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 56
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/huawei/android/multiscreen/dlna/sdk/dms/ShareStateEnum;
    .locals 1
    .parameter "source"

    .prologue
    .line 67
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/huawei/android/multiscreen/dlna/sdk/dms/ShareStateEnum;->valueOf(Ljava/lang/String;)Lcom/huawei/android/multiscreen/dlna/sdk/dms/ShareStateEnum;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 1
    invoke-virtual {p0, p1}, Lcom/huawei/android/multiscreen/dlna/sdk/dms/ShareStateEnum$1;->createFromParcel(Landroid/os/Parcel;)Lcom/huawei/android/multiscreen/dlna/sdk/dms/ShareStateEnum;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Lcom/huawei/android/multiscreen/dlna/sdk/dms/ShareStateEnum;
    .locals 1
    .parameter "size"

    .prologue
    .line 61
    new-array v0, p1, [Lcom/huawei/android/multiscreen/dlna/sdk/dms/ShareStateEnum;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 1
    invoke-virtual {p0, p1}, Lcom/huawei/android/multiscreen/dlna/sdk/dms/ShareStateEnum$1;->newArray(I)[Lcom/huawei/android/multiscreen/dlna/sdk/dms/ShareStateEnum;

    move-result-object v0

    return-object v0
.end method
