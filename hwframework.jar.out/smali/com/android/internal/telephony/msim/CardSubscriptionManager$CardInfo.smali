.class Lcom/android/internal/telephony/msim/CardSubscriptionManager$CardInfo;
.super Ljava/lang/Object;
.source "CardSubscriptionManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/msim/CardSubscriptionManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "CardInfo"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/telephony/msim/CardSubscriptionManager;


# direct methods
.method public constructor <init>(Lcom/android/internal/telephony/msim/CardSubscriptionManager;Lcom/android/internal/telephony/uicc/UiccCard;)V
    .locals 2
    .parameter
    .parameter "uiccCard"

    .prologue
    .line 59
    iput-object p1, p0, Lcom/android/internal/telephony/msim/CardSubscriptionManager$CardInfo;->this$0:Lcom/android/internal/telephony/msim/CardSubscriptionManager;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 60
    new-instance v0, Lcom/huawei/android/util/NoExtAPIException;

    const-string v1, "method not supported."

    invoke-direct {v0, v1}, Lcom/huawei/android/util/NoExtAPIException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public getIccId()Ljava/lang/String;
    .locals 2

    .prologue
    .line 82
    new-instance v0, Lcom/huawei/android/util/NoExtAPIException;

    const-string v1, "method not supported."

    invoke-direct {v0, v1}, Lcom/huawei/android/util/NoExtAPIException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getUiccCard()Lcom/android/internal/telephony/uicc/UiccCard;
    .locals 2

    .prologue
    .line 64
    new-instance v0, Lcom/huawei/android/util/NoExtAPIException;

    const-string v1, "method not supported."

    invoke-direct {v0, v1}, Lcom/huawei/android/util/NoExtAPIException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public isReadIccIdInProgress()Z
    .locals 2

    .prologue
    .line 74
    new-instance v0, Lcom/huawei/android/util/NoExtAPIException;

    const-string v1, "method not supported."

    invoke-direct {v0, v1}, Lcom/huawei/android/util/NoExtAPIException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setIccId(Ljava/lang/String;)V
    .locals 2
    .parameter "iccId"

    .prologue
    .line 86
    new-instance v0, Lcom/huawei/android/util/NoExtAPIException;

    const-string v1, "method not supported."

    invoke-direct {v0, v1}, Lcom/huawei/android/util/NoExtAPIException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setReadIccIdInProgress(Z)V
    .locals 2
    .parameter "read"

    .prologue
    .line 78
    new-instance v0, Lcom/huawei/android/util/NoExtAPIException;

    const-string v1, "method not supported."

    invoke-direct {v0, v1}, Lcom/huawei/android/util/NoExtAPIException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setUiccCard(Lcom/android/internal/telephony/uicc/UiccCard;)V
    .locals 2
    .parameter "uiccCard"

    .prologue
    .line 68
    new-instance v0, Lcom/huawei/android/util/NoExtAPIException;

    const-string v1, "method not supported."

    invoke-direct {v0, v1}, Lcom/huawei/android/util/NoExtAPIException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 90
    new-instance v0, Lcom/huawei/android/util/NoExtAPIException;

    const-string v1, "method not supported."

    invoke-direct {v0, v1}, Lcom/huawei/android/util/NoExtAPIException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
