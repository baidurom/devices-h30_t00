.class Lcom/android/gallery3d/app/PhotoDataAdapter$ImageEntry;
.super Ljava/lang/Object;
.source "PhotoDataAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/gallery3d/app/PhotoDataAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ImageEntry"
.end annotation


# instance fields
.field public currentMpoFrame:Lcom/android/gallery3d/ui/ScreenNail;

.field public failToLoad:Z

.field public fullImage:Landroid/graphics/BitmapRegionDecoder;

.field public fullImageTask:Lcom/android/gallery3d/util/Future;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/gallery3d/util/Future",
            "<",
            "Landroid/graphics/BitmapRegionDecoder;",
            ">;"
        }
    .end annotation
.end field

.field public height:I

.field public isMpoFrameRecyled:Z

.field public mpoDecoderTask:Lcom/android/gallery3d/util/Future;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/gallery3d/util/Future",
            "<",
            "Lcom/android/gallery3d/util/GalleryUtils$DataBundle;",
            ">;"
        }
    .end annotation
.end field

.field public mpoFrames:[Lcom/android/gallery3d/ui/ScreenNail;

.field public mpoTotalCount:I

.field public requestedFullImage:J

.field public requestedMav:J

.field public requestedScreenNail:J

.field public screenNail:Lcom/android/gallery3d/ui/ScreenNail;

.field public screenNailTask:Lcom/android/gallery3d/util/Future;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/gallery3d/util/Future",
            "<",
            "Lcom/android/gallery3d/ui/ScreenNail;",
            ">;"
        }
    .end annotation
.end field

.field public width:I


# direct methods
.method private constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const-wide/16 v0, -0x1

    .line 1174
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 1179
    iput-wide v0, p0, Lcom/android/gallery3d/app/PhotoDataAdapter$ImageEntry;->requestedScreenNail:J

    .line 1180
    iput-wide v0, p0, Lcom/android/gallery3d/app/PhotoDataAdapter$ImageEntry;->requestedFullImage:J

    .line 1181
    iput-boolean v2, p0, Lcom/android/gallery3d/app/PhotoDataAdapter$ImageEntry;->failToLoad:Z

    .line 1193
    iput-wide v0, p0, Lcom/android/gallery3d/app/PhotoDataAdapter$ImageEntry;->requestedMav:J

    .line 1194
    iput-boolean v2, p0, Lcom/android/gallery3d/app/PhotoDataAdapter$ImageEntry;->isMpoFrameRecyled:Z

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/gallery3d/app/PhotoDataAdapter$1;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 1174
    invoke-direct {p0}, Lcom/android/gallery3d/app/PhotoDataAdapter$ImageEntry;-><init>()V

    return-void
.end method
