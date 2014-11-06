.class Lcom/android/gallery3d/app/PhotoDataAdapter$UpdateContent;
.super Ljava/lang/Object;
.source "PhotoDataAdapter.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/gallery3d/app/PhotoDataAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "UpdateContent"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable",
        "<",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field mUpdateInfo:Lcom/android/gallery3d/app/PhotoDataAdapter$UpdateInfo;

.field final synthetic this$0:Lcom/android/gallery3d/app/PhotoDataAdapter;


# direct methods
.method public constructor <init>(Lcom/android/gallery3d/app/PhotoDataAdapter;Lcom/android/gallery3d/app/PhotoDataAdapter$UpdateInfo;)V
    .locals 0
    .parameter
    .parameter "updateInfo"

    .prologue
    .line 1270
    iput-object p1, p0, Lcom/android/gallery3d/app/PhotoDataAdapter$UpdateContent;->this$0:Lcom/android/gallery3d/app/PhotoDataAdapter;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 1271
    iput-object p2, p0, Lcom/android/gallery3d/app/PhotoDataAdapter$UpdateContent;->mUpdateInfo:Lcom/android/gallery3d/app/PhotoDataAdapter$UpdateInfo;

    .line 1272
    return-void
.end method


# virtual methods
.method public bridge synthetic call()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 1267
    invoke-virtual {p0}, Lcom/android/gallery3d/app/PhotoDataAdapter$UpdateContent;->call()Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method public call()Ljava/lang/Void;
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/4 v8, 0x0

    .line 1276
    iget-object v5, p0, Lcom/android/gallery3d/app/PhotoDataAdapter$UpdateContent;->mUpdateInfo:Lcom/android/gallery3d/app/PhotoDataAdapter$UpdateInfo;

    .line 1277
    .local v5, info:Lcom/android/gallery3d/app/PhotoDataAdapter$UpdateInfo;
    iget-object v7, p0, Lcom/android/gallery3d/app/PhotoDataAdapter$UpdateContent;->this$0:Lcom/android/gallery3d/app/PhotoDataAdapter;

    iget-wide v9, v5, Lcom/android/gallery3d/app/PhotoDataAdapter$UpdateInfo;->version:J

    #setter for: Lcom/android/gallery3d/app/PhotoDataAdapter;->mSourceVersion:J
    invoke-static {v7, v9, v10}, Lcom/android/gallery3d/app/PhotoDataAdapter;->access$1902(Lcom/android/gallery3d/app/PhotoDataAdapter;J)J

    .line 1279
    iget v7, v5, Lcom/android/gallery3d/app/PhotoDataAdapter$UpdateInfo;->size:I

    iget-object v9, p0, Lcom/android/gallery3d/app/PhotoDataAdapter$UpdateContent;->this$0:Lcom/android/gallery3d/app/PhotoDataAdapter;

    #getter for: Lcom/android/gallery3d/app/PhotoDataAdapter;->mSize:I
    invoke-static {v9}, Lcom/android/gallery3d/app/PhotoDataAdapter;->access$2000(Lcom/android/gallery3d/app/PhotoDataAdapter;)I

    move-result v9

    if-eq v7, v9, :cond_1

    .line 1280
    iget-object v7, p0, Lcom/android/gallery3d/app/PhotoDataAdapter$UpdateContent;->this$0:Lcom/android/gallery3d/app/PhotoDataAdapter;

    iget v9, v5, Lcom/android/gallery3d/app/PhotoDataAdapter$UpdateInfo;->size:I

    #setter for: Lcom/android/gallery3d/app/PhotoDataAdapter;->mSize:I
    invoke-static {v7, v9}, Lcom/android/gallery3d/app/PhotoDataAdapter;->access$2002(Lcom/android/gallery3d/app/PhotoDataAdapter;I)I

    .line 1281
    iget-object v7, p0, Lcom/android/gallery3d/app/PhotoDataAdapter$UpdateContent;->this$0:Lcom/android/gallery3d/app/PhotoDataAdapter;

    #getter for: Lcom/android/gallery3d/app/PhotoDataAdapter;->mContentEnd:I
    invoke-static {v7}, Lcom/android/gallery3d/app/PhotoDataAdapter;->access$1400(Lcom/android/gallery3d/app/PhotoDataAdapter;)I

    move-result v7

    iget-object v9, p0, Lcom/android/gallery3d/app/PhotoDataAdapter$UpdateContent;->this$0:Lcom/android/gallery3d/app/PhotoDataAdapter;

    #getter for: Lcom/android/gallery3d/app/PhotoDataAdapter;->mSize:I
    invoke-static {v9}, Lcom/android/gallery3d/app/PhotoDataAdapter;->access$2000(Lcom/android/gallery3d/app/PhotoDataAdapter;)I

    move-result v9

    if-le v7, v9, :cond_0

    iget-object v7, p0, Lcom/android/gallery3d/app/PhotoDataAdapter$UpdateContent;->this$0:Lcom/android/gallery3d/app/PhotoDataAdapter;

    iget-object v9, p0, Lcom/android/gallery3d/app/PhotoDataAdapter$UpdateContent;->this$0:Lcom/android/gallery3d/app/PhotoDataAdapter;

    #getter for: Lcom/android/gallery3d/app/PhotoDataAdapter;->mSize:I
    invoke-static {v9}, Lcom/android/gallery3d/app/PhotoDataAdapter;->access$2000(Lcom/android/gallery3d/app/PhotoDataAdapter;)I

    move-result v9

    #setter for: Lcom/android/gallery3d/app/PhotoDataAdapter;->mContentEnd:I
    invoke-static {v7, v9}, Lcom/android/gallery3d/app/PhotoDataAdapter;->access$1402(Lcom/android/gallery3d/app/PhotoDataAdapter;I)I

    .line 1282
    :cond_0
    iget-object v7, p0, Lcom/android/gallery3d/app/PhotoDataAdapter$UpdateContent;->this$0:Lcom/android/gallery3d/app/PhotoDataAdapter;

    #getter for: Lcom/android/gallery3d/app/PhotoDataAdapter;->mActiveEnd:I
    invoke-static {v7}, Lcom/android/gallery3d/app/PhotoDataAdapter;->access$2100(Lcom/android/gallery3d/app/PhotoDataAdapter;)I

    move-result v7

    iget-object v9, p0, Lcom/android/gallery3d/app/PhotoDataAdapter$UpdateContent;->this$0:Lcom/android/gallery3d/app/PhotoDataAdapter;

    #getter for: Lcom/android/gallery3d/app/PhotoDataAdapter;->mSize:I
    invoke-static {v9}, Lcom/android/gallery3d/app/PhotoDataAdapter;->access$2000(Lcom/android/gallery3d/app/PhotoDataAdapter;)I

    move-result v9

    if-le v7, v9, :cond_1

    iget-object v7, p0, Lcom/android/gallery3d/app/PhotoDataAdapter$UpdateContent;->this$0:Lcom/android/gallery3d/app/PhotoDataAdapter;

    iget-object v9, p0, Lcom/android/gallery3d/app/PhotoDataAdapter$UpdateContent;->this$0:Lcom/android/gallery3d/app/PhotoDataAdapter;

    #getter for: Lcom/android/gallery3d/app/PhotoDataAdapter;->mSize:I
    invoke-static {v9}, Lcom/android/gallery3d/app/PhotoDataAdapter;->access$2000(Lcom/android/gallery3d/app/PhotoDataAdapter;)I

    move-result v9

    #setter for: Lcom/android/gallery3d/app/PhotoDataAdapter;->mActiveEnd:I
    invoke-static {v7, v9}, Lcom/android/gallery3d/app/PhotoDataAdapter;->access$2102(Lcom/android/gallery3d/app/PhotoDataAdapter;I)I

    .line 1287
    :cond_1
    iget-object v7, p0, Lcom/android/gallery3d/app/PhotoDataAdapter$UpdateContent;->this$0:Lcom/android/gallery3d/app/PhotoDataAdapter;

    #getter for: Lcom/android/gallery3d/app/PhotoDataAdapter;->mFocusHintPath:Lcom/android/gallery3d/data/Path;
    invoke-static {v7}, Lcom/android/gallery3d/app/PhotoDataAdapter;->access$2200(Lcom/android/gallery3d/app/PhotoDataAdapter;)Lcom/android/gallery3d/data/Path;

    move-result-object v7

    if-eqz v7, :cond_3

    .line 1288
    iget-object v7, p0, Lcom/android/gallery3d/app/PhotoDataAdapter$UpdateContent;->this$0:Lcom/android/gallery3d/app/PhotoDataAdapter;

    iget-object v9, p0, Lcom/android/gallery3d/app/PhotoDataAdapter$UpdateContent;->this$0:Lcom/android/gallery3d/app/PhotoDataAdapter;

    #getter for: Lcom/android/gallery3d/app/PhotoDataAdapter;->mFocusHintPath:Lcom/android/gallery3d/data/Path;
    invoke-static {v9}, Lcom/android/gallery3d/app/PhotoDataAdapter;->access$2200(Lcom/android/gallery3d/app/PhotoDataAdapter;)Lcom/android/gallery3d/data/Path;

    move-result-object v9

    #calls: Lcom/android/gallery3d/app/PhotoDataAdapter;->findIndexOfPathInCache(Lcom/android/gallery3d/app/PhotoDataAdapter$UpdateInfo;Lcom/android/gallery3d/data/Path;)I
    invoke-static {v7, v5, v9}, Lcom/android/gallery3d/app/PhotoDataAdapter;->access$2300(Lcom/android/gallery3d/app/PhotoDataAdapter;Lcom/android/gallery3d/app/PhotoDataAdapter$UpdateInfo;Lcom/android/gallery3d/data/Path;)I

    move-result v4

    .line 1289
    .local v4, index:I
    const/4 v7, -0x1

    if-eq v4, v7, :cond_2

    .line 1290
    iput v4, v5, Lcom/android/gallery3d/app/PhotoDataAdapter$UpdateInfo;->indexHint:I

    .line 1292
    :cond_2
    iget-object v7, p0, Lcom/android/gallery3d/app/PhotoDataAdapter$UpdateContent;->this$0:Lcom/android/gallery3d/app/PhotoDataAdapter;

    #setter for: Lcom/android/gallery3d/app/PhotoDataAdapter;->mFocusHintPath:Lcom/android/gallery3d/data/Path;
    invoke-static {v7, v8}, Lcom/android/gallery3d/app/PhotoDataAdapter;->access$2202(Lcom/android/gallery3d/app/PhotoDataAdapter;Lcom/android/gallery3d/data/Path;)Lcom/android/gallery3d/data/Path;

    .line 1297
    .end local v4           #index:I
    :cond_3
    iget v7, v5, Lcom/android/gallery3d/app/PhotoDataAdapter$UpdateInfo;->indexHint:I

    iget-object v9, p0, Lcom/android/gallery3d/app/PhotoDataAdapter$UpdateContent;->this$0:Lcom/android/gallery3d/app/PhotoDataAdapter;

    #getter for: Lcom/android/gallery3d/app/PhotoDataAdapter;->mSize:I
    invoke-static {v9}, Lcom/android/gallery3d/app/PhotoDataAdapter;->access$2000(Lcom/android/gallery3d/app/PhotoDataAdapter;)I

    move-result v9

    if-lt v7, v9, :cond_4

    iget-object v7, p0, Lcom/android/gallery3d/app/PhotoDataAdapter$UpdateContent;->this$0:Lcom/android/gallery3d/app/PhotoDataAdapter;

    #getter for: Lcom/android/gallery3d/app/PhotoDataAdapter;->mSize:I
    invoke-static {v7}, Lcom/android/gallery3d/app/PhotoDataAdapter;->access$2000(Lcom/android/gallery3d/app/PhotoDataAdapter;)I

    move-result v7

    if-lez v7, :cond_4

    .line 1298
    iget-object v7, p0, Lcom/android/gallery3d/app/PhotoDataAdapter$UpdateContent;->this$0:Lcom/android/gallery3d/app/PhotoDataAdapter;

    #getter for: Lcom/android/gallery3d/app/PhotoDataAdapter;->mSize:I
    invoke-static {v7}, Lcom/android/gallery3d/app/PhotoDataAdapter;->access$2000(Lcom/android/gallery3d/app/PhotoDataAdapter;)I

    move-result v7

    add-int/lit8 v7, v7, -0x1

    iput v7, v5, Lcom/android/gallery3d/app/PhotoDataAdapter$UpdateInfo;->indexHint:I

    .line 1302
    :cond_4
    iget-object v7, p0, Lcom/android/gallery3d/app/PhotoDataAdapter$UpdateContent;->this$0:Lcom/android/gallery3d/app/PhotoDataAdapter;

    iget v9, v5, Lcom/android/gallery3d/app/PhotoDataAdapter$UpdateInfo;->indexHint:I

    #setter for: Lcom/android/gallery3d/app/PhotoDataAdapter;->mCurrentIndex:I
    invoke-static {v7, v9}, Lcom/android/gallery3d/app/PhotoDataAdapter;->access$1602(Lcom/android/gallery3d/app/PhotoDataAdapter;I)I

    .line 1303
    iget-object v7, p0, Lcom/android/gallery3d/app/PhotoDataAdapter$UpdateContent;->this$0:Lcom/android/gallery3d/app/PhotoDataAdapter;

    #calls: Lcom/android/gallery3d/app/PhotoDataAdapter;->updateSlidingWindow()V
    invoke-static {v7}, Lcom/android/gallery3d/app/PhotoDataAdapter;->access$2400(Lcom/android/gallery3d/app/PhotoDataAdapter;)V

    .line 1305
    iget-object v7, v5, Lcom/android/gallery3d/app/PhotoDataAdapter$UpdateInfo;->items:Ljava/util/ArrayList;

    if-eqz v7, :cond_6

    .line 1306
    iget v7, v5, Lcom/android/gallery3d/app/PhotoDataAdapter$UpdateInfo;->contentStart:I

    iget-object v9, p0, Lcom/android/gallery3d/app/PhotoDataAdapter$UpdateContent;->this$0:Lcom/android/gallery3d/app/PhotoDataAdapter;

    #getter for: Lcom/android/gallery3d/app/PhotoDataAdapter;->mContentStart:I
    invoke-static {v9}, Lcom/android/gallery3d/app/PhotoDataAdapter;->access$1300(Lcom/android/gallery3d/app/PhotoDataAdapter;)I

    move-result v9

    invoke-static {v7, v9}, Ljava/lang/Math;->max(II)I

    move-result v6

    .line 1307
    .local v6, start:I
    iget v7, v5, Lcom/android/gallery3d/app/PhotoDataAdapter$UpdateInfo;->contentStart:I

    iget-object v9, v5, Lcom/android/gallery3d/app/PhotoDataAdapter$UpdateInfo;->items:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v9

    add-int/2addr v7, v9

    iget-object v9, p0, Lcom/android/gallery3d/app/PhotoDataAdapter$UpdateContent;->this$0:Lcom/android/gallery3d/app/PhotoDataAdapter;

    #getter for: Lcom/android/gallery3d/app/PhotoDataAdapter;->mContentEnd:I
    invoke-static {v9}, Lcom/android/gallery3d/app/PhotoDataAdapter;->access$1400(Lcom/android/gallery3d/app/PhotoDataAdapter;)I

    move-result v9

    invoke-static {v7, v9}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 1308
    .local v2, end:I
    rem-int/lit8 v1, v6, 0x20

    .line 1309
    .local v1, dataIndex:I
    move v3, v6

    .local v3, i:I
    :goto_0
    if-ge v3, v2, :cond_6

    .line 1310
    iget-object v7, p0, Lcom/android/gallery3d/app/PhotoDataAdapter$UpdateContent;->this$0:Lcom/android/gallery3d/app/PhotoDataAdapter;

    #getter for: Lcom/android/gallery3d/app/PhotoDataAdapter;->mData:[Lcom/android/gallery3d/data/MediaItem;
    invoke-static {v7}, Lcom/android/gallery3d/app/PhotoDataAdapter;->access$1500(Lcom/android/gallery3d/app/PhotoDataAdapter;)[Lcom/android/gallery3d/data/MediaItem;

    move-result-object v9

    iget-object v7, v5, Lcom/android/gallery3d/app/PhotoDataAdapter$UpdateInfo;->items:Ljava/util/ArrayList;

    iget v10, v5, Lcom/android/gallery3d/app/PhotoDataAdapter$UpdateInfo;->contentStart:I

    sub-int v10, v3, v10

    invoke-virtual {v7, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/gallery3d/data/MediaItem;

    aput-object v7, v9, v1

    .line 1311
    add-int/lit8 v1, v1, 0x1

    const/16 v7, 0x20

    if-ne v1, v7, :cond_5

    const/4 v1, 0x0

    .line 1309
    :cond_5
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1316
    .end local v1           #dataIndex:I
    .end local v2           #end:I
    .end local v3           #i:I
    .end local v6           #start:I
    :cond_6
    iget-object v7, p0, Lcom/android/gallery3d/app/PhotoDataAdapter$UpdateContent;->this$0:Lcom/android/gallery3d/app/PhotoDataAdapter;

    #getter for: Lcom/android/gallery3d/app/PhotoDataAdapter;->mData:[Lcom/android/gallery3d/data/MediaItem;
    invoke-static {v7}, Lcom/android/gallery3d/app/PhotoDataAdapter;->access$1500(Lcom/android/gallery3d/app/PhotoDataAdapter;)[Lcom/android/gallery3d/data/MediaItem;

    move-result-object v7

    iget-object v9, p0, Lcom/android/gallery3d/app/PhotoDataAdapter$UpdateContent;->this$0:Lcom/android/gallery3d/app/PhotoDataAdapter;

    #getter for: Lcom/android/gallery3d/app/PhotoDataAdapter;->mCurrentIndex:I
    invoke-static {v9}, Lcom/android/gallery3d/app/PhotoDataAdapter;->access$1600(Lcom/android/gallery3d/app/PhotoDataAdapter;)I

    move-result v9

    rem-int/lit8 v9, v9, 0x20

    aget-object v0, v7, v9

    .line 1317
    .local v0, current:Lcom/android/gallery3d/data/MediaItem;
    iget-object v9, p0, Lcom/android/gallery3d/app/PhotoDataAdapter$UpdateContent;->this$0:Lcom/android/gallery3d/app/PhotoDataAdapter;

    if-nez v0, :cond_8

    move-object v7, v8

    :goto_1
    #setter for: Lcom/android/gallery3d/app/PhotoDataAdapter;->mItemPath:Lcom/android/gallery3d/data/Path;
    invoke-static {v9, v7}, Lcom/android/gallery3d/app/PhotoDataAdapter;->access$1702(Lcom/android/gallery3d/app/PhotoDataAdapter;Lcom/android/gallery3d/data/Path;)Lcom/android/gallery3d/data/Path;

    .line 1319
    iget-object v7, p0, Lcom/android/gallery3d/app/PhotoDataAdapter$UpdateContent;->this$0:Lcom/android/gallery3d/app/PhotoDataAdapter;

    #calls: Lcom/android/gallery3d/app/PhotoDataAdapter;->updateImageCache()V
    invoke-static {v7}, Lcom/android/gallery3d/app/PhotoDataAdapter;->access$2500(Lcom/android/gallery3d/app/PhotoDataAdapter;)V

    .line 1320
    iget-object v7, p0, Lcom/android/gallery3d/app/PhotoDataAdapter$UpdateContent;->this$0:Lcom/android/gallery3d/app/PhotoDataAdapter;

    #calls: Lcom/android/gallery3d/app/PhotoDataAdapter;->updateTileProvider()V
    invoke-static {v7}, Lcom/android/gallery3d/app/PhotoDataAdapter;->access$2600(Lcom/android/gallery3d/app/PhotoDataAdapter;)V

    .line 1321
    iget-object v7, p0, Lcom/android/gallery3d/app/PhotoDataAdapter$UpdateContent;->this$0:Lcom/android/gallery3d/app/PhotoDataAdapter;

    #calls: Lcom/android/gallery3d/app/PhotoDataAdapter;->updateImageRequests()V
    invoke-static {v7}, Lcom/android/gallery3d/app/PhotoDataAdapter;->access$300(Lcom/android/gallery3d/app/PhotoDataAdapter;)V

    .line 1323
    iget-object v7, p0, Lcom/android/gallery3d/app/PhotoDataAdapter$UpdateContent;->this$0:Lcom/android/gallery3d/app/PhotoDataAdapter;

    #getter for: Lcom/android/gallery3d/app/PhotoDataAdapter;->mDataListener:Lcom/android/gallery3d/app/PhotoDataAdapter$DataListener;
    invoke-static {v7}, Lcom/android/gallery3d/app/PhotoDataAdapter;->access$200(Lcom/android/gallery3d/app/PhotoDataAdapter;)Lcom/android/gallery3d/app/PhotoDataAdapter$DataListener;

    move-result-object v7

    if-eqz v7, :cond_7

    .line 1324
    iget-object v7, p0, Lcom/android/gallery3d/app/PhotoDataAdapter$UpdateContent;->this$0:Lcom/android/gallery3d/app/PhotoDataAdapter;

    #getter for: Lcom/android/gallery3d/app/PhotoDataAdapter;->mDataListener:Lcom/android/gallery3d/app/PhotoDataAdapter$DataListener;
    invoke-static {v7}, Lcom/android/gallery3d/app/PhotoDataAdapter;->access$200(Lcom/android/gallery3d/app/PhotoDataAdapter;)Lcom/android/gallery3d/app/PhotoDataAdapter$DataListener;

    move-result-object v7

    iget-object v9, p0, Lcom/android/gallery3d/app/PhotoDataAdapter$UpdateContent;->this$0:Lcom/android/gallery3d/app/PhotoDataAdapter;

    #getter for: Lcom/android/gallery3d/app/PhotoDataAdapter;->mCurrentIndex:I
    invoke-static {v9}, Lcom/android/gallery3d/app/PhotoDataAdapter;->access$1600(Lcom/android/gallery3d/app/PhotoDataAdapter;)I

    move-result v9

    iget-object v10, p0, Lcom/android/gallery3d/app/PhotoDataAdapter$UpdateContent;->this$0:Lcom/android/gallery3d/app/PhotoDataAdapter;

    #getter for: Lcom/android/gallery3d/app/PhotoDataAdapter;->mItemPath:Lcom/android/gallery3d/data/Path;
    invoke-static {v10}, Lcom/android/gallery3d/app/PhotoDataAdapter;->access$1700(Lcom/android/gallery3d/app/PhotoDataAdapter;)Lcom/android/gallery3d/data/Path;

    move-result-object v10

    invoke-interface {v7, v9, v10}, Lcom/android/gallery3d/app/PhotoDataAdapter$DataListener;->onPhotoChanged(ILcom/android/gallery3d/data/Path;)V

    .line 1327
    :cond_7
    iget-object v7, p0, Lcom/android/gallery3d/app/PhotoDataAdapter$UpdateContent;->this$0:Lcom/android/gallery3d/app/PhotoDataAdapter;

    #calls: Lcom/android/gallery3d/app/PhotoDataAdapter;->fireDataChange()V
    invoke-static {v7}, Lcom/android/gallery3d/app/PhotoDataAdapter;->access$2700(Lcom/android/gallery3d/app/PhotoDataAdapter;)V

    .line 1328
    return-object v8

    .line 1317
    :cond_8
    invoke-virtual {v0}, Lcom/android/gallery3d/data/MediaItem;->getPath()Lcom/android/gallery3d/data/Path;

    move-result-object v7

    goto :goto_1
.end method
