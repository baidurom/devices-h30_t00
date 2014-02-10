.class public Landroid/content/res/ResourcesEx;
.super Landroid/content/res/Resources;
.source "ResourcesEx.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/content/res/ResourcesEx$MaskRange;,
        Landroid/content/res/ResourcesEx$SaveBitmapThread;,
        Landroid/content/res/ResourcesEx$ThemeResource;
    }
.end annotation


# static fields
.field private static final ANDROID_RES:Ljava/lang/String; = "android"

.field private static final ANDROID_RES_EXT:Ljava/lang/String; = "androidhwext"

.field private static final DEBUG_DRAWABLE:Z = false

.field private static final DEBUG_ICON:Z = false

.field private static final DEBUG_VERBOSE_ICON:Z = false

.field private static final DEFAULT_EDGE_SIZE:I = 0x8

.field private static final DELTA_X_OF_BACKGROUND:I = 0x0

.field private static final DELTA_Y_OF_BACKGROUND:I = 0x0

.field private static final DYNAMIC_ICONS:Ljava/lang/String; = "dynamic_icons"

.field private static final FRAMEWORK_RES:Ljava/lang/String; = "framework-res"

.field private static final FRAMEWORK_RES_EXT:Ljava/lang/String; = "framework-res-hwext"

.field private static final ICONS_ZIPFILE:Ljava/lang/String; = "icons"

.field private static final ICON_BACKGROUND_PREFIX:Ljava/lang/String; = "icon_background"

.field private static final ICON_BORDER_FILE:Ljava/lang/String; = "icon_border.png"

.field private static final ICON_MASK_ALL_FILE:Ljava/lang/String; = "icon_mask_all.png"

.field private static final ICON_MASK_FILE:Ljava/lang/String; = "icon_mask.png"

.field private static final ICON_SYS_APP_DEFAULT:Ljava/lang/String; = "sym_def_app_icon"

.field private static final LEN_OF_ANDROID:I = 0x7

.field private static final LEN_OF_ANDROID_EXT:I = 0xc

.field private static final MASK_ABS_VALID_RANGE:I = 0xa

.field static final TAG:Ljava/lang/String; = "ResourcesEx"

.field private static final THEME_DIR:Ljava/lang/String;

.field private static final THEME_DIR_CACHE:Ljava/lang/String;

.field private static mCacheColorInfoList:Ljava/util/HashMap;
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

.field private static mNonThemedPackage:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static mPreloadedThemeColorList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static sBgList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field

.field private static sBmpBorder:Landroid/graphics/Bitmap;

.field private static sBmpMask:Landroid/graphics/Bitmap;

.field private static sBmpSysAppDefault:Landroid/graphics/Bitmap;

.field private static final sConfigAppBigIconSize:I

.field private static final sConfigAppInnerIconSize:I

.field private static sDefaultSizeWithoutEdge:I

.field private static sMaskRange:Landroid/content/res/ResourcesEx$MaskRange;

.field private static sMaskSizeWithoutEdge:I

.field private static sStandardBgSize:I

.field private static sStandardIconSize:I


# instance fields
.field private isThemeColor:Z

.field private final mDrawableCacheEx:Landroid/util/LongSparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/LongSparseArray",
            "<",
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/graphics/drawable/Drawable$ConstantState;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, -0x1

    .line 62
    sput v2, Landroid/content/res/ResourcesEx;->sStandardBgSize:I

    .line 64
    sput v2, Landroid/content/res/ResourcesEx;->sDefaultSizeWithoutEdge:I

    .line 65
    sput v2, Landroid/content/res/ResourcesEx;->sMaskSizeWithoutEdge:I

    .line 71
    sput v2, Landroid/content/res/ResourcesEx;->sStandardIconSize:I

    .line 72
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Landroid/content/res/ResourcesEx;->sBgList:Ljava/util/ArrayList;

    .line 73
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/skin"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/content/res/ResourcesEx;->THEME_DIR:Ljava/lang/String;

    .line 87
    sput-object v3, Landroid/content/res/ResourcesEx;->sBmpBorder:Landroid/graphics/Bitmap;

    .line 88
    sput-object v3, Landroid/content/res/ResourcesEx;->sBmpMask:Landroid/graphics/Bitmap;

    .line 89
    sput-object v3, Landroid/content/res/ResourcesEx;->sBmpSysAppDefault:Landroid/graphics/Bitmap;

    .line 91
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Landroid/content/res/ResourcesEx;->THEME_DIR:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/iconcache/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/content/res/ResourcesEx;->THEME_DIR_CACHE:Ljava/lang/String;

    .line 93
    sget-object v0, Landroid/content/res/ResourcesEx$MaskRange;->UNDEFINED:Landroid/content/res/ResourcesEx$MaskRange;

    sput-object v0, Landroid/content/res/ResourcesEx;->sMaskRange:Landroid/content/res/ResourcesEx$MaskRange;

    .line 98
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Landroid/content/res/ResourcesEx;->mCacheColorInfoList:Ljava/util/HashMap;

    .line 99
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Landroid/content/res/ResourcesEx;->mPreloadedThemeColorList:Ljava/util/ArrayList;

    .line 100
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Landroid/content/res/ResourcesEx;->mNonThemedPackage:Ljava/util/ArrayList;

    .line 108
    const-string/jumbo v0, "ro.config.app_big_icon_size"

    invoke-static {v0, v2}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    sput v0, Landroid/content/res/ResourcesEx;->sConfigAppBigIconSize:I

    .line 110
    const-string/jumbo v0, "ro.config.app_inner_icon_size"

    invoke-static {v0, v2}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    sput v0, Landroid/content/res/ResourcesEx;->sConfigAppInnerIconSize:I

    return-void
.end method

.method protected constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, -0x1

    .line 860
    invoke-direct {p0}, Landroid/content/res/Resources;-><init>()V

    .line 95
    new-instance v0, Landroid/util/LongSparseArray;

    invoke-direct {v0}, Landroid/util/LongSparseArray;-><init>()V

    iput-object v0, p0, Landroid/content/res/ResourcesEx;->mDrawableCacheEx:Landroid/util/LongSparseArray;

    .line 101
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/content/res/ResourcesEx;->isThemeColor:Z

    .line 861
    sget v0, Landroid/content/res/ResourcesEx;->sStandardBgSize:I

    if-ne v1, v0, :cond_0

    .line 862
    sget v0, Landroid/content/res/ResourcesEx;->sConfigAppBigIconSize:I

    if-ne v0, v1, :cond_1

    const v0, 0x105007d

    invoke-virtual {p0, v0}, Landroid/content/res/ResourcesEx;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    :goto_0
    sput v0, Landroid/content/res/ResourcesEx;->sStandardBgSize:I

    .line 866
    sget v0, Landroid/content/res/ResourcesEx;->sStandardBgSize:I

    add-int/lit8 v0, v0, 0x8

    sput v0, Landroid/content/res/ResourcesEx;->sDefaultSizeWithoutEdge:I

    .line 868
    sget v0, Landroid/content/res/ResourcesEx;->sConfigAppInnerIconSize:I

    if-ne v0, v1, :cond_2

    const v0, 0x105007c

    invoke-virtual {p0, v0}, Landroid/content/res/ResourcesEx;->getDimensionPixelSize(I)I

    move-result v0

    :goto_1
    sput v0, Landroid/content/res/ResourcesEx;->sStandardIconSize:I

    .line 874
    :cond_0
    invoke-static {}, Landroid/content/res/ResourcesEx;->initStatics()V

    .line 875
    return-void

    .line 862
    :cond_1
    sget v0, Landroid/content/res/ResourcesEx;->sConfigAppBigIconSize:I

    goto :goto_0

    .line 868
    :cond_2
    sget v0, Landroid/content/res/ResourcesEx;->sConfigAppInnerIconSize:I

    goto :goto_1
.end method

.method public constructor <init>(Landroid/content/res/AssetManager;Landroid/util/DisplayMetrics;Landroid/content/res/Configuration;)V
    .locals 1
    .parameter "assets"
    .parameter "metrics"
    .parameter "config"

    .prologue
    .line 839
    const/4 v0, 0x0

    check-cast v0, Landroid/content/res/CompatibilityInfo;

    invoke-direct {p0, p1, p2, p3, v0}, Landroid/content/res/ResourcesEx;-><init>(Landroid/content/res/AssetManager;Landroid/util/DisplayMetrics;Landroid/content/res/Configuration;Landroid/content/res/CompatibilityInfo;)V

    .line 840
    return-void
.end method

.method public constructor <init>(Landroid/content/res/AssetManager;Landroid/util/DisplayMetrics;Landroid/content/res/Configuration;Landroid/content/res/CompatibilityInfo;)V
    .locals 1
    .parameter "assets"
    .parameter "metrics"
    .parameter "config"
    .parameter "compInfo"

    .prologue
    .line 856
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/content/res/Resources;-><init>(Landroid/content/res/AssetManager;Landroid/util/DisplayMetrics;Landroid/content/res/Configuration;Landroid/content/res/CompatibilityInfo;)V

    .line 95
    new-instance v0, Landroid/util/LongSparseArray;

    invoke-direct {v0}, Landroid/util/LongSparseArray;-><init>()V

    iput-object v0, p0, Landroid/content/res/ResourcesEx;->mDrawableCacheEx:Landroid/util/LongSparseArray;

    .line 101
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/content/res/ResourcesEx;->isThemeColor:Z

    .line 857
    return-void
.end method

.method static synthetic access$200()Ljava/lang/String;
    .locals 1

    .prologue
    .line 57
    sget-object v0, Landroid/content/res/ResourcesEx;->THEME_DIR_CACHE:Ljava/lang/String;

    return-object v0
.end method

.method private addIconBackgroud(Landroid/graphics/Bitmap;Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 10
    .parameter "bmpSrc"
    .parameter "idAndPackageName"

    .prologue
    const/4 v4, 0x0

    const/4 v9, 0x0

    .line 282
    sget-object v6, Landroid/content/res/ResourcesEx;->THEME_DIR:Ljava/lang/String;

    const-string v7, "icons"

    invoke-static {v6, v7}, Landroid/content/res/ZipFileCache;->getAndCheckCachedZipFile(Ljava/lang/String;Ljava/lang/String;)Landroid/content/res/ZipFileCache;

    move-result-object v2

    .line 283
    .local v2, iconZipFileCache:Landroid/content/res/ZipFileCache;
    if-nez v2, :cond_1

    .line 349
    :cond_0
    :goto_0
    return-object v4

    .line 287
    :cond_1
    invoke-static {v2}, Landroid/content/res/ResourcesEx;->initBorder(Landroid/content/res/ZipFileCache;)V

    .line 289
    sget-object v6, Landroid/content/res/ResourcesEx;->sBmpBorder:Landroid/graphics/Bitmap;

    if-eqz v6, :cond_0

    .line 293
    invoke-static {v2}, Landroid/content/res/ResourcesEx;->initMask(Landroid/content/res/ZipFileCache;)V

    .line 295
    sget-object v6, Landroid/content/res/ResourcesEx;->sBmpMask:Landroid/graphics/Bitmap;

    if-eqz v6, :cond_0

    .line 298
    invoke-direct {p0, p2}, Landroid/content/res/ResourcesEx;->getRandomBgImage(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 299
    .local v0, bmpBg:Landroid/graphics/Bitmap;
    if-eqz v0, :cond_0

    .line 303
    const/4 v6, 0x1

    invoke-static {v6}, Landroid/content/res/ResourcesEx;->initMaskSizeWithoutEdge(Z)V

    .line 306
    sget v6, Landroid/content/res/ResourcesEx;->sDefaultSizeWithoutEdge:I

    sget v7, Landroid/content/res/ResourcesEx;->sStandardIconSize:I

    sget v8, Landroid/content/res/ResourcesEx;->sMaskSizeWithoutEdge:I

    invoke-static {p1, v6, v7, v8}, Landroid/content/IconBitmapUtils;->zoomWithoutEdge(Landroid/graphics/Bitmap;III)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 308
    .local v1, bmpSrcStd:Landroid/graphics/Bitmap;
    sget-object v6, Landroid/content/res/ResourcesEx;->sBmpMask:Landroid/graphics/Bitmap;

    invoke-static {v1, v6}, Landroid/content/IconBitmapUtils;->mask(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v3

    .line 309
    .local v3, maskResultBitmap:Landroid/graphics/Bitmap;
    const/4 v4, 0x0

    .line 310
    .local v4, newBitmap:Landroid/graphics/Bitmap;
    const/4 v5, 0x0

    .line 312
    .local v5, tmpBitmap:Landroid/graphics/Bitmap;
    if-eqz v3, :cond_4

    .line 313
    invoke-static {v3, v0, v9, v9}, Landroid/content/IconBitmapUtils;->overlap2Bitmap(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;

    move-result-object v5

    .line 314
    sget-object v6, Landroid/content/res/ResourcesEx;->sBmpBorder:Landroid/graphics/Bitmap;

    invoke-static {v6, v5}, Landroid/content/IconBitmapUtils;->overlap2Bitmap(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v4

    .line 320
    :goto_1
    if-eqz v3, :cond_2

    .line 321
    invoke-virtual {v3}, Landroid/graphics/Bitmap;->recycle()V

    .line 323
    :cond_2
    if-eqz v5, :cond_3

    .line 324
    invoke-virtual {v5}, Landroid/graphics/Bitmap;->recycle()V

    .line 326
    :cond_3
    if-ne v1, p1, :cond_5

    .line 328
    if-eqz v4, :cond_0

    .line 329
    if-eqz v1, :cond_0

    .line 330
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    goto :goto_0

    .line 317
    :cond_4
    invoke-static {v1, v0, v9, v9}, Landroid/content/IconBitmapUtils;->overlap2Bitmap(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;

    move-result-object v5

    .line 318
    sget-object v6, Landroid/content/res/ResourcesEx;->sBmpBorder:Landroid/graphics/Bitmap;

    invoke-static {v6, v5}, Landroid/content/IconBitmapUtils;->overlap2Bitmap(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v4

    goto :goto_1

    .line 335
    :cond_5
    if-eqz v4, :cond_7

    .line 336
    if-eqz v1, :cond_6

    .line 337
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    .line 339
    :cond_6
    if-eqz p1, :cond_0

    .line 340
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->recycle()V

    goto :goto_0

    .line 344
    :cond_7
    if-eqz v1, :cond_0

    .line 345
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    goto :goto_0
.end method

.method private checkSpecialIcons(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    .locals 2
    .parameter "entryName"

    .prologue
    const/4 v0, 0x0

    .line 265
    const-string/jumbo v1, "sym_def_app_icon"

    invoke-virtual {p1, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    if-ltz v1, :cond_0

    .line 267
    invoke-static {v0}, Landroid/content/res/ResourcesEx;->initSysDefault(Landroid/content/res/ZipFileCache;)V

    .line 269
    sget-object v1, Landroid/content/res/ResourcesEx;->sBmpSysAppDefault:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_0

    .line 270
    new-instance v0, Landroid/graphics/drawable/BitmapDrawable;

    sget-object v1, Landroid/content/res/ResourcesEx;->sBmpSysAppDefault:Landroid/graphics/Bitmap;

    invoke-direct {v0, p0, v1}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    .line 273
    :cond_0
    return-object v0
.end method

.method private static getAllBgImage(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .parameter "path"
    .parameter "zip"

    .prologue
    .line 119
    sget-object v3, Landroid/content/res/ResourcesEx;->sBgList:Ljava/util/ArrayList;

    if-eqz v3, :cond_1

    sget-object v3, Landroid/content/res/ResourcesEx;->sBgList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_1

    .line 141
    :cond_0
    return-void

    .line 122
    :cond_1
    sget-object v3, Landroid/content/res/ResourcesEx;->THEME_DIR:Ljava/lang/String;

    const-string v4, "icons"

    invoke-static {v3, v4}, Landroid/content/res/ZipFileCache;->getAndCheckCachedZipFile(Ljava/lang/String;Ljava/lang/String;)Landroid/content/res/ZipFileCache;

    move-result-object v2

    .line 123
    .local v2, iconZipFileCache:Landroid/content/res/ZipFileCache;
    if-eqz v2, :cond_0

    .line 126
    const/4 v0, 0x0

    .line 127
    .local v0, bmp:Landroid/graphics/Bitmap;
    const-string v3, "icon_background"

    invoke-virtual {v2, v3}, Landroid/content/res/ZipFileCache;->getBitmapList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v3

    sput-object v3, Landroid/content/res/ResourcesEx;->sBgList:Ljava/util/ArrayList;

    .line 128
    sget-object v3, Landroid/content/res/ResourcesEx;->sBgList:Ljava/util/ArrayList;

    if-eqz v3, :cond_0

    .line 131
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    sget-object v3, Landroid/content/res/ResourcesEx;->sBgList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v1, v3, :cond_0

    .line 132
    sget-object v3, Landroid/content/res/ResourcesEx;->sBgList:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    .end local v0           #bmp:Landroid/graphics/Bitmap;
    check-cast v0, Landroid/graphics/Bitmap;

    .line 133
    .restart local v0       #bmp:Landroid/graphics/Bitmap;
    if-eqz v0, :cond_2

    .line 134
    sget v3, Landroid/content/res/ResourcesEx;->sStandardBgSize:I

    const/4 v4, 0x1

    invoke-static {v0, v3, v4}, Landroid/content/IconBitmapUtils;->zoomIfNeed(Landroid/graphics/Bitmap;IZ)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 135
    sget-object v3, Landroid/content/res/ResourcesEx;->sBgList:Ljava/util/ArrayList;

    invoke-virtual {v3, v1, v0}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 131
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method private getBitmapFromCacheDir(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 5
    .parameter "fileName"

    .prologue
    .line 956
    const/4 v0, 0x0

    .line 957
    .local v0, bmp:Landroid/graphics/Bitmap;
    new-instance v1, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Landroid/content/res/ResourcesEx;->THEME_DIR_CACHE:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 958
    .local v1, file:Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 959
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Landroid/content/res/ResourcesEx;->THEME_DIR_CACHE:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 960
    if-nez v0, :cond_0

    .line 961
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    move-result v2

    if-nez v2, :cond_0

    .line 962
    const-string v2, "ResourcesEx"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " exists but decode failed."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 966
    :cond_0
    return-object v0
.end method

.method private getCode(Ljava/lang/String;)I
    .locals 3
    .parameter "idAndPackageName"

    .prologue
    .line 168
    const/4 v0, 0x0

    .line 169
    .local v0, code:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 170
    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    add-int/2addr v0, v2

    .line 169
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 172
    :cond_0
    return v0
.end method

.method private getColorValueFromStr(Ljava/lang/String;)I
    .locals 8
    .parameter "value"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 697
    if-eqz p1, :cond_5

    .line 698
    const-string v1, "#"

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 699
    new-instance v1, Ljava/lang/NumberFormatException;

    const-string v2, "Color value \'%s\' must start with #"

    new-array v3, v3, [Ljava/lang/Object;

    aput-object p1, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 703
    :cond_0
    invoke-virtual {p1, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    .line 706
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v2, 0x8

    if-le v1, v2, :cond_1

    .line 707
    new-instance v1, Ljava/lang/NumberFormatException;

    const-string v2, "Color value \'%s\' is too long. Format is either#AARRGGBB, #RRGGBB, #RGB, or #ARGB"

    new-array v3, v3, [Ljava/lang/Object;

    aput-object p1, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 713
    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-ne v1, v6, :cond_3

    .line 714
    const/16 v1, 0x8

    new-array v0, v1, [C

    .line 715
    .local v0, color:[C
    const/16 v1, 0x46

    aput-char v1, v0, v3

    aput-char v1, v0, v4

    .line 716
    invoke-virtual {p1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v1

    aput-char v1, v0, v6

    aput-char v1, v0, v5

    .line 717
    const/4 v1, 0x5

    invoke-virtual {p1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v2

    aput-char v2, v0, v1

    aput-char v2, v0, v7

    .line 718
    const/4 v1, 0x6

    const/4 v2, 0x7

    invoke-virtual {p1, v5}, Ljava/lang/String;->charAt(I)C

    move-result v3

    aput-char v3, v0, v2

    aput-char v3, v0, v1

    .line 719
    new-instance p1, Ljava/lang/String;

    .end local p1
    invoke-direct {p1, v0}, Ljava/lang/String;-><init>([C)V

    .line 736
    .end local v0           #color:[C
    .restart local p1
    :cond_2
    :goto_0
    const/16 v1, 0x10

    invoke-static {p1, v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;I)J

    move-result-wide v1

    long-to-int v1, v1

    return v1

    .line 720
    :cond_3
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-ne v1, v7, :cond_4

    .line 721
    const/16 v1, 0x8

    new-array v0, v1, [C

    .line 722
    .restart local v0       #color:[C
    invoke-virtual {p1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v1

    aput-char v1, v0, v3

    aput-char v1, v0, v4

    .line 723
    invoke-virtual {p1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v1

    aput-char v1, v0, v6

    aput-char v1, v0, v5

    .line 724
    const/4 v1, 0x5

    invoke-virtual {p1, v5}, Ljava/lang/String;->charAt(I)C

    move-result v2

    aput-char v2, v0, v1

    aput-char v2, v0, v7

    .line 725
    const/4 v1, 0x6

    const/4 v2, 0x7

    invoke-virtual {p1, v6}, Ljava/lang/String;->charAt(I)C

    move-result v3

    aput-char v3, v0, v2

    aput-char v3, v0, v1

    .line 726
    new-instance p1, Ljava/lang/String;

    .end local p1
    invoke-direct {p1, v0}, Ljava/lang/String;-><init>([C)V

    .line 727
    .restart local p1
    goto :goto_0

    .end local v0           #color:[C
    :cond_4
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x6

    if-ne v1, v2, :cond_2

    .line 728
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "FF"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 739
    :cond_5
    new-instance v1, Ljava/lang/NumberFormatException;

    invoke-direct {v1}, Ljava/lang/NumberFormatException;-><init>()V

    throw v1
.end method

.method private getIconFileName(I)Ljava/lang/String;
    .locals 7
    .parameter "id"

    .prologue
    .line 947
    invoke-virtual {p0, p1}, Landroid/content/res/ResourcesEx;->getResourcePackageName(I)Ljava/lang/String;

    move-result-object v3

    .line 948
    .local v3, packageName:Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "#"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 949
    .local v1, idAndPackageName:Ljava/lang/String;
    const-string v2, ""

    .line 950
    .local v2, imgFile:Ljava/lang/String;
    invoke-static {v1}, Landroid/content/IconCache;->get(Ljava/lang/String;)Landroid/content/IconCache$CacheEntry;

    move-result-object v0

    .line 952
    .local v0, ce:Landroid/content/IconCache$CacheEntry;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget v5, v0, Landroid/content/IconCache$CacheEntry;->type:I

    const/4 v6, 0x1

    if-ne v5, v6, :cond_0

    iget-object v3, v0, Landroid/content/IconCache$CacheEntry;->name:Ljava/lang/String;

    .end local v3           #packageName:Ljava/lang/String;
    :cond_0
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ".png"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 953
    return-object v2
.end method

.method private getRandomBgImage(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 4
    .parameter "idAndPackageName"

    .prologue
    .line 148
    sget-object v2, Landroid/content/res/ResourcesEx;->sBgList:Ljava/util/ArrayList;

    if-eqz v2, :cond_0

    sget-object v2, Landroid/content/res/ResourcesEx;->sBgList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 149
    :cond_0
    sget-object v2, Landroid/content/res/ResourcesEx;->THEME_DIR:Ljava/lang/String;

    const-string v3, "icons"

    invoke-static {v2, v3}, Landroid/content/res/ResourcesEx;->getAllBgImage(Ljava/lang/String;Ljava/lang/String;)V

    .line 151
    :cond_1
    const/4 v1, 0x0

    .line 152
    .local v1, len:I
    sget-object v2, Landroid/content/res/ResourcesEx;->sBgList:Ljava/util/ArrayList;

    if-eqz v2, :cond_2

    .line 153
    sget-object v2, Landroid/content/res/ResourcesEx;->sBgList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 155
    :cond_2
    if-lez v1, :cond_3

    .line 156
    invoke-direct {p0, p1}, Landroid/content/res/ResourcesEx;->getCode(Ljava/lang/String;)I

    move-result v2

    rem-int v0, v2, v1

    .line 157
    .local v0, i:I
    sget-object v2, Landroid/content/res/ResourcesEx;->sBgList:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/Bitmap;

    .line 159
    .end local v0           #i:I
    :goto_0
    return-object v2

    :cond_3
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private getThemeResource(I)Landroid/content/res/ResourcesEx$ThemeResource;
    .locals 4
    .parameter "id"

    .prologue
    .line 801
    invoke-virtual {p0, p1}, Landroid/content/res/ResourcesEx;->getResourcePackageName(I)Ljava/lang/String;

    move-result-object v0

    .line 802
    .local v0, packageName:Ljava/lang/String;
    invoke-virtual {p0, p1}, Landroid/content/res/ResourcesEx;->getResourceName(I)Ljava/lang/String;

    move-result-object v1

    .line 803
    .local v1, resName:Ljava/lang/String;
    const-string v2, "android"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 804
    const-string v0, "framework-res"

    .line 805
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "framework-res"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/4 v3, 0x7

    invoke-virtual {v1, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 808
    :cond_0
    const-string v2, "androidhwext"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 809
    const-string v0, "framework-res-hwext"

    .line 810
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "framework-res-hwext"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/16 v3, 0xc

    invoke-virtual {v1, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 812
    :cond_1
    new-instance v2, Landroid/content/res/ResourcesEx$ThemeResource;

    invoke-direct {v2, v0, v1}, Landroid/content/res/ResourcesEx$ThemeResource;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v2
.end method

.method private inflateColorInfoList(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)V
    .locals 12
    .parameter "parser"
    .parameter "packageName"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v11, 0x0

    .line 655
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v3

    .line 659
    .local v3, innerDepth:I
    :cond_0
    :goto_0
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v8

    .local v8, type:I
    const/4 v9, 0x1

    if-eq v8, v9, :cond_4

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v9

    if-gt v9, v3, :cond_1

    const/4 v9, 0x3

    if-eq v8, v9, :cond_4

    .line 661
    :cond_1
    const/4 v9, 0x2

    if-ne v8, v9, :cond_0

    .line 665
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v4

    .line 666
    .local v4, lableName:Ljava/lang/String;
    const-string v9, "color"

    invoke-virtual {v4, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_2

    const-string v9, "drawable"

    invoke-virtual {v4, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 669
    :cond_2
    invoke-interface {p1, v11}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeName(I)Ljava/lang/String;

    move-result-object v5

    .line 670
    .local v5, name:Ljava/lang/String;
    invoke-interface {p1, v11}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v0

    .line 671
    .local v0, colorName:Ljava/lang/String;
    const/4 v7, 0x0

    .line 672
    .local v7, text:Ljava/lang/String;
    const/4 v1, 0x0

    .line 673
    .local v1, colorVaue:I
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v9

    const/4 v10, 0x4

    if-ne v9, v10, :cond_3

    .line 674
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object v7

    .line 676
    :cond_3
    const-string/jumbo v9, "name"

    invoke-virtual {v9, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 677
    invoke-direct {p0, v7}, Landroid/content/res/ResourcesEx;->getColorValueFromStr(Ljava/lang/String;)I

    move-result v1

    .line 679
    const/4 v2, 0x0

    .line 680
    .local v2, fullColorName:Ljava/lang/String;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 681
    .local v6, sb:Ljava/lang/StringBuilder;
    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 682
    const-string v9, ":"

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 683
    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 684
    const-string v9, "/"

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 685
    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 687
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 688
    sget-object v9, Landroid/content/res/ResourcesEx;->mCacheColorInfoList:Ljava/util/HashMap;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v9, v2, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 691
    .end local v0           #colorName:Ljava/lang/String;
    .end local v1           #colorVaue:I
    .end local v2           #fullColorName:Ljava/lang/String;
    .end local v4           #lableName:Ljava/lang/String;
    .end local v5           #name:Ljava/lang/String;
    .end local v6           #sb:Ljava/lang/StringBuilder;
    .end local v7           #text:Ljava/lang/String;
    :cond_4
    return-void
.end method

.method private static initBorder(Landroid/content/res/ZipFileCache;)V
    .locals 3
    .parameter "iconZipFileCache"

    .prologue
    .line 227
    sget-object v0, Landroid/content/res/ResourcesEx;->sBmpBorder:Landroid/graphics/Bitmap;

    if-nez v0, :cond_0

    .line 228
    const-string v0, "icon_border.png"

    invoke-virtual {p0, v0}, Landroid/content/res/ZipFileCache;->getBitmapEntry(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    sput-object v0, Landroid/content/res/ResourcesEx;->sBmpBorder:Landroid/graphics/Bitmap;

    .line 229
    sget-object v0, Landroid/content/res/ResourcesEx;->sBmpBorder:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    .line 230
    sget-object v0, Landroid/content/res/ResourcesEx;->sBmpBorder:Landroid/graphics/Bitmap;

    sget v1, Landroid/content/res/ResourcesEx;->sStandardBgSize:I

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/content/IconBitmapUtils;->zoomIfNeed(Landroid/graphics/Bitmap;IZ)Landroid/graphics/Bitmap;

    move-result-object v0

    sput-object v0, Landroid/content/res/ResourcesEx;->sBmpBorder:Landroid/graphics/Bitmap;

    .line 233
    :cond_0
    return-void
.end method

.method private static initMask(Landroid/content/res/ZipFileCache;)V
    .locals 3
    .parameter "iconZipFileCache"

    .prologue
    const/4 v2, 0x1

    .line 211
    sget-object v0, Landroid/content/res/ResourcesEx;->sBmpMask:Landroid/graphics/Bitmap;

    if-nez v0, :cond_0

    .line 212
    const-string v0, "icon_mask.png"

    invoke-virtual {p0, v0}, Landroid/content/res/ZipFileCache;->getBitmapEntry(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    sput-object v0, Landroid/content/res/ResourcesEx;->sBmpMask:Landroid/graphics/Bitmap;

    .line 213
    sget-object v0, Landroid/content/res/ResourcesEx;->sBmpMask:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_1

    .line 214
    sget-object v0, Landroid/content/res/ResourcesEx;->sBmpMask:Landroid/graphics/Bitmap;

    sget v1, Landroid/content/res/ResourcesEx;->sStandardBgSize:I

    invoke-static {v0, v1, v2}, Landroid/content/IconBitmapUtils;->zoomIfNeed(Landroid/graphics/Bitmap;IZ)Landroid/graphics/Bitmap;

    move-result-object v0

    sput-object v0, Landroid/content/res/ResourcesEx;->sBmpMask:Landroid/graphics/Bitmap;

    .line 215
    sget-object v0, Landroid/content/res/ResourcesEx$MaskRange;->THIRD_PARTY:Landroid/content/res/ResourcesEx$MaskRange;

    sput-object v0, Landroid/content/res/ResourcesEx;->sMaskRange:Landroid/content/res/ResourcesEx$MaskRange;

    .line 224
    :cond_0
    :goto_0
    return-void

    .line 217
    :cond_1
    const-string v0, "icon_mask_all.png"

    invoke-virtual {p0, v0}, Landroid/content/res/ZipFileCache;->getBitmapEntry(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    sput-object v0, Landroid/content/res/ResourcesEx;->sBmpMask:Landroid/graphics/Bitmap;

    .line 218
    sget-object v0, Landroid/content/res/ResourcesEx;->sBmpMask:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    .line 219
    sget-object v0, Landroid/content/res/ResourcesEx;->sBmpMask:Landroid/graphics/Bitmap;

    sget v1, Landroid/content/res/ResourcesEx;->sStandardBgSize:I

    invoke-static {v0, v1, v2}, Landroid/content/IconBitmapUtils;->zoomIfNeed(Landroid/graphics/Bitmap;IZ)Landroid/graphics/Bitmap;

    move-result-object v0

    sput-object v0, Landroid/content/res/ResourcesEx;->sBmpMask:Landroid/graphics/Bitmap;

    .line 220
    sget-object v0, Landroid/content/res/ResourcesEx$MaskRange;->ALL:Landroid/content/res/ResourcesEx$MaskRange;

    sput-object v0, Landroid/content/res/ResourcesEx;->sMaskRange:Landroid/content/res/ResourcesEx$MaskRange;

    goto :goto_0
.end method

.method private static initMaskSizeWithoutEdge(Z)V
    .locals 3
    .parameter "useDefault"

    .prologue
    .line 193
    const/4 v1, -0x1

    sget v2, Landroid/content/res/ResourcesEx;->sMaskSizeWithoutEdge:I

    if-ne v1, v2, :cond_0

    .line 194
    sget-object v1, Landroid/content/res/ResourcesEx;->sBmpMask:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_2

    .line 196
    sget-object v1, Landroid/content/res/ResourcesEx;->sBmpMask:Landroid/graphics/Bitmap;

    invoke-static {v1}, Landroid/content/IconBitmapUtils;->getRectWithoutEdge(Landroid/graphics/Bitmap;)Landroid/graphics/Rect;

    move-result-object v0

    .line 197
    .local v0, r:Landroid/graphics/Rect;
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v1

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    const/16 v2, 0xa

    if-ge v1, v2, :cond_1

    .line 198
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    sput v1, Landroid/content/res/ResourcesEx;->sMaskSizeWithoutEdge:I

    .line 208
    .end local v0           #r:Landroid/graphics/Rect;
    :cond_0
    :goto_0
    return-void

    .line 200
    .restart local v0       #r:Landroid/graphics/Rect;
    :cond_1
    sget v1, Landroid/content/res/ResourcesEx;->sStandardBgSize:I

    add-int/lit8 v1, v1, -0x8

    sput v1, Landroid/content/res/ResourcesEx;->sMaskSizeWithoutEdge:I

    goto :goto_0

    .line 202
    .end local v0           #r:Landroid/graphics/Rect;
    :cond_2
    if-eqz p0, :cond_0

    .line 204
    sget v1, Landroid/content/res/ResourcesEx;->sStandardBgSize:I

    add-int/lit8 v1, v1, -0x8

    sput v1, Landroid/content/res/ResourcesEx;->sMaskSizeWithoutEdge:I

    goto :goto_0
.end method

.method private static initStatics()V
    .locals 3

    .prologue
    .line 176
    sget-object v1, Landroid/content/res/ResourcesEx;->sBgList:Ljava/util/ArrayList;

    if-eqz v1, :cond_1

    sget-object v1, Landroid/content/res/ResourcesEx;->sBgList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    .line 190
    .local v0, iconZipFileCache:Landroid/content/res/ZipFileCache;
    :cond_0
    :goto_0
    return-void

    .line 179
    .end local v0           #iconZipFileCache:Landroid/content/res/ZipFileCache;
    :cond_1
    sget-object v1, Landroid/content/res/ResourcesEx;->THEME_DIR:Ljava/lang/String;

    const-string v2, "icons"

    invoke-static {v1, v2}, Landroid/content/res/ZipFileCache;->getAndCheckCachedZipFile(Ljava/lang/String;Ljava/lang/String;)Landroid/content/res/ZipFileCache;

    move-result-object v0

    .line 180
    .restart local v0       #iconZipFileCache:Landroid/content/res/ZipFileCache;
    if-eqz v0, :cond_0

    .line 184
    invoke-static {v0}, Landroid/content/res/ResourcesEx;->initBorder(Landroid/content/res/ZipFileCache;)V

    .line 185
    invoke-static {v0}, Landroid/content/res/ResourcesEx;->initMask(Landroid/content/res/ZipFileCache;)V

    .line 186
    const/4 v1, 0x0

    invoke-static {v1}, Landroid/content/res/ResourcesEx;->initMaskSizeWithoutEdge(Z)V

    .line 187
    invoke-static {v0}, Landroid/content/res/ResourcesEx;->initSysDefault(Landroid/content/res/ZipFileCache;)V

    .line 188
    sget-object v1, Landroid/content/res/ResourcesEx;->THEME_DIR:Ljava/lang/String;

    const-string v2, "icons"

    invoke-static {v1, v2}, Landroid/content/res/ResourcesEx;->getAllBgImage(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private static initSysDefault(Landroid/content/res/ZipFileCache;)V
    .locals 4
    .parameter "iconZipFileCache"

    .prologue
    .line 236
    sget-object v2, Landroid/content/res/ResourcesEx;->sBmpSysAppDefault:Landroid/graphics/Bitmap;

    if-nez v2, :cond_0

    .line 237
    move-object v1, p0

    .line 238
    .local v1, zip:Landroid/content/res/ZipFileCache;
    if-nez v1, :cond_0

    .line 239
    sget-object v2, Landroid/content/res/ResourcesEx;->THEME_DIR:Ljava/lang/String;

    const-string v3, "icons"

    invoke-static {v2, v3}, Landroid/content/res/ZipFileCache;->getAndCheckCachedZipFile(Ljava/lang/String;Ljava/lang/String;)Landroid/content/res/ZipFileCache;

    move-result-object v1

    .line 240
    if-eqz v1, :cond_0

    .line 241
    const-string/jumbo v2, "sym_def_app_icon.png"

    invoke-virtual {v1, v2}, Landroid/content/res/ZipFileCache;->getBitmapEntry(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 242
    .local v0, tmpBitmap:Landroid/graphics/Bitmap;
    if-eqz v0, :cond_0

    .line 243
    sget v2, Landroid/content/res/ResourcesEx;->sStandardBgSize:I

    const/4 v3, 0x1

    invoke-static {v0, v2, v3}, Landroid/content/IconBitmapUtils;->zoomIfNeed(Landroid/graphics/Bitmap;IZ)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 244
    invoke-static {v1}, Landroid/content/res/ResourcesEx;->initMask(Landroid/content/res/ZipFileCache;)V

    .line 245
    sget-object v2, Landroid/content/res/ResourcesEx;->sMaskRange:Landroid/content/res/ResourcesEx$MaskRange;

    sget-object v3, Landroid/content/res/ResourcesEx$MaskRange;->ALL:Landroid/content/res/ResourcesEx$MaskRange;

    if-ne v2, v3, :cond_1

    .line 246
    sget-object v2, Landroid/content/res/ResourcesEx;->sBmpMask:Landroid/graphics/Bitmap;

    invoke-static {v0, v2}, Landroid/content/IconBitmapUtils;->mask(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v2

    sput-object v2, Landroid/content/res/ResourcesEx;->sBmpSysAppDefault:Landroid/graphics/Bitmap;

    .line 247
    sget-object v2, Landroid/content/res/ResourcesEx;->sBmpSysAppDefault:Landroid/graphics/Bitmap;

    if-eqz v2, :cond_0

    if-eqz v0, :cond_0

    .line 248
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 257
    .end local v0           #tmpBitmap:Landroid/graphics/Bitmap;
    .end local v1           #zip:Landroid/content/res/ZipFileCache;
    :cond_0
    :goto_0
    return-void

    .line 251
    .restart local v0       #tmpBitmap:Landroid/graphics/Bitmap;
    .restart local v1       #zip:Landroid/content/res/ZipFileCache;
    :cond_1
    sput-object v0, Landroid/content/res/ResourcesEx;->sBmpSysAppDefault:Landroid/graphics/Bitmap;

    goto :goto_0
.end method


# virtual methods
.method public getColor(I)I
    .locals 5
    .parameter "id"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/res/Resources$NotFoundException;
        }
    .end annotation

    .prologue
    .line 631
    iget-object v3, p0, Landroid/content/res/Resources;->mTmpValue:Landroid/util/TypedValue;

    monitor-enter v3

    .line 632
    :try_start_0
    iget-object v1, p0, Landroid/content/res/Resources;->mTmpValue:Landroid/util/TypedValue;

    .line 633
    .local v1, value:Landroid/util/TypedValue;
    const/4 v2, 0x1

    invoke-virtual {p0, p1, v1, v2}, Landroid/content/res/ResourcesEx;->getValue(ILandroid/util/TypedValue;Z)V

    .line 634
    iget v2, v1, Landroid/util/TypedValue;->type:I

    const/16 v4, 0x10

    if-lt v2, v4, :cond_1

    iget v2, v1, Landroid/util/TypedValue;->type:I

    const/16 v4, 0x1f

    if-gt v2, v4, :cond_1

    .line 636
    sget-boolean v2, Landroid/content/res/Resources;->sIsHwTheme:Z

    if-eqz v2, :cond_0

    .line 637
    invoke-virtual {p0, v1, p1}, Landroid/content/res/ResourcesEx;->getThemeColor(Landroid/util/TypedValue;I)I

    move-result v0

    .line 638
    .local v0, colorVaue:I
    monitor-exit v3

    .line 643
    .end local v0           #colorVaue:I
    :goto_0
    return v0

    .line 640
    :cond_0
    iget v0, v1, Landroid/util/TypedValue;->data:I

    monitor-exit v3

    goto :goto_0

    .line 645
    .end local v1           #value:Landroid/util/TypedValue;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 643
    .restart local v1       #value:Landroid/util/TypedValue;
    :cond_1
    :try_start_1
    invoke-super {p0, p1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method public getDrawableForDynamic(Ljava/lang/String;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    .locals 6
    .parameter "packageName"
    .parameter "iconName"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/res/Resources$NotFoundException;
        }
    .end annotation

    .prologue
    .line 925
    const/4 v1, 0x0

    .line 926
    .local v1, dr:Landroid/graphics/drawable/Drawable;
    const-string v3, ""

    .line 932
    .local v3, imgFile:Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "dynamic_icons/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ".png"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 933
    sget-object v4, Landroid/content/res/ResourcesEx;->THEME_DIR:Ljava/lang/String;

    const-string v5, "icons"

    invoke-static {v4, v5}, Landroid/content/res/ZipFileCache;->getAndCheckCachedZipFile(Ljava/lang/String;Ljava/lang/String;)Landroid/content/res/ZipFileCache;

    move-result-object v2

    .line 934
    .local v2, iconZipFileCache:Landroid/content/res/ZipFileCache;
    if-nez v2, :cond_0

    .line 935
    const/4 v4, 0x0

    .line 942
    :goto_0
    return-object v4

    .line 937
    :cond_0
    invoke-virtual {v2, v3}, Landroid/content/res/ZipFileCache;->getBitmapEntry(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 938
    .local v0, bmp:Landroid/graphics/Bitmap;
    if-eqz v0, :cond_1

    .line 939
    new-instance v1, Landroid/graphics/drawable/BitmapDrawable;

    .end local v1           #dr:Landroid/graphics/drawable/Drawable;
    invoke-direct {v1, p0, v0}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    .restart local v1       #dr:Landroid/graphics/drawable/Drawable;
    :cond_1
    move-object v4, v1

    .line 942
    goto :goto_0
.end method

.method public getThemeBitmap(Landroid/util/TypedValue;I)Landroid/graphics/Bitmap;
    .locals 7
    .parameter "value"
    .parameter "id"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/res/Resources$NotFoundException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    .line 582
    invoke-direct {p0, p2}, Landroid/content/res/ResourcesEx;->getThemeResource(I)Landroid/content/res/ResourcesEx$ThemeResource;

    move-result-object v4

    .line 583
    .local v4, themeRes:Landroid/content/res/ResourcesEx$ThemeResource;
    #getter for: Landroid/content/res/ResourcesEx$ThemeResource;->packageName:Ljava/lang/String;
    invoke-static {v4}, Landroid/content/res/ResourcesEx$ThemeResource;->access$000(Landroid/content/res/ResourcesEx$ThemeResource;)Ljava/lang/String;

    move-result-object v2

    .line 584
    .local v2, packageName:Ljava/lang/String;
    iget-object v6, p1, Landroid/util/TypedValue;->string:Ljava/lang/CharSequence;

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 585
    .local v1, file:Ljava/lang/String;
    const/4 v0, 0x0

    .line 590
    .local v0, bmp:Landroid/graphics/Bitmap;
    const-string v6, "framework-res"

    invoke-virtual {v2, v6}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v6

    if-ltz v6, :cond_1

    const-string v6, "_holo"

    invoke-virtual {v1, v6}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v6

    if-ltz v6, :cond_1

    .line 598
    :cond_0
    :goto_0
    return-object v5

    .line 593
    :cond_1
    sget-object v6, Landroid/content/res/ResourcesEx;->THEME_DIR:Ljava/lang/String;

    invoke-static {v6, v2}, Landroid/content/res/ZipFileCache;->getAndCheckCachedZipFile(Ljava/lang/String;Ljava/lang/String;)Landroid/content/res/ZipFileCache;

    move-result-object v3

    .line 594
    .local v3, packageZipFileCache:Landroid/content/res/ZipFileCache;
    if-eqz v3, :cond_0

    .line 597
    invoke-virtual {v3, p0, p1, v1}, Landroid/content/res/ZipFileCache;->getBitmapEntry(Landroid/content/res/Resources;Landroid/util/TypedValue;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    move-object v5, v0

    .line 598
    goto :goto_0
.end method

.method public getThemeColor(Landroid/util/TypedValue;I)I
    .locals 11
    .parameter "value"
    .parameter "id"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/res/Resources$NotFoundException;
        }
    .end annotation

    .prologue
    const/4 v10, 0x0

    .line 748
    invoke-direct {p0, p2}, Landroid/content/res/ResourcesEx;->getThemeResource(I)Landroid/content/res/ResourcesEx$ThemeResource;

    move-result-object v8

    .line 749
    .local v8, themeRes:Landroid/content/res/ResourcesEx$ThemeResource;
    #getter for: Landroid/content/res/ResourcesEx$ThemeResource;->packageName:Ljava/lang/String;
    invoke-static {v8}, Landroid/content/res/ResourcesEx$ThemeResource;->access$000(Landroid/content/res/ResourcesEx$ThemeResource;)Ljava/lang/String;

    move-result-object v4

    .line 750
    .local v4, packageName:Ljava/lang/String;
    #getter for: Landroid/content/res/ResourcesEx$ThemeResource;->resName:Ljava/lang/String;
    invoke-static {v8}, Landroid/content/res/ResourcesEx$ThemeResource;->access$100(Landroid/content/res/ResourcesEx$ThemeResource;)Ljava/lang/String;

    move-result-object v7

    .line 751
    .local v7, resName:Ljava/lang/String;
    sget-object v9, Landroid/content/res/ResourcesEx;->mPreloadedThemeColorList:Ljava/util/ArrayList;

    invoke-virtual {v9, v4}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_5

    sget-object v9, Landroid/content/res/ResourcesEx;->mNonThemedPackage:Ljava/util/ArrayList;

    invoke-virtual {v9, v4}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_5

    .line 752
    const/4 v5, 0x0

    .line 754
    .local v5, packageZipFileCache:Landroid/content/res/ZipFileCache;
    :try_start_0
    new-instance v2, Ljava/io/File;

    sget-object v9, Landroid/content/res/ResourcesEx;->THEME_DIR:Ljava/lang/String;

    invoke-direct {v2, v9, v4}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 755
    .local v2, file:Ljava/io/File;
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v9

    if-nez v9, :cond_2

    .line 756
    :cond_0
    const/4 v9, 0x0

    iput-boolean v9, p0, Landroid/content/res/ResourcesEx;->isThemeColor:Z

    .line 757
    sget-object v9, Landroid/content/res/ResourcesEx;->mNonThemedPackage:Ljava/util/ArrayList;

    invoke-virtual {v9, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 758
    iget v9, p1, Landroid/util/TypedValue;->data:I

    .line 796
    .end local v2           #file:Ljava/io/File;
    .end local v5           #packageZipFileCache:Landroid/content/res/ZipFileCache;
    :cond_1
    :goto_0
    return v9

    .line 760
    .restart local v2       #file:Ljava/io/File;
    .restart local v5       #packageZipFileCache:Landroid/content/res/ZipFileCache;
    :cond_2
    sget-object v9, Landroid/content/res/ResourcesEx;->THEME_DIR:Ljava/lang/String;

    invoke-static {v9, v4}, Landroid/content/res/ZipFileCache;->getAndCheckCachedZipFile(Ljava/lang/String;Ljava/lang/String;)Landroid/content/res/ZipFileCache;

    move-result-object v5

    .line 761
    if-nez v5, :cond_3

    .line 762
    iget v9, p1, Landroid/util/TypedValue;->data:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 764
    .end local v2           #file:Ljava/io/File;
    :catch_0
    move-exception v1

    .line 765
    .local v1, ex:Ljava/lang/Exception;
    iput-boolean v10, p0, Landroid/content/res/ResourcesEx;->isThemeColor:Z

    .line 766
    sget-object v9, Landroid/content/res/ResourcesEx;->mNonThemedPackage:Ljava/util/ArrayList;

    invoke-virtual {v9, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 767
    iget v9, p1, Landroid/util/TypedValue;->data:I

    goto :goto_0

    .line 770
    .end local v1           #ex:Ljava/lang/Exception;
    .restart local v2       #file:Ljava/io/File;
    :cond_3
    const-string/jumbo v9, "theme.xml"

    invoke-virtual {v5, v9}, Landroid/content/res/ZipFileCache;->getInputStreamEntry(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v3

    .line 771
    .local v3, is:Ljava/io/InputStream;
    if-eqz v3, :cond_4

    .line 774
    :try_start_1
    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v6

    .line 775
    .local v6, parser:Lorg/xmlpull/v1/XmlPullParser;
    const/4 v9, 0x0

    invoke-interface {v6, v3, v9}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 776
    invoke-direct {p0, v6, v4}, Landroid/content/res/ResourcesEx;->inflateColorInfoList(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 782
    if-eqz v3, :cond_4

    .line 783
    :try_start_2
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_3

    .line 789
    .end local v6           #parser:Lorg/xmlpull/v1/XmlPullParser;
    :cond_4
    :goto_1
    sget-object v9, Landroid/content/res/ResourcesEx;->mPreloadedThemeColorList:Ljava/util/ArrayList;

    invoke-virtual {v9, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 791
    .end local v2           #file:Ljava/io/File;
    .end local v3           #is:Ljava/io/InputStream;
    .end local v5           #packageZipFileCache:Landroid/content/res/ZipFileCache;
    :cond_5
    sget-object v9, Landroid/content/res/ResourcesEx;->mCacheColorInfoList:Ljava/util/HashMap;

    invoke-virtual {v9, v7}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_7

    .line 792
    const/4 v9, 0x1

    iput-boolean v9, p0, Landroid/content/res/ResourcesEx;->isThemeColor:Z

    .line 793
    sget-object v9, Landroid/content/res/ResourcesEx;->mCacheColorInfoList:Ljava/util/HashMap;

    invoke-virtual {v9, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    goto :goto_0

    .line 777
    .restart local v2       #file:Ljava/io/File;
    .restart local v3       #is:Ljava/io/InputStream;
    .restart local v5       #packageZipFileCache:Landroid/content/res/ZipFileCache;
    :catch_1
    move-exception v0

    .line 778
    .local v0, e:Ljava/lang/Exception;
    const/4 v9, 0x0

    :try_start_3
    iput-boolean v9, p0, Landroid/content/res/ResourcesEx;->isThemeColor:Z

    .line 779
    iget v9, p1, Landroid/util/TypedValue;->data:I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 782
    if-eqz v3, :cond_1

    .line 783
    :try_start_4
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_0

    .line 785
    :catch_2
    move-exception v10

    goto :goto_0

    .line 781
    .end local v0           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v9

    .line 782
    if-eqz v3, :cond_6

    .line 783
    :try_start_5
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_4

    .line 786
    :cond_6
    :goto_2
    throw v9

    .line 795
    .end local v2           #file:Ljava/io/File;
    .end local v3           #is:Ljava/io/InputStream;
    .end local v5           #packageZipFileCache:Landroid/content/res/ZipFileCache;
    :cond_7
    iput-boolean v10, p0, Landroid/content/res/ResourcesEx;->isThemeColor:Z

    .line 796
    iget v9, p1, Landroid/util/TypedValue;->data:I

    goto :goto_0

    .line 785
    .restart local v2       #file:Ljava/io/File;
    .restart local v3       #is:Ljava/io/InputStream;
    .restart local v5       #packageZipFileCache:Landroid/content/res/ZipFileCache;
    .restart local v6       #parser:Lorg/xmlpull/v1/XmlPullParser;
    :catch_3
    move-exception v9

    goto :goto_1

    .end local v6           #parser:Lorg/xmlpull/v1/XmlPullParser;
    :catch_4
    move-exception v10

    goto :goto_2
.end method

.method public getThemeDrawable(Landroid/util/TypedValue;I)Landroid/graphics/drawable/Drawable;
    .locals 7
    .parameter "value"
    .parameter "id"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/res/Resources$NotFoundException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    .line 553
    invoke-direct {p0, p2}, Landroid/content/res/ResourcesEx;->getThemeResource(I)Landroid/content/res/ResourcesEx$ThemeResource;

    move-result-object v4

    .line 554
    .local v4, themeRes:Landroid/content/res/ResourcesEx$ThemeResource;
    #getter for: Landroid/content/res/ResourcesEx$ThemeResource;->packageName:Ljava/lang/String;
    invoke-static {v4}, Landroid/content/res/ResourcesEx$ThemeResource;->access$000(Landroid/content/res/ResourcesEx$ThemeResource;)Ljava/lang/String;

    move-result-object v2

    .line 555
    .local v2, packageName:Ljava/lang/String;
    iget-object v6, p1, Landroid/util/TypedValue;->string:Ljava/lang/CharSequence;

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 556
    .local v1, file:Ljava/lang/String;
    const/4 v0, 0x0

    .line 562
    .local v0, dr:Landroid/graphics/drawable/Drawable;
    const-string v6, "framework-res"

    invoke-virtual {v2, v6}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v6

    if-ltz v6, :cond_1

    const-string v6, "_holo"

    invoke-virtual {v1, v6}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v6

    if-ltz v6, :cond_1

    .line 574
    :cond_0
    :goto_0
    return-object v5

    .line 566
    :cond_1
    sget-object v6, Landroid/content/res/ResourcesEx;->THEME_DIR:Ljava/lang/String;

    invoke-static {v6, v2}, Landroid/content/res/ZipFileCache;->getAndCheckCachedZipFile(Ljava/lang/String;Ljava/lang/String;)Landroid/content/res/ZipFileCache;

    move-result-object v3

    .line 567
    .local v3, packageZipFileCache:Landroid/content/res/ZipFileCache;
    if-eqz v3, :cond_0

    .line 572
    invoke-virtual {v3, p0, p1, v1}, Landroid/content/res/ZipFileCache;->getDrawableEntry(Landroid/content/res/Resources;Landroid/util/TypedValue;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    move-object v5, v0

    .line 574
    goto :goto_0
.end method

.method getThemeIcon(I)Landroid/graphics/drawable/Drawable;
    .locals 9
    .parameter "id"

    .prologue
    .line 417
    const/4 v1, 0x0

    .line 418
    .local v1, dr:Landroid/graphics/drawable/Drawable;
    const/4 v0, 0x0

    .line 420
    .local v0, bmp:Landroid/graphics/Bitmap;
    invoke-direct {p0, p1}, Landroid/content/res/ResourcesEx;->getIconFileName(I)Ljava/lang/String;

    move-result-object v3

    .line 421
    .local v3, imgFile:Ljava/lang/String;
    invoke-direct {p0, v3}, Landroid/content/res/ResourcesEx;->getBitmapFromCacheDir(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 422
    if-eqz v0, :cond_0

    .line 423
    new-instance v1, Landroid/graphics/drawable/BitmapDrawable;

    .end local v1           #dr:Landroid/graphics/drawable/Drawable;
    invoke-direct {v1, p0, v0}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    .restart local v1       #dr:Landroid/graphics/drawable/Drawable;
    move-object v7, v1

    .line 470
    :goto_0
    return-object v7

    .line 427
    :cond_0
    sget-object v7, Landroid/content/res/ResourcesEx;->THEME_DIR:Ljava/lang/String;

    const-string v8, "icons"

    invoke-static {v7, v8}, Landroid/content/res/ZipFileCache;->getAndCheckCachedZipFile(Ljava/lang/String;Ljava/lang/String;)Landroid/content/res/ZipFileCache;

    move-result-object v2

    .line 428
    .local v2, iconZipFileCache:Landroid/content/res/ZipFileCache;
    if-nez v2, :cond_1

    .line 429
    const/4 v7, 0x0

    goto :goto_0

    .line 431
    :cond_1
    invoke-virtual {v2, v3}, Landroid/content/res/ZipFileCache;->getBitmapEntry(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 443
    if-eqz v0, :cond_3

    .line 445
    sget v7, Landroid/content/res/ResourcesEx;->sStandardBgSize:I

    const/4 v8, 0x1

    invoke-static {v0, v7, v8}, Landroid/content/IconBitmapUtils;->zoomIfNeed(Landroid/graphics/Bitmap;IZ)Landroid/graphics/Bitmap;

    move-result-object v6

    .line 446
    .local v6, srcBitmap:Landroid/graphics/Bitmap;
    const/4 v4, 0x0

    .line 447
    .local v4, maskBitmap:Landroid/graphics/Bitmap;
    const/4 v5, 0x0

    .line 448
    .local v5, resultBitmap:Landroid/graphics/Bitmap;
    invoke-static {v2}, Landroid/content/res/ResourcesEx;->initMask(Landroid/content/res/ZipFileCache;)V

    .line 449
    sget-object v7, Landroid/content/res/ResourcesEx;->sMaskRange:Landroid/content/res/ResourcesEx$MaskRange;

    sget-object v8, Landroid/content/res/ResourcesEx$MaskRange;->ALL:Landroid/content/res/ResourcesEx$MaskRange;

    if-ne v7, v8, :cond_5

    .line 450
    invoke-static {v2}, Landroid/content/res/ResourcesEx;->initBorder(Landroid/content/res/ZipFileCache;)V

    .line 451
    sget-object v7, Landroid/content/res/ResourcesEx;->sBmpMask:Landroid/graphics/Bitmap;

    invoke-static {v6, v7}, Landroid/content/IconBitmapUtils;->mask(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v4

    .line 452
    if-eqz v4, :cond_2

    if-eqz v6, :cond_2

    .line 453
    invoke-virtual {v6}, Landroid/graphics/Bitmap;->recycle()V

    .line 454
    sget-object v7, Landroid/content/res/ResourcesEx;->sBmpBorder:Landroid/graphics/Bitmap;

    invoke-static {v7, v4}, Landroid/content/IconBitmapUtils;->overlap2Bitmap(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v5

    .line 455
    if-eqz v5, :cond_4

    .line 456
    invoke-virtual {v4}, Landroid/graphics/Bitmap;->recycle()V

    .line 464
    :cond_2
    :goto_1
    if-eqz v5, :cond_3

    .line 465
    new-instance v7, Ljava/lang/Thread;

    new-instance v8, Landroid/content/res/ResourcesEx$SaveBitmapThread;

    invoke-direct {v8, v5, v3}, Landroid/content/res/ResourcesEx$SaveBitmapThread;-><init>(Landroid/graphics/Bitmap;Ljava/lang/String;)V

    invoke-direct {v7, v8}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v7}, Ljava/lang/Thread;->start()V

    .line 466
    new-instance v1, Landroid/graphics/drawable/BitmapDrawable;

    .end local v1           #dr:Landroid/graphics/drawable/Drawable;
    invoke-direct {v1, p0, v5}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    .end local v4           #maskBitmap:Landroid/graphics/Bitmap;
    .end local v5           #resultBitmap:Landroid/graphics/Bitmap;
    .end local v6           #srcBitmap:Landroid/graphics/Bitmap;
    .restart local v1       #dr:Landroid/graphics/drawable/Drawable;
    :cond_3
    move-object v7, v1

    .line 470
    goto :goto_0

    .line 458
    .restart local v4       #maskBitmap:Landroid/graphics/Bitmap;
    .restart local v5       #resultBitmap:Landroid/graphics/Bitmap;
    .restart local v6       #srcBitmap:Landroid/graphics/Bitmap;
    :cond_4
    move-object v5, v6

    goto :goto_1

    .line 462
    :cond_5
    move-object v5, v6

    goto :goto_1
.end method

.method protected handleActivityInfoConfigToNative(I)I
    .locals 1
    .parameter "configChanges"

    .prologue
    .line 916
    or-int/lit16 v0, p1, 0x4000

    return v0
.end method

.method protected handleAddIconBackground(ILandroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;
    .locals 10
    .parameter "id"
    .parameter "dr"

    .prologue
    const/4 v9, 0x1

    .line 359
    sget-boolean v7, Landroid/content/res/Resources;->sIsHwTheme:Z

    if-eqz v7, :cond_7

    if-eqz p1, :cond_7

    .line 360
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "#"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {p0, p1}, Landroid/content/res/ResourcesEx;->getResourcePackageName(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 361
    .local v5, idAndPackageName:Ljava/lang/String;
    invoke-static {v5}, Landroid/content/IconCache;->contains(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_7

    .line 363
    invoke-direct {p0, p1}, Landroid/content/res/ResourcesEx;->getIconFileName(I)Ljava/lang/String;

    move-result-object v6

    .line 365
    .local v6, imgFile:Ljava/lang/String;
    invoke-static {p2}, Landroid/content/IconBitmapUtils;->drawableToBitmap(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 366
    .local v0, bmp:Landroid/graphics/Bitmap;
    if-nez v0, :cond_0

    move-object v4, p2

    .line 408
    .end local v0           #bmp:Landroid/graphics/Bitmap;
    .end local v5           #idAndPackageName:Ljava/lang/String;
    .end local v6           #imgFile:Ljava/lang/String;
    .end local p2
    .local v4, dr:Landroid/graphics/drawable/Drawable;
    :goto_0
    return-object v4

    .line 369
    .end local v4           #dr:Landroid/graphics/drawable/Drawable;
    .restart local v0       #bmp:Landroid/graphics/Bitmap;
    .restart local v5       #idAndPackageName:Ljava/lang/String;
    .restart local v6       #imgFile:Ljava/lang/String;
    .restart local p2
    :cond_0
    invoke-direct {p0, v0, v5}, Landroid/content/res/ResourcesEx;->addIconBackgroud(Landroid/graphics/Bitmap;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v3

    .line 370
    .local v3, bmpWithBackGround:Landroid/graphics/Bitmap;
    if-eqz v3, :cond_4

    .line 371
    const/4 v2, 0x0

    .line 372
    .local v2, bmpWithBGScaled:Landroid/graphics/Bitmap;
    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v7

    sget v8, Landroid/content/res/ResourcesEx;->sStandardBgSize:I

    if-ne v7, v8, :cond_1

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v7

    sget v8, Landroid/content/res/ResourcesEx;->sStandardBgSize:I

    if-eq v7, v8, :cond_2

    .line 374
    :cond_1
    sget v7, Landroid/content/res/ResourcesEx;->sStandardBgSize:I

    sget v8, Landroid/content/res/ResourcesEx;->sStandardBgSize:I

    invoke-static {v3, v7, v8, v9}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 377
    :cond_2
    if-eqz v2, :cond_3

    .line 379
    new-instance v7, Ljava/lang/Thread;

    new-instance v8, Landroid/content/res/ResourcesEx$SaveBitmapThread;

    invoke-direct {v8, v2, v6}, Landroid/content/res/ResourcesEx$SaveBitmapThread;-><init>(Landroid/graphics/Bitmap;Ljava/lang/String;)V

    invoke-direct {v7, v8}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v7}, Ljava/lang/Thread;->start()V

    .line 380
    new-instance p2, Landroid/graphics/drawable/BitmapDrawable;

    .end local p2
    invoke-direct {p2, p0, v2}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    .line 381
    .restart local p2
    invoke-virtual {v3}, Landroid/graphics/Bitmap;->recycle()V

    :goto_1
    move-object v4, p2

    .line 389
    .end local p2
    .restart local v4       #dr:Landroid/graphics/drawable/Drawable;
    goto :goto_0

    .line 385
    .end local v4           #dr:Landroid/graphics/drawable/Drawable;
    .restart local p2
    :cond_3
    new-instance v7, Ljava/lang/Thread;

    new-instance v8, Landroid/content/res/ResourcesEx$SaveBitmapThread;

    invoke-direct {v8, v3, v6}, Landroid/content/res/ResourcesEx$SaveBitmapThread;-><init>(Landroid/graphics/Bitmap;Ljava/lang/String;)V

    invoke-direct {v7, v8}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v7}, Ljava/lang/Thread;->start()V

    .line 387
    new-instance p2, Landroid/graphics/drawable/BitmapDrawable;

    .end local p2
    invoke-direct {p2, p0, v3}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    .restart local p2
    goto :goto_1

    .line 392
    .end local v2           #bmpWithBGScaled:Landroid/graphics/Bitmap;
    :cond_4
    sget v7, Landroid/content/res/ResourcesEx;->sStandardBgSize:I

    sget v8, Landroid/content/res/ResourcesEx;->sStandardBgSize:I

    invoke-static {v0, v7, v8, v9}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 394
    .local v1, bmpScaled:Landroid/graphics/Bitmap;
    if-eq v0, v1, :cond_5

    .line 396
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 398
    :cond_5
    if-eqz v1, :cond_6

    .line 400
    new-instance v7, Ljava/lang/Thread;

    new-instance v8, Landroid/content/res/ResourcesEx$SaveBitmapThread;

    invoke-direct {v8, v1, v6}, Landroid/content/res/ResourcesEx$SaveBitmapThread;-><init>(Landroid/graphics/Bitmap;Ljava/lang/String;)V

    invoke-direct {v7, v8}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v7}, Ljava/lang/Thread;->start()V

    .line 402
    new-instance p2, Landroid/graphics/drawable/BitmapDrawable;

    .end local p2
    invoke-direct {p2, p0, v1}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    .restart local p2
    :cond_6
    move-object v4, p2

    .line 404
    .end local p2
    .restart local v4       #dr:Landroid/graphics/drawable/Drawable;
    goto :goto_0

    .end local v0           #bmp:Landroid/graphics/Bitmap;
    .end local v1           #bmpScaled:Landroid/graphics/Bitmap;
    .end local v3           #bmpWithBackGround:Landroid/graphics/Bitmap;
    .end local v4           #dr:Landroid/graphics/drawable/Drawable;
    .end local v5           #idAndPackageName:Ljava/lang/String;
    .end local v6           #imgFile:Ljava/lang/String;
    .restart local p2
    :cond_7
    move-object v4, p2

    .line 408
    .end local p2
    .restart local v4       #dr:Landroid/graphics/drawable/Drawable;
    goto :goto_0
.end method

.method protected handleClearCache(I)V
    .locals 4
    .parameter "configChanges"

    .prologue
    const/4 v3, 0x0

    .line 879
    sget-object v2, Landroid/content/res/ResourcesEx;->mCacheColorInfoList:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->clear()V

    .line 880
    sget-object v2, Landroid/content/res/ResourcesEx;->mPreloadedThemeColorList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 881
    sget-object v2, Landroid/content/res/ResourcesEx;->mNonThemedPackage:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 882
    sget-object v2, Landroid/content/res/ResourcesEx;->sBgList:Ljava/util/ArrayList;

    if-eqz v2, :cond_1

    .line 883
    sget-object v2, Landroid/content/res/ResourcesEx;->sBgList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 884
    .local v1, listSize:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 885
    sget-object v2, Landroid/content/res/ResourcesEx;->sBgList:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->recycle()V

    .line 884
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 887
    :cond_0
    sget-object v2, Landroid/content/res/ResourcesEx;->sBgList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 892
    .end local v0           #i:I
    .end local v1           #listSize:I
    :cond_1
    sget-object v2, Landroid/content/res/ResourcesEx;->sBmpBorder:Landroid/graphics/Bitmap;

    if-eqz v2, :cond_2

    sget-object v2, Landroid/content/res/ResourcesEx;->sBmpBorder:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v2

    if-nez v2, :cond_2

    .line 893
    sget-object v2, Landroid/content/res/ResourcesEx;->sBmpBorder:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->recycle()V

    .line 894
    sput-object v3, Landroid/content/res/ResourcesEx;->sBmpBorder:Landroid/graphics/Bitmap;

    .line 896
    :cond_2
    sget-object v2, Landroid/content/res/ResourcesEx;->sBmpMask:Landroid/graphics/Bitmap;

    if-eqz v2, :cond_3

    sget-object v2, Landroid/content/res/ResourcesEx;->sBmpMask:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v2

    if-nez v2, :cond_3

    .line 897
    sget-object v2, Landroid/content/res/ResourcesEx;->sBmpMask:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->recycle()V

    .line 898
    sput-object v3, Landroid/content/res/ResourcesEx;->sBmpMask:Landroid/graphics/Bitmap;

    .line 900
    sget-object v2, Landroid/content/res/ResourcesEx$MaskRange;->UNDEFINED:Landroid/content/res/ResourcesEx$MaskRange;

    sput-object v2, Landroid/content/res/ResourcesEx;->sMaskRange:Landroid/content/res/ResourcesEx$MaskRange;

    .line 901
    const/4 v2, -0x1

    sput v2, Landroid/content/res/ResourcesEx;->sMaskSizeWithoutEdge:I

    .line 904
    :cond_3
    sget-object v2, Landroid/content/res/ResourcesEx;->sBmpSysAppDefault:Landroid/graphics/Bitmap;

    if-eqz v2, :cond_4

    sget-object v2, Landroid/content/res/ResourcesEx;->sBmpSysAppDefault:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v2

    if-nez v2, :cond_4

    .line 905
    sget-object v2, Landroid/content/res/ResourcesEx;->sBmpSysAppDefault:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->recycle()V

    .line 906
    sput-object v3, Landroid/content/res/ResourcesEx;->sBmpSysAppDefault:Landroid/graphics/Bitmap;

    .line 908
    :cond_4
    invoke-static {}, Landroid/content/res/ZipFileCache;->clear()V

    .line 909
    invoke-static {}, Landroid/content/res/ResourcesEx;->initStatics()V

    .line 910
    iget-object v2, p0, Landroid/content/res/ResourcesEx;->mDrawableCacheEx:Landroid/util/LongSparseArray;

    if-eqz v2, :cond_5

    .line 911
    iget-object v2, p0, Landroid/content/res/ResourcesEx;->mDrawableCacheEx:Landroid/util/LongSparseArray;

    invoke-virtual {p0, v2, p1}, Landroid/content/res/ResourcesEx;->clearDrawableCache(Landroid/util/LongSparseArray;I)V

    .line 913
    :cond_5
    return-void
.end method

.method loadColorStateList(Landroid/util/TypedValue;I)Landroid/content/res/ColorStateList;
    .locals 3
    .parameter "value"
    .parameter "id"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/res/Resources$NotFoundException;
        }
    .end annotation

    .prologue
    .line 603
    const/4 v0, 0x0

    .line 604
    .local v0, colorVaue:I
    const/4 v2, 0x0

    iput-boolean v2, p0, Landroid/content/res/ResourcesEx;->isThemeColor:Z

    .line 605
    const/4 v1, 0x0

    .line 606
    .local v1, csl:Landroid/content/res/ColorStateList;
    sget-boolean v2, Landroid/content/res/Resources;->sIsHwTheme:Z

    if-eqz v2, :cond_0

    if-eqz p2, :cond_0

    .line 607
    invoke-virtual {p0, p1, p2}, Landroid/content/res/ResourcesEx;->getThemeColor(Landroid/util/TypedValue;I)I

    move-result v0

    .line 608
    invoke-static {v0}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v1

    .line 610
    :cond_0
    iget-boolean v2, p0, Landroid/content/res/ResourcesEx;->isThemeColor:Z

    if-nez v2, :cond_1

    .line 611
    invoke-super {p0, p1, p2}, Landroid/content/res/Resources;->loadColorStateList(Landroid/util/TypedValue;I)Landroid/content/res/ColorStateList;

    move-result-object v1

    .line 613
    :cond_1
    return-object v1
.end method

.method loadDrawable(Landroid/util/TypedValue;I)Landroid/graphics/drawable/Drawable;
    .locals 11
    .parameter "value"
    .parameter "id"

    .prologue
    .line 475
    iget v7, p1, Landroid/util/TypedValue;->assetCookie:I

    int-to-long v7, v7

    const/16 v9, 0x20

    shl-long/2addr v7, v9

    iget v9, p1, Landroid/util/TypedValue;->data:I

    int-to-long v9, v9

    or-long v5, v7, v9

    .line 476
    .local v5, key:J
    const/4 v0, 0x0

    .line 477
    .local v0, colorVaue:I
    const/4 v7, 0x0

    iput-boolean v7, p0, Landroid/content/res/ResourcesEx;->isThemeColor:Z

    .line 478
    const/4 v1, 0x0

    .line 479
    .local v1, dr:Landroid/graphics/drawable/Drawable;
    iget v7, p1, Landroid/util/TypedValue;->type:I

    const/16 v8, 0x1c

    if-lt v7, v8, :cond_1

    iget v7, p1, Landroid/util/TypedValue;->type:I

    const/16 v8, 0x1f

    if-gt v7, v8, :cond_1

    .line 481
    if-eqz p2, :cond_0

    sget-boolean v7, Landroid/content/res/Resources;->sIsHwTheme:Z

    if-eqz v7, :cond_0

    .line 482
    invoke-virtual {p0, p1, p2}, Landroid/content/res/ResourcesEx;->getThemeColor(Landroid/util/TypedValue;I)I

    move-result v0

    .line 483
    new-instance v1, Landroid/graphics/drawable/ColorDrawable;

    .end local v1           #dr:Landroid/graphics/drawable/Drawable;
    invoke-direct {v1, v0}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    .line 484
    .restart local v1       #dr:Landroid/graphics/drawable/Drawable;
    if-nez v1, :cond_2

    .line 485
    invoke-super {p0, p1, p2}, Landroid/content/res/Resources;->loadDrawable(Landroid/util/TypedValue;I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 490
    :cond_0
    iget-boolean v7, p0, Landroid/content/res/ResourcesEx;->isThemeColor:Z

    if-nez v7, :cond_1

    .line 491
    invoke-super {p0, p1, p2}, Landroid/content/res/Resources;->loadDrawable(Landroid/util/TypedValue;I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 494
    :cond_1
    iget-object v7, p0, Landroid/content/res/ResourcesEx;->mDrawableCacheEx:Landroid/util/LongSparseArray;

    invoke-virtual {p0, v7, v5, v6}, Landroid/content/res/ResourcesEx;->getCachedDrawable(Landroid/util/LongSparseArray;J)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 495
    if-eqz v1, :cond_3

    move-object v2, v1

    .line 545
    :goto_0
    return-object v2

    :cond_2
    move-object v2, v1

    .line 487
    goto :goto_0

    .line 500
    :cond_3
    if-eqz p2, :cond_8

    sget-boolean v7, Landroid/content/res/Resources;->sIsHwTheme:Z

    if-eqz v7, :cond_8

    .line 501
    invoke-virtual {p0, p2}, Landroid/content/res/ResourcesEx;->getResourceEntryName(I)Ljava/lang/String;

    move-result-object v3

    .line 502
    .local v3, entryName:Ljava/lang/String;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "#"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {p0, p2}, Landroid/content/res/ResourcesEx;->getResourcePackageName(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 507
    .local v4, idAndPackageName:Ljava/lang/String;
    invoke-direct {p0, v3}, Landroid/content/res/ResourcesEx;->checkSpecialIcons(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 508
    if-eqz v1, :cond_4

    .line 509
    iget-object v7, p0, Landroid/content/res/ResourcesEx;->mDrawableCacheEx:Landroid/util/LongSparseArray;

    new-instance v8, Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v7, v5, v6, v8}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    move-object v2, v1

    .line 510
    goto :goto_0

    .line 513
    :cond_4
    invoke-static {v4}, Landroid/content/IconCache;->contains(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_6

    .line 517
    invoke-virtual {p0, p2}, Landroid/content/res/ResourcesEx;->getThemeIcon(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 518
    .local v2, drIcon:Landroid/graphics/drawable/Drawable;
    if-eqz v2, :cond_5

    .line 519
    iget-object v7, p0, Landroid/content/res/ResourcesEx;->mDrawableCacheEx:Landroid/util/LongSparseArray;

    new-instance v8, Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v7, v5, v6, v8}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    goto :goto_0

    .line 524
    :cond_5
    invoke-super {p0, p1, p2}, Landroid/content/res/Resources;->loadDrawable(Landroid/util/TypedValue;I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .end local v2           #drIcon:Landroid/graphics/drawable/Drawable;
    .end local v3           #entryName:Ljava/lang/String;
    .end local v4           #idAndPackageName:Ljava/lang/String;
    :goto_1
    move-object v2, v1

    .line 545
    goto :goto_0

    .line 531
    .restart local v3       #entryName:Ljava/lang/String;
    .restart local v4       #idAndPackageName:Ljava/lang/String;
    :cond_6
    invoke-virtual {p0, p1, p2}, Landroid/content/res/ResourcesEx;->getThemeDrawable(Landroid/util/TypedValue;I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 532
    if-eqz v1, :cond_7

    .line 533
    iget-object v7, p0, Landroid/content/res/ResourcesEx;->mDrawableCacheEx:Landroid/util/LongSparseArray;

    new-instance v8, Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v7, v5, v6, v8}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    move-object v2, v1

    .line 534
    goto :goto_0

    .line 536
    :cond_7
    invoke-super {p0, p1, p2}, Landroid/content/res/Resources;->loadDrawable(Landroid/util/TypedValue;I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    goto :goto_1

    .line 543
    .end local v3           #entryName:Ljava/lang/String;
    .end local v4           #idAndPackageName:Ljava/lang/String;
    :cond_8
    invoke-super {p0, p1, p2}, Landroid/content/res/Resources;->loadDrawable(Landroid/util/TypedValue;I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    goto :goto_1
.end method
