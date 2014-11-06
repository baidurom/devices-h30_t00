.class public Lcom/huawei/android/multiscreen/dlna/sdk/common/MetadataMediaInfo;
.super Lcom/huawei/android/multiscreen/dlna/sdk/common/MediaInfo;
.source "MetadataMediaInfo.java"


# instance fields
.field private isLocalFile:Z

.field private metadata:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/huawei/android/multiscreen/dlna/sdk/common/EMediaInfoType;Ljava/lang/String;Z)V
    .locals 0
    .parameter "url"
    .parameter "mediaInfoType"
    .parameter "metadata"
    .parameter "isLocalFile"

    .prologue
    .line 38
    invoke-direct {p0}, Lcom/huawei/android/multiscreen/dlna/sdk/common/MediaInfo;-><init>()V

    .line 39
    iput-boolean p4, p0, Lcom/huawei/android/multiscreen/dlna/sdk/common/MetadataMediaInfo;->isLocalFile:Z

    .line 40
    iput-object p1, p0, Lcom/huawei/android/multiscreen/dlna/sdk/common/MediaInfo;->url:Ljava/lang/String;

    .line 41
    iput-object p2, p0, Lcom/huawei/android/multiscreen/dlna/sdk/common/MediaInfo;->mediaInfoType:Lcom/huawei/android/multiscreen/dlna/sdk/common/EMediaInfoType;

    .line 42
    iput-object p3, p0, Lcom/huawei/android/multiscreen/dlna/sdk/common/MetadataMediaInfo;->metadata:Ljava/lang/String;

    .line 43
    return-void
.end method


# virtual methods
.method public getMetaData()Ljava/lang/String;
    .locals 1

    .prologue
    .line 52
    iget-object v0, p0, Lcom/huawei/android/multiscreen/dlna/sdk/common/MetadataMediaInfo;->metadata:Ljava/lang/String;

    return-object v0
.end method

.method public isLocalFile()Z
    .locals 1

    .prologue
    .line 48
    iget-boolean v0, p0, Lcom/huawei/android/multiscreen/dlna/sdk/common/MetadataMediaInfo;->isLocalFile:Z

    return v0
.end method
