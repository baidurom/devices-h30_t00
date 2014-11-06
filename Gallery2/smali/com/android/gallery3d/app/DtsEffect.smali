.class public Lcom/android/gallery3d/app/DtsEffect;
.super Ljava/lang/Object;
.source "DtsEffect.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/gallery3d/app/DtsEffect$DtsEffectOnListener;
    }
.end annotation


# static fields
.field public static final DTS_CINEMA:I = 0x2

.field public static final DTS_ENHANCED:I = 0x3

.field public static final DTS_MUSIC:I = 0x1

.field public static final DTS_OFF:I = 0x0

.field public static final DTS_SPEAKER_ON:I = 0x4

.field private static final TAG:Ljava/lang/String; = "DtsEffect"


# instance fields
.field private mAudioManager:Landroid/media/AudioManager;

.field private final mContext:Landroid/content/Context;

.field private mDtsHeadsetOn:Z

.field private mDtsSpeakerOn:Z

.field private mListener:Lcom/android/gallery3d/app/DtsEffect$DtsEffectOnListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    const/4 v1, 0x1

    .line 33
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 25
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/gallery3d/app/DtsEffect;->mAudioManager:Landroid/media/AudioManager;

    .line 27
    iput-boolean v1, p0, Lcom/android/gallery3d/app/DtsEffect;->mDtsHeadsetOn:Z

    .line 28
    iput-boolean v1, p0, Lcom/android/gallery3d/app/DtsEffect;->mDtsSpeakerOn:Z

    .line 34
    const-string v0, "DtsEffect"

    const-string v1, "DtsEffect init"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 35
    iput-object p1, p0, Lcom/android/gallery3d/app/DtsEffect;->mContext:Landroid/content/Context;

    .line 36
    const-string v0, "audio"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    iput-object v0, p0, Lcom/android/gallery3d/app/DtsEffect;->mAudioManager:Landroid/media/AudioManager;

    .line 37
    return-void
.end method


# virtual methods
.method public getDtsEffectOn()Z
    .locals 2

    .prologue
    .line 55
    const/4 v1, 0x0

    .line 56
    .local v1, isDtsEffectOn:Z
    invoke-virtual {p0}, Lcom/android/gallery3d/app/DtsEffect;->getSettingsSystemDTSModeFieldValue()I

    move-result v0

    .line 57
    .local v0, iconDtsValue:I
    if-lez v0, :cond_0

    .line 58
    const/4 v1, 0x1

    .line 62
    :goto_0
    return v1

    .line 60
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getSettingsSystemDTSModeFieldValue()I
    .locals 6

    .prologue
    .line 131
    const/4 v3, 0x0

    .line 133
    .local v3, settingtype:I
    :try_start_0
    const-class v2, Landroid/provider/Settings$System;

    .line 134
    .local v2, settingsSystem:Ljava/lang/Class;
    const-string v4, "DTS_MODE"

    invoke-virtual {v2, v4}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v4

    invoke-virtual {v2}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 136
    .local v0, dts_mode_filed:Ljava/lang/String;
    iget-object v4, p0, Lcom/android/gallery3d/app/DtsEffect;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    invoke-static {v4, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I

    move-result v3

    .line 137
    const-string v4, "DtsEffect"

    const-string v5, "Settings.System.DTS_MODE exist!"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 141
    .end local v0           #dts_mode_filed:Ljava/lang/String;
    .end local v2           #settingsSystem:Ljava/lang/Class;
    :goto_0
    return v3

    .line 138
    :catch_0
    move-exception v1

    .line 139
    .local v1, e:Ljava/lang/Exception;
    const-string v4, "DtsEffect"

    const-string v5, "exception in getSettingsSystemDTSModeFieldValue():"

    invoke-static {v4, v5, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public isDtsHeadsetOn()Z
    .locals 1

    .prologue
    .line 40
    iget-boolean v0, p0, Lcom/android/gallery3d/app/DtsEffect;->mDtsHeadsetOn:Z

    return v0
.end method

.method public isDtsSpeakerOn()Z
    .locals 1

    .prologue
    .line 43
    iget-boolean v0, p0, Lcom/android/gallery3d/app/DtsEffect;->mDtsSpeakerOn:Z

    return v0
.end method

.method public notifyMenuChange()V
    .locals 2

    .prologue
    .line 50
    iget-object v0, p0, Lcom/android/gallery3d/app/DtsEffect;->mListener:Lcom/android/gallery3d/app/DtsEffect$DtsEffectOnListener;

    if-eqz v0, :cond_0

    .line 51
    iget-object v0, p0, Lcom/android/gallery3d/app/DtsEffect;->mListener:Lcom/android/gallery3d/app/DtsEffect$DtsEffectOnListener;

    invoke-virtual {p0}, Lcom/android/gallery3d/app/DtsEffect;->getDtsEffectOn()Z

    move-result v1

    invoke-interface {v0, v1}, Lcom/android/gallery3d/app/DtsEffect$DtsEffectOnListener;->onEffectOnChange(Z)V

    .line 53
    :cond_0
    return-void
.end method

.method public saveIntoSettingSystem(I)V
    .locals 5
    .parameter "dtsvalue"

    .prologue
    .line 115
    :try_start_0
    const-class v2, Landroid/provider/Settings$System;

    .line 116
    .local v2, settingsSystem:Ljava/lang/Class;
    const-string v3, "DTS_MODE"

    invoke-virtual {v2, v3}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v3

    invoke-virtual {v2}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 118
    .local v0, dts_mode_filed:Ljava/lang/String;
    iget-object v3, p0, Lcom/android/gallery3d/app/DtsEffect;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    invoke-static {v3, v0, p1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 123
    .end local v0           #dts_mode_filed:Ljava/lang/String;
    .end local v2           #settingsSystem:Ljava/lang/Class;
    :goto_0
    return-void

    .line 120
    :catch_0
    move-exception v1

    .line 121
    .local v1, e:Ljava/lang/Exception;
    const-string v3, "DtsEffect"

    const-string v4, "exception in saveIntoSettingSystem():"

    invoke-static {v3, v4, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public setDtsEffectOnListener(Lcom/android/gallery3d/app/DtsEffect$DtsEffectOnListener;)V
    .locals 0
    .parameter "Listener"

    .prologue
    .line 47
    iput-object p1, p0, Lcom/android/gallery3d/app/DtsEffect;->mListener:Lcom/android/gallery3d/app/DtsEffect$DtsEffectOnListener;

    .line 48
    return-void
.end method

.method public startDtsPreview(I)V
    .locals 2
    .parameter "dtsitem"

    .prologue
    .line 71
    iget-object v0, p0, Lcom/android/gallery3d/app/DtsEffect;->mAudioManager:Landroid/media/AudioManager;

    if-eqz v0, :cond_0

    .line 72
    packed-switch p1, :pswitch_data_0

    .line 106
    :goto_0
    return-void

    .line 74
    :pswitch_0
    iget-object v0, p0, Lcom/android/gallery3d/app/DtsEffect;->mAudioManager:Landroid/media/AudioManager;

    const-string v1, "srs_cfg:trumedia_enable=0"

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->setParameters(Ljava/lang/String;)V

    goto :goto_0

    .line 77
    :pswitch_1
    iget-object v0, p0, Lcom/android/gallery3d/app/DtsEffect;->mAudioManager:Landroid/media/AudioManager;

    const-string v1, "srs_cfg:trumedia_enable=1"

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->setParameters(Ljava/lang/String;)V

    .line 78
    iget-object v0, p0, Lcom/android/gallery3d/app/DtsEffect;->mAudioManager:Landroid/media/AudioManager;

    const-string v1, "srs_cfg:trumedia_preset=0"

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->setParameters(Ljava/lang/String;)V

    goto :goto_0

    .line 81
    :pswitch_2
    iget-object v0, p0, Lcom/android/gallery3d/app/DtsEffect;->mAudioManager:Landroid/media/AudioManager;

    const-string v1, "srs_cfg:trumedia_enable=1"

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->setParameters(Ljava/lang/String;)V

    .line 82
    iget-object v0, p0, Lcom/android/gallery3d/app/DtsEffect;->mAudioManager:Landroid/media/AudioManager;

    const-string v1, "srs_cfg:trumedia_preset=1"

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->setParameters(Ljava/lang/String;)V

    goto :goto_0

    .line 91
    :pswitch_3
    iget-object v0, p0, Lcom/android/gallery3d/app/DtsEffect;->mAudioManager:Landroid/media/AudioManager;

    const-string v1, "srs_cfg:trumedia_enable=1"

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->setParameters(Ljava/lang/String;)V

    .line 92
    iget-object v0, p0, Lcom/android/gallery3d/app/DtsEffect;->mAudioManager:Landroid/media/AudioManager;

    const-string v1, "srs_cfg:trumedia_preset=2"

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->setParameters(Ljava/lang/String;)V

    goto :goto_0

    .line 96
    :pswitch_4
    iget-object v0, p0, Lcom/android/gallery3d/app/DtsEffect;->mAudioManager:Landroid/media/AudioManager;

    const-string v1, "srs_cfg:trumedia_enable=1"

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->setParameters(Ljava/lang/String;)V

    .line 97
    iget-object v0, p0, Lcom/android/gallery3d/app/DtsEffect;->mAudioManager:Landroid/media/AudioManager;

    const-string v1, "srs_cfg:trumedia_preset=0"

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->setParameters(Ljava/lang/String;)V

    goto :goto_0

    .line 104
    :cond_0
    const-string v0, "DtsEffect"

    const-string v1, "mAudioManager is null"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 72
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method
