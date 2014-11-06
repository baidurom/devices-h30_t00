.class Lcom/android/gallery3d/data/LocationClustering$LocationDivideThread;
.super Ljava/lang/Thread;
.source "LocationClustering.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/gallery3d/data/LocationClustering;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "LocationDivideThread"
.end annotation


# instance fields
.field private volatile mActive:Z

.field private mBaseSet:Lcom/android/gallery3d/data/MediaSet;

.field final synthetic this$0:Lcom/android/gallery3d/data/LocationClustering;


# direct methods
.method public constructor <init>(Lcom/android/gallery3d/data/LocationClustering;Lcom/android/gallery3d/data/MediaSet;)V
    .locals 1
    .parameter
    .parameter "baseSet"

    .prologue
    .line 139
    iput-object p1, p0, Lcom/android/gallery3d/data/LocationClustering$LocationDivideThread;->this$0:Lcom/android/gallery3d/data/LocationClustering;

    .line 140
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 137
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/gallery3d/data/LocationClustering$LocationDivideThread;->mActive:Z

    .line 141
    iput-object p2, p0, Lcom/android/gallery3d/data/LocationClustering$LocationDivideThread;->mBaseSet:Lcom/android/gallery3d/data/MediaSet;

    .line 142
    return-void
.end method


# virtual methods
.method public run()V
    .locals 47

    .prologue
    .line 145
    const/16 v3, 0xa

    invoke-static {v3}, Landroid/os/Process;->setThreadPriority(I)V

    .line 147
    :goto_0
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/gallery3d/data/LocationClustering$LocationDivideThread;->mActive:Z

    if-eqz v3, :cond_1e

    .line 149
    invoke-static {}, Lcom/android/gallery3d/data/LocationClustering;->access$100()Ljava/lang/Object;

    move-result-object v4

    monitor-enter v4

    .line 150
    :try_start_0
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/gallery3d/data/LocationClustering$LocationDivideThread;->this$0:Lcom/android/gallery3d/data/LocationClustering;

    #getter for: Lcom/android/gallery3d/data/LocationClustering;->mClusters:Ljava/util/ArrayList;
    invoke-static {v3}, Lcom/android/gallery3d/data/LocationClustering;->access$200(Lcom/android/gallery3d/data/LocationClustering;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 151
    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 153
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/gallery3d/data/LocationClustering$LocationDivideThread;->this$0:Lcom/android/gallery3d/data/LocationClustering;

    const/4 v4, 0x0

    #setter for: Lcom/android/gallery3d/data/LocationClustering;->mNeedReload:Z
    invoke-static {v3, v4}, Lcom/android/gallery3d/data/LocationClustering;->access$302(Lcom/android/gallery3d/data/LocationClustering;Z)Z

    .line 154
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/gallery3d/data/LocationClustering$LocationDivideThread;->mBaseSet:Lcom/android/gallery3d/data/MediaSet;

    invoke-virtual {v3}, Lcom/android/gallery3d/data/MediaSet;->getTotalMediaItemCount()I

    move-result v44

    .line 155
    .local v44, total:I
    move/from16 v0, v44

    new-array v12, v0, [Lcom/android/gallery3d/data/LocationClustering$SmallItem;

    .line 157
    .local v12, buf:[Lcom/android/gallery3d/data/LocationClustering$SmallItem;
    const/4 v3, 0x2

    new-array v0, v3, [D

    move-object/from16 v32, v0

    .line 159
    .local v32, latLong:[D
    :try_start_1
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/gallery3d/data/LocationClustering$LocationDivideThread;->mBaseSet:Lcom/android/gallery3d/data/MediaSet;

    new-instance v4, Lcom/android/gallery3d/data/LocationClustering$LocationDivideThread$1;

    move-object/from16 v0, p0

    move/from16 v1, v44

    move-object/from16 v2, v32

    invoke-direct {v4, v0, v1, v2, v12}, Lcom/android/gallery3d/data/LocationClustering$LocationDivideThread$1;-><init>(Lcom/android/gallery3d/data/LocationClustering$LocationDivideThread;I[D[Lcom/android/gallery3d/data/LocationClustering$SmallItem;)V

    invoke-virtual {v3, v4}, Lcom/android/gallery3d/data/MediaSet;->enumerateTotalMediaItems(Lcom/android/gallery3d/data/MediaSet$ItemConsumer;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 178
    new-instance v45, Ljava/util/ArrayList;

    invoke-direct/range {v45 .. v45}, Ljava/util/ArrayList;-><init>()V

    .line 179
    .local v45, withLatLong:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/gallery3d/data/LocationClustering$SmallItem;>;"
    new-instance v46, Ljava/util/ArrayList;

    invoke-direct/range {v46 .. v46}, Ljava/util/ArrayList;-><init>()V

    .line 180
    .local v46, withoutLatLong:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/gallery3d/data/LocationClustering$SmallItem;>;"
    new-instance v38, Ljava/util/ArrayList;

    invoke-direct/range {v38 .. v38}, Ljava/util/ArrayList;-><init>()V

    .line 181
    .local v38, points:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/gallery3d/data/LocationClustering$Point;>;"
    const/16 v25, 0x0

    .local v25, i:I
    :goto_1
    move/from16 v0, v25

    move/from16 v1, v44

    if-ge v0, v1, :cond_2

    .line 182
    aget-object v40, v12, v25

    .line 183
    .local v40, s:Lcom/android/gallery3d/data/LocationClustering$SmallItem;
    if-nez v40, :cond_0

    .line 181
    :goto_2
    add-int/lit8 v25, v25, 0x1

    goto :goto_1

    .line 151
    .end local v12           #buf:[Lcom/android/gallery3d/data/LocationClustering$SmallItem;
    .end local v25           #i:I
    .end local v32           #latLong:[D
    .end local v38           #points:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/gallery3d/data/LocationClustering$Point;>;"
    .end local v40           #s:Lcom/android/gallery3d/data/LocationClustering$SmallItem;
    .end local v44           #total:I
    .end local v45           #withLatLong:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/gallery3d/data/LocationClustering$SmallItem;>;"
    .end local v46           #withoutLatLong:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/gallery3d/data/LocationClustering$SmallItem;>;"
    :catchall_0
    move-exception v3

    :try_start_2
    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v3

    .line 174
    .restart local v12       #buf:[Lcom/android/gallery3d/data/LocationClustering$SmallItem;
    .restart local v32       #latLong:[D
    .restart local v44       #total:I
    :catch_0
    move-exception v18

    .line 175
    .local v18, e:Ljava/lang/Exception;
    const-string v3, "LocationClustering"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " LocationDivideThread Exception"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual/range {v18 .. v18}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/gallery3d/data/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 184
    .end local v18           #e:Ljava/lang/Exception;
    .restart local v25       #i:I
    .restart local v38       #points:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/gallery3d/data/LocationClustering$Point;>;"
    .restart local v40       #s:Lcom/android/gallery3d/data/LocationClustering$SmallItem;
    .restart local v45       #withLatLong:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/gallery3d/data/LocationClustering$SmallItem;>;"
    .restart local v46       #withoutLatLong:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/gallery3d/data/LocationClustering$SmallItem;>;"
    :cond_0
    move-object/from16 v0, v40

    iget-wide v3, v0, Lcom/android/gallery3d/data/LocationClustering$SmallItem;->lat:D

    move-object/from16 v0, v40

    iget-wide v5, v0, Lcom/android/gallery3d/data/LocationClustering$SmallItem;->lng:D

    invoke-static {v3, v4, v5, v6}, Lcom/android/gallery3d/util/GalleryUtils;->isValidLocation(DD)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 185
    move-object/from16 v0, v45

    move-object/from16 v1, v40

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 186
    new-instance v3, Lcom/android/gallery3d/data/LocationClustering$Point;

    move-object/from16 v0, v40

    iget-wide v4, v0, Lcom/android/gallery3d/data/LocationClustering$SmallItem;->lat:D

    move-object/from16 v0, v40

    iget-wide v6, v0, Lcom/android/gallery3d/data/LocationClustering$SmallItem;->lng:D

    invoke-direct {v3, v4, v5, v6, v7}, Lcom/android/gallery3d/data/LocationClustering$Point;-><init>(DD)V

    move-object/from16 v0, v38

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 188
    :cond_1
    move-object/from16 v0, v46

    move-object/from16 v1, v40

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 191
    .end local v40           #s:Lcom/android/gallery3d/data/LocationClustering$SmallItem;
    :cond_2
    invoke-virtual/range {v46 .. v46}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_3

    .line 193
    invoke-static {}, Lcom/android/gallery3d/data/LocationClustering;->access$100()Ljava/lang/Object;

    move-result-object v4

    monitor-enter v4

    .line 194
    :try_start_3
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/gallery3d/data/LocationClustering$LocationDivideThread;->this$0:Lcom/android/gallery3d/data/LocationClustering;

    #getter for: Lcom/android/gallery3d/data/LocationClustering;->mClusters:Ljava/util/ArrayList;
    invoke-static {v3}, Lcom/android/gallery3d/data/LocationClustering;->access$200(Lcom/android/gallery3d/data/LocationClustering;)Ljava/util/ArrayList;

    move-result-object v3

    new-instance v5, Lcom/android/gallery3d/data/LocationClustering$LocationCluster;

    new-instance v6, Ljava/util/ArrayList;

    move-object/from16 v0, v46

    invoke-direct {v6, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/gallery3d/data/LocationClustering$LocationDivideThread;->this$0:Lcom/android/gallery3d/data/LocationClustering;

    #getter for: Lcom/android/gallery3d/data/LocationClustering;->mNoLocationString:Ljava/lang/String;
    invoke-static {v7}, Lcom/android/gallery3d/data/LocationClustering;->access$500(Lcom/android/gallery3d/data/LocationClustering;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v5, v6, v7}, Lcom/android/gallery3d/data/LocationClustering$LocationCluster;-><init>(Ljava/util/ArrayList;Ljava/lang/String;)V

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 195
    monitor-exit v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 197
    invoke-virtual/range {v46 .. v46}, Ljava/util/ArrayList;->clear()V

    .line 198
    const/4 v3, 0x1

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/gallery3d/data/LocationClustering$LocationDivideThread;->this$0:Lcom/android/gallery3d/data/LocationClustering;

    #getter for: Lcom/android/gallery3d/data/LocationClustering;->mFirstDivide:Z
    invoke-static {v4}, Lcom/android/gallery3d/data/LocationClustering;->access$600(Lcom/android/gallery3d/data/LocationClustering;)Z

    move-result v4

    if-ne v3, v4, :cond_3

    .line 199
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/gallery3d/data/LocationClustering$LocationDivideThread;->this$0:Lcom/android/gallery3d/data/LocationClustering;

    #calls: Lcom/android/gallery3d/data/LocationClustering;->notifyContentChanged()V
    invoke-static {v3}, Lcom/android/gallery3d/data/LocationClustering;->access$700(Lcom/android/gallery3d/data/LocationClustering;)V

    .line 202
    :cond_3
    invoke-virtual/range {v45 .. v45}, Ljava/util/ArrayList;->size()I

    move-result v42

    .line 203
    .local v42, size:I
    new-instance v37, Ljava/util/ArrayList;

    invoke-direct/range {v37 .. v37}, Ljava/util/ArrayList;-><init>()V

    .line 205
    .local v37, originDivideList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/util/ArrayList<Lcom/android/gallery3d/data/LocationClustering$SmallItem;>;>;"
    const/16 v25, 0x0

    :goto_3
    move/from16 v0, v25

    move/from16 v1, v42

    if-ge v0, v1, :cond_7

    .line 206
    move-object/from16 v0, v45

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v30

    check-cast v30, Lcom/android/gallery3d/data/LocationClustering$SmallItem;

    .line 207
    .local v30, item:Lcom/android/gallery3d/data/LocationClustering$SmallItem;
    const/16 v35, 0x0

    .line 209
    .local v35, listHasExist:Z
    const/16 v31, 0x0

    .local v31, j:I
    :goto_4
    invoke-virtual/range {v37 .. v37}, Ljava/util/ArrayList;->size()I

    move-result v3

    move/from16 v0, v31

    if-ge v0, v3, :cond_4

    .line 210
    move-object/from16 v0, v37

    move/from16 v1, v31

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/ArrayList;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Lcom/android/gallery3d/data/LocationClustering$SmallItem;

    .line 211
    .local v19, firstSmallItemInList:Lcom/android/gallery3d/data/LocationClustering$SmallItem;
    move-object/from16 v0, v19

    iget-wide v3, v0, Lcom/android/gallery3d/data/LocationClustering$SmallItem;->lat:D

    move-object/from16 v0, v30

    iget-wide v5, v0, Lcom/android/gallery3d/data/LocationClustering$SmallItem;->lat:D

    cmpl-double v3, v3, v5

    if-nez v3, :cond_6

    move-object/from16 v0, v19

    iget-wide v3, v0, Lcom/android/gallery3d/data/LocationClustering$SmallItem;->lng:D

    move-object/from16 v0, v30

    iget-wide v5, v0, Lcom/android/gallery3d/data/LocationClustering$SmallItem;->lng:D

    cmpl-double v3, v3, v5

    if-nez v3, :cond_6

    .line 212
    move-object/from16 v0, v37

    move/from16 v1, v31

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/ArrayList;

    move-object/from16 v0, v30

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 213
    const/16 v35, 0x1

    .line 217
    .end local v19           #firstSmallItemInList:Lcom/android/gallery3d/data/LocationClustering$SmallItem;
    :cond_4
    if-nez v35, :cond_5

    .line 218
    new-instance v33, Ljava/util/ArrayList;

    invoke-direct/range {v33 .. v33}, Ljava/util/ArrayList;-><init>()V

    .line 219
    .local v33, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/gallery3d/data/LocationClustering$SmallItem;>;"
    move-object/from16 v0, v33

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 220
    move-object/from16 v0, v37

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 205
    .end local v33           #list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/gallery3d/data/LocationClustering$SmallItem;>;"
    :cond_5
    add-int/lit8 v25, v25, 0x1

    goto :goto_3

    .line 195
    .end local v30           #item:Lcom/android/gallery3d/data/LocationClustering$SmallItem;
    .end local v31           #j:I
    .end local v35           #listHasExist:Z
    .end local v37           #originDivideList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/util/ArrayList<Lcom/android/gallery3d/data/LocationClustering$SmallItem;>;>;"
    .end local v42           #size:I
    :catchall_1
    move-exception v3

    :try_start_4
    monitor-exit v4
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v3

    .line 209
    .restart local v19       #firstSmallItemInList:Lcom/android/gallery3d/data/LocationClustering$SmallItem;
    .restart local v30       #item:Lcom/android/gallery3d/data/LocationClustering$SmallItem;
    .restart local v31       #j:I
    .restart local v35       #listHasExist:Z
    .restart local v37       #originDivideList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/util/ArrayList<Lcom/android/gallery3d/data/LocationClustering$SmallItem;>;>;"
    .restart local v42       #size:I
    :cond_6
    add-int/lit8 v31, v31, 0x1

    goto :goto_4

    .line 223
    .end local v19           #firstSmallItemInList:Lcom/android/gallery3d/data/LocationClustering$SmallItem;
    .end local v30           #item:Lcom/android/gallery3d/data/LocationClustering$SmallItem;
    .end local v31           #j:I
    .end local v35           #listHasExist:Z
    :cond_7
    invoke-virtual/range {v37 .. v37}, Ljava/util/ArrayList;->size()I

    move-result v3

    new-array v0, v3, [I

    move-object/from16 v23, v0

    .line 224
    .local v23, hasAddedToCluster:[I
    new-instance v41, Ljava/util/ArrayList;

    invoke-direct/range {v41 .. v41}, Ljava/util/ArrayList;-><init>()V

    .line 225
    .local v41, secondDivide:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/util/ArrayList<Ljava/lang/Integer;>;>;"
    const/16 v25, 0x0

    :goto_5
    move-object/from16 v0, v23

    array-length v3, v0

    move/from16 v0, v25

    if-ge v0, v3, :cond_b

    .line 226
    aget v3, v23, v25

    if-nez v3, :cond_a

    .line 227
    move-object/from16 v0, v37

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/ArrayList;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Lcom/android/gallery3d/data/LocationClustering$SmallItem;

    .line 228
    .local v21, gpsPoint1:Lcom/android/gallery3d/data/LocationClustering$SmallItem;
    const/4 v3, 0x1

    aput v3, v23, v25

    .line 229
    new-instance v34, Ljava/util/ArrayList;

    invoke-direct/range {v34 .. v34}, Ljava/util/ArrayList;-><init>()V

    .line 230
    .local v34, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    invoke-static/range {v25 .. v25}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    move-object/from16 v0, v34

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 231
    add-int/lit8 v31, v25, 0x1

    .restart local v31       #j:I
    :goto_6
    move-object/from16 v0, v23

    array-length v3, v0

    move/from16 v0, v31

    if-ge v0, v3, :cond_9

    .line 232
    aget v3, v23, v31

    if-nez v3, :cond_8

    .line 233
    move-object/from16 v0, v37

    move/from16 v1, v31

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/ArrayList;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Lcom/android/gallery3d/data/LocationClustering$SmallItem;

    .line 234
    .local v22, gpsPoint2:Lcom/android/gallery3d/data/LocationClustering$SmallItem;
    move-object/from16 v0, v21

    iget-wide v3, v0, Lcom/android/gallery3d/data/LocationClustering$SmallItem;->lat:D

    invoke-static {v3, v4}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v3

    move-object/from16 v0, v21

    iget-wide v5, v0, Lcom/android/gallery3d/data/LocationClustering$SmallItem;->lng:D

    invoke-static {v5, v6}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v5

    move-object/from16 v0, v22

    iget-wide v7, v0, Lcom/android/gallery3d/data/LocationClustering$SmallItem;->lat:D

    invoke-static {v7, v8}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v7

    move-object/from16 v0, v22

    iget-wide v9, v0, Lcom/android/gallery3d/data/LocationClustering$SmallItem;->lng:D

    invoke-static {v9, v10}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v9

    invoke-static/range {v3 .. v10}, Lcom/android/gallery3d/util/GalleryUtils;->fastDistanceMeters(DDDD)D

    move-result-wide v3

    double-to-float v0, v3

    move/from16 v17, v0

    .line 236
    .local v17, distance:F
    move/from16 v0, v17

    float-to-double v3, v0

    const-wide v5, 0x40a7700000000000L

    cmpg-double v3, v3, v5

    if-gez v3, :cond_8

    .line 237
    invoke-static/range {v31 .. v31}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    move-object/from16 v0, v34

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 238
    const/4 v3, 0x1

    aput v3, v23, v31

    .line 231
    .end local v17           #distance:F
    .end local v22           #gpsPoint2:Lcom/android/gallery3d/data/LocationClustering$SmallItem;
    :cond_8
    add-int/lit8 v31, v31, 0x1

    goto :goto_6

    .line 242
    :cond_9
    move-object/from16 v0, v41

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 225
    .end local v21           #gpsPoint1:Lcom/android/gallery3d/data/LocationClustering$SmallItem;
    .end local v31           #j:I
    .end local v34           #list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    :cond_a
    add-int/lit8 v25, v25, 0x1

    goto/16 :goto_5

    .line 245
    :cond_b
    const/16 v24, 0x0

    .line 246
    .local v24, hasUnresolvedAddress:Z
    new-instance v20, Lcom/android/gallery3d/util/ReverseGeocoder;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/gallery3d/data/LocationClustering$LocationDivideThread;->this$0:Lcom/android/gallery3d/data/LocationClustering;

    #getter for: Lcom/android/gallery3d/data/LocationClustering;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/android/gallery3d/data/LocationClustering;->access$800(Lcom/android/gallery3d/data/LocationClustering;)Landroid/content/Context;

    move-result-object v3

    move-object/from16 v0, v20

    invoke-direct {v0, v3}, Lcom/android/gallery3d/util/ReverseGeocoder;-><init>(Landroid/content/Context;)V

    .line 247
    .local v20, geocoder:Lcom/android/gallery3d/util/ReverseGeocoder;
    new-instance v15, Ljava/util/ArrayList;

    invoke-direct {v15}, Ljava/util/ArrayList;-><init>()V

    .line 248
    .local v15, clusters:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/util/ArrayList<Lcom/android/gallery3d/data/LocationClustering$SmallItem;>;>;"
    if-lez v42, :cond_13

    .line 249
    invoke-virtual/range {v41 .. v41}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v26

    :goto_7
    invoke-interface/range {v26 .. v26}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_d

    invoke-interface/range {v26 .. v26}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v28

    check-cast v28, Ljava/util/ArrayList;

    .line 250
    .local v28, intList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    new-instance v43, Ljava/util/ArrayList;

    invoke-direct/range {v43 .. v43}, Ljava/util/ArrayList;-><init>()V

    .line 251
    .local v43, tempSmallItem:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/gallery3d/data/LocationClustering$SmallItem;>;"
    invoke-virtual/range {v28 .. v28}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v27

    .local v27, i$:Ljava/util/Iterator;
    :goto_8
    invoke-interface/range {v27 .. v27}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_c

    invoke-interface/range {v27 .. v27}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v29

    check-cast v29, Ljava/lang/Integer;

    .line 252
    .local v29, integer:Ljava/lang/Integer;
    invoke-virtual/range {v29 .. v29}, Ljava/lang/Integer;->intValue()I

    move-result v3

    move-object/from16 v0, v37

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Collection;

    move-object/from16 v0, v43

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    goto :goto_8

    .line 254
    .end local v29           #integer:Ljava/lang/Integer;
    :cond_c
    move-object/from16 v0, v43

    invoke-virtual {v15, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_7

    .line 256
    .end local v27           #i$:Ljava/util/Iterator;
    .end local v28           #intList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .end local v43           #tempSmallItem:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/gallery3d/data/LocationClustering$SmallItem;>;"
    :cond_d
    invoke-virtual/range {v45 .. v45}, Ljava/util/ArrayList;->clear()V

    .line 257
    invoke-virtual {v15}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v26

    .local v26, i$:Ljava/util/Iterator;
    :cond_e
    :goto_9
    invoke-interface/range {v26 .. v26}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_13

    invoke-interface/range {v26 .. v26}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/util/ArrayList;

    .line 258
    .local v14, cluster:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/gallery3d/data/LocationClustering$SmallItem;>;"
    const/4 v3, 0x0

    invoke-virtual {v14, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/gallery3d/data/LocationClustering$SmallItem;

    iget-wide v4, v3, Lcom/android/gallery3d/data/LocationClustering$SmallItem;->lat:D

    const/4 v3, 0x0

    invoke-virtual {v14, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/gallery3d/data/LocationClustering$SmallItem;

    iget-wide v6, v3, Lcom/android/gallery3d/data/LocationClustering$SmallItem;->lng:D

    move-object/from16 v0, v20

    #calls: Lcom/android/gallery3d/data/LocationClustering;->generateName(DDLcom/android/gallery3d/util/ReverseGeocoder;)Ljava/lang/String;
    invoke-static {v4, v5, v6, v7, v0}, Lcom/android/gallery3d/data/LocationClustering;->access$900(DDLcom/android/gallery3d/util/ReverseGeocoder;)Ljava/lang/String;

    move-result-object v11

    .line 259
    .local v11, addrName:Ljava/lang/String;
    if-eqz v11, :cond_12

    .line 260
    invoke-virtual {v11}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_e

    .line 262
    invoke-static {}, Lcom/android/gallery3d/data/LocationClustering;->access$100()Ljava/lang/Object;

    move-result-object v4

    monitor-enter v4

    .line 263
    const/16 v39, -0x1

    .line 264
    .local v39, position:I
    const/16 v25, 0x0

    :goto_a
    :try_start_5
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/gallery3d/data/LocationClustering$LocationDivideThread;->this$0:Lcom/android/gallery3d/data/LocationClustering;

    #getter for: Lcom/android/gallery3d/data/LocationClustering;->mClusters:Ljava/util/ArrayList;
    invoke-static {v3}, Lcom/android/gallery3d/data/LocationClustering;->access$200(Lcom/android/gallery3d/data/LocationClustering;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    move/from16 v0, v25

    if-ge v0, v3, :cond_f

    .line 265
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/gallery3d/data/LocationClustering$LocationDivideThread;->this$0:Lcom/android/gallery3d/data/LocationClustering;

    #getter for: Lcom/android/gallery3d/data/LocationClustering;->mClusters:Ljava/util/ArrayList;
    invoke-static {v3}, Lcom/android/gallery3d/data/LocationClustering;->access$200(Lcom/android/gallery3d/data/LocationClustering;)Ljava/util/ArrayList;

    move-result-object v3

    move/from16 v0, v25

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/gallery3d/data/LocationClustering$LocationCluster;

    #getter for: Lcom/android/gallery3d/data/LocationClustering$LocationCluster;->mName:Ljava/lang/String;
    invoke-static {v3}, Lcom/android/gallery3d/data/LocationClustering$LocationCluster;->access$1000(Lcom/android/gallery3d/data/LocationClustering$LocationCluster;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_10

    .line 266
    move/from16 v39, v25

    .line 270
    :cond_f
    const/4 v3, -0x1

    move/from16 v0, v39

    if-eq v0, v3, :cond_11

    .line 271
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/gallery3d/data/LocationClustering$LocationDivideThread;->this$0:Lcom/android/gallery3d/data/LocationClustering;

    #getter for: Lcom/android/gallery3d/data/LocationClustering;->mClusters:Ljava/util/ArrayList;
    invoke-static {v3}, Lcom/android/gallery3d/data/LocationClustering;->access$200(Lcom/android/gallery3d/data/LocationClustering;)Ljava/util/ArrayList;

    move-result-object v3

    move/from16 v0, v39

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/gallery3d/data/LocationClustering$LocationCluster;

    #getter for: Lcom/android/gallery3d/data/LocationClustering$LocationCluster;->mCluster:Ljava/util/ArrayList;
    invoke-static {v3}, Lcom/android/gallery3d/data/LocationClustering$LocationCluster;->access$000(Lcom/android/gallery3d/data/LocationClustering$LocationCluster;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3, v14}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 275
    :goto_b
    monitor-exit v4
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 277
    const/4 v3, 0x1

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/gallery3d/data/LocationClustering$LocationDivideThread;->this$0:Lcom/android/gallery3d/data/LocationClustering;

    #getter for: Lcom/android/gallery3d/data/LocationClustering;->mFirstDivide:Z
    invoke-static {v4}, Lcom/android/gallery3d/data/LocationClustering;->access$600(Lcom/android/gallery3d/data/LocationClustering;)Z

    move-result v4

    if-ne v3, v4, :cond_e

    .line 278
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/gallery3d/data/LocationClustering$LocationDivideThread;->this$0:Lcom/android/gallery3d/data/LocationClustering;

    #calls: Lcom/android/gallery3d/data/LocationClustering;->notifyContentChanged()V
    invoke-static {v3}, Lcom/android/gallery3d/data/LocationClustering;->access$700(Lcom/android/gallery3d/data/LocationClustering;)V

    goto/16 :goto_9

    .line 264
    :cond_10
    add-int/lit8 v25, v25, 0x1

    goto :goto_a

    .line 273
    :cond_11
    :try_start_6
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/gallery3d/data/LocationClustering$LocationDivideThread;->this$0:Lcom/android/gallery3d/data/LocationClustering;

    #getter for: Lcom/android/gallery3d/data/LocationClustering;->mClusters:Ljava/util/ArrayList;
    invoke-static {v3}, Lcom/android/gallery3d/data/LocationClustering;->access$200(Lcom/android/gallery3d/data/LocationClustering;)Ljava/util/ArrayList;

    move-result-object v3

    const/4 v5, 0x0

    new-instance v6, Lcom/android/gallery3d/data/LocationClustering$LocationCluster;

    invoke-direct {v6, v14, v11}, Lcom/android/gallery3d/data/LocationClustering$LocationCluster;-><init>(Ljava/util/ArrayList;Ljava/lang/String;)V

    invoke-virtual {v3, v5, v6}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    goto :goto_b

    .line 275
    :catchall_2
    move-exception v3

    monitor-exit v4
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    throw v3

    .line 283
    .end local v39           #position:I
    :cond_12
    move-object/from16 v0, v46

    invoke-virtual {v0, v14}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 284
    const/16 v24, 0x1

    goto/16 :goto_9

    .line 288
    .end local v11           #addrName:Ljava/lang/String;
    .end local v14           #cluster:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/gallery3d/data/LocationClustering$SmallItem;>;"
    .end local v26           #i$:Ljava/util/Iterator;
    :cond_13
    invoke-virtual/range {v45 .. v45}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_14

    .line 289
    move-object/from16 v0, v46

    move-object/from16 v1, v45

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 291
    :cond_14
    invoke-virtual/range {v46 .. v46}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_16

    .line 292
    const/16 v39, -0x1

    .line 294
    .restart local v39       #position:I
    invoke-static {}, Lcom/android/gallery3d/data/LocationClustering;->access$100()Ljava/lang/Object;

    move-result-object v4

    monitor-enter v4

    .line 295
    const/16 v25, 0x0

    :goto_c
    :try_start_7
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/gallery3d/data/LocationClustering$LocationDivideThread;->this$0:Lcom/android/gallery3d/data/LocationClustering;

    #getter for: Lcom/android/gallery3d/data/LocationClustering;->mClusters:Ljava/util/ArrayList;
    invoke-static {v3}, Lcom/android/gallery3d/data/LocationClustering;->access$200(Lcom/android/gallery3d/data/LocationClustering;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    move/from16 v0, v25

    if-ge v0, v3, :cond_15

    .line 296
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/gallery3d/data/LocationClustering$LocationDivideThread;->this$0:Lcom/android/gallery3d/data/LocationClustering;

    #getter for: Lcom/android/gallery3d/data/LocationClustering;->mClusters:Ljava/util/ArrayList;
    invoke-static {v3}, Lcom/android/gallery3d/data/LocationClustering;->access$200(Lcom/android/gallery3d/data/LocationClustering;)Ljava/util/ArrayList;

    move-result-object v3

    move/from16 v0, v25

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/gallery3d/data/LocationClustering$LocationCluster;

    #getter for: Lcom/android/gallery3d/data/LocationClustering$LocationCluster;->mName:Ljava/lang/String;
    invoke-static {v3}, Lcom/android/gallery3d/data/LocationClustering$LocationCluster;->access$1000(Lcom/android/gallery3d/data/LocationClustering$LocationCluster;)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/gallery3d/data/LocationClustering$LocationDivideThread;->this$0:Lcom/android/gallery3d/data/LocationClustering;

    #getter for: Lcom/android/gallery3d/data/LocationClustering;->mNoLocationString:Ljava/lang/String;
    invoke-static {v5}, Lcom/android/gallery3d/data/LocationClustering;->access$500(Lcom/android/gallery3d/data/LocationClustering;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_17

    .line 297
    move/from16 v39, v25

    .line 301
    :cond_15
    const/4 v3, -0x1

    move/from16 v0, v39

    if-eq v0, v3, :cond_18

    .line 302
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/gallery3d/data/LocationClustering$LocationDivideThread;->this$0:Lcom/android/gallery3d/data/LocationClustering;

    #getter for: Lcom/android/gallery3d/data/LocationClustering;->mClusters:Ljava/util/ArrayList;
    invoke-static {v3}, Lcom/android/gallery3d/data/LocationClustering;->access$200(Lcom/android/gallery3d/data/LocationClustering;)Ljava/util/ArrayList;

    move-result-object v3

    move/from16 v0, v39

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/gallery3d/data/LocationClustering$LocationCluster;

    #getter for: Lcom/android/gallery3d/data/LocationClustering$LocationCluster;->mCluster:Ljava/util/ArrayList;
    invoke-static {v3}, Lcom/android/gallery3d/data/LocationClustering$LocationCluster;->access$000(Lcom/android/gallery3d/data/LocationClustering$LocationCluster;)Ljava/util/ArrayList;

    move-result-object v3

    move-object/from16 v0, v46

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 306
    :goto_d
    monitor-exit v4
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_4

    .line 308
    const/4 v3, 0x1

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/gallery3d/data/LocationClustering$LocationDivideThread;->this$0:Lcom/android/gallery3d/data/LocationClustering;

    #getter for: Lcom/android/gallery3d/data/LocationClustering;->mFirstDivide:Z
    invoke-static {v4}, Lcom/android/gallery3d/data/LocationClustering;->access$600(Lcom/android/gallery3d/data/LocationClustering;)Z

    move-result v4

    if-ne v3, v4, :cond_16

    .line 309
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/gallery3d/data/LocationClustering$LocationDivideThread;->this$0:Lcom/android/gallery3d/data/LocationClustering;

    #calls: Lcom/android/gallery3d/data/LocationClustering;->notifyContentChanged()V
    invoke-static {v3}, Lcom/android/gallery3d/data/LocationClustering;->access$700(Lcom/android/gallery3d/data/LocationClustering;)V

    .line 312
    .end local v39           #position:I
    :cond_16
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/gallery3d/data/LocationClustering$LocationDivideThread;->this$0:Lcom/android/gallery3d/data/LocationClustering;

    #getter for: Lcom/android/gallery3d/data/LocationClustering;->mNeedReload:Z
    invoke-static {v3}, Lcom/android/gallery3d/data/LocationClustering;->access$300(Lcom/android/gallery3d/data/LocationClustering;)Z

    move-result v3

    if-nez v3, :cond_1d

    .line 314
    invoke-static {}, Lcom/android/gallery3d/data/LocationClustering;->access$100()Ljava/lang/Object;

    move-result-object v4

    monitor-enter v4

    .line 315
    :try_start_8
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/gallery3d/data/LocationClustering$LocationDivideThread;->this$0:Lcom/android/gallery3d/data/LocationClustering;

    #getter for: Lcom/android/gallery3d/data/LocationClustering;->mClusters:Ljava/util/ArrayList;
    invoke-static {v3}, Lcom/android/gallery3d/data/LocationClustering;->access$200(Lcom/android/gallery3d/data/LocationClustering;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v26

    .restart local v26       #i$:Ljava/util/Iterator;
    :goto_e
    invoke-interface/range {v26 .. v26}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_19

    invoke-interface/range {v26 .. v26}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/android/gallery3d/data/LocationClustering$LocationCluster;

    .line 316
    .local v13, c:Lcom/android/gallery3d/data/LocationClustering$LocationCluster;
    #getter for: Lcom/android/gallery3d/data/LocationClustering$LocationCluster;->mCluster:Ljava/util/ArrayList;
    invoke-static {v13}, Lcom/android/gallery3d/data/LocationClustering$LocationCluster;->access$000(Lcom/android/gallery3d/data/LocationClustering$LocationCluster;)Ljava/util/ArrayList;

    move-result-object v3

    sget-object v5, Lcom/android/gallery3d/data/LocationClustering$SmallItem;->COMPARATOR:Ljava/util/Comparator;

    invoke-static {v3, v5}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    goto :goto_e

    .line 328
    .end local v13           #c:Lcom/android/gallery3d/data/LocationClustering$LocationCluster;
    .end local v26           #i$:Ljava/util/Iterator;
    :catchall_3
    move-exception v3

    monitor-exit v4
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    throw v3

    .line 295
    .restart local v39       #position:I
    :cond_17
    add-int/lit8 v25, v25, 0x1

    goto/16 :goto_c

    .line 304
    :cond_18
    :try_start_9
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/gallery3d/data/LocationClustering$LocationDivideThread;->this$0:Lcom/android/gallery3d/data/LocationClustering;

    #getter for: Lcom/android/gallery3d/data/LocationClustering;->mClusters:Ljava/util/ArrayList;
    invoke-static {v3}, Lcom/android/gallery3d/data/LocationClustering;->access$200(Lcom/android/gallery3d/data/LocationClustering;)Ljava/util/ArrayList;

    move-result-object v3

    new-instance v5, Lcom/android/gallery3d/data/LocationClustering$LocationCluster;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/gallery3d/data/LocationClustering$LocationDivideThread;->this$0:Lcom/android/gallery3d/data/LocationClustering;

    #getter for: Lcom/android/gallery3d/data/LocationClustering;->mNoLocationString:Ljava/lang/String;
    invoke-static {v6}, Lcom/android/gallery3d/data/LocationClustering;->access$500(Lcom/android/gallery3d/data/LocationClustering;)Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, v46

    invoke-direct {v5, v0, v6}, Lcom/android/gallery3d/data/LocationClustering$LocationCluster;-><init>(Ljava/util/ArrayList;Ljava/lang/String;)V

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_d

    .line 306
    :catchall_4
    move-exception v3

    monitor-exit v4
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_4

    throw v3

    .line 318
    .end local v39           #position:I
    .restart local v26       #i$:Ljava/util/Iterator;
    :cond_19
    const/16 v36, 0x0

    .line 319
    .local v36, mNoLocation:Lcom/android/gallery3d/data/LocationClustering$LocationCluster;
    :try_start_a
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/gallery3d/data/LocationClustering$LocationDivideThread;->this$0:Lcom/android/gallery3d/data/LocationClustering;

    #getter for: Lcom/android/gallery3d/data/LocationClustering;->mClusters:Ljava/util/ArrayList;
    invoke-static {v3}, Lcom/android/gallery3d/data/LocationClustering;->access$200(Lcom/android/gallery3d/data/LocationClustering;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v16

    .line 320
    .local v16, clustersize:I
    if-lez v16, :cond_1a

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/gallery3d/data/LocationClustering$LocationDivideThread;->this$0:Lcom/android/gallery3d/data/LocationClustering;

    #getter for: Lcom/android/gallery3d/data/LocationClustering;->mClusters:Ljava/util/ArrayList;
    invoke-static {v3}, Lcom/android/gallery3d/data/LocationClustering;->access$200(Lcom/android/gallery3d/data/LocationClustering;)Ljava/util/ArrayList;

    move-result-object v3

    add-int/lit8 v5, v16, -0x1

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/gallery3d/data/LocationClustering$LocationCluster;

    #getter for: Lcom/android/gallery3d/data/LocationClustering$LocationCluster;->mName:Ljava/lang/String;
    invoke-static {v3}, Lcom/android/gallery3d/data/LocationClustering$LocationCluster;->access$1000(Lcom/android/gallery3d/data/LocationClustering$LocationCluster;)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/gallery3d/data/LocationClustering$LocationDivideThread;->this$0:Lcom/android/gallery3d/data/LocationClustering;

    #getter for: Lcom/android/gallery3d/data/LocationClustering;->mNoLocationString:Ljava/lang/String;
    invoke-static {v5}, Lcom/android/gallery3d/data/LocationClustering;->access$500(Lcom/android/gallery3d/data/LocationClustering;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1a

    .line 321
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/gallery3d/data/LocationClustering$LocationDivideThread;->this$0:Lcom/android/gallery3d/data/LocationClustering;

    #getter for: Lcom/android/gallery3d/data/LocationClustering;->mClusters:Ljava/util/ArrayList;
    invoke-static {v3}, Lcom/android/gallery3d/data/LocationClustering;->access$200(Lcom/android/gallery3d/data/LocationClustering;)Ljava/util/ArrayList;

    move-result-object v3

    add-int/lit8 v5, v16, -0x1

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v36

    .end local v36           #mNoLocation:Lcom/android/gallery3d/data/LocationClustering$LocationCluster;
    check-cast v36, Lcom/android/gallery3d/data/LocationClustering$LocationCluster;

    .line 322
    .restart local v36       #mNoLocation:Lcom/android/gallery3d/data/LocationClustering$LocationCluster;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/gallery3d/data/LocationClustering$LocationDivideThread;->this$0:Lcom/android/gallery3d/data/LocationClustering;

    #getter for: Lcom/android/gallery3d/data/LocationClustering;->mClusters:Ljava/util/ArrayList;
    invoke-static {v3}, Lcom/android/gallery3d/data/LocationClustering;->access$200(Lcom/android/gallery3d/data/LocationClustering;)Ljava/util/ArrayList;

    move-result-object v3

    add-int/lit8 v5, v16, -0x1

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 324
    :cond_1a
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/gallery3d/data/LocationClustering$LocationDivideThread;->this$0:Lcom/android/gallery3d/data/LocationClustering;

    #getter for: Lcom/android/gallery3d/data/LocationClustering;->mClusters:Ljava/util/ArrayList;
    invoke-static {v3}, Lcom/android/gallery3d/data/LocationClustering;->access$200(Lcom/android/gallery3d/data/LocationClustering;)Ljava/util/ArrayList;

    move-result-object v3

    sget-object v5, Lcom/android/gallery3d/data/LocationClustering$LocationCluster;->COMPARATOR:Ljava/util/Comparator;

    invoke-static {v3, v5}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 325
    if-eqz v36, :cond_1b

    .line 326
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/gallery3d/data/LocationClustering$LocationDivideThread;->this$0:Lcom/android/gallery3d/data/LocationClustering;

    #getter for: Lcom/android/gallery3d/data/LocationClustering;->mClusters:Ljava/util/ArrayList;
    invoke-static {v3}, Lcom/android/gallery3d/data/LocationClustering;->access$200(Lcom/android/gallery3d/data/LocationClustering;)Ljava/util/ArrayList;

    move-result-object v3

    move-object/from16 v0, v36

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 328
    :cond_1b
    monitor-exit v4
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_3

    .line 330
    if-eqz v24, :cond_1c

    .line 331
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/gallery3d/data/LocationClustering$LocationDivideThread;->this$0:Lcom/android/gallery3d/data/LocationClustering;

    #getter for: Lcom/android/gallery3d/data/LocationClustering;->mHandler:Landroid/os/Handler;
    invoke-static {v3}, Lcom/android/gallery3d/data/LocationClustering;->access$1100(Lcom/android/gallery3d/data/LocationClustering;)Landroid/os/Handler;

    move-result-object v3

    new-instance v4, Lcom/android/gallery3d/data/LocationClustering$LocationDivideThread$2;

    move-object/from16 v0, p0

    invoke-direct {v4, v0}, Lcom/android/gallery3d/data/LocationClustering$LocationDivideThread$2;-><init>(Lcom/android/gallery3d/data/LocationClustering$LocationDivideThread;)V

    invoke-virtual {v3, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 341
    :cond_1c
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/gallery3d/data/LocationClustering$LocationDivideThread;->this$0:Lcom/android/gallery3d/data/LocationClustering;

    const/4 v4, 0x0

    #setter for: Lcom/android/gallery3d/data/LocationClustering;->mLoading:Z
    invoke-static {v3, v4}, Lcom/android/gallery3d/data/LocationClustering;->access$1202(Lcom/android/gallery3d/data/LocationClustering;Z)Z

    .line 342
    invoke-virtual/range {p0 .. p0}, Lcom/android/gallery3d/data/LocationClustering$LocationDivideThread;->terminate()V

    .line 343
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/gallery3d/data/LocationClustering$LocationDivideThread;->this$0:Lcom/android/gallery3d/data/LocationClustering;

    #calls: Lcom/android/gallery3d/data/LocationClustering;->notifyDivideComplete()V
    invoke-static {v3}, Lcom/android/gallery3d/data/LocationClustering;->access$1300(Lcom/android/gallery3d/data/LocationClustering;)V

    .line 345
    .end local v16           #clustersize:I
    .end local v26           #i$:Ljava/util/Iterator;
    .end local v36           #mNoLocation:Lcom/android/gallery3d/data/LocationClustering$LocationCluster;
    :cond_1d
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/gallery3d/data/LocationClustering$LocationDivideThread;->this$0:Lcom/android/gallery3d/data/LocationClustering;

    const/4 v4, 0x0

    #setter for: Lcom/android/gallery3d/data/LocationClustering;->mFirstDivide:Z
    invoke-static {v3, v4}, Lcom/android/gallery3d/data/LocationClustering;->access$602(Lcom/android/gallery3d/data/LocationClustering;Z)Z

    goto/16 :goto_0

    .line 347
    .end local v12           #buf:[Lcom/android/gallery3d/data/LocationClustering$SmallItem;
    .end local v15           #clusters:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/util/ArrayList<Lcom/android/gallery3d/data/LocationClustering$SmallItem;>;>;"
    .end local v20           #geocoder:Lcom/android/gallery3d/util/ReverseGeocoder;
    .end local v23           #hasAddedToCluster:[I
    .end local v24           #hasUnresolvedAddress:Z
    .end local v25           #i:I
    .end local v32           #latLong:[D
    .end local v37           #originDivideList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/util/ArrayList<Lcom/android/gallery3d/data/LocationClustering$SmallItem;>;>;"
    .end local v38           #points:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/gallery3d/data/LocationClustering$Point;>;"
    .end local v41           #secondDivide:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/util/ArrayList<Ljava/lang/Integer;>;>;"
    .end local v42           #size:I
    .end local v44           #total:I
    .end local v45           #withLatLong:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/gallery3d/data/LocationClustering$SmallItem;>;"
    .end local v46           #withoutLatLong:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/gallery3d/data/LocationClustering$SmallItem;>;"
    :cond_1e
    return-void
.end method

.method public declared-synchronized terminate()V
    .locals 1

    .prologue
    .line 349
    monitor-enter p0

    const/4 v0, 0x0

    :try_start_0
    iput-boolean v0, p0, Lcom/android/gallery3d/data/LocationClustering$LocationDivideThread;->mActive:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 350
    monitor-exit p0

    return-void

    .line 349
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
