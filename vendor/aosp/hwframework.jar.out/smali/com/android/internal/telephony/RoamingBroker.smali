.class public Lcom/android/internal/telephony/RoamingBroker;
.super Ljava/lang/Object;
.source "RoamingBroker.java"


# static fields
.field public static final PreviousIccId:Ljava/lang/String; = "persist.radio.previousiccid"

.field public static final PreviousOperator:Ljava/lang/String; = "persist.radio.previousopcode"

.field public static final RBActivated:Ljava/lang/String; = "gsm.RBActivated"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 23
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getDefault()Lcom/android/internal/telephony/RoamingBroker;
    .locals 2

    .prologue
    .line 33
    new-instance v0, Lcom/huawei/android/util/NoExtAPIException;

    const-string v1, "method not supported."

    invoke-direct {v0, v1}, Lcom/huawei/android/util/NoExtAPIException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static isRoamingBrokerActivated()Z
    .locals 2

    .prologue
    .line 45
    new-instance v0, Lcom/huawei/android/util/NoExtAPIException;

    const-string v1, "method not supported."

    invoke-direct {v0, v1}, Lcom/huawei/android/util/NoExtAPIException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static updateSelectionForRoamingBroker(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "selection"

    .prologue
    .line 52
    new-instance v0, Lcom/huawei/android/util/NoExtAPIException;

    const-string v1, "method not supported."

    invoke-direct {v0, v1}, Lcom/huawei/android/util/NoExtAPIException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public setIccId(Ljava/lang/String;)V
    .locals 2
    .parameter "IccId"

    .prologue
    .line 41
    new-instance v0, Lcom/huawei/android/util/NoExtAPIException;

    const-string v1, "method not supported."

    invoke-direct {v0, v1}, Lcom/huawei/android/util/NoExtAPIException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setOperator(Ljava/lang/String;)V
    .locals 2
    .parameter "operatorCode"

    .prologue
    .line 37
    new-instance v0, Lcom/huawei/android/util/NoExtAPIException;

    const-string v1, "method not supported."

    invoke-direct {v0, v1}, Lcom/huawei/android/util/NoExtAPIException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
