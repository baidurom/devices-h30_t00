.class public Landroid/media/audiofx/dolbymobileaudioeffect/DolbyMobileSystem;
.super Landroid/media/audiofx/dolbymobileaudioeffect/DolbyMobile;
.source "DolbyMobileSystem.java"


# direct methods
.method public constructor <init>(I)V
    .locals 2
    .parameter "audioSessionId"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ClassNotFoundException;,
            Ljava/lang/NoSuchMethodException;,
            Ljava/lang/InstantiationException;,
            Ljava/lang/IllegalAccessException;,
            Ljava/lang/reflect/InvocationTargetException;
        }
    .end annotation

    .prologue
    .line 99
    invoke-direct {p0, p1}, Landroid/media/audiofx/dolbymobileaudioeffect/DolbyMobile;-><init>(I)V

    .line 100
    new-instance v0, Lcom/huawei/android/util/NoExtAPIException;

    const-string v1, "method not supported."

    invoke-direct {v0, v1}, Lcom/huawei/android/util/NoExtAPIException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public applyPreset(Landroid/media/audiofx/dolbymobileaudioeffect/DolbyMobilePreset;)V
    .locals 2
    .parameter "preset"

    .prologue
    .line 58
    new-instance v0, Lcom/huawei/android/util/NoExtAPIException;

    const-string v1, "method not supported."

    invoke-direct {v0, v1}, Lcom/huawei/android/util/NoExtAPIException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getCurrentPreset()Landroid/media/audiofx/dolbymobileaudioeffect/DolbyMobilePreset;
    .locals 2

    .prologue
    .line 65
    new-instance v0, Lcom/huawei/android/util/NoExtAPIException;

    const-string v1, "method not supported."

    invoke-direct {v0, v1}, Lcom/huawei/android/util/NoExtAPIException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getPresets(Landroid/media/audiofx/dolbymobileaudioeffect/DolbyMobilePreset$Category;)[Landroid/media/audiofx/dolbymobileaudioeffect/DolbyMobilePreset;
    .locals 2
    .parameter "category"

    .prologue
    .line 73
    new-instance v0, Lcom/huawei/android/util/NoExtAPIException;

    const-string v1, "method not supported."

    invoke-direct {v0, v1}, Lcom/huawei/android/util/NoExtAPIException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
