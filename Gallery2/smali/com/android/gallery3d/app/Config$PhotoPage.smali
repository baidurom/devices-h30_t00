.class public Lcom/android/gallery3d/app/Config$PhotoPage;
.super Ljava/lang/Object;
.source "Config.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/gallery3d/app/Config;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PhotoPage"
.end annotation


# static fields
.field private static sInstance:Lcom/android/gallery3d/app/Config$PhotoPage;


# instance fields
.field public final mavSeekBarWidthInLandscape:I

.field public final mavSeekBarWidthInPortrait:I


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 3
    .parameter "context"

    .prologue
    .line 189
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 190
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 191
    .local v0, r:Landroid/content/res/Resources;
    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->orientation:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 192
    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    div-int/lit8 v1, v1, 0x2

    iput v1, p0, Lcom/android/gallery3d/app/Config$PhotoPage;->mavSeekBarWidthInPortrait:I

    .line 193
    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    div-int/lit8 v1, v1, 0x3

    iput v1, p0, Lcom/android/gallery3d/app/Config$PhotoPage;->mavSeekBarWidthInLandscape:I

    .line 198
    :goto_0
    return-void

    .line 195
    :cond_0
    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    div-int/lit8 v1, v1, 0x3

    iput v1, p0, Lcom/android/gallery3d/app/Config$PhotoPage;->mavSeekBarWidthInLandscape:I

    .line 196
    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    div-int/lit8 v1, v1, 0x2

    iput v1, p0, Lcom/android/gallery3d/app/Config$PhotoPage;->mavSeekBarWidthInPortrait:I

    goto :goto_0
.end method

.method public static declared-synchronized get(Landroid/content/Context;)Lcom/android/gallery3d/app/Config$PhotoPage;
    .locals 2
    .parameter "context"

    .prologue
    .line 183
    const-class v1, Lcom/android/gallery3d/app/Config$PhotoPage;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/android/gallery3d/app/Config$PhotoPage;->sInstance:Lcom/android/gallery3d/app/Config$PhotoPage;

    if-nez v0, :cond_0

    .line 184
    new-instance v0, Lcom/android/gallery3d/app/Config$PhotoPage;

    invoke-direct {v0, p0}, Lcom/android/gallery3d/app/Config$PhotoPage;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/android/gallery3d/app/Config$PhotoPage;->sInstance:Lcom/android/gallery3d/app/Config$PhotoPage;

    .line 186
    :cond_0
    sget-object v0, Lcom/android/gallery3d/app/Config$PhotoPage;->sInstance:Lcom/android/gallery3d/app/Config$PhotoPage;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 183
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method
