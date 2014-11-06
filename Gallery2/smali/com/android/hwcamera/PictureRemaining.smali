.class public Lcom/android/hwcamera/PictureRemaining;
.super Ljava/lang/Object;
.source "PictureRemaining.java"


# static fields
.field private static final PICQUALITY_BITRATE_TABLE:Ljava/util/HashMap;
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


# instance fields
.field private mPicSizePref:Landroid/content/SharedPreferences;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const v6, 0x17a38e

    const v5, 0x164174

    const v4, 0xf8492

    const v3, 0x927c0

    .line 10
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/android/hwcamera/PictureRemaining;->PICQUALITY_BITRATE_TABLE:Ljava/util/HashMap;

    .line 16
    sget-object v0, Lcom/android/hwcamera/PictureRemaining;->PICQUALITY_BITRATE_TABLE:Ljava/util/HashMap;

    const-string v1, "4000x3000"

    const v2, 0x230b05

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 17
    sget-object v0, Lcom/android/hwcamera/PictureRemaining;->PICQUALITY_BITRATE_TABLE:Ljava/util/HashMap;

    const-string v1, "3264x2448"

    const v2, 0x1ccccc

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 18
    sget-object v0, Lcom/android/hwcamera/PictureRemaining;->PICQUALITY_BITRATE_TABLE:Ljava/util/HashMap;

    const-string v1, "3328x1872"

    const v2, 0x166666

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 19
    sget-object v0, Lcom/android/hwcamera/PictureRemaining;->PICQUALITY_BITRATE_TABLE:Ljava/util/HashMap;

    const-string v1, "2592x1944"

    const v2, 0x18499a

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 20
    sget-object v0, Lcom/android/hwcamera/PictureRemaining;->PICQUALITY_BITRATE_TABLE:Ljava/util/HashMap;

    const-string v1, "2560x1920"

    const v2, 0x133333

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 21
    sget-object v0, Lcom/android/hwcamera/PictureRemaining;->PICQUALITY_BITRATE_TABLE:Ljava/util/HashMap;

    const-string v1, "2560x1440"

    const v2, 0xe1000

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 22
    sget-object v0, Lcom/android/hwcamera/PictureRemaining;->PICQUALITY_BITRATE_TABLE:Ljava/util/HashMap;

    const-string v1, "2048x1536"

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 23
    sget-object v0, Lcom/android/hwcamera/PictureRemaining;->PICQUALITY_BITRATE_TABLE:Ljava/util/HashMap;

    const-string v1, "1920x1080"

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 24
    sget-object v0, Lcom/android/hwcamera/PictureRemaining;->PICQUALITY_BITRATE_TABLE:Ljava/util/HashMap;

    const-string v1, "1600x1200"

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 25
    sget-object v0, Lcom/android/hwcamera/PictureRemaining;->PICQUALITY_BITRATE_TABLE:Ljava/util/HashMap;

    const-string v1, "1280x768"

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 26
    sget-object v0, Lcom/android/hwcamera/PictureRemaining;->PICQUALITY_BITRATE_TABLE:Ljava/util/HashMap;

    const-string v1, "1280x960"

    const v2, 0x52800

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 27
    sget-object v0, Lcom/android/hwcamera/PictureRemaining;->PICQUALITY_BITRATE_TABLE:Ljava/util/HashMap;

    const-string v1, "1024x768"

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 29
    sget-object v0, Lcom/android/hwcamera/PictureRemaining;->PICQUALITY_BITRATE_TABLE:Ljava/util/HashMap;

    const-string v1, "800x600"

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 30
    sget-object v0, Lcom/android/hwcamera/PictureRemaining;->PICQUALITY_BITRATE_TABLE:Ljava/util/HashMap;

    const-string v1, "720x480"

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 31
    sget-object v0, Lcom/android/hwcamera/PictureRemaining;->PICQUALITY_BITRATE_TABLE:Ljava/util/HashMap;

    const-string v1, "800x480"

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 32
    sget-object v0, Lcom/android/hwcamera/PictureRemaining;->PICQUALITY_BITRATE_TABLE:Ljava/util/HashMap;

    const-string v1, "640x480"

    const v2, 0x19000

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 33
    sget-object v0, Lcom/android/hwcamera/PictureRemaining;->PICQUALITY_BITRATE_TABLE:Ljava/util/HashMap;

    const-string v1, "352x288"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 34
    sget-object v0, Lcom/android/hwcamera/PictureRemaining;->PICQUALITY_BITRATE_TABLE:Ljava/util/HashMap;

    const-string v1, "320x240"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 35
    sget-object v0, Lcom/android/hwcamera/PictureRemaining;->PICQUALITY_BITRATE_TABLE:Ljava/util/HashMap;

    const-string v1, "176x144"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 36
    sget-object v0, Lcom/android/hwcamera/PictureRemaining;->PICQUALITY_BITRATE_TABLE:Ljava/util/HashMap;

    const-string v1, "3264x1836"

    const v2, 0x19b555

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 37
    sget-object v0, Lcom/android/hwcamera/PictureRemaining;->PICQUALITY_BITRATE_TABLE:Ljava/util/HashMap;

    const-string v1, "2592x1456"

    const v2, 0xff800

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 38
    sget-object v0, Lcom/android/hwcamera/PictureRemaining;->PICQUALITY_BITRATE_TABLE:Ljava/util/HashMap;

    const-string v1, "2048x1152"

    const v2, 0xbeaaa

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 39
    sget-object v0, Lcom/android/hwcamera/PictureRemaining;->PICQUALITY_BITRATE_TABLE:Ljava/util/HashMap;

    const-string v1, "1280x720"

    const v2, 0x41000

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 40
    sget-object v0, Lcom/android/hwcamera/PictureRemaining;->PICQUALITY_BITRATE_TABLE:Ljava/util/HashMap;

    const-string v1, "640x360"

    const v2, 0x34000

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 41
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    .line 46
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 47
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "_preferences_picturesize"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/android/hwcamera/PictureRemaining;->mPicSizePref:Landroid/content/SharedPreferences;

    .line 48
    return-void
.end method


# virtual methods
.method public getPictureSize(Ljava/lang/String;)I
    .locals 2
    .parameter "picsize"

    .prologue
    .line 51
    sget-object v0, Lcom/android/hwcamera/PictureRemaining;->PICQUALITY_BITRATE_TABLE:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    .line 52
    const v0, 0x1e78e3

    .line 54
    :goto_0
    return v0

    :cond_0
    iget-object v1, p0, Lcom/android/hwcamera/PictureRemaining;->mPicSizePref:Landroid/content/SharedPreferences;

    sget-object v0, Lcom/android/hwcamera/PictureRemaining;->PICQUALITY_BITRATE_TABLE:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-interface {v1, p1, v0}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    goto :goto_0
.end method
