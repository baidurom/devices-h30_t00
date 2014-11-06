.class Lcom/android/hwcamera/CameraHolder$OpenReleaseState;
.super Ljava/lang/Object;
.source "CameraHolder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/hwcamera/CameraHolder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "OpenReleaseState"
.end annotation


# instance fields
.field device:Ljava/lang/String;

.field id:I

.field stack:[Ljava/lang/String;

.field time:J


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 67
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/hwcamera/CameraHolder$1;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 67
    invoke-direct {p0}, Lcom/android/hwcamera/CameraHolder$OpenReleaseState;-><init>()V

    return-void
.end method
