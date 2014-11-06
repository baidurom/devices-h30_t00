.class public Lcom/huawei/android/freeshare/client/transfer/TransferItem;
.super Ljava/lang/Object;
.source "TransferItem.java"


# instance fields
.field public mCurrentBytes:I

.field public mFilename:Ljava/lang/String;

.field public mId:I

.field public mMimetype:Ljava/lang/String;

.field private mMission:Lcom/huawei/android/freeshare/client/transfer/Mission;

.field public mStatus:I

.field public mSuccess:Z

.field public mTimestamp:J

.field public mTotalBytes:I

.field public mUri:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/huawei/android/freeshare/client/transfer/Mission;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter "mission"
    .parameter "uri"
    .parameter "mimeType"

    .prologue
    .line 30
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 31
    iput-object p1, p0, Lcom/huawei/android/freeshare/client/transfer/TransferItem;->mMission:Lcom/huawei/android/freeshare/client/transfer/Mission;

    .line 32
    iput-object p2, p0, Lcom/huawei/android/freeshare/client/transfer/TransferItem;->mUri:Ljava/lang/String;

    .line 33
    iput-object p3, p0, Lcom/huawei/android/freeshare/client/transfer/TransferItem;->mMimetype:Ljava/lang/String;

    .line 34
    return-void
.end method


# virtual methods
.method public final getMission()Lcom/huawei/android/freeshare/client/transfer/Mission;
    .locals 1

    .prologue
    .line 44
    iget-object v0, p0, Lcom/huawei/android/freeshare/client/transfer/TransferItem;->mMission:Lcom/huawei/android/freeshare/client/transfer/Mission;

    return-object v0
.end method

.method public final getPorgress()I
    .locals 2

    .prologue
    .line 37
    iget v0, p0, Lcom/huawei/android/freeshare/client/transfer/TransferItem;->mTotalBytes:I

    if-nez v0, :cond_0

    .line 38
    const/4 v0, 0x0

    .line 40
    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lcom/huawei/android/freeshare/client/transfer/TransferItem;->mCurrentBytes:I

    mul-int/lit8 v0, v0, 0x64

    iget v1, p0, Lcom/huawei/android/freeshare/client/transfer/TransferItem;->mTotalBytes:I

    div-int/2addr v0, v1

    goto :goto_0
.end method

.method public final isComplete()Z
    .locals 2

    .prologue
    .line 52
    iget v0, p0, Lcom/huawei/android/freeshare/client/transfer/TransferItem;->mStatus:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final isTransferring()Z
    .locals 2

    .prologue
    .line 48
    iget v0, p0, Lcom/huawei/android/freeshare/client/transfer/TransferItem;->mStatus:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
