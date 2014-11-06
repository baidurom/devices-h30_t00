.class public Landroid/media/dolby/DolbyMobileAudioEffectClient;
.super Ljava/lang/Object;
.source "DolbyMobileAudioEffectClient.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "DolbyMobileAudioEffectClient"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 27
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bindToRemoteRunningService(Landroid/app/Activity;)V
    .locals 2
    .parameter "activity"

    .prologue
    .line 35
    new-instance v0, Lcom/huawei/android/util/NoExtAPIException;

    const-string v1, "method not supported."

    invoke-direct {v0, v1}, Lcom/huawei/android/util/NoExtAPIException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public bindToRemoteRunningService(Landroid/app/Service;)V
    .locals 2
    .parameter "service"

    .prologue
    .line 43
    new-instance v0, Lcom/huawei/android/util/NoExtAPIException;

    const-string v1, "method not supported."

    invoke-direct {v0, v1}, Lcom/huawei/android/util/NoExtAPIException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getDMSystemInterface()Landroid/media/dolby/IDolbyMobileSystemInterface;
    .locals 2

    .prologue
    .line 50
    new-instance v0, Lcom/huawei/android/util/NoExtAPIException;

    const-string v1, "method not supported."

    invoke-direct {v0, v1}, Lcom/huawei/android/util/NoExtAPIException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public registerCallback(Landroid/media/dolby/DolbyMobileClientCallbacks;)V
    .locals 2
    .parameter "cb"

    .prologue
    .line 57
    new-instance v0, Lcom/huawei/android/util/NoExtAPIException;

    const-string v1, "method not supported."

    invoke-direct {v0, v1}, Lcom/huawei/android/util/NoExtAPIException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public unBindFromRemoteRunningService(Landroid/app/Activity;)V
    .locals 2
    .parameter "activity"

    .prologue
    .line 64
    new-instance v0, Lcom/huawei/android/util/NoExtAPIException;

    const-string v1, "method not supported."

    invoke-direct {v0, v1}, Lcom/huawei/android/util/NoExtAPIException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
