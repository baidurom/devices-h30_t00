.class public Lcom/huawei/internal/telephony/MmiCodeEx;
.super Ljava/lang/Object;
.source "MmiCodeEx.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 26
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getPhone(Lcom/android/internal/telephony/MmiCode;)Lcom/android/internal/telephony/Phone;
    .locals 2
    .parameter "obj"

    .prologue
    .line 33
    new-instance v0, Lcom/huawei/android/util/NoExtAPIException;

    const-string v1, "method not supported."

    invoke-direct {v0, v1}, Lcom/huawei/android/util/NoExtAPIException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
