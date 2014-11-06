.class Lcom/android/gallery3d/app/AlbumSetPage$MyDetailsSource;
.super Ljava/lang/Object;
.source "AlbumSetPage.java"

# interfaces
.implements Lcom/android/gallery3d/ui/DetailsHelper$DetailsSource;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/gallery3d/app/AlbumSetPage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MyDetailsSource"
.end annotation


# instance fields
.field private mIndex:I

.field final synthetic this$0:Lcom/android/gallery3d/app/AlbumSetPage;


# direct methods
.method private constructor <init>(Lcom/android/gallery3d/app/AlbumSetPage;)V
    .locals 0
    .parameter

    .prologue
    .line 1474
    iput-object p1, p0, Lcom/android/gallery3d/app/AlbumSetPage$MyDetailsSource;->this$0:Lcom/android/gallery3d/app/AlbumSetPage;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/gallery3d/app/AlbumSetPage;Lcom/android/gallery3d/app/AlbumSetPage$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1474
    invoke-direct {p0, p1}, Lcom/android/gallery3d/app/AlbumSetPage$MyDetailsSource;-><init>(Lcom/android/gallery3d/app/AlbumSetPage;)V

    return-void
.end method


# virtual methods
.method public getDetails()Lcom/android/gallery3d/data/MediaDetails;
    .locals 3

    .prologue
    .line 1496
    iget-object v1, p0, Lcom/android/gallery3d/app/AlbumSetPage$MyDetailsSource;->this$0:Lcom/android/gallery3d/app/AlbumSetPage;

    #getter for: Lcom/android/gallery3d/app/AlbumSetPage;->mAlbumSetDataAdapter:Lcom/android/gallery3d/app/AlbumSetDataLoader;
    invoke-static {v1}, Lcom/android/gallery3d/app/AlbumSetPage;->access$3100(Lcom/android/gallery3d/app/AlbumSetPage;)Lcom/android/gallery3d/app/AlbumSetDataLoader;

    move-result-object v1

    iget v2, p0, Lcom/android/gallery3d/app/AlbumSetPage$MyDetailsSource;->mIndex:I

    invoke-virtual {v1, v2}, Lcom/android/gallery3d/app/AlbumSetDataLoader;->getMediaSet(I)Lcom/android/gallery3d/data/MediaSet;

    move-result-object v0

    .line 1497
    .local v0, item:Lcom/android/gallery3d/data/MediaObject;
    if-eqz v0, :cond_0

    .line 1498
    iget-object v1, p0, Lcom/android/gallery3d/app/AlbumSetPage$MyDetailsSource;->this$0:Lcom/android/gallery3d/app/AlbumSetPage;

    #getter for: Lcom/android/gallery3d/app/AlbumSetPage;->mAlbumSetView:Lcom/android/gallery3d/ui/AlbumSetSlotRenderer;
    invoke-static {v1}, Lcom/android/gallery3d/app/AlbumSetPage;->access$1300(Lcom/android/gallery3d/app/AlbumSetPage;)Lcom/android/gallery3d/ui/AlbumSetSlotRenderer;

    move-result-object v1

    invoke-virtual {v0}, Lcom/android/gallery3d/data/MediaSet;->getPath()Lcom/android/gallery3d/data/Path;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/gallery3d/ui/AlbumSetSlotRenderer;->setHighlightItemPath(Lcom/android/gallery3d/data/Path;)V

    .line 1499
    invoke-virtual {v0}, Lcom/android/gallery3d/data/MediaSet;->getDetails()Lcom/android/gallery3d/data/MediaDetails;

    move-result-object v1

    .line 1501
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public setIndex()I
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1484
    iget-object v2, p0, Lcom/android/gallery3d/app/AlbumSetPage$MyDetailsSource;->this$0:Lcom/android/gallery3d/app/AlbumSetPage;

    iget-object v2, v2, Lcom/android/gallery3d/app/AlbumSetPage;->mSelectionManager:Lcom/android/gallery3d/ui/SelectionManager;

    invoke-virtual {v2, v3}, Lcom/android/gallery3d/ui/SelectionManager;->getSelected(Z)Ljava/util/ArrayList;

    move-result-object v1

    .line 1485
    .local v1, selectedList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/gallery3d/data/Path;>;"
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-nez v2, :cond_0

    .line 1486
    iget-object v2, p0, Lcom/android/gallery3d/app/AlbumSetPage$MyDetailsSource;->this$0:Lcom/android/gallery3d/app/AlbumSetPage;

    #getter for: Lcom/android/gallery3d/app/AlbumSetPage;->mLongTapSlotIndex:I
    invoke-static {v2}, Lcom/android/gallery3d/app/AlbumSetPage;->access$4800(Lcom/android/gallery3d/app/AlbumSetPage;)I

    move-result v2

    iput v2, p0, Lcom/android/gallery3d/app/AlbumSetPage$MyDetailsSource;->mIndex:I

    .line 1491
    :goto_0
    iget v2, p0, Lcom/android/gallery3d/app/AlbumSetPage$MyDetailsSource;->mIndex:I

    return v2

    .line 1488
    :cond_0
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/gallery3d/data/Path;

    .line 1489
    .local v0, id:Lcom/android/gallery3d/data/Path;
    iget-object v2, p0, Lcom/android/gallery3d/app/AlbumSetPage$MyDetailsSource;->this$0:Lcom/android/gallery3d/app/AlbumSetPage;

    #getter for: Lcom/android/gallery3d/app/AlbumSetPage;->mAlbumSetDataAdapter:Lcom/android/gallery3d/app/AlbumSetDataLoader;
    invoke-static {v2}, Lcom/android/gallery3d/app/AlbumSetPage;->access$3100(Lcom/android/gallery3d/app/AlbumSetPage;)Lcom/android/gallery3d/app/AlbumSetDataLoader;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/android/gallery3d/app/AlbumSetDataLoader;->findSet(Lcom/android/gallery3d/data/Path;)I

    move-result v2

    iput v2, p0, Lcom/android/gallery3d/app/AlbumSetPage$MyDetailsSource;->mIndex:I

    goto :goto_0
.end method

.method public size()I
    .locals 1

    .prologue
    .line 1479
    iget-object v0, p0, Lcom/android/gallery3d/app/AlbumSetPage$MyDetailsSource;->this$0:Lcom/android/gallery3d/app/AlbumSetPage;

    #getter for: Lcom/android/gallery3d/app/AlbumSetPage;->mAlbumSetDataAdapter:Lcom/android/gallery3d/app/AlbumSetDataLoader;
    invoke-static {v0}, Lcom/android/gallery3d/app/AlbumSetPage;->access$3100(Lcom/android/gallery3d/app/AlbumSetPage;)Lcom/android/gallery3d/app/AlbumSetDataLoader;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/gallery3d/app/AlbumSetDataLoader;->size()I

    move-result v0

    return v0
.end method
