.class public Lcom/huawei/android/multiscreen/dlna/sdk/common/MediaInfoConvert;
.super Ljava/lang/Object;
.source "MediaInfoConvert.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/huawei/android/multiscreen/dlna/sdk/common/MediaInfoConvert;",
            ">;"
        }
    .end annotation
.end field

.field private static final TAG:Ljava/lang/String; = "MediaInfoConvert"


# instance fields
.field private mediaInfo:Lcom/huawei/android/multiscreen/dlna/sdk/common/MediaInfo;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 63
    new-instance v0, Lcom/huawei/android/multiscreen/dlna/sdk/common/MediaInfoConvert$1;

    invoke-direct {v0}, Lcom/huawei/android/multiscreen/dlna/sdk/common/MediaInfoConvert$1;-><init>()V

    sput-object v0, Lcom/huawei/android/multiscreen/dlna/sdk/common/MediaInfoConvert;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 23
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 23
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 52
    const/4 v0, 0x0

    return v0
.end method

.method public getMediaInfo()Lcom/huawei/android/multiscreen/dlna/sdk/common/MediaInfo;
    .locals 1

    .prologue
    .line 47
    iget-object v0, p0, Lcom/huawei/android/multiscreen/dlna/sdk/common/MediaInfoConvert;->mediaInfo:Lcom/huawei/android/multiscreen/dlna/sdk/common/MediaInfo;

    return-object v0
.end method

.method public setMediaInfo(Lcom/huawei/android/multiscreen/dlna/sdk/common/MediaInfo;)V
    .locals 0
    .parameter "mediaInfo"

    .prologue
    .line 38
    iput-object p1, p0, Lcom/huawei/android/multiscreen/dlna/sdk/common/MediaInfoConvert;->mediaInfo:Lcom/huawei/android/multiscreen/dlna/sdk/common/MediaInfo;

    .line 39
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .parameter "dest"
    .parameter "flags"

    .prologue
    .line 57
    iget-object v0, p0, Lcom/huawei/android/multiscreen/dlna/sdk/common/MediaInfoConvert;->mediaInfo:Lcom/huawei/android/multiscreen/dlna/sdk/common/MediaInfo;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 58
    iget-object v0, p0, Lcom/huawei/android/multiscreen/dlna/sdk/common/MediaInfoConvert;->mediaInfo:Lcom/huawei/android/multiscreen/dlna/sdk/common/MediaInfo;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 59
    return-void
.end method
