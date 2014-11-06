.class public Lcom/googlecode/mp4parser/authoring/Mp4TrackImpl;
.super Lcom/googlecode/mp4parser/authoring/AbstractTrack;
.source "Mp4TrackImpl.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "mp4parser-Mp4TrackImpl"


# instance fields
.field private compositionTimeEntries:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/coremedia/iso/boxes/CompositionTimeToSample$Entry;",
            ">;"
        }
    .end annotation
.end field

.field private decodingTimeEntries:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/coremedia/iso/boxes/TimeToSampleBox$Entry;",
            ">;"
        }
    .end annotation
.end field

.field private handler:Ljava/lang/String;

.field private mihd:Lcom/coremedia/iso/boxes/AbstractMediaHeaderBox;

.field private ready:Z

.field private sampleDependencies:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/coremedia/iso/boxes/SampleDependencyTypeBox$Entry;",
            ">;"
        }
    .end annotation
.end field

.field private sampleDescriptionBox:Lcom/coremedia/iso/boxes/SampleDescriptionBox;

.field private samples:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/nio/ByteBuffer;",
            ">;"
        }
    .end annotation
.end field

.field private syncSamples:[J

.field private trackMetaData:Lcom/googlecode/mp4parser/authoring/TrackMetaData;


# direct methods
.method public constructor <init>(Lcom/coremedia/iso/boxes/TrackBox;)V
    .locals 45
    .parameter "trackBox"

    .prologue
    .line 50
    invoke-direct/range {p0 .. p0}, Lcom/googlecode/mp4parser/authoring/AbstractTrack;-><init>()V

    .line 40
    const/16 v39, 0x0

    move/from16 v0, v39

    new-array v0, v0, [J

    move-object/from16 v39, v0

    move-object/from16 v0, v39

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/googlecode/mp4parser/authoring/Mp4TrackImpl;->syncSamples:[J

    .line 42
    new-instance v39, Lcom/googlecode/mp4parser/authoring/TrackMetaData;

    invoke-direct/range {v39 .. v39}, Lcom/googlecode/mp4parser/authoring/TrackMetaData;-><init>()V

    move-object/from16 v0, v39

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/googlecode/mp4parser/authoring/Mp4TrackImpl;->trackMetaData:Lcom/googlecode/mp4parser/authoring/TrackMetaData;

    .line 46
    const/16 v39, 0x1

    move/from16 v0, v39

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/googlecode/mp4parser/authoring/Mp4TrackImpl;->ready:Z

    .line 51
    invoke-virtual/range {p1 .. p1}, Lcom/coremedia/iso/boxes/TrackBox;->getTrackHeaderBox()Lcom/coremedia/iso/boxes/TrackHeaderBox;

    move-result-object v39

    invoke-virtual/range {v39 .. v39}, Lcom/coremedia/iso/boxes/TrackHeaderBox;->getTrackId()J

    move-result-wide v32

    .line 52
    .local v32, trackId:J
    new-instance v39, Lcom/coremedia/iso/boxes/mdat/SampleList;

    move-object/from16 v0, v39

    move-object/from16 v1, p1

    invoke-direct {v0, v1}, Lcom/coremedia/iso/boxes/mdat/SampleList;-><init>(Lcom/coremedia/iso/boxes/TrackBox;)V

    move-object/from16 v0, v39

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/googlecode/mp4parser/authoring/Mp4TrackImpl;->samples:Ljava/util/List;

    .line 53
    invoke-virtual/range {p1 .. p1}, Lcom/coremedia/iso/boxes/TrackBox;->getMediaBox()Lcom/coremedia/iso/boxes/MediaBox;

    move-result-object v39

    invoke-virtual/range {v39 .. v39}, Lcom/coremedia/iso/boxes/MediaBox;->getMediaInformationBox()Lcom/coremedia/iso/boxes/MediaInformationBox;

    move-result-object v39

    invoke-virtual/range {v39 .. v39}, Lcom/coremedia/iso/boxes/MediaInformationBox;->getSampleTableBox()Lcom/coremedia/iso/boxes/SampleTableBox;

    move-result-object v25

    .line 54
    .local v25, stbl:Lcom/coremedia/iso/boxes/SampleTableBox;
    invoke-virtual/range {p1 .. p1}, Lcom/coremedia/iso/boxes/TrackBox;->getMediaBox()Lcom/coremedia/iso/boxes/MediaBox;

    move-result-object v39

    invoke-virtual/range {v39 .. v39}, Lcom/coremedia/iso/boxes/MediaBox;->getHandlerBox()Lcom/coremedia/iso/boxes/HandlerBox;

    move-result-object v39

    invoke-virtual/range {v39 .. v39}, Lcom/coremedia/iso/boxes/HandlerBox;->getHandlerType()Ljava/lang/String;

    move-result-object v39

    move-object/from16 v0, v39

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/googlecode/mp4parser/authoring/Mp4TrackImpl;->handler:Ljava/lang/String;

    .line 56
    invoke-virtual/range {p1 .. p1}, Lcom/coremedia/iso/boxes/TrackBox;->getMediaBox()Lcom/coremedia/iso/boxes/MediaBox;

    move-result-object v39

    invoke-virtual/range {v39 .. v39}, Lcom/coremedia/iso/boxes/MediaBox;->getMediaInformationBox()Lcom/coremedia/iso/boxes/MediaInformationBox;

    move-result-object v39

    invoke-virtual/range {v39 .. v39}, Lcom/coremedia/iso/boxes/MediaInformationBox;->getMediaHeaderBox()Lcom/coremedia/iso/boxes/AbstractMediaHeaderBox;

    move-result-object v39

    move-object/from16 v0, v39

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/googlecode/mp4parser/authoring/Mp4TrackImpl;->mihd:Lcom/coremedia/iso/boxes/AbstractMediaHeaderBox;

    .line 57
    new-instance v39, Ljava/util/LinkedList;

    invoke-direct/range {v39 .. v39}, Ljava/util/LinkedList;-><init>()V

    move-object/from16 v0, v39

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/googlecode/mp4parser/authoring/Mp4TrackImpl;->decodingTimeEntries:Ljava/util/List;

    .line 58
    new-instance v39, Ljava/util/LinkedList;

    invoke-direct/range {v39 .. v39}, Ljava/util/LinkedList;-><init>()V

    move-object/from16 v0, v39

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/googlecode/mp4parser/authoring/Mp4TrackImpl;->compositionTimeEntries:Ljava/util/List;

    .line 59
    new-instance v39, Ljava/util/LinkedList;

    invoke-direct/range {v39 .. v39}, Ljava/util/LinkedList;-><init>()V

    move-object/from16 v0, v39

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/googlecode/mp4parser/authoring/Mp4TrackImpl;->sampleDependencies:Ljava/util/List;

    .line 62
    if-nez v25, :cond_0

    .line 63
    const/16 v39, 0x0

    move/from16 v0, v39

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/googlecode/mp4parser/authoring/Mp4TrackImpl;->ready:Z

    .line 64
    const-string v39, "mp4parser-Mp4TrackImpl"

    const-string v40, "stbl is null"

    invoke-static/range {v39 .. v40}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 192
    :goto_0
    return-void

    .line 67
    :cond_0
    invoke-virtual/range {v25 .. v25}, Lcom/coremedia/iso/boxes/SampleTableBox;->getTimeToSampleBox()Lcom/coremedia/iso/boxes/TimeToSampleBox;

    move-result-object v29

    .line 68
    .local v29, timeBox:Lcom/coremedia/iso/boxes/TimeToSampleBox;
    if-nez v29, :cond_1

    .line 69
    const-string v39, "mp4parser-Mp4TrackImpl"

    const-string v40, "timeBox is null"

    invoke-static/range {v39 .. v40}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 70
    const/16 v39, 0x0

    move/from16 v0, v39

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/googlecode/mp4parser/authoring/Mp4TrackImpl;->ready:Z

    goto :goto_0

    .line 73
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/googlecode/mp4parser/authoring/Mp4TrackImpl;->decodingTimeEntries:Ljava/util/List;

    move-object/from16 v39, v0

    invoke-virtual/range {v29 .. v29}, Lcom/coremedia/iso/boxes/TimeToSampleBox;->getEntries()Ljava/util/List;

    move-result-object v40

    invoke-interface/range {v39 .. v40}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 76
    invoke-virtual/range {v25 .. v25}, Lcom/coremedia/iso/boxes/SampleTableBox;->getCompositionTimeToSample()Lcom/coremedia/iso/boxes/CompositionTimeToSample;

    move-result-object v39

    if-eqz v39, :cond_2

    .line 77
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/googlecode/mp4parser/authoring/Mp4TrackImpl;->compositionTimeEntries:Ljava/util/List;

    move-object/from16 v39, v0

    invoke-virtual/range {v25 .. v25}, Lcom/coremedia/iso/boxes/SampleTableBox;->getCompositionTimeToSample()Lcom/coremedia/iso/boxes/CompositionTimeToSample;

    move-result-object v40

    invoke-virtual/range {v40 .. v40}, Lcom/coremedia/iso/boxes/CompositionTimeToSample;->getEntries()Ljava/util/List;

    move-result-object v40

    invoke-interface/range {v39 .. v40}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 79
    :cond_2
    invoke-virtual/range {v25 .. v25}, Lcom/coremedia/iso/boxes/SampleTableBox;->getSampleDependencyTypeBox()Lcom/coremedia/iso/boxes/SampleDependencyTypeBox;

    move-result-object v39

    if-eqz v39, :cond_3

    .line 80
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/googlecode/mp4parser/authoring/Mp4TrackImpl;->sampleDependencies:Ljava/util/List;

    move-object/from16 v39, v0

    invoke-virtual/range {v25 .. v25}, Lcom/coremedia/iso/boxes/SampleTableBox;->getSampleDependencyTypeBox()Lcom/coremedia/iso/boxes/SampleDependencyTypeBox;

    move-result-object v40

    invoke-virtual/range {v40 .. v40}, Lcom/coremedia/iso/boxes/SampleDependencyTypeBox;->getEntries()Ljava/util/List;

    move-result-object v40

    invoke-interface/range {v39 .. v40}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 82
    :cond_3
    invoke-virtual/range {v25 .. v25}, Lcom/coremedia/iso/boxes/SampleTableBox;->getSyncSampleBox()Lcom/coremedia/iso/boxes/SyncSampleBox;

    move-result-object v39

    if-eqz v39, :cond_4

    .line 83
    invoke-virtual/range {v25 .. v25}, Lcom/coremedia/iso/boxes/SampleTableBox;->getSyncSampleBox()Lcom/coremedia/iso/boxes/SyncSampleBox;

    move-result-object v39

    invoke-virtual/range {v39 .. v39}, Lcom/coremedia/iso/boxes/SyncSampleBox;->getSampleNumber()[J

    move-result-object v39

    move-object/from16 v0, v39

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/googlecode/mp4parser/authoring/Mp4TrackImpl;->syncSamples:[J

    .line 87
    :cond_4
    invoke-virtual/range {v25 .. v25}, Lcom/coremedia/iso/boxes/SampleTableBox;->getSampleDescriptionBox()Lcom/coremedia/iso/boxes/SampleDescriptionBox;

    move-result-object v39

    move-object/from16 v0, v39

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/googlecode/mp4parser/authoring/Mp4TrackImpl;->sampleDescriptionBox:Lcom/coremedia/iso/boxes/SampleDescriptionBox;

    .line 88
    invoke-virtual/range {p1 .. p1}, Lcom/coremedia/iso/boxes/TrackBox;->getParent()Lcom/coremedia/iso/boxes/ContainerBox;

    move-result-object v39

    const-class v40, Lcom/coremedia/iso/boxes/fragment/MovieExtendsBox;

    invoke-interface/range {v39 .. v40}, Lcom/coremedia/iso/boxes/ContainerBox;->getBoxes(Ljava/lang/Class;)Ljava/util/List;

    move-result-object v18

    .line 89
    .local v18, movieExtendsBoxes:Ljava/util/List;,"Ljava/util/List<Lcom/coremedia/iso/boxes/fragment/MovieExtendsBox;>;"
    invoke-interface/range {v18 .. v18}, Ljava/util/List;->size()I

    move-result v39

    if-lez v39, :cond_16

    .line 90
    invoke-interface/range {v18 .. v18}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :cond_5
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v39

    if-eqz v39, :cond_16

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Lcom/coremedia/iso/boxes/fragment/MovieExtendsBox;

    .line 91
    .local v20, mvex:Lcom/coremedia/iso/boxes/fragment/MovieExtendsBox;
    const-class v39, Lcom/coremedia/iso/boxes/fragment/TrackExtendsBox;

    move-object/from16 v0, v20

    move-object/from16 v1, v39

    invoke-virtual {v0, v1}, Lcom/coremedia/iso/boxes/fragment/MovieExtendsBox;->getBoxes(Ljava/lang/Class;)Ljava/util/List;

    move-result-object v31

    .line 92
    .local v31, trackExtendsBoxes:Ljava/util/List;,"Ljava/util/List<Lcom/coremedia/iso/boxes/fragment/TrackExtendsBox;>;"
    invoke-interface/range {v31 .. v31}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :cond_6
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v39

    if-eqz v39, :cond_5

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v36

    check-cast v36, Lcom/coremedia/iso/boxes/fragment/TrackExtendsBox;

    .line 93
    .local v36, trex:Lcom/coremedia/iso/boxes/fragment/TrackExtendsBox;
    invoke-virtual/range {v36 .. v36}, Lcom/coremedia/iso/boxes/fragment/TrackExtendsBox;->getTrackId()J

    move-result-wide v39

    cmp-long v39, v39, v32

    if-nez v39, :cond_6

    .line 94
    new-instance v26, Ljava/util/LinkedList;

    invoke-direct/range {v26 .. v26}, Ljava/util/LinkedList;-><init>()V

    .line 96
    .local v26, syncSampleList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/Long;>;"
    const-wide/16 v23, 0x1

    .line 97
    .local v23, sampleNumber:J
    invoke-virtual/range {p1 .. p1}, Lcom/coremedia/iso/boxes/TrackBox;->getIsoFile()Lcom/coremedia/iso/IsoFile;

    move-result-object v39

    const-class v40, Lcom/coremedia/iso/boxes/fragment/MovieFragmentBox;

    invoke-virtual/range {v39 .. v40}, Lcom/coremedia/iso/IsoFile;->getBoxes(Ljava/lang/Class;)Ljava/util/List;

    move-result-object v39

    invoke-interface/range {v39 .. v39}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :cond_7
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v39

    if-eqz v39, :cond_15

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Lcom/coremedia/iso/boxes/fragment/MovieFragmentBox;

    .line 98
    .local v19, movieFragmentBox:Lcom/coremedia/iso/boxes/fragment/MovieFragmentBox;
    const-class v39, Lcom/coremedia/iso/boxes/fragment/TrackFragmentBox;

    move-object/from16 v0, v19

    move-object/from16 v1, v39

    invoke-virtual {v0, v1}, Lcom/coremedia/iso/boxes/fragment/MovieFragmentBox;->getBoxes(Ljava/lang/Class;)Ljava/util/List;

    move-result-object v35

    .line 99
    .local v35, trafs:Ljava/util/List;,"Ljava/util/List<Lcom/coremedia/iso/boxes/fragment/TrackFragmentBox;>;"
    invoke-interface/range {v35 .. v35}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v13

    :cond_8
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v39

    if-eqz v39, :cond_7

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v34

    check-cast v34, Lcom/coremedia/iso/boxes/fragment/TrackFragmentBox;

    .line 100
    .local v34, traf:Lcom/coremedia/iso/boxes/fragment/TrackFragmentBox;
    invoke-virtual/range {v34 .. v34}, Lcom/coremedia/iso/boxes/fragment/TrackFragmentBox;->getTrackFragmentHeaderBox()Lcom/coremedia/iso/boxes/fragment/TrackFragmentHeaderBox;

    move-result-object v39

    invoke-virtual/range {v39 .. v39}, Lcom/coremedia/iso/boxes/fragment/TrackFragmentHeaderBox;->getTrackId()J

    move-result-wide v39

    cmp-long v39, v39, v32

    if-nez v39, :cond_8

    .line 101
    const-class v39, Lcom/coremedia/iso/boxes/fragment/TrackRunBox;

    move-object/from16 v0, v34

    move-object/from16 v1, v39

    invoke-virtual {v0, v1}, Lcom/coremedia/iso/boxes/fragment/TrackFragmentBox;->getBoxes(Ljava/lang/Class;)Ljava/util/List;

    move-result-object v38

    .line 102
    .local v38, truns:Ljava/util/List;,"Ljava/util/List<Lcom/coremedia/iso/boxes/fragment/TrackRunBox;>;"
    invoke-interface/range {v38 .. v38}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v14

    :cond_9
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v39

    if-eqz v39, :cond_8

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v37

    check-cast v37, Lcom/coremedia/iso/boxes/fragment/TrackRunBox;

    .line 103
    .local v37, trun:Lcom/coremedia/iso/boxes/fragment/TrackRunBox;
    invoke-virtual/range {v37 .. v37}, Lcom/coremedia/iso/boxes/fragment/TrackRunBox;->getParent()Lcom/coremedia/iso/boxes/ContainerBox;

    move-result-object v39

    check-cast v39, Lcom/coremedia/iso/boxes/fragment/TrackFragmentBox;

    invoke-virtual/range {v39 .. v39}, Lcom/coremedia/iso/boxes/fragment/TrackFragmentBox;->getTrackFragmentHeaderBox()Lcom/coremedia/iso/boxes/fragment/TrackFragmentHeaderBox;

    move-result-object v28

    .line 104
    .local v28, tfhd:Lcom/coremedia/iso/boxes/fragment/TrackFragmentHeaderBox;
    const/4 v7, 0x1

    .line 105
    .local v7, first:Z
    invoke-virtual/range {v37 .. v37}, Lcom/coremedia/iso/boxes/fragment/TrackRunBox;->getEntries()Ljava/util/List;

    move-result-object v39

    invoke-interface/range {v39 .. v39}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v15

    .local v15, i$:Ljava/util/Iterator;
    :goto_1
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    move-result v39

    if-eqz v39, :cond_9

    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/coremedia/iso/boxes/fragment/TrackRunBox$Entry;

    .line 106
    .local v6, entry:Lcom/coremedia/iso/boxes/fragment/TrackRunBox$Entry;
    invoke-virtual/range {v37 .. v37}, Lcom/coremedia/iso/boxes/fragment/TrackRunBox;->isSampleDurationPresent()Z

    move-result v39

    if-eqz v39, :cond_f

    .line 107
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/googlecode/mp4parser/authoring/Mp4TrackImpl;->decodingTimeEntries:Ljava/util/List;

    move-object/from16 v39, v0

    invoke-interface/range {v39 .. v39}, Ljava/util/List;->size()I

    move-result v39

    if-eqz v39, :cond_a

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/googlecode/mp4parser/authoring/Mp4TrackImpl;->decodingTimeEntries:Ljava/util/List;

    move-object/from16 v39, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/googlecode/mp4parser/authoring/Mp4TrackImpl;->decodingTimeEntries:Ljava/util/List;

    move-object/from16 v40, v0

    invoke-interface/range {v40 .. v40}, Ljava/util/List;->size()I

    move-result v40

    add-int/lit8 v40, v40, -0x1

    invoke-interface/range {v39 .. v40}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v39

    check-cast v39, Lcom/coremedia/iso/boxes/TimeToSampleBox$Entry;

    invoke-virtual/range {v39 .. v39}, Lcom/coremedia/iso/boxes/TimeToSampleBox$Entry;->getDelta()J

    move-result-wide v39

    invoke-virtual {v6}, Lcom/coremedia/iso/boxes/fragment/TrackRunBox$Entry;->getSampleDuration()J

    move-result-wide v41

    cmp-long v39, v39, v41

    if-eqz v39, :cond_e

    .line 109
    :cond_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/googlecode/mp4parser/authoring/Mp4TrackImpl;->decodingTimeEntries:Ljava/util/List;

    move-object/from16 v39, v0

    new-instance v40, Lcom/coremedia/iso/boxes/TimeToSampleBox$Entry;

    const-wide/16 v41, 0x1

    invoke-virtual {v6}, Lcom/coremedia/iso/boxes/fragment/TrackRunBox$Entry;->getSampleDuration()J

    move-result-wide v43

    invoke-direct/range {v40 .. v44}, Lcom/coremedia/iso/boxes/TimeToSampleBox$Entry;-><init>(JJ)V

    invoke-interface/range {v39 .. v40}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 122
    :goto_2
    invoke-virtual/range {v37 .. v37}, Lcom/coremedia/iso/boxes/fragment/TrackRunBox;->isSampleCompositionTimeOffsetPresent()Z

    move-result v39

    if-eqz v39, :cond_c

    .line 123
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/googlecode/mp4parser/authoring/Mp4TrackImpl;->compositionTimeEntries:Ljava/util/List;

    move-object/from16 v39, v0

    invoke-interface/range {v39 .. v39}, Ljava/util/List;->size()I

    move-result v39

    if-eqz v39, :cond_b

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/googlecode/mp4parser/authoring/Mp4TrackImpl;->compositionTimeEntries:Ljava/util/List;

    move-object/from16 v39, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/googlecode/mp4parser/authoring/Mp4TrackImpl;->compositionTimeEntries:Ljava/util/List;

    move-object/from16 v40, v0

    invoke-interface/range {v40 .. v40}, Ljava/util/List;->size()I

    move-result v40

    add-int/lit8 v40, v40, -0x1

    invoke-interface/range {v39 .. v40}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v39

    check-cast v39, Lcom/coremedia/iso/boxes/CompositionTimeToSample$Entry;

    invoke-virtual/range {v39 .. v39}, Lcom/coremedia/iso/boxes/CompositionTimeToSample$Entry;->getOffset()I

    move-result v39

    invoke-virtual {v6}, Lcom/coremedia/iso/boxes/fragment/TrackRunBox$Entry;->getSampleCompositionTimeOffset()I

    move-result v40

    move/from16 v0, v39

    move/from16 v1, v40

    if-eq v0, v1, :cond_11

    .line 125
    :cond_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/googlecode/mp4parser/authoring/Mp4TrackImpl;->compositionTimeEntries:Ljava/util/List;

    move-object/from16 v39, v0

    new-instance v40, Lcom/coremedia/iso/boxes/CompositionTimeToSample$Entry;

    const/16 v41, 0x1

    invoke-virtual {v6}, Lcom/coremedia/iso/boxes/fragment/TrackRunBox$Entry;->getSampleCompositionTimeOffset()I

    move-result v42

    move/from16 v0, v42

    int-to-long v0, v0

    move-wide/from16 v42, v0

    invoke-static/range {v42 .. v43}, Lcom/googlecode/mp4parser/util/CastUtils;->l2i(J)I

    move-result v42

    invoke-direct/range {v40 .. v42}, Lcom/coremedia/iso/boxes/CompositionTimeToSample$Entry;-><init>(II)V

    invoke-interface/range {v39 .. v40}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 132
    :cond_c
    :goto_3
    invoke-virtual/range {v37 .. v37}, Lcom/coremedia/iso/boxes/fragment/TrackRunBox;->isSampleFlagsPresent()Z

    move-result v39

    if-eqz v39, :cond_12

    .line 133
    invoke-virtual {v6}, Lcom/coremedia/iso/boxes/fragment/TrackRunBox$Entry;->getSampleFlags()Lcom/coremedia/iso/boxes/fragment/SampleFlags;

    move-result-object v22

    .line 145
    .local v22, sampleFlags:Lcom/coremedia/iso/boxes/fragment/SampleFlags;
    :goto_4
    if-eqz v22, :cond_d

    invoke-virtual/range {v22 .. v22}, Lcom/coremedia/iso/boxes/fragment/SampleFlags;->isSampleIsDifferenceSample()Z

    move-result v39

    if-nez v39, :cond_d

    .line 147
    invoke-static/range {v23 .. v24}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v39

    move-object/from16 v0, v26

    move-object/from16 v1, v39

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 149
    :cond_d
    const-wide/16 v39, 0x1

    add-long v23, v23, v39

    .line 150
    const/4 v7, 0x0

    .line 151
    goto/16 :goto_1

    .line 111
    .end local v22           #sampleFlags:Lcom/coremedia/iso/boxes/fragment/SampleFlags;
    :cond_e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/googlecode/mp4parser/authoring/Mp4TrackImpl;->decodingTimeEntries:Ljava/util/List;

    move-object/from16 v39, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/googlecode/mp4parser/authoring/Mp4TrackImpl;->decodingTimeEntries:Ljava/util/List;

    move-object/from16 v40, v0

    invoke-interface/range {v40 .. v40}, Ljava/util/List;->size()I

    move-result v40

    add-int/lit8 v40, v40, -0x1

    invoke-interface/range {v39 .. v40}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/coremedia/iso/boxes/TimeToSampleBox$Entry;

    .line 112
    .local v5, e:Lcom/coremedia/iso/boxes/TimeToSampleBox$Entry;
    invoke-virtual {v5}, Lcom/coremedia/iso/boxes/TimeToSampleBox$Entry;->getCount()J

    move-result-wide v39

    const-wide/16 v41, 0x1

    add-long v39, v39, v41

    move-wide/from16 v0, v39

    invoke-virtual {v5, v0, v1}, Lcom/coremedia/iso/boxes/TimeToSampleBox$Entry;->setCount(J)V

    goto/16 :goto_2

    .line 115
    .end local v5           #e:Lcom/coremedia/iso/boxes/TimeToSampleBox$Entry;
    :cond_f
    invoke-virtual/range {v28 .. v28}, Lcom/coremedia/iso/boxes/fragment/TrackFragmentHeaderBox;->hasDefaultSampleDuration()Z

    move-result v39

    if-eqz v39, :cond_10

    .line 116
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/googlecode/mp4parser/authoring/Mp4TrackImpl;->decodingTimeEntries:Ljava/util/List;

    move-object/from16 v39, v0

    new-instance v40, Lcom/coremedia/iso/boxes/TimeToSampleBox$Entry;

    const-wide/16 v41, 0x1

    invoke-virtual/range {v28 .. v28}, Lcom/coremedia/iso/boxes/fragment/TrackFragmentHeaderBox;->getDefaultSampleDuration()J

    move-result-wide v43

    invoke-direct/range {v40 .. v44}, Lcom/coremedia/iso/boxes/TimeToSampleBox$Entry;-><init>(JJ)V

    invoke-interface/range {v39 .. v40}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2

    .line 118
    :cond_10
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/googlecode/mp4parser/authoring/Mp4TrackImpl;->decodingTimeEntries:Ljava/util/List;

    move-object/from16 v39, v0

    new-instance v40, Lcom/coremedia/iso/boxes/TimeToSampleBox$Entry;

    const-wide/16 v41, 0x1

    invoke-virtual/range {v36 .. v36}, Lcom/coremedia/iso/boxes/fragment/TrackExtendsBox;->getDefaultSampleDuration()J

    move-result-wide v43

    invoke-direct/range {v40 .. v44}, Lcom/coremedia/iso/boxes/TimeToSampleBox$Entry;-><init>(JJ)V

    invoke-interface/range {v39 .. v40}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2

    .line 127
    :cond_11
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/googlecode/mp4parser/authoring/Mp4TrackImpl;->compositionTimeEntries:Ljava/util/List;

    move-object/from16 v39, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/googlecode/mp4parser/authoring/Mp4TrackImpl;->compositionTimeEntries:Ljava/util/List;

    move-object/from16 v40, v0

    invoke-interface/range {v40 .. v40}, Ljava/util/List;->size()I

    move-result v40

    add-int/lit8 v40, v40, -0x1

    invoke-interface/range {v39 .. v40}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/coremedia/iso/boxes/CompositionTimeToSample$Entry;

    .line 128
    .local v5, e:Lcom/coremedia/iso/boxes/CompositionTimeToSample$Entry;
    invoke-virtual {v5}, Lcom/coremedia/iso/boxes/CompositionTimeToSample$Entry;->getCount()I

    move-result v39

    add-int/lit8 v39, v39, 0x1

    move/from16 v0, v39

    invoke-virtual {v5, v0}, Lcom/coremedia/iso/boxes/CompositionTimeToSample$Entry;->setCount(I)V

    goto/16 :goto_3

    .line 135
    .end local v5           #e:Lcom/coremedia/iso/boxes/CompositionTimeToSample$Entry;
    :cond_12
    if-eqz v7, :cond_13

    invoke-virtual/range {v37 .. v37}, Lcom/coremedia/iso/boxes/fragment/TrackRunBox;->isFirstSampleFlagsPresent()Z

    move-result v39

    if-eqz v39, :cond_13

    .line 136
    invoke-virtual/range {v37 .. v37}, Lcom/coremedia/iso/boxes/fragment/TrackRunBox;->getFirstSampleFlags()Lcom/coremedia/iso/boxes/fragment/SampleFlags;

    move-result-object v22

    .restart local v22       #sampleFlags:Lcom/coremedia/iso/boxes/fragment/SampleFlags;
    goto/16 :goto_4

    .line 138
    .end local v22           #sampleFlags:Lcom/coremedia/iso/boxes/fragment/SampleFlags;
    :cond_13
    invoke-virtual/range {v28 .. v28}, Lcom/coremedia/iso/boxes/fragment/TrackFragmentHeaderBox;->hasDefaultSampleFlags()Z

    move-result v39

    if-eqz v39, :cond_14

    .line 139
    invoke-virtual/range {v28 .. v28}, Lcom/coremedia/iso/boxes/fragment/TrackFragmentHeaderBox;->getDefaultSampleFlags()Lcom/coremedia/iso/boxes/fragment/SampleFlags;

    move-result-object v22

    .restart local v22       #sampleFlags:Lcom/coremedia/iso/boxes/fragment/SampleFlags;
    goto/16 :goto_4

    .line 141
    .end local v22           #sampleFlags:Lcom/coremedia/iso/boxes/fragment/SampleFlags;
    :cond_14
    invoke-virtual/range {v36 .. v36}, Lcom/coremedia/iso/boxes/fragment/TrackExtendsBox;->getDefaultSampleFlags()Lcom/coremedia/iso/boxes/fragment/SampleFlags;

    move-result-object v22

    .restart local v22       #sampleFlags:Lcom/coremedia/iso/boxes/fragment/SampleFlags;
    goto/16 :goto_4

    .line 157
    .end local v6           #entry:Lcom/coremedia/iso/boxes/fragment/TrackRunBox$Entry;
    .end local v7           #first:Z
    .end local v15           #i$:Ljava/util/Iterator;
    .end local v19           #movieFragmentBox:Lcom/coremedia/iso/boxes/fragment/MovieFragmentBox;
    .end local v22           #sampleFlags:Lcom/coremedia/iso/boxes/fragment/SampleFlags;
    .end local v28           #tfhd:Lcom/coremedia/iso/boxes/fragment/TrackFragmentHeaderBox;
    .end local v34           #traf:Lcom/coremedia/iso/boxes/fragment/TrackFragmentBox;
    .end local v35           #trafs:Ljava/util/List;,"Ljava/util/List<Lcom/coremedia/iso/boxes/fragment/TrackFragmentBox;>;"
    .end local v37           #trun:Lcom/coremedia/iso/boxes/fragment/TrackRunBox;
    .end local v38           #truns:Ljava/util/List;,"Ljava/util/List<Lcom/coremedia/iso/boxes/fragment/TrackRunBox;>;"
    :cond_15
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/googlecode/mp4parser/authoring/Mp4TrackImpl;->syncSamples:[J

    move-object/from16 v21, v0

    .line 158
    .local v21, oldSS:[J
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/googlecode/mp4parser/authoring/Mp4TrackImpl;->syncSamples:[J

    move-object/from16 v39, v0

    move-object/from16 v0, v39

    array-length v0, v0

    move/from16 v39, v0

    invoke-interface/range {v26 .. v26}, Ljava/util/List;->size()I

    move-result v40

    add-int v39, v39, v40

    move/from16 v0, v39

    new-array v0, v0, [J

    move-object/from16 v39, v0

    move-object/from16 v0, v39

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/googlecode/mp4parser/authoring/Mp4TrackImpl;->syncSamples:[J

    .line 159
    const/16 v39, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/googlecode/mp4parser/authoring/Mp4TrackImpl;->syncSamples:[J

    move-object/from16 v40, v0

    const/16 v41, 0x0

    move-object/from16 v0, v21

    array-length v0, v0

    move/from16 v42, v0

    move-object/from16 v0, v21

    move/from16 v1, v39

    move-object/from16 v2, v40

    move/from16 v3, v41

    move/from16 v4, v42

    invoke-static {v0, v1, v2, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 160
    invoke-interface/range {v26 .. v26}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v16

    .line 161
    .local v16, iterator:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/Long;>;"
    move-object/from16 v0, v21

    array-length v8, v0

    .line 162
    .local v8, i:I
    :goto_5
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->hasNext()Z

    move-result v39

    if-eqz v39, :cond_6

    .line 163
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v27

    check-cast v27, Ljava/lang/Long;

    .line 164
    .local v27, syncSampleNumber:Ljava/lang/Long;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/googlecode/mp4parser/authoring/Mp4TrackImpl;->syncSamples:[J

    move-object/from16 v39, v0

    add-int/lit8 v9, v8, 0x1

    .end local v8           #i:I
    .local v9, i:I
    invoke-virtual/range {v27 .. v27}, Ljava/lang/Long;->longValue()J

    move-result-wide v40

    aput-wide v40, v39, v8

    move v8, v9

    .line 165
    .end local v9           #i:I
    .restart local v8       #i:I
    goto :goto_5

    .line 170
    .end local v8           #i:I
    .end local v16           #iterator:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/Long;>;"
    .end local v20           #mvex:Lcom/coremedia/iso/boxes/fragment/MovieExtendsBox;
    .end local v21           #oldSS:[J
    .end local v23           #sampleNumber:J
    .end local v26           #syncSampleList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/Long;>;"
    .end local v27           #syncSampleNumber:Ljava/lang/Long;
    .end local v31           #trackExtendsBoxes:Ljava/util/List;,"Ljava/util/List<Lcom/coremedia/iso/boxes/fragment/TrackExtendsBox;>;"
    .end local v36           #trex:Lcom/coremedia/iso/boxes/fragment/TrackExtendsBox;
    :cond_16
    invoke-virtual/range {p1 .. p1}, Lcom/coremedia/iso/boxes/TrackBox;->getMediaBox()Lcom/coremedia/iso/boxes/MediaBox;

    move-result-object v39

    invoke-virtual/range {v39 .. v39}, Lcom/coremedia/iso/boxes/MediaBox;->getMediaHeaderBox()Lcom/coremedia/iso/boxes/MediaHeaderBox;

    move-result-object v17

    .line 171
    .local v17, mdhd:Lcom/coremedia/iso/boxes/MediaHeaderBox;
    invoke-virtual/range {p1 .. p1}, Lcom/coremedia/iso/boxes/TrackBox;->getTrackHeaderBox()Lcom/coremedia/iso/boxes/TrackHeaderBox;

    move-result-object v30

    .line 173
    .local v30, tkhd:Lcom/coremedia/iso/boxes/TrackHeaderBox;
    invoke-virtual/range {v30 .. v30}, Lcom/coremedia/iso/boxes/TrackHeaderBox;->isEnabled()Z

    move-result v39

    move-object/from16 v0, p0

    move/from16 v1, v39

    invoke-virtual {v0, v1}, Lcom/googlecode/mp4parser/authoring/Mp4TrackImpl;->setEnabled(Z)V

    .line 174
    invoke-virtual/range {v30 .. v30}, Lcom/coremedia/iso/boxes/TrackHeaderBox;->isInMovie()Z

    move-result v39

    move-object/from16 v0, p0

    move/from16 v1, v39

    invoke-virtual {v0, v1}, Lcom/googlecode/mp4parser/authoring/Mp4TrackImpl;->setInMovie(Z)V

    .line 175
    invoke-virtual/range {v30 .. v30}, Lcom/coremedia/iso/boxes/TrackHeaderBox;->isInPoster()Z

    move-result v39

    move-object/from16 v0, p0

    move/from16 v1, v39

    invoke-virtual {v0, v1}, Lcom/googlecode/mp4parser/authoring/Mp4TrackImpl;->setInPoster(Z)V

    .line 176
    invoke-virtual/range {v30 .. v30}, Lcom/coremedia/iso/boxes/TrackHeaderBox;->isInPreview()Z

    move-result v39

    move-object/from16 v0, p0

    move/from16 v1, v39

    invoke-virtual {v0, v1}, Lcom/googlecode/mp4parser/authoring/Mp4TrackImpl;->setInPreview(Z)V

    .line 178
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/googlecode/mp4parser/authoring/Mp4TrackImpl;->trackMetaData:Lcom/googlecode/mp4parser/authoring/TrackMetaData;

    move-object/from16 v39, v0

    invoke-virtual/range {v30 .. v30}, Lcom/coremedia/iso/boxes/TrackHeaderBox;->getTrackId()J

    move-result-wide v40

    invoke-virtual/range {v39 .. v41}, Lcom/googlecode/mp4parser/authoring/TrackMetaData;->setTrackId(J)V

    .line 179
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/googlecode/mp4parser/authoring/Mp4TrackImpl;->trackMetaData:Lcom/googlecode/mp4parser/authoring/TrackMetaData;

    move-object/from16 v39, v0

    invoke-virtual/range {v17 .. v17}, Lcom/coremedia/iso/boxes/MediaHeaderBox;->getCreationTime()J

    move-result-wide v40

    invoke-static/range {v40 .. v41}, Lcom/googlecode/mp4parser/authoring/DateHelper;->convert(J)Ljava/util/Date;

    move-result-object v40

    invoke-virtual/range {v39 .. v40}, Lcom/googlecode/mp4parser/authoring/TrackMetaData;->setCreationTime(Ljava/util/Date;)V

    .line 180
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/googlecode/mp4parser/authoring/Mp4TrackImpl;->trackMetaData:Lcom/googlecode/mp4parser/authoring/TrackMetaData;

    move-object/from16 v39, v0

    invoke-virtual/range {v17 .. v17}, Lcom/coremedia/iso/boxes/MediaHeaderBox;->getLanguage()Ljava/lang/String;

    move-result-object v40

    invoke-virtual/range {v39 .. v40}, Lcom/googlecode/mp4parser/authoring/TrackMetaData;->setLanguage(Ljava/lang/String;)V

    .line 186
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/googlecode/mp4parser/authoring/Mp4TrackImpl;->trackMetaData:Lcom/googlecode/mp4parser/authoring/TrackMetaData;

    move-object/from16 v39, v0

    invoke-virtual/range {v17 .. v17}, Lcom/coremedia/iso/boxes/MediaHeaderBox;->getModificationTime()J

    move-result-wide v40

    invoke-static/range {v40 .. v41}, Lcom/googlecode/mp4parser/authoring/DateHelper;->convert(J)Ljava/util/Date;

    move-result-object v40

    invoke-virtual/range {v39 .. v40}, Lcom/googlecode/mp4parser/authoring/TrackMetaData;->setModificationTime(Ljava/util/Date;)V

    .line 187
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/googlecode/mp4parser/authoring/Mp4TrackImpl;->trackMetaData:Lcom/googlecode/mp4parser/authoring/TrackMetaData;

    move-object/from16 v39, v0

    invoke-virtual/range {v17 .. v17}, Lcom/coremedia/iso/boxes/MediaHeaderBox;->getTimescale()J

    move-result-wide v40

    invoke-virtual/range {v39 .. v41}, Lcom/googlecode/mp4parser/authoring/TrackMetaData;->setTimescale(J)V

    .line 188
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/googlecode/mp4parser/authoring/Mp4TrackImpl;->trackMetaData:Lcom/googlecode/mp4parser/authoring/TrackMetaData;

    move-object/from16 v39, v0

    invoke-virtual/range {v30 .. v30}, Lcom/coremedia/iso/boxes/TrackHeaderBox;->getHeight()D

    move-result-wide v40

    invoke-virtual/range {v39 .. v41}, Lcom/googlecode/mp4parser/authoring/TrackMetaData;->setHeight(D)V

    .line 189
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/googlecode/mp4parser/authoring/Mp4TrackImpl;->trackMetaData:Lcom/googlecode/mp4parser/authoring/TrackMetaData;

    move-object/from16 v39, v0

    invoke-virtual/range {v30 .. v30}, Lcom/coremedia/iso/boxes/TrackHeaderBox;->getWidth()D

    move-result-wide v40

    invoke-virtual/range {v39 .. v41}, Lcom/googlecode/mp4parser/authoring/TrackMetaData;->setWidth(D)V

    .line 190
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/googlecode/mp4parser/authoring/Mp4TrackImpl;->trackMetaData:Lcom/googlecode/mp4parser/authoring/TrackMetaData;

    move-object/from16 v39, v0

    invoke-virtual/range {v30 .. v30}, Lcom/coremedia/iso/boxes/TrackHeaderBox;->getLayer()I

    move-result v40

    invoke-virtual/range {v39 .. v40}, Lcom/googlecode/mp4parser/authoring/TrackMetaData;->setLayer(I)V

    .line 191
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/googlecode/mp4parser/authoring/Mp4TrackImpl;->trackMetaData:Lcom/googlecode/mp4parser/authoring/TrackMetaData;

    move-object/from16 v39, v0

    invoke-virtual/range {v30 .. v30}, Lcom/coremedia/iso/boxes/TrackHeaderBox;->getMatrix()[J

    move-result-object v40

    invoke-virtual/range {v39 .. v40}, Lcom/googlecode/mp4parser/authoring/TrackMetaData;->setMatrix([J)V

    goto/16 :goto_0
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
    .line 208
    iget-object v0, p0, Lcom/googlecode/mp4parser/authoring/Mp4TrackImpl;->compositionTimeEntries:Ljava/util/List;

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
    .line 204
    iget-object v0, p0, Lcom/googlecode/mp4parser/authoring/Mp4TrackImpl;->decodingTimeEntries:Ljava/util/List;

    return-object v0
.end method

.method public getHandler()Ljava/lang/String;
    .locals 1

    .prologue
    .line 224
    iget-object v0, p0, Lcom/googlecode/mp4parser/authoring/Mp4TrackImpl;->handler:Ljava/lang/String;

    return-object v0
.end method

.method public getMediaHeaderBox()Lcom/coremedia/iso/boxes/AbstractMediaHeaderBox;
    .locals 1

    .prologue
    .line 233
    iget-object v0, p0, Lcom/googlecode/mp4parser/authoring/Mp4TrackImpl;->mihd:Lcom/coremedia/iso/boxes/AbstractMediaHeaderBox;

    return-object v0
.end method

.method public bridge synthetic getMediaHeaderBox()Lcom/coremedia/iso/boxes/Box;
    .locals 1

    .prologue
    .line 35
    invoke-virtual {p0}, Lcom/googlecode/mp4parser/authoring/Mp4TrackImpl;->getMediaHeaderBox()Lcom/coremedia/iso/boxes/AbstractMediaHeaderBox;

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
    .line 216
    iget-object v0, p0, Lcom/googlecode/mp4parser/authoring/Mp4TrackImpl;->sampleDependencies:Ljava/util/List;

    return-object v0
.end method

.method public getSampleDescriptionBox()Lcom/coremedia/iso/boxes/SampleDescriptionBox;
    .locals 1

    .prologue
    .line 200
    iget-object v0, p0, Lcom/googlecode/mp4parser/authoring/Mp4TrackImpl;->sampleDescriptionBox:Lcom/coremedia/iso/boxes/SampleDescriptionBox;

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
    .line 195
    iget-object v0, p0, Lcom/googlecode/mp4parser/authoring/Mp4TrackImpl;->samples:Ljava/util/List;

    return-object v0
.end method

.method public getSubsampleInformationBox()Lcom/coremedia/iso/boxes/SubSampleInformationBox;
    .locals 1

    .prologue
    .line 237
    const/4 v0, 0x0

    return-object v0
.end method

.method public getSyncSamples()[J
    .locals 1

    .prologue
    .line 212
    iget-object v0, p0, Lcom/googlecode/mp4parser/authoring/Mp4TrackImpl;->syncSamples:[J

    return-object v0
.end method

.method public getTrackMetaData()Lcom/googlecode/mp4parser/authoring/TrackMetaData;
    .locals 1

    .prologue
    .line 220
    iget-object v0, p0, Lcom/googlecode/mp4parser/authoring/Mp4TrackImpl;->trackMetaData:Lcom/googlecode/mp4parser/authoring/TrackMetaData;

    return-object v0
.end method

.method public isReady()Z
    .locals 1

    .prologue
    .line 228
    iget-boolean v0, p0, Lcom/googlecode/mp4parser/authoring/Mp4TrackImpl;->ready:Z

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 242
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Mp4TrackImpl{handler=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/googlecode/mp4parser/authoring/Mp4TrackImpl;->handler:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
