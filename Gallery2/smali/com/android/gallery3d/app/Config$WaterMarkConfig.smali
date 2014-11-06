.class public Lcom/android/gallery3d/app/Config$WaterMarkConfig;
.super Ljava/lang/Object;
.source "Config.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/gallery3d/app/Config;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "WaterMarkConfig"
.end annotation


# static fields
.field private static sInstance:Lcom/android/gallery3d/app/Config$WaterMarkConfig;


# instance fields
.field public final XAxisEdgePadding:I

.field public final YAxisEdgePadding:I

.field public final lineSpacing:I

.field public final textColor:I

.field public final textShadowColor:I

.field public final textSize:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    .line 219
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 220
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 222
    .local v0, r:Landroid/content/res/Resources;
    const v1, 0x7f0b00ee

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/android/gallery3d/app/Config$WaterMarkConfig;->textSize:I

    .line 223
    const v1, 0x7f0a0040

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    iput v1, p0, Lcom/android/gallery3d/app/Config$WaterMarkConfig;->textColor:I

    .line 224
    const v1, 0x7f0a0041

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    iput v1, p0, Lcom/android/gallery3d/app/Config$WaterMarkConfig;->textShadowColor:I

    .line 226
    const v1, 0x7f0b00ef

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/android/gallery3d/app/Config$WaterMarkConfig;->lineSpacing:I

    .line 227
    const v1, 0x7f0b00f0

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/android/gallery3d/app/Config$WaterMarkConfig;->XAxisEdgePadding:I

    .line 228
    const v1, 0x7f0b00f1

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/android/gallery3d/app/Config$WaterMarkConfig;->YAxisEdgePadding:I

    .line 229
    return-void
.end method

.method public static declared-synchronized get(Landroid/content/Context;)Lcom/android/gallery3d/app/Config$WaterMarkConfig;
    .locals 2
    .parameter "context"

    .prologue
    .line 213
    const-class v1, Lcom/android/gallery3d/app/Config$WaterMarkConfig;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/android/gallery3d/app/Config$WaterMarkConfig;->sInstance:Lcom/android/gallery3d/app/Config$WaterMarkConfig;

    if-nez v0, :cond_0

    .line 214
    new-instance v0, Lcom/android/gallery3d/app/Config$WaterMarkConfig;

    invoke-direct {v0, p0}, Lcom/android/gallery3d/app/Config$WaterMarkConfig;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/android/gallery3d/app/Config$WaterMarkConfig;->sInstance:Lcom/android/gallery3d/app/Config$WaterMarkConfig;

    .line 216
    :cond_0
    sget-object v0, Lcom/android/gallery3d/app/Config$WaterMarkConfig;->sInstance:Lcom/android/gallery3d/app/Config$WaterMarkConfig;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 213
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method
