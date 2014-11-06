.class public Lcom/android/gallery3d/mediatek/MpoDecoderWrapper;
.super Ljava/lang/Object;
.source "MpoDecoderWrapper.java"


# static fields
.field public static final INVALID_VALUE:I = 0x0

.field private static final TAG:Ljava/lang/String; = "MpoDecoderWrapper"


# instance fields
.field private mMpoDecoder:Lcom/mediatek/common/mpodecoder/IMpoDecoder;


# direct methods
.method private constructor <init>(Lcom/mediatek/common/mpodecoder/IMpoDecoder;)V
    .locals 0
    .parameter "mpoDecoder"

    .prologue
    .line 36
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 37
    iput-object p1, p0, Lcom/android/gallery3d/mediatek/MpoDecoderWrapper;->mMpoDecoder:Lcom/mediatek/common/mpodecoder/IMpoDecoder;

    .line 38
    return-void
.end method

.method public static createMpoDecoderWrapper(Landroid/content/ContentResolver;Landroid/net/Uri;)Lcom/android/gallery3d/mediatek/MpoDecoderWrapper;
    .locals 2
    .parameter "cr"
    .parameter "uri"

    .prologue
    const/4 v1, 0x0

    .line 49
    invoke-static {v1, p0, p1}, Lcom/android/gallery3d/mediatek/MpoHelper;->createMpoDecoder(Lcom/android/gallery3d/util/ThreadPool$JobContext;Landroid/content/ContentResolver;Landroid/net/Uri;)Lcom/mediatek/common/mpodecoder/IMpoDecoder;

    move-result-object v0

    .line 50
    .local v0, mpoDecoder:Lcom/mediatek/common/mpodecoder/IMpoDecoder;
    if-nez v0, :cond_0

    .line 51
    :goto_0
    return-object v1

    :cond_0
    new-instance v1, Lcom/android/gallery3d/mediatek/MpoDecoderWrapper;

    invoke-direct {v1, v0}, Lcom/android/gallery3d/mediatek/MpoDecoderWrapper;-><init>(Lcom/mediatek/common/mpodecoder/IMpoDecoder;)V

    goto :goto_0
.end method

.method public static createMpoDecoderWrapper(Ljava/lang/String;)Lcom/android/gallery3d/mediatek/MpoDecoderWrapper;
    .locals 2
    .parameter "filePath"

    .prologue
    const/4 v1, 0x0

    .line 42
    invoke-static {v1, p0}, Lcom/android/gallery3d/mediatek/MpoHelper;->createMpoDecoder(Lcom/android/gallery3d/util/ThreadPool$JobContext;Ljava/lang/String;)Lcom/mediatek/common/mpodecoder/IMpoDecoder;

    move-result-object v0

    .line 43
    .local v0, mpoDecoder:Lcom/mediatek/common/mpodecoder/IMpoDecoder;
    if-nez v0, :cond_0

    .line 44
    :goto_0
    return-object v1

    :cond_0
    new-instance v1, Lcom/android/gallery3d/mediatek/MpoDecoderWrapper;

    invoke-direct {v1, v0}, Lcom/android/gallery3d/mediatek/MpoDecoderWrapper;-><init>(Lcom/mediatek/common/mpodecoder/IMpoDecoder;)V

    goto :goto_0
.end method


# virtual methods
.method public close()V
    .locals 1

    .prologue
    .line 85
    iget-object v0, p0, Lcom/android/gallery3d/mediatek/MpoDecoderWrapper;->mMpoDecoder:Lcom/mediatek/common/mpodecoder/IMpoDecoder;

    if-nez v0, :cond_0

    .line 87
    :goto_0
    return-void

    .line 86
    :cond_0
    iget-object v0, p0, Lcom/android/gallery3d/mediatek/MpoDecoderWrapper;->mMpoDecoder:Lcom/mediatek/common/mpodecoder/IMpoDecoder;

    invoke-interface {v0}, Lcom/mediatek/common/mpodecoder/IMpoDecoder;->close()V

    goto :goto_0
.end method

.method public frameBitmap(ILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    .locals 1
    .parameter "frameIndex"
    .parameter "options"

    .prologue
    .line 80
    iget-object v0, p0, Lcom/android/gallery3d/mediatek/MpoDecoderWrapper;->mMpoDecoder:Lcom/mediatek/common/mpodecoder/IMpoDecoder;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 81
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/android/gallery3d/mediatek/MpoDecoderWrapper;->mMpoDecoder:Lcom/mediatek/common/mpodecoder/IMpoDecoder;

    invoke-interface {v0, p1, p2}, Lcom/mediatek/common/mpodecoder/IMpoDecoder;->frameBitmap(ILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_0
.end method

.method public frameCount()I
    .locals 1

    .prologue
    .line 65
    iget-object v0, p0, Lcom/android/gallery3d/mediatek/MpoDecoderWrapper;->mMpoDecoder:Lcom/mediatek/common/mpodecoder/IMpoDecoder;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 66
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/android/gallery3d/mediatek/MpoDecoderWrapper;->mMpoDecoder:Lcom/mediatek/common/mpodecoder/IMpoDecoder;

    invoke-interface {v0}, Lcom/mediatek/common/mpodecoder/IMpoDecoder;->frameCount()I

    move-result v0

    goto :goto_0
.end method

.method public getMtkMpoType()I
    .locals 1

    .prologue
    .line 70
    iget-object v0, p0, Lcom/android/gallery3d/mediatek/MpoDecoderWrapper;->mMpoDecoder:Lcom/mediatek/common/mpodecoder/IMpoDecoder;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 71
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/android/gallery3d/mediatek/MpoDecoderWrapper;->mMpoDecoder:Lcom/mediatek/common/mpodecoder/IMpoDecoder;

    invoke-interface {v0}, Lcom/mediatek/common/mpodecoder/IMpoDecoder;->getMtkMpoType()I

    move-result v0

    goto :goto_0
.end method

.method public height()I
    .locals 1

    .prologue
    .line 60
    iget-object v0, p0, Lcom/android/gallery3d/mediatek/MpoDecoderWrapper;->mMpoDecoder:Lcom/mediatek/common/mpodecoder/IMpoDecoder;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 61
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/android/gallery3d/mediatek/MpoDecoderWrapper;->mMpoDecoder:Lcom/mediatek/common/mpodecoder/IMpoDecoder;

    invoke-interface {v0}, Lcom/mediatek/common/mpodecoder/IMpoDecoder;->height()I

    move-result v0

    goto :goto_0
.end method

.method public suggestMtkMpoType()I
    .locals 1

    .prologue
    .line 75
    iget-object v0, p0, Lcom/android/gallery3d/mediatek/MpoDecoderWrapper;->mMpoDecoder:Lcom/mediatek/common/mpodecoder/IMpoDecoder;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 76
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/android/gallery3d/mediatek/MpoDecoderWrapper;->mMpoDecoder:Lcom/mediatek/common/mpodecoder/IMpoDecoder;

    invoke-interface {v0}, Lcom/mediatek/common/mpodecoder/IMpoDecoder;->suggestMtkMpoType()I

    move-result v0

    goto :goto_0
.end method

.method public width()I
    .locals 1

    .prologue
    .line 55
    iget-object v0, p0, Lcom/android/gallery3d/mediatek/MpoDecoderWrapper;->mMpoDecoder:Lcom/mediatek/common/mpodecoder/IMpoDecoder;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 56
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/android/gallery3d/mediatek/MpoDecoderWrapper;->mMpoDecoder:Lcom/mediatek/common/mpodecoder/IMpoDecoder;

    invoke-interface {v0}, Lcom/mediatek/common/mpodecoder/IMpoDecoder;->width()I

    move-result v0

    goto :goto_0
.end method
