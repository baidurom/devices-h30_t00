.class public Lcom/android/gallery3d/app/Config$AlbumPage;
.super Ljava/lang/Object;
.source "Config.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/gallery3d/app/Config;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AlbumPage"
.end annotation


# static fields
.field private static sInstance:Lcom/android/gallery3d/app/Config$AlbumPage;


# instance fields
.field public placeholderColor:I

.field public selectAllHeight:I

.field public selectAllTopMargin:I

.field public slotViewSpec:Lcom/android/gallery3d/ui/SlotView$Spec;

.field public statusBarHeight:I

.field public toolbarHeightLand:I

.field public toolbarHeightPort:I


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 3
    .parameter "context"

    .prologue
    .line 136
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 137
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 139
    .local v0, r:Landroid/content/res/Resources;
    const v1, 0x7f0a0026

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    iput v1, p0, Lcom/android/gallery3d/app/Config$AlbumPage;->placeholderColor:I

    .line 141
    new-instance v1, Lcom/android/gallery3d/ui/SlotView$Spec;

    invoke-direct {v1}, Lcom/android/gallery3d/ui/SlotView$Spec;-><init>()V

    iput-object v1, p0, Lcom/android/gallery3d/app/Config$AlbumPage;->slotViewSpec:Lcom/android/gallery3d/ui/SlotView$Spec;

    .line 142
    iget-object v1, p0, Lcom/android/gallery3d/app/Config$AlbumPage;->slotViewSpec:Lcom/android/gallery3d/ui/SlotView$Spec;

    const v2, 0x7f0b0091

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, v1, Lcom/android/gallery3d/ui/SlotView$Spec;->slotWidth:I

    .line 143
    iget-object v1, p0, Lcom/android/gallery3d/app/Config$AlbumPage;->slotViewSpec:Lcom/android/gallery3d/ui/SlotView$Spec;

    const v2, 0x7f0b0092

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, v1, Lcom/android/gallery3d/ui/SlotView$Spec;->slotHeight:I

    .line 144
    iget-object v1, p0, Lcom/android/gallery3d/app/Config$AlbumPage;->slotViewSpec:Lcom/android/gallery3d/ui/SlotView$Spec;

    const/4 v2, 0x1

    iput-boolean v2, v1, Lcom/android/gallery3d/ui/SlotView$Spec;->isOneGapLength:Z

    .line 146
    const v1, 0x7f0b00b3

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/android/gallery3d/app/Config$AlbumPage;->toolbarHeightPort:I

    .line 147
    const v1, 0x7f0b00b4

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/android/gallery3d/app/Config$AlbumPage;->toolbarHeightLand:I

    .line 148
    const v1, 0x7f0b00b8

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/android/gallery3d/app/Config$AlbumPage;->statusBarHeight:I

    .line 150
    const v1, 0x7f0b00ac

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/android/gallery3d/app/Config$AlbumPage;->selectAllHeight:I

    .line 151
    const v1, 0x7f0b00b2

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/android/gallery3d/app/Config$AlbumPage;->selectAllTopMargin:I

    .line 152
    return-void
.end method

.method public static declared-synchronized get(Landroid/content/Context;)Lcom/android/gallery3d/app/Config$AlbumPage;
    .locals 2
    .parameter "context"

    .prologue
    .line 130
    const-class v1, Lcom/android/gallery3d/app/Config$AlbumPage;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/android/gallery3d/app/Config$AlbumPage;->sInstance:Lcom/android/gallery3d/app/Config$AlbumPage;

    if-nez v0, :cond_0

    .line 131
    new-instance v0, Lcom/android/gallery3d/app/Config$AlbumPage;

    invoke-direct {v0, p0}, Lcom/android/gallery3d/app/Config$AlbumPage;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/android/gallery3d/app/Config$AlbumPage;->sInstance:Lcom/android/gallery3d/app/Config$AlbumPage;

    .line 133
    :cond_0
    sget-object v0, Lcom/android/gallery3d/app/Config$AlbumPage;->sInstance:Lcom/android/gallery3d/app/Config$AlbumPage;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 130
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method
