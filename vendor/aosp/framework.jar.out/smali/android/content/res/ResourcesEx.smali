.class public Landroid/content/res/ResourcesEx;
.super Landroid/content/res/Resources;
.source "ResourcesEx.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/content/res/ResourcesEx$MaskRange;,
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

.field private static final SYS_THEME_DIR:Ljava/lang/String; = null

.field static final TAG:Ljava/lang/String; = "ResourcesEx"

.field private static final THEME_DIR:Ljava/lang/String;

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

    .line 75
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getRootDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/themes"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/content/res/ResourcesEx;->SYS_THEME_DIR:Ljava/lang/String;

    .line 89
    sput-object v3, Landroid/content/res/ResourcesEx;->sBmpBorder:Landroid/graphics/Bitmap;

    .line 90
    sput-object v3, Landroid/content/res/ResourcesEx;->sBmpMask:Landroid/graphics/Bitmap;

    .line 91
    sput-object v3, Landroid/content/res/ResourcesEx;->sBmpSysAppDefault:Landroid/graphics/Bitmap;

    .line 96
    sget-object v0, Landroid/content/res/ResourcesEx$MaskRange;->UNDEFINED:Landroid/content/res/ResourcesEx$MaskRange;

    sput-object v0, Landroid/content/res/ResourcesEx;->sMaskRange:Landroid/content/res/ResourcesEx$MaskRange;

    .line 101
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Landroid/content/res/ResourcesEx;->mCacheColorInfoList:Ljava/util/HashMap;

    .line 102
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Landroid/content/res/ResourcesEx;->mPreloadedThemeColorList:Ljava/util/ArrayList;

    .line 103
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Landroid/content/res/ResourcesEx;->mNonThemedPackage:Ljava/util/ArrayList;

    .line 111
    const-string/jumbo v0, "ro.config.app_big_icon_size"

    invoke-static {v0, v2}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    sput v0, Landroid/content/res/ResourcesEx;->sConfigAppBigIconSize:I

    .line 113
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

    .line 905
    invoke-direct {p0}, Landroid/content/res/Resources;-><init>()V

    .line 98
    new-instance v0, Landroid/util/LongSparseArray;

    invoke-direct {v0}, Landroid/util/LongSparseArray;-><init>()V

    iput-object v0, p0, Landroid/content/res/ResourcesEx;->mDrawableCacheEx:Landroid/util/LongSparseArray;

    .line 104
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/content/res/ResourcesEx;->isThemeColor:Z

    .line 906
    sget v0, Landroid/content/res/ResourcesEx;->sStandardBgSize:I

    if-ne v1, v0, :cond_0

    .line 907
    sget v0, Landroid/content/res/ResourcesEx;->sConfigAppBigIconSize:I

    if-ne v0, v1, :cond_1

    const v0, 0x105007d

    invoke-virtual {p0, v0}, Landroid/content/res/ResourcesEx;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    :goto_0
    sput v0, Landroid/content/res/ResourcesEx;->sStandardBgSize:I

    .line 911
    sget v0, Landroid/content/res/ResourcesEx;->sStandardBgSize:I

    add-int/lit8 v0, v0, 0x8

    sput v0, Landroid/content/res/ResourcesEx;->sDefaultSizeWithoutEdge:I

    .line 913
    sget v0, Landroid/content/res/ResourcesEx;->sConfigAppInnerIconSize:I

    if-ne v0, v1, :cond_2

    const v0, 0x105007c

    invoke-virtual {p0, v0}, Landroid/content/res/ResourcesEx;->getDimensionPixelSize(I)I

    move-result v0

    :goto_1
    sput v0, Landroid/content/res/ResourcesEx;->sStandardIconSize:I

    .line 919
    :cond_0
    invoke-static {}, Landroid/content/res/ResourcesEx;->initStatics()V

    .line 920
    return-void

    .line 907
    :cond_1
    sget v0, Landroid/content/res/ResourcesEx;->sConfigAppBigIconSize:I

    goto :goto_0

    .line 913
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
    .line 884
    const/4 v0, 0x0

    check-cast v0, Landroid/content/res/CompatibilityInfo;

    invoke-direct {p0, p1, p2, p3, v0}, Landroid/content/res/ResourcesEx;-><init>(Landroid/content/res/AssetManager;Landroid/util/DisplayMetrics;Landroid/content/res/Configuration;Landroid/content/res/CompatibilityInfo;)V

    .line 885
    return-void
.end method

.method public constructor <init>(Landroid/content/res/AssetManager;Landroid/util/DisplayMetrics;Landroid/content/res/Configuration;Landroid/content/res/CompatibilityInfo;)V
    .locals 1
    .parameter "assets"
    .parameter "metrics"
    .parameter "config"
    .parameter "compInfo"

    .prologue
    .line 901
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/content/res/Resources;-><init>(Landroid/content/res/AssetManager;Landroid/util/DisplayMetrics;Landroid/content/res/Configuration;Landroid/content/res/CompatibilityInfo;)V

    .line 98
    new-instance v0, Landroid/util/LongSparseArray;

    invoke-direct {v0}, Landroid/util/LongSparseArray;-><init>()V

    iput-object v0, p0, Landroid/content/res/ResourcesEx;->mDrawableCacheEx:Landroid/util/LongSparseArray;

    .line 104
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/content/res/ResourcesEx;->isThemeColor:Z

    .line 902
    return-void
.end method

.method private addIconBackgroud(Landroid/graphics/Bitmap;Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 10
    .parameter "bmpSrc"
    .parameter "idAndPackageName"

    .prologue
    const/4 v4, 0x0

    .line 286
    const-class v7, Landroid/content/res/ResourcesEx;

    monitor-enter v7

    .line 287
    :try_start_0
    sget-object v6, Landroid/content/res/ResourcesEx;->THEME_DIR:Ljava/lang/String;

    const-string v8, "icons"

    invoke-static {v6, v8}, Landroid/content/res/ZipFileCache;->getAndCheckCachedZipFile(Ljava/lang/String;Ljava/lang/String;)Landroid/content/res/ZipFileCache;

    move-result-object v2

    .line 288
    .local v2, iconZipFileCache:Landroid/content/res/ZipFileCache;
    if-nez v2, :cond_0

    .line 289
    monitor-exit v7

    .line 354
    :goto_0
    return-object v4

    .line 292
    :cond_0
    invoke-static {v2}, Landroid/content/res/ResourcesEx;->initBorder(Landroid/content/res/ZipFileCache;)V

    .line 294
    sget-object v6, Landroid/content/res/ResourcesEx;->sBmpBorder:Landroid/graphics/Bitmap;

    if-nez v6, :cond_1

    .line 295
    monitor-exit v7

    goto :goto_0

    .line 355
    .end local v2           #iconZipFileCache:Landroid/content/res/ZipFileCache;
    :catchall_0
    move-exception v6

    monitor-exit v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v6

    .line 298
    .restart local v2       #iconZipFileCache:Landroid/content/res/ZipFileCache;
    :cond_1
    :try_start_1
    invoke-static {v2}, Landroid/content/res/ResourcesEx;->initMask(Landroid/content/res/ZipFileCache;)V

    .line 300
    sget-object v6, Landroid/content/res/ResourcesEx;->sBmpMask:Landroid/graphics/Bitmap;

    if-nez v6, :cond_2

    .line 301
    monitor-exit v7

    goto :goto_0

    .line 303
    :cond_2
    invoke-direct {p0, p2}, Landroid/content/res/ResourcesEx;->getRandomBgImage(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 304
    .local v0, bmpBg:Landroid/graphics/Bitmap;
    if-nez v0, :cond_3

    .line 305
    monitor-exit v7

    goto :goto_0

    .line 308
    :cond_3
    const/4 v6, 0x1

    invoke-static {v6}, Landroid/content/res/ResourcesEx;->initMaskSizeWithoutEdge(Z)V

    .line 311
    sget v6, Landroid/content/res/ResourcesEx;->sDefaultSizeWithoutEdge:I

    sget v8, Landroid/content/res/ResourcesEx;->sStandardIconSize:I

    sget v9, Landroid/content/res/ResourcesEx;->sMaskSizeWithoutEdge:I

    invoke-static {p1, v6, v8, v9}, Landroid/content/IconBitmapUtils;->zoomWithoutEdge(Landroid/graphics/Bitmap;III)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 313
    .local v1, bmpSrcStd:Landroid/graphics/Bitmap;
    sget-object v6, Landroid/content/res/ResourcesEx;->sBmpMask:Landroid/graphics/Bitmap;

    invoke-static {v1, v6}, Landroid/content/IconBitmapUtils;->mask(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v3

    .line 314
    .local v3, maskResultBitmap:Landroid/graphics/Bitmap;
    const/4 v4, 0x0

    .line 315
    .local v4, newBitmap:Landroid/graphics/Bitmap;
    const/4 v5, 0x0

    .line 317
    .local v5, tmpBitmap:Landroid/graphics/Bitmap;
    if-eqz v3, :cond_7

    .line 318
    const/4 v6, 0x0

    const/4 v8, 0x0

    invoke-static {v3, v0, v6, v8}, Landroid/content/IconBitmapUtils;->overlap2Bitmap(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;

    move-result-object v5

    .line 319
    sget-object v6, Landroid/content/res/ResourcesEx;->sBmpBorder:Landroid/graphics/Bitmap;

    invoke-static {v6, v5}, Landroid/content/IconBitmapUtils;->overlap2Bitmap(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v4

    .line 325
    :goto_1
    if-eqz v3, :cond_4

    .line 326
    invoke-virtual {v3}, Landroid/graphics/Bitmap;->recycle()V

    .line 328
    :cond_4
    if-eqz v5, :cond_5

    .line 329
    invoke-virtual {v5}, Landroid/graphics/Bitmap;->recycle()V

    .line 331
    :cond_5
    if-ne v1, p1, :cond_8

    .line 333
    if-eqz v4, :cond_6

    .line 334
    if-eqz v1, :cond_6

    .line 335
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    .line 354
    :cond_6
    :goto_2
    monitor-exit v7

    goto :goto_0

    .line 322
    :cond_7
    const/4 v6, 0x0

    const/4 v8, 0x0

    invoke-static {v1, v0, v6, v8}, Landroid/content/IconBitmapUtils;->overlap2Bitmap(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;

    move-result-object v5

    .line 323
    sget-object v6, Landroid/content/res/ResourcesEx;->sBmpBorder:Landroid/graphics/Bitmap;

    invoke-static {v6, v5}, Landroid/content/IconBitmapUtils;->overlap2Bitmap(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v4

    goto :goto_1

    .line 340
    :cond_8
    if-eqz v4, :cond_a

    .line 341
    if-eqz v1, :cond_9

    .line 342
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    .line 344
    :cond_9
    if-eqz p1, :cond_6

    .line 345
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->recycle()V

    goto :goto_2

    .line 349
    :cond_a
    if-eqz v1, :cond_6

    .line 350
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2
.end method

.method private checkSpecialIcons(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    .locals 2
    .parameter "entryName"

    .prologue
    const/4 v0, 0x0

    .line 268
    const-string/jumbo v1, "sym_def_app_icon"

    invoke-virtual {p1, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    if-ltz v1, :cond_0

    .line 270
    invoke-static {v0}, Landroid/content/res/ResourcesEx;->initSysDefault(Landroid/content/res/ZipFileCache;)V

    .line 272
    sget-object v1, Landroid/content/res/ResourcesEx;->sBmpSysAppDefault:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_0

    .line 273
    new-instance v0, Landroid/graphics/drawable/BitmapDrawable;

    sget-object v1, Landroid/content/res/ResourcesEx;->sBmpSysAppDefault:Landroid/graphics/Bitmap;

    invoke-direct {v0, p0, v1}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    .line 276
    :cond_0
    return-object v0
.end method

.method private static getAllBgImage(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .parameter "path"
    .parameter "zip"

    .prologue
    .line 122
    sget-object v3, Landroid/content/res/ResourcesEx;->sBgList:Ljava/util/ArrayList;

    if-eqz v3, :cond_1

    sget-object v3, Landroid/content/res/ResourcesEx;->sBgList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_1

    .line 144
    :cond_0
    return-void

    .line 125
    :cond_1
    sget-object v3, Landroid/content/res/ResourcesEx;->THEME_DIR:Ljava/lang/String;

    const-string v4, "icons"

    invoke-static {v3, v4}, Landroid/content/res/ZipFileCache;->getAndCheckCachedZipFile(Ljava/lang/String;Ljava/lang/String;)Landroid/content/res/ZipFileCache;

    move-result-object v2

    .line 126
    .local v2, iconZipFileCache:Landroid/content/res/ZipFileCache;
    if-eqz v2, :cond_0

    .line 129
    const/4 v0, 0x0

    .line 130
    .local v0, bmp:Landroid/graphics/Bitmap;
    const-string v3, "icon_background"

    invoke-virtual {v2, v3}, Landroid/content/res/ZipFileCache;->getBitmapList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v3

    sput-object v3, Landroid/content/res/ResourcesEx;->sBgList:Ljava/util/ArrayList;

    .line 131
    sget-object v3, Landroid/content/res/ResourcesEx;->sBgList:Ljava/util/ArrayList;

    if-eqz v3, :cond_0

    .line 134
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    sget-object v3, Landroid/content/res/ResourcesEx;->sBgList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v1, v3, :cond_0

    .line 135
    sget-object v3, Landroid/content/res/ResourcesEx;->sBgList:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    .end local v0           #bmp:Landroid/graphics/Bitmap;
    check-cast v0, Landroid/graphics/Bitmap;

    .line 136
    .restart local v0       #bmp:Landroid/graphics/Bitmap;
    if-eqz v0, :cond_2

    .line 137
    sget v3, Landroid/content/res/ResourcesEx;->sStandardBgSize:I

    const/4 v4, 0x1

    invoke-static {v0, v3, v4}, Landroid/content/IconBitmapUtils;->zoomIfNeed(Landroid/graphics/Bitmap;IZ)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 138
    sget-object v3, Landroid/content/res/ResourcesEx;->sBgList:Ljava/util/ArrayList;

    invoke-virtual {v3, v1, v0}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 134
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method private getCode(Ljava/lang/String;)I
    .locals 3
    .parameter "idAndPackageName"

    .prologue
    .line 171
    const/4 v0, 0x0

    .line 172
    .local v0, code:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 173
    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    add-int/2addr v0, v2

    .line 172
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 175
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

    .line 742
    if-eqz p1, :cond_5

    .line 743
    const-string v1, "#"

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 744
    new-instance v1, Ljava/lang/NumberFormatException;

    const-string v2, "Color value \'%s\' must start with #"

    new-array v3, v3, [Ljava/lang/Object;

    aput-object p1, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 748
    :cond_0
    invoke-virtual {p1, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    .line 751
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v2, 0x8

    if-le v1, v2, :cond_1

    .line 752
    new-instance v1, Ljava/lang/NumberFormatException;

    const-string v2, "Color value \'%s\' is too long. Format is either#AARRGGBB, #RRGGBB, #RGB, or #ARGB"

    new-array v3, v3, [Ljava/lang/Object;

    aput-object p1, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 758
    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-ne v1, v6, :cond_3

    .line 759
    const/16 v1, 0x8

    new-array v0, v1, [C

    .line 760
    .local v0, color:[C
    const/16 v1, 0x46

    aput-char v1, v0, v3

    aput-char v1, v0, v4

    .line 761
    invoke-virtual {p1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v1

    aput-char v1, v0, v6

    aput-char v1, v0, v5

    .line 762
    const/4 v1, 0x5

    invoke-virtual {p1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v2

    aput-char v2, v0, v1

    aput-char v2, v0, v7

    .line 763
    const/4 v1, 0x6

    const/4 v2, 0x7

    invoke-virtual {p1, v5}, Ljava/lang/String;->charAt(I)C

    move-result v3

    aput-char v3, v0, v2

    aput-char v3, v0, v1

    .line 764
    new-instance p1, Ljava/lang/String;

    .end local p1
    invoke-direct {p1, v0}, Ljava/lang/String;-><init>([C)V

    .line 781
    .end local v0           #color:[C
    .restart local p1
    :cond_2
    :goto_0
    const/16 v1, 0x10

    invoke-static {p1, v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;I)J

    move-result-wide v1

    long-to-int v1, v1

    return v1

    .line 765
    :cond_3
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-ne v1, v7, :cond_4

    .line 766
    const/16 v1, 0x8

    new-array v0, v1, [C

    .line 767
    .restart local v0       #color:[C
    invoke-virtual {p1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v1

    aput-char v1, v0, v3

    aput-char v1, v0, v4

    .line 768
    invoke-virtual {p1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v1

    aput-char v1, v0, v6

    aput-char v1, v0, v5

    .line 769
    const/4 v1, 0x5

    invoke-virtual {p1, v5}, Ljava/lang/String;->charAt(I)C

    move-result v2

    aput-char v2, v0, v1

    aput-char v2, v0, v7

    .line 770
    const/4 v1, 0x6

    const/4 v2, 0x7

    invoke-virtual {p1, v6}, Ljava/lang/String;->charAt(I)C

    move-result v3

    aput-char v3, v0, v2

    aput-char v3, v0, v1

    .line 771
    new-instance p1, Ljava/lang/String;

    .end local p1
    invoke-direct {p1, v0}, Ljava/lang/String;-><init>([C)V

    .line 772
    .restart local p1
    goto :goto_0

    .end local v0           #color:[C
    :cond_4
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x6

    if-ne v1, v2, :cond_2

    .line 773
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

    .line 784
    :cond_5
    new-instance v1, Ljava/lang/NumberFormatException;

    invoke-direct {v1}, Ljava/lang/NumberFormatException;-><init>()V

    throw v1
.end method

.method private getIconFileName(Ljava/lang/String;Landroid/content/IconCache$CacheEntry;)Ljava/lang/String;
    .locals 4
    .parameter "packageName"
    .parameter "ce"

    .prologue
    .line 1001
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget v2, p2, Landroid/content/IconCache$CacheEntry;->type:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    iget-object p1, p2, Landroid/content/IconCache$CacheEntry;->name:Ljava/lang/String;

    .end local p1
    :cond_0
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ".png"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1003
    .local v0, imgFile:Ljava/lang/String;
    return-object v0
.end method

.method private getRandomBgImage(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 4
    .parameter "idAndPackageName"

    .prologue
    .line 151
    sget-object v2, Landroid/content/res/ResourcesEx;->sBgList:Ljava/util/ArrayList;

    if-eqz v2, :cond_0

    sget-object v2, Landroid/content/res/ResourcesEx;->sBgList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 152
    :cond_0
    sget-object v2, Landroid/content/res/ResourcesEx;->THEME_DIR:Ljava/lang/String;

    const-string v3, "icons"

    invoke-static {v2, v3}, Landroid/content/res/ResourcesEx;->getAllBgImage(Ljava/lang/String;Ljava/lang/String;)V

    .line 154
    :cond_1
    const/4 v1, 0x0

    .line 155
    .local v1, len:I
    sget-object v2, Landroid/content/res/ResourcesEx;->sBgList:Ljava/util/ArrayList;

    if-eqz v2, :cond_2

    .line 156
    sget-object v2, Landroid/content/res/ResourcesEx;->sBgList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 158
    :cond_2
    if-lez v1, :cond_3

    .line 159
    invoke-direct {p0, p1}, Landroid/content/res/ResourcesEx;->getCode(Ljava/lang/String;)I

    move-result v2

    rem-int v0, v2, v1

    .line 160
    .local v0, i:I
    sget-object v2, Landroid/content/res/ResourcesEx;->sBgList:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/Bitmap;

    .line 162
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
    .line 846
    invoke-virtual {p0, p1}, Landroid/content/res/ResourcesEx;->getResourcePackageName(I)Ljava/lang/String;

    move-result-object v0

    .line 847
    .local v0, packageName:Ljava/lang/String;
    invoke-virtual {p0, p1}, Landroid/content/res/ResourcesEx;->getResourceName(I)Ljava/lang/String;

    move-result-object v1

    .line 848
    .local v1, resName:Ljava/lang/String;
    const-string v2, "android"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 849
    const-string v0, "framework-res"

    .line 850
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

    .line 853
    :cond_0
    const-string v2, "androidhwext"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 854
    const-string v0, "framework-res-hwext"

    .line 855
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

    .line 857
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

    .line 700
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v3

    .line 704
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

    .line 706
    :cond_1
    const/4 v9, 0x2

    if-ne v8, v9, :cond_0

    .line 710
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v4

    .line 711
    .local v4, lableName:Ljava/lang/String;
    const-string v9, "color"

    invoke-virtual {v4, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_2

    const-string v9, "drawable"

    invoke-virtual {v4, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 714
    :cond_2
    invoke-interface {p1, v11}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeName(I)Ljava/lang/String;

    move-result-object v5

    .line 715
    .local v5, name:Ljava/lang/String;
    invoke-interface {p1, v11}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v0

    .line 716
    .local v0, colorName:Ljava/lang/String;
    const/4 v7, 0x0

    .line 717
    .local v7, text:Ljava/lang/String;
    const/4 v1, 0x0

    .line 718
    .local v1, colorVaue:I
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v9

    const/4 v10, 0x4

    if-ne v9, v10, :cond_3

    .line 719
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object v7

    .line 721
    :cond_3
    const-string/jumbo v9, "name"

    invoke-virtual {v9, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 722
    invoke-direct {p0, v7}, Landroid/content/res/ResourcesEx;->getColorValueFromStr(Ljava/lang/String;)I

    move-result v1

    .line 724
    const/4 v2, 0x0

    .line 725
    .local v2, fullColorName:Ljava/lang/String;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 726
    .local v6, sb:Ljava/lang/StringBuilder;
    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 727
    const-string v9, ":"

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 728
    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 729
    const-string v9, "/"

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 730
    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 732
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 733
    sget-object v9, Landroid/content/res/ResourcesEx;->mCacheColorInfoList:Ljava/util/HashMap;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v9, v2, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 736
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
    .line 230
    sget-object v0, Landroid/content/res/ResourcesEx;->sBmpBorder:Landroid/graphics/Bitmap;

    if-nez v0, :cond_0

    .line 231
    const-string v0, "icon_border.png"

    invoke-virtual {p0, v0}, Landroid/content/res/ZipFileCache;->getBitmapEntry(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    sput-object v0, Landroid/content/res/ResourcesEx;->sBmpBorder:Landroid/graphics/Bitmap;

    .line 232
    sget-object v0, Landroid/content/res/ResourcesEx;->sBmpBorder:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    .line 233
    sget-object v0, Landroid/content/res/ResourcesEx;->sBmpBorder:Landroid/graphics/Bitmap;

    sget v1, Landroid/content/res/ResourcesEx;->sStandardBgSize:I

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/content/IconBitmapUtils;->zoomIfNeed(Landroid/graphics/Bitmap;IZ)Landroid/graphics/Bitmap;

    move-result-object v0

    sput-object v0, Landroid/content/res/ResourcesEx;->sBmpBorder:Landroid/graphics/Bitmap;

    .line 236
    :cond_0
    return-void
.end method

.method private static initMask(Landroid/content/res/ZipFileCache;)V
    .locals 3
    .parameter "iconZipFileCache"

    .prologue
    const/4 v2, 0x1

    .line 214
    sget-object v0, Landroid/content/res/ResourcesEx;->sBmpMask:Landroid/graphics/Bitmap;

    if-nez v0, :cond_0

    .line 215
    const-string v0, "icon_mask.png"

    invoke-virtual {p0, v0}, Landroid/content/res/ZipFileCache;->getBitmapEntry(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    sput-object v0, Landroid/content/res/ResourcesEx;->sBmpMask:Landroid/graphics/Bitmap;

    .line 216
    sget-object v0, Landroid/content/res/ResourcesEx;->sBmpMask:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_1

    .line 217
    sget-object v0, Landroid/content/res/ResourcesEx;->sBmpMask:Landroid/graphics/Bitmap;

    sget v1, Landroid/content/res/ResourcesEx;->sStandardBgSize:I

    invoke-static {v0, v1, v2}, Landroid/content/IconBitmapUtils;->zoomIfNeed(Landroid/graphics/Bitmap;IZ)Landroid/graphics/Bitmap;

    move-result-object v0

    sput-object v0, Landroid/content/res/ResourcesEx;->sBmpMask:Landroid/graphics/Bitmap;

    .line 218
    sget-object v0, Landroid/content/res/ResourcesEx$MaskRange;->THIRD_PARTY:Landroid/content/res/ResourcesEx$MaskRange;

    sput-object v0, Landroid/content/res/ResourcesEx;->sMaskRange:Landroid/content/res/ResourcesEx$MaskRange;

    .line 227
    :cond_0
    :goto_0
    return-void

    .line 220
    :cond_1
    const-string v0, "icon_mask_all.png"

    invoke-virtual {p0, v0}, Landroid/content/res/ZipFileCache;->getBitmapEntry(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    sput-object v0, Landroid/content/res/ResourcesEx;->sBmpMask:Landroid/graphics/Bitmap;

    .line 221
    sget-object v0, Landroid/content/res/ResourcesEx;->sBmpMask:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    .line 222
    sget-object v0, Landroid/content/res/ResourcesEx;->sBmpMask:Landroid/graphics/Bitmap;

    sget v1, Landroid/content/res/ResourcesEx;->sStandardBgSize:I

    invoke-static {v0, v1, v2}, Landroid/content/IconBitmapUtils;->zoomIfNeed(Landroid/graphics/Bitmap;IZ)Landroid/graphics/Bitmap;

    move-result-object v0

    sput-object v0, Landroid/content/res/ResourcesEx;->sBmpMask:Landroid/graphics/Bitmap;

    .line 223
    sget-object v0, Landroid/content/res/ResourcesEx$MaskRange;->ALL:Landroid/content/res/ResourcesEx$MaskRange;

    sput-object v0, Landroid/content/res/ResourcesEx;->sMaskRange:Landroid/content/res/ResourcesEx$MaskRange;

    goto :goto_0
.end method

.method private static initMaskSizeWithoutEdge(Z)V
    .locals 3
    .parameter "useDefault"

    .prologue
    .line 196
    const/4 v1, -0x1

    sget v2, Landroid/content/res/ResourcesEx;->sMaskSizeWithoutEdge:I

    if-ne v1, v2, :cond_0

    .line 197
    sget-object v1, Landroid/content/res/ResourcesEx;->sBmpMask:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_2

    .line 199
    sget-object v1, Landroid/content/res/ResourcesEx;->sBmpMask:Landroid/graphics/Bitmap;

    invoke-static {v1}, Landroid/content/IconBitmapUtils;->getRectWithoutEdge(Landroid/graphics/Bitmap;)Landroid/graphics/Rect;

    move-result-object v0

    .line 200
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

    .line 201
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    sput v1, Landroid/content/res/ResourcesEx;->sMaskSizeWithoutEdge:I

    .line 211
    .end local v0           #r:Landroid/graphics/Rect;
    :cond_0
    :goto_0
    return-void

    .line 203
    .restart local v0       #r:Landroid/graphics/Rect;
    :cond_1
    sget v1, Landroid/content/res/ResourcesEx;->sStandardBgSize:I

    add-int/lit8 v1, v1, -0x8

    sput v1, Landroid/content/res/ResourcesEx;->sMaskSizeWithoutEdge:I

    goto :goto_0

    .line 205
    .end local v0           #r:Landroid/graphics/Rect;
    :cond_2
    if-eqz p0, :cond_0

    .line 207
    sget v1, Landroid/content/res/ResourcesEx;->sStandardBgSize:I

    add-int/lit8 v1, v1, -0x8

    sput v1, Landroid/content/res/ResourcesEx;->sMaskSizeWithoutEdge:I

    goto :goto_0
.end method

.method private static initStatics()V
    .locals 3

    .prologue
    .line 179
    sget-object v1, Landroid/content/res/ResourcesEx;->sBgList:Ljava/util/ArrayList;

    if-eqz v1, :cond_1

    sget-object v1, Landroid/content/res/ResourcesEx;->sBgList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    .line 193
    .local v0, iconZipFileCache:Landroid/content/res/ZipFileCache;
    :cond_0
    :goto_0
    return-void

    .line 182
    .end local v0           #iconZipFileCache:Landroid/content/res/ZipFileCache;
    :cond_1
    sget-object v1, Landroid/content/res/ResourcesEx;->THEME_DIR:Ljava/lang/String;

    const-string v2, "icons"

    invoke-static {v1, v2}, Landroid/content/res/ZipFileCache;->getAndCheckCachedZipFile(Ljava/lang/String;Ljava/lang/String;)Landroid/content/res/ZipFileCache;

    move-result-object v0

    .line 183
    .restart local v0       #iconZipFileCache:Landroid/content/res/ZipFileCache;
    if-eqz v0, :cond_0

    .line 187
    invoke-static {v0}, Landroid/content/res/ResourcesEx;->initBorder(Landroid/content/res/ZipFileCache;)V

    .line 188
    invoke-static {v0}, Landroid/content/res/ResourcesEx;->initMask(Landroid/content/res/ZipFileCache;)V

    .line 189
    const/4 v1, 0x0

    invoke-static {v1}, Landroid/content/res/ResourcesEx;->initMaskSizeWithoutEdge(Z)V

    .line 190
    invoke-static {v0}, Landroid/content/res/ResourcesEx;->initSysDefault(Landroid/content/res/ZipFileCache;)V

    .line 191
    sget-object v1, Landroid/content/res/ResourcesEx;->THEME_DIR:Ljava/lang/String;

    const-string v2, "icons"

    invoke-static {v1, v2}, Landroid/content/res/ResourcesEx;->getAllBgImage(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private static initSysDefault(Landroid/content/res/ZipFileCache;)V
    .locals 4
    .parameter "iconZipFileCache"

    .prologue
    .line 239
    sget-object v2, Landroid/content/res/ResourcesEx;->sBmpSysAppDefault:Landroid/graphics/Bitmap;

    if-nez v2, :cond_0

    .line 240
    move-object v1, p0

    .line 241
    .local v1, zip:Landroid/content/res/ZipFileCache;
    if-nez v1, :cond_0

    .line 242
    sget-object v2, Landroid/content/res/ResourcesEx;->THEME_DIR:Ljava/lang/String;

    const-string v3, "icons"

    invoke-static {v2, v3}, Landroid/content/res/ZipFileCache;->getAndCheckCachedZipFile(Ljava/lang/String;Ljava/lang/String;)Landroid/content/res/ZipFileCache;

    move-result-object v1

    .line 243
    if-eqz v1, :cond_0

    .line 244
    const-string/jumbo v2, "sym_def_app_icon.png"

    invoke-virtual {v1, v2}, Landroid/content/res/ZipFileCache;->getBitmapEntry(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 245
    .local v0, tmpBitmap:Landroid/graphics/Bitmap;
    if-eqz v0, :cond_0

    .line 246
    sget v2, Landroid/content/res/ResourcesEx;->sStandardBgSize:I

    const/4 v3, 0x1

    invoke-static {v0, v2, v3}, Landroid/content/IconBitmapUtils;->zoomIfNeed(Landroid/graphics/Bitmap;IZ)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 247
    invoke-static {v1}, Landroid/content/res/ResourcesEx;->initMask(Landroid/content/res/ZipFileCache;)V

    .line 248
    sget-object v2, Landroid/content/res/ResourcesEx;->sMaskRange:Landroid/content/res/ResourcesEx$MaskRange;

    sget-object v3, Landroid/content/res/ResourcesEx$MaskRange;->ALL:Landroid/content/res/ResourcesEx$MaskRange;

    if-ne v2, v3, :cond_1

    .line 249
    sget-object v2, Landroid/content/res/ResourcesEx;->sBmpMask:Landroid/graphics/Bitmap;

    invoke-static {v0, v2}, Landroid/content/IconBitmapUtils;->mask(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v2

    sput-object v2, Landroid/content/res/ResourcesEx;->sBmpSysAppDefault:Landroid/graphics/Bitmap;

    .line 250
    sget-object v2, Landroid/content/res/ResourcesEx;->sBmpSysAppDefault:Landroid/graphics/Bitmap;

    if-eqz v2, :cond_0

    if-eqz v0, :cond_0

    .line 251
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 260
    .end local v0           #tmpBitmap:Landroid/graphics/Bitmap;
    .end local v1           #zip:Landroid/content/res/ZipFileCache;
    :cond_0
    :goto_0
    return-void

    .line 254
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
    .line 676
    iget-object v3, p0, Landroid/content/res/Resources;->mTmpValue:Landroid/util/TypedValue;

    monitor-enter v3

    .line 677
    :try_start_0
    iget-object v1, p0, Landroid/content/res/Resources;->mTmpValue:Landroid/util/TypedValue;

    .line 678
    .local v1, value:Landroid/util/TypedValue;
    const/4 v2, 0x1

    invoke-virtual {p0, p1, v1, v2}, Landroid/content/res/ResourcesEx;->getValue(ILandroid/util/TypedValue;Z)V

    .line 679
    iget v2, v1, Landroid/util/TypedValue;->type:I

    const/16 v4, 0x10

    if-lt v2, v4, :cond_1

    iget v2, v1, Landroid/util/TypedValue;->type:I

    const/16 v4, 0x1f

    if-gt v2, v4, :cond_1

    .line 681
    sget-boolean v2, Landroid/content/res/Resources;->sIsHwTheme:Z

    if-eqz v2, :cond_0

    .line 682
    invoke-virtual {p0, v1, p1}, Landroid/content/res/ResourcesEx;->getThemeColor(Landroid/util/TypedValue;I)I

    move-result v0

    .line 683
    .local v0, colorVaue:I
    monitor-exit v3

    .line 688
    .end local v0           #colorVaue:I
    :goto_0
    return v0

    .line 685
    :cond_0
    iget v0, v1, Landroid/util/TypedValue;->data:I

    monitor-exit v3

    goto :goto_0

    .line 690
    .end local v1           #value:Landroid/util/TypedValue;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 688
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
    .line 977
    const/4 v1, 0x0

    .line 978
    .local v1, dr:Landroid/graphics/drawable/Drawable;
    const-string v3, ""

    .line 984
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

    .line 985
    sget-object v4, Landroid/content/res/ResourcesEx;->THEME_DIR:Ljava/lang/String;

    const-string v5, "icons"

    invoke-static {v4, v5}, Landroid/content/res/ZipFileCache;->getAndCheckCachedZipFile(Ljava/lang/String;Ljava/lang/String;)Landroid/content/res/ZipFileCache;

    move-result-object v2

    .line 986
    .local v2, iconZipFileCache:Landroid/content/res/ZipFileCache;
    if-nez v2, :cond_0

    .line 987
    const/4 v4, 0x0

    .line 994
    :goto_0
    return-object v4

    .line 989
    :cond_0
    invoke-virtual {v2, v3}, Landroid/content/res/ZipFileCache;->getBitmapEntry(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 990
    .local v0, bmp:Landroid/graphics/Bitmap;
    if-eqz v0, :cond_1

    .line 991
    new-instance v1, Landroid/graphics/drawable/BitmapDrawable;

    .end local v1           #dr:Landroid/graphics/drawable/Drawable;
    invoke-direct {v1, p0, v0}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    .restart local v1       #dr:Landroid/graphics/drawable/Drawable;
    :cond_1
    move-object v4, v1

    .line 994
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

    .line 627
    invoke-direct {p0, p2}, Landroid/content/res/ResourcesEx;->getThemeResource(I)Landroid/content/res/ResourcesEx$ThemeResource;

    move-result-object v4

    .line 628
    .local v4, themeRes:Landroid/content/res/ResourcesEx$ThemeResource;
    #getter for: Landroid/content/res/ResourcesEx$ThemeResource;->packageName:Ljava/lang/String;
    invoke-static {v4}, Landroid/content/res/ResourcesEx$ThemeResource;->access$000(Landroid/content/res/ResourcesEx$ThemeResource;)Ljava/lang/String;

    move-result-object v2

    .line 629
    .local v2, packageName:Ljava/lang/String;
    iget-object v6, p1, Landroid/util/TypedValue;->string:Ljava/lang/CharSequence;

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 630
    .local v1, file:Ljava/lang/String;
    const/4 v0, 0x0

    .line 635
    .local v0, bmp:Landroid/graphics/Bitmap;
    const-string v6, "framework-res"

    invoke-virtual {v2, v6}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v6

    if-ltz v6, :cond_1

    const-string v6, "_holo"

    invoke-virtual {v1, v6}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v6

    if-ltz v6, :cond_1

    .line 643
    :cond_0
    :goto_0
    return-object v5

    .line 638
    :cond_1
    sget-object v6, Landroid/content/res/ResourcesEx;->THEME_DIR:Ljava/lang/String;

    invoke-static {v6, v2}, Landroid/content/res/ZipFileCache;->getAndCheckCachedZipFile(Ljava/lang/String;Ljava/lang/String;)Landroid/content/res/ZipFileCache;

    move-result-object v3

    .line 639
    .local v3, packageZipFileCache:Landroid/content/res/ZipFileCache;
    if-eqz v3, :cond_0

    .line 642
    invoke-virtual {v3, p0, p1, v1}, Landroid/content/res/ZipFileCache;->getBitmapEntry(Landroid/content/res/Resources;Landroid/util/TypedValue;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    move-object v5, v0

    .line 643
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

    .line 793
    invoke-direct {p0, p2}, Landroid/content/res/ResourcesEx;->getThemeResource(I)Landroid/content/res/ResourcesEx$ThemeResource;

    move-result-object v8

    .line 794
    .local v8, themeRes:Landroid/content/res/ResourcesEx$ThemeResource;
    #getter for: Landroid/content/res/ResourcesEx$ThemeResource;->packageName:Ljava/lang/String;
    invoke-static {v8}, Landroid/content/res/ResourcesEx$ThemeResource;->access$000(Landroid/content/res/ResourcesEx$ThemeResource;)Ljava/lang/String;

    move-result-object v4

    .line 795
    .local v4, packageName:Ljava/lang/String;
    #getter for: Landroid/content/res/ResourcesEx$ThemeResource;->resName:Ljava/lang/String;
    invoke-static {v8}, Landroid/content/res/ResourcesEx$ThemeResource;->access$100(Landroid/content/res/ResourcesEx$ThemeResource;)Ljava/lang/String;

    move-result-object v7

    .line 796
    .local v7, resName:Ljava/lang/String;
    sget-object v9, Landroid/content/res/ResourcesEx;->mPreloadedThemeColorList:Ljava/util/ArrayList;

    invoke-virtual {v9, v4}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_5

    sget-object v9, Landroid/content/res/ResourcesEx;->mNonThemedPackage:Ljava/util/ArrayList;

    invoke-virtual {v9, v4}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_5

    .line 797
    const/4 v5, 0x0

    .line 799
    .local v5, packageZipFileCache:Landroid/content/res/ZipFileCache;
    :try_start_0
    new-instance v2, Ljava/io/File;

    sget-object v9, Landroid/content/res/ResourcesEx;->THEME_DIR:Ljava/lang/String;

    invoke-direct {v2, v9, v4}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 800
    .local v2, file:Ljava/io/File;
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v9

    if-nez v9, :cond_2

    .line 801
    :cond_0
    const/4 v9, 0x0

    iput-boolean v9, p0, Landroid/content/res/ResourcesEx;->isThemeColor:Z

    .line 802
    sget-object v9, Landroid/content/res/ResourcesEx;->mNonThemedPackage:Ljava/util/ArrayList;

    invoke-virtual {v9, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 803
    iget v9, p1, Landroid/util/TypedValue;->data:I

    .line 841
    .end local v2           #file:Ljava/io/File;
    .end local v5           #packageZipFileCache:Landroid/content/res/ZipFileCache;
    :cond_1
    :goto_0
    return v9

    .line 805
    .restart local v2       #file:Ljava/io/File;
    .restart local v5       #packageZipFileCache:Landroid/content/res/ZipFileCache;
    :cond_2
    sget-object v9, Landroid/content/res/ResourcesEx;->THEME_DIR:Ljava/lang/String;

    invoke-static {v9, v4}, Landroid/content/res/ZipFileCache;->getAndCheckCachedZipFile(Ljava/lang/String;Ljava/lang/String;)Landroid/content/res/ZipFileCache;

    move-result-object v5

    .line 806
    if-nez v5, :cond_3

    .line 807
    iget v9, p1, Landroid/util/TypedValue;->data:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 809
    .end local v2           #file:Ljava/io/File;
    :catch_0
    move-exception v1

    .line 810
    .local v1, ex:Ljava/lang/Exception;
    iput-boolean v10, p0, Landroid/content/res/ResourcesEx;->isThemeColor:Z

    .line 811
    sget-object v9, Landroid/content/res/ResourcesEx;->mNonThemedPackage:Ljava/util/ArrayList;

    invoke-virtual {v9, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 812
    iget v9, p1, Landroid/util/TypedValue;->data:I

    goto :goto_0

    .line 815
    .end local v1           #ex:Ljava/lang/Exception;
    .restart local v2       #file:Ljava/io/File;
    :cond_3
    const-string/jumbo v9, "theme.xml"

    invoke-virtual {v5, v9}, Landroid/content/res/ZipFileCache;->getInputStreamEntry(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v3

    .line 816
    .local v3, is:Ljava/io/InputStream;
    if-eqz v3, :cond_4

    .line 819
    :try_start_1
    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v6

    .line 820
    .local v6, parser:Lorg/xmlpull/v1/XmlPullParser;
    const/4 v9, 0x0

    invoke-interface {v6, v3, v9}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 821
    invoke-direct {p0, v6, v4}, Landroid/content/res/ResourcesEx;->inflateColorInfoList(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 827
    if-eqz v3, :cond_4

    .line 828
    :try_start_2
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_3

    .line 834
    .end local v6           #parser:Lorg/xmlpull/v1/XmlPullParser;
    :cond_4
    :goto_1
    sget-object v9, Landroid/content/res/ResourcesEx;->mPreloadedThemeColorList:Ljava/util/ArrayList;

    invoke-virtual {v9, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 836
    .end local v2           #file:Ljava/io/File;
    .end local v3           #is:Ljava/io/InputStream;
    .end local v5           #packageZipFileCache:Landroid/content/res/ZipFileCache;
    :cond_5
    sget-object v9, Landroid/content/res/ResourcesEx;->mCacheColorInfoList:Ljava/util/HashMap;

    invoke-virtual {v9, v7}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_7

    .line 837
    const/4 v9, 0x1

    iput-boolean v9, p0, Landroid/content/res/ResourcesEx;->isThemeColor:Z

    .line 838
    sget-object v9, Landroid/content/res/ResourcesEx;->mCacheColorInfoList:Ljava/util/HashMap;

    invoke-virtual {v9, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    goto :goto_0

    .line 822
    .restart local v2       #file:Ljava/io/File;
    .restart local v3       #is:Ljava/io/InputStream;
    .restart local v5       #packageZipFileCache:Landroid/content/res/ZipFileCache;
    :catch_1
    move-exception v0

    .line 823
    .local v0, e:Ljava/lang/Exception;
    const/4 v9, 0x0

    :try_start_3
    iput-boolean v9, p0, Landroid/content/res/ResourcesEx;->isThemeColor:Z

    .line 824
    iget v9, p1, Landroid/util/TypedValue;->data:I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 827
    if-eqz v3, :cond_1

    .line 828
    :try_start_4
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_0

    .line 830
    :catch_2
    move-exception v10

    goto :goto_0

    .line 826
    .end local v0           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v9

    .line 827
    if-eqz v3, :cond_6

    .line 828
    :try_start_5
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_4

    .line 831
    :cond_6
    :goto_2
    throw v9

    .line 840
    .end local v2           #file:Ljava/io/File;
    .end local v3           #is:Ljava/io/InputStream;
    .end local v5           #packageZipFileCache:Landroid/content/res/ZipFileCache;
    :cond_7
    iput-boolean v10, p0, Landroid/content/res/ResourcesEx;->isThemeColor:Z

    .line 841
    iget v9, p1, Landroid/util/TypedValue;->data:I

    goto :goto_0

    .line 830
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

    .line 598
    invoke-direct {p0, p2}, Landroid/content/res/ResourcesEx;->getThemeResource(I)Landroid/content/res/ResourcesEx$ThemeResource;

    move-result-object v4

    .line 599
    .local v4, themeRes:Landroid/content/res/ResourcesEx$ThemeResource;
    #getter for: Landroid/content/res/ResourcesEx$ThemeResource;->packageName:Ljava/lang/String;
    invoke-static {v4}, Landroid/content/res/ResourcesEx$ThemeResource;->access$000(Landroid/content/res/ResourcesEx$ThemeResource;)Ljava/lang/String;

    move-result-object v2

    .line 600
    .local v2, packageName:Ljava/lang/String;
    iget-object v6, p1, Landroid/util/TypedValue;->string:Ljava/lang/CharSequence;

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 601
    .local v1, file:Ljava/lang/String;
    const/4 v0, 0x0

    .line 607
    .local v0, dr:Landroid/graphics/drawable/Drawable;
    const-string v6, "framework-res"

    invoke-virtual {v2, v6}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v6

    if-ltz v6, :cond_1

    const-string v6, "_holo"

    invoke-virtual {v1, v6}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v6

    if-ltz v6, :cond_1

    .line 619
    :cond_0
    :goto_0
    return-object v5

    .line 611
    :cond_1
    sget-object v6, Landroid/content/res/ResourcesEx;->THEME_DIR:Ljava/lang/String;

    invoke-static {v6, v2}, Landroid/content/res/ZipFileCache;->getAndCheckCachedZipFile(Ljava/lang/String;Ljava/lang/String;)Landroid/content/res/ZipFileCache;

    move-result-object v3

    .line 612
    .local v3, packageZipFileCache:Landroid/content/res/ZipFileCache;
    if-eqz v3, :cond_0

    .line 617
    invoke-virtual {v3, p0, p1, v1}, Landroid/content/res/ZipFileCache;->getDrawableEntry(Landroid/content/res/Resources;Landroid/util/TypedValue;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    move-object v5, v0

    .line 619
    goto :goto_0
.end method

.method getThemeIcon(I)Landroid/graphics/drawable/Drawable;
    .locals 14
    .parameter "id"

    .prologue
    .line 433
    const/4 v2, 0x0

    .line 434
    .local v2, dr:Landroid/graphics/drawable/Drawable;
    const/4 v0, 0x0

    .line 437
    .local v0, bmp:Landroid/graphics/Bitmap;
    invoke-virtual {p0, p1}, Landroid/content/res/ResourcesEx;->getResourcePackageName(I)Ljava/lang/String;

    move-result-object v8

    .line 438
    .local v8, packageName:Ljava/lang/String;
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, ""

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "#"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 439
    .local v4, idAndPackageName:Ljava/lang/String;
    invoke-static {v4}, Landroid/content/IconCache;->get(Ljava/lang/String;)Landroid/content/IconCache$CacheEntry;

    move-result-object v1

    .line 440
    .local v1, ce:Landroid/content/IconCache$CacheEntry;
    invoke-direct {p0, v8, v1}, Landroid/content/res/ResourcesEx;->getIconFileName(Ljava/lang/String;Landroid/content/IconCache$CacheEntry;)Ljava/lang/String;

    move-result-object v5

    .line 455
    .local v5, imgFile:Ljava/lang/String;
    const/4 v6, 0x0

    .line 456
    .local v6, isCommonIcon:Z
    sget-object v12, Landroid/content/res/ResourcesEx;->THEME_DIR:Ljava/lang/String;

    const-string v13, "icons"

    invoke-static {v12, v13}, Landroid/content/res/ZipFileCache;->getAndCheckCachedZipFile(Ljava/lang/String;Ljava/lang/String;)Landroid/content/res/ZipFileCache;

    move-result-object v3

    .line 459
    .local v3, iconZipFileCache:Landroid/content/res/ZipFileCache;
    if-eqz v3, :cond_4

    .line 460
    invoke-virtual {v3, v5}, Landroid/content/res/ZipFileCache;->getBitmapEntry(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 465
    if-nez v0, :cond_0

    .line 466
    sget-object v12, Landroid/content/res/ResourcesEx;->SYS_THEME_DIR:Ljava/lang/String;

    const-string v13, "icons"

    invoke-static {v12, v13}, Landroid/content/res/ZipFileCache;->getAndCheckCachedZipFile(Ljava/lang/String;Ljava/lang/String;)Landroid/content/res/ZipFileCache;

    move-result-object v11

    .line 467
    .local v11, sysIconZipFileCache:Landroid/content/res/ZipFileCache;
    if-eqz v11, :cond_0

    .line 468
    invoke-virtual {v11, v5}, Landroid/content/res/ZipFileCache;->getBitmapEntry(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 469
    const/4 v6, 0x1

    .line 484
    .end local v11           #sysIconZipFileCache:Landroid/content/res/ZipFileCache;
    :cond_0
    if-eqz v0, :cond_3

    .line 486
    sget v12, Landroid/content/res/ResourcesEx;->sStandardBgSize:I

    const/4 v13, 0x1

    invoke-static {v0, v12, v13}, Landroid/content/IconBitmapUtils;->zoomIfNeed(Landroid/graphics/Bitmap;IZ)Landroid/graphics/Bitmap;

    move-result-object v10

    .line 487
    .local v10, srcBitmap:Landroid/graphics/Bitmap;
    const/4 v7, 0x0

    .line 488
    .local v7, maskBitmap:Landroid/graphics/Bitmap;
    const/4 v9, 0x0

    .line 489
    .local v9, resultBitmap:Landroid/graphics/Bitmap;
    invoke-static {v3}, Landroid/content/res/ResourcesEx;->initMask(Landroid/content/res/ZipFileCache;)V

    .line 491
    sget-object v12, Landroid/content/res/ResourcesEx;->sMaskRange:Landroid/content/res/ResourcesEx$MaskRange;

    sget-object v13, Landroid/content/res/ResourcesEx$MaskRange;->ALL:Landroid/content/res/ResourcesEx$MaskRange;

    if-eq v12, v13, :cond_1

    if-eqz v6, :cond_6

    .line 493
    :cond_1
    invoke-static {v3}, Landroid/content/res/ResourcesEx;->initBorder(Landroid/content/res/ZipFileCache;)V

    .line 494
    sget-object v12, Landroid/content/res/ResourcesEx;->sBmpMask:Landroid/graphics/Bitmap;

    invoke-static {v10, v12}, Landroid/content/IconBitmapUtils;->mask(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v7

    .line 495
    if-eqz v7, :cond_2

    if-eqz v10, :cond_2

    .line 496
    invoke-virtual {v10}, Landroid/graphics/Bitmap;->recycle()V

    .line 497
    sget-object v12, Landroid/content/res/ResourcesEx;->sBmpBorder:Landroid/graphics/Bitmap;

    invoke-static {v12, v7}, Landroid/content/IconBitmapUtils;->overlap2Bitmap(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v9

    .line 498
    if-eqz v9, :cond_5

    .line 499
    invoke-virtual {v7}, Landroid/graphics/Bitmap;->recycle()V

    .line 507
    :cond_2
    :goto_0
    if-eqz v9, :cond_3

    .line 511
    new-instance v2, Landroid/graphics/drawable/BitmapDrawable;

    .end local v2           #dr:Landroid/graphics/drawable/Drawable;
    invoke-direct {v2, p0, v9}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    .end local v7           #maskBitmap:Landroid/graphics/Bitmap;
    .end local v9           #resultBitmap:Landroid/graphics/Bitmap;
    .end local v10           #srcBitmap:Landroid/graphics/Bitmap;
    .restart local v2       #dr:Landroid/graphics/drawable/Drawable;
    :cond_3
    move-object v12, v2

    .line 515
    :goto_1
    return-object v12

    .line 462
    :cond_4
    const/4 v12, 0x0

    goto :goto_1

    .line 501
    .restart local v7       #maskBitmap:Landroid/graphics/Bitmap;
    .restart local v9       #resultBitmap:Landroid/graphics/Bitmap;
    .restart local v10       #srcBitmap:Landroid/graphics/Bitmap;
    :cond_5
    move-object v9, v10

    goto :goto_0

    .line 505
    :cond_6
    move-object v9, v10

    goto :goto_0
.end method

.method protected handleActivityInfoConfigToNative(I)I
    .locals 1
    .parameter "configChanges"

    .prologue
    .line 968
    or-int/lit16 v0, p1, 0x4000

    return v0
.end method

.method protected handleAddIconBackground(ILandroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;
    .locals 9
    .parameter "id"
    .parameter "dr"

    .prologue
    const/4 v8, 0x1

    .line 366
    sget-boolean v6, Landroid/content/res/Resources;->sIsHwTheme:Z

    if-eqz v6, :cond_7

    if-eqz p1, :cond_7

    .line 367
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "#"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {p0, p1}, Landroid/content/res/ResourcesEx;->getResourcePackageName(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 368
    .local v5, idAndPackageName:Ljava/lang/String;
    invoke-static {v5}, Landroid/content/IconCache;->contains(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_7

    .line 381
    invoke-static {p2}, Landroid/content/IconBitmapUtils;->drawableToBitmap(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 382
    .local v0, bmp:Landroid/graphics/Bitmap;
    if-nez v0, :cond_0

    move-object v4, p2

    .line 424
    .end local v0           #bmp:Landroid/graphics/Bitmap;
    .end local v5           #idAndPackageName:Ljava/lang/String;
    .end local p2
    .local v4, dr:Landroid/graphics/drawable/Drawable;
    :goto_0
    return-object v4

    .line 385
    .end local v4           #dr:Landroid/graphics/drawable/Drawable;
    .restart local v0       #bmp:Landroid/graphics/Bitmap;
    .restart local v5       #idAndPackageName:Ljava/lang/String;
    .restart local p2
    :cond_0
    invoke-direct {p0, v0, v5}, Landroid/content/res/ResourcesEx;->addIconBackgroud(Landroid/graphics/Bitmap;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v3

    .line 386
    .local v3, bmpWithBackGround:Landroid/graphics/Bitmap;
    if-eqz v3, :cond_4

    .line 387
    const/4 v2, 0x0

    .line 388
    .local v2, bmpWithBGScaled:Landroid/graphics/Bitmap;
    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v6

    sget v7, Landroid/content/res/ResourcesEx;->sStandardBgSize:I

    if-ne v6, v7, :cond_1

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    sget v7, Landroid/content/res/ResourcesEx;->sStandardBgSize:I

    if-eq v6, v7, :cond_2

    .line 390
    :cond_1
    sget v6, Landroid/content/res/ResourcesEx;->sStandardBgSize:I

    sget v7, Landroid/content/res/ResourcesEx;->sStandardBgSize:I

    invoke-static {v3, v6, v7, v8}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 393
    :cond_2
    if-eqz v2, :cond_3

    .line 396
    new-instance p2, Landroid/graphics/drawable/BitmapDrawable;

    .end local p2
    invoke-direct {p2, p0, v2}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    .line 397
    .restart local p2
    invoke-virtual {v3}, Landroid/graphics/Bitmap;->recycle()V

    :goto_1
    move-object v4, p2

    .line 405
    .end local p2
    .restart local v4       #dr:Landroid/graphics/drawable/Drawable;
    goto :goto_0

    .line 403
    .end local v4           #dr:Landroid/graphics/drawable/Drawable;
    .restart local p2
    :cond_3
    new-instance p2, Landroid/graphics/drawable/BitmapDrawable;

    .end local p2
    invoke-direct {p2, p0, v3}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    .restart local p2
    goto :goto_1

    .line 408
    .end local v2           #bmpWithBGScaled:Landroid/graphics/Bitmap;
    :cond_4
    sget v6, Landroid/content/res/ResourcesEx;->sStandardBgSize:I

    sget v7, Landroid/content/res/ResourcesEx;->sStandardBgSize:I

    invoke-static {v0, v6, v7, v8}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 410
    .local v1, bmpScaled:Landroid/graphics/Bitmap;
    if-eq v0, v1, :cond_5

    .line 412
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 414
    :cond_5
    if-eqz v1, :cond_6

    .line 418
    new-instance p2, Landroid/graphics/drawable/BitmapDrawable;

    .end local p2
    invoke-direct {p2, p0, v1}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    .restart local p2
    :cond_6
    move-object v4, p2

    .line 420
    .end local p2
    .restart local v4       #dr:Landroid/graphics/drawable/Drawable;
    goto :goto_0

    .end local v0           #bmp:Landroid/graphics/Bitmap;
    .end local v1           #bmpScaled:Landroid/graphics/Bitmap;
    .end local v3           #bmpWithBackGround:Landroid/graphics/Bitmap;
    .end local v4           #dr:Landroid/graphics/drawable/Drawable;
    .end local v5           #idAndPackageName:Ljava/lang/String;
    .restart local p2
    :cond_7
    move-object v4, p2

    .line 424
    .end local p2
    .restart local v4       #dr:Landroid/graphics/drawable/Drawable;
    goto :goto_0
.end method

.method protected handleClearCache(I)V
    .locals 4
    .parameter "configChanges"

    .prologue
    .line 926
    const-class v3, Landroid/content/res/ResourcesEx;

    monitor-enter v3

    .line 928
    :try_start_0
    sget-object v2, Landroid/content/res/ResourcesEx;->mCacheColorInfoList:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->clear()V

    .line 929
    sget-object v2, Landroid/content/res/ResourcesEx;->mPreloadedThemeColorList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 930
    sget-object v2, Landroid/content/res/ResourcesEx;->mNonThemedPackage:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 931
    sget-object v2, Landroid/content/res/ResourcesEx;->sBgList:Ljava/util/ArrayList;

    if-eqz v2, :cond_1

    .line 932
    sget-object v2, Landroid/content/res/ResourcesEx;->sBgList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 933
    .local v1, listSize:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 934
    sget-object v2, Landroid/content/res/ResourcesEx;->sBgList:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->recycle()V

    .line 933
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 936
    :cond_0
    sget-object v2, Landroid/content/res/ResourcesEx;->sBgList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 941
    .end local v0           #i:I
    .end local v1           #listSize:I
    :cond_1
    sget-object v2, Landroid/content/res/ResourcesEx;->sBmpBorder:Landroid/graphics/Bitmap;

    if-eqz v2, :cond_2

    sget-object v2, Landroid/content/res/ResourcesEx;->sBmpBorder:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v2

    if-nez v2, :cond_2

    .line 942
    sget-object v2, Landroid/content/res/ResourcesEx;->sBmpBorder:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->recycle()V

    .line 943
    const/4 v2, 0x0

    sput-object v2, Landroid/content/res/ResourcesEx;->sBmpBorder:Landroid/graphics/Bitmap;

    .line 945
    :cond_2
    sget-object v2, Landroid/content/res/ResourcesEx;->sBmpMask:Landroid/graphics/Bitmap;

    if-eqz v2, :cond_3

    sget-object v2, Landroid/content/res/ResourcesEx;->sBmpMask:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v2

    if-nez v2, :cond_3

    .line 946
    sget-object v2, Landroid/content/res/ResourcesEx;->sBmpMask:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->recycle()V

    .line 947
    const/4 v2, 0x0

    sput-object v2, Landroid/content/res/ResourcesEx;->sBmpMask:Landroid/graphics/Bitmap;

    .line 949
    sget-object v2, Landroid/content/res/ResourcesEx$MaskRange;->UNDEFINED:Landroid/content/res/ResourcesEx$MaskRange;

    sput-object v2, Landroid/content/res/ResourcesEx;->sMaskRange:Landroid/content/res/ResourcesEx$MaskRange;

    .line 950
    const/4 v2, -0x1

    sput v2, Landroid/content/res/ResourcesEx;->sMaskSizeWithoutEdge:I

    .line 953
    :cond_3
    sget-object v2, Landroid/content/res/ResourcesEx;->sBmpSysAppDefault:Landroid/graphics/Bitmap;

    if-eqz v2, :cond_4

    sget-object v2, Landroid/content/res/ResourcesEx;->sBmpSysAppDefault:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v2

    if-nez v2, :cond_4

    .line 954
    sget-object v2, Landroid/content/res/ResourcesEx;->sBmpSysAppDefault:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->recycle()V

    .line 955
    const/4 v2, 0x0

    sput-object v2, Landroid/content/res/ResourcesEx;->sBmpSysAppDefault:Landroid/graphics/Bitmap;

    .line 957
    :cond_4
    invoke-static {}, Landroid/content/res/ZipFileCache;->clear()V

    .line 958
    invoke-static {}, Landroid/content/res/ResourcesEx;->initStatics()V

    .line 959
    iget-object v2, p0, Landroid/content/res/ResourcesEx;->mDrawableCacheEx:Landroid/util/LongSparseArray;

    if-eqz v2, :cond_5

    .line 960
    iget-object v2, p0, Landroid/content/res/ResourcesEx;->mDrawableCacheEx:Landroid/util/LongSparseArray;

    invoke-virtual {p0, v2, p1}, Landroid/content/res/ResourcesEx;->clearDrawableCache(Landroid/util/LongSparseArray;I)V

    .line 962
    :cond_5
    monitor-exit v3

    .line 965
    return-void

    .line 962
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
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
    .line 648
    const/4 v0, 0x0

    .line 649
    .local v0, colorVaue:I
    const/4 v2, 0x0

    iput-boolean v2, p0, Landroid/content/res/ResourcesEx;->isThemeColor:Z

    .line 650
    const/4 v1, 0x0

    .line 651
    .local v1, csl:Landroid/content/res/ColorStateList;
    sget-boolean v2, Landroid/content/res/Resources;->sIsHwTheme:Z

    if-eqz v2, :cond_0

    if-eqz p2, :cond_0

    .line 652
    invoke-virtual {p0, p1, p2}, Landroid/content/res/ResourcesEx;->getThemeColor(Landroid/util/TypedValue;I)I

    move-result v0

    .line 653
    invoke-static {v0}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v1

    .line 655
    :cond_0
    iget-boolean v2, p0, Landroid/content/res/ResourcesEx;->isThemeColor:Z

    if-nez v2, :cond_1

    .line 656
    invoke-super {p0, p1, p2}, Landroid/content/res/Resources;->loadColorStateList(Landroid/util/TypedValue;I)Landroid/content/res/ColorStateList;

    move-result-object v1

    .line 658
    :cond_1
    return-object v1
.end method

.method loadDrawable(Landroid/util/TypedValue;I)Landroid/graphics/drawable/Drawable;
    .locals 11
    .parameter "value"
    .parameter "id"

    .prologue
    .line 520
    iget v7, p1, Landroid/util/TypedValue;->assetCookie:I

    int-to-long v7, v7

    const/16 v9, 0x20

    shl-long/2addr v7, v9

    iget v9, p1, Landroid/util/TypedValue;->data:I

    int-to-long v9, v9

    or-long v5, v7, v9

    .line 521
    .local v5, key:J
    const/4 v0, 0x0

    .line 522
    .local v0, colorVaue:I
    const/4 v7, 0x0

    iput-boolean v7, p0, Landroid/content/res/ResourcesEx;->isThemeColor:Z

    .line 523
    const/4 v1, 0x0

    .line 524
    .local v1, dr:Landroid/graphics/drawable/Drawable;
    iget v7, p1, Landroid/util/TypedValue;->type:I

    const/16 v8, 0x1c

    if-lt v7, v8, :cond_1

    iget v7, p1, Landroid/util/TypedValue;->type:I

    const/16 v8, 0x1f

    if-gt v7, v8, :cond_1

    .line 526
    if-eqz p2, :cond_0

    sget-boolean v7, Landroid/content/res/Resources;->sIsHwTheme:Z

    if-eqz v7, :cond_0

    .line 527
    invoke-virtual {p0, p1, p2}, Landroid/content/res/ResourcesEx;->getThemeColor(Landroid/util/TypedValue;I)I

    move-result v0

    .line 528
    new-instance v1, Landroid/graphics/drawable/ColorDrawable;

    .end local v1           #dr:Landroid/graphics/drawable/Drawable;
    invoke-direct {v1, v0}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    .line 529
    .restart local v1       #dr:Landroid/graphics/drawable/Drawable;
    if-nez v1, :cond_2

    .line 530
    invoke-super {p0, p1, p2}, Landroid/content/res/Resources;->loadDrawable(Landroid/util/TypedValue;I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 535
    :cond_0
    iget-boolean v7, p0, Landroid/content/res/ResourcesEx;->isThemeColor:Z

    if-nez v7, :cond_1

    .line 536
    invoke-super {p0, p1, p2}, Landroid/content/res/Resources;->loadDrawable(Landroid/util/TypedValue;I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 539
    :cond_1
    iget-object v7, p0, Landroid/content/res/ResourcesEx;->mDrawableCacheEx:Landroid/util/LongSparseArray;

    invoke-virtual {p0, v7, v5, v6}, Landroid/content/res/ResourcesEx;->getCachedDrawable(Landroid/util/LongSparseArray;J)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 540
    if-eqz v1, :cond_3

    move-object v2, v1

    .line 590
    :goto_0
    return-object v2

    :cond_2
    move-object v2, v1

    .line 532
    goto :goto_0

    .line 545
    :cond_3
    if-eqz p2, :cond_8

    sget-boolean v7, Landroid/content/res/Resources;->sIsHwTheme:Z

    if-eqz v7, :cond_8

    .line 546
    invoke-virtual {p0, p2}, Landroid/content/res/ResourcesEx;->getResourceEntryName(I)Ljava/lang/String;

    move-result-object v3

    .line 547
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

    .line 552
    .local v4, idAndPackageName:Ljava/lang/String;
    invoke-direct {p0, v3}, Landroid/content/res/ResourcesEx;->checkSpecialIcons(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 553
    if-eqz v1, :cond_4

    .line 554
    iget-object v7, p0, Landroid/content/res/ResourcesEx;->mDrawableCacheEx:Landroid/util/LongSparseArray;

    new-instance v8, Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v7, v5, v6, v8}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    move-object v2, v1

    .line 555
    goto :goto_0

    .line 558
    :cond_4
    invoke-static {v4}, Landroid/content/IconCache;->contains(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_6

    .line 562
    invoke-virtual {p0, p2}, Landroid/content/res/ResourcesEx;->getThemeIcon(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 563
    .local v2, drIcon:Landroid/graphics/drawable/Drawable;
    if-eqz v2, :cond_5

    .line 564
    iget-object v7, p0, Landroid/content/res/ResourcesEx;->mDrawableCacheEx:Landroid/util/LongSparseArray;

    new-instance v8, Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v7, v5, v6, v8}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    goto :goto_0

    .line 569
    :cond_5
    invoke-super {p0, p1, p2}, Landroid/content/res/Resources;->loadDrawable(Landroid/util/TypedValue;I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .end local v2           #drIcon:Landroid/graphics/drawable/Drawable;
    .end local v3           #entryName:Ljava/lang/String;
    .end local v4           #idAndPackageName:Ljava/lang/String;
    :goto_1
    move-object v2, v1

    .line 590
    goto :goto_0

    .line 576
    .restart local v3       #entryName:Ljava/lang/String;
    .restart local v4       #idAndPackageName:Ljava/lang/String;
    :cond_6
    invoke-virtual {p0, p1, p2}, Landroid/content/res/ResourcesEx;->getThemeDrawable(Landroid/util/TypedValue;I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 577
    if-eqz v1, :cond_7

    .line 578
    iget-object v7, p0, Landroid/content/res/ResourcesEx;->mDrawableCacheEx:Landroid/util/LongSparseArray;

    new-instance v8, Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v7, v5, v6, v8}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    move-object v2, v1

    .line 579
    goto :goto_0

    .line 581
    :cond_7
    invoke-super {p0, p1, p2}, Landroid/content/res/Resources;->loadDrawable(Landroid/util/TypedValue;I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    goto :goto_1

    .line 588
    .end local v3           #entryName:Ljava/lang/String;
    .end local v4           #idAndPackageName:Ljava/lang/String;
    :cond_8
    invoke-super {p0, p1, p2}, Landroid/content/res/Resources;->loadDrawable(Landroid/util/TypedValue;I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    goto :goto_1
.end method
