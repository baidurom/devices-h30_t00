.class public Lcom/huawei/internal/telephony/cat/AppInterfaceEx;
.super Ljava/lang/Object;
.source "AppInterfaceEx.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 27
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getLanguageNotificationCode(Lcom/android/internal/telephony/cat/CatService;)Ljava/lang/String;
    .locals 2
    .parameter "obj"

    .prologue
    .line 37
    new-instance v0, Lcom/huawei/android/util/NoExtAPIException;

    const-string v1, "method not supported."

    invoke-direct {v0, v1}, Lcom/huawei/android/util/NoExtAPIException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static getLanguageSelectionStateAvailable(Lcom/android/internal/telephony/cat/CatService;)Z
    .locals 2
    .parameter "obj"

    .prologue
    .line 53
    new-instance v0, Lcom/huawei/android/util/NoExtAPIException;

    const-string v1, "method not supported."

    invoke-direct {v0, v1}, Lcom/huawei/android/util/NoExtAPIException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static getState_LANGUAGE_NOTIFICATION()Lcom/android/internal/telephony/cat/AppInterface$CommandType;
    .locals 2

    .prologue
    .line 61
    new-instance v0, Lcom/huawei/android/util/NoExtAPIException;

    const-string v1, "method not supported."

    invoke-direct {v0, v1}, Lcom/huawei/android/util/NoExtAPIException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static sendLanguageSelection(IILcom/android/internal/telephony/cat/CatService;)V
    .locals 2
    .parameter "languageFirst"
    .parameter "languageSecond"
    .parameter "obj"

    .prologue
    .line 30
    new-instance v0, Lcom/huawei/android/util/NoExtAPIException;

    const-string v1, "method not supported."

    invoke-direct {v0, v1}, Lcom/huawei/android/util/NoExtAPIException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static setLanguageSelectionStateAvailable(ZLcom/android/internal/telephony/cat/CatService;)V
    .locals 2
    .parameter "languageSelectionStateAvailable"
    .parameter "obj"

    .prologue
    .line 45
    new-instance v0, Lcom/huawei/android/util/NoExtAPIException;

    const-string v1, "method not supported."

    invoke-direct {v0, v1}, Lcom/huawei/android/util/NoExtAPIException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
