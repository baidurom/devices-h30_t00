.class public Lcom/huawei/internal/telephony/uicc/UiccControllerEx;
.super Ljava/lang/Object;
.source "UiccControllerEx.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 36
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static declared-synchronized getInstance()Lcom/android/internal/telephony/uicc/UiccController;
    .locals 3

    .prologue
    .line 39
    const-class v1, Lcom/huawei/internal/telephony/uicc/UiccControllerEx;

    monitor-enter v1

    :try_start_0
    new-instance v0, Lcom/huawei/android/util/NoExtAPIException;

    const-string v2, "method not supported."

    invoke-direct {v0, v2}, Lcom/huawei/android/util/NoExtAPIException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static declared-synchronized getUiccCard(Lcom/android/internal/telephony/uicc/UiccController;)Lcom/android/internal/telephony/UiccCard;
    .locals 3
    .parameter "obj"

    .prologue
    .line 43
    const-class v1, Lcom/huawei/internal/telephony/uicc/UiccControllerEx;

    monitor-enter v1

    :try_start_0
    new-instance v0, Lcom/huawei/android/util/NoExtAPIException;

    const-string v2, "method not supported."

    invoke-direct {v0, v2}, Lcom/huawei/android/util/NoExtAPIException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static declared-synchronized getUiccCard(Lcom/android/internal/telephony/uicc/UiccController;I)Lcom/android/internal/telephony/UiccCard;
    .locals 3
    .parameter "obj"
    .parameter "slotId"

    .prologue
    .line 47
    const-class v1, Lcom/huawei/internal/telephony/uicc/UiccControllerEx;

    monitor-enter v1

    :try_start_0
    new-instance v0, Lcom/huawei/android/util/NoExtAPIException;

    const-string v2, "method not supported."

    invoke-direct {v0, v2}, Lcom/huawei/android/util/NoExtAPIException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method
