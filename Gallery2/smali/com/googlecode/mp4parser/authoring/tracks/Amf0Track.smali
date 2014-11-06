.class public Lcom/googlecode/mp4parser/authoring/tracks/Amf0Track;
.super Lcom/googlecode/mp4parser/authoring/AbstractTrack;
.source "Amf0Track.java"


# instance fields
.field rawSamples:Ljava/util/SortedMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/SortedMap",
            "<",
            "Ljava/lang/Long;",
            "[B>;"
        }
    .end annotation
.end field

.field private trackMetaData:Lcom/googlecode/mp4parser/authoring/TrackMetaData;


# direct methods
.method public constructor <init>(Ljava/util/Map;)V
    .locals 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Long;",
            "[B>;)V"
        }
    .end annotation

    .prologue
    .line 44
    .local p1, rawSamples:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/Long;[B>;"
    invoke-direct {p0}, Lcom/googlecode/mp4parser/authoring/AbstractTrack;-><init>()V

    .line 34
    new-instance v0, Lcom/googlecode/mp4parser/authoring/tracks/Amf0Track$1;

    invoke-direct {v0, p0}, Lcom/googlecode/mp4parser/authoring/tracks/Amf0Track$1;-><init>(Lcom/googlecode/mp4parser/authoring/tracks/Amf0Track;)V

    iput-object v0, p0, Lcom/googlecode/mp4parser/authoring/tracks/Amf0Track;->rawSamples:Ljava/util/SortedMap;

    .line 36
    new-instance v0, Lcom/googlecode/mp4parser/authoring/TrackMetaData;

    invoke-direct {v0}, Lcom/googlecode/mp4parser/authoring/TrackMetaData;-><init>()V

    iput-object v0, p0, Lcom/googlecode/mp4parser/authoring/tracks/Amf0Track;->trackMetaData:Lcom/googlecode/mp4parser/authoring/TrackMetaData;

    .line 45
    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0, p1}, Ljava/util/TreeMap;-><init>(Ljava/util/Map;)V

    iput-object v0, p0, Lcom/googlecode/mp4parser/authoring/tracks/Amf0Track;->rawSamples:Ljava/util/SortedMap;

    .line 46
    iget-object v0, p0, Lcom/googlecode/mp4parser/authoring/tracks/Amf0Track;->trackMetaData:Lcom/googlecode/mp4parser/authoring/TrackMetaData;

    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0, v1}, Lcom/googlecode/mp4parser/authoring/TrackMetaData;->setCreationTime(Ljava/util/Date;)V

    .line 47
    iget-object v0, p0, Lcom/googlecode/mp4parser/authoring/tracks/Amf0Track;->trackMetaData:Lcom/googlecode/mp4parser/authoring/TrackMetaData;

    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0, v1}, Lcom/googlecode/mp4parser/authoring/TrackMetaData;->setModificationTime(Ljava/util/Date;)V

    .line 48
    iget-object v0, p0, Lcom/googlecode/mp4parser/authoring/tracks/Amf0Track;->trackMetaData:Lcom/googlecode/mp4parser/authoring/TrackMetaData;

    const-wide/16 v1, 0x3e8

    invoke-virtual {v0, v1, v2}, Lcom/googlecode/mp4parser/authoring/TrackMetaData;->setTimescale(J)V

    .line 49
    iget-object v0, p0, Lcom/googlecode/mp4parser/authoring/tracks/Amf0Track;->trackMetaData:Lcom/googlecode/mp4parser/authoring/TrackMetaData;

    const-string v1, "eng"

    invoke-virtual {v0, v1}, Lcom/googlecode/mp4parser/authoring/TrackMetaData;->setLanguage(Ljava/lang/String;)V

    .line 50
    return-void
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
    .line 87
    const/4 v0, 0x0

    return-object v0
.end method

.method public getDecodingTimeEntries()Ljava/util/List;
    .locals 13
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
    const-wide/16 v11, 0x1

    .line 69
    new-instance v7, Ljava/util/LinkedList;

    invoke-direct {v7}, Ljava/util/LinkedList;-><init>()V

    .line 70
    .local v7, timesToSample:Ljava/util/LinkedList;,"Ljava/util/LinkedList<Lcom/coremedia/iso/boxes/TimeToSampleBox$Entry;>;"
    new-instance v4, Ljava/util/LinkedList;

    iget-object v8, p0, Lcom/googlecode/mp4parser/authoring/tracks/Amf0Track;->rawSamples:Ljava/util/SortedMap;

    invoke-interface {v8}, Ljava/util/SortedMap;->keySet()Ljava/util/Set;

    move-result-object v8

    invoke-direct {v4, v8}, Ljava/util/LinkedList;-><init>(Ljava/util/Collection;)V

    .line 71
    .local v4, keys:Ljava/util/LinkedList;,"Ljava/util/LinkedList<Ljava/lang/Long;>;"
    invoke-static {v4}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 72
    const-wide/16 v5, 0x0

    .line 73
    .local v5, lastTimeStamp:J
    invoke-virtual {v4}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    .line 74
    .local v3, key:Ljava/lang/Long;
    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    sub-long v0, v8, v5

    .line 75
    .local v0, delta:J
    invoke-virtual {v7}, Ljava/util/LinkedList;->size()I

    move-result v8

    if-lez v8, :cond_0

    invoke-virtual {v7}, Ljava/util/LinkedList;->peek()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/coremedia/iso/boxes/TimeToSampleBox$Entry;

    invoke-virtual {v8}, Lcom/coremedia/iso/boxes/TimeToSampleBox$Entry;->getDelta()J

    move-result-wide v8

    cmp-long v8, v8, v0

    if-nez v8, :cond_0

    .line 76
    invoke-virtual {v7}, Ljava/util/LinkedList;->peek()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/coremedia/iso/boxes/TimeToSampleBox$Entry;

    invoke-virtual {v7}, Ljava/util/LinkedList;->peek()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/coremedia/iso/boxes/TimeToSampleBox$Entry;

    invoke-virtual {v9}, Lcom/coremedia/iso/boxes/TimeToSampleBox$Entry;->getCount()J

    move-result-wide v9

    add-long/2addr v9, v11

    invoke-virtual {v8, v9, v10}, Lcom/coremedia/iso/boxes/TimeToSampleBox$Entry;->setCount(J)V

    .line 80
    :goto_1
    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    .line 81
    goto :goto_0

    .line 78
    :cond_0
    new-instance v8, Lcom/coremedia/iso/boxes/TimeToSampleBox$Entry;

    invoke-direct {v8, v11, v12, v0, v1}, Lcom/coremedia/iso/boxes/TimeToSampleBox$Entry;-><init>(JJ)V

    invoke-virtual {v7, v8}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 82
    .end local v0           #delta:J
    .end local v3           #key:Ljava/lang/Long;
    :cond_1
    return-object v7
.end method

.method public getHandler()Ljava/lang/String;
    .locals 1

    .prologue
    .line 105
    const-string v0, "data"

    return-object v0
.end method

.method public getMediaHeaderBox()Lcom/coremedia/iso/boxes/Box;
    .locals 1

    .prologue
    .line 109
    new-instance v0, Lcom/coremedia/iso/boxes/NullMediaHeaderBox;

    invoke-direct {v0}, Lcom/coremedia/iso/boxes/NullMediaHeaderBox;-><init>()V

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
    .line 97
    const/4 v0, 0x0

    return-object v0
.end method

.method public getSampleDescriptionBox()Lcom/coremedia/iso/boxes/SampleDescriptionBox;
    .locals 3

    .prologue
    .line 61
    new-instance v1, Lcom/coremedia/iso/boxes/SampleDescriptionBox;

    invoke-direct {v1}, Lcom/coremedia/iso/boxes/SampleDescriptionBox;-><init>()V

    .line 62
    .local v1, stsd:Lcom/coremedia/iso/boxes/SampleDescriptionBox;
    new-instance v0, Lcom/googlecode/mp4parser/boxes/adobe/ActionMessageFormat0SampleEntryBox;

    invoke-direct {v0}, Lcom/googlecode/mp4parser/boxes/adobe/ActionMessageFormat0SampleEntryBox;-><init>()V

    .line 63
    .local v0, amf0:Lcom/googlecode/mp4parser/boxes/adobe/ActionMessageFormat0SampleEntryBox;
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lcom/googlecode/mp4parser/boxes/adobe/ActionMessageFormat0SampleEntryBox;->setDataReferenceIndex(I)V

    .line 64
    invoke-virtual {v1, v0}, Lcom/coremedia/iso/boxes/SampleDescriptionBox;->addBox(Lcom/coremedia/iso/boxes/Box;)V

    .line 65
    return-object v1
.end method

.method public getSamples()Ljava/util/List;
    .locals 4
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
    .line 53
    new-instance v2, Ljava/util/LinkedList;

    invoke-direct {v2}, Ljava/util/LinkedList;-><init>()V

    .line 54
    .local v2, samples:Ljava/util/LinkedList;,"Ljava/util/LinkedList<Ljava/nio/ByteBuffer;>;"
    iget-object v3, p0, Lcom/googlecode/mp4parser/authoring/tracks/Amf0Track;->rawSamples:Ljava/util/SortedMap;

    invoke-interface {v3}, Ljava/util/SortedMap;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    .line 55
    .local v0, bytes:[B
    invoke-static {v0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 57
    .end local v0           #bytes:[B
    :cond_0
    return-object v2
.end method

.method public getSubsampleInformationBox()Lcom/coremedia/iso/boxes/SubSampleInformationBox;
    .locals 1

    .prologue
    .line 113
    const/4 v0, 0x0

    return-object v0
.end method

.method public getSyncSamples()[J
    .locals 1

    .prologue
    .line 92
    const/4 v0, 0x0

    return-object v0
.end method

.method public getTrackMetaData()Lcom/googlecode/mp4parser/authoring/TrackMetaData;
    .locals 1

    .prologue
    .line 101
    iget-object v0, p0, Lcom/googlecode/mp4parser/authoring/tracks/Amf0Track;->trackMetaData:Lcom/googlecode/mp4parser/authoring/TrackMetaData;

    return-object v0
.end method
