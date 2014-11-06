.class public Lcom/huawei/android/multiscreen/dlna/sdk/common/SyncFaildMessage;
.super Ljava/lang/Object;
.source "SyncFaildMessage.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/huawei/android/multiscreen/dlna/sdk/common/SyncFaildMessage;",
            ">;"
        }
    .end annotation
.end field

.field private static final TAG:Ljava/lang/String; = "SyncFaildMessage"


# instance fields
.field private lastValue:Ljava/lang/Object;

.field private message:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 96
    new-instance v0, Lcom/huawei/android/multiscreen/dlna/sdk/common/SyncFaildMessage$1;

    invoke-direct {v0}, Lcom/huawei/android/multiscreen/dlna/sdk/common/SyncFaildMessage$1;-><init>()V

    sput-object v0, Lcom/huawei/android/multiscreen/dlna/sdk/common/SyncFaildMessage;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 24
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 24
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 86
    const/4 v0, 0x0

    return v0
.end method

.method public getLastValue()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 65
    iget-object v0, p0, Lcom/huawei/android/multiscreen/dlna/sdk/common/SyncFaildMessage;->lastValue:Ljava/lang/Object;

    return-object v0
.end method

.method public getMessage()Ljava/lang/String;
    .locals 1

    .prologue
    .line 46
    iget-object v0, p0, Lcom/huawei/android/multiscreen/dlna/sdk/common/SyncFaildMessage;->message:Ljava/lang/String;

    return-object v0
.end method

.method public setLastValue(Ljava/lang/Object;)V
    .locals 0
    .parameter "lastValue"

    .prologue
    .line 75
    iput-object p1, p0, Lcom/huawei/android/multiscreen/dlna/sdk/common/SyncFaildMessage;->lastValue:Ljava/lang/Object;

    .line 76
    return-void
.end method

.method public setMessage(Ljava/lang/String;)V
    .locals 0
    .parameter "message"

    .prologue
    .line 56
    iput-object p1, p0, Lcom/huawei/android/multiscreen/dlna/sdk/common/SyncFaildMessage;->message:Ljava/lang/String;

    .line 57
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 80
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "SyncFaildMessage [message="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/huawei/android/multiscreen/dlna/sdk/common/SyncFaildMessage;->message:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", lastValue="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 81
    iget-object v1, p0, Lcom/huawei/android/multiscreen/dlna/sdk/common/SyncFaildMessage;->lastValue:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 80
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .parameter "dest"
    .parameter "flags"

    .prologue
    .line 91
    iget-object v0, p0, Lcom/huawei/android/multiscreen/dlna/sdk/common/SyncFaildMessage;->message:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 92
    iget-object v0, p0, Lcom/huawei/android/multiscreen/dlna/sdk/common/SyncFaildMessage;->lastValue:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 93
    iget-object v0, p0, Lcom/huawei/android/multiscreen/dlna/sdk/common/SyncFaildMessage;->lastValue:Ljava/lang/Object;

    check-cast v0, Landroid/os/Parcelable;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 94
    return-void
.end method
