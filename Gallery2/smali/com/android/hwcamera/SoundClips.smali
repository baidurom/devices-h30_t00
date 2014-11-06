.class public Lcom/android/hwcamera/SoundClips;
.super Ljava/lang/Object;
.source "SoundClips.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/hwcamera/SoundClips$SoundPoolPlayer;,
        Lcom/android/hwcamera/SoundClips$Player;
    }
.end annotation


# static fields
.field public static final FOCUS_COMPLETE:I = 0x0

.field public static final START_VIDEO_RECORDING:I = 0x1

.field public static final STOP_VIDEO_RECORDING:I = 0x2

.field public static final TIMER:I = 0x3

.field public static final VIDEO_PAUSE:I = 0x4

.field public static final VIDEO_RESUME:I = 0x5

.field public static final VIDEO_RESUME_RES_PATH:Ljava/lang/String; = "/system/media/audio/ui/VideoRecord.ogg"

.field private static mIsMute:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 40
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/hwcamera/SoundClips;->mIsMute:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 30
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 59
    return-void
.end method

.method static synthetic access$000()Z
    .locals 1

    .prologue
    .line 30
    sget-boolean v0, Lcom/android/hwcamera/SoundClips;->mIsMute:Z

    return v0
.end method

.method public static getPlayer(Landroid/content/Context;)Lcom/android/hwcamera/SoundClips$Player;
    .locals 1
    .parameter "context"

    .prologue
    .line 48
    new-instance v0, Lcom/android/hwcamera/SoundClips$SoundPoolPlayer;

    invoke-direct {v0, p0}, Lcom/android/hwcamera/SoundClips$SoundPoolPlayer;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public static setMute(Z)V
    .locals 0
    .parameter "mute"

    .prologue
    .line 52
    sput-boolean p0, Lcom/android/hwcamera/SoundClips;->mIsMute:Z

    .line 53
    return-void
.end method
