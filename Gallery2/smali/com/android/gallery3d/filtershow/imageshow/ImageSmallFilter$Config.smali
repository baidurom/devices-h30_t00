.class public Lcom/android/gallery3d/filtershow/imageshow/ImageSmallFilter$Config;
.super Ljava/lang/Object;
.source "ImageSmallFilter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/gallery3d/filtershow/imageshow/ImageSmallFilter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Config"
.end annotation


# static fields
.field private static sInstance:Lcom/android/gallery3d/filtershow/imageshow/ImageSmallFilter$Config;


# instance fields
.field public paddingSelected:I


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    .line 54
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 55
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 56
    .local v0, r:Landroid/content/res/Resources;
    const v1, 0x7f0b009c

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageSmallFilter$Config;->paddingSelected:I

    .line 57
    return-void
.end method

.method public static declared-synchronized get(Landroid/content/Context;)Lcom/android/gallery3d/filtershow/imageshow/ImageSmallFilter$Config;
    .locals 2
    .parameter "context"

    .prologue
    .line 49
    const-class v1, Lcom/android/gallery3d/filtershow/imageshow/ImageSmallFilter$Config;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/android/gallery3d/filtershow/imageshow/ImageSmallFilter$Config;->sInstance:Lcom/android/gallery3d/filtershow/imageshow/ImageSmallFilter$Config;

    if-nez v0, :cond_0

    .line 50
    new-instance v0, Lcom/android/gallery3d/filtershow/imageshow/ImageSmallFilter$Config;

    invoke-direct {v0, p0}, Lcom/android/gallery3d/filtershow/imageshow/ImageSmallFilter$Config;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/android/gallery3d/filtershow/imageshow/ImageSmallFilter$Config;->sInstance:Lcom/android/gallery3d/filtershow/imageshow/ImageSmallFilter$Config;

    .line 52
    :cond_0
    sget-object v0, Lcom/android/gallery3d/filtershow/imageshow/ImageSmallFilter$Config;->sInstance:Lcom/android/gallery3d/filtershow/imageshow/ImageSmallFilter$Config;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 49
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method
