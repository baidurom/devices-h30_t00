.class public Lcom/android/gallery3d/app/Config$AlbumSetPage;
.super Ljava/lang/Object;
.source "Config.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/gallery3d/app/Config;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AlbumSetPage"
.end annotation


# static fields
.field private static sInstance:Lcom/android/gallery3d/app/Config$AlbumSetPage;


# instance fields
.field public labelSpec:Lcom/android/gallery3d/ui/AlbumSetSlotRenderer$LabelSpec;

.field public paddingBottom:I

.field public paddingTop:I

.field public placeholderColor:I

.field public selectAllHeight:I

.field public selectAllTopMargin:I

.field public slotViewSpec:Lcom/android/gallery3d/ui/SlotView$Spec;

.field public statusBarHeight:I

.field public tabsbarHeight:I

.field public toolbarHeightLand:I

.field public toolbarHeightPort:I


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 5
    .parameter "context"

    .prologue
    .line 56
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 57
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 59
    .local v0, r:Landroid/content/res/Resources;
    const v2, 0x7f0a0020

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    iput v2, p0, Lcom/android/gallery3d/app/Config$AlbumSetPage;->placeholderColor:I

    .line 61
    const v2, 0x7f0b008c

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, p0, Lcom/android/gallery3d/app/Config$AlbumSetPage;->paddingTop:I

    .line 62
    const v2, 0x7f0b008d

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, p0, Lcom/android/gallery3d/app/Config$AlbumSetPage;->paddingBottom:I

    .line 64
    new-instance v2, Lcom/android/gallery3d/ui/AlbumSetSlotRenderer$LabelSpec;

    invoke-direct {v2}, Lcom/android/gallery3d/ui/AlbumSetSlotRenderer$LabelSpec;-><init>()V

    iput-object v2, p0, Lcom/android/gallery3d/app/Config$AlbumSetPage;->labelSpec:Lcom/android/gallery3d/ui/AlbumSetSlotRenderer$LabelSpec;

    .line 65
    iget-object v2, p0, Lcom/android/gallery3d/app/Config$AlbumSetPage;->labelSpec:Lcom/android/gallery3d/ui/AlbumSetSlotRenderer$LabelSpec;

    const v3, 0x7f0b0093

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    iput v3, v2, Lcom/android/gallery3d/ui/AlbumSetSlotRenderer$LabelSpec;->labelBackgroundHeight:I

    .line 67
    iget-object v2, p0, Lcom/android/gallery3d/app/Config$AlbumSetPage;->labelSpec:Lcom/android/gallery3d/ui/AlbumSetSlotRenderer$LabelSpec;

    const v3, 0x7f0b0094

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    iput v3, v2, Lcom/android/gallery3d/ui/AlbumSetSlotRenderer$LabelSpec;->fontSize:I

    .line 69
    iget-object v2, p0, Lcom/android/gallery3d/app/Config$AlbumSetPage;->labelSpec:Lcom/android/gallery3d/ui/AlbumSetSlotRenderer$LabelSpec;

    const v3, 0x7f0b0095

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    iput v3, v2, Lcom/android/gallery3d/ui/AlbumSetSlotRenderer$LabelSpec;->leftMargin:I

    .line 71
    iget-object v2, p0, Lcom/android/gallery3d/app/Config$AlbumSetPage;->labelSpec:Lcom/android/gallery3d/ui/AlbumSetSlotRenderer$LabelSpec;

    const v3, 0x7f0b0096

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    iput v3, v2, Lcom/android/gallery3d/ui/AlbumSetSlotRenderer$LabelSpec;->maxCountSize:I

    .line 73
    iget-object v2, p0, Lcom/android/gallery3d/app/Config$AlbumSetPage;->labelSpec:Lcom/android/gallery3d/ui/AlbumSetSlotRenderer$LabelSpec;

    const v3, 0x7f0b0097

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    iput v3, v2, Lcom/android/gallery3d/ui/AlbumSetSlotRenderer$LabelSpec;->textOffset:I

    .line 75
    iget-object v2, p0, Lcom/android/gallery3d/app/Config$AlbumSetPage;->labelSpec:Lcom/android/gallery3d/ui/AlbumSetSlotRenderer$LabelSpec;

    const v3, 0x7f0a0021

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    iput v3, v2, Lcom/android/gallery3d/ui/AlbumSetSlotRenderer$LabelSpec;->backgroundColor:I

    .line 77
    iget-object v2, p0, Lcom/android/gallery3d/app/Config$AlbumSetPage;->labelSpec:Lcom/android/gallery3d/ui/AlbumSetSlotRenderer$LabelSpec;

    const v3, 0x7f0a0022

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    iput v3, v2, Lcom/android/gallery3d/ui/AlbumSetSlotRenderer$LabelSpec;->titleColor:I

    .line 78
    iget-object v2, p0, Lcom/android/gallery3d/app/Config$AlbumSetPage;->labelSpec:Lcom/android/gallery3d/ui/AlbumSetSlotRenderer$LabelSpec;

    const v3, 0x7f0a0024

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    iput v3, v2, Lcom/android/gallery3d/ui/AlbumSetSlotRenderer$LabelSpec;->selectTitleColor:I

    .line 80
    new-instance v1, Lcom/android/gallery3d/ui/ResourceTexture;

    const v2, 0x7f020014

    invoke-direct {v1, p1, v2}, Lcom/android/gallery3d/ui/ResourceTexture;-><init>(Landroid/content/Context;I)V

    .line 81
    .local v1, slotPic:Lcom/android/gallery3d/ui/ResourceTexture;
    new-instance v2, Lcom/android/gallery3d/ui/SlotView$Spec;

    invoke-direct {v2}, Lcom/android/gallery3d/ui/SlotView$Spec;-><init>()V

    iput-object v2, p0, Lcom/android/gallery3d/app/Config$AlbumSetPage;->slotViewSpec:Lcom/android/gallery3d/ui/SlotView$Spec;

    .line 82
    iget-object v2, p0, Lcom/android/gallery3d/app/Config$AlbumSetPage;->slotViewSpec:Lcom/android/gallery3d/ui/SlotView$Spec;

    invoke-virtual {v1}, Lcom/android/gallery3d/ui/ResourceTexture;->getWidth()I

    move-result v3

    iput v3, v2, Lcom/android/gallery3d/ui/SlotView$Spec;->slotWidth:I

    .line 83
    iget-object v2, p0, Lcom/android/gallery3d/app/Config$AlbumSetPage;->slotViewSpec:Lcom/android/gallery3d/ui/SlotView$Spec;

    invoke-virtual {v1}, Lcom/android/gallery3d/ui/ResourceTexture;->getHeight()I

    move-result v3

    iget-object v4, p0, Lcom/android/gallery3d/app/Config$AlbumSetPage;->labelSpec:Lcom/android/gallery3d/ui/AlbumSetSlotRenderer$LabelSpec;

    iget v4, v4, Lcom/android/gallery3d/ui/AlbumSetSlotRenderer$LabelSpec;->labelBackgroundHeight:I

    add-int/2addr v3, v4

    iput v3, v2, Lcom/android/gallery3d/ui/SlotView$Spec;->slotHeight:I

    .line 84
    iget-object v2, p0, Lcom/android/gallery3d/app/Config$AlbumSetPage;->slotViewSpec:Lcom/android/gallery3d/ui/SlotView$Spec;

    const v3, 0x7f0b0090

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    iput v3, v2, Lcom/android/gallery3d/ui/SlotView$Spec;->slotHeightGap:I

    .line 87
    iget-object v2, p0, Lcom/android/gallery3d/app/Config$AlbumSetPage;->labelSpec:Lcom/android/gallery3d/ui/AlbumSetSlotRenderer$LabelSpec;

    invoke-virtual {v1}, Lcom/android/gallery3d/ui/ResourceTexture;->getWidth()I

    move-result v3

    iput v3, v2, Lcom/android/gallery3d/ui/AlbumSetSlotRenderer$LabelSpec;->labelWidth:I

    .line 89
    const v2, 0x7f0b00b3

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, p0, Lcom/android/gallery3d/app/Config$AlbumSetPage;->toolbarHeightPort:I

    .line 90
    const v2, 0x7f0b00b4

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, p0, Lcom/android/gallery3d/app/Config$AlbumSetPage;->toolbarHeightLand:I

    .line 92
    const v2, 0x7f0b00ac

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, p0, Lcom/android/gallery3d/app/Config$AlbumSetPage;->selectAllHeight:I

    .line 93
    const v2, 0x7f0b00b2

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, p0, Lcom/android/gallery3d/app/Config$AlbumSetPage;->selectAllTopMargin:I

    .line 95
    const v2, 0x7f0b00bc

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, p0, Lcom/android/gallery3d/app/Config$AlbumSetPage;->tabsbarHeight:I

    .line 97
    const v2, 0x7f0b00b8

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, p0, Lcom/android/gallery3d/app/Config$AlbumSetPage;->statusBarHeight:I

    .line 98
    return-void
.end method

.method synthetic constructor <init>(Landroid/content/Context;Lcom/android/gallery3d/app/Config$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 32
    invoke-direct {p0, p1}, Lcom/android/gallery3d/app/Config$AlbumSetPage;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public static declared-synchronized get(Landroid/content/Context;)Lcom/android/gallery3d/app/Config$AlbumSetPage;
    .locals 2
    .parameter "context"

    .prologue
    .line 50
    const-class v1, Lcom/android/gallery3d/app/Config$AlbumSetPage;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/android/gallery3d/app/Config$AlbumSetPage;->sInstance:Lcom/android/gallery3d/app/Config$AlbumSetPage;

    if-nez v0, :cond_0

    .line 51
    new-instance v0, Lcom/android/gallery3d/app/Config$AlbumSetPage;

    invoke-direct {v0, p0}, Lcom/android/gallery3d/app/Config$AlbumSetPage;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/android/gallery3d/app/Config$AlbumSetPage;->sInstance:Lcom/android/gallery3d/app/Config$AlbumSetPage;

    .line 53
    :cond_0
    sget-object v0, Lcom/android/gallery3d/app/Config$AlbumSetPage;->sInstance:Lcom/android/gallery3d/app/Config$AlbumSetPage;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 50
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method
