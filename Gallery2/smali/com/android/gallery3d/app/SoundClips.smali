.class public Lcom/android/gallery3d/app/SoundClips;
.super Ljava/lang/Object;
.source "SoundClips.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/gallery3d/app/SoundClips$SoundPoolPlayer;,
        Lcom/android/gallery3d/app/SoundClips$Player;
    }
.end annotation


# static fields
.field public static final DELETE_PHOTO_ANIMATION:I = 0x0

.field public static final INVALID_ANIMATION:I = -0x1


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 32
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 52
    return-void
.end method

.method public static getPlayer(Landroid/content/Context;)Lcom/android/gallery3d/app/SoundClips$Player;
    .locals 1
    .parameter "context"

    .prologue
    .line 45
    new-instance v0, Lcom/android/gallery3d/app/SoundClips$SoundPoolPlayer;

    invoke-direct {v0, p0}, Lcom/android/gallery3d/app/SoundClips$SoundPoolPlayer;-><init>(Landroid/content/Context;)V

    return-object v0
.end method
