.class Lcom/android/hwcamera/thumbnail/Thumbnail$Media;
.super Ljava/lang/Object;
.source "Thumbnail.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/hwcamera/thumbnail/Thumbnail;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Media"
.end annotation


# instance fields
.field public final dateTaken:J

.field public final id:J

.field public final orientation:I

.field public final path:Ljava/lang/String;

.field public final uri:Landroid/net/Uri;


# direct methods
.method public constructor <init>(JIJLandroid/net/Uri;Ljava/lang/String;)V
    .locals 0
    .parameter "id"
    .parameter "orientation"
    .parameter "dateTaken"
    .parameter "uri"
    .parameter "path"

    .prologue
    .line 211
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 212
    iput-wide p1, p0, Lcom/android/hwcamera/thumbnail/Thumbnail$Media;->id:J

    .line 213
    iput p3, p0, Lcom/android/hwcamera/thumbnail/Thumbnail$Media;->orientation:I

    .line 214
    iput-wide p4, p0, Lcom/android/hwcamera/thumbnail/Thumbnail$Media;->dateTaken:J

    .line 215
    iput-object p6, p0, Lcom/android/hwcamera/thumbnail/Thumbnail$Media;->uri:Landroid/net/Uri;

    .line 216
    iput-object p7, p0, Lcom/android/hwcamera/thumbnail/Thumbnail$Media;->path:Ljava/lang/String;

    .line 217
    return-void
.end method
