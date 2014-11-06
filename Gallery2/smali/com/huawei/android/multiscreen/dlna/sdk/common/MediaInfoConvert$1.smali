.class Lcom/huawei/android/multiscreen/dlna/sdk/common/MediaInfoConvert$1;
.super Ljava/lang/Object;
.source "MediaInfoConvert.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/huawei/android/multiscreen/dlna/sdk/common/MediaInfoConvert;
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
        "Lcom/huawei/android/multiscreen/dlna/sdk/common/MediaInfoConvert;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 63
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/huawei/android/multiscreen/dlna/sdk/common/MediaInfoConvert;
    .locals 6
    .parameter "source"

    .prologue
    .line 72
    new-instance v1, Lcom/huawei/android/multiscreen/dlna/sdk/common/MediaInfoConvert;

    invoke-direct {v1}, Lcom/huawei/android/multiscreen/dlna/sdk/common/MediaInfoConvert;-><init>()V

    .line 74
    .local v1, mediaInfoConvert:Lcom/huawei/android/multiscreen/dlna/sdk/common/MediaInfoConvert;
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 76
    .local v3, type:Ljava/lang/String;
    :try_start_0
    invoke-static {v3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v4

    .line 77
    invoke-virtual {v4}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v4

    .line 76
    invoke-virtual {p1, v4}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Lcom/huawei/android/multiscreen/dlna/sdk/common/MediaInfo;

    .line 78
    .local v2, object:Lcom/huawei/android/multiscreen/dlna/sdk/common/MediaInfo;
    invoke-virtual {v1, v2}, Lcom/huawei/android/multiscreen/dlna/sdk/common/MediaInfoConvert;->setMediaInfo(Lcom/huawei/android/multiscreen/dlna/sdk/common/MediaInfo;)V
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 82
    .end local v2           #object:Lcom/huawei/android/multiscreen/dlna/sdk/common/MediaInfo;
    :goto_0
    return-object v1

    .line 79
    :catch_0
    move-exception v0

    .line 80
    .local v0, e:Ljava/lang/ClassNotFoundException;
    const-string v4, "MediaInfoConvert"

    const-string v5, "MediaInfoConvert.createFromParcel happened ClassNotFoundException"

    invoke-static {v4, v5}, Lcom/huawei/android/multiscreen/dlna/sdk/util/DebugLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 1
    invoke-virtual {p0, p1}, Lcom/huawei/android/multiscreen/dlna/sdk/common/MediaInfoConvert$1;->createFromParcel(Landroid/os/Parcel;)Lcom/huawei/android/multiscreen/dlna/sdk/common/MediaInfoConvert;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Lcom/huawei/android/multiscreen/dlna/sdk/common/MediaInfoConvert;
    .locals 1
    .parameter "size"

    .prologue
    .line 67
    new-array v0, p1, [Lcom/huawei/android/multiscreen/dlna/sdk/common/MediaInfoConvert;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 1
    invoke-virtual {p0, p1}, Lcom/huawei/android/multiscreen/dlna/sdk/common/MediaInfoConvert$1;->newArray(I)[Lcom/huawei/android/multiscreen/dlna/sdk/common/MediaInfoConvert;

    move-result-object v0

    return-object v0
.end method
