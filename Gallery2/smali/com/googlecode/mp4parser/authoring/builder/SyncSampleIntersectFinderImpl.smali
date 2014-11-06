.class public Lcom/googlecode/mp4parser/authoring/builder/SyncSampleIntersectFinderImpl;
.super Ljava/lang/Object;
.source "SyncSampleIntersectFinderImpl.java"

# interfaces
.implements Lcom/googlecode/mp4parser/authoring/builder/FragmentIntersectionFinder;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/googlecode/mp4parser/authoring/builder/SyncSampleIntersectFinderImpl$CacheTuple;
    }
.end annotation


# static fields
.field private static LOG:Ljava/util/logging/Logger;

.field private static getSampleNumbersCache:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcom/googlecode/mp4parser/authoring/builder/SyncSampleIntersectFinderImpl$CacheTuple;",
            "[J>;"
        }
    .end annotation
.end field

.field private static getTimesCache:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcom/googlecode/mp4parser/authoring/builder/SyncSampleIntersectFinderImpl$CacheTuple;",
            "[J>;"
        }
    .end annotation
.end field


# instance fields
.field private final minFragmentDurationSeconds:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 36
    const-class v0, Lcom/googlecode/mp4parser/authoring/builder/SyncSampleIntersectFinderImpl;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lcom/googlecode/mp4parser/authoring/builder/SyncSampleIntersectFinderImpl;->LOG:Ljava/util/logging/Logger;

    .line 37
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lcom/googlecode/mp4parser/authoring/builder/SyncSampleIntersectFinderImpl;->getTimesCache:Ljava/util/Map;

    .line 38
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lcom/googlecode/mp4parser/authoring/builder/SyncSampleIntersectFinderImpl;->getSampleNumbersCache:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 42
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 43
    const/4 v0, 0x0

    iput v0, p0, Lcom/googlecode/mp4parser/authoring/builder/SyncSampleIntersectFinderImpl;->minFragmentDurationSeconds:I

    .line 44
    return-void
.end method

.method public constructor <init>(I)V
    .locals 0
    .parameter "minFragmentDurationSeconds"

    .prologue
    .line 52
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 53
    iput p1, p0, Lcom/googlecode/mp4parser/authoring/builder/SyncSampleIntersectFinderImpl;->minFragmentDurationSeconds:I

    .line 54
    return-void
.end method

.method private static calculateTracktimesScalingFactor(Lcom/googlecode/mp4parser/authoring/Movie;Lcom/googlecode/mp4parser/authoring/Track;)J
    .locals 8
    .parameter "m"
    .parameter "track"

    .prologue
    .line 294
    const-wide/16 v1, 0x1

    .line 295
    .local v1, timeScale:J
    invoke-virtual {p0}, Lcom/googlecode/mp4parser/authoring/Movie;->getTracks()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/googlecode/mp4parser/authoring/Track;

    .line 296
    .local v3, track1:Lcom/googlecode/mp4parser/authoring/Track;
    invoke-interface {v3}, Lcom/googlecode/mp4parser/authoring/Track;->getHandler()Ljava/lang/String;

    move-result-object v4

    invoke-interface {p1}, Lcom/googlecode/mp4parser/authoring/Track;->getHandler()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 297
    invoke-interface {v3}, Lcom/googlecode/mp4parser/authoring/Track;->getTrackMetaData()Lcom/googlecode/mp4parser/authoring/TrackMetaData;

    move-result-object v4

    invoke-virtual {v4}, Lcom/googlecode/mp4parser/authoring/TrackMetaData;->getTimescale()J

    move-result-wide v4

    invoke-interface {p1}, Lcom/googlecode/mp4parser/authoring/Track;->getTrackMetaData()Lcom/googlecode/mp4parser/authoring/TrackMetaData;

    move-result-object v6

    invoke-virtual {v6}, Lcom/googlecode/mp4parser/authoring/TrackMetaData;->getTimescale()J

    move-result-wide v6

    cmp-long v4, v4, v6

    if-eqz v4, :cond_0

    .line 298
    invoke-interface {v3}, Lcom/googlecode/mp4parser/authoring/Track;->getTrackMetaData()Lcom/googlecode/mp4parser/authoring/TrackMetaData;

    move-result-object v4

    invoke-virtual {v4}, Lcom/googlecode/mp4parser/authoring/TrackMetaData;->getTimescale()J

    move-result-wide v4

    invoke-static {v1, v2, v4, v5}, Lcom/googlecode/mp4parser/util/Math;->lcm(JJ)J

    move-result-wide v1

    goto :goto_0

    .line 302
    .end local v3           #track1:Lcom/googlecode/mp4parser/authoring/Track;
    :cond_1
    return-wide v1
.end method

.method public static getSyncSamplesTimestamps(Lcom/googlecode/mp4parser/authoring/Movie;Lcom/googlecode/mp4parser/authoring/Track;)Ljava/util/List;
    .locals 7
    .parameter "movie"
    .parameter "track"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/googlecode/mp4parser/authoring/Movie;",
            "Lcom/googlecode/mp4parser/authoring/Track;",
            ")",
            "Ljava/util/List",
            "<[J>;"
        }
    .end annotation

    .prologue
    .line 163
    new-instance v4, Ljava/util/LinkedList;

    invoke-direct {v4}, Ljava/util/LinkedList;-><init>()V

    .line 164
    .local v4, times:Ljava/util/List;,"Ljava/util/List<[J>;"
    invoke-virtual {p0}, Lcom/googlecode/mp4parser/authoring/Movie;->getTracks()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/googlecode/mp4parser/authoring/Track;

    .line 165
    .local v0, currentTrack:Lcom/googlecode/mp4parser/authoring/Track;
    invoke-interface {v0}, Lcom/googlecode/mp4parser/authoring/Track;->getHandler()Ljava/lang/String;

    move-result-object v5

    invoke-interface {p1}, Lcom/googlecode/mp4parser/authoring/Track;->getHandler()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 166
    invoke-interface {v0}, Lcom/googlecode/mp4parser/authoring/Track;->getSyncSamples()[J

    move-result-object v1

    .line 167
    .local v1, currentTrackSyncSamples:[J
    if-eqz v1, :cond_0

    array-length v5, v1

    if-lez v5, :cond_0

    .line 168
    invoke-static {v0, p0}, Lcom/googlecode/mp4parser/authoring/builder/SyncSampleIntersectFinderImpl;->getTimes(Lcom/googlecode/mp4parser/authoring/Track;Lcom/googlecode/mp4parser/authoring/Movie;)[J

    move-result-object v2

    .line 169
    .local v2, currentTrackTimes:[J
    invoke-interface {v4, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 173
    .end local v0           #currentTrack:Lcom/googlecode/mp4parser/authoring/Track;
    .end local v1           #currentTrackSyncSamples:[J
    .end local v2           #currentTrackTimes:[J
    :cond_1
    return-object v4
.end method

.method private static getTimes(Lcom/googlecode/mp4parser/authoring/Track;Lcom/googlecode/mp4parser/authoring/Movie;)[J
    .locals 26
    .parameter "track"
    .parameter "m"

    .prologue
    .line 260
    new-instance v11, Lcom/googlecode/mp4parser/authoring/builder/SyncSampleIntersectFinderImpl$CacheTuple;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v11, v0, v1}, Lcom/googlecode/mp4parser/authoring/builder/SyncSampleIntersectFinderImpl$CacheTuple;-><init>(Lcom/googlecode/mp4parser/authoring/Track;Lcom/googlecode/mp4parser/authoring/Movie;)V

    .line 261
    .local v11, key:Lcom/googlecode/mp4parser/authoring/builder/SyncSampleIntersectFinderImpl$CacheTuple;
    sget-object v22, Lcom/googlecode/mp4parser/authoring/builder/SyncSampleIntersectFinderImpl;->getTimesCache:Ljava/util/Map;

    move-object/from16 v0, v22

    invoke-interface {v0, v11}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, [J

    .line 262
    .local v16, result:[J
    if-eqz v16, :cond_0

    .line 290
    .end local v16           #result:[J
    :goto_0
    return-object v16

    .line 266
    .restart local v16       #result:[J
    :cond_0
    invoke-interface/range {p0 .. p0}, Lcom/googlecode/mp4parser/authoring/Track;->getSyncSamples()[J

    move-result-object v20

    .line 267
    .local v20, syncSamples:[J
    move-object/from16 v0, v20

    array-length v0, v0

    move/from16 v22, v0

    move/from16 v0, v22

    new-array v0, v0, [J

    move-object/from16 v19, v0

    .line 268
    .local v19, syncSampleTimes:[J
    new-instance v21, Ljava/util/LinkedList;

    invoke-interface/range {p0 .. p0}, Lcom/googlecode/mp4parser/authoring/Track;->getDecodingTimeEntries()Ljava/util/List;

    move-result-object v22

    invoke-direct/range {v21 .. v22}, Ljava/util/LinkedList;-><init>(Ljava/util/Collection;)V

    .line 270
    .local v21, timeQueue:Ljava/util/Queue;,"Ljava/util/Queue<Lcom/coremedia/iso/boxes/TimeToSampleBox$Entry;>;"
    const/4 v6, 0x1

    .line 271
    .local v6, currentSample:I
    const-wide/16 v4, 0x0

    .line 272
    .local v4, currentDuration:J
    const-wide/16 v2, 0x0

    .line 273
    .local v2, currentDelta:J
    const/4 v8, 0x0

    .line 274
    .local v8, currentSyncSampleIndex:I
    const-wide/16 v12, 0x0

    .line 276
    .local v12, left:J
    move-object/from16 v0, p1

    move-object/from16 v1, p0

    invoke-static {v0, v1}, Lcom/googlecode/mp4parser/authoring/builder/SyncSampleIntersectFinderImpl;->calculateTracktimesScalingFactor(Lcom/googlecode/mp4parser/authoring/Movie;Lcom/googlecode/mp4parser/authoring/Track;)J

    move-result-wide v17

    .line 278
    .local v17, scalingFactor:J
    :goto_1
    int-to-long v0, v6

    move-wide/from16 v22, v0

    move-object/from16 v0, v20

    array-length v0, v0

    move/from16 v24, v0

    add-int/lit8 v24, v24, -0x1

    aget-wide v24, v20, v24

    cmp-long v22, v22, v24

    if-gtz v22, :cond_2

    .line 279
    add-int/lit8 v7, v6, 0x1

    .end local v6           #currentSample:I
    .local v7, currentSample:I
    int-to-long v0, v6

    move-wide/from16 v22, v0

    aget-wide v24, v20, v8

    cmp-long v22, v22, v24

    if-nez v22, :cond_1

    .line 280
    add-int/lit8 v9, v8, 0x1

    .end local v8           #currentSyncSampleIndex:I
    .local v9, currentSyncSampleIndex:I
    mul-long v22, v4, v17

    aput-wide v22, v19, v8

    move v8, v9

    .line 282
    .end local v9           #currentSyncSampleIndex:I
    .restart local v8       #currentSyncSampleIndex:I
    :cond_1
    const-wide/16 v22, 0x1

    sub-long v14, v12, v22

    .end local v12           #left:J
    .local v14, left:J
    const-wide/16 v22, 0x0

    cmp-long v22, v12, v22

    if-nez v22, :cond_3

    .line 283
    invoke-interface/range {v21 .. v21}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/coremedia/iso/boxes/TimeToSampleBox$Entry;

    .line 284
    .local v10, entry:Lcom/coremedia/iso/boxes/TimeToSampleBox$Entry;
    invoke-virtual {v10}, Lcom/coremedia/iso/boxes/TimeToSampleBox$Entry;->getCount()J

    move-result-wide v22

    const-wide/16 v24, 0x1

    sub-long v12, v22, v24

    .line 285
    .end local v14           #left:J
    .restart local v12       #left:J
    invoke-virtual {v10}, Lcom/coremedia/iso/boxes/TimeToSampleBox$Entry;->getDelta()J

    move-result-wide v2

    .line 287
    .end local v10           #entry:Lcom/coremedia/iso/boxes/TimeToSampleBox$Entry;
    :goto_2
    add-long/2addr v4, v2

    move v6, v7

    .end local v7           #currentSample:I
    .restart local v6       #currentSample:I
    goto :goto_1

    .line 289
    :cond_2
    sget-object v22, Lcom/googlecode/mp4parser/authoring/builder/SyncSampleIntersectFinderImpl;->getTimesCache:Ljava/util/Map;

    move-object/from16 v0, v22

    move-object/from16 v1, v19

    invoke-interface {v0, v11, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v16, v19

    .line 290
    goto :goto_0

    .end local v6           #currentSample:I
    .end local v12           #left:J
    .restart local v7       #currentSample:I
    .restart local v14       #left:J
    :cond_3
    move-wide v12, v14

    .end local v14           #left:J
    .restart local v12       #left:J
    goto :goto_2
.end method


# virtual methods
.method public varargs getCommonIndices([J[JJ[[J)[J
    .locals 29
    .parameter "syncSamples"
    .parameter "syncSampleTimes"
    .parameter "timeScale"
    .parameter "otherTracksTimes"

    .prologue
    .line 177
    new-instance v20, Ljava/util/LinkedList;

    invoke-direct/range {v20 .. v20}, Ljava/util/LinkedList;-><init>()V

    .line 178
    .local v20, nuSyncSamples:Ljava/util/List;,"Ljava/util/List<Ljava/lang/Long;>;"
    new-instance v18, Ljava/util/LinkedList;

    invoke-direct/range {v18 .. v18}, Ljava/util/LinkedList;-><init>()V

    .line 181
    .local v18, nuSyncSampleTimes:Ljava/util/List;,"Ljava/util/List<Ljava/lang/Long;>;"
    const/4 v10, 0x0

    .local v10, i:I
    :goto_0
    move-object/from16 v0, p2

    array-length v0, v0

    move/from16 v23, v0

    move/from16 v0, v23

    if-ge v10, v0, :cond_3

    .line 182
    const/4 v9, 0x1

    .line 183
    .local v9, foundInEveryRef:Z
    move-object/from16 v2, p5

    .local v2, arr$:[[J
    array-length v0, v2

    move/from16 v16, v0

    .local v16, len$:I
    const/4 v11, 0x0

    .local v11, i$:I
    :goto_1
    move/from16 v0, v16

    if-ge v11, v0, :cond_1

    aget-object v22, v2, v11

    .line 184
    .local v22, times:[J
    aget-wide v23, p2, v10

    invoke-static/range {v22 .. v24}, Ljava/util/Arrays;->binarySearch([JJ)I

    move-result v23

    if-ltz v23, :cond_0

    const/16 v23, 0x1

    :goto_2
    and-int v9, v9, v23

    .line 183
    add-int/lit8 v11, v11, 0x1

    goto :goto_1

    .line 184
    :cond_0
    const/16 v23, 0x0

    goto :goto_2

    .line 187
    .end local v22           #times:[J
    :cond_1
    if-eqz v9, :cond_2

    .line 189
    aget-wide v23, p1, v10

    invoke-static/range {v23 .. v24}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v23

    move-object/from16 v0, v20

    move-object/from16 v1, v23

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 190
    aget-wide v23, p2, v10

    invoke-static/range {v23 .. v24}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v23

    move-object/from16 v0, v18

    move-object/from16 v1, v23

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 181
    :cond_2
    add-int/lit8 v10, v10, 0x1

    goto :goto_0

    .line 198
    .end local v2           #arr$:[[J
    .end local v9           #foundInEveryRef:Z
    .end local v11           #i$:I
    .end local v16           #len$:I
    :cond_3
    invoke-interface/range {v20 .. v20}, Ljava/util/List;->size()I

    move-result v23

    move/from16 v0, v23

    int-to-double v0, v0

    move-wide/from16 v23, v0

    move-object/from16 v0, p1

    array-length v0, v0

    move/from16 v25, v0

    move/from16 v0, v25

    int-to-double v0, v0

    move-wide/from16 v25, v0

    const-wide/high16 v27, 0x3fd0

    mul-double v25, v25, v27

    cmpg-double v23, v23, v25

    if-gez v23, :cond_6

    .line 199
    const-string v17, ""

    .line 200
    .local v17, log:Ljava/lang/String;
    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v23

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string v24, "%5d - Common:  ["

    const/16 v25, 0x1

    move/from16 v0, v25

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v25, v0

    const/16 v26, 0x0

    invoke-interface/range {v20 .. v20}, Ljava/util/List;->size()I

    move-result v27

    invoke-static/range {v27 .. v27}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v27

    aput-object v27, v25, v26

    invoke-static/range {v24 .. v25}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    .line 201
    invoke-interface/range {v20 .. v20}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v11

    .local v11, i$:Ljava/util/Iterator;
    :goto_3
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v23

    if-eqz v23, :cond_4

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Ljava/lang/Long;

    invoke-virtual/range {v23 .. v23}, Ljava/lang/Long;->longValue()J

    move-result-wide v12

    .line 202
    .local v12, l:J
    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v23

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string v24, "%10d,"

    const/16 v25, 0x1

    move/from16 v0, v25

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v25, v0

    const/16 v26, 0x0

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v27

    aput-object v27, v25, v26

    invoke-static/range {v24 .. v25}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    goto :goto_3

    .line 204
    .end local v12           #l:J
    :cond_4
    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v23

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string v24, "]"

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    .line 205
    sget-object v23, Lcom/googlecode/mp4parser/authoring/builder/SyncSampleIntersectFinderImpl;->LOG:Ljava/util/logging/Logger;

    move-object/from16 v0, v23

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V

    .line 206
    const-string v17, ""

    .line 208
    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v23

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string v24, "%5d - In    :  ["

    const/16 v25, 0x1

    move/from16 v0, v25

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v25, v0

    const/16 v26, 0x0

    move-object/from16 v0, p1

    array-length v0, v0

    move/from16 v27, v0

    invoke-static/range {v27 .. v27}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v27

    aput-object v27, v25, v26

    invoke-static/range {v24 .. v25}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    .line 209
    move-object/from16 v2, p1

    .local v2, arr$:[J
    array-length v0, v2

    move/from16 v16, v0

    .restart local v16       #len$:I
    const/4 v11, 0x0

    .local v11, i$:I
    :goto_4
    move/from16 v0, v16

    if-ge v11, v0, :cond_5

    aget-wide v12, v2, v11

    .line 210
    .restart local v12       #l:J
    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v23

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string v24, "%10d,"

    const/16 v25, 0x1

    move/from16 v0, v25

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v25, v0

    const/16 v26, 0x0

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v27

    aput-object v27, v25, v26

    invoke-static/range {v24 .. v25}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    .line 209
    add-int/lit8 v11, v11, 0x1

    goto :goto_4

    .line 212
    .end local v12           #l:J
    :cond_5
    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v23

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string v24, "]"

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    .line 213
    sget-object v23, Lcom/googlecode/mp4parser/authoring/builder/SyncSampleIntersectFinderImpl;->LOG:Ljava/util/logging/Logger;

    move-object/from16 v0, v23

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V

    .line 214
    sget-object v23, Lcom/googlecode/mp4parser/authoring/builder/SyncSampleIntersectFinderImpl;->LOG:Ljava/util/logging/Logger;

    const-string v24, "There are less than 25% of common sync samples in the given track."

    invoke-virtual/range {v23 .. v24}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V

    .line 215
    new-instance v23, Ljava/lang/RuntimeException;

    const-string v24, "There are less than 25% of common sync samples in the given track."

    invoke-direct/range {v23 .. v24}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v23

    .line 216
    .end local v2           #arr$:[J
    .end local v11           #i$:I
    .end local v16           #len$:I
    .end local v17           #log:Ljava/lang/String;
    :cond_6
    invoke-interface/range {v20 .. v20}, Ljava/util/List;->size()I

    move-result v23

    move/from16 v0, v23

    int-to-double v0, v0

    move-wide/from16 v23, v0

    move-object/from16 v0, p1

    array-length v0, v0

    move/from16 v25, v0

    move/from16 v0, v25

    int-to-double v0, v0

    move-wide/from16 v25, v0

    const-wide/high16 v27, 0x3fe0

    mul-double v25, v25, v27

    cmpg-double v23, v23, v25

    if-gez v23, :cond_a

    .line 217
    sget-object v23, Lcom/googlecode/mp4parser/authoring/builder/SyncSampleIntersectFinderImpl;->LOG:Ljava/util/logging/Logger;

    const-string v24, "There are less than 50% of common sync samples in the given track. This is implausible but I\'m ok to continue."

    invoke-virtual/range {v23 .. v24}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 226
    :cond_7
    :goto_5
    new-instance v8, Ljava/util/LinkedList;

    invoke-direct {v8}, Ljava/util/LinkedList;-><init>()V

    .line 228
    .local v8, finalSampleList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/Long;>;"
    move-object/from16 v0, p0

    iget v0, v0, Lcom/googlecode/mp4parser/authoring/builder/SyncSampleIntersectFinderImpl;->minFragmentDurationSeconds:I

    move/from16 v23, v0

    if-lez v23, :cond_b

    .line 231
    const-wide/16 v14, -0x1

    .line 232
    .local v14, lastSyncSampleTime:J
    invoke-interface/range {v20 .. v20}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v21

    .line 233
    .local v21, nuSyncSamplesIterator:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/Long;>;"
    invoke-interface/range {v18 .. v18}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v19

    .line 234
    .local v19, nuSyncSampleTimesIterator:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/Long;>;"
    :cond_8
    :goto_6
    invoke-interface/range {v21 .. v21}, Ljava/util/Iterator;->hasNext()Z

    move-result v23

    if-eqz v23, :cond_c

    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->hasNext()Z

    move-result v23

    if-eqz v23, :cond_c

    .line 235
    invoke-interface/range {v21 .. v21}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Ljava/lang/Long;

    invoke-virtual/range {v23 .. v23}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    .line 236
    .local v3, curSyncSample:J
    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Ljava/lang/Long;

    invoke-virtual/range {v23 .. v23}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    .line 237
    .local v5, curSyncSampleTime:J
    const-wide/16 v23, -0x1

    cmp-long v23, v14, v23

    if-eqz v23, :cond_9

    sub-long v23, v5, v14

    div-long v23, v23, p3

    move-object/from16 v0, p0

    iget v0, v0, Lcom/googlecode/mp4parser/authoring/builder/SyncSampleIntersectFinderImpl;->minFragmentDurationSeconds:I

    move/from16 v25, v0

    move/from16 v0, v25

    int-to-long v0, v0

    move-wide/from16 v25, v0

    cmp-long v23, v23, v25

    if-ltz v23, :cond_8

    .line 238
    :cond_9
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-interface {v8, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 239
    move-wide v14, v5

    goto :goto_6

    .line 218
    .end local v3           #curSyncSample:J
    .end local v5           #curSyncSampleTime:J
    .end local v8           #finalSampleList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/Long;>;"
    .end local v14           #lastSyncSampleTime:J
    .end local v19           #nuSyncSampleTimesIterator:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/Long;>;"
    .end local v21           #nuSyncSamplesIterator:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/Long;>;"
    :cond_a
    invoke-interface/range {v20 .. v20}, Ljava/util/List;->size()I

    move-result v23

    move-object/from16 v0, p1

    array-length v0, v0

    move/from16 v24, v0

    move/from16 v0, v23

    move/from16 v1, v24

    if-ge v0, v1, :cond_7

    .line 219
    sget-object v23, Lcom/googlecode/mp4parser/authoring/builder/SyncSampleIntersectFinderImpl;->LOG:Ljava/util/logging/Logger;

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "Common SyncSample positions vs. this tracks SyncSample positions: "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-interface/range {v20 .. v20}, Ljava/util/List;->size()I

    move-result v25

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v25, " vs. "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, p1

    array-length v0, v0

    move/from16 v25, v0

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Ljava/util/logging/Logger;->finest(Ljava/lang/String;)V

    goto/16 :goto_5

    .line 245
    .restart local v8       #finalSampleList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/Long;>;"
    :cond_b
    move-object/from16 v8, v20

    .line 250
    :cond_c
    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v23

    move/from16 v0, v23

    new-array v7, v0, [J

    .line 251
    .local v7, finalSampleArray:[J
    const/4 v10, 0x0

    :goto_7
    array-length v0, v7

    move/from16 v23, v0

    move/from16 v0, v23

    if-ge v10, v0, :cond_d

    .line 252
    invoke-interface {v8, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Ljava/lang/Long;

    invoke-virtual/range {v23 .. v23}, Ljava/lang/Long;->longValue()J

    move-result-wide v23

    aput-wide v23, v7, v10

    .line 251
    add-int/lit8 v10, v10, 0x1

    goto :goto_7

    .line 254
    :cond_d
    return-object v7
.end method

.method public sampleNumbers(Lcom/googlecode/mp4parser/authoring/Track;Lcom/googlecode/mp4parser/authoring/Movie;)[J
    .locals 35
    .parameter "track"
    .parameter "movie"

    .prologue
    .line 65
    new-instance v16, Lcom/googlecode/mp4parser/authoring/builder/SyncSampleIntersectFinderImpl$CacheTuple;

    move-object/from16 v0, v16

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    invoke-direct {v0, v1, v2}, Lcom/googlecode/mp4parser/authoring/builder/SyncSampleIntersectFinderImpl$CacheTuple;-><init>(Lcom/googlecode/mp4parser/authoring/Track;Lcom/googlecode/mp4parser/authoring/Movie;)V

    .line 66
    .local v16, key:Lcom/googlecode/mp4parser/authoring/builder/SyncSampleIntersectFinderImpl$CacheTuple;
    sget-object v3, Lcom/googlecode/mp4parser/authoring/builder/SyncSampleIntersectFinderImpl;->getSampleNumbersCache:Ljava/util/Map;

    move-object/from16 v0, v16

    invoke-interface {v3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, [J

    .line 67
    .local v22, result:[J
    if-eqz v22, :cond_0

    move-object/from16 v32, v22

    .line 146
    :goto_0
    return-object v32

    .line 71
    :cond_0
    const-string v3, "vide"

    invoke-interface/range {p1 .. p1}, Lcom/googlecode/mp4parser/authoring/Track;->getHandler()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 72
    invoke-interface/range {p1 .. p1}, Lcom/googlecode/mp4parser/authoring/Track;->getSyncSamples()[J

    move-result-object v3

    if-eqz v3, :cond_1

    invoke-interface/range {p1 .. p1}, Lcom/googlecode/mp4parser/authoring/Track;->getSyncSamples()[J

    move-result-object v3

    array-length v3, v3

    if-lez v3, :cond_1

    .line 73
    move-object/from16 v0, p2

    move-object/from16 v1, p1

    invoke-static {v0, v1}, Lcom/googlecode/mp4parser/authoring/builder/SyncSampleIntersectFinderImpl;->getSyncSamplesTimestamps(Lcom/googlecode/mp4parser/authoring/Movie;Lcom/googlecode/mp4parser/authoring/Track;)Ljava/util/List;

    move-result-object v34

    .line 74
    .local v34, times:Ljava/util/List;,"Ljava/util/List<[J>;"
    invoke-interface/range {p1 .. p1}, Lcom/googlecode/mp4parser/authoring/Track;->getSyncSamples()[J

    move-result-object v4

    invoke-static/range {p1 .. p2}, Lcom/googlecode/mp4parser/authoring/builder/SyncSampleIntersectFinderImpl;->getTimes(Lcom/googlecode/mp4parser/authoring/Track;Lcom/googlecode/mp4parser/authoring/Movie;)[J

    move-result-object v5

    invoke-interface/range {p1 .. p1}, Lcom/googlecode/mp4parser/authoring/Track;->getTrackMetaData()Lcom/googlecode/mp4parser/authoring/TrackMetaData;

    move-result-object v3

    invoke-virtual {v3}, Lcom/googlecode/mp4parser/authoring/TrackMetaData;->getTimescale()J

    move-result-wide v6

    invoke-interface/range {v34 .. v34}, Ljava/util/List;->size()I

    move-result v3

    new-array v3, v3, [[J

    move-object/from16 v0, v34

    invoke-interface {v0, v3}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v8

    check-cast v8, [[J

    move-object/from16 v3, p0

    invoke-virtual/range {v3 .. v8}, Lcom/googlecode/mp4parser/authoring/builder/SyncSampleIntersectFinderImpl;->getCommonIndices([J[JJ[[J)[J

    move-result-object v11

    .line 75
    .local v11, commonIndices:[J
    sget-object v3, Lcom/googlecode/mp4parser/authoring/builder/SyncSampleIntersectFinderImpl;->getSampleNumbersCache:Ljava/util/Map;

    move-object/from16 v0, v16

    invoke-interface {v3, v0, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v32, v11

    .line 76
    goto :goto_0

    .line 78
    .end local v11           #commonIndices:[J
    .end local v34           #times:Ljava/util/List;,"Ljava/util/List<[J>;"
    :cond_1
    new-instance v3, Ljava/lang/RuntimeException;

    const-string v4, "Video Tracks need sync samples. Only tracks other than video may have no sync samples."

    invoke-direct {v3, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 80
    :cond_2
    const-string v3, "soun"

    invoke-interface/range {p1 .. p1}, Lcom/googlecode/mp4parser/authoring/Track;->getHandler()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_a

    .line 81
    const/16 v21, 0x0

    .line 82
    .local v21, referenceTrack:Lcom/googlecode/mp4parser/authoring/Track;
    invoke-virtual/range {p2 .. p2}, Lcom/googlecode/mp4parser/authoring/Movie;->getTracks()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v15

    .local v15, i$:Ljava/util/Iterator;
    :cond_3
    :goto_1
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/googlecode/mp4parser/authoring/Track;

    .line 83
    .local v10, candidate:Lcom/googlecode/mp4parser/authoring/Track;
    invoke-interface {v10}, Lcom/googlecode/mp4parser/authoring/Track;->getSyncSamples()[J

    move-result-object v3

    if-eqz v3, :cond_3

    const-string v3, "vide"

    invoke-interface {v10}, Lcom/googlecode/mp4parser/authoring/Track;->getHandler()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v10}, Lcom/googlecode/mp4parser/authoring/Track;->getSyncSamples()[J

    move-result-object v3

    array-length v3, v3

    if-lez v3, :cond_3

    .line 84
    move-object/from16 v21, v10

    goto :goto_1

    .line 87
    .end local v10           #candidate:Lcom/googlecode/mp4parser/authoring/Track;
    :cond_4
    if-eqz v21, :cond_9

    .line 90
    move-object/from16 v0, p0

    move-object/from16 v1, v21

    move-object/from16 v2, p2

    invoke-virtual {v0, v1, v2}, Lcom/googlecode/mp4parser/authoring/builder/SyncSampleIntersectFinderImpl;->sampleNumbers(Lcom/googlecode/mp4parser/authoring/Track;Lcom/googlecode/mp4parser/authoring/Movie;)[J

    move-result-object v20

    .line 92
    .local v20, refSyncSamples:[J
    invoke-interface/range {v21 .. v21}, Lcom/googlecode/mp4parser/authoring/Track;->getSamples()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v19

    .line 94
    .local v19, refSampleCount:I
    move-object/from16 v0, v20

    array-length v3, v0

    new-array v0, v3, [J

    move-object/from16 v32, v0

    .line 95
    .local v32, syncSamples:[J
    const-wide/32 v17, 0x2ee00

    .line 96
    .local v17, minSampleRate:J
    invoke-virtual/range {p2 .. p2}, Lcom/googlecode/mp4parser/authoring/Movie;->getTracks()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v15

    :cond_5
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_6

    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v33

    check-cast v33, Lcom/googlecode/mp4parser/authoring/Track;

    .line 97
    .local v33, testTrack:Lcom/googlecode/mp4parser/authoring/Track;
    const-string v3, "soun"

    invoke-interface/range {v33 .. v33}, Lcom/googlecode/mp4parser/authoring/Track;->getHandler()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 98
    invoke-interface/range {v33 .. v33}, Lcom/googlecode/mp4parser/authoring/Track;->getSampleDescriptionBox()Lcom/coremedia/iso/boxes/SampleDescriptionBox;

    move-result-object v3

    invoke-virtual {v3}, Lcom/coremedia/iso/boxes/SampleDescriptionBox;->getSampleEntry()Lcom/coremedia/iso/boxes/sampleentry/SampleEntry;

    move-result-object v9

    check-cast v9, Lcom/coremedia/iso/boxes/sampleentry/AudioSampleEntry;

    .line 99
    .local v9, ase:Lcom/coremedia/iso/boxes/sampleentry/AudioSampleEntry;
    invoke-virtual {v9}, Lcom/coremedia/iso/boxes/sampleentry/AudioSampleEntry;->getSampleRate()J

    move-result-wide v3

    cmp-long v3, v3, v17

    if-gez v3, :cond_5

    .line 100
    invoke-virtual {v9}, Lcom/coremedia/iso/boxes/sampleentry/AudioSampleEntry;->getSampleRate()J

    move-result-wide v17

    .line 101
    invoke-interface/range {v33 .. v33}, Lcom/googlecode/mp4parser/authoring/Track;->getSamples()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    int-to-long v0, v3

    move-wide/from16 v25, v0

    .line 102
    .local v25, sc:J
    move-wide/from16 v0, v25

    long-to-double v3, v0

    move/from16 v0, v19

    int-to-double v5, v0

    div-double v29, v3, v5

    .line 103
    .local v29, stretch:D
    invoke-interface/range {v33 .. v33}, Lcom/googlecode/mp4parser/authoring/Track;->getDecodingTimeEntries()Ljava/util/List;

    move-result-object v3

    const/4 v4, 0x0

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v31

    check-cast v31, Lcom/coremedia/iso/boxes/TimeToSampleBox$Entry;

    .line 104
    .local v31, sttsEntry:Lcom/coremedia/iso/boxes/TimeToSampleBox$Entry;
    invoke-virtual/range {v31 .. v31}, Lcom/coremedia/iso/boxes/TimeToSampleBox$Entry;->getDelta()J

    move-result-wide v23

    .line 106
    .local v23, samplesPerFrame:J
    const/4 v14, 0x0

    .local v14, i:I
    :goto_2
    move-object/from16 v0, v32

    array-length v3, v0

    if-ge v14, v3, :cond_6

    .line 107
    aget-wide v3, v20, v14

    const-wide/16 v5, 0x1

    sub-long/2addr v3, v5

    long-to-double v3, v3

    mul-double v3, v3, v29

    move-wide/from16 v0, v23

    long-to-double v5, v0

    mul-double/2addr v3, v5

    invoke-static {v3, v4}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v3

    double-to-long v0, v3

    move-wide/from16 v27, v0

    .line 108
    .local v27, start:J
    aput-wide v27, v32, v14

    .line 106
    add-int/lit8 v14, v14, 0x1

    goto :goto_2

    .line 115
    .end local v9           #ase:Lcom/coremedia/iso/boxes/sampleentry/AudioSampleEntry;
    .end local v14           #i:I
    .end local v23           #samplesPerFrame:J
    .end local v25           #sc:J
    .end local v27           #start:J
    .end local v29           #stretch:D
    .end local v31           #sttsEntry:Lcom/coremedia/iso/boxes/TimeToSampleBox$Entry;
    .end local v33           #testTrack:Lcom/googlecode/mp4parser/authoring/Track;
    :cond_6
    invoke-interface/range {p1 .. p1}, Lcom/googlecode/mp4parser/authoring/Track;->getSampleDescriptionBox()Lcom/coremedia/iso/boxes/SampleDescriptionBox;

    move-result-object v3

    invoke-virtual {v3}, Lcom/coremedia/iso/boxes/SampleDescriptionBox;->getSampleEntry()Lcom/coremedia/iso/boxes/sampleentry/SampleEntry;

    move-result-object v9

    check-cast v9, Lcom/coremedia/iso/boxes/sampleentry/AudioSampleEntry;

    .line 116
    .restart local v9       #ase:Lcom/coremedia/iso/boxes/sampleentry/AudioSampleEntry;
    invoke-interface/range {p1 .. p1}, Lcom/googlecode/mp4parser/authoring/Track;->getDecodingTimeEntries()Ljava/util/List;

    move-result-object v3

    const/4 v4, 0x0

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v31

    check-cast v31, Lcom/coremedia/iso/boxes/TimeToSampleBox$Entry;

    .line 117
    .restart local v31       #sttsEntry:Lcom/coremedia/iso/boxes/TimeToSampleBox$Entry;
    invoke-virtual/range {v31 .. v31}, Lcom/coremedia/iso/boxes/TimeToSampleBox$Entry;->getDelta()J

    move-result-wide v23

    .line 118
    .restart local v23       #samplesPerFrame:J
    invoke-virtual {v9}, Lcom/coremedia/iso/boxes/sampleentry/AudioSampleEntry;->getSampleRate()J

    move-result-wide v3

    long-to-double v3, v3

    move-wide/from16 v0, v17

    long-to-double v5, v0

    div-double v12, v3, v5

    .line 119
    .local v12, factor:D
    invoke-static {v12, v13}, Ljava/lang/Math;->rint(D)D

    move-result-wide v3

    cmpl-double v3, v12, v3

    if-eqz v3, :cond_7

    .line 120
    new-instance v3, Ljava/lang/RuntimeException;

    const-string v4, "Sample rates must be a multiple of the lowest sample rate to create a correct file!"

    invoke-direct {v3, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 122
    :cond_7
    const/4 v14, 0x0

    .restart local v14       #i:I
    :goto_3
    move-object/from16 v0, v32

    array-length v3, v0

    if-ge v14, v3, :cond_8

    .line 123
    const-wide/high16 v3, 0x3ff0

    aget-wide v5, v32, v14

    long-to-double v5, v5

    mul-double/2addr v5, v12

    move-wide/from16 v0, v23

    long-to-double v7, v0

    div-double/2addr v5, v7

    add-double/2addr v3, v5

    double-to-long v3, v3

    aput-wide v3, v32, v14

    .line 122
    add-int/lit8 v14, v14, 0x1

    goto :goto_3

    .line 125
    :cond_8
    sget-object v3, Lcom/googlecode/mp4parser/authoring/builder/SyncSampleIntersectFinderImpl;->getSampleNumbersCache:Ljava/util/Map;

    move-object/from16 v0, v16

    move-object/from16 v1, v32

    invoke-interface {v3, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    .line 128
    .end local v9           #ase:Lcom/coremedia/iso/boxes/sampleentry/AudioSampleEntry;
    .end local v12           #factor:D
    .end local v14           #i:I
    .end local v17           #minSampleRate:J
    .end local v19           #refSampleCount:I
    .end local v20           #refSyncSamples:[J
    .end local v23           #samplesPerFrame:J
    .end local v31           #sttsEntry:Lcom/coremedia/iso/boxes/TimeToSampleBox$Entry;
    .end local v32           #syncSamples:[J
    :cond_9
    new-instance v3, Ljava/lang/RuntimeException;

    const-string v4, "There was absolutely no Track with sync samples. I can\'t work with that!"

    invoke-direct {v3, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 131
    .end local v15           #i$:Ljava/util/Iterator;
    .end local v21           #referenceTrack:Lcom/googlecode/mp4parser/authoring/Track;
    :cond_a
    invoke-virtual/range {p2 .. p2}, Lcom/googlecode/mp4parser/authoring/Movie;->getTracks()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v15

    .restart local v15       #i$:Ljava/util/Iterator;
    :cond_b
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_d

    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/googlecode/mp4parser/authoring/Track;

    .line 132
    .restart local v10       #candidate:Lcom/googlecode/mp4parser/authoring/Track;
    invoke-interface {v10}, Lcom/googlecode/mp4parser/authoring/Track;->getSyncSamples()[J

    move-result-object v3

    if-eqz v3, :cond_b

    invoke-interface {v10}, Lcom/googlecode/mp4parser/authoring/Track;->getSyncSamples()[J

    move-result-object v3

    array-length v3, v3

    if-lez v3, :cond_b

    .line 133
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-virtual {v0, v10, v1}, Lcom/googlecode/mp4parser/authoring/builder/SyncSampleIntersectFinderImpl;->sampleNumbers(Lcom/googlecode/mp4parser/authoring/Track;Lcom/googlecode/mp4parser/authoring/Movie;)[J

    move-result-object v20

    .line 134
    .restart local v20       #refSyncSamples:[J
    invoke-interface {v10}, Lcom/googlecode/mp4parser/authoring/Track;->getSamples()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v19

    .line 136
    .restart local v19       #refSampleCount:I
    move-object/from16 v0, v20

    array-length v3, v0

    new-array v0, v3, [J

    move-object/from16 v32, v0

    .line 137
    .restart local v32       #syncSamples:[J
    invoke-interface/range {p1 .. p1}, Lcom/googlecode/mp4parser/authoring/Track;->getSamples()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    int-to-long v0, v3

    move-wide/from16 v25, v0

    .line 138
    .restart local v25       #sc:J
    move-wide/from16 v0, v25

    long-to-double v3, v0

    move/from16 v0, v19

    int-to-double v5, v0

    div-double v29, v3, v5

    .line 140
    .restart local v29       #stretch:D
    const/4 v14, 0x0

    .restart local v14       #i:I
    :goto_4
    move-object/from16 v0, v32

    array-length v3, v0

    if-ge v14, v3, :cond_c

    .line 141
    aget-wide v3, v20, v14

    const-wide/16 v5, 0x1

    sub-long/2addr v3, v5

    long-to-double v3, v3

    mul-double v3, v3, v29

    invoke-static {v3, v4}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v3

    double-to-long v3, v3

    const-wide/16 v5, 0x1

    add-long v27, v3, v5

    .line 142
    .restart local v27       #start:J
    aput-wide v27, v32, v14

    .line 140
    add-int/lit8 v14, v14, 0x1

    goto :goto_4

    .line 145
    .end local v27           #start:J
    :cond_c
    sget-object v3, Lcom/googlecode/mp4parser/authoring/builder/SyncSampleIntersectFinderImpl;->getSampleNumbersCache:Ljava/util/Map;

    move-object/from16 v0, v16

    move-object/from16 v1, v32

    invoke-interface {v3, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    .line 149
    .end local v10           #candidate:Lcom/googlecode/mp4parser/authoring/Track;
    .end local v14           #i:I
    .end local v19           #refSampleCount:I
    .end local v20           #refSyncSamples:[J
    .end local v25           #sc:J
    .end local v29           #stretch:D
    .end local v32           #syncSamples:[J
    :cond_d
    new-instance v3, Ljava/lang/RuntimeException;

    const-string v4, "There was absolutely no Track with sync samples. I can\'t work with that!"

    invoke-direct {v3, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v3
.end method
