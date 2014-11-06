.class Lcom/huawei/android/multiscreen/dlna/sdk/common/SyncFaildMessage$1;
.super Ljava/lang/Object;
.source "SyncFaildMessage.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/huawei/android/multiscreen/dlna/sdk/common/SyncFaildMessage;
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
        "Lcom/huawei/android/multiscreen/dlna/sdk/common/SyncFaildMessage;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 96
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/huawei/android/multiscreen/dlna/sdk/common/SyncFaildMessage;
    .locals 6
    .parameter "source"

    .prologue
    .line 105
    new-instance v2, Lcom/huawei/android/multiscreen/dlna/sdk/common/SyncFaildMessage;

    invoke-direct {v2}, Lcom/huawei/android/multiscreen/dlna/sdk/common/SyncFaildMessage;-><init>()V

    .line 106
    .local v2, syncFaildMessage:Lcom/huawei/android/multiscreen/dlna/sdk/common/SyncFaildMessage;
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/huawei/android/multiscreen/dlna/sdk/common/SyncFaildMessage;->setMessage(Ljava/lang/String;)V

    .line 108
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 110
    .local v3, type:Ljava/lang/String;
    :try_start_0
    invoke-static {v3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v4

    .line 111
    invoke-virtual {v4}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v4

    .line 110
    invoke-virtual {p1, v4}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v1

    .line 112
    .local v1, object:Landroid/os/Parcelable;
    invoke-virtual {v2, v1}, Lcom/huawei/android/multiscreen/dlna/sdk/common/SyncFaildMessage;->setLastValue(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 116
    .end local v1           #object:Landroid/os/Parcelable;
    :goto_0
    return-object v2

    .line 113
    :catch_0
    move-exception v0

    .line 114
    .local v0, e:Ljava/lang/ClassNotFoundException;
    const-string v4, "SyncFaildMessage"

    const-string v5, "SyncFaildMessage.createFromParcel() has ClassNotFoundException"

    invoke-static {v4, v5}, Lcom/huawei/android/multiscreen/dlna/sdk/util/DebugLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 1
    invoke-virtual {p0, p1}, Lcom/huawei/android/multiscreen/dlna/sdk/common/SyncFaildMessage$1;->createFromParcel(Landroid/os/Parcel;)Lcom/huawei/android/multiscreen/dlna/sdk/common/SyncFaildMessage;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Lcom/huawei/android/multiscreen/dlna/sdk/common/SyncFaildMessage;
    .locals 1
    .parameter "size"

    .prologue
    .line 100
    new-array v0, p1, [Lcom/huawei/android/multiscreen/dlna/sdk/common/SyncFaildMessage;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 1
    invoke-virtual {p0, p1}, Lcom/huawei/android/multiscreen/dlna/sdk/common/SyncFaildMessage$1;->newArray(I)[Lcom/huawei/android/multiscreen/dlna/sdk/common/SyncFaildMessage;

    move-result-object v0

    return-object v0
.end method
