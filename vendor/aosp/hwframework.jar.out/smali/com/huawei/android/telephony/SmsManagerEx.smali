.class public final Lcom/huawei/android/telephony/SmsManagerEx;
.super Ljava/lang/Object;
.source "SmsManagerEx.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 35
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static disableCdmaBroadcast(Landroid/telephony/SmsManager;I)Z
    .locals 2
    .parameter "obj"
    .parameter "messageIdentifier"

    .prologue
    .line 83
    new-instance v0, Lcom/huawei/android/util/NoExtAPIException;

    const-string v1, "method not supported."

    invoke-direct {v0, v1}, Lcom/huawei/android/util/NoExtAPIException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static enableCdmaBroadcast(Landroid/telephony/SmsManager;I)Z
    .locals 2
    .parameter "obj"
    .parameter "messageIdentifier"

    .prologue
    .line 68
    new-instance v0, Lcom/huawei/android/util/NoExtAPIException;

    const-string v1, "method not supported."

    invoke-direct {v0, v1}, Lcom/huawei/android/util/NoExtAPIException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static getSmscAddr(Landroid/telephony/SmsManager;)Ljava/lang/String;
    .locals 2
    .parameter "obj"

    .prologue
    .line 44
    new-instance v0, Lcom/huawei/android/util/NoExtAPIException;

    const-string v1, "method not supported."

    invoke-direct {v0, v1}, Lcom/huawei/android/util/NoExtAPIException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static setSmscAddr(Landroid/telephony/SmsManager;Ljava/lang/String;)Z
    .locals 2
    .parameter "obj"
    .parameter "smscAddr"

    .prologue
    .line 51
    new-instance v0, Lcom/huawei/android/util/NoExtAPIException;

    const-string v1, "method not supported."

    invoke-direct {v0, v1}, Lcom/huawei/android/util/NoExtAPIException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
