.class public final Lcom/android/internal/telephony/msim/Subscription;
.super Ljava/lang/Object;
.source "Subscription.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/msim/Subscription$SubscriptionStatus;
    }
.end annotation


# static fields
.field public static final SUBSCRIPTION_INDEX_INVALID:I = -0x1


# instance fields
.field public appId:Ljava/lang/String;

.field public appLabel:Ljava/lang/String;

.field public appType:Ljava/lang/String;

.field public iccId:Ljava/lang/String;

.field public m3gpp2Index:I

.field public m3gppIndex:I

.field public slotId:I

.field public subId:I

.field public subStatus:Lcom/android/internal/telephony/msim/Subscription$SubscriptionStatus;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 52
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 53
    new-instance v0, Lcom/huawei/android/util/NoExtAPIException;

    const-string v1, "method not supported."

    invoke-direct {v0, v1}, Lcom/huawei/android/util/NoExtAPIException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public clear()V
    .locals 2

    .prologue
    .line 77
    new-instance v0, Lcom/huawei/android/util/NoExtAPIException;

    const-string v1, "method not supported."

    invoke-direct {v0, v1}, Lcom/huawei/android/util/NoExtAPIException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public copyFrom(Lcom/android/internal/telephony/msim/Subscription;)Lcom/android/internal/telephony/msim/Subscription;
    .locals 2
    .parameter "from"

    .prologue
    .line 86
    new-instance v0, Lcom/huawei/android/util/NoExtAPIException;

    const-string v1, "method not supported."

    invoke-direct {v0, v1}, Lcom/huawei/android/util/NoExtAPIException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public equals(Lcom/android/internal/telephony/msim/Subscription;)Z
    .locals 2
    .parameter "sub"

    .prologue
    .line 61
    new-instance v0, Lcom/huawei/android/util/NoExtAPIException;

    const-string v1, "method not supported."

    invoke-direct {v0, v1}, Lcom/huawei/android/util/NoExtAPIException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getAppIndex()I
    .locals 2

    .prologue
    .line 94
    new-instance v0, Lcom/huawei/android/util/NoExtAPIException;

    const-string v1, "method not supported."

    invoke-direct {v0, v1}, Lcom/huawei/android/util/NoExtAPIException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getLength()I
    .locals 2

    .prologue
    .line 98
    new-instance v0, Lcom/huawei/android/util/NoExtAPIException;

    const-string v1, "method not supported."

    invoke-direct {v0, v1}, Lcom/huawei/android/util/NoExtAPIException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public isSame(Lcom/android/internal/telephony/msim/Subscription;)Z
    .locals 2
    .parameter "sub"

    .prologue
    .line 70
    new-instance v0, Lcom/huawei/android/util/NoExtAPIException;

    const-string v1, "method not supported."

    invoke-direct {v0, v1}, Lcom/huawei/android/util/NoExtAPIException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 57
    new-instance v0, Lcom/huawei/android/util/NoExtAPIException;

    const-string v1, "method not supported."

    invoke-direct {v0, v1}, Lcom/huawei/android/util/NoExtAPIException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
