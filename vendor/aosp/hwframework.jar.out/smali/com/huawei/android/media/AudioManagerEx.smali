.class public Lcom/huawei/android/media/AudioManagerEx;
.super Ljava/lang/Object;
.source "AudioManagerEx.java"


# static fields
.field public static final STREAM_FM:I = 0xa


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 53
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static isMicrophoneMute(Landroid/media/AudioManager;I)I
    .locals 2
    .parameter "obj"
    .parameter "modemType"

    .prologue
    .line 58
    new-instance v0, Lcom/huawei/android/util/NoExtAPIException;

    const-string v1, "method not supported."

    invoke-direct {v0, v1}, Lcom/huawei/android/util/NoExtAPIException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static setMicrophoneMute(Landroid/media/AudioManager;IZ)V
    .locals 2
    .parameter "obj"
    .parameter "modemType"
    .parameter "on"

    .prologue
    .line 62
    new-instance v0, Lcom/huawei/android/util/NoExtAPIException;

    const-string v1, "method not supported."

    invoke-direct {v0, v1}, Lcom/huawei/android/util/NoExtAPIException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
