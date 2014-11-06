.class Lcom/android/gallery3d/app/AlbumPage$MyDetailsSource;
.super Ljava/lang/Object;
.source "AlbumPage.java"

# interfaces
.implements Lcom/android/gallery3d/ui/DetailsHelper$DetailsSource;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/gallery3d/app/AlbumPage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MyDetailsSource"
.end annotation


# instance fields
.field private mIndex:I

.field final synthetic this$0:Lcom/android/gallery3d/app/AlbumPage;


# direct methods
.method private constructor <init>(Lcom/android/gallery3d/app/AlbumPage;)V
    .locals 0
    .parameter

    .prologue
    .line 1303
    iput-object p1, p0, Lcom/android/gallery3d/app/AlbumPage$MyDetailsSource;->this$0:Lcom/android/gallery3d/app/AlbumPage;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/gallery3d/app/AlbumPage;Lcom/android/gallery3d/app/AlbumPage$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1303
    invoke-direct {p0, p1}, Lcom/android/gallery3d/app/AlbumPage$MyDetailsSource;-><init>(Lcom/android/gallery3d/app/AlbumPage;)V

    return-void
.end method


# virtual methods
.method public getDetails()Lcom/android/gallery3d/data/MediaDetails;
    .locals 3

    .prologue
    .line 1326
    iget-object v1, p0, Lcom/android/gallery3d/app/AlbumPage$MyDetailsSource;->this$0:Lcom/android/gallery3d/app/AlbumPage;

    #getter for: Lcom/android/gallery3d/app/AlbumPage;->mAlbumDataAdapter:Lcom/android/gallery3d/app/AlbumDataLoader;
    invoke-static {v1}, Lcom/android/gallery3d/app/AlbumPage;->access$100(Lcom/android/gallery3d/app/AlbumPage;)Lcom/android/gallery3d/app/AlbumDataLoader;

    move-result-object v1

    iget v2, p0, Lcom/android/gallery3d/app/AlbumPage$MyDetailsSource;->mIndex:I

    invoke-virtual {v1, v2}, Lcom/android/gallery3d/app/AlbumDataLoader;->get(I)Lcom/android/gallery3d/data/MediaItem;

    move-result-object v0

    .line 1327
    .local v0, item:Lcom/android/gallery3d/data/MediaObject;
    if-eqz v0, :cond_0

    .line 1328
    iget-object v1, p0, Lcom/android/gallery3d/app/AlbumPage$MyDetailsSource;->this$0:Lcom/android/gallery3d/app/AlbumPage;

    #getter for: Lcom/android/gallery3d/app/AlbumPage;->mAlbumView:Lcom/android/gallery3d/ui/AlbumSlotRenderer;
    invoke-static {v1}, Lcom/android/gallery3d/app/AlbumPage;->access$800(Lcom/android/gallery3d/app/AlbumPage;)Lcom/android/gallery3d/ui/AlbumSlotRenderer;

    move-result-object v1

    invoke-virtual {v0}, Lcom/android/gallery3d/data/MediaItem;->getPath()Lcom/android/gallery3d/data/Path;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/gallery3d/ui/AlbumSlotRenderer;->setHighlightItemPath(Lcom/android/gallery3d/data/Path;)V

    .line 1329
    invoke-virtual {v0}, Lcom/android/gallery3d/data/MediaItem;->getDetails()Lcom/android/gallery3d/data/MediaDetails;

    move-result-object v1

    .line 1331
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

    .line 1313
    iget-object v2, p0, Lcom/android/gallery3d/app/AlbumPage$MyDetailsSource;->this$0:Lcom/android/gallery3d/app/AlbumPage;

    iget-object v2, v2, Lcom/android/gallery3d/app/AlbumPage;->mSelectionManager:Lcom/android/gallery3d/ui/SelectionManager;

    invoke-virtual {v2, v3}, Lcom/android/gallery3d/ui/SelectionManager;->getSelected(Z)Ljava/util/ArrayList;

    move-result-object v1

    .line 1314
    .local v1, selectedList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/gallery3d/data/Path;>;"
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-nez v2, :cond_0

    .line 1315
    iget-object v2, p0, Lcom/android/gallery3d/app/AlbumPage$MyDetailsSource;->this$0:Lcom/android/gallery3d/app/AlbumPage;

    #getter for: Lcom/android/gallery3d/app/AlbumPage;->mLongTapSlotIndex:I
    invoke-static {v2}, Lcom/android/gallery3d/app/AlbumPage;->access$3300(Lcom/android/gallery3d/app/AlbumPage;)I

    move-result v2

    iput v2, p0, Lcom/android/gallery3d/app/AlbumPage$MyDetailsSource;->mIndex:I

    .line 1320
    :goto_0
    iget v2, p0, Lcom/android/gallery3d/app/AlbumPage$MyDetailsSource;->mIndex:I

    return v2

    .line 1317
    :cond_0
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/gallery3d/data/Path;

    .line 1318
    .local v0, id:Lcom/android/gallery3d/data/Path;
    iget-object v2, p0, Lcom/android/gallery3d/app/AlbumPage$MyDetailsSource;->this$0:Lcom/android/gallery3d/app/AlbumPage;

    #getter for: Lcom/android/gallery3d/app/AlbumPage;->mAlbumDataAdapter:Lcom/android/gallery3d/app/AlbumDataLoader;
    invoke-static {v2}, Lcom/android/gallery3d/app/AlbumPage;->access$100(Lcom/android/gallery3d/app/AlbumPage;)Lcom/android/gallery3d/app/AlbumDataLoader;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/android/gallery3d/app/AlbumDataLoader;->findItem(Lcom/android/gallery3d/data/Path;)I

    move-result v2

    iput v2, p0, Lcom/android/gallery3d/app/AlbumPage$MyDetailsSource;->mIndex:I

    goto :goto_0
.end method

.method public size()I
    .locals 1

    .prologue
    .line 1308
    iget-object v0, p0, Lcom/android/gallery3d/app/AlbumPage$MyDetailsSource;->this$0:Lcom/android/gallery3d/app/AlbumPage;

    #getter for: Lcom/android/gallery3d/app/AlbumPage;->mAlbumDataAdapter:Lcom/android/gallery3d/app/AlbumDataLoader;
    invoke-static {v0}, Lcom/android/gallery3d/app/AlbumPage;->access$100(Lcom/android/gallery3d/app/AlbumPage;)Lcom/android/gallery3d/app/AlbumDataLoader;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/gallery3d/app/AlbumDataLoader;->size()I

    move-result v0

    return v0
.end method
