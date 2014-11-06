.class public Lcom/android/internal/telephony/msim/CardSubscriptionManager;
.super Landroid/os/Handler;
.source "CardSubscriptionManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/msim/CardSubscriptionManager$CardInfo;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 54
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 57
    return-void
.end method

.method public static getInstance()Lcom/android/internal/telephony/msim/CardSubscriptionManager;
    .locals 2

    .prologue
    .line 100
    new-instance v0, Lcom/huawei/android/util/NoExtAPIException;

    const-string v1, "method not supported."

    invoke-direct {v0, v1}, Lcom/huawei/android/util/NoExtAPIException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static getInstance(Landroid/content/Context;Lcom/android/internal/telephony/uicc/UiccController;[Lcom/android/internal/telephony/CommandsInterface;)Lcom/android/internal/telephony/msim/CardSubscriptionManager;
    .locals 2
    .parameter "context"
    .parameter "uiccMgr"
    .parameter "ci"

    .prologue
    .line 96
    new-instance v0, Lcom/huawei/android/util/NoExtAPIException;

    const-string v1, "method not supported."

    invoke-direct {v0, v1}, Lcom/huawei/android/util/NoExtAPIException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public getCardSubscriptions(I)Lcom/android/internal/telephony/msim/SubscriptionData;
    .locals 2
    .parameter "cardIndex"

    .prologue
    .line 126
    new-instance v0, Lcom/huawei/android/util/NoExtAPIException;

    const-string v1, "method not supported."

    invoke-direct {v0, v1}, Lcom/huawei/android/util/NoExtAPIException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .parameter "msg"

    .prologue
    .line 105
    new-instance v0, Lcom/huawei/android/util/NoExtAPIException;

    const-string v1, "method not supported."

    invoke-direct {v0, v1}, Lcom/huawei/android/util/NoExtAPIException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public isAllCardsUpdated()Z
    .locals 2

    .prologue
    .line 142
    new-instance v0, Lcom/huawei/android/util/NoExtAPIException;

    const-string v1, "method not supported."

    invoke-direct {v0, v1}, Lcom/huawei/android/util/NoExtAPIException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public isCardAbsentOrError(I)Z
    .locals 2
    .parameter "cardIndex"

    .prologue
    .line 138
    new-instance v0, Lcom/huawei/android/util/NoExtAPIException;

    const-string v1, "method not supported."

    invoke-direct {v0, v1}, Lcom/huawei/android/util/NoExtAPIException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public isCardInfoAvailable(I)Z
    .locals 2
    .parameter "cardIndex"

    .prologue
    .line 146
    new-instance v0, Lcom/huawei/android/util/NoExtAPIException;

    const-string v1, "method not supported."

    invoke-direct {v0, v1}, Lcom/huawei/android/util/NoExtAPIException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public isValidCards()Z
    .locals 2

    .prologue
    .line 134
    new-instance v0, Lcom/huawei/android/util/NoExtAPIException;

    const-string v1, "method not supported."

    invoke-direct {v0, v1}, Lcom/huawei/android/util/NoExtAPIException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public registerForAllCardsInfoAvailable(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 2
    .parameter "h"
    .parameter "what"
    .parameter "obj"

    .prologue
    .line 109
    new-instance v0, Lcom/huawei/android/util/NoExtAPIException;

    const-string v1, "method not supported."

    invoke-direct {v0, v1}, Lcom/huawei/android/util/NoExtAPIException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public registerForCardInfoAvailable(ILandroid/os/Handler;ILjava/lang/Object;)V
    .locals 2
    .parameter "cardIndex"
    .parameter "h"
    .parameter "what"
    .parameter "obj"

    .prologue
    .line 117
    new-instance v0, Lcom/huawei/android/util/NoExtAPIException;

    const-string v1, "method not supported."

    invoke-direct {v0, v1}, Lcom/huawei/android/util/NoExtAPIException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public registerForCardInfoUnavailable(ILandroid/os/Handler;ILjava/lang/Object;)V
    .locals 2
    .parameter "cardIndex"
    .parameter "h"
    .parameter "what"
    .parameter "obj"

    .prologue
    .line 113
    new-instance v0, Lcom/huawei/android/util/NoExtAPIException;

    const-string v1, "method not supported."

    invoke-direct {v0, v1}, Lcom/huawei/android/util/NoExtAPIException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
