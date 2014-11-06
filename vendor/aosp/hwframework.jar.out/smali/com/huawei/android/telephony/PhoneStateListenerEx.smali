.class public Lcom/huawei/android/telephony/PhoneStateListenerEx;
.super Landroid/telephony/PhoneStateListener;
.source "PhoneStateListenerEx.java"


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 42
    invoke-direct {p0}, Landroid/telephony/PhoneStateListener;-><init>()V

    .line 43
    new-instance v0, Lcom/huawei/android/util/NoExtAPIException;

    const-string v1, "method not supported."

    invoke-direct {v0, v1}, Lcom/huawei/android/util/NoExtAPIException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public constructor <init>(I)V
    .locals 2
    .parameter "mSubscription"

    .prologue
    .line 47
    invoke-direct {p0}, Landroid/telephony/PhoneStateListener;-><init>()V

    .line 48
    new-instance v0, Lcom/huawei/android/util/NoExtAPIException;

    const-string v1, "method not supported."

    invoke-direct {v0, v1}, Lcom/huawei/android/util/NoExtAPIException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static getSubscription(Landroid/telephony/PhoneStateListener;)I
    .locals 2
    .parameter "obj"

    .prologue
    .line 57
    new-instance v0, Lcom/huawei/android/util/NoExtAPIException;

    const-string v1, "method not supported."

    invoke-direct {v0, v1}, Lcom/huawei/android/util/NoExtAPIException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static setSubscription(Landroid/telephony/PhoneStateListener;I)V
    .locals 2
    .parameter "obj"
    .parameter "subscription"

    .prologue
    .line 64
    new-instance v0, Lcom/huawei/android/util/NoExtAPIException;

    const-string v1, "method not supported."

    invoke-direct {v0, v1}, Lcom/huawei/android/util/NoExtAPIException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
