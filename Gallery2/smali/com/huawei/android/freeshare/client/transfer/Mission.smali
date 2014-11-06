.class public Lcom/huawei/android/freeshare/client/transfer/Mission;
.super Ljava/lang/Object;
.source "Mission.java"


# static fields
.field private static CURRENT_ID:I = 0x0

.field private static final TAG:Ljava/lang/String; = "Freeshare_Mission"


# instance fields
.field private mID:I

.field private mItems:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/huawei/android/freeshare/client/transfer/TransferItem;",
            ">;"
        }
    .end annotation
.end field

.field private mState:I

.field private mTarget:Lcom/huawei/android/freeshare/client/device/DeviceInfo;

.field private mTransmission:Lcom/huawei/android/freeshare/client/Transmission;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 14
    const/4 v0, 0x0

    sput v0, Lcom/huawei/android/freeshare/client/transfer/Mission;->CURRENT_ID:I

    .line 11
    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 26
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 27
    sget v0, Lcom/huawei/android/freeshare/client/transfer/Mission;->CURRENT_ID:I

    add-int/lit8 v1, v0, 0x1

    sput v1, Lcom/huawei/android/freeshare/client/transfer/Mission;->CURRENT_ID:I

    iput v0, p0, Lcom/huawei/android/freeshare/client/transfer/Mission;->mID:I

    .line 28
    const/4 v0, 0x2

    iput v0, p0, Lcom/huawei/android/freeshare/client/transfer/Mission;->mState:I

    .line 29
    return-void
.end method

.method public constructor <init>(Lcom/huawei/android/freeshare/client/Transmission;Lcom/huawei/android/freeshare/client/device/DeviceInfo;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .parameter "transmission"
    .parameter "target"
    .parameter "uri"
    .parameter "mimeType"

    .prologue
    .line 32
    invoke-direct {p0}, Lcom/huawei/android/freeshare/client/transfer/Mission;-><init>()V

    .line 33
    iput-object p1, p0, Lcom/huawei/android/freeshare/client/transfer/Mission;->mTransmission:Lcom/huawei/android/freeshare/client/Transmission;

    .line 34
    iput-object p2, p0, Lcom/huawei/android/freeshare/client/transfer/Mission;->mTarget:Lcom/huawei/android/freeshare/client/device/DeviceInfo;

    .line 35
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/huawei/android/freeshare/client/transfer/Mission;->mItems:Ljava/util/ArrayList;

    .line 36
    iget-object v0, p0, Lcom/huawei/android/freeshare/client/transfer/Mission;->mItems:Ljava/util/ArrayList;

    new-instance v1, Lcom/huawei/android/freeshare/client/transfer/TransferItem;

    invoke-direct {v1, p0, p3, p4}, Lcom/huawei/android/freeshare/client/transfer/TransferItem;-><init>(Lcom/huawei/android/freeshare/client/transfer/Mission;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 37
    return-void
.end method

.method public constructor <init>(Lcom/huawei/android/freeshare/client/Transmission;Lcom/huawei/android/freeshare/client/device/DeviceInfo;Ljava/util/List;Ljava/lang/String;)V
    .locals 4
    .parameter "transmission"
    .parameter "target"
    .parameter
    .parameter "mimeType"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/huawei/android/freeshare/client/Transmission;",
            "Lcom/huawei/android/freeshare/client/device/DeviceInfo;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 40
    .local p3, uris:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    invoke-direct {p0}, Lcom/huawei/android/freeshare/client/transfer/Mission;-><init>()V

    .line 41
    iput-object p1, p0, Lcom/huawei/android/freeshare/client/transfer/Mission;->mTransmission:Lcom/huawei/android/freeshare/client/Transmission;

    .line 42
    iput-object p2, p0, Lcom/huawei/android/freeshare/client/transfer/Mission;->mTarget:Lcom/huawei/android/freeshare/client/device/DeviceInfo;

    .line 43
    new-instance v1, Ljava/util/ArrayList;

    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v1, p0, Lcom/huawei/android/freeshare/client/transfer/Mission;->mItems:Ljava/util/ArrayList;

    .line 44
    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_0

    .line 47
    return-void

    .line 44
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 45
    .local v0, uri:Ljava/lang/String;
    iget-object v2, p0, Lcom/huawei/android/freeshare/client/transfer/Mission;->mItems:Ljava/util/ArrayList;

    new-instance v3, Lcom/huawei/android/freeshare/client/transfer/TransferItem;

    invoke-direct {v3, p0, v0, p4}, Lcom/huawei/android/freeshare/client/transfer/TransferItem;-><init>(Lcom/huawei/android/freeshare/client/transfer/Mission;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method


# virtual methods
.method public final getFileCount()I
    .locals 1

    .prologue
    .line 89
    iget-object v0, p0, Lcom/huawei/android/freeshare/client/transfer/Mission;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public final getID()I
    .locals 1

    .prologue
    .line 110
    iget v0, p0, Lcom/huawei/android/freeshare/client/transfer/Mission;->mID:I

    return v0
.end method

.method public final getSingleTransferItem()Lcom/huawei/android/freeshare/client/transfer/TransferItem;
    .locals 2

    .prologue
    .line 101
    iget-object v0, p0, Lcom/huawei/android/freeshare/client/transfer/Mission;->mItems:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/huawei/android/freeshare/client/transfer/TransferItem;

    return-object v0
.end method

.method public final getState()I
    .locals 1

    .prologue
    .line 63
    iget v0, p0, Lcom/huawei/android/freeshare/client/transfer/Mission;->mState:I

    return v0
.end method

.method public final getTargetDevice()Lcom/huawei/android/freeshare/client/device/DeviceInfo;
    .locals 1

    .prologue
    .line 105
    iget-object v0, p0, Lcom/huawei/android/freeshare/client/transfer/Mission;->mTarget:Lcom/huawei/android/freeshare/client/device/DeviceInfo;

    return-object v0
.end method

.method public final getTransferItems()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/huawei/android/freeshare/client/transfer/TransferItem;",
            ">;"
        }
    .end annotation

    .prologue
    .line 97
    iget-object v0, p0, Lcom/huawei/android/freeshare/client/transfer/Mission;->mItems:Ljava/util/ArrayList;

    return-object v0
.end method

.method public final isComplete()Z
    .locals 2

    .prologue
    .line 114
    iget v0, p0, Lcom/huawei/android/freeshare/client/transfer/Mission;->mState:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final isSendSingleFile()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 93
    iget-object v1, p0, Lcom/huawei/android/freeshare/client/transfer/Mission;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isTheSameTarget(Lcom/huawei/android/freeshare/client/transfer/Mission;)Z
    .locals 3
    .parameter "another"

    .prologue
    const/4 v0, 0x0

    .line 123
    if-nez p1, :cond_1

    .line 133
    :cond_0
    :goto_0
    return v0

    .line 126
    :cond_1
    iget-object v1, p0, Lcom/huawei/android/freeshare/client/transfer/Mission;->mTarget:Lcom/huawei/android/freeshare/client/device/DeviceInfo;

    if-eqz v1, :cond_0

    .line 130
    iget-object v1, p0, Lcom/huawei/android/freeshare/client/transfer/Mission;->mTarget:Lcom/huawei/android/freeshare/client/device/DeviceInfo;

    invoke-virtual {p1}, Lcom/huawei/android/freeshare/client/transfer/Mission;->getTargetDevice()Lcom/huawei/android/freeshare/client/device/DeviceInfo;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/huawei/android/freeshare/client/device/DeviceInfo;->equal(Lcom/huawei/android/freeshare/client/device/DeviceInfo;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 131
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public start()Z
    .locals 2

    .prologue
    .line 54
    iget-object v0, p0, Lcom/huawei/android/freeshare/client/transfer/Mission;->mTransmission:Lcom/huawei/android/freeshare/client/Transmission;

    if-nez v0, :cond_0

    .line 55
    const-string v0, "Freeshare_Mission"

    const-string v1, "mTransmission type is null"

    invoke-static {v0, v1}, Lcom/huawei/android/freeshare/client/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 56
    const/4 v0, 0x0

    .line 59
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/huawei/android/freeshare/client/transfer/Mission;->mTransmission:Lcom/huawei/android/freeshare/client/Transmission;

    invoke-virtual {v0, p0}, Lcom/huawei/android/freeshare/client/Transmission;->startMission(Lcom/huawei/android/freeshare/client/transfer/Mission;)Z

    move-result v0

    goto :goto_0
.end method

.method public upDateState()V
    .locals 6

    .prologue
    const/4 v5, 0x5

    const/4 v4, 0x4

    .line 73
    const/4 v0, 0x1

    .line 74
    .local v0, isAllComplete:Z
    iget-object v2, p0, Lcom/huawei/android/freeshare/client/transfer/Mission;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_2

    .line 83
    if-eqz v0, :cond_1

    .line 84
    iput v5, p0, Lcom/huawei/android/freeshare/client/transfer/Mission;->mState:I

    .line 86
    :cond_1
    :goto_1
    return-void

    .line 74
    :cond_2
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/huawei/android/freeshare/client/transfer/TransferItem;

    .line 75
    .local v1, item:Lcom/huawei/android/freeshare/client/transfer/TransferItem;
    iget v3, v1, Lcom/huawei/android/freeshare/client/transfer/TransferItem;->mStatus:I

    if-ne v3, v4, :cond_3

    .line 76
    iput v4, p0, Lcom/huawei/android/freeshare/client/transfer/Mission;->mState:I

    goto :goto_1

    .line 79
    :cond_3
    iget v3, v1, Lcom/huawei/android/freeshare/client/transfer/TransferItem;->mStatus:I

    if-eq v3, v5, :cond_0

    .line 80
    const/4 v0, 0x0

    goto :goto_0
.end method
