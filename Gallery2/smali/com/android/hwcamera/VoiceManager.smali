.class public Lcom/android/hwcamera/VoiceManager;
.super Ljava/lang/Object;
.source "VoiceManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/hwcamera/VoiceManager$1;,
        Lcom/android/hwcamera/VoiceManager$MyVoiceCommandListener;,
        Lcom/android/hwcamera/VoiceManager$MainHandler;,
        Lcom/android/hwcamera/VoiceManager$OnVoiceShutterListener;
    }
.end annotation


# static fields
.field private static final PLAY_VOICE_COMMAND:I = 0x67

.field private static final TAG:Ljava/lang/String; = "VoiceManager"

.field private static final UNKNOWN:I = -0x1

.field private static final USER_GUIDE_UPDATED:I = 0x64

.field private static final VOICE_COMMAND_CAPTURE:I = 0x3

.field private static final VOICE_COMMAND_CHEESE:I = 0x4

.field private static final VOICE_COMMAND_RECEIVE:I = 0x66

.field public static final VOICE_OFF:Ljava/lang/String; = "off"

.field public static final VOICE_ON:Ljava/lang/String; = "on"

.field private static final VOICE_SERVICE:Ljava/lang/String; = "voicecommand"

.field private static final VOICE_VALUE_UPDATED:I = 0x65


# instance fields
.field private mCommandId:I

.field private mCommandPath:[Ljava/lang/String;

.field private mCommandPathKeywords:Ljava/lang/String;

.field private mContext:Landroid/content/Context;

.field protected final mHandler:Landroid/os/Handler;

.field private mIsVoiceEnable:Z

.field private mKeywords:[Ljava/lang/String;

.field private mRegistered:Z

.field private mSoundMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mStartUpdate:Z

.field private mVoiceCaptureSound:Landroid/media/SoundPool;

.field private mVoiceCaptureSoundId:I

.field private mVoiceCaptureStreamId:I

.field private mVoiceCommandId:I

.field private mVoiceListener:Lcom/android/hwcamera/VoiceManager$MyVoiceCommandListener;

.field private mVoiceManager:Lcom/mediatek/common/voicecommand/IVoiceCommandManager;

.field private mVoiceShutterLister:Lcom/android/hwcamera/VoiceManager$OnVoiceShutterListener;

.field private mVoiceValue:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 4
    .parameter "context"

    .prologue
    const/4 v3, 0x0

    .line 59
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 26
    new-instance v0, Lcom/android/hwcamera/VoiceManager$MainHandler;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/hwcamera/VoiceManager$MainHandler;-><init>(Lcom/android/hwcamera/VoiceManager;Lcom/android/hwcamera/VoiceManager$1;)V

    iput-object v0, p0, Lcom/android/hwcamera/VoiceManager;->mHandler:Landroid/os/Handler;

    .line 41
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "voice0"

    aput-object v1, v0, v3

    const/4 v1, 0x1

    const-string v2, "voice1"

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/android/hwcamera/VoiceManager;->mCommandPath:[Ljava/lang/String;

    .line 42
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/hwcamera/VoiceManager;->mSoundMap:Ljava/util/HashMap;

    .line 50
    iput-boolean v3, p0, Lcom/android/hwcamera/VoiceManager;->mIsVoiceEnable:Z

    .line 60
    iput-object p1, p0, Lcom/android/hwcamera/VoiceManager;->mContext:Landroid/content/Context;

    .line 61
    return-void
.end method

.method static synthetic access$100(Lcom/android/hwcamera/VoiceManager;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 22
    invoke-direct {p0}, Lcom/android/hwcamera/VoiceManager;->notifyUserGuideIfNeed()V

    return-void
.end method

.method static synthetic access$1000(Lcom/android/hwcamera/VoiceManager;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 22
    invoke-direct {p0}, Lcom/android/hwcamera/VoiceManager;->notifyCachePathIfNeed()V

    return-void
.end method

.method static synthetic access$200(Lcom/android/hwcamera/VoiceManager;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 22
    invoke-direct {p0}, Lcom/android/hwcamera/VoiceManager;->notifyStateChangedIfNeed()V

    return-void
.end method

.method static synthetic access$300(Lcom/android/hwcamera/VoiceManager;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 22
    iget v0, p0, Lcom/android/hwcamera/VoiceManager;->mCommandId:I

    return v0
.end method

.method static synthetic access$302(Lcom/android/hwcamera/VoiceManager;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 22
    iput p1, p0, Lcom/android/hwcamera/VoiceManager;->mCommandId:I

    return p1
.end method

.method static synthetic access$400(Lcom/android/hwcamera/VoiceManager;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 22
    invoke-direct {p0, p1}, Lcom/android/hwcamera/VoiceManager;->notifyCommandIfNeed(I)V

    return-void
.end method

.method static synthetic access$500(Lcom/android/hwcamera/VoiceManager;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 22
    iget v0, p0, Lcom/android/hwcamera/VoiceManager;->mVoiceCommandId:I

    return v0
.end method

.method static synthetic access$600(Lcom/android/hwcamera/VoiceManager;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 22
    invoke-direct {p0, p1}, Lcom/android/hwcamera/VoiceManager;->playVoiceCommandSound(I)V

    return-void
.end method

.method static synthetic access$702(Lcom/android/hwcamera/VoiceManager;[Ljava/lang/String;)[Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 22
    iput-object p1, p0, Lcom/android/hwcamera/VoiceManager;->mKeywords:[Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$802(Lcom/android/hwcamera/VoiceManager;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 22
    iput-object p1, p0, Lcom/android/hwcamera/VoiceManager;->mVoiceValue:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$902(Lcom/android/hwcamera/VoiceManager;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 22
    iput-object p1, p0, Lcom/android/hwcamera/VoiceManager;->mCommandPathKeywords:Ljava/lang/String;

    return-object p1
.end method

.method private disableVoice()V
    .locals 3

    .prologue
    .line 205
    const-string v0, "VoiceManager"

    const-string v1, "disableVoice()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 206
    invoke-direct {p0}, Lcom/android/hwcamera/VoiceManager;->ensureManager()V

    .line 207
    const/4 v0, 0x2

    const/4 v1, 0x4

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2}, Lcom/android/hwcamera/VoiceManager;->startVoiceCommand(IILandroid/os/Bundle;)V

    .line 209
    invoke-direct {p0}, Lcom/android/hwcamera/VoiceManager;->unRegisterManagerListener()V

    .line 210
    return-void
.end method

.method private ensureManager()V
    .locals 2

    .prologue
    .line 257
    iget-object v0, p0, Lcom/android/hwcamera/VoiceManager;->mVoiceManager:Lcom/mediatek/common/voicecommand/IVoiceCommandManager;

    if-nez v0, :cond_0

    .line 258
    iget-object v0, p0, Lcom/android/hwcamera/VoiceManager;->mContext:Landroid/content/Context;

    const-string v1, "voicecommand"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mediatek/common/voicecommand/IVoiceCommandManager;

    iput-object v0, p0, Lcom/android/hwcamera/VoiceManager;->mVoiceManager:Lcom/mediatek/common/voicecommand/IVoiceCommandManager;

    .line 259
    new-instance v0, Lcom/android/hwcamera/VoiceManager$MyVoiceCommandListener;

    iget-object v1, p0, Lcom/android/hwcamera/VoiceManager;->mContext:Landroid/content/Context;

    invoke-direct {v0, p0, v1}, Lcom/android/hwcamera/VoiceManager$MyVoiceCommandListener;-><init>(Lcom/android/hwcamera/VoiceManager;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/hwcamera/VoiceManager;->mVoiceListener:Lcom/android/hwcamera/VoiceManager$MyVoiceCommandListener;

    .line 261
    :cond_0
    return-void
.end method

.method private getUserVoiceGuide([Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .parameter "voice"

    .prologue
    .line 146
    const/4 v0, 0x0

    .line 147
    .local v0, userGuide:Ljava/lang/String;
    if-eqz p1, :cond_0

    array-length v1, p1

    const/4 v2, 0x2

    if-lt v1, v2, :cond_0

    .line 148
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Capture command = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/4 v2, 0x0

    aget-object v2, p1, v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " or "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/4 v2, 0x1

    aget-object v2, p1, v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 150
    :cond_0
    return-object v0
.end method

.method private notifyCachePathIfNeed()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    .line 136
    const-string v2, "VoiceManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "notifyCachePathIfNeed mCommandPathKeywords = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/hwcamera/VoiceManager;->mCommandPathKeywords:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 137
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/android/hwcamera/VoiceManager;->mVoiceCaptureSound:Landroid/media/SoundPool;

    .line 138
    new-instance v2, Landroid/media/SoundPool;

    const/4 v3, 0x3

    const/4 v4, 0x0

    invoke-direct {v2, v5, v3, v4}, Landroid/media/SoundPool;-><init>(III)V

    iput-object v2, p0, Lcom/android/hwcamera/VoiceManager;->mVoiceCaptureSound:Landroid/media/SoundPool;

    .line 139
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v2, p0, Lcom/android/hwcamera/VoiceManager;->mCommandPath:[Ljava/lang/String;

    array-length v2, v2

    if-ge v0, v2, :cond_0

    .line 140
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/android/hwcamera/VoiceManager;->mCommandPathKeywords:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ".ogg"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 141
    .local v1, path:Ljava/lang/String;
    iget-object v2, p0, Lcom/android/hwcamera/VoiceManager;->mSoundMap:Ljava/util/HashMap;

    iget-object v3, p0, Lcom/android/hwcamera/VoiceManager;->mCommandPath:[Ljava/lang/String;

    aget-object v3, v3, v0

    iget-object v4, p0, Lcom/android/hwcamera/VoiceManager;->mVoiceCaptureSound:Landroid/media/SoundPool;

    invoke-virtual {v4, v1, v5}, Landroid/media/SoundPool;->load(Ljava/lang/String;I)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 139
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 143
    .end local v1           #path:Ljava/lang/String;
    :cond_0
    return-void
.end method

.method private notifyCommandIfNeed(I)V
    .locals 3
    .parameter "commandId"

    .prologue
    .line 125
    const-string v0, "VoiceManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "notifyCommandIfNeed("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 126
    const/4 v0, 0x3

    if-eq v0, p1, :cond_0

    const/4 v0, 0x4

    if-ne v0, p1, :cond_1

    .line 128
    :cond_0
    iget-boolean v0, p0, Lcom/android/hwcamera/VoiceManager;->mIsVoiceEnable:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/hwcamera/VoiceManager;->mVoiceShutterLister:Lcom/android/hwcamera/VoiceManager$OnVoiceShutterListener;

    if-eqz v0, :cond_1

    .line 129
    const-string v0, "VoiceManager"

    const-string v1, "perform shutter..."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 130
    iget-object v0, p0, Lcom/android/hwcamera/VoiceManager;->mVoiceShutterLister:Lcom/android/hwcamera/VoiceManager$OnVoiceShutterListener;

    invoke-interface {v0}, Lcom/android/hwcamera/VoiceManager$OnVoiceShutterListener;->onVoiceShutter()V

    .line 133
    :cond_1
    return-void
.end method

.method private notifyStateChangedIfNeed()V
    .locals 3

    .prologue
    .line 118
    const-string v0, "VoiceManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "notifyStateChangedIfNeed() mVoiceValue="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/hwcamera/VoiceManager;->mVoiceValue:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 119
    const-string v0, "on"

    iget-object v1, p0, Lcom/android/hwcamera/VoiceManager;->mVoiceValue:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 120
    invoke-virtual {p0}, Lcom/android/hwcamera/VoiceManager;->enableVoice()V

    .line 122
    :cond_0
    return-void
.end method

.method private notifyUserGuideIfNeed()V
    .locals 2

    .prologue
    .line 107
    iget-object v1, p0, Lcom/android/hwcamera/VoiceManager;->mKeywords:[Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 108
    iget-object v1, p0, Lcom/android/hwcamera/VoiceManager;->mKeywords:[Ljava/lang/String;

    invoke-direct {p0, v1}, Lcom/android/hwcamera/VoiceManager;->getUserVoiceGuide([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 109
    .local v0, userGuide:Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 110
    iget-boolean v1, p0, Lcom/android/hwcamera/VoiceManager;->mIsVoiceEnable:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/hwcamera/VoiceManager;->mVoiceShutterLister:Lcom/android/hwcamera/VoiceManager$OnVoiceShutterListener;

    if-eqz v1, :cond_0

    .line 111
    iget-object v1, p0, Lcom/android/hwcamera/VoiceManager;->mVoiceShutterLister:Lcom/android/hwcamera/VoiceManager$OnVoiceShutterListener;

    invoke-interface {v1, v0}, Lcom/android/hwcamera/VoiceManager$OnVoiceShutterListener;->onShowVoiceToast(Ljava/lang/String;)V

    .line 115
    .end local v0           #userGuide:Ljava/lang/String;
    :cond_0
    return-void
.end method

.method private playVoiceCommandSound(I)V
    .locals 7
    .parameter "voiceId"

    .prologue
    const/4 v4, 0x0

    const/high16 v2, 0x3f80

    .line 101
    const-string v0, "VoiceManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "playVoiceCommandSound() voiceId="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 102
    iget-object v0, p0, Lcom/android/hwcamera/VoiceManager;->mSoundMap:Ljava/util/HashMap;

    iget-object v3, p0, Lcom/android/hwcamera/VoiceManager;->mCommandPath:[Ljava/lang/String;

    aget-object v3, v3, p1

    invoke-virtual {v0, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 103
    .local v1, voiceCommandId:I
    iget-object v0, p0, Lcom/android/hwcamera/VoiceManager;->mVoiceCaptureSound:Landroid/media/SoundPool;

    move v3, v2

    move v5, v4

    move v6, v2

    invoke-virtual/range {v0 .. v6}, Landroid/media/SoundPool;->play(IFFIIF)I

    move-result v0

    iput v0, p0, Lcom/android/hwcamera/VoiceManager;->mVoiceCaptureStreamId:I

    .line 104
    return-void
.end method

.method private registerManagerListener()V
    .locals 4

    .prologue
    .line 264
    const-string v1, "VoiceManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "registerManagerListener() mRegistered="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/android/hwcamera/VoiceManager;->mRegistered:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 265
    iget-object v1, p0, Lcom/android/hwcamera/VoiceManager;->mVoiceManager:Lcom/mediatek/common/voicecommand/IVoiceCommandManager;

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/android/hwcamera/VoiceManager;->mRegistered:Z

    if-nez v1, :cond_0

    .line 267
    :try_start_0
    iget-object v1, p0, Lcom/android/hwcamera/VoiceManager;->mVoiceManager:Lcom/mediatek/common/voicecommand/IVoiceCommandManager;

    iget-object v2, p0, Lcom/android/hwcamera/VoiceManager;->mVoiceListener:Lcom/android/hwcamera/VoiceManager$MyVoiceCommandListener;

    invoke-interface {v1, v2}, Lcom/mediatek/common/voicecommand/IVoiceCommandManager;->registerListener(Lcom/mediatek/common/voicecommand/VoiceCommandListener;)V

    .line 268
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/hwcamera/VoiceManager;->mRegistered:Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1

    .line 275
    :cond_0
    :goto_0
    return-void

    .line 269
    :catch_0
    move-exception v0

    .line 270
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0

    .line 271
    .end local v0           #e:Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 272
    .local v0, e:Ljava/lang/IllegalAccessException;
    invoke-virtual {v0}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    goto :goto_0
.end method

.method private release()V
    .locals 2

    .prologue
    .line 357
    iget-object v0, p0, Lcom/android/hwcamera/VoiceManager;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x64

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 358
    iget-object v0, p0, Lcom/android/hwcamera/VoiceManager;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x65

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 359
    iget-object v0, p0, Lcom/android/hwcamera/VoiceManager;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x66

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 360
    iget-object v0, p0, Lcom/android/hwcamera/VoiceManager;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x67

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 361
    iget-object v0, p0, Lcom/android/hwcamera/VoiceManager;->mVoiceCaptureSound:Landroid/media/SoundPool;

    if-eqz v0, :cond_0

    .line 362
    iget-object v0, p0, Lcom/android/hwcamera/VoiceManager;->mVoiceCaptureSound:Landroid/media/SoundPool;

    iget v1, p0, Lcom/android/hwcamera/VoiceManager;->mVoiceCaptureStreamId:I

    invoke-virtual {v0, v1}, Landroid/media/SoundPool;->stop(I)V

    .line 363
    iget-object v0, p0, Lcom/android/hwcamera/VoiceManager;->mVoiceCaptureSound:Landroid/media/SoundPool;

    iget v1, p0, Lcom/android/hwcamera/VoiceManager;->mVoiceCaptureSoundId:I

    invoke-virtual {v0, v1}, Landroid/media/SoundPool;->unload(I)Z

    .line 364
    iget-object v0, p0, Lcom/android/hwcamera/VoiceManager;->mVoiceCaptureSound:Landroid/media/SoundPool;

    invoke-virtual {v0}, Landroid/media/SoundPool;->release()V

    .line 365
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/hwcamera/VoiceManager;->mVoiceCaptureSound:Landroid/media/SoundPool;

    .line 367
    :cond_0
    return-void
.end method

.method private startGetVoiceState()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 224
    const-string v0, "VoiceManager"

    const-string v1, "startGetVoiceState()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 225
    invoke-direct {p0}, Lcom/android/hwcamera/VoiceManager;->ensureManager()V

    .line 226
    invoke-direct {p0}, Lcom/android/hwcamera/VoiceManager;->registerManagerListener()V

    .line 227
    const/4 v0, 0x3

    invoke-direct {p0, v2, v0, v3}, Lcom/android/hwcamera/VoiceManager;->startVoiceCommand(IILandroid/os/Bundle;)V

    .line 229
    const/4 v0, 0x2

    invoke-direct {p0, v2, v0, v3}, Lcom/android/hwcamera/VoiceManager;->startVoiceCommand(IILandroid/os/Bundle;)V

    .line 231
    invoke-direct {p0, v2, v2, v3}, Lcom/android/hwcamera/VoiceManager;->startVoiceCommand(IILandroid/os/Bundle;)V

    .line 233
    return-void
.end method

.method private startVoiceCommand(IILandroid/os/Bundle;)V
    .locals 4
    .parameter "mainAction"
    .parameter "subAction"
    .parameter "extra"

    .prologue
    .line 239
    iget-boolean v1, p0, Lcom/android/hwcamera/VoiceManager;->mRegistered:Z

    if-nez v1, :cond_0

    .line 254
    :goto_0
    return-void

    .line 243
    :cond_0
    const-string v1, "VoiceManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "startVoiceCommand("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 244
    iget-object v1, p0, Lcom/android/hwcamera/VoiceManager;->mVoiceManager:Lcom/mediatek/common/voicecommand/IVoiceCommandManager;

    if-eqz v1, :cond_1

    .line 246
    :try_start_0
    iget-object v1, p0, Lcom/android/hwcamera/VoiceManager;->mVoiceManager:Lcom/mediatek/common/voicecommand/IVoiceCommandManager;

    iget-object v2, p0, Lcom/android/hwcamera/VoiceManager;->mContext:Landroid/content/Context;

    invoke-interface {v1, v2, p1, p2, p3}, Lcom/mediatek/common/voicecommand/IVoiceCommandManager;->sendCommand(Landroid/content/Context;IILandroid/os/Bundle;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1

    .line 253
    :cond_1
    :goto_1
    const-string v1, "VoiceManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "startVoiceCommand() mVoiceManager="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/hwcamera/VoiceManager;->mVoiceManager:Lcom/mediatek/common/voicecommand/IVoiceCommandManager;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 247
    :catch_0
    move-exception v0

    .line 248
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_1

    .line 249
    .end local v0           #e:Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 250
    .local v0, e:Ljava/lang/IllegalAccessException;
    invoke-virtual {v0}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    goto :goto_1
.end method

.method private stopVoice()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x2

    .line 213
    const-string v0, "VoiceManager"

    const-string v1, "stopVoice()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 214
    invoke-direct {p0}, Lcom/android/hwcamera/VoiceManager;->ensureManager()V

    .line 215
    const/4 v0, 0x4

    invoke-direct {p0, v2, v0, v3}, Lcom/android/hwcamera/VoiceManager;->startVoiceCommand(IILandroid/os/Bundle;)V

    .line 217
    invoke-direct {p0, v2, v2, v3}, Lcom/android/hwcamera/VoiceManager;->startVoiceCommand(IILandroid/os/Bundle;)V

    .line 219
    invoke-direct {p0}, Lcom/android/hwcamera/VoiceManager;->unRegisterManagerListener()V

    .line 220
    invoke-direct {p0}, Lcom/android/hwcamera/VoiceManager;->release()V

    .line 221
    return-void
.end method

.method private unRegisterManagerListener()V
    .locals 4

    .prologue
    .line 278
    const-string v1, "VoiceManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "unRegisterManagerListener() mRegistered="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/android/hwcamera/VoiceManager;->mRegistered:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 279
    iget-object v1, p0, Lcom/android/hwcamera/VoiceManager;->mVoiceManager:Lcom/mediatek/common/voicecommand/IVoiceCommandManager;

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/android/hwcamera/VoiceManager;->mRegistered:Z

    if-eqz v1, :cond_0

    .line 281
    :try_start_0
    iget-object v1, p0, Lcom/android/hwcamera/VoiceManager;->mVoiceManager:Lcom/mediatek/common/voicecommand/IVoiceCommandManager;

    iget-object v2, p0, Lcom/android/hwcamera/VoiceManager;->mVoiceListener:Lcom/android/hwcamera/VoiceManager$MyVoiceCommandListener;

    invoke-interface {v1, v2}, Lcom/mediatek/common/voicecommand/IVoiceCommandManager;->unRegisterListener(Lcom/mediatek/common/voicecommand/VoiceCommandListener;)V

    .line 282
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/hwcamera/VoiceManager;->mRegistered:Z

    .line 283
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/hwcamera/VoiceManager;->mVoiceManager:Lcom/mediatek/common/voicecommand/IVoiceCommandManager;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1

    .line 290
    :cond_0
    :goto_0
    return-void

    .line 284
    :catch_0
    move-exception v0

    .line 285
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0

    .line 286
    .end local v0           #e:Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 287
    .local v0, e:Ljava/lang/IllegalAccessException;
    invoke-virtual {v0}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    goto :goto_0
.end method


# virtual methods
.method public enableVoice()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 194
    const-string v0, "VoiceManager"

    const-string v1, "enableVoice()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 195
    invoke-direct {p0}, Lcom/android/hwcamera/VoiceManager;->ensureManager()V

    .line 196
    invoke-direct {p0}, Lcom/android/hwcamera/VoiceManager;->registerManagerListener()V

    .line 197
    const/4 v0, 0x2

    const/4 v1, 0x3

    invoke-direct {p0, v0, v1, v3}, Lcom/android/hwcamera/VoiceManager;->startVoiceCommand(IILandroid/os/Bundle;)V

    .line 199
    invoke-direct {p0, v2, v2, v3}, Lcom/android/hwcamera/VoiceManager;->startVoiceCommand(IILandroid/os/Bundle;)V

    .line 201
    iget-object v0, p0, Lcom/android/hwcamera/VoiceManager;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x64

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 202
    return-void
.end method

.method public getVoiceEnable()Z
    .locals 1

    .prologue
    .line 171
    iget-boolean v0, p0, Lcom/android/hwcamera/VoiceManager;->mIsVoiceEnable:Z

    return v0
.end method

.method public playVoiceCommandById(I)V
    .locals 2
    .parameter "commandId"

    .prologue
    .line 96
    iput p1, p0, Lcom/android/hwcamera/VoiceManager;->mVoiceCommandId:I

    .line 97
    iget-object v0, p0, Lcom/android/hwcamera/VoiceManager;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x67

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 98
    return-void
.end method

.method public setOnVoiceShutterListener(Lcom/android/hwcamera/VoiceManager$OnVoiceShutterListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 64
    iput-object p1, p0, Lcom/android/hwcamera/VoiceManager;->mVoiceShutterLister:Lcom/android/hwcamera/VoiceManager$OnVoiceShutterListener;

    .line 65
    return-void
.end method

.method public setVoiceEnabled(Z)V
    .locals 2
    .parameter "enable"

    .prologue
    .line 165
    iput-boolean p1, p0, Lcom/android/hwcamera/VoiceManager;->mIsVoiceEnable:Z

    .line 166
    iget-boolean v1, p0, Lcom/android/hwcamera/VoiceManager;->mIsVoiceEnable:Z

    if-eqz v1, :cond_0

    const-string v0, "on"

    .line 167
    .local v0, voiceValue:Ljava/lang/String;
    :goto_0
    invoke-virtual {p0, v0}, Lcom/android/hwcamera/VoiceManager;->setVoiceValue(Ljava/lang/String;)V

    .line 168
    return-void

    .line 166
    .end local v0           #voiceValue:Ljava/lang/String;
    :cond_0
    const-string v0, "off"

    goto :goto_0
.end method

.method public setVoiceValue(Ljava/lang/String;)V
    .locals 2
    .parameter "value"

    .prologue
    .line 154
    iget-object v0, p0, Lcom/android/hwcamera/VoiceManager;->mVoiceValue:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/hwcamera/VoiceManager;->mVoiceValue:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 155
    :cond_0
    iput-object p1, p0, Lcom/android/hwcamera/VoiceManager;->mVoiceValue:Ljava/lang/String;

    .line 156
    const-string v0, "on"

    iget-object v1, p0, Lcom/android/hwcamera/VoiceManager;->mVoiceValue:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 157
    invoke-virtual {p0}, Lcom/android/hwcamera/VoiceManager;->enableVoice()V

    .line 162
    :cond_1
    :goto_0
    return-void

    .line 159
    :cond_2
    invoke-direct {p0}, Lcom/android/hwcamera/VoiceManager;->disableVoice()V

    goto :goto_0
.end method

.method public startUpdateVoiceState()V
    .locals 3

    .prologue
    .line 175
    const-string v0, "VoiceManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "startUpdateVoiceState() mStartUpdate="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/hwcamera/VoiceManager;->mStartUpdate:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 176
    iget-boolean v0, p0, Lcom/android/hwcamera/VoiceManager;->mStartUpdate:Z

    if-nez v0, :cond_0

    .line 177
    invoke-direct {p0}, Lcom/android/hwcamera/VoiceManager;->startGetVoiceState()V

    .line 178
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/hwcamera/VoiceManager;->mStartUpdate:Z

    .line 180
    :cond_0
    return-void
.end method

.method public stopUpdateVoiceState()V
    .locals 3

    .prologue
    .line 183
    const-string v0, "VoiceManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "stopUpdateVoiceState() mStartUpdate="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/hwcamera/VoiceManager;->mStartUpdate:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 184
    iget-boolean v0, p0, Lcom/android/hwcamera/VoiceManager;->mStartUpdate:Z

    if-eqz v0, :cond_0

    .line 185
    invoke-direct {p0}, Lcom/android/hwcamera/VoiceManager;->stopVoice()V

    .line 186
    const-string v0, "off"

    iput-object v0, p0, Lcom/android/hwcamera/VoiceManager;->mVoiceValue:Ljava/lang/String;

    .line 187
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/hwcamera/VoiceManager;->mStartUpdate:Z

    .line 191
    :goto_0
    return-void

    .line 189
    :cond_0
    invoke-direct {p0}, Lcom/android/hwcamera/VoiceManager;->release()V

    goto :goto_0
.end method
