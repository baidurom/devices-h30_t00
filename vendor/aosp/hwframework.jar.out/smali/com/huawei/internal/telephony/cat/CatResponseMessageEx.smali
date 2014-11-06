.class public Lcom/huawei/internal/telephony/cat/CatResponseMessageEx;
.super Ljava/lang/Object;
.source "CatResponseMessageEx.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 22
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static setAdditionalInfo(Lcom/android/internal/telephony/cat/CatResponseMessage;ZI)V
    .locals 2
    .parameter "obj"
    .parameter "includeAdditionalInfo"
    .parameter "additionalInfo"

    .prologue
    .line 29
    new-instance v0, Lcom/huawei/android/util/NoExtAPIException;

    const-string v1, "method not supported."

    invoke-direct {v0, v1}, Lcom/huawei/android/util/NoExtAPIException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static setEventDownload(Lcom/android/internal/telephony/cat/CatResponseMessage;I[B)V
    .locals 2
    .parameter "obj"
    .parameter "event"
    .parameter "addedInfo"

    .prologue
    .line 25
    new-instance v0, Lcom/huawei/android/util/NoExtAPIException;

    const-string v1, "method not supported."

    invoke-direct {v0, v1}, Lcom/huawei/android/util/NoExtAPIException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
