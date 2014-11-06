.class public Lcom/android/gallery3d/ui/SelectionManager;
.super Ljava/lang/Object;
.source "SelectionManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/gallery3d/ui/SelectionManager$SelectionListener;
    }
.end annotation


# static fields
.field public static final DESELECT_ALL_MODE:I = 0x4

.field public static final ENTER_SELECTION_MODE:I = 0x1

.field public static final LEAVE_SELECTION_MODE:I = 0x2

.field public static final SELECT_ALL_MODE:I = 0x3

.field private static final TAG:Ljava/lang/String; = "SelectionManager"


# instance fields
.field private mAutoLeave:Z

.field private mCheckOperation:I

.field private mClickedSet:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lcom/android/gallery3d/data/Path;",
            ">;"
        }
    .end annotation
.end field

.field private mDataManager:Lcom/android/gallery3d/data/DataManager;

.field private mInHiddenMode:Z

.field private mInPrivateMode:Z

.field private mInSelectionMode:Z

.field private mInSingleMode:Z

.field private mInitialHiddenSet:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lcom/android/gallery3d/data/Path;",
            ">;"
        }
    .end annotation
.end field

.field private mInitialPrivateSet:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lcom/android/gallery3d/data/Path;",
            ">;"
        }
    .end annotation
.end field

.field private mInverseSelection:Z

.field private mIsAlbumSet:Z

.field private mLimitExceedNum:I

.field private mListener:Lcom/android/gallery3d/ui/SelectionManager$SelectionListener;

.field private mSourceMediaSet:Lcom/android/gallery3d/data/MediaSet;

.field private mSupportOperation:I

.field private mTotal:I


# direct methods
.method public constructor <init>(Lcom/android/gallery3d/app/AbstractGalleryActivity;Z)V
    .locals 3
    .parameter "activity"
    .parameter "isAlbumSet"

    .prologue
    const/4 v2, 0x0

    const/4 v1, -0x1

    .line 70
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 48
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/gallery3d/ui/SelectionManager;->mAutoLeave:Z

    .line 51
    const v0, 0x7fffffff

    iput v0, p0, Lcom/android/gallery3d/ui/SelectionManager;->mLimitExceedNum:I

    .line 54
    iput v2, p0, Lcom/android/gallery3d/ui/SelectionManager;->mSupportOperation:I

    .line 59
    iput-boolean v2, p0, Lcom/android/gallery3d/ui/SelectionManager;->mInSingleMode:Z

    .line 60
    iput v1, p0, Lcom/android/gallery3d/ui/SelectionManager;->mCheckOperation:I

    .line 71
    invoke-virtual {p1}, Lcom/android/gallery3d/app/AbstractGalleryActivity;->getDataManager()Lcom/android/gallery3d/data/DataManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/gallery3d/ui/SelectionManager;->mDataManager:Lcom/android/gallery3d/data/DataManager;

    .line 72
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/android/gallery3d/ui/SelectionManager;->mClickedSet:Ljava/util/Set;

    .line 73
    iput-boolean p2, p0, Lcom/android/gallery3d/ui/SelectionManager;->mIsAlbumSet:Z

    .line 74
    iput v1, p0, Lcom/android/gallery3d/ui/SelectionManager;->mTotal:I

    .line 75
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/android/gallery3d/ui/SelectionManager;->mInitialHiddenSet:Ljava/util/Set;

    .line 76
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/android/gallery3d/ui/SelectionManager;->mInitialPrivateSet:Ljava/util/Set;

    .line 77
    return-void
.end method

.method private static expandMediaSet(Ljava/util/ArrayList;Lcom/android/gallery3d/data/MediaSet;)V
    .locals 11
    .parameter
    .parameter "set"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/gallery3d/data/Path;",
            ">;",
            "Lcom/android/gallery3d/data/MediaSet;",
            ")V"
        }
    .end annotation

    .prologue
    .line 203
    .local p0, items:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/gallery3d/data/Path;>;"
    invoke-virtual {p1}, Lcom/android/gallery3d/data/MediaSet;->getSubMediaSetCount()I

    move-result v7

    .line 205
    .local v7, subCount:I
    const/4 v8, 0x0

    .line 206
    .local v8, subSet:Lcom/android/gallery3d/data/MediaSet;
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v7, :cond_1

    .line 207
    invoke-virtual {p1, v2}, Lcom/android/gallery3d/data/MediaSet;->getSubMediaSet(I)Lcom/android/gallery3d/data/MediaSet;

    move-result-object v8

    .line 208
    if-nez v8, :cond_0

    .line 206
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 209
    :cond_0
    invoke-static {p0, v8}, Lcom/android/gallery3d/ui/SelectionManager;->expandMediaSet(Ljava/util/ArrayList;Lcom/android/gallery3d/data/MediaSet;)V

    goto :goto_1

    .line 212
    :cond_1
    invoke-virtual {p1}, Lcom/android/gallery3d/data/MediaSet;->getMediaItemCount()I

    move-result v9

    .line 213
    .local v9, total:I
    const/16 v0, 0x32

    .line 214
    .local v0, batch:I
    const/4 v4, 0x0

    .line 216
    .local v4, index:I
    :goto_2
    if-ge v4, v9, :cond_4

    .line 217
    add-int v10, v4, v0

    if-ge v10, v9, :cond_2

    move v1, v0

    .line 220
    .local v1, count:I
    :goto_3
    invoke-virtual {p1, v4, v1}, Lcom/android/gallery3d/data/MediaSet;->getMediaItem(II)Ljava/util/ArrayList;

    move-result-object v6

    .line 221
    .local v6, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/gallery3d/data/MediaItem;>;"
    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, i$:Ljava/util/Iterator;
    :goto_4
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/gallery3d/data/MediaItem;

    .line 222
    .local v5, item:Lcom/android/gallery3d/data/MediaItem;
    invoke-virtual {v5}, Lcom/android/gallery3d/data/MediaItem;->getPath()Lcom/android/gallery3d/data/Path;

    move-result-object v10

    invoke-virtual {p0, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_4

    .line 217
    .end local v1           #count:I
    .end local v3           #i$:Ljava/util/Iterator;
    .end local v5           #item:Lcom/android/gallery3d/data/MediaItem;
    .end local v6           #list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/gallery3d/data/MediaItem;>;"
    :cond_2
    sub-int v1, v9, v4

    goto :goto_3

    .line 224
    .restart local v1       #count:I
    .restart local v3       #i$:Ljava/util/Iterator;
    .restart local v6       #list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/gallery3d/data/MediaItem;>;"
    :cond_3
    add-int/2addr v4, v0

    .line 225
    goto :goto_2

    .line 226
    .end local v1           #count:I
    .end local v3           #i$:Ljava/util/Iterator;
    .end local v6           #list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/gallery3d/data/MediaItem;>;"
    :cond_4
    return-void
.end method


# virtual methods
.method public addInitialHiddenSet(Lcom/android/gallery3d/data/Path;)V
    .locals 1
    .parameter "path"

    .prologue
    .line 305
    iget-object v0, p0, Lcom/android/gallery3d/ui/SelectionManager;->mInitialHiddenSet:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 306
    return-void
.end method

.method public addInitialPrivateSet(Lcom/android/gallery3d/data/Path;)V
    .locals 1
    .parameter "path"

    .prologue
    .line 317
    iget-object v0, p0, Lcom/android/gallery3d/ui/SelectionManager;->mInitialPrivateSet:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 318
    return-void
.end method

.method public canOperate(Lcom/android/gallery3d/data/Path;)Z
    .locals 3
    .parameter "path"

    .prologue
    .line 367
    iget-object v1, p0, Lcom/android/gallery3d/ui/SelectionManager;->mDataManager:Lcom/android/gallery3d/data/DataManager;

    invoke-virtual {v1, p1}, Lcom/android/gallery3d/data/DataManager;->peekMediaObject(Lcom/android/gallery3d/data/Path;)Lcom/android/gallery3d/data/MediaObject;

    move-result-object v0

    .line 368
    .local v0, mo:Lcom/android/gallery3d/data/MediaObject;
    if-nez v0, :cond_0

    const/4 v1, 0x0

    .line 369
    :goto_0
    return v1

    :cond_0
    iget v1, p0, Lcom/android/gallery3d/ui/SelectionManager;->mCheckOperation:I

    invoke-virtual {v0}, Lcom/android/gallery3d/data/MediaObject;->getSupportedOperations()I

    move-result v2

    invoke-static {v1, v2}, Lcom/android/gallery3d/util/GalleryUtils;->checkSupportedAction(II)Z

    move-result v1

    goto :goto_0
.end method

.method public deSelectAll()V
    .locals 2

    .prologue
    .line 104
    iget-boolean v0, p0, Lcom/android/gallery3d/ui/SelectionManager;->mAutoLeave:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/gallery3d/ui/SelectionManager;->leaveSelectionMode()V

    .line 105
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/gallery3d/ui/SelectionManager;->mInverseSelection:Z

    .line 106
    iget-object v0, p0, Lcom/android/gallery3d/ui/SelectionManager;->mClickedSet:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    .line 107
    iget-object v0, p0, Lcom/android/gallery3d/ui/SelectionManager;->mListener:Lcom/android/gallery3d/ui/SelectionManager$SelectionListener;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/gallery3d/ui/SelectionManager;->mListener:Lcom/android/gallery3d/ui/SelectionManager$SelectionListener;

    const/4 v1, 0x4

    invoke-interface {v0, v1}, Lcom/android/gallery3d/ui/SelectionManager$SelectionListener;->onSelectionModeChange(I)V

    .line 108
    :cond_1
    return-void
.end method

.method public enterSelectionMode()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 119
    iget-boolean v0, p0, Lcom/android/gallery3d/ui/SelectionManager;->mInSelectionMode:Z

    if-eqz v0, :cond_1

    .line 123
    :cond_0
    :goto_0
    return-void

    .line 121
    :cond_1
    iput-boolean v1, p0, Lcom/android/gallery3d/ui/SelectionManager;->mInSelectionMode:Z

    .line 122
    iget-object v0, p0, Lcom/android/gallery3d/ui/SelectionManager;->mListener:Lcom/android/gallery3d/ui/SelectionManager$SelectionListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/gallery3d/ui/SelectionManager;->mListener:Lcom/android/gallery3d/ui/SelectionManager$SelectionListener;

    invoke-interface {v0, v1}, Lcom/android/gallery3d/ui/SelectionManager$SelectionListener;->onSelectionModeChange(I)V

    goto :goto_0
.end method

.method public getProcessingList(Z)Ljava/util/ArrayList;
    .locals 4
    .parameter "expandSet"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/gallery3d/data/Path;",
            ">;"
        }
    .end annotation

    .prologue
    .line 337
    invoke-virtual {p0, p1}, Lcom/android/gallery3d/ui/SelectionManager;->getSelected(Z)Ljava/util/ArrayList;

    move-result-object v2

    .line 339
    .local v2, processList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/gallery3d/data/Path;>;"
    invoke-virtual {p0}, Lcom/android/gallery3d/ui/SelectionManager;->inHiddenMode()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 340
    iget-object v3, p0, Lcom/android/gallery3d/ui/SelectionManager;->mInitialHiddenSet:Ljava/util/Set;

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/gallery3d/data/Path;

    .line 341
    .local v1, id:Lcom/android/gallery3d/data/Path;
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 342
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    .line 344
    :cond_0
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 349
    .end local v0           #i$:Ljava/util/Iterator;
    .end local v1           #id:Lcom/android/gallery3d/data/Path;
    :cond_1
    invoke-virtual {p0}, Lcom/android/gallery3d/ui/SelectionManager;->inPrivateMode()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 350
    iget-object v3, p0, Lcom/android/gallery3d/ui/SelectionManager;->mInitialPrivateSet:Ljava/util/Set;

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .restart local v0       #i$:Ljava/util/Iterator;
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/gallery3d/data/Path;

    .line 351
    .restart local v1       #id:Lcom/android/gallery3d/data/Path;
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 352
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_1

    .line 354
    :cond_2
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 359
    .end local v0           #i$:Ljava/util/Iterator;
    .end local v1           #id:Lcom/android/gallery3d/data/Path;
    :cond_3
    return-object v2
.end method

.method public getSelected(Z)Ljava/util/ArrayList;
    .locals 14
    .parameter "expandSet"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/gallery3d/data/Path;",
            ">;"
        }
    .end annotation

    .prologue
    .line 229
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 230
    .local v9, selected:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/gallery3d/data/Path;>;"
    iget-boolean v12, p0, Lcom/android/gallery3d/ui/SelectionManager;->mIsAlbumSet:Z

    if-eqz v12, :cond_5

    .line 231
    iget-boolean v12, p0, Lcom/android/gallery3d/ui/SelectionManager;->mInverseSelection:Z

    if-eqz v12, :cond_3

    .line 232
    invoke-virtual {p0}, Lcom/android/gallery3d/ui/SelectionManager;->getTotalCount()I

    move-result v11

    .line 233
    .local v11, total:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v11, :cond_9

    .line 234
    iget-object v12, p0, Lcom/android/gallery3d/ui/SelectionManager;->mSourceMediaSet:Lcom/android/gallery3d/data/MediaSet;

    invoke-virtual {v12, v2}, Lcom/android/gallery3d/data/MediaSet;->getSubMediaSet(I)Lcom/android/gallery3d/data/MediaSet;

    move-result-object v10

    .line 236
    .local v10, set:Lcom/android/gallery3d/data/MediaSet;
    if-nez v10, :cond_1

    .line 233
    :cond_0
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 238
    :cond_1
    invoke-virtual {v10}, Lcom/android/gallery3d/data/MediaSet;->getPath()Lcom/android/gallery3d/data/Path;

    move-result-object v4

    .line 239
    .local v4, id:Lcom/android/gallery3d/data/Path;
    iget-object v12, p0, Lcom/android/gallery3d/ui/SelectionManager;->mClickedSet:Ljava/util/Set;

    invoke-interface {v12, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_0

    .line 240
    if-eqz p1, :cond_2

    .line 241
    invoke-static {v9, v10}, Lcom/android/gallery3d/ui/SelectionManager;->expandMediaSet(Ljava/util/ArrayList;Lcom/android/gallery3d/data/MediaSet;)V

    goto :goto_1

    .line 243
    :cond_2
    invoke-virtual {v9, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 248
    .end local v2           #i:I
    .end local v4           #id:Lcom/android/gallery3d/data/Path;
    .end local v10           #set:Lcom/android/gallery3d/data/MediaSet;
    .end local v11           #total:I
    :cond_3
    iget-object v12, p0, Lcom/android/gallery3d/ui/SelectionManager;->mClickedSet:Ljava/util/Set;

    invoke-interface {v12}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, i$:Ljava/util/Iterator;
    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_9

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/gallery3d/data/Path;

    .line 249
    .restart local v4       #id:Lcom/android/gallery3d/data/Path;
    if-eqz p1, :cond_4

    .line 250
    iget-object v12, p0, Lcom/android/gallery3d/ui/SelectionManager;->mDataManager:Lcom/android/gallery3d/data/DataManager;

    invoke-virtual {v12, v4}, Lcom/android/gallery3d/data/DataManager;->getMediaSet(Lcom/android/gallery3d/data/Path;)Lcom/android/gallery3d/data/MediaSet;

    move-result-object v12

    invoke-static {v9, v12}, Lcom/android/gallery3d/ui/SelectionManager;->expandMediaSet(Ljava/util/ArrayList;Lcom/android/gallery3d/data/MediaSet;)V

    goto :goto_2

    .line 252
    :cond_4
    invoke-virtual {v9, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 257
    .end local v3           #i$:Ljava/util/Iterator;
    .end local v4           #id:Lcom/android/gallery3d/data/Path;
    :cond_5
    iget-boolean v12, p0, Lcom/android/gallery3d/ui/SelectionManager;->mInverseSelection:Z

    if-eqz v12, :cond_8

    .line 258
    invoke-virtual {p0}, Lcom/android/gallery3d/ui/SelectionManager;->getTotalCount()I

    move-result v11

    .line 259
    .restart local v11       #total:I
    const/4 v5, 0x0

    .line 260
    .local v5, index:I
    :goto_3
    if-ge v5, v11, :cond_9

    .line 261
    sub-int v12, v11, v5

    const/16 v13, 0xc8

    invoke-static {v12, v13}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 262
    .local v1, count:I
    iget-object v12, p0, Lcom/android/gallery3d/ui/SelectionManager;->mSourceMediaSet:Lcom/android/gallery3d/data/MediaSet;

    invoke-virtual {v12, v5, v1}, Lcom/android/gallery3d/data/MediaSet;->getMediaItem(II)Ljava/util/ArrayList;

    move-result-object v7

    .line 263
    .local v7, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/gallery3d/data/MediaItem;>;"
    invoke-virtual {v7}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .restart local v3       #i$:Ljava/util/Iterator;
    :cond_6
    :goto_4
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_7

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/gallery3d/data/MediaItem;

    .line 264
    .local v6, item:Lcom/android/gallery3d/data/MediaItem;
    invoke-virtual {v6}, Lcom/android/gallery3d/data/MediaItem;->getPath()Lcom/android/gallery3d/data/Path;

    move-result-object v4

    .line 265
    .restart local v4       #id:Lcom/android/gallery3d/data/Path;
    iget-object v12, p0, Lcom/android/gallery3d/ui/SelectionManager;->mClickedSet:Ljava/util/Set;

    invoke-interface {v12, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_6

    invoke-virtual {v9, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_4

    .line 267
    .end local v4           #id:Lcom/android/gallery3d/data/Path;
    .end local v6           #item:Lcom/android/gallery3d/data/MediaItem;
    :cond_7
    add-int/2addr v5, v1

    .line 268
    goto :goto_3

    .line 270
    .end local v1           #count:I
    .end local v3           #i$:Ljava/util/Iterator;
    .end local v5           #index:I
    .end local v7           #list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/gallery3d/data/MediaItem;>;"
    .end local v11           #total:I
    :cond_8
    iget-object v12, p0, Lcom/android/gallery3d/ui/SelectionManager;->mClickedSet:Ljava/util/Set;

    invoke-interface {v12}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .restart local v3       #i$:Ljava/util/Iterator;
    :goto_5
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_9

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/gallery3d/data/Path;

    .line 271
    .restart local v4       #id:Lcom/android/gallery3d/data/Path;
    invoke-virtual {v9, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_5

    .line 276
    .end local v3           #i$:Ljava/util/Iterator;
    .end local v4           #id:Lcom/android/gallery3d/data/Path;
    :cond_9
    new-instance v0, Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v12

    invoke-direct {v0, v12}, Ljava/util/ArrayList;-><init>(I)V

    .line 277
    .local v0, checkedSelected:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/gallery3d/data/Path;>;"
    invoke-virtual {v9}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .restart local v3       #i$:Ljava/util/Iterator;
    :cond_a
    :goto_6
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_b

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/gallery3d/data/Path;

    .line 278
    .local v8, path:Lcom/android/gallery3d/data/Path;
    invoke-virtual {p0, v8}, Lcom/android/gallery3d/ui/SelectionManager;->canOperate(Lcom/android/gallery3d/data/Path;)Z

    move-result v12

    if-eqz v12, :cond_a

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_6

    .line 280
    .end local v8           #path:Lcom/android/gallery3d/data/Path;
    :cond_b
    return-object v0
.end method

.method public getSelectedCount()I
    .locals 2

    .prologue
    .line 167
    iget-object v1, p0, Lcom/android/gallery3d/ui/SelectionManager;->mClickedSet:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->size()I

    move-result v0

    .line 168
    .local v0, count:I
    iget-boolean v1, p0, Lcom/android/gallery3d/ui/SelectionManager;->mInverseSelection:Z

    if-eqz v1, :cond_0

    .line 169
    invoke-virtual {p0}, Lcom/android/gallery3d/ui/SelectionManager;->getTotalCount()I

    move-result v1

    sub-int v0, v1, v0

    .line 171
    :cond_0
    return v0
.end method

.method public getSelectedOpration()I
    .locals 6

    .prologue
    const/4 v4, 0x0

    .line 292
    iget-boolean v5, p0, Lcom/android/gallery3d/ui/SelectionManager;->mIsAlbumSet:Z

    if-nez v5, :cond_0

    .line 301
    :goto_0
    return v4

    .line 293
    :cond_0
    invoke-virtual {p0, v4}, Lcom/android/gallery3d/ui/SelectionManager;->getSelected(Z)Ljava/util/ArrayList;

    move-result-object v1

    .line 294
    .local v1, list:Ljava/util/List;,"Ljava/util/List<Lcom/android/gallery3d/data/Path;>;"
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/gallery3d/data/Path;

    .line 295
    .local v3, path:Lcom/android/gallery3d/data/Path;
    iget-object v4, p0, Lcom/android/gallery3d/ui/SelectionManager;->mDataManager:Lcom/android/gallery3d/data/DataManager;

    invoke-virtual {v4, v3}, Lcom/android/gallery3d/data/DataManager;->getMediaSet(Lcom/android/gallery3d/data/Path;)Lcom/android/gallery3d/data/MediaSet;

    move-result-object v2

    .line 296
    .local v2, media:Lcom/android/gallery3d/data/MediaSet;
    invoke-virtual {v2}, Lcom/android/gallery3d/data/MediaSet;->isHidden()Z

    move-result v4

    if-nez v4, :cond_1

    .line 299
    iget v4, p0, Lcom/android/gallery3d/ui/SelectionManager;->mSupportOperation:I

    const v5, -0x4000001

    and-int/2addr v4, v5

    goto :goto_0

    .line 301
    .end local v2           #media:Lcom/android/gallery3d/data/MediaSet;
    .end local v3           #path:Lcom/android/gallery3d/data/Path;
    :cond_2
    iget v4, p0, Lcom/android/gallery3d/ui/SelectionManager;->mSupportOperation:I

    const v5, -0x2000001

    and-int/2addr v4, v5

    goto :goto_0
.end method

.method public getTotalCount()I
    .locals 1

    .prologue
    .line 156
    iget-object v0, p0, Lcom/android/gallery3d/ui/SelectionManager;->mSourceMediaSet:Lcom/android/gallery3d/data/MediaSet;

    if-nez v0, :cond_0

    const/4 v0, -0x1

    .line 163
    :goto_0
    return v0

    .line 159
    :cond_0
    iget-boolean v0, p0, Lcom/android/gallery3d/ui/SelectionManager;->mIsAlbumSet:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/gallery3d/ui/SelectionManager;->mSourceMediaSet:Lcom/android/gallery3d/data/MediaSet;

    invoke-virtual {v0}, Lcom/android/gallery3d/data/MediaSet;->getSubMediaSetCount()I

    move-result v0

    :goto_1
    iput v0, p0, Lcom/android/gallery3d/ui/SelectionManager;->mTotal:I

    .line 163
    iget v0, p0, Lcom/android/gallery3d/ui/SelectionManager;->mTotal:I

    goto :goto_0

    .line 159
    :cond_1
    iget-object v0, p0, Lcom/android/gallery3d/ui/SelectionManager;->mSourceMediaSet:Lcom/android/gallery3d/data/MediaSet;

    invoke-virtual {v0}, Lcom/android/gallery3d/data/MediaSet;->getMediaItemCount()I

    move-result v0

    goto :goto_1
.end method

.method public inHiddenMode()Z
    .locals 1

    .prologue
    .line 313
    iget-boolean v0, p0, Lcom/android/gallery3d/ui/SelectionManager;->mInHiddenMode:Z

    return v0
.end method

.method public inPrivateMode()Z
    .locals 1

    .prologue
    .line 325
    iget-boolean v0, p0, Lcom/android/gallery3d/ui/SelectionManager;->mInPrivateMode:Z

    return v0
.end method

.method public inSelectAllMode()Z
    .locals 1

    .prologue
    .line 111
    iget-boolean v0, p0, Lcom/android/gallery3d/ui/SelectionManager;->mInverseSelection:Z

    return v0
.end method

.method public inSelectionMode()Z
    .locals 1

    .prologue
    .line 115
    iget-boolean v0, p0, Lcom/android/gallery3d/ui/SelectionManager;->mInSelectionMode:Z

    return v0
.end method

.method public inSingleMode()Z
    .locals 1

    .prologue
    .line 329
    iget-boolean v0, p0, Lcom/android/gallery3d/ui/SelectionManager;->mInSingleMode:Z

    return v0
.end method

.method public initSupportOperation(I)V
    .locals 0
    .parameter "supportOperation"

    .prologue
    .line 289
    iput p1, p0, Lcom/android/gallery3d/ui/SelectionManager;->mSupportOperation:I

    .line 290
    return-void
.end method

.method public isItemSelected(Lcom/android/gallery3d/data/Path;)Z
    .locals 2
    .parameter "itemId"

    .prologue
    .line 144
    iget-boolean v0, p0, Lcom/android/gallery3d/ui/SelectionManager;->mInverseSelection:Z

    iget-object v1, p0, Lcom/android/gallery3d/ui/SelectionManager;->mClickedSet:Ljava/util/Set;

    invoke-interface {v1, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    xor-int/2addr v0, v1

    return v0
.end method

.method public isLoading()Z
    .locals 1

    .prologue
    .line 148
    iget-object v0, p0, Lcom/android/gallery3d/ui/SelectionManager;->mSourceMediaSet:Lcom/android/gallery3d/data/MediaSet;

    if-nez v0, :cond_0

    .line 149
    const/4 v0, 0x0

    .line 151
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/android/gallery3d/ui/SelectionManager;->mSourceMediaSet:Lcom/android/gallery3d/data/MediaSet;

    invoke-virtual {v0}, Lcom/android/gallery3d/data/MediaSet;->isLoading()Z

    move-result v0

    goto :goto_0
.end method

.method public leaveSelectionMode()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 126
    iget-boolean v0, p0, Lcom/android/gallery3d/ui/SelectionManager;->mInSelectionMode:Z

    if-nez v0, :cond_1

    .line 141
    :cond_0
    :goto_0
    return-void

    .line 128
    :cond_1
    iput-boolean v1, p0, Lcom/android/gallery3d/ui/SelectionManager;->mInSelectionMode:Z

    .line 129
    iput-boolean v1, p0, Lcom/android/gallery3d/ui/SelectionManager;->mInverseSelection:Z

    .line 130
    iput-boolean v1, p0, Lcom/android/gallery3d/ui/SelectionManager;->mInHiddenMode:Z

    .line 131
    iput-boolean v1, p0, Lcom/android/gallery3d/ui/SelectionManager;->mInPrivateMode:Z

    .line 132
    iput-boolean v1, p0, Lcom/android/gallery3d/ui/SelectionManager;->mInSingleMode:Z

    .line 134
    const v0, 0x7fffffff

    iput v0, p0, Lcom/android/gallery3d/ui/SelectionManager;->mLimitExceedNum:I

    .line 136
    iget-object v0, p0, Lcom/android/gallery3d/ui/SelectionManager;->mClickedSet:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    .line 137
    iget-object v0, p0, Lcom/android/gallery3d/ui/SelectionManager;->mInitialHiddenSet:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    .line 138
    iget-object v0, p0, Lcom/android/gallery3d/ui/SelectionManager;->mInitialPrivateSet:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    .line 139
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/gallery3d/ui/SelectionManager;->mCheckOperation:I

    .line 140
    iget-object v0, p0, Lcom/android/gallery3d/ui/SelectionManager;->mListener:Lcom/android/gallery3d/ui/SelectionManager$SelectionListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/gallery3d/ui/SelectionManager;->mListener:Lcom/android/gallery3d/ui/SelectionManager$SelectionListener;

    const/4 v1, 0x2

    invoke-interface {v0, v1}, Lcom/android/gallery3d/ui/SelectionManager$SelectionListener;->onSelectionModeChange(I)V

    goto :goto_0
.end method

.method public selectAll()V
    .locals 2

    .prologue
    .line 90
    iget-boolean v0, p0, Lcom/android/gallery3d/ui/SelectionManager;->mInSingleMode:Z

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/android/gallery3d/ui/SelectionManager;->getTotalCount()I

    move-result v0

    const/4 v1, 0x2

    if-lt v0, v1, :cond_1

    .line 101
    :cond_0
    :goto_0
    return-void

    .line 92
    :cond_1
    invoke-virtual {p0}, Lcom/android/gallery3d/ui/SelectionManager;->getTotalCount()I

    move-result v0

    iget v1, p0, Lcom/android/gallery3d/ui/SelectionManager;->mLimitExceedNum:I

    if-le v0, v1, :cond_2

    iget-object v0, p0, Lcom/android/gallery3d/ui/SelectionManager;->mListener:Lcom/android/gallery3d/ui/SelectionManager$SelectionListener;

    if-eqz v0, :cond_2

    .line 93
    iget-object v0, p0, Lcom/android/gallery3d/ui/SelectionManager;->mListener:Lcom/android/gallery3d/ui/SelectionManager$SelectionListener;

    invoke-interface {v0}, Lcom/android/gallery3d/ui/SelectionManager$SelectionListener;->onSelectionLimitExceed()V

    goto :goto_0

    .line 97
    :cond_2
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/gallery3d/ui/SelectionManager;->mInverseSelection:Z

    .line 98
    iget-object v0, p0, Lcom/android/gallery3d/ui/SelectionManager;->mClickedSet:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    .line 99
    invoke-virtual {p0}, Lcom/android/gallery3d/ui/SelectionManager;->enterSelectionMode()V

    .line 100
    iget-object v0, p0, Lcom/android/gallery3d/ui/SelectionManager;->mListener:Lcom/android/gallery3d/ui/SelectionManager$SelectionListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/gallery3d/ui/SelectionManager;->mListener:Lcom/android/gallery3d/ui/SelectionManager$SelectionListener;

    const/4 v1, 0x3

    invoke-interface {v0, v1}, Lcom/android/gallery3d/ui/SelectionManager$SelectionListener;->onSelectionModeChange(I)V

    goto :goto_0
.end method

.method public setAutoLeaveSelectionMode(Z)V
    .locals 0
    .parameter "enable"

    .prologue
    .line 82
    iput-boolean p1, p0, Lcom/android/gallery3d/ui/SelectionManager;->mAutoLeave:Z

    .line 83
    return-void
.end method

.method public setCheckOperatoin(I)V
    .locals 0
    .parameter "operation"

    .prologue
    .line 363
    iput p1, p0, Lcom/android/gallery3d/ui/SelectionManager;->mCheckOperation:I

    .line 364
    return-void
.end method

.method public setHiddenMode(Z)V
    .locals 0
    .parameter "enable"

    .prologue
    .line 309
    iput-boolean p1, p0, Lcom/android/gallery3d/ui/SelectionManager;->mInHiddenMode:Z

    .line 310
    return-void
.end method

.method public setLimitExceedNum(I)V
    .locals 0
    .parameter "num"

    .prologue
    .line 374
    iput p1, p0, Lcom/android/gallery3d/ui/SelectionManager;->mLimitExceedNum:I

    .line 375
    return-void
.end method

.method public setPrivateMode(Z)V
    .locals 0
    .parameter "enable"

    .prologue
    .line 321
    iput-boolean p1, p0, Lcom/android/gallery3d/ui/SelectionManager;->mInPrivateMode:Z

    .line 322
    return-void
.end method

.method public setSelectionListener(Lcom/android/gallery3d/ui/SelectionManager$SelectionListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 86
    iput-object p1, p0, Lcom/android/gallery3d/ui/SelectionManager;->mListener:Lcom/android/gallery3d/ui/SelectionManager$SelectionListener;

    .line 87
    return-void
.end method

.method public setSingleMode(Z)V
    .locals 0
    .parameter "enable"

    .prologue
    .line 333
    iput-boolean p1, p0, Lcom/android/gallery3d/ui/SelectionManager;->mInSingleMode:Z

    .line 334
    return-void
.end method

.method public setSourceMediaSet(Lcom/android/gallery3d/data/MediaSet;)V
    .locals 1
    .parameter "set"

    .prologue
    .line 284
    iput-object p1, p0, Lcom/android/gallery3d/ui/SelectionManager;->mSourceMediaSet:Lcom/android/gallery3d/data/MediaSet;

    .line 285
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/gallery3d/ui/SelectionManager;->mTotal:I

    .line 286
    return-void
.end method

.method public toggle(Lcom/android/gallery3d/data/Path;)V
    .locals 3
    .parameter "path"

    .prologue
    .line 175
    iget-object v1, p0, Lcom/android/gallery3d/ui/SelectionManager;->mClickedSet:Ljava/util/Set;

    invoke-interface {v1, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 176
    iget-object v1, p0, Lcom/android/gallery3d/ui/SelectionManager;->mClickedSet:Ljava/util/Set;

    invoke-interface {v1, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 191
    :goto_0
    invoke-virtual {p0}, Lcom/android/gallery3d/ui/SelectionManager;->getSelectedCount()I

    move-result v0

    .line 192
    .local v0, count:I
    invoke-virtual {p0}, Lcom/android/gallery3d/ui/SelectionManager;->getTotalCount()I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 193
    invoke-virtual {p0}, Lcom/android/gallery3d/ui/SelectionManager;->selectAll()V

    .line 196
    :cond_0
    iget-object v1, p0, Lcom/android/gallery3d/ui/SelectionManager;->mListener:Lcom/android/gallery3d/ui/SelectionManager$SelectionListener;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/gallery3d/ui/SelectionManager;->mListener:Lcom/android/gallery3d/ui/SelectionManager$SelectionListener;

    invoke-virtual {p0, p1}, Lcom/android/gallery3d/ui/SelectionManager;->isItemSelected(Lcom/android/gallery3d/data/Path;)Z

    move-result v2

    invoke-interface {v1, p1, v2}, Lcom/android/gallery3d/ui/SelectionManager$SelectionListener;->onSelectionChange(Lcom/android/gallery3d/data/Path;Z)V

    .line 197
    :cond_1
    if-nez v0, :cond_2

    iget-boolean v1, p0, Lcom/android/gallery3d/ui/SelectionManager;->mAutoLeave:Z

    if-eqz v1, :cond_2

    .line 198
    invoke-virtual {p0}, Lcom/android/gallery3d/ui/SelectionManager;->leaveSelectionMode()V

    .line 200
    .end local v0           #count:I
    :cond_2
    :goto_1
    return-void

    .line 178
    :cond_3
    invoke-virtual {p0}, Lcom/android/gallery3d/ui/SelectionManager;->enterSelectionMode()V

    .line 179
    iget-boolean v1, p0, Lcom/android/gallery3d/ui/SelectionManager;->mInSingleMode:Z

    if-eqz v1, :cond_4

    invoke-virtual {p0}, Lcom/android/gallery3d/ui/SelectionManager;->deSelectAll()V

    .line 182
    :cond_4
    iget-object v1, p0, Lcom/android/gallery3d/ui/SelectionManager;->mClickedSet:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->size()I

    move-result v1

    iget v2, p0, Lcom/android/gallery3d/ui/SelectionManager;->mLimitExceedNum:I

    if-lt v1, v2, :cond_5

    iget-object v1, p0, Lcom/android/gallery3d/ui/SelectionManager;->mListener:Lcom/android/gallery3d/ui/SelectionManager$SelectionListener;

    if-eqz v1, :cond_5

    .line 183
    iget-object v1, p0, Lcom/android/gallery3d/ui/SelectionManager;->mListener:Lcom/android/gallery3d/ui/SelectionManager$SelectionListener;

    invoke-interface {v1}, Lcom/android/gallery3d/ui/SelectionManager$SelectionListener;->onSelectionLimitExceed()V

    goto :goto_1

    .line 187
    :cond_5
    iget-object v1, p0, Lcom/android/gallery3d/ui/SelectionManager;->mClickedSet:Ljava/util/Set;

    invoke-interface {v1, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method
