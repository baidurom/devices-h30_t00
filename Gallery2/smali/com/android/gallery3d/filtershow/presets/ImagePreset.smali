.class public Lcom/android/gallery3d/filtershow/presets/ImagePreset;
.super Ljava/lang/Object;
.source "ImagePreset.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/gallery3d/filtershow/presets/ImagePreset$FullRotate;
    }
.end annotation


# static fields
.field private static final LOGTAG:Ljava/lang/String; = "ImagePreset"


# instance fields
.field private mDoApplyFilters:Z

.field private mDoApplyGeometry:Z

.field private mEndPoint:Lcom/android/gallery3d/filtershow/imageshow/ImageShow;

.field public final mFaceBeautifierPara:Lcom/android/gallery3d/filtershow/omron/FaceBeautifierParamter;

.field protected mFilters:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector",
            "<",
            "Lcom/android/gallery3d/filtershow/filters/ImageFilter;",
            ">;"
        }
    .end annotation
.end field

.field public final mGeoData:Lcom/android/gallery3d/filtershow/imageshow/GeometryMetadata;

.field private mHistoryName:Ljava/lang/String;

.field private mImageBorder:Lcom/android/gallery3d/filtershow/filters/ImageFilter;

.field private mImageLoader:Lcom/android/gallery3d/filtershow/cache/ImageLoader;

.field protected mIsFxPreset:Z

.field private mIsHighQuality:Z

.field protected mName:Ljava/lang/String;

.field private mScaleFactor:F


# direct methods
.method public constructor <init>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 58
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 36
    iput-object v1, p0, Lcom/android/gallery3d/filtershow/presets/ImagePreset;->mEndPoint:Lcom/android/gallery3d/filtershow/imageshow/ImageShow;

    .line 37
    iput-object v1, p0, Lcom/android/gallery3d/filtershow/presets/ImagePreset;->mImageBorder:Lcom/android/gallery3d/filtershow/filters/ImageFilter;

    .line 38
    const/high16 v0, 0x3f80

    iput v0, p0, Lcom/android/gallery3d/filtershow/presets/ImagePreset;->mScaleFactor:F

    .line 39
    iput-boolean v2, p0, Lcom/android/gallery3d/filtershow/presets/ImagePreset;->mIsHighQuality:Z

    .line 40
    iput-object v1, p0, Lcom/android/gallery3d/filtershow/presets/ImagePreset;->mImageLoader:Lcom/android/gallery3d/filtershow/cache/ImageLoader;

    .line 42
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/android/gallery3d/filtershow/presets/ImagePreset;->mFilters:Ljava/util/Vector;

    .line 43
    const-string v0, "Original"

    iput-object v0, p0, Lcom/android/gallery3d/filtershow/presets/ImagePreset;->mName:Ljava/lang/String;

    .line 44
    const-string v0, "Original"

    iput-object v0, p0, Lcom/android/gallery3d/filtershow/presets/ImagePreset;->mHistoryName:Ljava/lang/String;

    .line 45
    iput-boolean v2, p0, Lcom/android/gallery3d/filtershow/presets/ImagePreset;->mIsFxPreset:Z

    .line 47
    iput-boolean v3, p0, Lcom/android/gallery3d/filtershow/presets/ImagePreset;->mDoApplyGeometry:Z

    .line 48
    iput-boolean v3, p0, Lcom/android/gallery3d/filtershow/presets/ImagePreset;->mDoApplyFilters:Z

    .line 50
    new-instance v0, Lcom/android/gallery3d/filtershow/imageshow/GeometryMetadata;

    invoke-direct {v0}, Lcom/android/gallery3d/filtershow/imageshow/GeometryMetadata;-><init>()V

    iput-object v0, p0, Lcom/android/gallery3d/filtershow/presets/ImagePreset;->mGeoData:Lcom/android/gallery3d/filtershow/imageshow/GeometryMetadata;

    .line 52
    new-instance v0, Lcom/android/gallery3d/filtershow/omron/FaceBeautifierParamter;

    invoke-direct {v0}, Lcom/android/gallery3d/filtershow/omron/FaceBeautifierParamter;-><init>()V

    iput-object v0, p0, Lcom/android/gallery3d/filtershow/presets/ImagePreset;->mFaceBeautifierPara:Lcom/android/gallery3d/filtershow/omron/FaceBeautifierParamter;

    .line 59
    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/presets/ImagePreset;->setup()V

    .line 60
    return-void
.end method

.method public constructor <init>(Lcom/android/gallery3d/filtershow/presets/ImagePreset;)V
    .locals 7
    .parameter "source"

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    const/4 v4, 0x0

    .line 74
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 36
    iput-object v4, p0, Lcom/android/gallery3d/filtershow/presets/ImagePreset;->mEndPoint:Lcom/android/gallery3d/filtershow/imageshow/ImageShow;

    .line 37
    iput-object v4, p0, Lcom/android/gallery3d/filtershow/presets/ImagePreset;->mImageBorder:Lcom/android/gallery3d/filtershow/filters/ImageFilter;

    .line 38
    const/high16 v3, 0x3f80

    iput v3, p0, Lcom/android/gallery3d/filtershow/presets/ImagePreset;->mScaleFactor:F

    .line 39
    iput-boolean v5, p0, Lcom/android/gallery3d/filtershow/presets/ImagePreset;->mIsHighQuality:Z

    .line 40
    iput-object v4, p0, Lcom/android/gallery3d/filtershow/presets/ImagePreset;->mImageLoader:Lcom/android/gallery3d/filtershow/cache/ImageLoader;

    .line 42
    new-instance v3, Ljava/util/Vector;

    invoke-direct {v3}, Ljava/util/Vector;-><init>()V

    iput-object v3, p0, Lcom/android/gallery3d/filtershow/presets/ImagePreset;->mFilters:Ljava/util/Vector;

    .line 43
    const-string v3, "Original"

    iput-object v3, p0, Lcom/android/gallery3d/filtershow/presets/ImagePreset;->mName:Ljava/lang/String;

    .line 44
    const-string v3, "Original"

    iput-object v3, p0, Lcom/android/gallery3d/filtershow/presets/ImagePreset;->mHistoryName:Ljava/lang/String;

    .line 45
    iput-boolean v5, p0, Lcom/android/gallery3d/filtershow/presets/ImagePreset;->mIsFxPreset:Z

    .line 47
    iput-boolean v6, p0, Lcom/android/gallery3d/filtershow/presets/ImagePreset;->mDoApplyGeometry:Z

    .line 48
    iput-boolean v6, p0, Lcom/android/gallery3d/filtershow/presets/ImagePreset;->mDoApplyFilters:Z

    .line 50
    new-instance v3, Lcom/android/gallery3d/filtershow/imageshow/GeometryMetadata;

    invoke-direct {v3}, Lcom/android/gallery3d/filtershow/imageshow/GeometryMetadata;-><init>()V

    iput-object v3, p0, Lcom/android/gallery3d/filtershow/presets/ImagePreset;->mGeoData:Lcom/android/gallery3d/filtershow/imageshow/GeometryMetadata;

    .line 52
    new-instance v3, Lcom/android/gallery3d/filtershow/omron/FaceBeautifierParamter;

    invoke-direct {v3}, Lcom/android/gallery3d/filtershow/omron/FaceBeautifierParamter;-><init>()V

    iput-object v3, p0, Lcom/android/gallery3d/filtershow/presets/ImagePreset;->mFaceBeautifierPara:Lcom/android/gallery3d/filtershow/omron/FaceBeautifierParamter;

    .line 76
    :try_start_0
    iget-object v3, p1, Lcom/android/gallery3d/filtershow/presets/ImagePreset;->mImageBorder:Lcom/android/gallery3d/filtershow/filters/ImageFilter;

    if-eqz v3, :cond_0

    .line 77
    iget-object v3, p1, Lcom/android/gallery3d/filtershow/presets/ImagePreset;->mImageBorder:Lcom/android/gallery3d/filtershow/filters/ImageFilter;

    invoke-virtual {v3}, Lcom/android/gallery3d/filtershow/filters/ImageFilter;->clone()Lcom/android/gallery3d/filtershow/filters/ImageFilter;

    move-result-object v3

    iput-object v3, p0, Lcom/android/gallery3d/filtershow/presets/ImagePreset;->mImageBorder:Lcom/android/gallery3d/filtershow/filters/ImageFilter;

    .line 79
    :cond_0
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    iget-object v3, p1, Lcom/android/gallery3d/filtershow/presets/ImagePreset;->mFilters:Ljava/util/Vector;

    invoke-virtual {v3}, Ljava/util/Vector;->size()I

    move-result v3

    if-ge v2, v3, :cond_1

    .line 80
    iget-object v3, p1, Lcom/android/gallery3d/filtershow/presets/ImagePreset;->mFilters:Ljava/util/Vector;

    invoke-virtual {v3, v2}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/gallery3d/filtershow/filters/ImageFilter;

    invoke-virtual {v3}, Lcom/android/gallery3d/filtershow/filters/ImageFilter;->clone()Lcom/android/gallery3d/filtershow/filters/ImageFilter;

    move-result-object v1

    .line 81
    .local v1, filter:Lcom/android/gallery3d/filtershow/filters/ImageFilter;
    invoke-virtual {v1, p0}, Lcom/android/gallery3d/filtershow/filters/ImageFilter;->setImagePreset(Lcom/android/gallery3d/filtershow/presets/ImagePreset;)V

    .line 82
    invoke-virtual {p0, v1}, Lcom/android/gallery3d/filtershow/presets/ImagePreset;->add(Lcom/android/gallery3d/filtershow/filters/ImageFilter;)V
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 79
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 84
    .end local v1           #filter:Lcom/android/gallery3d/filtershow/filters/ImageFilter;
    .end local v2           #i:I
    :catch_0
    move-exception v0

    .line 85
    .local v0, e:Ljava/lang/CloneNotSupportedException;
    const-string v3, "ImagePreset"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Exception trying to clone: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 87
    .end local v0           #e:Ljava/lang/CloneNotSupportedException;
    :cond_1
    invoke-virtual {p1}, Lcom/android/gallery3d/filtershow/presets/ImagePreset;->name()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/gallery3d/filtershow/presets/ImagePreset;->mName:Ljava/lang/String;

    .line 88
    invoke-virtual {p1}, Lcom/android/gallery3d/filtershow/presets/ImagePreset;->name()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/gallery3d/filtershow/presets/ImagePreset;->mHistoryName:Ljava/lang/String;

    .line 89
    invoke-virtual {p1}, Lcom/android/gallery3d/filtershow/presets/ImagePreset;->isFx()Z

    move-result v3

    iput-boolean v3, p0, Lcom/android/gallery3d/filtershow/presets/ImagePreset;->mIsFxPreset:Z

    .line 90
    invoke-virtual {p1}, Lcom/android/gallery3d/filtershow/presets/ImagePreset;->getImageLoader()Lcom/android/gallery3d/filtershow/cache/ImageLoader;

    move-result-object v3

    iput-object v3, p0, Lcom/android/gallery3d/filtershow/presets/ImagePreset;->mImageLoader:Lcom/android/gallery3d/filtershow/cache/ImageLoader;

    .line 92
    iget-object v3, p0, Lcom/android/gallery3d/filtershow/presets/ImagePreset;->mGeoData:Lcom/android/gallery3d/filtershow/imageshow/GeometryMetadata;

    iget-object v4, p1, Lcom/android/gallery3d/filtershow/presets/ImagePreset;->mGeoData:Lcom/android/gallery3d/filtershow/imageshow/GeometryMetadata;

    invoke-virtual {v3, v4}, Lcom/android/gallery3d/filtershow/imageshow/GeometryMetadata;->set(Lcom/android/gallery3d/filtershow/imageshow/GeometryMetadata;)V

    .line 93
    iget-object v3, p0, Lcom/android/gallery3d/filtershow/presets/ImagePreset;->mFaceBeautifierPara:Lcom/android/gallery3d/filtershow/omron/FaceBeautifierParamter;

    iget-object v4, p1, Lcom/android/gallery3d/filtershow/presets/ImagePreset;->mFaceBeautifierPara:Lcom/android/gallery3d/filtershow/omron/FaceBeautifierParamter;

    invoke-virtual {v3, v4}, Lcom/android/gallery3d/filtershow/omron/FaceBeautifierParamter;->set(Lcom/android/gallery3d/filtershow/omron/FaceBeautifierParamter;)V

    .line 94
    return-void
.end method

.method public constructor <init>(Lcom/android/gallery3d/filtershow/presets/ImagePreset;Ljava/lang/String;)V
    .locals 0
    .parameter "source"
    .parameter "historyName"

    .prologue
    .line 68
    invoke-direct {p0, p1}, Lcom/android/gallery3d/filtershow/presets/ImagePreset;-><init>(Lcom/android/gallery3d/filtershow/presets/ImagePreset;)V

    .line 69
    if-eqz p2, :cond_0

    .line 70
    invoke-virtual {p0, p2}, Lcom/android/gallery3d/filtershow/presets/ImagePreset;->setHistoryName(Ljava/lang/String;)V

    .line 72
    :cond_0
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 4
    .parameter "historyName"

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 62
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 36
    iput-object v1, p0, Lcom/android/gallery3d/filtershow/presets/ImagePreset;->mEndPoint:Lcom/android/gallery3d/filtershow/imageshow/ImageShow;

    .line 37
    iput-object v1, p0, Lcom/android/gallery3d/filtershow/presets/ImagePreset;->mImageBorder:Lcom/android/gallery3d/filtershow/filters/ImageFilter;

    .line 38
    const/high16 v0, 0x3f80

    iput v0, p0, Lcom/android/gallery3d/filtershow/presets/ImagePreset;->mScaleFactor:F

    .line 39
    iput-boolean v2, p0, Lcom/android/gallery3d/filtershow/presets/ImagePreset;->mIsHighQuality:Z

    .line 40
    iput-object v1, p0, Lcom/android/gallery3d/filtershow/presets/ImagePreset;->mImageLoader:Lcom/android/gallery3d/filtershow/cache/ImageLoader;

    .line 42
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/android/gallery3d/filtershow/presets/ImagePreset;->mFilters:Ljava/util/Vector;

    .line 43
    const-string v0, "Original"

    iput-object v0, p0, Lcom/android/gallery3d/filtershow/presets/ImagePreset;->mName:Ljava/lang/String;

    .line 44
    const-string v0, "Original"

    iput-object v0, p0, Lcom/android/gallery3d/filtershow/presets/ImagePreset;->mHistoryName:Ljava/lang/String;

    .line 45
    iput-boolean v2, p0, Lcom/android/gallery3d/filtershow/presets/ImagePreset;->mIsFxPreset:Z

    .line 47
    iput-boolean v3, p0, Lcom/android/gallery3d/filtershow/presets/ImagePreset;->mDoApplyGeometry:Z

    .line 48
    iput-boolean v3, p0, Lcom/android/gallery3d/filtershow/presets/ImagePreset;->mDoApplyFilters:Z

    .line 50
    new-instance v0, Lcom/android/gallery3d/filtershow/imageshow/GeometryMetadata;

    invoke-direct {v0}, Lcom/android/gallery3d/filtershow/imageshow/GeometryMetadata;-><init>()V

    iput-object v0, p0, Lcom/android/gallery3d/filtershow/presets/ImagePreset;->mGeoData:Lcom/android/gallery3d/filtershow/imageshow/GeometryMetadata;

    .line 52
    new-instance v0, Lcom/android/gallery3d/filtershow/omron/FaceBeautifierParamter;

    invoke-direct {v0}, Lcom/android/gallery3d/filtershow/omron/FaceBeautifierParamter;-><init>()V

    iput-object v0, p0, Lcom/android/gallery3d/filtershow/presets/ImagePreset;->mFaceBeautifierPara:Lcom/android/gallery3d/filtershow/omron/FaceBeautifierParamter;

    .line 63
    invoke-virtual {p0, p1}, Lcom/android/gallery3d/filtershow/presets/ImagePreset;->setHistoryName(Ljava/lang/String;)V

    .line 64
    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/presets/ImagePreset;->setup()V

    .line 65
    return-void
.end method

.method private setBorder(Lcom/android/gallery3d/filtershow/filters/ImageFilter;)V
    .locals 0
    .parameter "filter"

    .prologue
    .line 145
    iput-object p1, p0, Lcom/android/gallery3d/filtershow/presets/ImagePreset;->mImageBorder:Lcom/android/gallery3d/filtershow/filters/ImageFilter;

    .line 146
    return-void
.end method


# virtual methods
.method public add(Lcom/android/gallery3d/filtershow/filters/ImageFilter;)V
    .locals 6
    .parameter "filter"

    .prologue
    const/4 v5, 0x2

    .line 228
    invoke-virtual {p1}, Lcom/android/gallery3d/filtershow/filters/ImageFilter;->getFilterType()B

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_1

    .line 229
    invoke-virtual {p1}, Lcom/android/gallery3d/filtershow/filters/ImageFilter;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/gallery3d/filtershow/presets/ImagePreset;->setHistoryName(Ljava/lang/String;)V

    .line 230
    invoke-direct {p0, p1}, Lcom/android/gallery3d/filtershow/presets/ImagePreset;->setBorder(Lcom/android/gallery3d/filtershow/filters/ImageFilter;)V

    .line 256
    :cond_0
    :goto_0
    invoke-virtual {p1, p0}, Lcom/android/gallery3d/filtershow/filters/ImageFilter;->setImagePreset(Lcom/android/gallery3d/filtershow/presets/ImagePreset;)V

    .line 257
    return-void

    .line 231
    :cond_1
    invoke-virtual {p1}, Lcom/android/gallery3d/filtershow/filters/ImageFilter;->getFilterType()B

    move-result v3

    if-ne v3, v5, :cond_5

    .line 232
    const/4 v0, 0x0

    .line 233
    .local v0, found:Z
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    iget-object v3, p0, Lcom/android/gallery3d/filtershow/presets/ImagePreset;->mFilters:Ljava/util/Vector;

    invoke-virtual {v3}, Ljava/util/Vector;->size()I

    move-result v3

    if-ge v1, v3, :cond_4

    .line 234
    iget-object v3, p0, Lcom/android/gallery3d/filtershow/presets/ImagePreset;->mFilters:Ljava/util/Vector;

    invoke-virtual {v3, v1}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/gallery3d/filtershow/filters/ImageFilter;

    invoke-virtual {v3}, Lcom/android/gallery3d/filtershow/filters/ImageFilter;->getFilterType()B

    move-result v2

    .line 235
    .local v2, type:B
    if-eqz v0, :cond_3

    .line 236
    const/4 v3, 0x4

    if-eq v2, v3, :cond_3

    .line 237
    iget-object v3, p0, Lcom/android/gallery3d/filtershow/presets/ImagePreset;->mFilters:Ljava/util/Vector;

    invoke-virtual {v3, v1}, Ljava/util/Vector;->remove(I)Ljava/lang/Object;

    .line 233
    :cond_2
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 241
    :cond_3
    if-ne v2, v5, :cond_2

    .line 242
    iget-object v3, p0, Lcom/android/gallery3d/filtershow/presets/ImagePreset;->mFilters:Ljava/util/Vector;

    invoke-virtual {v3, v1}, Ljava/util/Vector;->remove(I)Ljava/lang/Object;

    .line 243
    iget-object v3, p0, Lcom/android/gallery3d/filtershow/presets/ImagePreset;->mFilters:Ljava/util/Vector;

    invoke-virtual {v3, v1, p1}, Ljava/util/Vector;->add(ILjava/lang/Object;)V

    .line 244
    invoke-virtual {p1}, Lcom/android/gallery3d/filtershow/filters/ImageFilter;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/gallery3d/filtershow/presets/ImagePreset;->setHistoryName(Ljava/lang/String;)V

    .line 245
    const/4 v0, 0x1

    goto :goto_2

    .line 248
    .end local v2           #type:B
    :cond_4
    if-nez v0, :cond_0

    .line 249
    iget-object v3, p0, Lcom/android/gallery3d/filtershow/presets/ImagePreset;->mFilters:Ljava/util/Vector;

    invoke-virtual {v3, p1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 250
    invoke-virtual {p1}, Lcom/android/gallery3d/filtershow/filters/ImageFilter;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/gallery3d/filtershow/presets/ImagePreset;->setHistoryName(Ljava/lang/String;)V

    goto :goto_0

    .line 253
    .end local v0           #found:Z
    .end local v1           #i:I
    :cond_5
    iget-object v3, p0, Lcom/android/gallery3d/filtershow/presets/ImagePreset;->mFilters:Ljava/util/Vector;

    invoke-virtual {v3, p1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 254
    invoke-virtual {p1}, Lcom/android/gallery3d/filtershow/filters/ImageFilter;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/gallery3d/filtershow/presets/ImagePreset;->setHistoryName(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public apply(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 8
    .parameter "original"

    .prologue
    const/16 v7, 0x20

    .line 290
    move-object v0, p1

    .line 292
    .local v0, bitmap:Landroid/graphics/Bitmap;
    iget-boolean v4, p0, Lcom/android/gallery3d/filtershow/presets/ImagePreset;->mDoApplyFilters:Z

    if-eqz v4, :cond_2

    .line 293
    const/4 v1, 0x0

    .line 294
    .local v1, doFaceBeautifier:Z
    const/4 v3, 0x0

    .local v3, i:I
    :goto_0
    iget-object v4, p0, Lcom/android/gallery3d/filtershow/presets/ImagePreset;->mFilters:Ljava/util/Vector;

    invoke-virtual {v4}, Ljava/util/Vector;->size()I

    move-result v4

    if-ge v3, v4, :cond_1

    .line 295
    iget-object v4, p0, Lcom/android/gallery3d/filtershow/presets/ImagePreset;->mFilters:Ljava/util/Vector;

    invoke-virtual {v4, v3}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/gallery3d/filtershow/filters/ImageFilter;

    .line 296
    .local v2, filter:Lcom/android/gallery3d/filtershow/filters/ImageFilter;
    invoke-virtual {v2}, Lcom/android/gallery3d/filtershow/filters/ImageFilter;->getFilterType()B

    move-result v4

    if-ne v4, v7, :cond_0

    .line 297
    iget v4, p0, Lcom/android/gallery3d/filtershow/presets/ImagePreset;->mScaleFactor:F

    iget-boolean v5, p0, Lcom/android/gallery3d/filtershow/presets/ImagePreset;->mIsHighQuality:Z

    invoke-virtual {v2, v0, v4, v5}, Lcom/android/gallery3d/filtershow/filters/ImageFilter;->apply(Landroid/graphics/Bitmap;FZ)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 298
    const/4 v1, 0x1

    .line 294
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 301
    .end local v2           #filter:Lcom/android/gallery3d/filtershow/filters/ImageFilter;
    :cond_1
    if-eqz v1, :cond_2

    .line 302
    iget-object v4, p0, Lcom/android/gallery3d/filtershow/presets/ImagePreset;->mFaceBeautifierPara:Lcom/android/gallery3d/filtershow/omron/FaceBeautifierParamter;

    invoke-static {v0, v4}, Lcom/android/gallery3d/filtershow/omron/FaceEdit;->apply(Landroid/graphics/Bitmap;Lcom/android/gallery3d/filtershow/omron/FaceBeautifierParamter;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 306
    .end local v1           #doFaceBeautifier:Z
    .end local v3           #i:I
    :cond_2
    iget-boolean v4, p0, Lcom/android/gallery3d/filtershow/presets/ImagePreset;->mDoApplyGeometry:Z

    if-eqz v4, :cond_3

    .line 307
    iget-object v4, p0, Lcom/android/gallery3d/filtershow/presets/ImagePreset;->mGeoData:Lcom/android/gallery3d/filtershow/imageshow/GeometryMetadata;

    iget v5, p0, Lcom/android/gallery3d/filtershow/presets/ImagePreset;->mScaleFactor:F

    iget-boolean v6, p0, Lcom/android/gallery3d/filtershow/presets/ImagePreset;->mIsHighQuality:Z

    invoke-virtual {v4, v0, v5, v6}, Lcom/android/gallery3d/filtershow/imageshow/GeometryMetadata;->apply(Landroid/graphics/Bitmap;FZ)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 310
    :cond_3
    iget-boolean v4, p0, Lcom/android/gallery3d/filtershow/presets/ImagePreset;->mDoApplyFilters:Z

    if-eqz v4, :cond_5

    .line 311
    const/4 v3, 0x0

    .restart local v3       #i:I
    :goto_1
    iget-object v4, p0, Lcom/android/gallery3d/filtershow/presets/ImagePreset;->mFilters:Ljava/util/Vector;

    invoke-virtual {v4}, Ljava/util/Vector;->size()I

    move-result v4

    if-ge v3, v4, :cond_5

    .line 312
    iget-object v4, p0, Lcom/android/gallery3d/filtershow/presets/ImagePreset;->mFilters:Ljava/util/Vector;

    invoke-virtual {v4, v3}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/gallery3d/filtershow/filters/ImageFilter;

    .line 313
    .restart local v2       #filter:Lcom/android/gallery3d/filtershow/filters/ImageFilter;
    invoke-virtual {v2}, Lcom/android/gallery3d/filtershow/filters/ImageFilter;->getFilterType()B

    move-result v4

    if-eq v4, v7, :cond_4

    .line 314
    iget v4, p0, Lcom/android/gallery3d/filtershow/presets/ImagePreset;->mScaleFactor:F

    iget-boolean v5, p0, Lcom/android/gallery3d/filtershow/presets/ImagePreset;->mIsHighQuality:Z

    invoke-virtual {v2, v0, v4, v5}, Lcom/android/gallery3d/filtershow/filters/ImageFilter;->apply(Landroid/graphics/Bitmap;FZ)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 311
    :cond_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 319
    .end local v2           #filter:Lcom/android/gallery3d/filtershow/filters/ImageFilter;
    .end local v3           #i:I
    :cond_5
    iget-object v4, p0, Lcom/android/gallery3d/filtershow/presets/ImagePreset;->mImageBorder:Lcom/android/gallery3d/filtershow/filters/ImageFilter;

    if-eqz v4, :cond_6

    iget-boolean v4, p0, Lcom/android/gallery3d/filtershow/presets/ImagePreset;->mDoApplyGeometry:Z

    if-eqz v4, :cond_6

    .line 320
    iget-object v4, p0, Lcom/android/gallery3d/filtershow/presets/ImagePreset;->mImageBorder:Lcom/android/gallery3d/filtershow/filters/ImageFilter;

    iget v5, p0, Lcom/android/gallery3d/filtershow/presets/ImagePreset;->mScaleFactor:F

    iget-boolean v6, p0, Lcom/android/gallery3d/filtershow/presets/ImagePreset;->mIsHighQuality:Z

    invoke-virtual {v4, v0, v5, v6}, Lcom/android/gallery3d/filtershow/filters/ImageFilter;->apply(Landroid/graphics/Bitmap;FZ)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 323
    :cond_6
    iget-object v4, p0, Lcom/android/gallery3d/filtershow/presets/ImagePreset;->mEndPoint:Lcom/android/gallery3d/filtershow/imageshow/ImageShow;

    if-eqz v4, :cond_7

    .line 324
    iget-object v4, p0, Lcom/android/gallery3d/filtershow/presets/ImagePreset;->mEndPoint:Lcom/android/gallery3d/filtershow/imageshow/ImageShow;

    invoke-virtual {v4, v0}, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->updateFilteredImage(Landroid/graphics/Bitmap;)V

    .line 327
    :cond_7
    return-object v0
.end method

.method public fillImageStateAdapter(Lcom/android/gallery3d/filtershow/ImageStateAdapter;)V
    .locals 1
    .parameter "imageStateAdapter"

    .prologue
    .line 331
    if-nez p1, :cond_0

    .line 337
    :goto_0
    return-void

    .line 334
    :cond_0
    invoke-virtual {p1}, Lcom/android/gallery3d/filtershow/ImageStateAdapter;->clear()V

    .line 335
    iget-object v0, p0, Lcom/android/gallery3d/filtershow/presets/ImagePreset;->mFilters:Ljava/util/Vector;

    invoke-virtual {p1, v0}, Lcom/android/gallery3d/filtershow/ImageStateAdapter;->addAll(Ljava/util/Collection;)V

    .line 336
    invoke-virtual {p1}, Lcom/android/gallery3d/filtershow/ImageStateAdapter;->notifyDataSetChanged()V

    goto :goto_0
.end method

.method public getBorder()Lcom/android/gallery3d/filtershow/filters/ImageFilter;
    .locals 1

    .prologue
    .line 149
    iget-object v0, p0, Lcom/android/gallery3d/filtershow/presets/ImagePreset;->mImageBorder:Lcom/android/gallery3d/filtershow/filters/ImageFilter;

    return-object v0
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 267
    iget-object v0, p0, Lcom/android/gallery3d/filtershow/presets/ImagePreset;->mFilters:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    return v0
.end method

.method public getFilter(Ljava/lang/String;)Lcom/android/gallery3d/filtershow/filters/ImageFilter;
    .locals 3
    .parameter "name"

    .prologue
    .line 271
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    iget-object v2, p0, Lcom/android/gallery3d/filtershow/presets/ImagePreset;->mFilters:Ljava/util/Vector;

    invoke-virtual {v2}, Ljava/util/Vector;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 272
    iget-object v2, p0, Lcom/android/gallery3d/filtershow/presets/ImagePreset;->mFilters:Ljava/util/Vector;

    invoke-virtual {v2, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/gallery3d/filtershow/filters/ImageFilter;

    .line 273
    .local v0, filter:Lcom/android/gallery3d/filtershow/filters/ImageFilter;
    invoke-virtual {v0}, Lcom/android/gallery3d/filtershow/filters/ImageFilter;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 277
    .end local v0           #filter:Lcom/android/gallery3d/filtershow/filters/ImageFilter;
    :goto_1
    return-object v0

    .line 271
    .restart local v0       #filter:Lcom/android/gallery3d/filtershow/filters/ImageFilter;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 277
    .end local v0           #filter:Lcom/android/gallery3d/filtershow/filters/ImageFilter;
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public getImageLoader()Lcom/android/gallery3d/filtershow/cache/ImageLoader;
    .locals 1

    .prologue
    .line 169
    iget-object v0, p0, Lcom/android/gallery3d/filtershow/presets/ImagePreset;->mImageLoader:Lcom/android/gallery3d/filtershow/cache/ImageLoader;

    return-object v0
.end method

.method public getScaleFactor()F
    .locals 1

    .prologue
    .line 340
    iget v0, p0, Lcom/android/gallery3d/filtershow/presets/ImagePreset;->mScaleFactor:F

    return v0
.end method

.method public hasModifications()Z
    .locals 4

    .prologue
    const/4 v2, 0x1

    .line 105
    iget-object v3, p0, Lcom/android/gallery3d/filtershow/presets/ImagePreset;->mImageBorder:Lcom/android/gallery3d/filtershow/filters/ImageFilter;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/android/gallery3d/filtershow/presets/ImagePreset;->mImageBorder:Lcom/android/gallery3d/filtershow/filters/ImageFilter;

    invoke-virtual {v3}, Lcom/android/gallery3d/filtershow/filters/ImageFilter;->isNil()Z

    move-result v3

    if-nez v3, :cond_1

    .line 117
    :cond_0
    :goto_0
    return v2

    .line 108
    :cond_1
    iget-object v3, p0, Lcom/android/gallery3d/filtershow/presets/ImagePreset;->mGeoData:Lcom/android/gallery3d/filtershow/imageshow/GeometryMetadata;

    invoke-virtual {v3}, Lcom/android/gallery3d/filtershow/imageshow/GeometryMetadata;->hasModifications()Z

    move-result v3

    if-nez v3, :cond_0

    .line 111
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    iget-object v3, p0, Lcom/android/gallery3d/filtershow/presets/ImagePreset;->mFilters:Ljava/util/Vector;

    invoke-virtual {v3}, Ljava/util/Vector;->size()I

    move-result v3

    if-ge v1, v3, :cond_2

    .line 112
    iget-object v3, p0, Lcom/android/gallery3d/filtershow/presets/ImagePreset;->mFilters:Ljava/util/Vector;

    invoke-virtual {v3, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/gallery3d/filtershow/filters/ImageFilter;

    .line 113
    .local v0, filter:Lcom/android/gallery3d/filtershow/filters/ImageFilter;
    invoke-virtual {v0}, Lcom/android/gallery3d/filtershow/filters/ImageFilter;->isNil()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 111
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 117
    .end local v0           #filter:Lcom/android/gallery3d/filtershow/filters/ImageFilter;
    :cond_2
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public historyName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 223
    iget-object v0, p0, Lcom/android/gallery3d/filtershow/presets/ImagePreset;->mHistoryName:Ljava/lang/String;

    return-object v0
.end method

.method public isFx()Z
    .locals 1

    .prologue
    .line 152
    iget-boolean v0, p0, Lcom/android/gallery3d/filtershow/presets/ImagePreset;->mIsFxPreset:Z

    return v0
.end method

.method public isHighQuality()Z
    .locals 1

    .prologue
    .line 344
    iget-boolean v0, p0, Lcom/android/gallery3d/filtershow/presets/ImagePreset;->mIsHighQuality:Z

    return v0
.end method

.method public isPanoramaSafe()Z
    .locals 5

    .prologue
    const/4 v2, 0x0

    .line 121
    iget-object v3, p0, Lcom/android/gallery3d/filtershow/presets/ImagePreset;->mImageBorder:Lcom/android/gallery3d/filtershow/filters/ImageFilter;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/android/gallery3d/filtershow/presets/ImagePreset;->mImageBorder:Lcom/android/gallery3d/filtershow/filters/ImageFilter;

    invoke-virtual {v3}, Lcom/android/gallery3d/filtershow/filters/ImageFilter;->isNil()Z

    move-result v3

    if-nez v3, :cond_1

    .line 137
    :cond_0
    :goto_0
    return v2

    .line 124
    :cond_1
    iget-object v3, p0, Lcom/android/gallery3d/filtershow/presets/ImagePreset;->mGeoData:Lcom/android/gallery3d/filtershow/imageshow/GeometryMetadata;

    invoke-virtual {v3}, Lcom/android/gallery3d/filtershow/imageshow/GeometryMetadata;->hasModifications()Z

    move-result v3

    if-nez v3, :cond_0

    .line 127
    iget-object v3, p0, Lcom/android/gallery3d/filtershow/presets/ImagePreset;->mFilters:Ljava/util/Vector;

    invoke-virtual {v3}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/gallery3d/filtershow/filters/ImageFilter;

    .line 128
    .local v0, filter:Lcom/android/gallery3d/filtershow/filters/ImageFilter;
    invoke-virtual {v0}, Lcom/android/gallery3d/filtershow/filters/ImageFilter;->getFilterType()B

    move-result v3

    const/4 v4, 0x4

    if-ne v3, v4, :cond_3

    invoke-virtual {v0}, Lcom/android/gallery3d/filtershow/filters/ImageFilter;->isNil()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 132
    :cond_3
    invoke-virtual {v0}, Lcom/android/gallery3d/filtershow/filters/ImageFilter;->getFilterType()B

    move-result v3

    const/4 v4, 0x6

    if-ne v3, v4, :cond_2

    invoke-virtual {v0}, Lcom/android/gallery3d/filtershow/filters/ImageFilter;->isNil()Z

    move-result v3

    if-nez v3, :cond_2

    goto :goto_0

    .line 137
    .end local v0           #filter:Lcom/android/gallery3d/filtershow/filters/ImageFilter;
    :cond_4
    const/4 v2, 0x1

    goto :goto_0
.end method

.method public name()Ljava/lang/String;
    .locals 1

    .prologue
    .line 219
    iget-object v0, p0, Lcom/android/gallery3d/filtershow/presets/ImagePreset;->mName:Ljava/lang/String;

    return-object v0
.end method

.method public remove(Ljava/lang/String;)V
    .locals 2
    .parameter "filterName"

    .prologue
    .line 260
    invoke-virtual {p0, p1}, Lcom/android/gallery3d/filtershow/presets/ImagePreset;->getFilter(Ljava/lang/String;)Lcom/android/gallery3d/filtershow/filters/ImageFilter;

    move-result-object v0

    .line 261
    .local v0, filter:Lcom/android/gallery3d/filtershow/filters/ImageFilter;
    if-eqz v0, :cond_0

    .line 262
    iget-object v1, p0, Lcom/android/gallery3d/filtershow/presets/ImagePreset;->mFilters:Ljava/util/Vector;

    invoke-virtual {v1, v0}, Ljava/util/Vector;->remove(Ljava/lang/Object;)Z

    .line 264
    :cond_0
    return-void
.end method

.method public same(Lcom/android/gallery3d/filtershow/presets/ImagePreset;)Z
    .locals 6
    .parameter "preset"

    .prologue
    const/4 v3, 0x0

    .line 177
    iget-object v4, p1, Lcom/android/gallery3d/filtershow/presets/ImagePreset;->mFilters:Ljava/util/Vector;

    invoke-virtual {v4}, Ljava/util/Vector;->size()I

    move-result v4

    iget-object v5, p0, Lcom/android/gallery3d/filtershow/presets/ImagePreset;->mFilters:Ljava/util/Vector;

    invoke-virtual {v5}, Ljava/util/Vector;->size()I

    move-result v5

    if-eq v4, v5, :cond_1

    .line 215
    :cond_0
    :goto_0
    return v3

    .line 180
    :cond_1
    iget-object v4, p0, Lcom/android/gallery3d/filtershow/presets/ImagePreset;->mName:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/android/gallery3d/filtershow/presets/ImagePreset;->name()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 184
    iget-boolean v4, p0, Lcom/android/gallery3d/filtershow/presets/ImagePreset;->mDoApplyGeometry:Z

    iget-boolean v5, p1, Lcom/android/gallery3d/filtershow/presets/ImagePreset;->mDoApplyGeometry:Z

    if-ne v4, v5, :cond_0

    .line 188
    iget-boolean v4, p0, Lcom/android/gallery3d/filtershow/presets/ImagePreset;->mDoApplyGeometry:Z

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/android/gallery3d/filtershow/presets/ImagePreset;->mGeoData:Lcom/android/gallery3d/filtershow/imageshow/GeometryMetadata;

    iget-object v5, p1, Lcom/android/gallery3d/filtershow/presets/ImagePreset;->mGeoData:Lcom/android/gallery3d/filtershow/imageshow/GeometryMetadata;

    invoke-virtual {v4, v5}, Lcom/android/gallery3d/filtershow/imageshow/GeometryMetadata;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 192
    :cond_2
    iget-boolean v4, p0, Lcom/android/gallery3d/filtershow/presets/ImagePreset;->mDoApplyGeometry:Z

    if-eqz v4, :cond_3

    iget-object v4, p0, Lcom/android/gallery3d/filtershow/presets/ImagePreset;->mImageBorder:Lcom/android/gallery3d/filtershow/filters/ImageFilter;

    iget-object v5, p1, Lcom/android/gallery3d/filtershow/presets/ImagePreset;->mImageBorder:Lcom/android/gallery3d/filtershow/filters/ImageFilter;

    if-ne v4, v5, :cond_0

    .line 196
    :cond_3
    iget-object v4, p0, Lcom/android/gallery3d/filtershow/presets/ImagePreset;->mImageBorder:Lcom/android/gallery3d/filtershow/filters/ImageFilter;

    if-eqz v4, :cond_4

    iget-object v4, p0, Lcom/android/gallery3d/filtershow/presets/ImagePreset;->mImageBorder:Lcom/android/gallery3d/filtershow/filters/ImageFilter;

    iget-object v5, p1, Lcom/android/gallery3d/filtershow/presets/ImagePreset;->mImageBorder:Lcom/android/gallery3d/filtershow/filters/ImageFilter;

    invoke-virtual {v4, v5}, Lcom/android/gallery3d/filtershow/filters/ImageFilter;->same(Lcom/android/gallery3d/filtershow/filters/ImageFilter;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 200
    :cond_4
    iget-boolean v4, p0, Lcom/android/gallery3d/filtershow/presets/ImagePreset;->mDoApplyFilters:Z

    iget-boolean v5, p1, Lcom/android/gallery3d/filtershow/presets/ImagePreset;->mDoApplyFilters:Z

    if-eq v4, v5, :cond_5

    .line 201
    iget-object v4, p0, Lcom/android/gallery3d/filtershow/presets/ImagePreset;->mFilters:Ljava/util/Vector;

    invoke-virtual {v4}, Ljava/util/Vector;->size()I

    move-result v4

    if-gtz v4, :cond_0

    iget-object v4, p1, Lcom/android/gallery3d/filtershow/presets/ImagePreset;->mFilters:Ljava/util/Vector;

    invoke-virtual {v4}, Ljava/util/Vector;->size()I

    move-result v4

    if-gtz v4, :cond_0

    .line 206
    :cond_5
    iget-boolean v4, p0, Lcom/android/gallery3d/filtershow/presets/ImagePreset;->mDoApplyFilters:Z

    if-eqz v4, :cond_6

    iget-boolean v4, p1, Lcom/android/gallery3d/filtershow/presets/ImagePreset;->mDoApplyFilters:Z

    if-eqz v4, :cond_6

    .line 207
    const/4 v2, 0x0

    .local v2, i:I
    :goto_1
    iget-object v4, p1, Lcom/android/gallery3d/filtershow/presets/ImagePreset;->mFilters:Ljava/util/Vector;

    invoke-virtual {v4}, Ljava/util/Vector;->size()I

    move-result v4

    if-ge v2, v4, :cond_6

    .line 208
    iget-object v4, p1, Lcom/android/gallery3d/filtershow/presets/ImagePreset;->mFilters:Ljava/util/Vector;

    invoke-virtual {v4, v2}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/gallery3d/filtershow/filters/ImageFilter;

    .line 209
    .local v0, a:Lcom/android/gallery3d/filtershow/filters/ImageFilter;
    iget-object v4, p0, Lcom/android/gallery3d/filtershow/presets/ImagePreset;->mFilters:Ljava/util/Vector;

    invoke-virtual {v4, v2}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/gallery3d/filtershow/filters/ImageFilter;

    .line 210
    .local v1, b:Lcom/android/gallery3d/filtershow/filters/ImageFilter;
    invoke-virtual {v0, v1}, Lcom/android/gallery3d/filtershow/filters/ImageFilter;->same(Lcom/android/gallery3d/filtershow/filters/ImageFilter;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 207
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 215
    .end local v0           #a:Lcom/android/gallery3d/filtershow/filters/ImageFilter;
    .end local v1           #b:Lcom/android/gallery3d/filtershow/filters/ImageFilter;
    .end local v2           #i:I
    :cond_6
    const/4 v3, 0x1

    goto :goto_0
.end method

.method public setDoApplyFilters(Z)V
    .locals 0
    .parameter "value"

    .prologue
    .line 101
    iput-boolean p1, p0, Lcom/android/gallery3d/filtershow/presets/ImagePreset;->mDoApplyFilters:Z

    .line 102
    return-void
.end method

.method public setDoApplyGeometry(Z)V
    .locals 0
    .parameter "value"

    .prologue
    .line 97
    iput-boolean p1, p0, Lcom/android/gallery3d/filtershow/presets/ImagePreset;->mDoApplyGeometry:Z

    .line 98
    return-void
.end method

.method public setEndpoint(Lcom/android/gallery3d/filtershow/imageshow/ImageShow;)V
    .locals 0
    .parameter "image"

    .prologue
    .line 285
    iput-object p1, p0, Lcom/android/gallery3d/filtershow/presets/ImagePreset;->mEndPoint:Lcom/android/gallery3d/filtershow/imageshow/ImageShow;

    .line 286
    return-void
.end method

.method public setGeometry(Lcom/android/gallery3d/filtershow/imageshow/GeometryMetadata;)V
    .locals 1
    .parameter "m"

    .prologue
    .line 141
    iget-object v0, p0, Lcom/android/gallery3d/filtershow/presets/ImagePreset;->mGeoData:Lcom/android/gallery3d/filtershow/imageshow/GeometryMetadata;

    invoke-virtual {v0, p1}, Lcom/android/gallery3d/filtershow/imageshow/GeometryMetadata;->set(Lcom/android/gallery3d/filtershow/imageshow/GeometryMetadata;)V

    .line 142
    return-void
.end method

.method public setHistoryName(Ljava/lang/String;)V
    .locals 0
    .parameter "name"

    .prologue
    .line 165
    iput-object p1, p0, Lcom/android/gallery3d/filtershow/presets/ImagePreset;->mHistoryName:Ljava/lang/String;

    .line 166
    return-void
.end method

.method public setImageLoader(Lcom/android/gallery3d/filtershow/cache/ImageLoader;)V
    .locals 0
    .parameter "mImageLoader"

    .prologue
    .line 173
    iput-object p1, p0, Lcom/android/gallery3d/filtershow/presets/ImagePreset;->mImageLoader:Lcom/android/gallery3d/filtershow/cache/ImageLoader;

    .line 174
    return-void
.end method

.method public setIsFx(Z)V
    .locals 0
    .parameter "value"

    .prologue
    .line 156
    iput-boolean p1, p0, Lcom/android/gallery3d/filtershow/presets/ImagePreset;->mIsFxPreset:Z

    .line 157
    return-void
.end method

.method public setIsHighQuality(Z)V
    .locals 0
    .parameter "value"

    .prologue
    .line 348
    iput-boolean p1, p0, Lcom/android/gallery3d/filtershow/presets/ImagePreset;->mIsHighQuality:Z

    .line 349
    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0
    .parameter "name"

    .prologue
    .line 160
    iput-object p1, p0, Lcom/android/gallery3d/filtershow/presets/ImagePreset;->mName:Ljava/lang/String;

    .line 161
    iput-object p1, p0, Lcom/android/gallery3d/filtershow/presets/ImagePreset;->mHistoryName:Ljava/lang/String;

    .line 162
    return-void
.end method

.method public setScaleFactor(F)V
    .locals 0
    .parameter "value"

    .prologue
    .line 352
    iput p1, p0, Lcom/android/gallery3d/filtershow/presets/ImagePreset;->mScaleFactor:F

    .line 353
    return-void
.end method

.method public setup()V
    .locals 0

    .prologue
    .line 282
    return-void
.end method

.method public updateFaceBeautifierParameter(II)V
    .locals 1
    .parameter "type"
    .parameter "parameter"

    .prologue
    .line 356
    iget-object v0, p0, Lcom/android/gallery3d/filtershow/presets/ImagePreset;->mFaceBeautifierPara:Lcom/android/gallery3d/filtershow/omron/FaceBeautifierParamter;

    invoke-virtual {v0, p1, p2}, Lcom/android/gallery3d/filtershow/omron/FaceBeautifierParamter;->updateParameter(II)V

    .line 357
    return-void
.end method
