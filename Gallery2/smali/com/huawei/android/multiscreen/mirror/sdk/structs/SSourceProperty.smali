.class public Lcom/huawei/android/multiscreen/mirror/sdk/structs/SSourceProperty;
.super Ljava/lang/Object;
.source "SSourceProperty.java"


# instance fields
.field private mDeviceName:Ljava/lang/String;

.field private mSupportAudio:Z

.field private mSupportVideo:Z


# direct methods
.method public constructor <init>(ZZLjava/lang/String;)V
    .locals 0
    .parameter "supportAudio"
    .parameter "supportVideo"
    .parameter "deviceName"

    .prologue
    .line 16
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 17
    iput-boolean p1, p0, Lcom/huawei/android/multiscreen/mirror/sdk/structs/SSourceProperty;->mSupportAudio:Z

    .line 18
    iput-boolean p2, p0, Lcom/huawei/android/multiscreen/mirror/sdk/structs/SSourceProperty;->mSupportVideo:Z

    .line 19
    iput-object p3, p0, Lcom/huawei/android/multiscreen/mirror/sdk/structs/SSourceProperty;->mDeviceName:Ljava/lang/String;

    .line 20
    return-void
.end method


# virtual methods
.method public getDeviceName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 59
    iget-object v0, p0, Lcom/huawei/android/multiscreen/mirror/sdk/structs/SSourceProperty;->mDeviceName:Ljava/lang/String;

    return-object v0
.end method

.method public isSupportAudio()Z
    .locals 1

    .prologue
    .line 27
    iget-boolean v0, p0, Lcom/huawei/android/multiscreen/mirror/sdk/structs/SSourceProperty;->mSupportAudio:Z

    return v0
.end method

.method public isSupportVideo()Z
    .locals 1

    .prologue
    .line 43
    iget-boolean v0, p0, Lcom/huawei/android/multiscreen/mirror/sdk/structs/SSourceProperty;->mSupportVideo:Z

    return v0
.end method

.method public setDeviceName(Ljava/lang/String;)V
    .locals 0
    .parameter "deviceName"

    .prologue
    .line 67
    iput-object p1, p0, Lcom/huawei/android/multiscreen/mirror/sdk/structs/SSourceProperty;->mDeviceName:Ljava/lang/String;

    .line 68
    return-void
.end method

.method public setSupportAudio(Z)V
    .locals 0
    .parameter "supportAudio"

    .prologue
    .line 35
    iput-boolean p1, p0, Lcom/huawei/android/multiscreen/mirror/sdk/structs/SSourceProperty;->mSupportAudio:Z

    .line 36
    return-void
.end method

.method public setSupportVideo(Z)V
    .locals 0
    .parameter "supportVideo"

    .prologue
    .line 51
    iput-boolean p1, p0, Lcom/huawei/android/multiscreen/mirror/sdk/structs/SSourceProperty;->mSupportVideo:Z

    .line 52
    return-void
.end method
