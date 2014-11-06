.class Lcom/android/hwcamera/PanoramaModule$MosaicJpeg;
.super Ljava/lang/Object;
.source "PanoramaModule.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/hwcamera/PanoramaModule;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "MosaicJpeg"
.end annotation


# instance fields
.field public final data:[B

.field public final height:I

.field public final isValid:Z

.field public final width:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 193
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 194
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/hwcamera/PanoramaModule$MosaicJpeg;->data:[B

    .line 195
    iput v1, p0, Lcom/android/hwcamera/PanoramaModule$MosaicJpeg;->width:I

    .line 196
    iput v1, p0, Lcom/android/hwcamera/PanoramaModule$MosaicJpeg;->height:I

    .line 197
    iput-boolean v1, p0, Lcom/android/hwcamera/PanoramaModule$MosaicJpeg;->isValid:Z

    .line 198
    return-void
.end method

.method public constructor <init>([BII)V
    .locals 1
    .parameter "data"
    .parameter "width"
    .parameter "height"

    .prologue
    .line 186
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 187
    iput-object p1, p0, Lcom/android/hwcamera/PanoramaModule$MosaicJpeg;->data:[B

    .line 188
    iput p2, p0, Lcom/android/hwcamera/PanoramaModule$MosaicJpeg;->width:I

    .line 189
    iput p3, p0, Lcom/android/hwcamera/PanoramaModule$MosaicJpeg;->height:I

    .line 190
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/hwcamera/PanoramaModule$MosaicJpeg;->isValid:Z

    .line 191
    return-void
.end method
