.class public Lcom/huawei/android/multiscreen/dlna/sdk/common/VolumeInfo;
.super Ljava/lang/Object;
.source "VolumeInfo.java"


# instance fields
.field private currentVolume:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 18
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getCurrentVolume()I
    .locals 1

    .prologue
    .line 30
    iget v0, p0, Lcom/huawei/android/multiscreen/dlna/sdk/common/VolumeInfo;->currentVolume:I

    return v0
.end method

.method public setCurrentVolume(I)V
    .locals 0
    .parameter "currentVolume"

    .prologue
    .line 40
    iput p1, p0, Lcom/huawei/android/multiscreen/dlna/sdk/common/VolumeInfo;->currentVolume:I

    .line 41
    return-void
.end method
