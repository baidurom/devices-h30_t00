.class public Lcom/android/gallery3d/app/CropImage;
.super Lcom/android/gallery3d/app/AbstractGalleryActivity;
.source "CropImage.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/gallery3d/app/CropImage$LoadBitmapDataTask;,
        Lcom/android/gallery3d/app/CropImage$LoadDataTask;,
        Lcom/android/gallery3d/app/CropImage$SaveOutput;
    }
.end annotation


# static fields
.field public static final ACTION_CROP:Ljava/lang/String; = "com.android.camera.action.CROP"

.field private static final BACKUP_PIXEL_COUNT:I = 0x75300

.field public static final CROP_ACTION:Ljava/lang/String; = "com.android.camera.action.CROP"

.field private static final DEFAULT_COMPRESS_QUALITY:I = 0x5a

.field public static final DOWNLOAD_BUCKET:Ljava/io/File; = null

.field private static final EXIF_SOFTWARE_VALUE:Ljava/lang/String; = "Android Gallery"

.field public static final HOME:Ljava/lang/String; = "home"

.field public static final KEY_ASPECT_X:Ljava/lang/String; = "aspectX"

.field public static final KEY_ASPECT_Y:Ljava/lang/String; = "aspectY"

.field public static final KEY_CROPPED_RECT:Ljava/lang/String; = "cropped-rect"

.field public static final KEY_DATA:Ljava/lang/String; = "data"

.field public static final KEY_FIXED_X:Ljava/lang/String; = "fixedX"

.field public static final KEY_FIXED_Y:Ljava/lang/String; = "fixedY"

.field public static final KEY_NO_FACE_DETECTION:Ljava/lang/String; = "noFaceDetection"

.field public static final KEY_OUTPUT_FORMAT:Ljava/lang/String; = "outputFormat"

.field public static final KEY_OUTPUT_X:Ljava/lang/String; = "outputX"

.field public static final KEY_OUTPUT_Y:Ljava/lang/String; = "outputY"

.field public static final KEY_RETURN_DATA:Ljava/lang/String; = "return-data"

.field public static final KEY_SCALE:Ljava/lang/String; = "scale"

.field public static final KEY_SCALE_UP_IF_NEEDED:Ljava/lang/String; = "scaleUpIfNeeded"

.field public static final KEY_SET_AS_WALLPAPER:Ljava/lang/String; = "set-as-wallpaper"

.field public static final KEY_SET_THEME:Ljava/lang/String; = "set-as-theme"

.field public static final KEY_SHOW_WHEN_LOCKED:Ljava/lang/String; = "showWhenLocked"

.field public static final KEY_SPOTLIGHT_X:Ljava/lang/String; = "spotlightX"

.field public static final KEY_SPOTLIGHT_Y:Ljava/lang/String; = "spotlightY"

.field private static final KEY_STATE:Ljava/lang/String; = "state"

.field public static final KEY_UNLOCK_WALLPAPER:Ljava/lang/String; = "unlock-wallpaper"

.field private static final MAX_BACKUP_IMAGE_SIZE:I = 0x140

.field private static final MAX_FILE_INDEX:I = 0x3e8

.field private static final MAX_PIXEL_COUNT:I = 0x4c4b40

.field private static final MSG_BITMAP:I = 0x2

.field private static final MSG_CANCEL_DIALOG:I = 0x5

.field private static final MSG_LARGE_BITMAP:I = 0x1

.field private static final MSG_SAVE_COMPLETE:I = 0x3

.field private static final MSG_SHOW_SAVE_ERROR:I = 0x4

.field private static final PATH_WALLPAPER:Ljava/lang/String; = null

.field private static final STATE_INIT:I = 0x0

.field private static final STATE_LOADED:I = 0x1

.field private static final STATE_SAVING:I = 0x2

.field private static final TAB_FIXED:I = 0x2

.field private static final TAB_SCROLLABLE:I = 0x1

.field private static final TAG:Ljava/lang/String; = "CropImage"

.field private static final TILE_SIZE:I = 0x200

.field private static final TIME_STAMP_NAME:Ljava/lang/String; = "\'IMG\'_yyyyMMdd_HHmmss"

.field public static final UNLOCK:Ljava/lang/String; = "unlock"


# instance fields
.field private mBitmap:Landroid/graphics/Bitmap;

.field private mBitmapInIntent:Landroid/graphics/Bitmap;

.field private mBitmapScreenNail:Lcom/android/gallery3d/ui/BitmapScreenNail;

.field private mBitmapTileProvider:Lcom/android/gallery3d/ui/BitmapTileProvider;

.field private mCropView:Lcom/android/gallery3d/ui/CropView;

.field private mDoFaceDetection:Z

.field private mFixedWallpaperHeight:I

.field private mFixedWallpaperWidth:I

.field private mIsSetWallpaper:Z

.field private mIsUnlockWallpaper:Z

.field private mIsWallpaperFixed:Z

.field private mLoadBitmapTask:Lcom/android/gallery3d/util/Future;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/gallery3d/util/Future",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field

.field private mLoadTask:Lcom/android/gallery3d/util/Future;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/gallery3d/util/Future",
            "<",
            "Landroid/graphics/BitmapRegionDecoder;",
            ">;"
        }
    .end annotation
.end field

.field private mMainHandler:Landroid/os/Handler;

.field private mMediaItem:Lcom/android/gallery3d/data/MediaItem;

.field private mProgressDialog:Landroid/app/ProgressDialog;

.field private mRegionDecoder:Landroid/graphics/BitmapRegionDecoder;

.field private mSaveTask:Lcom/android/gallery3d/util/Future;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/gallery3d/util/Future",
            "<",
            "Landroid/content/Intent;",
            ">;"
        }
    .end annotation
.end field

.field private mScrollableWallpaperHeight:I

.field private mScrollableWallpaperWidth:I

.field private mState:I

.field private mTabListener:Lcom/android/gallery3d/ui/SimpleTabWidget$TabListener;

.field mTabView:Lcom/android/gallery3d/ui/SimpleTabWidget;

.field private mUseRegionDecoder:Z


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 138
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/skin/wallpaper"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/gallery3d/app/CropImage;->PATH_WALLPAPER:Ljava/lang/String;

    .line 153
    new-instance v0, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    const-string v2, "download"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    sput-object v0, Lcom/android/gallery3d/app/CropImage;->DOWNLOAD_BUCKET:Ljava/io/File;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 100
    invoke-direct {p0}, Lcom/android/gallery3d/app/AbstractGalleryActivity;-><init>()V

    .line 158
    iput v1, p0, Lcom/android/gallery3d/app/CropImage;->mState:I

    .line 162
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/gallery3d/app/CropImage;->mDoFaceDetection:Z

    .line 174
    iput-boolean v1, p0, Lcom/android/gallery3d/app/CropImage;->mUseRegionDecoder:Z

    .line 185
    iput-boolean v1, p0, Lcom/android/gallery3d/app/CropImage;->mIsSetWallpaper:Z

    .line 186
    iput-boolean v1, p0, Lcom/android/gallery3d/app/CropImage;->mIsWallpaperFixed:Z

    .line 187
    iput-boolean v1, p0, Lcom/android/gallery3d/app/CropImage;->mIsUnlockWallpaper:Z

    .line 188
    iput v1, p0, Lcom/android/gallery3d/app/CropImage;->mScrollableWallpaperWidth:I

    .line 189
    iput v1, p0, Lcom/android/gallery3d/app/CropImage;->mScrollableWallpaperHeight:I

    .line 190
    iput v1, p0, Lcom/android/gallery3d/app/CropImage;->mFixedWallpaperWidth:I

    .line 191
    iput v1, p0, Lcom/android/gallery3d/app/CropImage;->mFixedWallpaperHeight:I

    .line 215
    new-instance v0, Lcom/android/gallery3d/app/CropImage$1;

    invoke-direct {v0, p0}, Lcom/android/gallery3d/app/CropImage$1;-><init>(Lcom/android/gallery3d/app/CropImage;)V

    iput-object v0, p0, Lcom/android/gallery3d/app/CropImage;->mTabListener:Lcom/android/gallery3d/ui/SimpleTabWidget$TabListener;

    .line 1255
    return-void
.end method

.method static synthetic access$002(Lcom/android/gallery3d/app/CropImage;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 100
    iput-boolean p1, p0, Lcom/android/gallery3d/app/CropImage;->mIsWallpaperFixed:Z

    return p1
.end method

.method static synthetic access$100(Lcom/android/gallery3d/app/CropImage;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 100
    invoke-direct {p0}, Lcom/android/gallery3d/app/CropImage;->updateIntentExtras()V

    return-void
.end method

.method static synthetic access$1000(Lcom/android/gallery3d/app/CropImage;Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 100
    invoke-direct {p0, p1, p2}, Lcom/android/gallery3d/app/CropImage;->saveLockscreenBitmap(Ljava/lang/String;Landroid/graphics/Bitmap;)V

    return-void
.end method

.method static synthetic access$1100(Lcom/android/gallery3d/app/CropImage;Lcom/android/gallery3d/util/ThreadPool$JobContext;Landroid/graphics/Bitmap;)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 100
    invoke-direct {p0, p1, p2}, Lcom/android/gallery3d/app/CropImage;->setAsWallpaper(Lcom/android/gallery3d/util/ThreadPool$JobContext;Landroid/graphics/Bitmap;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$1200(Lcom/android/gallery3d/app/CropImage;)Lcom/android/gallery3d/data/MediaItem;
    .locals 1
    .parameter "x0"

    .prologue
    .line 100
    iget-object v0, p0, Lcom/android/gallery3d/app/CropImage;->mMediaItem:Lcom/android/gallery3d/data/MediaItem;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/android/gallery3d/app/CropImage;Lcom/android/gallery3d/util/ThreadPool$JobContext;Landroid/graphics/Bitmap;)Landroid/net/Uri;
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 100
    invoke-direct {p0, p1, p2}, Lcom/android/gallery3d/app/CropImage;->saveToMediaProvider(Lcom/android/gallery3d/util/ThreadPool$JobContext;Landroid/graphics/Bitmap;)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1402(Lcom/android/gallery3d/app/CropImage;Lcom/android/gallery3d/util/Future;)Lcom/android/gallery3d/util/Future;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 100
    iput-object p1, p0, Lcom/android/gallery3d/app/CropImage;->mSaveTask:Lcom/android/gallery3d/util/Future;

    return-object p1
.end method

.method static synthetic access$1500(Lcom/android/gallery3d/app/CropImage;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 100
    iget-object v0, p0, Lcom/android/gallery3d/app/CropImage;->mMainHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$1602(Lcom/android/gallery3d/app/CropImage;Lcom/android/gallery3d/util/Future;)Lcom/android/gallery3d/util/Future;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 100
    iput-object p1, p0, Lcom/android/gallery3d/app/CropImage;->mLoadTask:Lcom/android/gallery3d/util/Future;

    return-object p1
.end method

.method static synthetic access$1702(Lcom/android/gallery3d/app/CropImage;Lcom/android/gallery3d/util/Future;)Lcom/android/gallery3d/util/Future;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 100
    iput-object p1, p0, Lcom/android/gallery3d/app/CropImage;->mLoadBitmapTask:Lcom/android/gallery3d/util/Future;

    return-object p1
.end method

.method static synthetic access$200(Lcom/android/gallery3d/app/CropImage;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 100
    invoke-direct {p0}, Lcom/android/gallery3d/app/CropImage;->setCropParameters()V

    return-void
.end method

.method static synthetic access$300(Lcom/android/gallery3d/app/CropImage;)Lcom/android/gallery3d/ui/CropView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 100
    iget-object v0, p0, Lcom/android/gallery3d/app/CropImage;->mCropView:Lcom/android/gallery3d/ui/CropView;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/gallery3d/app/CropImage;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 100
    invoke-direct {p0}, Lcom/android/gallery3d/app/CropImage;->onSaveClicked()V

    return-void
.end method

.method static synthetic access$500(Lcom/android/gallery3d/app/CropImage;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 100
    invoke-direct {p0}, Lcom/android/gallery3d/app/CropImage;->dismissProgressDialogIfShown()V

    return-void
.end method

.method static synthetic access$600(Lcom/android/gallery3d/app/CropImage;Landroid/graphics/BitmapRegionDecoder;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 100
    invoke-direct {p0, p1}, Lcom/android/gallery3d/app/CropImage;->onBitmapRegionDecoderAvailable(Landroid/graphics/BitmapRegionDecoder;)V

    return-void
.end method

.method static synthetic access$700(Lcom/android/gallery3d/app/CropImage;Landroid/graphics/Bitmap;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 100
    invoke-direct {p0, p1}, Lcom/android/gallery3d/app/CropImage;->onBitmapAvailable(Landroid/graphics/Bitmap;)V

    return-void
.end method

.method static synthetic access$800(Lcom/android/gallery3d/app/CropImage;Landroid/graphics/Rect;)Landroid/graphics/Bitmap;
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 100
    invoke-direct {p0, p1}, Lcom/android/gallery3d/app/CropImage;->getCroppedImage(Landroid/graphics/Rect;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/gallery3d/app/CropImage;Lcom/android/gallery3d/util/ThreadPool$JobContext;Landroid/graphics/Bitmap;Landroid/net/Uri;)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 100
    invoke-direct {p0, p1, p2, p3}, Lcom/android/gallery3d/app/CropImage;->saveBitmapToUri(Lcom/android/gallery3d/util/ThreadPool$JobContext;Landroid/graphics/Bitmap;Landroid/net/Uri;)Z

    move-result v0

    return v0
.end method

.method private changeExifData(Lcom/android/gallery3d/exif/ExifData;II)V
    .locals 3
    .parameter "data"
    .parameter "width"
    .parameter "height"

    .prologue
    .line 615
    const/16 v0, 0x100

    invoke-virtual {p1, v0}, Lcom/android/gallery3d/exif/ExifData;->addTag(S)Lcom/android/gallery3d/exif/ExifTag;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/android/gallery3d/exif/ExifTag;->setValue(I)V

    .line 616
    const/16 v0, 0x101

    invoke-virtual {p1, v0}, Lcom/android/gallery3d/exif/ExifData;->addTag(S)Lcom/android/gallery3d/exif/ExifTag;

    move-result-object v0

    invoke-virtual {v0, p3}, Lcom/android/gallery3d/exif/ExifTag;->setValue(I)V

    .line 617
    const/16 v0, 0x131

    invoke-virtual {p1, v0}, Lcom/android/gallery3d/exif/ExifData;->addTag(S)Lcom/android/gallery3d/exif/ExifTag;

    move-result-object v0

    const-string v1, "Android Gallery"

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/exif/ExifTag;->setValue(Ljava/lang/String;)V

    .line 618
    const/16 v0, 0x132

    invoke-virtual {p1, v0}, Lcom/android/gallery3d/exif/ExifData;->addTag(S)Lcom/android/gallery3d/exif/ExifTag;

    move-result-object v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/android/gallery3d/exif/ExifTag;->setTimeValue(J)V

    .line 621
    invoke-virtual {p1}, Lcom/android/gallery3d/exif/ExifData;->removeThumbnailData()V

    .line 622
    return-void
.end method

.method private convertExtensionToCompressFormat(Ljava/lang/String;)Landroid/graphics/Bitmap$CompressFormat;
    .locals 1
    .parameter "extension"

    .prologue
    .line 786
    const-string v0, "png"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    goto :goto_0
.end method

.method public static determineCompressFormat(Lcom/android/gallery3d/data/MediaObject;)Ljava/lang/String;
    .locals 3
    .parameter "obj"

    .prologue
    .line 498
    const-string v0, "JPEG"

    .line 499
    .local v0, compressFormat:Ljava/lang/String;
    instance-of v2, p0, Lcom/android/gallery3d/data/MediaItem;

    if-eqz v2, :cond_1

    .line 500
    check-cast p0, Lcom/android/gallery3d/data/MediaItem;

    .end local p0
    invoke-virtual {p0}, Lcom/android/gallery3d/data/MediaItem;->getMimeType()Ljava/lang/String;

    move-result-object v1

    .line 501
    .local v1, mime:Ljava/lang/String;
    const-string v2, "png"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "gif"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 504
    :cond_0
    const-string v0, "PNG"

    .line 507
    .end local v1           #mime:Ljava/lang/String;
    :cond_1
    return-object v0
.end method

.method private dismissProgressDialogIfShown()V
    .locals 1

    .prologue
    .line 1213
    iget-object v0, p0, Lcom/android/gallery3d/app/CropImage;->mProgressDialog:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_0

    .line 1214
    iget-object v0, p0, Lcom/android/gallery3d/app/CropImage;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-static {v0, p0}, Lcom/android/gallery3d/util/GalleryUtils;->dismissDialogSafely(Landroid/app/Dialog;Lcom/android/gallery3d/app/AbstractGalleryActivity;)V

    .line 1215
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/gallery3d/app/CropImage;->mProgressDialog:Landroid/app/ProgressDialog;

    .line 1217
    :cond_0
    return-void
.end method

.method private drawInTiles(Landroid/graphics/Canvas;Landroid/graphics/BitmapRegionDecoder;Landroid/graphics/Rect;Landroid/graphics/Rect;I)V
    .locals 13
    .parameter "canvas"
    .parameter "decoder"
    .parameter "rect"
    .parameter "dest"
    .parameter "sample"

    .prologue
    .line 974
    move/from16 v0, p5

    mul-int/lit16 v5, v0, 0x200

    .line 975
    .local v5, tileSize:I
    new-instance v4, Landroid/graphics/Rect;

    invoke-direct {v4}, Landroid/graphics/Rect;-><init>()V

    .line 976
    .local v4, tileRect:Landroid/graphics/Rect;
    new-instance v2, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v2}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 977
    .local v2, options:Landroid/graphics/BitmapFactory$Options;
    sget-object v10, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    iput-object v10, v2, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    .line 978
    move/from16 v0, p5

    iput v0, v2, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 979
    move-object/from16 v0, p4

    iget v10, v0, Landroid/graphics/Rect;->left:I

    int-to-float v10, v10

    move-object/from16 v0, p4

    iget v11, v0, Landroid/graphics/Rect;->top:I

    int-to-float v11, v11

    invoke-virtual {p1, v10, v11}, Landroid/graphics/Canvas;->translate(FF)V

    .line 980
    move/from16 v0, p5

    int-to-float v10, v0

    invoke-virtual/range {p4 .. p4}, Landroid/graphics/Rect;->width()I

    move-result v11

    int-to-float v11, v11

    mul-float/2addr v10, v11

    invoke-virtual/range {p3 .. p3}, Landroid/graphics/Rect;->width()I

    move-result v11

    int-to-float v11, v11

    div-float/2addr v10, v11

    move/from16 v0, p5

    int-to-float v11, v0

    invoke-virtual/range {p4 .. p4}, Landroid/graphics/Rect;->height()I

    move-result v12

    int-to-float v12, v12

    mul-float/2addr v11, v12

    invoke-virtual/range {p3 .. p3}, Landroid/graphics/Rect;->height()I

    move-result v12

    int-to-float v12, v12

    div-float/2addr v11, v12

    invoke-virtual {p1, v10, v11}, Landroid/graphics/Canvas;->scale(FF)V

    .line 982
    new-instance v3, Landroid/graphics/Paint;

    const/4 v10, 0x2

    invoke-direct {v3, v10}, Landroid/graphics/Paint;-><init>(I)V

    .line 983
    .local v3, paint:Landroid/graphics/Paint;
    move-object/from16 v0, p3

    iget v6, v0, Landroid/graphics/Rect;->left:I

    .local v6, tx:I
    const/4 v8, 0x0

    .line 984
    .local v8, x:I
    :goto_0
    move-object/from16 v0, p3

    iget v10, v0, Landroid/graphics/Rect;->right:I

    if-ge v6, v10, :cond_2

    .line 985
    move-object/from16 v0, p3

    iget v7, v0, Landroid/graphics/Rect;->top:I

    .local v7, ty:I
    const/4 v9, 0x0

    .line 986
    .local v9, y:I
    :goto_1
    move-object/from16 v0, p3

    iget v10, v0, Landroid/graphics/Rect;->bottom:I

    if-ge v7, v10, :cond_1

    .line 987
    add-int v10, v6, v5

    add-int v11, v7, v5

    invoke-virtual {v4, v6, v7, v10, v11}, Landroid/graphics/Rect;->set(IIII)V

    .line 988
    move-object/from16 v0, p3

    invoke-virtual {v4, v0}, Landroid/graphics/Rect;->intersect(Landroid/graphics/Rect;)Z

    move-result v10

    if-eqz v10, :cond_0

    .line 992
    monitor-enter p2

    .line 993
    :try_start_0
    invoke-virtual {p2, v4, v2}, Landroid/graphics/BitmapRegionDecoder;->decodeRegion(Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 994
    .local v1, bitmap:Landroid/graphics/Bitmap;
    monitor-exit p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 995
    int-to-float v10, v8

    int-to-float v11, v9

    invoke-virtual {p1, v1, v10, v11, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 996
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    .line 986
    .end local v1           #bitmap:Landroid/graphics/Bitmap;
    :cond_0
    add-int/2addr v7, v5

    add-int/lit16 v9, v9, 0x200

    goto :goto_1

    .line 994
    :catchall_0
    move-exception v10

    :try_start_1
    monitor-exit p2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v10

    .line 984
    :cond_1
    add-int/2addr v6, v5

    add-int/lit16 v8, v8, 0x200

    goto :goto_0

    .line 1000
    .end local v7           #ty:I
    .end local v9           #y:I
    :cond_2
    return-void
.end method

.method private getCroppedImage(Landroid/graphics/Rect;)Landroid/graphics/Bitmap;
    .locals 22
    .parameter "rect"

    .prologue
    .line 835
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Rect;->width()I

    move-result v2

    if-lez v2, :cond_6

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Rect;->height()I

    move-result v2

    if-lez v2, :cond_6

    const/4 v2, 0x1

    :goto_0
    invoke-static {v2}, Lcom/android/gallery3d/common/Utils;->assertTrue(Z)V

    .line 837
    invoke-virtual/range {p0 .. p0}, Lcom/android/gallery3d/app/CropImage;->getIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v8

    .line 839
    .local v8, extras:Landroid/os/Bundle;
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Rect;->width()I

    move-result v10

    .line 840
    .local v10, outputX:I
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Rect;->height()I

    move-result v11

    .line 841
    .local v11, outputY:I
    if-eqz v8, :cond_0

    .line 842
    const-string v2, "outputX"

    invoke-virtual {v8, v2, v10}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v10

    .line 843
    const-string v2, "outputY"

    invoke-virtual {v8, v2, v11}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v11

    .line 846
    :cond_0
    mul-int v2, v10, v11

    const v4, 0x4c4b40

    if-le v2, v4, :cond_1

    .line 847
    const v2, 0x4a989680

    int-to-float v4, v10

    div-float/2addr v2, v4

    int-to-float v4, v11

    div-float/2addr v2, v4

    invoke-static {v2}, Landroid/util/FloatMath;->sqrt(F)F

    move-result v16

    .line 848
    .local v16, scale:F
    const-string v2, "CropImage"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "scale down the cropped image: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, v16

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/android/gallery3d/app/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 849
    int-to-float v2, v10

    mul-float v2, v2, v16

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v10

    .line 850
    int-to-float v2, v11

    mul-float v2, v2, v16

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v11

    .line 855
    .end local v16           #scale:F
    :cond_1
    const/high16 v17, 0x3f80

    .line 856
    .local v17, scaleX:F
    const/high16 v18, 0x3f80

    .line 857
    .local v18, scaleY:F
    new-instance v6, Landroid/graphics/Rect;

    const/4 v2, 0x0

    const/4 v4, 0x0

    invoke-direct {v6, v2, v4, v10, v11}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 858
    .local v6, dest:Landroid/graphics/Rect;
    if-eqz v8, :cond_2

    const-string v2, "scale"

    const/4 v4, 0x1

    invoke-virtual {v8, v2, v4}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 859
    :cond_2
    int-to-float v2, v10

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Rect;->width()I

    move-result v4

    int-to-float v4, v4

    div-float v17, v2, v4

    .line 860
    int-to-float v2, v11

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Rect;->height()I

    move-result v4

    int-to-float v4, v4

    div-float v18, v2, v4

    .line 861
    if-eqz v8, :cond_3

    const-string v2, "scaleUpIfNeeded"

    const/4 v4, 0x0

    invoke-virtual {v8, v2, v4}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-nez v2, :cond_5

    .line 863
    :cond_3
    const/high16 v2, 0x3f80

    cmpl-float v2, v17, v2

    if-lez v2, :cond_4

    const/high16 v17, 0x3f80

    .line 864
    :cond_4
    const/high16 v2, 0x3f80

    cmpl-float v2, v18, v2

    if-lez v2, :cond_5

    const/high16 v18, 0x3f80

    .line 869
    :cond_5
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Rect;->width()I

    move-result v2

    int-to-float v2, v2

    mul-float v2, v2, v17

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v13

    .line 870
    .local v13, rectWidth:I
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Rect;->height()I

    move-result v2

    int-to-float v2, v2

    mul-float v2, v2, v18

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v12

    .line 871
    .local v12, rectHeight:I
    sub-int v2, v10, v13

    int-to-float v2, v2

    const/high16 v4, 0x4000

    div-float/2addr v2, v4

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    sub-int v4, v11, v12

    int-to-float v4, v4

    const/high16 v5, 0x4000

    div-float/2addr v4, v5

    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v4

    add-int v5, v10, v13

    int-to-float v5, v5

    const/high16 v20, 0x4000

    div-float v5, v5, v20

    invoke-static {v5}, Ljava/lang/Math;->round(F)I

    move-result v5

    add-int v20, v11, v12

    move/from16 v0, v20

    int-to-float v0, v0

    move/from16 v20, v0

    const/high16 v21, 0x4000

    div-float v20, v20, v21

    invoke-static/range {v20 .. v20}, Ljava/lang/Math;->round(F)I

    move-result v20

    move/from16 v0, v20

    invoke-virtual {v6, v2, v4, v5, v0}, Landroid/graphics/Rect;->set(IIII)V

    .line 876
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/gallery3d/app/CropImage;->mBitmapInIntent:Landroid/graphics/Bitmap;

    if-eqz v2, :cond_7

    .line 877
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/gallery3d/app/CropImage;->mBitmapInIntent:Landroid/graphics/Bitmap;

    move-object/from16 v19, v0

    .line 878
    .local v19, source:Landroid/graphics/Bitmap;
    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v10, v11, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v14

    .line 880
    .local v14, result:Landroid/graphics/Bitmap;
    new-instance v3, Landroid/graphics/Canvas;

    invoke-direct {v3, v14}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 881
    .local v3, canvas:Landroid/graphics/Canvas;
    const/4 v2, 0x0

    move-object/from16 v0, v19

    move-object/from16 v1, p1

    invoke-virtual {v3, v0, v1, v6, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 925
    .end local v3           #canvas:Landroid/graphics/Canvas;
    .end local v14           #result:Landroid/graphics/Bitmap;
    .end local v19           #source:Landroid/graphics/Bitmap;
    :goto_1
    return-object v14

    .line 835
    .end local v6           #dest:Landroid/graphics/Rect;
    .end local v8           #extras:Landroid/os/Bundle;
    .end local v10           #outputX:I
    .end local v11           #outputY:I
    .end local v12           #rectHeight:I
    .end local v13           #rectWidth:I
    .end local v17           #scaleX:F
    .end local v18           #scaleY:F
    :cond_6
    const/4 v2, 0x0

    goto/16 :goto_0

    .line 885
    .restart local v6       #dest:Landroid/graphics/Rect;
    .restart local v8       #extras:Landroid/os/Bundle;
    .restart local v10       #outputX:I
    .restart local v11       #outputY:I
    .restart local v12       #rectHeight:I
    .restart local v13       #rectWidth:I
    .restart local v17       #scaleX:F
    .restart local v18       #scaleY:F
    :cond_7
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/gallery3d/app/CropImage;->mUseRegionDecoder:Z

    if-eqz v2, :cond_9

    .line 886
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/gallery3d/app/CropImage;->mMediaItem:Lcom/android/gallery3d/data/MediaItem;

    invoke-virtual {v2}, Lcom/android/gallery3d/data/MediaItem;->getFullImageRotation()I

    move-result v15

    .line 887
    .local v15, rotation:I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/gallery3d/app/CropImage;->mCropView:Lcom/android/gallery3d/ui/CropView;

    invoke-virtual {v2}, Lcom/android/gallery3d/ui/CropView;->getImageWidth()I

    move-result v2

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/gallery3d/app/CropImage;->mCropView:Lcom/android/gallery3d/ui/CropView;

    invoke-virtual {v4}, Lcom/android/gallery3d/ui/CropView;->getImageHeight()I

    move-result v4

    rsub-int v5, v15, 0x168

    move-object/from16 v0, p1

    invoke-static {v0, v2, v4, v5}, Lcom/android/gallery3d/app/CropImage;->rotateRectangle(Landroid/graphics/Rect;III)V

    .line 889
    rsub-int v2, v15, 0x168

    invoke-static {v6, v10, v11, v2}, Lcom/android/gallery3d/app/CropImage;->rotateRectangle(Landroid/graphics/Rect;III)V

    .line 891
    new-instance v9, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v9}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 892
    .local v9, options:Landroid/graphics/BitmapFactory$Options;
    invoke-static/range {v17 .. v18}, Ljava/lang/Math;->max(FF)F

    move-result v2

    invoke-static {v2}, Lcom/android/gallery3d/common/BitmapUtils;->computeSampleSizeLarger(F)I

    move-result v7

    .line 894
    .local v7, sample:I
    iput v7, v9, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 900
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Rect;->width()I

    move-result v2

    div-int/2addr v2, v7

    invoke-virtual {v6}, Landroid/graphics/Rect;->width()I

    move-result v4

    if-ne v2, v4, :cond_8

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Rect;->height()I

    move-result v2

    div-int/2addr v2, v7

    invoke-virtual {v6}, Landroid/graphics/Rect;->height()I

    move-result v4

    if-ne v2, v4, :cond_8

    invoke-virtual {v6}, Landroid/graphics/Rect;->width()I

    move-result v2

    if-ne v10, v2, :cond_8

    invoke-virtual {v6}, Landroid/graphics/Rect;->height()I

    move-result v2

    if-ne v11, v2, :cond_8

    if-nez v15, :cond_8

    .line 905
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/gallery3d/app/CropImage;->mRegionDecoder:Landroid/graphics/BitmapRegionDecoder;

    monitor-enter v4

    .line 906
    :try_start_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/gallery3d/app/CropImage;->mRegionDecoder:Landroid/graphics/BitmapRegionDecoder;

    move-object/from16 v0, p1

    invoke-virtual {v2, v0, v9}, Landroid/graphics/BitmapRegionDecoder;->decodeRegion(Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v14

    monitor-exit v4

    goto :goto_1

    .line 907
    :catchall_0
    move-exception v2

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 909
    :cond_8
    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v10, v11, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v14

    .line 911
    .restart local v14       #result:Landroid/graphics/Bitmap;
    new-instance v3, Landroid/graphics/Canvas;

    invoke-direct {v3, v14}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 912
    .restart local v3       #canvas:Landroid/graphics/Canvas;
    invoke-static {v3, v10, v11, v15}, Lcom/android/gallery3d/app/CropImage;->rotateCanvas(Landroid/graphics/Canvas;III)V

    .line 913
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/gallery3d/app/CropImage;->mRegionDecoder:Landroid/graphics/BitmapRegionDecoder;

    move-object/from16 v2, p0

    move-object/from16 v5, p1

    invoke-direct/range {v2 .. v7}, Lcom/android/gallery3d/app/CropImage;->drawInTiles(Landroid/graphics/Canvas;Landroid/graphics/BitmapRegionDecoder;Landroid/graphics/Rect;Landroid/graphics/Rect;I)V

    goto/16 :goto_1

    .line 916
    .end local v3           #canvas:Landroid/graphics/Canvas;
    .end local v7           #sample:I
    .end local v9           #options:Landroid/graphics/BitmapFactory$Options;
    .end local v14           #result:Landroid/graphics/Bitmap;
    .end local v15           #rotation:I
    :cond_9
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/gallery3d/app/CropImage;->mMediaItem:Lcom/android/gallery3d/data/MediaItem;

    invoke-virtual {v2}, Lcom/android/gallery3d/data/MediaItem;->getRotation()I

    move-result v15

    .line 917
    .restart local v15       #rotation:I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/gallery3d/app/CropImage;->mCropView:Lcom/android/gallery3d/ui/CropView;

    invoke-virtual {v2}, Lcom/android/gallery3d/ui/CropView;->getImageWidth()I

    move-result v2

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/gallery3d/app/CropImage;->mCropView:Lcom/android/gallery3d/ui/CropView;

    invoke-virtual {v4}, Lcom/android/gallery3d/ui/CropView;->getImageHeight()I

    move-result v4

    rsub-int v5, v15, 0x168

    move-object/from16 v0, p1

    invoke-static {v0, v2, v4, v5}, Lcom/android/gallery3d/app/CropImage;->rotateRectangle(Landroid/graphics/Rect;III)V

    .line 919
    rsub-int v2, v15, 0x168

    invoke-static {v6, v10, v11, v2}, Lcom/android/gallery3d/app/CropImage;->rotateRectangle(Landroid/graphics/Rect;III)V

    .line 920
    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v10, v11, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v14

    .line 921
    .restart local v14       #result:Landroid/graphics/Bitmap;
    new-instance v3, Landroid/graphics/Canvas;

    invoke-direct {v3, v14}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 922
    .restart local v3       #canvas:Landroid/graphics/Canvas;
    invoke-static {v3, v10, v11, v15}, Lcom/android/gallery3d/app/CropImage;->rotateCanvas(Landroid/graphics/Canvas;III)V

    .line 923
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/gallery3d/app/CropImage;->mBitmap:Landroid/graphics/Bitmap;

    new-instance v4, Landroid/graphics/Paint;

    const/4 v5, 0x2

    invoke-direct {v4, v5}, Landroid/graphics/Paint;-><init>(I)V

    move-object/from16 v0, p1

    invoke-virtual {v3, v2, v0, v6, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    goto/16 :goto_1
.end method

.method private getExifData(Ljava/lang/String;)Lcom/android/gallery3d/exif/ExifData;
    .locals 7
    .parameter "path"

    .prologue
    .line 598
    const/4 v1, 0x0

    .line 600
    .local v1, is:Ljava/io/FileInputStream;
    :try_start_0
    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, p1}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 601
    .end local v1           #is:Ljava/io/FileInputStream;
    .local v2, is:Ljava/io/FileInputStream;
    :try_start_1
    new-instance v3, Lcom/android/gallery3d/exif/ExifReader;

    invoke-direct {v3}, Lcom/android/gallery3d/exif/ExifReader;-><init>()V

    .line 602
    .local v3, reader:Lcom/android/gallery3d/exif/ExifReader;
    invoke-virtual {v3, v2}, Lcom/android/gallery3d/exif/ExifReader;->read(Ljava/io/InputStream;)Lcom/android/gallery3d/exif/ExifData;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v0

    .line 608
    .local v0, data:Lcom/android/gallery3d/exif/ExifData;
    invoke-static {v2}, Lcom/android/hwcamera/Util;->closeSilently(Ljava/io/Closeable;)V

    move-object v1, v2

    .end local v0           #data:Lcom/android/gallery3d/exif/ExifData;
    .end local v2           #is:Ljava/io/FileInputStream;
    .end local v3           #reader:Lcom/android/gallery3d/exif/ExifReader;
    .restart local v1       #is:Ljava/io/FileInputStream;
    :goto_0
    return-object v0

    .line 604
    :catch_0
    move-exception v4

    .line 605
    .local v4, t:Ljava/lang/Throwable;
    :goto_1
    :try_start_2
    const-string v5, "CropImage"

    const-string v6, "Cannot read EXIF data"

    invoke-static {v5, v6, v4}, Lcom/android/gallery3d/app/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 606
    const/4 v0, 0x0

    .line 608
    invoke-static {v1}, Lcom/android/hwcamera/Util;->closeSilently(Ljava/io/Closeable;)V

    goto :goto_0

    .end local v4           #t:Ljava/lang/Throwable;
    :catchall_0
    move-exception v5

    :goto_2
    invoke-static {v1}, Lcom/android/hwcamera/Util;->closeSilently(Ljava/io/Closeable;)V

    throw v5

    .end local v1           #is:Ljava/io/FileInputStream;
    .restart local v2       #is:Ljava/io/FileInputStream;
    :catchall_1
    move-exception v5

    move-object v1, v2

    .end local v2           #is:Ljava/io/FileInputStream;
    .restart local v1       #is:Ljava/io/FileInputStream;
    goto :goto_2

    .line 604
    .end local v1           #is:Ljava/io/FileInputStream;
    .restart local v2       #is:Ljava/io/FileInputStream;
    :catch_1
    move-exception v4

    move-object v1, v2

    .end local v2           #is:Ljava/io/FileInputStream;
    .restart local v1       #is:Ljava/io/FileInputStream;
    goto :goto_1
.end method

.method private getFileExtension()Ljava/lang/String;
    .locals 4

    .prologue
    .line 796
    invoke-virtual {p0}, Lcom/android/gallery3d/app/CropImage;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v3, "outputFormat"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 797
    .local v1, requestFormat:Ljava/lang/String;
    if-nez v1, :cond_1

    iget-object v2, p0, Lcom/android/gallery3d/app/CropImage;->mMediaItem:Lcom/android/gallery3d/data/MediaItem;

    invoke-static {v2}, Lcom/android/gallery3d/app/CropImage;->determineCompressFormat(Lcom/android/gallery3d/data/MediaObject;)Ljava/lang/String;

    move-result-object v0

    .line 801
    .local v0, outputFormat:Ljava/lang/String;
    :goto_0
    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    .line 802
    const-string v2, "png"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "gif"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    :cond_0
    const-string v2, "png"

    :goto_1
    return-object v2

    .end local v0           #outputFormat:Ljava/lang/String;
    :cond_1
    move-object v0, v1

    .line 797
    goto :goto_0

    .line 802
    .restart local v0       #outputFormat:Ljava/lang/String;
    :cond_2
    const-string v2, "jpg"

    goto :goto_1
.end method

.method private getMediaItemFromIntentData()Lcom/android/gallery3d/data/MediaItem;
    .locals 6

    .prologue
    .line 1220
    invoke-virtual {p0}, Lcom/android/gallery3d/app/CropImage;->getIntent()Landroid/content/Intent;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v2

    .line 1221
    .local v2, uri:Landroid/net/Uri;
    invoke-virtual {p0}, Lcom/android/gallery3d/app/CropImage;->getDataManager()Lcom/android/gallery3d/data/DataManager;

    move-result-object v0

    .line 1222
    .local v0, manager:Lcom/android/gallery3d/data/DataManager;
    invoke-virtual {p0}, Lcom/android/gallery3d/app/CropImage;->getIntent()Landroid/content/Intent;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Intent;->getType()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lcom/android/gallery3d/data/DataManager;->findPathByUri(Landroid/net/Uri;Ljava/lang/String;)Lcom/android/gallery3d/data/Path;

    move-result-object v1

    .line 1223
    .local v1, path:Lcom/android/gallery3d/data/Path;
    if-nez v1, :cond_0

    .line 1224
    const-string v3, "CropImage"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "cannot get path for: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", or no data given"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/gallery3d/app/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1225
    const/4 v3, 0x0

    .line 1230
    :goto_0
    return-object v3

    .line 1228
    :cond_0
    invoke-virtual {v1}, Lcom/android/gallery3d/data/Path;->clearObject()V

    .line 1230
    invoke-virtual {v0, v1}, Lcom/android/gallery3d/data/DataManager;->getMediaObject(Lcom/android/gallery3d/data/Path;)Lcom/android/gallery3d/data/MediaObject;

    move-result-object v3

    check-cast v3, Lcom/android/gallery3d/data/MediaItem;

    goto :goto_0
.end method

.method private getOutputMimeType()Ljava/lang/String;
    .locals 2

    .prologue
    .line 792
    invoke-direct {p0}, Lcom/android/gallery3d/app/CropImage;->getFileExtension()Ljava/lang/String;

    move-result-object v0

    const-string v1, "png"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "image/png"

    :goto_0
    return-object v0

    :cond_0
    const-string v0, "image/jpeg"

    goto :goto_0
.end method

.method private initButton()V
    .locals 2

    .prologue
    .line 256
    const v1, 0x7f10004a

    invoke-virtual {p0, v1}, Lcom/android/gallery3d/app/CropImage;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 257
    .local v0, button:Landroid/widget/Button;
    iget-boolean v1, p0, Lcom/android/gallery3d/app/CropImage;->mIsSetWallpaper:Z

    if-eqz v1, :cond_0

    const v1, 0x7f0d0260

    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    .line 258
    new-instance v1, Lcom/android/gallery3d/app/CropImage$2;

    invoke-direct {v1, p0}, Lcom/android/gallery3d/app/CropImage$2;-><init>(Lcom/android/gallery3d/app/CropImage;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 264
    return-void

    .line 257
    :cond_0
    const v1, 0x7f0d0251

    goto :goto_0
.end method

.method private initTab()V
    .locals 8

    .prologue
    const/16 v3, 0x8

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 239
    const v2, 0x7f100048

    invoke-virtual {p0, v2}, Lcom/android/gallery3d/app/CropImage;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/android/gallery3d/ui/SimpleTabWidget;

    iput-object v2, p0, Lcom/android/gallery3d/app/CropImage;->mTabView:Lcom/android/gallery3d/ui/SimpleTabWidget;

    .line 240
    const v2, 0x7f100049

    invoke-virtual {p0, v2}, Lcom/android/gallery3d/app/CropImage;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 241
    .local v0, dividerView:Landroid/widget/ImageView;
    iget-boolean v2, p0, Lcom/android/gallery3d/app/CropImage;->mIsSetWallpaper:Z

    if-eqz v2, :cond_0

    sget-boolean v2, Lcom/android/gallery3d/util/GalleryUtils;->FIXED_WALLPAPER_ENANBLED:Z

    if-eqz v2, :cond_0

    .line 242
    iget-object v2, p0, Lcom/android/gallery3d/app/CropImage;->mTabView:Lcom/android/gallery3d/ui/SimpleTabWidget;

    invoke-virtual {p0}, Lcom/android/gallery3d/app/CropImage;->getAndroidContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0d03d2

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    iget-object v4, p0, Lcom/android/gallery3d/app/CropImage;->mTabListener:Lcom/android/gallery3d/ui/SimpleTabWidget$TabListener;

    invoke-virtual {v2, v3, v4, v7}, Lcom/android/gallery3d/ui/SimpleTabWidget;->newTab(Ljava/lang/CharSequence;Lcom/android/gallery3d/ui/SimpleTabWidget$TabListener;I)Lcom/android/gallery3d/ui/SimpleTabWidget$Tab;

    move-result-object v1

    .line 243
    .local v1, tab:Lcom/android/gallery3d/ui/SimpleTabWidget$Tab;
    iget-object v2, p0, Lcom/android/gallery3d/app/CropImage;->mTabView:Lcom/android/gallery3d/ui/SimpleTabWidget;

    invoke-virtual {v2, v1, v7}, Lcom/android/gallery3d/ui/SimpleTabWidget;->addTab(Lcom/android/gallery3d/ui/SimpleTabWidget$Tab;Z)V

    .line 244
    iget-object v2, p0, Lcom/android/gallery3d/app/CropImage;->mTabView:Lcom/android/gallery3d/ui/SimpleTabWidget;

    invoke-virtual {p0}, Lcom/android/gallery3d/app/CropImage;->getAndroidContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0d03d3

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    iget-object v4, p0, Lcom/android/gallery3d/app/CropImage;->mTabListener:Lcom/android/gallery3d/ui/SimpleTabWidget$TabListener;

    const/4 v5, 0x2

    invoke-virtual {v2, v3, v4, v5}, Lcom/android/gallery3d/ui/SimpleTabWidget;->newTab(Ljava/lang/CharSequence;Lcom/android/gallery3d/ui/SimpleTabWidget$TabListener;I)Lcom/android/gallery3d/ui/SimpleTabWidget$Tab;

    move-result-object v1

    .line 245
    iget-object v2, p0, Lcom/android/gallery3d/app/CropImage;->mTabView:Lcom/android/gallery3d/ui/SimpleTabWidget;

    invoke-virtual {v2, v1, v6}, Lcom/android/gallery3d/ui/SimpleTabWidget;->addTab(Lcom/android/gallery3d/ui/SimpleTabWidget$Tab;Z)V

    .line 246
    iget-object v2, p0, Lcom/android/gallery3d/app/CropImage;->mTabView:Lcom/android/gallery3d/ui/SimpleTabWidget;

    invoke-virtual {v2, v7}, Lcom/android/gallery3d/ui/SimpleTabWidget;->updateWidgetStyle(I)V

    .line 247
    iget-object v2, p0, Lcom/android/gallery3d/app/CropImage;->mTabView:Lcom/android/gallery3d/ui/SimpleTabWidget;

    invoke-virtual {v2, v6}, Lcom/android/gallery3d/ui/SimpleTabWidget;->setClickable(Z)V

    .line 248
    iget-object v2, p0, Lcom/android/gallery3d/app/CropImage;->mTabView:Lcom/android/gallery3d/ui/SimpleTabWidget;

    invoke-virtual {v2, v6}, Lcom/android/gallery3d/ui/SimpleTabWidget;->setVisibility(I)V

    .line 249
    invoke-virtual {v0, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 254
    .end local v1           #tab:Lcom/android/gallery3d/ui/SimpleTabWidget$Tab;
    :goto_0
    return-void

    .line 251
    :cond_0
    iget-object v2, p0, Lcom/android/gallery3d/app/CropImage;->mTabView:Lcom/android/gallery3d/ui/SimpleTabWidget;

    invoke-virtual {v2, v3}, Lcom/android/gallery3d/ui/SimpleTabWidget;->setVisibility(I)V

    .line 252
    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0
.end method

.method private initWallpaperParameters()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 194
    iget-boolean v1, p0, Lcom/android/gallery3d/app/CropImage;->mIsSetWallpaper:Z

    if-nez v1, :cond_1

    .line 203
    :cond_0
    :goto_0
    return-void

    .line 196
    :cond_1
    invoke-virtual {p0}, Lcom/android/gallery3d/app/CropImage;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 197
    .local v0, intent:Landroid/content/Intent;
    if-eqz v0, :cond_0

    .line 198
    const-string v1, "outputX"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/android/gallery3d/app/CropImage;->mScrollableWallpaperWidth:I

    .line 199
    const-string v1, "outputY"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/android/gallery3d/app/CropImage;->mScrollableWallpaperHeight:I

    .line 200
    const-string v1, "fixedX"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/android/gallery3d/app/CropImage;->mFixedWallpaperWidth:I

    .line 201
    const-string v1, "fixedY"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/android/gallery3d/app/CropImage;->mFixedWallpaperHeight:I

    goto :goto_0
.end method

.method private initializeData()V
    .locals 7

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 1086
    invoke-virtual {p0}, Lcom/android/gallery3d/app/CropImage;->getIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 1088
    .local v0, extras:Landroid/os/Bundle;
    if-eqz v0, :cond_4

    .line 1089
    const-string v2, "noFaceDetection"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1090
    const-string v2, "noFaceDetection"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2

    move v2, v3

    :goto_0
    iput-boolean v2, p0, Lcom/android/gallery3d/app/CropImage;->mDoFaceDetection:Z

    .line 1093
    :cond_0
    const-string v2, "data"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Landroid/graphics/Bitmap;

    iput-object v2, p0, Lcom/android/gallery3d/app/CropImage;->mBitmapInIntent:Landroid/graphics/Bitmap;

    .line 1095
    iget-object v2, p0, Lcom/android/gallery3d/app/CropImage;->mBitmapInIntent:Landroid/graphics/Bitmap;

    if-eqz v2, :cond_4

    .line 1096
    new-instance v2, Lcom/android/gallery3d/ui/BitmapTileProvider;

    iget-object v5, p0, Lcom/android/gallery3d/app/CropImage;->mBitmapInIntent:Landroid/graphics/Bitmap;

    const/16 v6, 0x140

    invoke-direct {v2, v5, v6}, Lcom/android/gallery3d/ui/BitmapTileProvider;-><init>(Landroid/graphics/Bitmap;I)V

    iput-object v2, p0, Lcom/android/gallery3d/app/CropImage;->mBitmapTileProvider:Lcom/android/gallery3d/ui/BitmapTileProvider;

    .line 1098
    iget-object v2, p0, Lcom/android/gallery3d/app/CropImage;->mCropView:Lcom/android/gallery3d/ui/CropView;

    iget-object v5, p0, Lcom/android/gallery3d/app/CropImage;->mBitmapTileProvider:Lcom/android/gallery3d/ui/BitmapTileProvider;

    invoke-virtual {v2, v5, v4}, Lcom/android/gallery3d/ui/CropView;->setDataModel(Lcom/android/gallery3d/ui/TileImageView$Model;I)V

    .line 1099
    iget-boolean v2, p0, Lcom/android/gallery3d/app/CropImage;->mDoFaceDetection:Z

    if-eqz v2, :cond_3

    .line 1100
    iget-object v2, p0, Lcom/android/gallery3d/app/CropImage;->mCropView:Lcom/android/gallery3d/ui/CropView;

    iget-object v4, p0, Lcom/android/gallery3d/app/CropImage;->mBitmapInIntent:Landroid/graphics/Bitmap;

    invoke-virtual {v2, v4}, Lcom/android/gallery3d/ui/CropView;->detectFaces(Landroid/graphics/Bitmap;)V

    .line 1104
    :goto_1
    iget-object v2, p0, Lcom/android/gallery3d/app/CropImage;->mTabView:Lcom/android/gallery3d/ui/SimpleTabWidget;

    invoke-virtual {v2, v3}, Lcom/android/gallery3d/ui/SimpleTabWidget;->setClickable(Z)V

    .line 1105
    iput v3, p0, Lcom/android/gallery3d/app/CropImage;->mState:I

    .line 1151
    :cond_1
    :goto_2
    return-void

    :cond_2
    move v2, v4

    .line 1090
    goto :goto_0

    .line 1102
    :cond_3
    iget-object v2, p0, Lcom/android/gallery3d/app/CropImage;->mCropView:Lcom/android/gallery3d/ui/CropView;

    invoke-virtual {v2}, Lcom/android/gallery3d/ui/CropView;->initializeHighlightRectangle()V

    goto :goto_1

    .line 1110
    :cond_4
    const/4 v2, 0x0

    const v5, 0x7f0d0245

    invoke-virtual {p0, v5}, Lcom/android/gallery3d/app/CropImage;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {p0, v2, v5, v3, v3}, Landroid/app/ProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZZ)Landroid/app/ProgressDialog;

    move-result-object v2

    iput-object v2, p0, Lcom/android/gallery3d/app/CropImage;->mProgressDialog:Landroid/app/ProgressDialog;

    .line 1112
    iget-object v2, p0, Lcom/android/gallery3d/app/CropImage;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v2, v4}, Landroid/app/ProgressDialog;->setCanceledOnTouchOutside(Z)V

    .line 1113
    iget-object v2, p0, Lcom/android/gallery3d/app/CropImage;->mProgressDialog:Landroid/app/ProgressDialog;

    iget-object v5, p0, Lcom/android/gallery3d/app/CropImage;->mMainHandler:Landroid/os/Handler;

    const/4 v6, 0x5

    invoke-virtual {v5, v6}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v5

    invoke-virtual {v2, v5}, Landroid/app/ProgressDialog;->setCancelMessage(Landroid/os/Message;)V

    .line 1115
    invoke-direct {p0}, Lcom/android/gallery3d/app/CropImage;->getMediaItemFromIntentData()Lcom/android/gallery3d/data/MediaItem;

    move-result-object v2

    iput-object v2, p0, Lcom/android/gallery3d/app/CropImage;->mMediaItem:Lcom/android/gallery3d/data/MediaItem;

    .line 1116
    iget-object v2, p0, Lcom/android/gallery3d/app/CropImage;->mMediaItem:Lcom/android/gallery3d/data/MediaItem;

    if-eqz v2, :cond_1

    .line 1118
    iget-object v2, p0, Lcom/android/gallery3d/app/CropImage;->mMediaItem:Lcom/android/gallery3d/data/MediaItem;

    invoke-virtual {v2}, Lcom/android/gallery3d/data/MediaItem;->getSupportedOperations()I

    move-result v2

    and-int/lit8 v2, v2, 0x40

    if-eqz v2, :cond_5

    move v1, v3

    .line 1120
    .local v1, supportedByBitmapRegionDecoder:Z
    :goto_3
    if-eqz v1, :cond_6

    .line 1121
    invoke-virtual {p0}, Lcom/android/gallery3d/app/CropImage;->getThreadPool()Lcom/android/gallery3d/util/ThreadPool;

    move-result-object v2

    new-instance v3, Lcom/android/gallery3d/app/CropImage$LoadDataTask;

    iget-object v4, p0, Lcom/android/gallery3d/app/CropImage;->mMediaItem:Lcom/android/gallery3d/data/MediaItem;

    invoke-direct {v3, p0, v4}, Lcom/android/gallery3d/app/CropImage$LoadDataTask;-><init>(Lcom/android/gallery3d/app/CropImage;Lcom/android/gallery3d/data/MediaItem;)V

    new-instance v4, Lcom/android/gallery3d/app/CropImage$6;

    invoke-direct {v4, p0}, Lcom/android/gallery3d/app/CropImage$6;-><init>(Lcom/android/gallery3d/app/CropImage;)V

    invoke-virtual {v2, v3, v4}, Lcom/android/gallery3d/util/ThreadPool;->submit(Lcom/android/gallery3d/util/ThreadPool$Job;Lcom/android/gallery3d/util/FutureListener;)Lcom/android/gallery3d/util/Future;

    move-result-object v2

    iput-object v2, p0, Lcom/android/gallery3d/app/CropImage;->mLoadTask:Lcom/android/gallery3d/util/Future;

    goto :goto_2

    .end local v1           #supportedByBitmapRegionDecoder:Z
    :cond_5
    move v1, v4

    .line 1118
    goto :goto_3

    .line 1136
    .restart local v1       #supportedByBitmapRegionDecoder:Z
    :cond_6
    invoke-virtual {p0}, Lcom/android/gallery3d/app/CropImage;->getThreadPool()Lcom/android/gallery3d/util/ThreadPool;

    move-result-object v2

    new-instance v3, Lcom/android/gallery3d/app/CropImage$LoadBitmapDataTask;

    iget-object v4, p0, Lcom/android/gallery3d/app/CropImage;->mMediaItem:Lcom/android/gallery3d/data/MediaItem;

    invoke-direct {v3, p0, v4}, Lcom/android/gallery3d/app/CropImage$LoadBitmapDataTask;-><init>(Lcom/android/gallery3d/app/CropImage;Lcom/android/gallery3d/data/MediaItem;)V

    new-instance v4, Lcom/android/gallery3d/app/CropImage$7;

    invoke-direct {v4, p0}, Lcom/android/gallery3d/app/CropImage$7;-><init>(Lcom/android/gallery3d/app/CropImage;)V

    invoke-virtual {v2, v3, v4}, Lcom/android/gallery3d/util/ThreadPool;->submit(Lcom/android/gallery3d/util/ThreadPool$Job;Lcom/android/gallery3d/util/FutureListener;)Lcom/android/gallery3d/util/Future;

    move-result-object v2

    iput-object v2, p0, Lcom/android/gallery3d/app/CropImage;->mLoadBitmapTask:Lcom/android/gallery3d/util/Future;

    goto :goto_2
.end method

.method private onBitmapAvailable(Landroid/graphics/Bitmap;)V
    .locals 4
    .parameter "bitmap"

    .prologue
    const/4 v3, 0x1

    const/4 v1, 0x0

    .line 1045
    if-nez p1, :cond_0

    .line 1046
    const v0, 0x7f0d024c

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 1047
    invoke-virtual {p0}, Lcom/android/gallery3d/app/CropImage;->finish()V

    .line 1062
    :goto_0
    return-void

    .line 1050
    :cond_0
    iput-boolean v1, p0, Lcom/android/gallery3d/app/CropImage;->mUseRegionDecoder:Z

    .line 1051
    iput v3, p0, Lcom/android/gallery3d/app/CropImage;->mState:I

    .line 1053
    iput-object p1, p0, Lcom/android/gallery3d/app/CropImage;->mBitmap:Landroid/graphics/Bitmap;

    .line 1054
    iget-object v0, p0, Lcom/android/gallery3d/app/CropImage;->mCropView:Lcom/android/gallery3d/ui/CropView;

    new-instance v1, Lcom/android/gallery3d/ui/BitmapTileProvider;

    const/16 v2, 0x200

    invoke-direct {v1, p1, v2}, Lcom/android/gallery3d/ui/BitmapTileProvider;-><init>(Landroid/graphics/Bitmap;I)V

    iget-object v2, p0, Lcom/android/gallery3d/app/CropImage;->mMediaItem:Lcom/android/gallery3d/data/MediaItem;

    invoke-virtual {v2}, Lcom/android/gallery3d/data/MediaItem;->getRotation()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/android/gallery3d/ui/CropView;->setDataModel(Lcom/android/gallery3d/ui/TileImageView$Model;I)V

    .line 1056
    iget-boolean v0, p0, Lcom/android/gallery3d/app/CropImage;->mDoFaceDetection:Z

    if-eqz v0, :cond_1

    .line 1057
    iget-object v0, p0, Lcom/android/gallery3d/app/CropImage;->mCropView:Lcom/android/gallery3d/ui/CropView;

    invoke-virtual {v0, p1}, Lcom/android/gallery3d/ui/CropView;->detectFaces(Landroid/graphics/Bitmap;)V

    .line 1061
    :goto_1
    iget-object v0, p0, Lcom/android/gallery3d/app/CropImage;->mTabView:Lcom/android/gallery3d/ui/SimpleTabWidget;

    invoke-virtual {v0, v3}, Lcom/android/gallery3d/ui/SimpleTabWidget;->setClickable(Z)V

    goto :goto_0

    .line 1059
    :cond_1
    iget-object v0, p0, Lcom/android/gallery3d/app/CropImage;->mCropView:Lcom/android/gallery3d/ui/CropView;

    invoke-virtual {v0}, Lcom/android/gallery3d/ui/CropView;->initializeHighlightRectangle()V

    goto :goto_1
.end method

.method private onBitmapRegionDecoderAvailable(Landroid/graphics/BitmapRegionDecoder;)V
    .locals 9
    .parameter "regionDecoder"

    .prologue
    const v8, 0x7f0d024c

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 1005
    if-nez p1, :cond_0

    .line 1006
    invoke-static {p0, v8, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    .line 1007
    invoke-virtual {p0}, Lcom/android/gallery3d/app/CropImage;->finish()V

    .line 1042
    :goto_0
    return-void

    .line 1010
    :cond_0
    iput-object p1, p0, Lcom/android/gallery3d/app/CropImage;->mRegionDecoder:Landroid/graphics/BitmapRegionDecoder;

    .line 1011
    iput-boolean v7, p0, Lcom/android/gallery3d/app/CropImage;->mUseRegionDecoder:Z

    .line 1012
    iput v7, p0, Lcom/android/gallery3d/app/CropImage;->mState:I

    .line 1014
    new-instance v2, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v2}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 1015
    .local v2, options:Landroid/graphics/BitmapFactory$Options;
    invoke-virtual {p1}, Landroid/graphics/BitmapRegionDecoder;->getWidth()I

    move-result v3

    .line 1016
    .local v3, width:I
    invoke-virtual {p1}, Landroid/graphics/BitmapRegionDecoder;->getHeight()I

    move-result v1

    .line 1017
    .local v1, height:I
    const/4 v4, -0x1

    const v5, 0x75300

    invoke-static {v3, v1, v4, v5}, Lcom/android/gallery3d/common/BitmapUtils;->computeSampleSize(IIII)I

    move-result v4

    iput v4, v2, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 1019
    new-instance v4, Landroid/graphics/Rect;

    invoke-direct {v4, v6, v6, v3, v1}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-virtual {p1, v4, v2}, Landroid/graphics/BitmapRegionDecoder;->decodeRegion(Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v4

    iput-object v4, p0, Lcom/android/gallery3d/app/CropImage;->mBitmap:Landroid/graphics/Bitmap;

    .line 1022
    iget-object v4, p0, Lcom/android/gallery3d/app/CropImage;->mBitmap:Landroid/graphics/Bitmap;

    if-nez v4, :cond_1

    .line 1023
    invoke-static {p0, v8, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    .line 1024
    invoke-virtual {p0}, Lcom/android/gallery3d/app/CropImage;->finish()V

    goto :goto_0

    .line 1029
    :cond_1
    new-instance v4, Lcom/android/gallery3d/ui/BitmapScreenNail;

    iget-object v5, p0, Lcom/android/gallery3d/app/CropImage;->mBitmap:Landroid/graphics/Bitmap;

    invoke-direct {v4, v5}, Lcom/android/gallery3d/ui/BitmapScreenNail;-><init>(Landroid/graphics/Bitmap;)V

    iput-object v4, p0, Lcom/android/gallery3d/app/CropImage;->mBitmapScreenNail:Lcom/android/gallery3d/ui/BitmapScreenNail;

    .line 1031
    new-instance v0, Lcom/android/gallery3d/ui/TileImageViewAdapter;

    invoke-direct {v0}, Lcom/android/gallery3d/ui/TileImageViewAdapter;-><init>()V

    .line 1032
    .local v0, adapter:Lcom/android/gallery3d/ui/TileImageViewAdapter;
    iget-object v4, p0, Lcom/android/gallery3d/app/CropImage;->mBitmapScreenNail:Lcom/android/gallery3d/ui/BitmapScreenNail;

    invoke-virtual {v0, v4, v3, v1}, Lcom/android/gallery3d/ui/TileImageViewAdapter;->setScreenNail(Lcom/android/gallery3d/ui/ScreenNail;II)V

    .line 1033
    invoke-virtual {v0, p1}, Lcom/android/gallery3d/ui/TileImageViewAdapter;->setRegionDecoder(Landroid/graphics/BitmapRegionDecoder;)V

    .line 1035
    iget-object v4, p0, Lcom/android/gallery3d/app/CropImage;->mCropView:Lcom/android/gallery3d/ui/CropView;

    iget-object v5, p0, Lcom/android/gallery3d/app/CropImage;->mMediaItem:Lcom/android/gallery3d/data/MediaItem;

    invoke-virtual {v5}, Lcom/android/gallery3d/data/MediaItem;->getFullImageRotation()I

    move-result v5

    invoke-virtual {v4, v0, v5}, Lcom/android/gallery3d/ui/CropView;->setDataModel(Lcom/android/gallery3d/ui/TileImageView$Model;I)V

    .line 1036
    iget-boolean v4, p0, Lcom/android/gallery3d/app/CropImage;->mDoFaceDetection:Z

    if-eqz v4, :cond_2

    .line 1037
    iget-object v4, p0, Lcom/android/gallery3d/app/CropImage;->mCropView:Lcom/android/gallery3d/ui/CropView;

    iget-object v5, p0, Lcom/android/gallery3d/app/CropImage;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v4, v5}, Lcom/android/gallery3d/ui/CropView;->detectFaces(Landroid/graphics/Bitmap;)V

    .line 1041
    :goto_1
    iget-object v4, p0, Lcom/android/gallery3d/app/CropImage;->mTabView:Lcom/android/gallery3d/ui/SimpleTabWidget;

    invoke-virtual {v4, v7}, Lcom/android/gallery3d/ui/SimpleTabWidget;->setClickable(Z)V

    goto :goto_0

    .line 1039
    :cond_2
    iget-object v4, p0, Lcom/android/gallery3d/app/CropImage;->mCropView:Lcom/android/gallery3d/ui/CropView;

    invoke-virtual {v4}, Lcom/android/gallery3d/ui/CropView;->initializeHighlightRectangle()V

    goto :goto_1
.end method

.method private onSaveClicked()V
    .locals 7

    .prologue
    .line 808
    invoke-virtual {p0}, Lcom/android/gallery3d/app/CropImage;->getIntent()Landroid/content/Intent;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    .line 809
    .local v1, extra:Landroid/os/Bundle;
    iget-object v3, p0, Lcom/android/gallery3d/app/CropImage;->mCropView:Lcom/android/gallery3d/ui/CropView;

    invoke-virtual {v3}, Lcom/android/gallery3d/ui/CropView;->getCropRectangle()Landroid/graphics/RectF;

    move-result-object v0

    .line 810
    .local v0, cropRect:Landroid/graphics/RectF;
    if-nez v0, :cond_0

    .line 832
    :goto_0
    return-void

    .line 811
    :cond_0
    const/4 v3, 0x2

    iput v3, p0, Lcom/android/gallery3d/app/CropImage;->mState:I

    .line 812
    if-eqz v1, :cond_1

    const-string v3, "set-as-wallpaper"

    invoke-virtual {v1, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    const v2, 0x7f0d0261

    .line 815
    .local v2, messageId:I
    :goto_1
    const/4 v3, 0x0

    invoke-virtual {p0, v2}, Lcom/android/gallery3d/app/CropImage;->getString(I)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x1

    const/4 v6, 0x0

    invoke-static {p0, v3, v4, v5, v6}, Landroid/app/ProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZZ)Landroid/app/ProgressDialog;

    move-result-object v3

    iput-object v3, p0, Lcom/android/gallery3d/app/CropImage;->mProgressDialog:Landroid/app/ProgressDialog;

    .line 817
    invoke-virtual {p0}, Lcom/android/gallery3d/app/CropImage;->getThreadPool()Lcom/android/gallery3d/util/ThreadPool;

    move-result-object v3

    new-instance v4, Lcom/android/gallery3d/app/CropImage$SaveOutput;

    invoke-direct {v4, p0, v0}, Lcom/android/gallery3d/app/CropImage$SaveOutput;-><init>(Lcom/android/gallery3d/app/CropImage;Landroid/graphics/RectF;)V

    new-instance v5, Lcom/android/gallery3d/app/CropImage$5;

    invoke-direct {v5, p0}, Lcom/android/gallery3d/app/CropImage$5;-><init>(Lcom/android/gallery3d/app/CropImage;)V

    invoke-virtual {v3, v4, v5}, Lcom/android/gallery3d/util/ThreadPool;->submit(Lcom/android/gallery3d/util/ThreadPool$Job;Lcom/android/gallery3d/util/FutureListener;)Lcom/android/gallery3d/util/Future;

    move-result-object v3

    iput-object v3, p0, Lcom/android/gallery3d/app/CropImage;->mSaveTask:Lcom/android/gallery3d/util/Future;

    goto :goto_0

    .line 812
    .end local v2           #messageId:I
    :cond_1
    const v2, 0x7f0d0254

    goto :goto_1
.end method

.method private resizeWallpaperIfNeeded(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 14
    .parameter "wallpaper"

    .prologue
    const/4 v13, 0x0

    const/4 v10, 0x0

    .line 511
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v8

    .line 512
    .local v8, srcWidth:I
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v7

    .line 513
    .local v7, srcHeight:I
    iget v3, p0, Lcom/android/gallery3d/app/CropImage;->mScrollableWallpaperWidth:I

    .line 514
    .local v3, destWidth:I
    iget v2, p0, Lcom/android/gallery3d/app/CropImage;->mScrollableWallpaperHeight:I

    .line 515
    .local v2, destHeight:I
    iget-boolean v9, p0, Lcom/android/gallery3d/app/CropImage;->mIsWallpaperFixed:Z

    if-eqz v9, :cond_0

    if-ne v8, v3, :cond_1

    if-ne v7, v2, :cond_1

    :cond_0
    move-object v5, p1

    .line 530
    :goto_0
    return-object v5

    .line 518
    :cond_1
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1, v10, v10, v3, v2}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 519
    .local v1, dest:Landroid/graphics/Rect;
    new-instance v6, Landroid/graphics/Rect;

    invoke-direct {v6, v10, v10, v8, v7}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 520
    .local v6, src:Landroid/graphics/Rect;
    sget-object v9, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v3, v2, v9}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v5

    .line 521
    .local v5, result:Landroid/graphics/Bitmap;
    new-instance v0, Landroid/graphics/Canvas;

    invoke-direct {v0, v5}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 522
    .local v0, canvas:Landroid/graphics/Canvas;
    invoke-virtual {v1, v6}, Landroid/graphics/Rect;->contains(Landroid/graphics/Rect;)Z

    move-result v9

    if-eqz v9, :cond_2

    .line 523
    new-instance v4, Landroid/graphics/Rect;

    iget v9, v6, Landroid/graphics/Rect;->right:I

    iget v10, v6, Landroid/graphics/Rect;->top:I

    iget v11, v1, Landroid/graphics/Rect;->right:I

    iget v12, v1, Landroid/graphics/Rect;->bottom:I

    invoke-direct {v4, v9, v10, v11, v12}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 524
    .local v4, other:Landroid/graphics/Rect;
    invoke-virtual {v0, p1, v6, v6, v13}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 525
    invoke-virtual {v0, p1, v6, v4, v13}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 529
    .end local v4           #other:Landroid/graphics/Rect;
    :goto_1
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->recycle()V

    goto :goto_0

    .line 527
    :cond_2
    invoke-virtual {v0, p1, v6, v1, v13}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    goto :goto_1
.end method

.method private static rotateCanvas(Landroid/graphics/Canvas;III)V
    .locals 2
    .parameter "canvas"
    .parameter "width"
    .parameter "height"
    .parameter "rotation"

    .prologue
    .line 931
    div-int/lit8 v0, p1, 0x2

    int-to-float v0, v0

    div-int/lit8 v1, p2, 0x2

    int-to-float v1, v1

    invoke-virtual {p0, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    .line 932
    int-to-float v0, p3

    invoke-virtual {p0, v0}, Landroid/graphics/Canvas;->rotate(F)V

    .line 933
    div-int/lit8 v0, p3, 0x5a

    and-int/lit8 v0, v0, 0x1

    if-nez v0, :cond_0

    .line 934
    neg-int v0, p1

    div-int/lit8 v0, v0, 0x2

    int-to-float v0, v0

    neg-int v1, p2

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    invoke-virtual {p0, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    .line 938
    :goto_0
    return-void

    .line 936
    :cond_0
    neg-int v0, p2

    div-int/lit8 v0, v0, 0x2

    int-to-float v0, v0

    neg-int v1, p1

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    invoke-virtual {p0, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    goto :goto_0
.end method

.method private static rotateRectangle(Landroid/graphics/Rect;III)V
    .locals 3
    .parameter "rect"
    .parameter "width"
    .parameter "height"
    .parameter "rotation"

    .prologue
    .line 942
    if-eqz p3, :cond_0

    const/16 v2, 0x168

    if-ne p3, v2, :cond_1

    .line 966
    :cond_0
    :goto_0
    return-void

    .line 944
    :cond_1
    invoke-virtual {p0}, Landroid/graphics/Rect;->width()I

    move-result v1

    .line 945
    .local v1, w:I
    invoke-virtual {p0}, Landroid/graphics/Rect;->height()I

    move-result v0

    .line 946
    .local v0, h:I
    sparse-switch p3, :sswitch_data_0

    .line 968
    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    throw v2

    .line 948
    :sswitch_0
    iget v2, p0, Landroid/graphics/Rect;->left:I

    iput v2, p0, Landroid/graphics/Rect;->top:I

    .line 949
    iget v2, p0, Landroid/graphics/Rect;->bottom:I

    sub-int v2, p2, v2

    iput v2, p0, Landroid/graphics/Rect;->left:I

    .line 950
    iget v2, p0, Landroid/graphics/Rect;->left:I

    add-int/2addr v2, v0

    iput v2, p0, Landroid/graphics/Rect;->right:I

    .line 951
    iget v2, p0, Landroid/graphics/Rect;->top:I

    add-int/2addr v2, v1

    iput v2, p0, Landroid/graphics/Rect;->bottom:I

    goto :goto_0

    .line 955
    :sswitch_1
    iget v2, p0, Landroid/graphics/Rect;->right:I

    sub-int v2, p1, v2

    iput v2, p0, Landroid/graphics/Rect;->left:I

    .line 956
    iget v2, p0, Landroid/graphics/Rect;->bottom:I

    sub-int v2, p2, v2

    iput v2, p0, Landroid/graphics/Rect;->top:I

    .line 957
    iget v2, p0, Landroid/graphics/Rect;->left:I

    add-int/2addr v2, v1

    iput v2, p0, Landroid/graphics/Rect;->right:I

    .line 958
    iget v2, p0, Landroid/graphics/Rect;->top:I

    add-int/2addr v2, v0

    iput v2, p0, Landroid/graphics/Rect;->bottom:I

    goto :goto_0

    .line 962
    :sswitch_2
    iget v2, p0, Landroid/graphics/Rect;->top:I

    iput v2, p0, Landroid/graphics/Rect;->left:I

    .line 963
    iget v2, p0, Landroid/graphics/Rect;->right:I

    sub-int v2, p1, v2

    iput v2, p0, Landroid/graphics/Rect;->top:I

    .line 964
    iget v2, p0, Landroid/graphics/Rect;->left:I

    add-int/2addr v2, v0

    iput v2, p0, Landroid/graphics/Rect;->right:I

    .line 965
    iget v2, p0, Landroid/graphics/Rect;->top:I

    add-int/2addr v2, v1

    iput v2, p0, Landroid/graphics/Rect;->bottom:I

    goto :goto_0

    .line 946
    nop

    :sswitch_data_0
    .sparse-switch
        0x5a -> :sswitch_0
        0xb4 -> :sswitch_1
        0x10e -> :sswitch_2
    .end sparse-switch
.end method

.method private saveBitmapToOutputStream(Lcom/android/gallery3d/util/ThreadPool$JobContext;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap$CompressFormat;Ljava/io/OutputStream;)Z
    .locals 3
    .parameter "jc"
    .parameter "bitmap"
    .parameter "format"
    .parameter "os"

    .prologue
    const/4 v2, 0x0

    .line 754
    new-instance v0, Lcom/android/gallery3d/util/InterruptableOutputStream;

    invoke-direct {v0, p4}, Lcom/android/gallery3d/util/InterruptableOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 755
    .local v0, ios:Lcom/android/gallery3d/util/InterruptableOutputStream;
    new-instance v1, Lcom/android/gallery3d/app/CropImage$4;

    invoke-direct {v1, p0, v0}, Lcom/android/gallery3d/app/CropImage$4;-><init>(Lcom/android/gallery3d/app/CropImage;Lcom/android/gallery3d/util/InterruptableOutputStream;)V

    invoke-interface {p1, v1}, Lcom/android/gallery3d/util/ThreadPool$JobContext;->setCancelListener(Lcom/android/gallery3d/util/ThreadPool$CancelListener;)V

    .line 762
    const/16 v1, 0x5a

    :try_start_0
    invoke-virtual {p2, p3, v1, v0}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 763
    invoke-interface {p1}, Lcom/android/gallery3d/util/ThreadPool$JobContext;->isCancelled()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x1

    .line 765
    :goto_0
    invoke-interface {p1, v2}, Lcom/android/gallery3d/util/ThreadPool$JobContext;->setCancelListener(Lcom/android/gallery3d/util/ThreadPool$CancelListener;)V

    .line 766
    invoke-static {v0}, Lcom/android/gallery3d/common/Utils;->closeSilently(Ljava/io/Closeable;)V

    return v1

    .line 763
    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    .line 765
    :catchall_0
    move-exception v1

    invoke-interface {p1, v2}, Lcom/android/gallery3d/util/ThreadPool$JobContext;->setCancelListener(Lcom/android/gallery3d/util/ThreadPool$CancelListener;)V

    .line 766
    invoke-static {v0}, Lcom/android/gallery3d/common/Utils;->closeSilently(Ljava/io/Closeable;)V

    throw v1
.end method

.method private saveBitmapToUri(Lcom/android/gallery3d/util/ThreadPool$JobContext;Landroid/graphics/Bitmap;Landroid/net/Uri;)Z
    .locals 4
    .parameter "jc"
    .parameter "bitmap"
    .parameter "uri"

    .prologue
    .line 772
    :try_start_0
    invoke-virtual {p0}, Lcom/android/gallery3d/app/CropImage;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-virtual {v2, p3}, Landroid/content/ContentResolver;->openOutputStream(Landroid/net/Uri;)Ljava/io/OutputStream;
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 774
    .local v1, out:Ljava/io/OutputStream;
    :try_start_1
    invoke-direct {p0}, Lcom/android/gallery3d/app/CropImage;->getFileExtension()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/gallery3d/app/CropImage;->convertExtensionToCompressFormat(Ljava/lang/String;)Landroid/graphics/Bitmap$CompressFormat;

    move-result-object v2

    invoke-direct {p0, p1, p2, v2, v1}, Lcom/android/gallery3d/app/CropImage;->saveBitmapToOutputStream(Lcom/android/gallery3d/util/ThreadPool$JobContext;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap$CompressFormat;Ljava/io/OutputStream;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v2

    .line 777
    :try_start_2
    invoke-static {v1}, Lcom/android/gallery3d/common/Utils;->closeSilently(Ljava/io/Closeable;)V

    .line 782
    .end local v1           #out:Ljava/io/OutputStream;
    :goto_0
    return v2

    .line 777
    .restart local v1       #out:Ljava/io/OutputStream;
    :catchall_0
    move-exception v2

    invoke-static {v1}, Lcom/android/gallery3d/common/Utils;->closeSilently(Ljava/io/Closeable;)V

    throw v2
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_0

    .line 779
    .end local v1           #out:Ljava/io/OutputStream;
    :catch_0
    move-exception v0

    .line 780
    .local v0, e:Ljava/io/FileNotFoundException;
    const-string v2, "CropImage"

    const-string v3, "cannot write output"

    invoke-static {v2, v3, v0}, Lcom/android/gallery3d/app/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 782
    const/4 v2, 0x1

    goto :goto_0
.end method

.method private saveGenericImage(Lcom/android/gallery3d/util/ThreadPool$JobContext;Landroid/graphics/Bitmap;)Landroid/net/Uri;
    .locals 12
    .parameter "jc"
    .parameter "cropped"

    .prologue
    const-wide/16 v10, 0x3e8

    const/4 v5, 0x0

    .line 723
    sget-object v0, Lcom/android/gallery3d/app/CropImage;->DOWNLOAD_BUCKET:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/android/gallery3d/app/CropImage;->DOWNLOAD_BUCKET:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    move-result v0

    if-nez v0, :cond_0

    .line 724
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "cannot create download folder"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 727
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    .line 728
    .local v6, now:J
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "\'IMG\'_yyyyMMdd_HHmmss"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    new-instance v1, Ljava/util/Date;

    invoke-direct {v1, v6, v7}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v4

    .line 731
    .local v4, filename:Ljava/lang/String;
    sget-object v3, Lcom/android/gallery3d/app/CropImage;->DOWNLOAD_BUCKET:Ljava/io/File;

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    invoke-direct/range {v0 .. v5}, Lcom/android/gallery3d/app/CropImage;->saveMedia(Lcom/android/gallery3d/util/ThreadPool$JobContext;Landroid/graphics/Bitmap;Ljava/io/File;Ljava/lang/String;Lcom/android/gallery3d/exif/ExifData;)Ljava/io/File;

    move-result-object v8

    .line 732
    .local v8, output:Ljava/io/File;
    if-nez v8, :cond_1

    .line 747
    :goto_0
    return-object v5

    .line 734
    :cond_1
    new-instance v9, Landroid/content/ContentValues;

    invoke-direct {v9}, Landroid/content/ContentValues;-><init>()V

    .line 735
    .local v9, values:Landroid/content/ContentValues;
    const-string v0, "title"

    invoke-virtual {v9, v0, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 736
    const-string v0, "_display_name"

    invoke-virtual {v8}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v9, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 737
    const-string v0, "datetaken"

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v9, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 738
    const-string v0, "date_modified"

    div-long v1, v6, v10

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v9, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 739
    const-string v0, "date_added"

    div-long v1, v6, v10

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v9, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 740
    const-string v0, "mime_type"

    invoke-direct {p0}, Lcom/android/gallery3d/app/CropImage;->getOutputMimeType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v9, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 741
    const-string v0, "orientation"

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v9, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 742
    const-string v0, "_data"

    invoke-virtual {v8}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v9, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 743
    const-string v0, "_size"

    invoke-virtual {v8}, Ljava/io/File;->length()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v9, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 745
    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    invoke-static {v9, v0, v1}, Lcom/android/gallery3d/app/CropImage;->setImageSize(Landroid/content/ContentValues;II)V

    .line 747
    invoke-virtual {p0}, Lcom/android/gallery3d/app/CropImage;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0, v1, v9}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v5

    goto :goto_0
.end method

.method private saveLocalImage(Lcom/android/gallery3d/util/ThreadPool$JobContext;Landroid/graphics/Bitmap;)Landroid/net/Uri;
    .locals 15
    .parameter "jc"
    .parameter "cropped"

    .prologue
    .line 680
    iget-object v6, p0, Lcom/android/gallery3d/app/CropImage;->mMediaItem:Lcom/android/gallery3d/data/MediaItem;

    check-cast v6, Lcom/android/gallery3d/data/LocalImage;

    .line 682
    .local v6, localImage:Lcom/android/gallery3d/data/LocalImage;
    new-instance v9, Ljava/io/File;

    iget-object v0, v6, Lcom/android/gallery3d/data/LocalMediaItem;->filePath:Ljava/lang/String;

    invoke-direct {v9, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 683
    .local v9, oldPath:Ljava/io/File;
    new-instance v3, Ljava/io/File;

    invoke-virtual {v9}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 685
    .local v3, directory:Ljava/io/File;
    invoke-virtual {v9}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v4

    .line 686
    .local v4, filename:Ljava/lang/String;
    const/16 v0, 0x2e

    invoke-virtual {v4, v0}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v11

    .line 687
    .local v11, pos:I
    if-ltz v11, :cond_0

    const/4 v0, 0x0

    invoke-virtual {v4, v0, v11}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    .line 688
    :cond_0
    const/4 v10, 0x0

    .line 690
    .local v10, output:Ljava/io/File;
    const/4 v5, 0x0

    .line 691
    .local v5, exifData:Lcom/android/gallery3d/exif/ExifData;
    invoke-direct {p0}, Lcom/android/gallery3d/app/CropImage;->getFileExtension()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/gallery3d/app/CropImage;->convertExtensionToCompressFormat(Ljava/lang/String;)Landroid/graphics/Bitmap$CompressFormat;

    move-result-object v0

    sget-object v1, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    if-ne v0, v1, :cond_1

    .line 692
    invoke-virtual {v9}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/gallery3d/app/CropImage;->getExifData(Ljava/lang/String;)Lcom/android/gallery3d/exif/ExifData;

    move-result-object v5

    .line 693
    if-eqz v5, :cond_1

    .line 694
    invoke-virtual/range {p2 .. p2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    invoke-virtual/range {p2 .. p2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    invoke-direct {p0, v5, v0, v1}, Lcom/android/gallery3d/app/CropImage;->changeExifData(Lcom/android/gallery3d/exif/ExifData;II)V

    :cond_1
    move-object v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    .line 697
    invoke-direct/range {v0 .. v5}, Lcom/android/gallery3d/app/CropImage;->saveMedia(Lcom/android/gallery3d/util/ThreadPool$JobContext;Landroid/graphics/Bitmap;Ljava/io/File;Ljava/lang/String;Lcom/android/gallery3d/exif/ExifData;)Ljava/io/File;

    move-result-object v10

    .line 698
    if-nez v10, :cond_2

    const/4 v0, 0x0

    .line 718
    :goto_0
    return-object v0

    .line 700
    :cond_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-wide/16 v13, 0x3e8

    div-long v7, v0, v13

    .line 701
    .local v7, now:J
    new-instance v12, Landroid/content/ContentValues;

    invoke-direct {v12}, Landroid/content/ContentValues;-><init>()V

    .line 702
    .local v12, values:Landroid/content/ContentValues;
    const-string v0, "title"

    iget-object v1, v6, Lcom/android/gallery3d/data/LocalMediaItem;->caption:Ljava/lang/String;

    invoke-virtual {v12, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 703
    const-string v0, "_display_name"

    invoke-virtual {v10}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v12, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 704
    const-string v0, "datetaken"

    iget-wide v1, v6, Lcom/android/gallery3d/data/LocalMediaItem;->dateTakenInMs:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v12, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 705
    const-string v0, "date_modified"

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v12, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 706
    const-string v0, "date_added"

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v12, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 707
    const-string v0, "mime_type"

    invoke-direct {p0}, Lcom/android/gallery3d/app/CropImage;->getOutputMimeType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v12, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 708
    const-string v0, "orientation"

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v12, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 709
    const-string v0, "_data"

    invoke-virtual {v10}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v12, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 710
    const-string v0, "_size"

    invoke-virtual {v10}, Ljava/io/File;->length()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v12, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 712
    invoke-virtual/range {p2 .. p2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    invoke-virtual/range {p2 .. p2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    invoke-static {v12, v0, v1}, Lcom/android/gallery3d/app/CropImage;->setImageSize(Landroid/content/ContentValues;II)V

    .line 714
    iget-wide v0, v6, Lcom/android/gallery3d/data/LocalMediaItem;->latitude:D

    iget-wide v13, v6, Lcom/android/gallery3d/data/LocalMediaItem;->longitude:D

    invoke-static {v0, v1, v13, v14}, Lcom/android/gallery3d/util/GalleryUtils;->isValidLocation(DD)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 715
    const-string v0, "latitude"

    iget-wide v1, v6, Lcom/android/gallery3d/data/LocalMediaItem;->latitude:D

    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    invoke-virtual {v12, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Double;)V

    .line 716
    const-string v0, "longitude"

    iget-wide v1, v6, Lcom/android/gallery3d/data/LocalMediaItem;->longitude:D

    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    invoke-virtual {v12, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Double;)V

    .line 718
    :cond_3
    invoke-virtual {p0}, Lcom/android/gallery3d/app/CropImage;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0, v1, v12}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v0

    goto/16 :goto_0
.end method

.method private saveLockscreenBitmap(Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 10
    .parameter "theme"
    .parameter "cropped"

    .prologue
    .line 467
    new-instance v4, Ljava/io/File;

    sget-object v6, Lcom/android/gallery3d/app/CropImage;->PATH_WALLPAPER:Ljava/lang/String;

    invoke-direct {v4, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 468
    .local v4, screenDir:Ljava/io/File;
    const/4 v2, 0x0

    .line 469
    .local v2, fileOutputSteam:Ljava/io/FileOutputStream;
    invoke-virtual {v4}, Ljava/io/File;->isDirectory()Z

    move-result v6

    if-eqz v6, :cond_1

    if-eqz p2, :cond_1

    .line 472
    :try_start_0
    iget-boolean v6, p0, Lcom/android/gallery3d/app/CropImage;->mIsUnlockWallpaper:Z

    if-eqz v6, :cond_2

    .line 473
    const-string v1, "unlock_wallpaper_0.jpg"

    .line 477
    .local v1, fileName:Ljava/lang/String;
    :goto_0
    new-instance v5, Ljava/io/File;

    invoke-direct {v5, v4, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 478
    .local v5, screenFile:Ljava/io/File;
    new-instance v3, Ljava/io/FileOutputStream;

    invoke-direct {v3, v5}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 479
    .end local v2           #fileOutputSteam:Ljava/io/FileOutputStream;
    .local v3, fileOutputSteam:Ljava/io/FileOutputStream;
    :try_start_1
    sget-object v6, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v7, 0x5a

    invoke-virtual {p2, v6, v7, v3}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 480
    invoke-virtual {v5}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v6

    const/16 v7, 0x1ff

    const/4 v8, -0x1

    const/4 v9, -0x1

    invoke-static {v6, v7, v8, v9}, Landroid/os/FileUtils;->setPermissions(Ljava/lang/String;III)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_4

    .line 486
    if-eqz v3, :cond_0

    .line 487
    :try_start_2
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    :cond_0
    move-object v2, v3

    .line 494
    .end local v1           #fileName:Ljava/lang/String;
    .end local v3           #fileOutputSteam:Ljava/io/FileOutputStream;
    .end local v5           #screenFile:Ljava/io/File;
    .restart local v2       #fileOutputSteam:Ljava/io/FileOutputStream;
    :cond_1
    :goto_1
    return-void

    .line 475
    :cond_2
    :try_start_3
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "gallery_"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "_wallpaper_0.jpg"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    move-result-object v1

    .restart local v1       #fileName:Ljava/lang/String;
    goto :goto_0

    .line 489
    .end local v2           #fileOutputSteam:Ljava/io/FileOutputStream;
    .restart local v3       #fileOutputSteam:Ljava/io/FileOutputStream;
    .restart local v5       #screenFile:Ljava/io/File;
    :catch_0
    move-exception v0

    .line 490
    .local v0, e:Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    move-object v2, v3

    .line 492
    .end local v3           #fileOutputSteam:Ljava/io/FileOutputStream;
    .restart local v2       #fileOutputSteam:Ljava/io/FileOutputStream;
    goto :goto_1

    .line 482
    .end local v0           #e:Ljava/io/IOException;
    .end local v1           #fileName:Ljava/lang/String;
    .end local v5           #screenFile:Ljava/io/File;
    :catch_1
    move-exception v0

    .line 483
    .local v0, e:Ljava/lang/Exception;
    :goto_2
    :try_start_4
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 486
    if-eqz v2, :cond_1

    .line 487
    :try_start_5
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2

    goto :goto_1

    .line 489
    :catch_2
    move-exception v0

    .line 490
    .local v0, e:Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    .line 485
    .end local v0           #e:Ljava/io/IOException;
    :catchall_0
    move-exception v6

    .line 486
    :goto_3
    if-eqz v2, :cond_3

    .line 487
    :try_start_6
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_3

    .line 491
    :cond_3
    :goto_4
    throw v6

    .line 489
    :catch_3
    move-exception v0

    .line 490
    .restart local v0       #e:Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_4

    .line 485
    .end local v0           #e:Ljava/io/IOException;
    .end local v2           #fileOutputSteam:Ljava/io/FileOutputStream;
    .restart local v1       #fileName:Ljava/lang/String;
    .restart local v3       #fileOutputSteam:Ljava/io/FileOutputStream;
    .restart local v5       #screenFile:Ljava/io/File;
    :catchall_1
    move-exception v6

    move-object v2, v3

    .end local v3           #fileOutputSteam:Ljava/io/FileOutputStream;
    .restart local v2       #fileOutputSteam:Ljava/io/FileOutputStream;
    goto :goto_3

    .line 482
    .end local v2           #fileOutputSteam:Ljava/io/FileOutputStream;
    .restart local v3       #fileOutputSteam:Ljava/io/FileOutputStream;
    :catch_4
    move-exception v0

    move-object v2, v3

    .end local v3           #fileOutputSteam:Ljava/io/FileOutputStream;
    .restart local v2       #fileOutputSteam:Ljava/io/FileOutputStream;
    goto :goto_2
.end method

.method private saveMedia(Lcom/android/gallery3d/util/ThreadPool$JobContext;Landroid/graphics/Bitmap;Ljava/io/File;Ljava/lang/String;Lcom/android/gallery3d/exif/ExifData;)Ljava/io/File;
    .locals 9
    .parameter "jc"
    .parameter "cropped"
    .parameter "directory"
    .parameter "filename"
    .parameter "exifData"

    .prologue
    .line 547
    const/4 v0, 0x0

    .line 548
    .local v0, candidate:Ljava/io/File;
    invoke-direct {p0}, Lcom/android/gallery3d/app/CropImage;->getFileExtension()Ljava/lang/String;

    move-result-object v3

    .line 549
    .local v3, fileExtension:Ljava/lang/String;
    const/4 v5, 0x1

    .local v5, i:I
    :goto_0
    const/16 v6, 0x3e8

    if-ge v5, v6, :cond_0

    .line 550
    new-instance v0, Ljava/io/File;

    .end local v0           #candidate:Ljava/io/File;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "-"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "."

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v0, p3, v6}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 553
    .restart local v0       #candidate:Ljava/io/File;
    :try_start_0
    invoke-virtual {v0}, Ljava/io/File;->createNewFile()Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v6

    if-eqz v6, :cond_2

    .line 560
    :cond_0
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-virtual {v0}, Ljava/io/File;->isFile()Z

    move-result v6

    if-nez v6, :cond_3

    .line 561
    :cond_1
    new-instance v6, Ljava/lang/RuntimeException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "cannot create file: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 554
    :catch_0
    move-exception v1

    .line 555
    .local v1, e:Ljava/io/IOException;
    const-string v6, "CropImage"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "fail to create new file: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7, v1}, Lcom/android/gallery3d/app/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 557
    const/4 v6, 0x0

    .line 594
    .end local v1           #e:Ljava/io/IOException;
    :goto_1
    return-object v6

    .line 549
    :cond_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 564
    :cond_3
    const/4 v6, 0x1

    const/4 v7, 0x0

    invoke-virtual {v0, v6, v7}, Ljava/io/File;->setReadable(ZZ)Z

    .line 565
    const/4 v6, 0x1

    const/4 v7, 0x0

    invoke-virtual {v0, v6, v7}, Ljava/io/File;->setWritable(ZZ)Z

    .line 568
    :try_start_1
    new-instance v4, Ljava/io/FileOutputStream;

    invoke-direct {v4, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 570
    .local v4, fos:Ljava/io/FileOutputStream;
    if-eqz p5, :cond_4

    .line 571
    :try_start_2
    new-instance v2, Lcom/android/gallery3d/exif/ExifOutputStream;

    invoke-direct {v2, v4}, Lcom/android/gallery3d/exif/ExifOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 572
    .local v2, eos:Lcom/android/gallery3d/exif/ExifOutputStream;
    invoke-virtual {v2, p5}, Lcom/android/gallery3d/exif/ExifOutputStream;->setExifData(Lcom/android/gallery3d/exif/ExifData;)V

    .line 573
    invoke-direct {p0, v3}, Lcom/android/gallery3d/app/CropImage;->convertExtensionToCompressFormat(Ljava/lang/String;)Landroid/graphics/Bitmap$CompressFormat;

    move-result-object v6

    invoke-direct {p0, p1, p2, v6, v2}, Lcom/android/gallery3d/app/CropImage;->saveBitmapToOutputStream(Lcom/android/gallery3d/util/ThreadPool$JobContext;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap$CompressFormat;Ljava/io/OutputStream;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 580
    .end local v2           #eos:Lcom/android/gallery3d/exif/ExifOutputStream;
    :goto_2
    :try_start_3
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    .line 589
    invoke-interface {p1}, Lcom/android/gallery3d/util/ThreadPool$JobContext;->isCancelled()Z

    move-result v6

    if-eqz v6, :cond_5

    .line 590
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 591
    const/4 v6, 0x0

    goto :goto_1

    .line 576
    :cond_4
    :try_start_4
    invoke-direct {p0, v3}, Lcom/android/gallery3d/app/CropImage;->convertExtensionToCompressFormat(Ljava/lang/String;)Landroid/graphics/Bitmap$CompressFormat;

    move-result-object v6

    invoke-direct {p0, p1, p2, v6, v4}, Lcom/android/gallery3d/app/CropImage;->saveBitmapToOutputStream(Lcom/android/gallery3d/util/ThreadPool$JobContext;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap$CompressFormat;Ljava/io/OutputStream;)Z
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_2

    .line 580
    :catchall_0
    move-exception v6

    :try_start_5
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V

    throw v6
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1

    .line 582
    .end local v4           #fos:Ljava/io/FileOutputStream;
    :catch_1
    move-exception v1

    .line 583
    .restart local v1       #e:Ljava/io/IOException;
    const-string v6, "CropImage"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "fail to save image: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7, v1}, Lcom/android/gallery3d/app/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 585
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 586
    const/4 v6, 0x0

    goto :goto_1

    .end local v1           #e:Ljava/io/IOException;
    .restart local v4       #fos:Ljava/io/FileOutputStream;
    :cond_5
    move-object v6, v0

    .line 594
    goto :goto_1
.end method

.method private savePicasaImage(Lcom/android/gallery3d/util/ThreadPool$JobContext;Landroid/graphics/Bitmap;)Landroid/net/Uri;
    .locals 15
    .parameter "jc"
    .parameter "cropped"

    .prologue
    .line 644
    sget-object v0, Lcom/android/gallery3d/app/CropImage;->DOWNLOAD_BUCKET:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/android/gallery3d/app/CropImage;->DOWNLOAD_BUCKET:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    move-result v0

    if-nez v0, :cond_0

    .line 645
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "cannot create download folder"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 647
    :cond_0
    iget-object v0, p0, Lcom/android/gallery3d/app/CropImage;->mMediaItem:Lcom/android/gallery3d/data/MediaItem;

    invoke-static {v0}, Lcom/android/gallery3d/picasasource/PicasaSource;->getImageTitle(Lcom/android/gallery3d/data/MediaObject;)Ljava/lang/String;

    move-result-object v4

    .line 648
    .local v4, filename:Ljava/lang/String;
    const/16 v0, 0x2e

    invoke-virtual {v4, v0}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v13

    .line 649
    .local v13, pos:I
    if-ltz v13, :cond_1

    const/4 v0, 0x0

    invoke-virtual {v4, v0, v13}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    .line 650
    :cond_1
    new-instance v5, Lcom/android/gallery3d/exif/ExifData;

    sget-object v0, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    invoke-direct {v5, v0}, Lcom/android/gallery3d/exif/ExifData;-><init>(Ljava/nio/ByteOrder;)V

    .line 651
    .local v5, exifData:Lcom/android/gallery3d/exif/ExifData;
    iget-object v0, p0, Lcom/android/gallery3d/app/CropImage;->mMediaItem:Lcom/android/gallery3d/data/MediaItem;

    invoke-static {v0, v5}, Lcom/android/gallery3d/picasasource/PicasaSource;->extractExifValues(Lcom/android/gallery3d/data/MediaObject;Lcom/android/gallery3d/exif/ExifData;)V

    .line 652
    invoke-virtual/range {p2 .. p2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    invoke-virtual/range {p2 .. p2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    invoke-direct {p0, v5, v0, v1}, Lcom/android/gallery3d/app/CropImage;->changeExifData(Lcom/android/gallery3d/exif/ExifData;II)V

    .line 653
    sget-object v3, Lcom/android/gallery3d/app/CropImage;->DOWNLOAD_BUCKET:Ljava/io/File;

    move-object v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    invoke-direct/range {v0 .. v5}, Lcom/android/gallery3d/app/CropImage;->saveMedia(Lcom/android/gallery3d/util/ThreadPool$JobContext;Landroid/graphics/Bitmap;Ljava/io/File;Ljava/lang/String;Lcom/android/gallery3d/exif/ExifData;)Ljava/io/File;

    move-result-object v12

    .line 654
    .local v12, output:Ljava/io/File;
    if-nez v12, :cond_2

    const/4 v0, 0x0

    .line 675
    :goto_0
    return-object v0

    .line 656
    :cond_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    div-long v10, v0, v2

    .line 657
    .local v10, now:J
    new-instance v14, Landroid/content/ContentValues;

    invoke-direct {v14}, Landroid/content/ContentValues;-><init>()V

    .line 658
    .local v14, values:Landroid/content/ContentValues;
    const-string v0, "title"

    iget-object v1, p0, Lcom/android/gallery3d/app/CropImage;->mMediaItem:Lcom/android/gallery3d/data/MediaItem;

    invoke-static {v1}, Lcom/android/gallery3d/picasasource/PicasaSource;->getImageTitle(Lcom/android/gallery3d/data/MediaObject;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v14, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 659
    const-string v0, "_display_name"

    invoke-virtual {v12}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v14, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 660
    const-string v0, "datetaken"

    iget-object v1, p0, Lcom/android/gallery3d/app/CropImage;->mMediaItem:Lcom/android/gallery3d/data/MediaItem;

    invoke-static {v1}, Lcom/android/gallery3d/picasasource/PicasaSource;->getDateTaken(Lcom/android/gallery3d/data/MediaObject;)J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v14, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 661
    const-string v0, "date_modified"

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v14, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 662
    const-string v0, "date_added"

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v14, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 663
    const-string v0, "mime_type"

    invoke-direct {p0}, Lcom/android/gallery3d/app/CropImage;->getOutputMimeType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v14, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 664
    const-string v0, "orientation"

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v14, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 665
    const-string v0, "_data"

    invoke-virtual {v12}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v14, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 666
    const-string v0, "_size"

    invoke-virtual {v12}, Ljava/io/File;->length()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v14, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 667
    invoke-virtual/range {p2 .. p2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    invoke-virtual/range {p2 .. p2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    invoke-static {v14, v0, v1}, Lcom/android/gallery3d/app/CropImage;->setImageSize(Landroid/content/ContentValues;II)V

    .line 669
    iget-object v0, p0, Lcom/android/gallery3d/app/CropImage;->mMediaItem:Lcom/android/gallery3d/data/MediaItem;

    invoke-static {v0}, Lcom/android/gallery3d/picasasource/PicasaSource;->getLatitude(Lcom/android/gallery3d/data/MediaObject;)D

    move-result-wide v6

    .line 670
    .local v6, latitude:D
    iget-object v0, p0, Lcom/android/gallery3d/app/CropImage;->mMediaItem:Lcom/android/gallery3d/data/MediaItem;

    invoke-static {v0}, Lcom/android/gallery3d/picasasource/PicasaSource;->getLongitude(Lcom/android/gallery3d/data/MediaObject;)D

    move-result-wide v8

    .line 671
    .local v8, longitude:D
    invoke-static {v6, v7, v8, v9}, Lcom/android/gallery3d/util/GalleryUtils;->isValidLocation(DD)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 672
    const-string v0, "latitude"

    invoke-static {v6, v7}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    invoke-virtual {v14, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Double;)V

    .line 673
    const-string v0, "longitude"

    invoke-static {v8, v9}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    invoke-virtual {v14, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Double;)V

    .line 675
    :cond_3
    invoke-virtual {p0}, Lcom/android/gallery3d/app/CropImage;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0, v1, v14}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v0

    goto/16 :goto_0
.end method

.method private saveToMediaProvider(Lcom/android/gallery3d/util/ThreadPool$JobContext;Landroid/graphics/Bitmap;)Landroid/net/Uri;
    .locals 1
    .parameter "jc"
    .parameter "cropped"

    .prologue
    .line 625
    iget-object v0, p0, Lcom/android/gallery3d/app/CropImage;->mMediaItem:Lcom/android/gallery3d/data/MediaItem;

    invoke-static {v0}, Lcom/android/gallery3d/picasasource/PicasaSource;->isPicasaImage(Lcom/android/gallery3d/data/MediaObject;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 626
    invoke-direct {p0, p1, p2}, Lcom/android/gallery3d/app/CropImage;->savePicasaImage(Lcom/android/gallery3d/util/ThreadPool$JobContext;Landroid/graphics/Bitmap;)Landroid/net/Uri;

    move-result-object v0

    .line 630
    :goto_0
    return-object v0

    .line 627
    :cond_0
    iget-object v0, p0, Lcom/android/gallery3d/app/CropImage;->mMediaItem:Lcom/android/gallery3d/data/MediaItem;

    instance-of v0, v0, Lcom/android/gallery3d/data/LocalImage;

    if-eqz v0, :cond_1

    .line 628
    invoke-direct {p0, p1, p2}, Lcom/android/gallery3d/app/CropImage;->saveLocalImage(Lcom/android/gallery3d/util/ThreadPool$JobContext;Landroid/graphics/Bitmap;)Landroid/net/Uri;

    move-result-object v0

    goto :goto_0

    .line 630
    :cond_1
    invoke-direct {p0, p1, p2}, Lcom/android/gallery3d/app/CropImage;->saveGenericImage(Lcom/android/gallery3d/util/ThreadPool$JobContext;Landroid/graphics/Bitmap;)Landroid/net/Uri;

    move-result-object v0

    goto :goto_0
.end method

.method private setAsWallpaper(Lcom/android/gallery3d/util/ThreadPool$JobContext;Landroid/graphics/Bitmap;)Z
    .locals 3
    .parameter "jc"
    .parameter "wallpaper"

    .prologue
    .line 535
    :try_start_0
    invoke-static {p0}, Landroid/app/WallpaperManager;->getInstance(Landroid/content/Context;)Landroid/app/WallpaperManager;

    move-result-object v1

    invoke-direct {p0, p2}, Lcom/android/gallery3d/app/CropImage;->resizeWallpaperIfNeeded(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/WallpaperManager;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 536
    invoke-virtual {p0}, Lcom/android/gallery3d/app/CropImage;->getAndroidContext()Landroid/content/Context;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/gallery3d/app/CropImage;->mIsWallpaperFixed:Z

    invoke-static {v1, v2}, Lcom/android/gallery3d/app/WallpaperConfig;->setWallpaperConfig(Landroid/content/Context;Z)Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 540
    :goto_0
    const/4 v1, 0x1

    return v1

    .line 537
    :catch_0
    move-exception v0

    .line 538
    .local v0, e:Ljava/io/IOException;
    const-string v1, "CropImage"

    const-string v2, "fail to set wall paper"

    invoke-static {v1, v2, v0}, Lcom/android/gallery3d/app/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private setCropParameters()V
    .locals 9

    .prologue
    const/4 v6, 0x0

    const/4 v8, 0x0

    .line 1065
    invoke-virtual {p0}, Lcom/android/gallery3d/app/CropImage;->getIntent()Landroid/content/Intent;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    .line 1066
    .local v2, extras:Landroid/os/Bundle;
    if-nez v2, :cond_1

    .line 1083
    :cond_0
    :goto_0
    return-void

    .line 1068
    :cond_1
    const-string v5, "aspectX"

    invoke-virtual {v2, v5, v6}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 1069
    .local v0, aspectX:I
    const-string v5, "aspectY"

    invoke-virtual {v2, v5, v6}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    .line 1070
    .local v1, aspectY:I
    if-eqz v0, :cond_2

    if-eqz v1, :cond_2

    .line 1071
    iget-object v5, p0, Lcom/android/gallery3d/app/CropImage;->mCropView:Lcom/android/gallery3d/ui/CropView;

    int-to-float v6, v0

    int-to-float v7, v1

    div-float/2addr v6, v7

    invoke-virtual {v5, v6}, Lcom/android/gallery3d/ui/CropView;->setAspectRatio(F)V

    .line 1074
    :cond_2
    const-string v5, "spotlightX"

    invoke-virtual {v2, v5, v8}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;F)F

    move-result v3

    .line 1075
    .local v3, spotlightX:F
    const-string v5, "spotlightY"

    invoke-virtual {v2, v5, v8}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;F)F

    move-result v4

    .line 1076
    .local v4, spotlightY:F
    cmpl-float v5, v3, v8

    if-eqz v5, :cond_3

    cmpl-float v5, v4, v8

    if-eqz v5, :cond_3

    .line 1077
    iget-object v5, p0, Lcom/android/gallery3d/app/CropImage;->mCropView:Lcom/android/gallery3d/ui/CropView;

    invoke-virtual {v5, v3, v4}, Lcom/android/gallery3d/ui/CropView;->setSpotlightRatio(FF)V

    .line 1080
    :cond_3
    iget-boolean v5, p0, Lcom/android/gallery3d/app/CropImage;->mIsWallpaperFixed:Z

    if-eqz v5, :cond_0

    .line 1081
    iget-object v5, p0, Lcom/android/gallery3d/app/CropImage;->mCropView:Lcom/android/gallery3d/ui/CropView;

    invoke-virtual {v5, v8, v8}, Lcom/android/gallery3d/ui/CropView;->setSpotlightRatio(FF)V

    goto :goto_0
.end method

.method private static setImageSize(Landroid/content/ContentValues;II)V
    .locals 2
    .parameter "values"
    .parameter "width"
    .parameter "height"
    .annotation build Landroid/annotation/TargetApi;
        value = 0x10
    .end annotation

    .prologue
    .line 637
    sget-boolean v0, Lcom/android/gallery3d/common/ApiHelper;->HAS_MEDIA_COLUMNS_WIDTH_AND_HEIGHT:Z

    if-eqz v0, :cond_0

    .line 638
    const-string v0, "width"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 639
    const-string v0, "height"

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 641
    :cond_0
    return-void
.end method

.method private updateIntentExtras()V
    .locals 3

    .prologue
    .line 205
    iget-boolean v1, p0, Lcom/android/gallery3d/app/CropImage;->mIsSetWallpaper:Z

    if-nez v1, :cond_1

    .line 214
    :cond_0
    :goto_0
    return-void

    .line 207
    :cond_1
    invoke-virtual {p0}, Lcom/android/gallery3d/app/CropImage;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 208
    .local v0, intent:Landroid/content/Intent;
    if-eqz v0, :cond_0

    .line 209
    const-string v2, "outputX"

    iget-boolean v1, p0, Lcom/android/gallery3d/app/CropImage;->mIsWallpaperFixed:Z

    if-eqz v1, :cond_2

    iget v1, p0, Lcom/android/gallery3d/app/CropImage;->mFixedWallpaperWidth:I

    :goto_1
    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 210
    const-string v2, "outputY"

    iget-boolean v1, p0, Lcom/android/gallery3d/app/CropImage;->mIsWallpaperFixed:Z

    if-eqz v1, :cond_3

    iget v1, p0, Lcom/android/gallery3d/app/CropImage;->mFixedWallpaperHeight:I

    :goto_2
    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 211
    const-string v2, "aspectX"

    iget-boolean v1, p0, Lcom/android/gallery3d/app/CropImage;->mIsWallpaperFixed:Z

    if-eqz v1, :cond_4

    iget v1, p0, Lcom/android/gallery3d/app/CropImage;->mFixedWallpaperWidth:I

    :goto_3
    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 212
    const-string v2, "aspectY"

    iget-boolean v1, p0, Lcom/android/gallery3d/app/CropImage;->mIsWallpaperFixed:Z

    if-eqz v1, :cond_5

    iget v1, p0, Lcom/android/gallery3d/app/CropImage;->mFixedWallpaperHeight:I

    :goto_4
    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto :goto_0

    .line 209
    :cond_2
    iget v1, p0, Lcom/android/gallery3d/app/CropImage;->mScrollableWallpaperWidth:I

    goto :goto_1

    .line 210
    :cond_3
    iget v1, p0, Lcom/android/gallery3d/app/CropImage;->mScrollableWallpaperHeight:I

    goto :goto_2

    .line 211
    :cond_4
    iget v1, p0, Lcom/android/gallery3d/app/CropImage;->mScrollableWallpaperWidth:I

    goto :goto_3

    .line 212
    :cond_5
    iget v1, p0, Lcom/android/gallery3d/app/CropImage;->mScrollableWallpaperHeight:I

    goto :goto_4
.end method


# virtual methods
.method public onBackPressed()V
    .locals 0

    .prologue
    .line 384
    invoke-virtual {p0}, Lcom/android/gallery3d/app/CropImage;->finish()V

    .line 385
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 9
    .parameter "bundle"

    .prologue
    const/16 v8, 0x8

    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 267
    invoke-super {p0, p1}, Lcom/android/gallery3d/app/AbstractGalleryActivity;->onCreate(Landroid/os/Bundle;)V

    .line 268
    invoke-virtual {p0, v8}, Lcom/android/gallery3d/app/CropImage;->requestWindowFeature(I)Z

    .line 269
    const/16 v4, 0x9

    invoke-virtual {p0, v4}, Lcom/android/gallery3d/app/CropImage;->requestWindowFeature(I)Z

    .line 272
    const v4, 0x7f040016

    invoke-virtual {p0, v4}, Lcom/android/gallery3d/app/CropImage;->setContentView(I)V

    .line 274
    new-instance v4, Lcom/android/gallery3d/ui/CropView;

    invoke-direct {v4, p0}, Lcom/android/gallery3d/ui/CropView;-><init>(Lcom/android/gallery3d/app/AbstractGalleryActivity;)V

    iput-object v4, p0, Lcom/android/gallery3d/app/CropImage;->mCropView:Lcom/android/gallery3d/ui/CropView;

    .line 275
    invoke-virtual {p0}, Lcom/android/gallery3d/app/CropImage;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0a001f

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v4

    invoke-static {v4}, Lcom/android/gallery3d/util/GalleryUtils;->intColorToFloatARGBArray(I)[F

    move-result-object v2

    .line 276
    .local v2, mBackgroundColor:[F
    iget-object v4, p0, Lcom/android/gallery3d/app/CropImage;->mCropView:Lcom/android/gallery3d/ui/CropView;

    invoke-virtual {v4, v2}, Lcom/android/gallery3d/ui/CropView;->setBackgroundColor([F)V

    .line 278
    invoke-virtual {p0}, Lcom/android/gallery3d/app/CropImage;->getGLRoot()Lcom/android/gallery3d/ui/GLRoot;

    move-result-object v4

    iget-object v5, p0, Lcom/android/gallery3d/app/CropImage;->mCropView:Lcom/android/gallery3d/ui/CropView;

    invoke-interface {v4, v5}, Lcom/android/gallery3d/ui/GLRoot;->setContentPane(Lcom/android/gallery3d/ui/GLView;)V

    .line 281
    invoke-virtual {p0}, Lcom/android/gallery3d/app/CropImage;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .line 282
    .local v0, actionBar:Landroid/app/ActionBar;
    const/16 v4, 0xc

    invoke-virtual {v0, v8, v4}, Landroid/app/ActionBar;->setDisplayOptions(II)V

    .line 284
    invoke-virtual {v0, v6}, Landroid/app/ActionBar;->setHomeButtonEnabled(Z)V

    .line 285
    invoke-virtual {p0}, Lcom/android/gallery3d/app/CropImage;->getIntent()Landroid/content/Intent;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    .line 286
    .local v1, extra:Landroid/os/Bundle;
    if-eqz v1, :cond_3

    .line 287
    const-string v4, "set-as-wallpaper"

    invoke-virtual {v1, v4, v7}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 288
    const v4, 0x7f0d0260

    invoke-virtual {p0, v4}, Lcom/android/gallery3d/app/CropImage;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/app/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    .line 290
    iget-object v4, p0, Lcom/android/gallery3d/app/CropImage;->mCropView:Lcom/android/gallery3d/ui/CropView;

    invoke-virtual {v4, v6}, Lcom/android/gallery3d/ui/CropView;->setFullScale(Z)V

    .line 292
    iput-boolean v6, p0, Lcom/android/gallery3d/app/CropImage;->mIsSetWallpaper:Z

    .line 294
    :cond_0
    const-string v4, "showWhenLocked"

    invoke-virtual {v1, v4, v7}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 295
    invoke-virtual {p0}, Lcom/android/gallery3d/app/CropImage;->getWindow()Landroid/view/Window;

    move-result-object v4

    const/high16 v5, 0x8

    invoke-virtual {v4, v5}, Landroid/view/Window;->addFlags(I)V

    .line 297
    :cond_1
    const-string v4, "unlock-wallpaper"

    invoke-virtual {v1, v4, v7}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    iput-boolean v4, p0, Lcom/android/gallery3d/app/CropImage;->mIsUnlockWallpaper:Z

    .line 298
    const-string v4, "set-as-theme"

    invoke-virtual {v1, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 299
    .local v3, setAsTheme:Ljava/lang/String;
    const-string v4, "home"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    const-string v4, "unlock"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 300
    :cond_2
    iget-object v4, p0, Lcom/android/gallery3d/app/CropImage;->mCropView:Lcom/android/gallery3d/ui/CropView;

    invoke-virtual {v4, v6}, Lcom/android/gallery3d/ui/CropView;->setFullScale(Z)V

    .line 304
    .end local v3           #setAsTheme:Ljava/lang/String;
    :cond_3
    new-instance v4, Lcom/android/gallery3d/app/CropImage$3;

    invoke-virtual {p0}, Lcom/android/gallery3d/app/CropImage;->getGLRoot()Lcom/android/gallery3d/ui/GLRoot;

    move-result-object v5

    invoke-direct {v4, p0, v5}, Lcom/android/gallery3d/app/CropImage$3;-><init>(Lcom/android/gallery3d/app/CropImage;Lcom/android/gallery3d/ui/GLRoot;)V

    iput-object v4, p0, Lcom/android/gallery3d/app/CropImage;->mMainHandler:Landroid/os/Handler;

    .line 343
    invoke-direct {p0}, Lcom/android/gallery3d/app/CropImage;->initTab()V

    .line 344
    invoke-direct {p0}, Lcom/android/gallery3d/app/CropImage;->initButton()V

    .line 345
    invoke-direct {p0}, Lcom/android/gallery3d/app/CropImage;->initWallpaperParameters()V

    .line 346
    invoke-direct {p0}, Lcom/android/gallery3d/app/CropImage;->setCropParameters()V

    .line 347
    invoke-virtual {v0}, Landroid/app/ActionBar;->hide()V

    .line 348
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 2
    .parameter "menu"

    .prologue
    .line 357
    invoke-super {p0, p1}, Lcom/android/gallery3d/app/AbstractGalleryActivity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    .line 358
    invoke-virtual {p0}, Lcom/android/gallery3d/app/CropImage;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    const v1, 0x7f120002

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 359
    const/4 v0, 0x1

    return v0
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 1205
    invoke-super {p0}, Lcom/android/gallery3d/app/AbstractGalleryActivity;->onDestroy()V

    .line 1206
    iget-object v0, p0, Lcom/android/gallery3d/app/CropImage;->mBitmapScreenNail:Lcom/android/gallery3d/ui/BitmapScreenNail;

    if-eqz v0, :cond_0

    .line 1207
    iget-object v0, p0, Lcom/android/gallery3d/app/CropImage;->mBitmapScreenNail:Lcom/android/gallery3d/ui/BitmapScreenNail;

    invoke-virtual {v0}, Lcom/android/gallery3d/ui/BitmapScreenNail;->recycle()V

    .line 1208
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/gallery3d/app/CropImage;->mBitmapScreenNail:Lcom/android/gallery3d/ui/BitmapScreenNail;

    .line 1210
    :cond_0
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 1
    .parameter "item"

    .prologue
    .line 364
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    .line 379
    :goto_0
    const/4 v0, 0x1

    return v0

    .line 366
    :sswitch_0
    invoke-virtual {p0}, Lcom/android/gallery3d/app/CropImage;->finish()V

    goto :goto_0

    .line 370
    :sswitch_1
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/gallery3d/app/CropImage;->setResult(I)V

    .line 371
    invoke-virtual {p0}, Lcom/android/gallery3d/app/CropImage;->finish()V

    goto :goto_0

    .line 375
    :sswitch_2
    invoke-direct {p0}, Lcom/android/gallery3d/app/CropImage;->onSaveClicked()V

    goto :goto_0

    .line 364
    nop

    :sswitch_data_0
    .sparse-switch
        0x102002c -> :sswitch_0
        0x7f10003c -> :sswitch_1
        0x7f100245 -> :sswitch_2
    .end sparse-switch
.end method

.method protected onPause()V
    .locals 5

    .prologue
    .line 1171
    invoke-super {p0}, Lcom/android/gallery3d/app/AbstractGalleryActivity;->onPause()V

    .line 1172
    invoke-direct {p0}, Lcom/android/gallery3d/app/CropImage;->dismissProgressDialogIfShown()V

    .line 1174
    iget-object v1, p0, Lcom/android/gallery3d/app/CropImage;->mLoadTask:Lcom/android/gallery3d/util/Future;

    .line 1175
    .local v1, loadTask:Lcom/android/gallery3d/util/Future;,"Lcom/android/gallery3d/util/Future<Landroid/graphics/BitmapRegionDecoder;>;"
    if-eqz v1, :cond_0

    invoke-interface {v1}, Lcom/android/gallery3d/util/Future;->isDone()Z

    move-result v4

    if-nez v4, :cond_0

    .line 1177
    invoke-interface {v1}, Lcom/android/gallery3d/util/Future;->cancel()V

    .line 1178
    invoke-interface {v1}, Lcom/android/gallery3d/util/Future;->waitDone()V

    .line 1181
    :cond_0
    iget-object v0, p0, Lcom/android/gallery3d/app/CropImage;->mLoadBitmapTask:Lcom/android/gallery3d/util/Future;

    .line 1182
    .local v0, loadBitmapTask:Lcom/android/gallery3d/util/Future;,"Lcom/android/gallery3d/util/Future<Landroid/graphics/Bitmap;>;"
    if-eqz v0, :cond_1

    invoke-interface {v0}, Lcom/android/gallery3d/util/Future;->isDone()Z

    move-result v4

    if-nez v4, :cond_1

    .line 1184
    invoke-interface {v0}, Lcom/android/gallery3d/util/Future;->cancel()V

    .line 1185
    invoke-interface {v0}, Lcom/android/gallery3d/util/Future;->waitDone()V

    .line 1188
    :cond_1
    iget-object v3, p0, Lcom/android/gallery3d/app/CropImage;->mSaveTask:Lcom/android/gallery3d/util/Future;

    .line 1189
    .local v3, saveTask:Lcom/android/gallery3d/util/Future;,"Lcom/android/gallery3d/util/Future<Landroid/content/Intent;>;"
    if-eqz v3, :cond_2

    invoke-interface {v3}, Lcom/android/gallery3d/util/Future;->isDone()Z

    move-result v4

    if-nez v4, :cond_2

    .line 1191
    invoke-interface {v3}, Lcom/android/gallery3d/util/Future;->cancel()V

    .line 1192
    invoke-interface {v3}, Lcom/android/gallery3d/util/Future;->waitDone()V

    .line 1194
    :cond_2
    invoke-virtual {p0}, Lcom/android/gallery3d/app/CropImage;->getGLRoot()Lcom/android/gallery3d/ui/GLRoot;

    move-result-object v2

    .line 1195
    .local v2, root:Lcom/android/gallery3d/ui/GLRoot;
    invoke-interface {v2}, Lcom/android/gallery3d/ui/GLRoot;->lockRenderThread()V

    .line 1197
    :try_start_0
    iget-object v4, p0, Lcom/android/gallery3d/app/CropImage;->mCropView:Lcom/android/gallery3d/ui/CropView;

    invoke-virtual {v4}, Lcom/android/gallery3d/ui/CropView;->pause()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1199
    invoke-interface {v2}, Lcom/android/gallery3d/ui/GLRoot;->unlockRenderThread()V

    .line 1201
    return-void

    .line 1199
    :catchall_0
    move-exception v4

    invoke-interface {v2}, Lcom/android/gallery3d/ui/GLRoot;->unlockRenderThread()V

    throw v4
.end method

.method protected onResume()V
    .locals 3

    .prologue
    .line 1155
    invoke-super {p0}, Lcom/android/gallery3d/app/AbstractGalleryActivity;->onResume()V

    .line 1156
    iget v1, p0, Lcom/android/gallery3d/app/CropImage;->mState:I

    if-nez v1, :cond_0

    invoke-direct {p0}, Lcom/android/gallery3d/app/CropImage;->initializeData()V

    .line 1157
    :cond_0
    iget v1, p0, Lcom/android/gallery3d/app/CropImage;->mState:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    invoke-direct {p0}, Lcom/android/gallery3d/app/CropImage;->onSaveClicked()V

    .line 1160
    :cond_1
    invoke-virtual {p0}, Lcom/android/gallery3d/app/CropImage;->getGLRoot()Lcom/android/gallery3d/ui/GLRoot;

    move-result-object v0

    .line 1161
    .local v0, root:Lcom/android/gallery3d/ui/GLRoot;
    invoke-interface {v0}, Lcom/android/gallery3d/ui/GLRoot;->lockRenderThread()V

    .line 1163
    :try_start_0
    iget-object v1, p0, Lcom/android/gallery3d/app/CropImage;->mCropView:Lcom/android/gallery3d/ui/CropView;

    invoke-virtual {v1}, Lcom/android/gallery3d/ui/CropView;->resume()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1165
    invoke-interface {v0}, Lcom/android/gallery3d/ui/GLRoot;->unlockRenderThread()V

    .line 1167
    return-void

    .line 1165
    :catchall_0
    move-exception v1

    invoke-interface {v0}, Lcom/android/gallery3d/ui/GLRoot;->unlockRenderThread()V

    throw v1
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .parameter "saveState"

    .prologue
    .line 352
    const-string v0, "state"

    iget v1, p0, Lcom/android/gallery3d/app/CropImage;->mState:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 353
    return-void
.end method
