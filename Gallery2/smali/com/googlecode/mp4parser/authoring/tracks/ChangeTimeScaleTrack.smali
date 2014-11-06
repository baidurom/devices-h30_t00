.class public Lcom/googlecode/mp4parser/authoring/tracks/ChangeTimeScaleTrack;
.super Ljava/lang/Object;
.source "ChangeTimeScaleTrack.java"

# interfaces
.implements Lcom/googlecode/mp4parser/authoring/Track;


# static fields
.field private static final LOG:Ljava/util/logging/Logger;


# instance fields
.field ctts:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/coremedia/iso/boxes/CompositionTimeToSample$Entry;",
            ">;"
        }
    .end annotation
.end field

.field source:Lcom/googlecode/mp4parser/authoring/Track;

.field timeScale:J

.field tts:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/coremedia/iso/boxes/TimeToSampleBox$Entry;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 34
    const-class v0, Lcom/googlecode/mp4parser/authoring/tracks/ChangeTimeScaleTrack;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lcom/googlecode/mp4parser/authoring/tracks/ChangeTimeScaleTrack;->LOG:Ljava/util/logging/Logger;

    return-void
.end method

.method public constructor <init>(Lcom/googlecode/mp4parser/authoring/Track;J[J)V
    .locals 6
    .parameter "source"
    .parameter "targetTimeScale"
    .parameter "syncSamples"

    .prologue
    .line 49
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 50
    iput-object p1, p0, Lcom/googlecode/mp4parser/authoring/tracks/ChangeTimeScaleTrack;->source:Lcom/googlecode/mp4parser/authoring/Track;

    .line 51
    iput-wide p2, p0, Lcom/googlecode/mp4parser/authoring/tracks/ChangeTimeScaleTrack;->timeScale:J

    .line 52
    long-to-double v2, p2

    invoke-interface {p1}, Lcom/googlecode/mp4parser/authoring/Track;->getTrackMetaData()Lcom/googlecode/mp4parser/authoring/TrackMetaData;

    move-result-object v4

    invoke-virtual {v4}, Lcom/googlecode/mp4parser/authoring/TrackMetaData;->getTimescale()J

    move-result-wide v4

    long-to-double v4, v4

    div-double v0, v2, v4

    .line 53
    .local v0, timeScaleFactor:D
    invoke-interface {p1}, Lcom/googlecode/mp4parser/authoring/Track;->getCompositionTimeEntries()Ljava/util/List;

    move-result-object v2

    invoke-static {v2, v0, v1}, Lcom/googlecode/mp4parser/authoring/tracks/ChangeTimeScaleTrack;->adjustCtts(Ljava/util/List;D)Ljava/util/List;

    move-result-object v2

    iput-object v2, p0, Lcom/googlecode/mp4parser/authoring/tracks/ChangeTimeScaleTrack;->ctts:Ljava/util/List;

    .line 54
    invoke-interface {p1}, Lcom/googlecode/mp4parser/authoring/Track;->getDecodingTimeEntries()Ljava/util/List;

    move-result-object v2

    invoke-static {p1, p4, p2, p3}, Lcom/googlecode/mp4parser/authoring/tracks/ChangeTimeScaleTrack;->getTimes(Lcom/googlecode/mp4parser/authoring/Track;[JJ)[J

    move-result-object v3

    invoke-static {v2, v0, v1, p4, v3}, Lcom/googlecode/mp4parser/authoring/tracks/ChangeTimeScaleTrack;->adjustTts(Ljava/util/List;D[J[J)Ljava/util/List;

    move-result-object v2

    iput-object v2, p0, Lcom/googlecode/mp4parser/authoring/tracks/ChangeTimeScaleTrack;->tts:Ljava/util/List;

    .line 55
    return-void
.end method

.method static adjustCtts(Ljava/util/List;D)Ljava/util/List;
    .locals 7
    .parameter
    .parameter "timeScaleFactor"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/coremedia/iso/boxes/CompositionTimeToSample$Entry;",
            ">;D)",
            "Ljava/util/List",
            "<",
            "Lcom/coremedia/iso/boxes/CompositionTimeToSample$Entry;",
            ">;"
        }
    .end annotation

    .prologue
    .line 143
    .local p0, source:Ljava/util/List;,"Ljava/util/List<Lcom/coremedia/iso/boxes/CompositionTimeToSample$Entry;>;"
    if-eqz p0, :cond_0

    .line 144
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v3

    invoke-direct {v0, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 145
    .local v0, entries2:Ljava/util/List;,"Ljava/util/List<Lcom/coremedia/iso/boxes/CompositionTimeToSample$Entry;>;"
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/coremedia/iso/boxes/CompositionTimeToSample$Entry;

    .line 146
    .local v1, entry:Lcom/coremedia/iso/boxes/CompositionTimeToSample$Entry;
    new-instance v3, Lcom/coremedia/iso/boxes/CompositionTimeToSample$Entry;

    invoke-virtual {v1}, Lcom/coremedia/iso/boxes/CompositionTimeToSample$Entry;->getCount()I

    move-result v4

    invoke-virtual {v1}, Lcom/coremedia/iso/boxes/CompositionTimeToSample$Entry;->getOffset()I

    move-result v5

    int-to-double v5, v5

    mul-double/2addr v5, p1

    invoke-static {v5, v6}, Ljava/lang/Math;->round(D)J

    move-result-wide v5

    long-to-int v5, v5

    invoke-direct {v3, v4, v5}, Lcom/coremedia/iso/boxes/CompositionTimeToSample$Entry;-><init>(II)V

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 150
    .end local v0           #entries2:Ljava/util/List;,"Ljava/util/List<Lcom/coremedia/iso/boxes/CompositionTimeToSample$Entry;>;"
    .end local v1           #entry:Lcom/coremedia/iso/boxes/CompositionTimeToSample$Entry;
    .end local v2           #i$:Ljava/util/Iterator;
    :cond_0
    const/4 v0, 0x0

    :cond_1
    return-object v0
.end method

.method static adjustTts(Ljava/util/List;D[J[J)Ljava/util/List;
    .locals 22
    .parameter
    .parameter "timeScaleFactor"
    .parameter "syncSample"
    .parameter "syncSampleTimes"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/coremedia/iso/boxes/TimeToSampleBox$Entry;",
            ">;D[J[J)",
            "Ljava/util/List",
            "<",
            "Lcom/coremedia/iso/boxes/TimeToSampleBox$Entry;",
            ">;"
        }
    .end annotation

    .prologue
    .line 156
    .local p0, source:Ljava/util/List;,"Ljava/util/List<Lcom/coremedia/iso/boxes/TimeToSampleBox$Entry;>;"
    invoke-static/range {p0 .. p0}, Lcom/coremedia/iso/boxes/TimeToSampleBox;->blowupTimeToSamples(Ljava/util/List;)[J

    move-result-object v10

    .line 157
    .local v10, sourceArray:[J
    const-wide/16 v12, 0x0

    .line 159
    .local v12, summedDurations:J
    new-instance v7, Ljava/util/LinkedList;

    invoke-direct {v7}, Ljava/util/LinkedList;-><init>()V

    .line 160
    .local v7, entries2:Ljava/util/LinkedList;,"Ljava/util/LinkedList<Lcom/coremedia/iso/boxes/TimeToSampleBox$Entry;>;"
    const/4 v8, 0x1

    .local v8, i:I
    :goto_0
    array-length v0, v10

    move/from16 v16, v0

    move/from16 v0, v16

    if-gt v8, v0, :cond_3

    .line 161
    add-int/lit8 v16, v8, -0x1

    aget-wide v5, v10, v16

    .line 163
    .local v5, duration:J
    long-to-double v0, v5

    move-wide/from16 v16, v0

    mul-double v16, v16, p1

    invoke-static/range {v16 .. v17}, Ljava/lang/Math;->round(D)J

    move-result-wide v14

    .line 166
    .local v14, x:J
    invoke-virtual {v7}, Ljava/util/LinkedList;->peekLast()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/coremedia/iso/boxes/TimeToSampleBox$Entry;

    .line 168
    .local v9, last:Lcom/coremedia/iso/boxes/TimeToSampleBox$Entry;
    add-int/lit8 v16, v8, 0x1

    move/from16 v0, v16

    int-to-long v0, v0

    move-wide/from16 v16, v0

    move-object/from16 v0, p3

    move-wide/from16 v1, v16

    invoke-static {v0, v1, v2}, Ljava/util/Arrays;->binarySearch([JJ)I

    move-result v11

    .local v11, ssIndex:I
    if-ltz v11, :cond_0

    .line 170
    aget-wide v16, p4, v11

    cmp-long v16, v16, v12

    if-eqz v16, :cond_0

    .line 171
    aget-wide v16, p4, v11

    add-long v18, v12, v14

    sub-long v3, v16, v18

    .line 172
    .local v3, correction:J
    sget-object v16, Lcom/googlecode/mp4parser/authoring/tracks/ChangeTimeScaleTrack;->LOG:Ljava/util/logging/Logger;

    const-string v17, "Sample %d %d / %d - correct by %d"

    const/16 v18, 0x4

    move/from16 v0, v18

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v20

    aput-object v20, v18, v19

    const/16 v19, 0x1

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v20

    aput-object v20, v18, v19

    const/16 v19, 0x2

    aget-wide v20, p4, v11

    invoke-static/range {v20 .. v21}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v20

    aput-object v20, v18, v19

    const/16 v19, 0x3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v20

    aput-object v20, v18, v19

    invoke-static/range {v17 .. v18}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Ljava/util/logging/Logger;->finest(Ljava/lang/String;)V

    .line 173
    add-long/2addr v14, v3

    .line 176
    .end local v3           #correction:J
    :cond_0
    add-long/2addr v12, v14

    .line 177
    if-nez v9, :cond_1

    .line 178
    new-instance v16, Lcom/coremedia/iso/boxes/TimeToSampleBox$Entry;

    const-wide/16 v17, 0x1

    move-object/from16 v0, v16

    move-wide/from16 v1, v17

    invoke-direct {v0, v1, v2, v14, v15}, Lcom/coremedia/iso/boxes/TimeToSampleBox$Entry;-><init>(JJ)V

    move-object/from16 v0, v16

    invoke-virtual {v7, v0}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 160
    :goto_1
    add-int/lit8 v8, v8, 0x1

    goto/16 :goto_0

    .line 179
    :cond_1
    invoke-virtual {v9}, Lcom/coremedia/iso/boxes/TimeToSampleBox$Entry;->getDelta()J

    move-result-wide v16

    cmp-long v16, v16, v14

    if-eqz v16, :cond_2

    .line 180
    new-instance v16, Lcom/coremedia/iso/boxes/TimeToSampleBox$Entry;

    const-wide/16 v17, 0x1

    move-object/from16 v0, v16

    move-wide/from16 v1, v17

    invoke-direct {v0, v1, v2, v14, v15}, Lcom/coremedia/iso/boxes/TimeToSampleBox$Entry;-><init>(JJ)V

    move-object/from16 v0, v16

    invoke-virtual {v7, v0}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 182
    :cond_2
    invoke-virtual {v9}, Lcom/coremedia/iso/boxes/TimeToSampleBox$Entry;->getCount()J

    move-result-wide v16

    const-wide/16 v18, 0x1

    add-long v16, v16, v18

    move-wide/from16 v0, v16

    invoke-virtual {v9, v0, v1}, Lcom/coremedia/iso/boxes/TimeToSampleBox$Entry;->setCount(J)V

    goto :goto_1

    .line 186
    .end local v5           #duration:J
    .end local v9           #last:Lcom/coremedia/iso/boxes/TimeToSampleBox$Entry;
    .end local v11           #ssIndex:I
    .end local v14           #x:J
    :cond_3
    return-object v7
.end method

.method private static getTimes(Lcom/googlecode/mp4parser/authoring/Track;[JJ)[J
    .locals 21
    .parameter "track"
    .parameter "syncSamples"
    .parameter "targetTimeScale"

    .prologue
    .line 58
    move-object/from16 v0, p1

    array-length v0, v0

    move/from16 v17, v0

    move/from16 v0, v17

    new-array v15, v0, [J

    .line 59
    .local v15, syncSampleTimes:[J
    new-instance v16, Ljava/util/LinkedList;

    invoke-interface/range {p0 .. p0}, Lcom/googlecode/mp4parser/authoring/Track;->getDecodingTimeEntries()Ljava/util/List;

    move-result-object v17

    invoke-direct/range {v16 .. v17}, Ljava/util/LinkedList;-><init>(Ljava/util/Collection;)V

    .line 61
    .local v16, timeQueue:Ljava/util/Queue;,"Ljava/util/Queue<Lcom/coremedia/iso/boxes/TimeToSampleBox$Entry;>;"
    const/4 v6, 0x1

    .line 62
    .local v6, currentSample:I
    const-wide/16 v4, 0x0

    .line 63
    .local v4, currentDuration:J
    const-wide/16 v2, 0x0

    .line 64
    .local v2, currentDelta:J
    const/4 v8, 0x0

    .line 65
    .local v8, currentSyncSampleIndex:I
    const-wide/16 v11, 0x0

    .line 68
    .local v11, left:J
    :goto_0
    int-to-long v0, v6

    move-wide/from16 v17, v0

    move-object/from16 v0, p1

    array-length v0, v0

    move/from16 v19, v0

    add-int/lit8 v19, v19, -0x1

    aget-wide v19, p1, v19

    cmp-long v17, v17, v19

    if-gtz v17, :cond_1

    .line 69
    add-int/lit8 v7, v6, 0x1

    .end local v6           #currentSample:I
    .local v7, currentSample:I
    int-to-long v0, v6

    move-wide/from16 v17, v0

    aget-wide v19, p1, v8

    cmp-long v17, v17, v19

    if-nez v17, :cond_0

    .line 70
    add-int/lit8 v9, v8, 0x1

    .end local v8           #currentSyncSampleIndex:I
    .local v9, currentSyncSampleIndex:I
    mul-long v17, v4, p2

    invoke-interface/range {p0 .. p0}, Lcom/googlecode/mp4parser/authoring/Track;->getTrackMetaData()Lcom/googlecode/mp4parser/authoring/TrackMetaData;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Lcom/googlecode/mp4parser/authoring/TrackMetaData;->getTimescale()J

    move-result-wide v19

    div-long v17, v17, v19

    aput-wide v17, v15, v8

    move v8, v9

    .line 72
    .end local v9           #currentSyncSampleIndex:I
    .restart local v8       #currentSyncSampleIndex:I
    :cond_0
    const-wide/16 v17, 0x1

    sub-long v13, v11, v17

    .end local v11           #left:J
    .local v13, left:J
    const-wide/16 v17, 0x0

    cmp-long v17, v11, v17

    if-nez v17, :cond_2

    .line 73
    invoke-interface/range {v16 .. v16}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/coremedia/iso/boxes/TimeToSampleBox$Entry;

    .line 74
    .local v10, entry:Lcom/coremedia/iso/boxes/TimeToSampleBox$Entry;
    invoke-virtual {v10}, Lcom/coremedia/iso/boxes/TimeToSampleBox$Entry;->getCount()J

    move-result-wide v17

    const-wide/16 v19, 0x1

    sub-long v11, v17, v19

    .line 75
    .end local v13           #left:J
    .restart local v11       #left:J
    invoke-virtual {v10}, Lcom/coremedia/iso/boxes/TimeToSampleBox$Entry;->getDelta()J

    move-result-wide v2

    .line 77
    .end local v10           #entry:Lcom/coremedia/iso/boxes/TimeToSampleBox$Entry;
    :goto_1
    add-long/2addr v4, v2

    move v6, v7

    .end local v7           #currentSample:I
    .restart local v6       #currentSample:I
    goto :goto_0

    .line 79
    :cond_1
    return-object v15

    .end local v6           #currentSample:I
    .end local v11           #left:J
    .restart local v7       #currentSample:I
    .restart local v13       #left:J
    :cond_2
    move-wide v11, v13

    .end local v13           #left:J
    .restart local v11       #left:J
    goto :goto_1
.end method


# virtual methods
.method public getCompositionTimeEntries()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/coremedia/iso/boxes/CompositionTimeToSample$Entry;",
            ">;"
        }
    .end annotation

    .prologue
    .line 92
    iget-object v0, p0, Lcom/googlecode/mp4parser/authoring/tracks/ChangeTimeScaleTrack;->ctts:Ljava/util/List;

    return-object v0
.end method

.method public getDecodingTimeEntries()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/coremedia/iso/boxes/TimeToSampleBox$Entry;",
            ">;"
        }
    .end annotation

    .prologue
    .line 88
    iget-object v0, p0, Lcom/googlecode/mp4parser/authoring/tracks/ChangeTimeScaleTrack;->tts:Ljava/util/List;

    return-object v0
.end method

.method public getHandler()Ljava/lang/String;
    .locals 1

    .prologue
    .line 110
    iget-object v0, p0, Lcom/googlecode/mp4parser/authoring/tracks/ChangeTimeScaleTrack;->source:Lcom/googlecode/mp4parser/authoring/Track;

    invoke-interface {v0}, Lcom/googlecode/mp4parser/authoring/Track;->getHandler()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getMediaHeaderBox()Lcom/coremedia/iso/boxes/Box;
    .locals 1

    .prologue
    .line 190
    iget-object v0, p0, Lcom/googlecode/mp4parser/authoring/tracks/ChangeTimeScaleTrack;->source:Lcom/googlecode/mp4parser/authoring/Track;

    invoke-interface {v0}, Lcom/googlecode/mp4parser/authoring/Track;->getMediaHeaderBox()Lcom/coremedia/iso/boxes/Box;

    move-result-object v0

    return-object v0
.end method

.method public getSampleDependencies()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/coremedia/iso/boxes/SampleDependencyTypeBox$Entry;",
            ">;"
        }
    .end annotation

    .prologue
    .line 100
    iget-object v0, p0, Lcom/googlecode/mp4parser/authoring/tracks/ChangeTimeScaleTrack;->source:Lcom/googlecode/mp4parser/authoring/Track;

    invoke-interface {v0}, Lcom/googlecode/mp4parser/authoring/Track;->getSampleDependencies()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getSampleDescriptionBox()Lcom/coremedia/iso/boxes/SampleDescriptionBox;
    .locals 1

    .prologue
    .line 84
    iget-object v0, p0, Lcom/googlecode/mp4parser/authoring/tracks/ChangeTimeScaleTrack;->source:Lcom/googlecode/mp4parser/authoring/Track;

    invoke-interface {v0}, Lcom/googlecode/mp4parser/authoring/Track;->getSampleDescriptionBox()Lcom/coremedia/iso/boxes/SampleDescriptionBox;

    move-result-object v0

    return-object v0
.end method

.method public getSamples()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/nio/ByteBuffer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 130
    iget-object v0, p0, Lcom/googlecode/mp4parser/authoring/tracks/ChangeTimeScaleTrack;->source:Lcom/googlecode/mp4parser/authoring/Track;

    invoke-interface {v0}, Lcom/googlecode/mp4parser/authoring/Track;->getSamples()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getSubsampleInformationBox()Lcom/coremedia/iso/boxes/SubSampleInformationBox;
    .locals 1

    .prologue
    .line 194
    iget-object v0, p0, Lcom/googlecode/mp4parser/authoring/tracks/ChangeTimeScaleTrack;->source:Lcom/googlecode/mp4parser/authoring/Track;

    invoke-interface {v0}, Lcom/googlecode/mp4parser/authoring/Track;->getSubsampleInformationBox()Lcom/coremedia/iso/boxes/SubSampleInformationBox;

    move-result-object v0

    return-object v0
.end method

.method public getSyncSamples()[J
    .locals 1

    .prologue
    .line 96
    iget-object v0, p0, Lcom/googlecode/mp4parser/authoring/tracks/ChangeTimeScaleTrack;->source:Lcom/googlecode/mp4parser/authoring/Track;

    invoke-interface {v0}, Lcom/googlecode/mp4parser/authoring/Track;->getSyncSamples()[J

    move-result-object v0

    return-object v0
.end method

.method public getTrackMetaData()Lcom/googlecode/mp4parser/authoring/TrackMetaData;
    .locals 3

    .prologue
    .line 104
    iget-object v1, p0, Lcom/googlecode/mp4parser/authoring/tracks/ChangeTimeScaleTrack;->source:Lcom/googlecode/mp4parser/authoring/Track;

    invoke-interface {v1}, Lcom/googlecode/mp4parser/authoring/Track;->getTrackMetaData()Lcom/googlecode/mp4parser/authoring/TrackMetaData;

    move-result-object v1

    invoke-virtual {v1}, Lcom/googlecode/mp4parser/authoring/TrackMetaData;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/googlecode/mp4parser/authoring/TrackMetaData;

    .line 105
    .local v0, trackMetaData:Lcom/googlecode/mp4parser/authoring/TrackMetaData;
    iget-wide v1, p0, Lcom/googlecode/mp4parser/authoring/tracks/ChangeTimeScaleTrack;->timeScale:J

    invoke-virtual {v0, v1, v2}, Lcom/googlecode/mp4parser/authoring/TrackMetaData;->setTimescale(J)V

    .line 106
    return-object v0
.end method

.method public isEnabled()Z
    .locals 1

    .prologue
    .line 114
    iget-object v0, p0, Lcom/googlecode/mp4parser/authoring/tracks/ChangeTimeScaleTrack;->source:Lcom/googlecode/mp4parser/authoring/Track;

    invoke-interface {v0}, Lcom/googlecode/mp4parser/authoring/Track;->isEnabled()Z

    move-result v0

    return v0
.end method

.method public isInMovie()Z
    .locals 1

    .prologue
    .line 118
    iget-object v0, p0, Lcom/googlecode/mp4parser/authoring/tracks/ChangeTimeScaleTrack;->source:Lcom/googlecode/mp4parser/authoring/Track;

    invoke-interface {v0}, Lcom/googlecode/mp4parser/authoring/Track;->isInMovie()Z

    move-result v0

    return v0
.end method

.method public isInPoster()Z
    .locals 1

    .prologue
    .line 126
    iget-object v0, p0, Lcom/googlecode/mp4parser/authoring/tracks/ChangeTimeScaleTrack;->source:Lcom/googlecode/mp4parser/authoring/Track;

    invoke-interface {v0}, Lcom/googlecode/mp4parser/authoring/Track;->isInPoster()Z

    move-result v0

    return v0
.end method

.method public isInPreview()Z
    .locals 1

    .prologue
    .line 122
    iget-object v0, p0, Lcom/googlecode/mp4parser/authoring/tracks/ChangeTimeScaleTrack;->source:Lcom/googlecode/mp4parser/authoring/Track;

    invoke-interface {v0}, Lcom/googlecode/mp4parser/authoring/Track;->isInPreview()Z

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 199
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ChangeTimeScaleTrack{source="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/googlecode/mp4parser/authoring/tracks/ChangeTimeScaleTrack;->source:Lcom/googlecode/mp4parser/authoring/Track;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
