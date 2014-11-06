.class public Lcom/huawei/internal/telephony/cat/CatCmdMessageEx;
.super Ljava/lang/Object;
.source "CatCmdMessageEx.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 27
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getLanguageNotification(Lcom/android/internal/telephony/cat/CatCmdMessage;)Ljava/lang/String;
    .locals 2
    .parameter "obj"

    .prologue
    .line 61
    new-instance v0, Lcom/huawei/android/util/NoExtAPIException;

    const-string v1, "method not supported."

    invoke-direct {v0, v1}, Lcom/huawei/android/util/NoExtAPIException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static getLoadOptionalIconFailed(Lcom/android/internal/telephony/cat/CatCmdMessage;)Z
    .locals 2
    .parameter "obj"

    .prologue
    .line 53
    new-instance v0, Lcom/huawei/android/util/NoExtAPIException;

    const-string v1, "method not supported."

    invoke-direct {v0, v1}, Lcom/huawei/android/util/NoExtAPIException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static get_eventList(Lcom/android/internal/telephony/cat/CatCmdMessage;)[I
    .locals 2
    .parameter "obj"

    .prologue
    .line 33
    new-instance v0, Lcom/huawei/android/util/NoExtAPIException;

    const-string v1, "method not supported."

    invoke-direct {v0, v1}, Lcom/huawei/android/util/NoExtAPIException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static hasIconLoadFailed(Lcom/android/internal/telephony/cat/CatCmdMessage;)Z
    .locals 2
    .parameter "obj"

    .prologue
    .line 39
    new-instance v0, Lcom/huawei/android/util/NoExtAPIException;

    const-string v1, "method not supported."

    invoke-direct {v0, v1}, Lcom/huawei/android/util/NoExtAPIException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
