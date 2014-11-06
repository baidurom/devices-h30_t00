.class public final enum Lcom/android/hwcamera/enm/ShotMode;
.super Ljava/lang/Enum;
.source "ShotMode.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/android/hwcamera/enm/ShotMode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/hwcamera/enm/ShotMode;

.field public static final enum AUTORAMA:Lcom/android/hwcamera/enm/ShotMode;

.field public static final enum BEAUTY:Lcom/android/hwcamera/enm/ShotMode;

.field public static final enum BURST:Lcom/android/hwcamera/enm/ShotMode;

.field public static final enum COLOREFFECT:Lcom/android/hwcamera/enm/ShotMode;

.field public static final enum HDR:Lcom/android/hwcamera/enm/ShotMode;

.field public static final enum MAV:Lcom/android/hwcamera/enm/ShotMode;

.field public static final enum METER:Lcom/android/hwcamera/enm/ShotMode;

.field public static final enum PANORAMA:Lcom/android/hwcamera/enm/ShotMode;

.field public static final enum SINGLE:Lcom/android/hwcamera/enm/ShotMode;

.field public static final enum SMART:Lcom/android/hwcamera/enm/ShotMode;

.field public static final enum VOICE_PHOTO:Lcom/android/hwcamera/enm/ShotMode;


# instance fields
.field private final shotmode:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .prologue
    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 4
    new-instance v0, Lcom/android/hwcamera/enm/ShotMode;

    const-string v1, "SINGLE"

    const-string v2, "single"

    invoke-direct {v0, v1, v4, v2}, Lcom/android/hwcamera/enm/ShotMode;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/android/hwcamera/enm/ShotMode;->SINGLE:Lcom/android/hwcamera/enm/ShotMode;

    .line 5
    new-instance v0, Lcom/android/hwcamera/enm/ShotMode;

    const-string v1, "BURST"

    const-string v2, "burst"

    invoke-direct {v0, v1, v5, v2}, Lcom/android/hwcamera/enm/ShotMode;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/android/hwcamera/enm/ShotMode;->BURST:Lcom/android/hwcamera/enm/ShotMode;

    .line 6
    new-instance v0, Lcom/android/hwcamera/enm/ShotMode;

    const-string v1, "SMART"

    const-string v2, "smart"

    invoke-direct {v0, v1, v6, v2}, Lcom/android/hwcamera/enm/ShotMode;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/android/hwcamera/enm/ShotMode;->SMART:Lcom/android/hwcamera/enm/ShotMode;

    .line 7
    new-instance v0, Lcom/android/hwcamera/enm/ShotMode;

    const-string v1, "HDR"

    const-string v2, "hdr"

    invoke-direct {v0, v1, v7, v2}, Lcom/android/hwcamera/enm/ShotMode;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/android/hwcamera/enm/ShotMode;->HDR:Lcom/android/hwcamera/enm/ShotMode;

    .line 8
    new-instance v0, Lcom/android/hwcamera/enm/ShotMode;

    const-string v1, "BEAUTY"

    const-string v2, "beauty"

    invoke-direct {v0, v1, v8, v2}, Lcom/android/hwcamera/enm/ShotMode;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/android/hwcamera/enm/ShotMode;->BEAUTY:Lcom/android/hwcamera/enm/ShotMode;

    .line 9
    new-instance v0, Lcom/android/hwcamera/enm/ShotMode;

    const-string v1, "COLOREFFECT"

    const/4 v2, 0x5

    const-string v3, "coloreffect"

    invoke-direct {v0, v1, v2, v3}, Lcom/android/hwcamera/enm/ShotMode;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/android/hwcamera/enm/ShotMode;->COLOREFFECT:Lcom/android/hwcamera/enm/ShotMode;

    .line 10
    new-instance v0, Lcom/android/hwcamera/enm/ShotMode;

    const-string v1, "PANORAMA"

    const/4 v2, 0x6

    const-string v3, "panorama"

    invoke-direct {v0, v1, v2, v3}, Lcom/android/hwcamera/enm/ShotMode;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/android/hwcamera/enm/ShotMode;->PANORAMA:Lcom/android/hwcamera/enm/ShotMode;

    .line 11
    new-instance v0, Lcom/android/hwcamera/enm/ShotMode;

    const-string v1, "AUTORAMA"

    const/4 v2, 0x7

    const-string v3, "autorama"

    invoke-direct {v0, v1, v2, v3}, Lcom/android/hwcamera/enm/ShotMode;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/android/hwcamera/enm/ShotMode;->AUTORAMA:Lcom/android/hwcamera/enm/ShotMode;

    .line 12
    new-instance v0, Lcom/android/hwcamera/enm/ShotMode;

    const-string v1, "METER"

    const/16 v2, 0x8

    const-string v3, "meter"

    invoke-direct {v0, v1, v2, v3}, Lcom/android/hwcamera/enm/ShotMode;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/android/hwcamera/enm/ShotMode;->METER:Lcom/android/hwcamera/enm/ShotMode;

    .line 13
    new-instance v0, Lcom/android/hwcamera/enm/ShotMode;

    const-string v1, "MAV"

    const/16 v2, 0x9

    const-string v3, "mav"

    invoke-direct {v0, v1, v2, v3}, Lcom/android/hwcamera/enm/ShotMode;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/android/hwcamera/enm/ShotMode;->MAV:Lcom/android/hwcamera/enm/ShotMode;

    .line 14
    new-instance v0, Lcom/android/hwcamera/enm/ShotMode;

    const-string v1, "VOICE_PHOTO"

    const/16 v2, 0xa

    const-string v3, "voice_photo"

    invoke-direct {v0, v1, v2, v3}, Lcom/android/hwcamera/enm/ShotMode;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/android/hwcamera/enm/ShotMode;->VOICE_PHOTO:Lcom/android/hwcamera/enm/ShotMode;

    .line 3
    const/16 v0, 0xb

    new-array v0, v0, [Lcom/android/hwcamera/enm/ShotMode;

    sget-object v1, Lcom/android/hwcamera/enm/ShotMode;->SINGLE:Lcom/android/hwcamera/enm/ShotMode;

    aput-object v1, v0, v4

    sget-object v1, Lcom/android/hwcamera/enm/ShotMode;->BURST:Lcom/android/hwcamera/enm/ShotMode;

    aput-object v1, v0, v5

    sget-object v1, Lcom/android/hwcamera/enm/ShotMode;->SMART:Lcom/android/hwcamera/enm/ShotMode;

    aput-object v1, v0, v6

    sget-object v1, Lcom/android/hwcamera/enm/ShotMode;->HDR:Lcom/android/hwcamera/enm/ShotMode;

    aput-object v1, v0, v7

    sget-object v1, Lcom/android/hwcamera/enm/ShotMode;->BEAUTY:Lcom/android/hwcamera/enm/ShotMode;

    aput-object v1, v0, v8

    const/4 v1, 0x5

    sget-object v2, Lcom/android/hwcamera/enm/ShotMode;->COLOREFFECT:Lcom/android/hwcamera/enm/ShotMode;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/android/hwcamera/enm/ShotMode;->PANORAMA:Lcom/android/hwcamera/enm/ShotMode;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/android/hwcamera/enm/ShotMode;->AUTORAMA:Lcom/android/hwcamera/enm/ShotMode;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/android/hwcamera/enm/ShotMode;->METER:Lcom/android/hwcamera/enm/ShotMode;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/android/hwcamera/enm/ShotMode;->MAV:Lcom/android/hwcamera/enm/ShotMode;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lcom/android/hwcamera/enm/ShotMode;->VOICE_PHOTO:Lcom/android/hwcamera/enm/ShotMode;

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/hwcamera/enm/ShotMode;->$VALUES:[Lcom/android/hwcamera/enm/ShotMode;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .parameter
    .parameter
    .parameter "shotmode"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 18
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 19
    iput-object p3, p0, Lcom/android/hwcamera/enm/ShotMode;->shotmode:Ljava/lang/String;

    .line 20
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/hwcamera/enm/ShotMode;
    .locals 1
    .parameter "name"

    .prologue
    .line 3
    const-class v0, Lcom/android/hwcamera/enm/ShotMode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/android/hwcamera/enm/ShotMode;

    return-object v0
.end method

.method public static values()[Lcom/android/hwcamera/enm/ShotMode;
    .locals 1

    .prologue
    .line 3
    sget-object v0, Lcom/android/hwcamera/enm/ShotMode;->$VALUES:[Lcom/android/hwcamera/enm/ShotMode;

    invoke-virtual {v0}, [Lcom/android/hwcamera/enm/ShotMode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/hwcamera/enm/ShotMode;

    return-object v0
.end method


# virtual methods
.method public getShotMode()Ljava/lang/String;
    .locals 1

    .prologue
    .line 23
    iget-object v0, p0, Lcom/android/hwcamera/enm/ShotMode;->shotmode:Ljava/lang/String;

    return-object v0
.end method
