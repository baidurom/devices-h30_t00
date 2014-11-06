.class public Lcom/android/hwcamera/SoundClipsBurst;
.super Ljava/lang/Object;
.source "SoundClipsBurst.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/hwcamera/SoundClipsBurst$SoundPoolPlayerBurst;,
        Lcom/android/hwcamera/SoundClipsBurst$BurstPlayer;
    }
.end annotation


# static fields
.field private static mIsMute:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 32
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/hwcamera/SoundClipsBurst;->mIsMute:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 30
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 51
    return-void
.end method

.method static synthetic access$000()Z
    .locals 1

    .prologue
    .line 30
    sget-boolean v0, Lcom/android/hwcamera/SoundClipsBurst;->mIsMute:Z

    return v0
.end method

.method public static getPlayer(Landroid/content/Context;)Lcom/android/hwcamera/SoundClipsBurst$BurstPlayer;
    .locals 1
    .parameter "context"

    .prologue
    .line 40
    new-instance v0, Lcom/android/hwcamera/SoundClipsBurst$SoundPoolPlayerBurst;

    invoke-direct {v0, p0}, Lcom/android/hwcamera/SoundClipsBurst$SoundPoolPlayerBurst;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public static setMute(Z)V
    .locals 0
    .parameter "mute"

    .prologue
    .line 44
    sput-boolean p0, Lcom/android/hwcamera/SoundClipsBurst;->mIsMute:Z

    .line 45
    return-void
.end method
