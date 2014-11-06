.class public abstract Lcom/huawei/android/freeshare/client/transfer/FileTransfer;
.super Ljava/lang/Object;
.source "FileTransfer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/huawei/android/freeshare/client/transfer/FileTransfer$TransferObserver;
    }
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;

.field protected mTransferObserver:Lcom/huawei/android/freeshare/client/transfer/FileTransfer$TransferObserver;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter "context"

    .prologue
    .line 15
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 16
    iput-object p1, p0, Lcom/huawei/android/freeshare/client/transfer/FileTransfer;->mContext:Landroid/content/Context;

    .line 17
    return-void
.end method


# virtual methods
.method public abstract cancleTransferringMission()Z
.end method

.method public destroy()Z
    .locals 1

    .prologue
    .line 38
    const/4 v0, 0x1

    return v0
.end method

.method protected final getContext()Landroid/content/Context;
    .locals 1

    .prologue
    .line 58
    iget-object v0, p0, Lcom/huawei/android/freeshare/client/transfer/FileTransfer;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method public init()Z
    .locals 1

    .prologue
    .line 30
    const/4 v0, 0x1

    return v0
.end method

.method public isTransferring()Z
    .locals 1

    .prologue
    .line 46
    const/4 v0, 0x0

    return v0
.end method

.method public registerObserver(Lcom/huawei/android/freeshare/client/transfer/FileTransfer$TransferObserver;)V
    .locals 0
    .parameter "observer"

    .prologue
    .line 42
    iput-object p1, p0, Lcom/huawei/android/freeshare/client/transfer/FileTransfer;->mTransferObserver:Lcom/huawei/android/freeshare/client/transfer/FileTransfer$TransferObserver;

    .line 43
    return-void
.end method

.method public abstract start(Lcom/huawei/android/freeshare/client/transfer/Mission;)Z
.end method
