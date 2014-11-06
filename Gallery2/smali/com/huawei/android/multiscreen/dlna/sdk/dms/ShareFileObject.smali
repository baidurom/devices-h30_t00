.class public Lcom/huawei/android/multiscreen/dlna/sdk/dms/ShareFileObject;
.super Ljava/lang/Object;
.source "ShareFileObject.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/huawei/android/multiscreen/dlna/sdk/dms/ShareFileObject;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mPath:Ljava/lang/String;

.field private mShareOperationFlag:Lcom/huawei/android/multiscreen/dlna/sdk/dms/ShareOperationFlagEnum;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 88
    new-instance v0, Lcom/huawei/android/multiscreen/dlna/sdk/dms/ShareFileObject$1;

    invoke-direct {v0}, Lcom/huawei/android/multiscreen/dlna/sdk/dms/ShareFileObject$1;-><init>()V

    sput-object v0, Lcom/huawei/android/multiscreen/dlna/sdk/dms/ShareFileObject;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 22
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/huawei/android/multiscreen/dlna/sdk/dms/ShareOperationFlagEnum;)V
    .locals 0
    .parameter "path"
    .parameter "shareFlag"

    .prologue
    .line 37
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 39
    iput-object p1, p0, Lcom/huawei/android/multiscreen/dlna/sdk/dms/ShareFileObject;->mPath:Ljava/lang/String;

    .line 40
    iput-object p2, p0, Lcom/huawei/android/multiscreen/dlna/sdk/dms/ShareFileObject;->mShareOperationFlag:Lcom/huawei/android/multiscreen/dlna/sdk/dms/ShareOperationFlagEnum;

    .line 41
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 78
    const/4 v0, 0x0

    return v0
.end method

.method public getPath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 48
    iget-object v0, p0, Lcom/huawei/android/multiscreen/dlna/sdk/dms/ShareFileObject;->mPath:Ljava/lang/String;

    return-object v0
.end method

.method public getShareOperationFlag()Lcom/huawei/android/multiscreen/dlna/sdk/dms/ShareOperationFlagEnum;
    .locals 1

    .prologue
    .line 64
    iget-object v0, p0, Lcom/huawei/android/multiscreen/dlna/sdk/dms/ShareFileObject;->mShareOperationFlag:Lcom/huawei/android/multiscreen/dlna/sdk/dms/ShareOperationFlagEnum;

    return-object v0
.end method

.method public setPath(Ljava/lang/String;)V
    .locals 0
    .parameter "path"

    .prologue
    .line 56
    iput-object p1, p0, Lcom/huawei/android/multiscreen/dlna/sdk/dms/ShareFileObject;->mPath:Ljava/lang/String;

    .line 57
    return-void
.end method

.method public setShareOperationFlag(Lcom/huawei/android/multiscreen/dlna/sdk/dms/ShareOperationFlagEnum;)V
    .locals 0
    .parameter "shareOperationFlag"

    .prologue
    .line 72
    iput-object p1, p0, Lcom/huawei/android/multiscreen/dlna/sdk/dms/ShareFileObject;->mShareOperationFlag:Lcom/huawei/android/multiscreen/dlna/sdk/dms/ShareOperationFlagEnum;

    .line 73
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .parameter "dest"
    .parameter "flags"

    .prologue
    .line 83
    iget-object v0, p0, Lcom/huawei/android/multiscreen/dlna/sdk/dms/ShareFileObject;->mPath:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 84
    iget-object v0, p0, Lcom/huawei/android/multiscreen/dlna/sdk/dms/ShareFileObject;->mShareOperationFlag:Lcom/huawei/android/multiscreen/dlna/sdk/dms/ShareOperationFlagEnum;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 86
    return-void
.end method
