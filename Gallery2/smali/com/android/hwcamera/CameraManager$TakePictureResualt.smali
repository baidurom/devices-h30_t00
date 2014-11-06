.class Lcom/android/hwcamera/CameraManager$TakePictureResualt;
.super Ljava/lang/Object;
.source "CameraManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/hwcamera/CameraManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "TakePictureResualt"
.end annotation


# static fields
.field public static final ERROR:I = -0x1

.field public static final NO_ERROR:I


# instance fields
.field res:I


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    .line 355
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 358
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/hwcamera/CameraManager$TakePictureResualt;->res:I

    return-void
.end method
