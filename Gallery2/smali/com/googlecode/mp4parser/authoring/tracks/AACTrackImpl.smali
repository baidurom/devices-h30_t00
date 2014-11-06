.class public Lcom/googlecode/mp4parser/authoring/tracks/AACTrackImpl;
.super Lcom/googlecode/mp4parser/authoring/AbstractTrack;
.source "AACTrackImpl.java"


# static fields
.field public static samplingFrequencyIndexMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field avgBitRate:J

.field bitrate:I

.field bufferSizeDB:I

.field channelCount:I

.field channelconfig:I

.field private inputStream:Ljava/io/BufferedInputStream;

.field private lang:Ljava/lang/String;

.field maxBitRate:J

.field readSamples:Z

.field sampleDescriptionBox:Lcom/coremedia/iso/boxes/SampleDescriptionBox;

.field samplerate:I

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

.field stts:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/coremedia/iso/boxes/TimeToSampleBox$Entry;",
            ">;"
        }
    .end annotation
.end field

.field trackMetaData:Lcom/googlecode/mp4parser/authoring/TrackMetaData;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 35
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/googlecode/mp4parser/authoring/tracks/AACTrackImpl;->samplingFrequencyIndexMap:Ljava/util/Map;

    .line 38
    sget-object v0, Lcom/googlecode/mp4parser/authoring/tracks/AACTrackImpl;->samplingFrequencyIndexMap:Ljava/util/Map;

    const v1, 0x17700

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 39
    sget-object v0, Lcom/googlecode/mp4parser/authoring/tracks/AACTrackImpl;->samplingFrequencyIndexMap:Ljava/util/Map;

    const v1, 0x15888

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 40
    sget-object v0, Lcom/googlecode/mp4parser/authoring/tracks/AACTrackImpl;->samplingFrequencyIndexMap:Ljava/util/Map;

    const v1, 0xfa00

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 41
    sget-object v0, Lcom/googlecode/mp4parser/authoring/tracks/AACTrackImpl;->samplingFrequencyIndexMap:Ljava/util/Map;

    const v1, 0xbb80

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 42
    sget-object v0, Lcom/googlecode/mp4parser/authoring/tracks/AACTrackImpl;->samplingFrequencyIndexMap:Ljava/util/Map;

    const v1, 0xac44

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 43
    sget-object v0, Lcom/googlecode/mp4parser/authoring/tracks/AACTrackImpl;->samplingFrequencyIndexMap:Ljava/util/Map;

    const/16 v1, 0x7d00

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x5

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 44
    sget-object v0, Lcom/googlecode/mp4parser/authoring/tracks/AACTrackImpl;->samplingFrequencyIndexMap:Ljava/util/Map;

    const/16 v1, 0x5dc0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x6

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 45
    sget-object v0, Lcom/googlecode/mp4parser/authoring/tracks/AACTrackImpl;->samplingFrequencyIndexMap:Ljava/util/Map;

    const/16 v1, 0x5622

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x7

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 46
    sget-object v0, Lcom/googlecode/mp4parser/authoring/tracks/AACTrackImpl;->samplingFrequencyIndexMap:Ljava/util/Map;

    const/16 v1, 0x3e80

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x8

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 47
    sget-object v0, Lcom/googlecode/mp4parser/authoring/tracks/AACTrackImpl;->samplingFrequencyIndexMap:Ljava/util/Map;

    const/16 v1, 0x2ee0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x9

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 48
    sget-object v0, Lcom/googlecode/mp4parser/authoring/tracks/AACTrackImpl;->samplingFrequencyIndexMap:Ljava/util/Map;

    const/16 v1, 0x2b11

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0xa

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 49
    sget-object v0, Lcom/googlecode/mp4parser/authoring/tracks/AACTrackImpl;->samplingFrequencyIndexMap:Ljava/util/Map;

    const/16 v1, 0x1f40

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0xb

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 50
    sget-object v0, Lcom/googlecode/mp4parser/authoring/tracks/AACTrackImpl;->samplingFrequencyIndexMap:Ljava/util/Map;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const v2, 0x17700

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 51
    sget-object v0, Lcom/googlecode/mp4parser/authoring/tracks/AACTrackImpl;->samplingFrequencyIndexMap:Ljava/util/Map;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const v2, 0x15888

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 52
    sget-object v0, Lcom/googlecode/mp4parser/authoring/tracks/AACTrackImpl;->samplingFrequencyIndexMap:Ljava/util/Map;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const v2, 0xfa00

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 53
    sget-object v0, Lcom/googlecode/mp4parser/authoring/tracks/AACTrackImpl;->samplingFrequencyIndexMap:Ljava/util/Map;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const v2, 0xbb80

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 54
    sget-object v0, Lcom/googlecode/mp4parser/authoring/tracks/AACTrackImpl;->samplingFrequencyIndexMap:Ljava/util/Map;

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const v2, 0xac44

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 55
    sget-object v0, Lcom/googlecode/mp4parser/authoring/tracks/AACTrackImpl;->samplingFrequencyIndexMap:Ljava/util/Map;

    const/4 v1, 0x5

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x7d00

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 56
    sget-object v0, Lcom/googlecode/mp4parser/authoring/tracks/AACTrackImpl;->samplingFrequencyIndexMap:Ljava/util/Map;

    const/4 v1, 0x6

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x5dc0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 57
    sget-object v0, Lcom/googlecode/mp4parser/authoring/tracks/AACTrackImpl;->samplingFrequencyIndexMap:Ljava/util/Map;

    const/4 v1, 0x7

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x5622

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 58
    sget-object v0, Lcom/googlecode/mp4parser/authoring/tracks/AACTrackImpl;->samplingFrequencyIndexMap:Ljava/util/Map;

    const/16 v1, 0x8

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x3e80

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 59
    sget-object v0, Lcom/googlecode/mp4parser/authoring/tracks/AACTrackImpl;->samplingFrequencyIndexMap:Ljava/util/Map;

    const/16 v1, 0x9

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x2ee0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 60
    sget-object v0, Lcom/googlecode/mp4parser/authoring/tracks/AACTrackImpl;->samplingFrequencyIndexMap:Ljava/util/Map;

    const/16 v1, 0xa

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x2b11

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 61
    sget-object v0, Lcom/googlecode/mp4parser/authoring/tracks/AACTrackImpl;->samplingFrequencyIndexMap:Ljava/util/Map;

    const/16 v1, 0xb

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x1f40

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 62
    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 1
    .parameter "inputStream"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 88
    invoke-direct {p0}, Lcom/googlecode/mp4parser/authoring/AbstractTrack;-><init>()V

    .line 64
    new-instance v0, Lcom/googlecode/mp4parser/authoring/TrackMetaData;

    invoke-direct {v0}, Lcom/googlecode/mp4parser/authoring/TrackMetaData;-><init>()V

    iput-object v0, p0, Lcom/googlecode/mp4parser/authoring/tracks/AACTrackImpl;->trackMetaData:Lcom/googlecode/mp4parser/authoring/TrackMetaData;

    .line 78
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/googlecode/mp4parser/authoring/tracks/AACTrackImpl;->readSamples:Z

    .line 80
    const-string v0, "und"

    iput-object v0, p0, Lcom/googlecode/mp4parser/authoring/tracks/AACTrackImpl;->lang:Ljava/lang/String;

    .line 89
    invoke-direct {p0, p1}, Lcom/googlecode/mp4parser/authoring/tracks/AACTrackImpl;->parse(Ljava/io/InputStream;)V

    .line 90
    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;Ljava/lang/String;)V
    .locals 1
    .parameter "inputStream"
    .parameter "lang"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 83
    invoke-direct {p0}, Lcom/googlecode/mp4parser/authoring/AbstractTrack;-><init>()V

    .line 64
    new-instance v0, Lcom/googlecode/mp4parser/authoring/TrackMetaData;

    invoke-direct {v0}, Lcom/googlecode/mp4parser/authoring/TrackMetaData;-><init>()V

    iput-object v0, p0, Lcom/googlecode/mp4parser/authoring/tracks/AACTrackImpl;->trackMetaData:Lcom/googlecode/mp4parser/authoring/TrackMetaData;

    .line 78
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/googlecode/mp4parser/authoring/tracks/AACTrackImpl;->readSamples:Z

    .line 80
    const-string v0, "und"

    iput-object v0, p0, Lcom/googlecode/mp4parser/authoring/tracks/AACTrackImpl;->lang:Ljava/lang/String;

    .line 84
    iput-object p2, p0, Lcom/googlecode/mp4parser/authoring/tracks/AACTrackImpl;->lang:Ljava/lang/String;

    .line 85
    invoke-direct {p0, p1}, Lcom/googlecode/mp4parser/authoring/tracks/AACTrackImpl;->parse(Ljava/io/InputStream;)V

    .line 86
    return-void
.end method

.method private parse(Ljava/io/InputStream;)V
    .locals 27
    .parameter "inputStream"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 93
    new-instance v23, Ljava/io/BufferedInputStream;

    move-object/from16 v0, v23

    move-object/from16 v1, p1

    invoke-direct {v0, v1}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/googlecode/mp4parser/authoring/tracks/AACTrackImpl;->inputStream:Ljava/io/BufferedInputStream;

    .line 94
    new-instance v23, Ljava/util/LinkedList;

    invoke-direct/range {v23 .. v23}, Ljava/util/LinkedList;-><init>()V

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/googlecode/mp4parser/authoring/tracks/AACTrackImpl;->stts:Ljava/util/List;

    .line 96
    invoke-direct/range {p0 .. p0}, Lcom/googlecode/mp4parser/authoring/tracks/AACTrackImpl;->readVariables()Z

    move-result v23

    if-nez v23, :cond_0

    .line 97
    new-instance v23, Ljava/io/IOException;

    invoke-direct/range {v23 .. v23}, Ljava/io/IOException;-><init>()V

    throw v23

    .line 100
    :cond_0
    new-instance v23, Ljava/util/LinkedList;

    invoke-direct/range {v23 .. v23}, Ljava/util/LinkedList;-><init>()V

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/googlecode/mp4parser/authoring/tracks/AACTrackImpl;->samples:Ljava/util/List;

    .line 101
    invoke-direct/range {p0 .. p0}, Lcom/googlecode/mp4parser/authoring/tracks/AACTrackImpl;->readSamples()Z

    move-result v23

    if-nez v23, :cond_1

    .line 102
    new-instance v23, Ljava/io/IOException;

    invoke-direct/range {v23 .. v23}, Ljava/io/IOException;-><init>()V

    throw v23

    .line 105
    :cond_1
    move-object/from16 v0, p0

    iget v0, v0, Lcom/googlecode/mp4parser/authoring/tracks/AACTrackImpl;->samplerate:I

    move/from16 v23, v0

    move/from16 v0, v23

    int-to-double v0, v0

    move-wide/from16 v23, v0

    const-wide/high16 v25, 0x4090

    div-double v18, v23, v25

    .line 106
    .local v18, packetsPerSecond:D
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/googlecode/mp4parser/authoring/tracks/AACTrackImpl;->samples:Ljava/util/List;

    move-object/from16 v23, v0

    invoke-interface/range {v23 .. v23}, Ljava/util/List;->size()I

    move-result v23

    move/from16 v0, v23

    int-to-double v0, v0

    move-wide/from16 v23, v0

    div-double v13, v23, v18

    .line 108
    .local v13, duration:D
    const-wide/16 v9, 0x0

    .line 109
    .local v9, dataSize:J
    new-instance v20, Ljava/util/LinkedList;

    invoke-direct/range {v20 .. v20}, Ljava/util/LinkedList;-><init>()V

    .line 110
    .local v20, queue:Ljava/util/LinkedList;,"Ljava/util/LinkedList<Ljava/lang/Integer;>;"
    const/16 v16, 0x0

    .local v16, i:I
    :goto_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/googlecode/mp4parser/authoring/tracks/AACTrackImpl;->samples:Ljava/util/List;

    move-object/from16 v23, v0

    invoke-interface/range {v23 .. v23}, Ljava/util/List;->size()I

    move-result v23

    move/from16 v0, v16

    move/from16 v1, v23

    if-ge v0, v1, :cond_5

    .line 111
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/googlecode/mp4parser/authoring/tracks/AACTrackImpl;->samples:Ljava/util/List;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    move/from16 v1, v16

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Ljava/nio/ByteBuffer;

    invoke-virtual/range {v23 .. v23}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v21

    .line 112
    .local v21, size:I
    move/from16 v0, v21

    int-to-long v0, v0

    move-wide/from16 v23, v0

    add-long v9, v9, v23

    .line 113
    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v23

    move-object/from16 v0, v20

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 114
    :goto_1
    invoke-virtual/range {v20 .. v20}, Ljava/util/LinkedList;->size()I

    move-result v23

    move/from16 v0, v23

    int-to-double v0, v0

    move-wide/from16 v23, v0

    cmpl-double v23, v23, v18

    if-lez v23, :cond_2

    .line 115
    invoke-virtual/range {v20 .. v20}, Ljava/util/LinkedList;->pop()Ljava/lang/Object;

    goto :goto_1

    .line 117
    :cond_2
    invoke-virtual/range {v20 .. v20}, Ljava/util/LinkedList;->size()I

    move-result v23

    move-wide/from16 v0, v18

    double-to-int v0, v0

    move/from16 v24, v0

    move/from16 v0, v23

    move/from16 v1, v24

    if-ne v0, v1, :cond_4

    .line 118
    const/4 v7, 0x0

    .line 119
    .local v7, currSize:I
    const/16 v17, 0x0

    .local v17, j:I
    :goto_2
    invoke-virtual/range {v20 .. v20}, Ljava/util/LinkedList;->size()I

    move-result v23

    move/from16 v0, v17

    move/from16 v1, v23

    if-ge v0, v1, :cond_3

    .line 120
    move-object/from16 v0, v20

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Ljava/lang/Integer;

    invoke-virtual/range {v23 .. v23}, Ljava/lang/Integer;->intValue()I

    move-result v23

    add-int v7, v7, v23

    .line 119
    add-int/lit8 v17, v17, 0x1

    goto :goto_2

    .line 122
    :cond_3
    const-wide/high16 v23, 0x4020

    int-to-double v0, v7

    move-wide/from16 v25, v0

    mul-double v23, v23, v25

    invoke-virtual/range {v20 .. v20}, Ljava/util/LinkedList;->size()I

    move-result v25

    move/from16 v0, v25

    int-to-double v0, v0

    move-wide/from16 v25, v0

    div-double v23, v23, v25

    mul-double v5, v23, v18

    .line 123
    .local v5, currBitrate:D
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/googlecode/mp4parser/authoring/tracks/AACTrackImpl;->maxBitRate:J

    move-wide/from16 v23, v0

    move-wide/from16 v0, v23

    long-to-double v0, v0

    move-wide/from16 v23, v0

    cmpl-double v23, v5, v23

    if-lez v23, :cond_4

    .line 124
    double-to-int v0, v5

    move/from16 v23, v0

    move/from16 v0, v23

    int-to-long v0, v0

    move-wide/from16 v23, v0

    move-wide/from16 v0, v23

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/googlecode/mp4parser/authoring/tracks/AACTrackImpl;->maxBitRate:J

    .line 110
    .end local v5           #currBitrate:D
    .end local v7           #currSize:I
    .end local v17           #j:I
    :cond_4
    add-int/lit8 v16, v16, 0x1

    goto/16 :goto_0

    .line 129
    .end local v21           #size:I
    :cond_5
    const-wide/16 v23, 0x8

    mul-long v23, v23, v9

    move-wide/from16 v0, v23

    long-to-double v0, v0

    move-wide/from16 v23, v0

    div-double v23, v23, v13

    move-wide/from16 v0, v23

    double-to-int v0, v0

    move/from16 v23, v0

    move/from16 v0, v23

    int-to-long v0, v0

    move-wide/from16 v23, v0

    move-wide/from16 v0, v23

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/googlecode/mp4parser/authoring/tracks/AACTrackImpl;->avgBitRate:J

    .line 131
    const/16 v23, 0x600

    move/from16 v0, v23

    move-object/from16 v1, p0

    iput v0, v1, Lcom/googlecode/mp4parser/authoring/tracks/AACTrackImpl;->bufferSizeDB:I

    .line 133
    new-instance v23, Lcom/coremedia/iso/boxes/SampleDescriptionBox;

    invoke-direct/range {v23 .. v23}, Lcom/coremedia/iso/boxes/SampleDescriptionBox;-><init>()V

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/googlecode/mp4parser/authoring/tracks/AACTrackImpl;->sampleDescriptionBox:Lcom/coremedia/iso/boxes/SampleDescriptionBox;

    .line 134
    new-instance v3, Lcom/coremedia/iso/boxes/sampleentry/AudioSampleEntry;

    const-string v23, "mp4a"

    move-object/from16 v0, v23

    invoke-direct {v3, v0}, Lcom/coremedia/iso/boxes/sampleentry/AudioSampleEntry;-><init>(Ljava/lang/String;)V

    .line 135
    .local v3, audioSampleEntry:Lcom/coremedia/iso/boxes/sampleentry/AudioSampleEntry;
    const/16 v23, 0x2

    move/from16 v0, v23

    invoke-virtual {v3, v0}, Lcom/coremedia/iso/boxes/sampleentry/AudioSampleEntry;->setChannelCount(I)V

    .line 136
    move-object/from16 v0, p0

    iget v0, v0, Lcom/googlecode/mp4parser/authoring/tracks/AACTrackImpl;->samplerate:I

    move/from16 v23, v0

    move/from16 v0, v23

    int-to-long v0, v0

    move-wide/from16 v23, v0

    move-wide/from16 v0, v23

    invoke-virtual {v3, v0, v1}, Lcom/coremedia/iso/boxes/sampleentry/AudioSampleEntry;->setSampleRate(J)V

    .line 137
    const/16 v23, 0x1

    move/from16 v0, v23

    invoke-virtual {v3, v0}, Lcom/coremedia/iso/boxes/sampleentry/AudioSampleEntry;->setDataReferenceIndex(I)V

    .line 138
    const/16 v23, 0x10

    move/from16 v0, v23

    invoke-virtual {v3, v0}, Lcom/coremedia/iso/boxes/sampleentry/AudioSampleEntry;->setSampleSize(I)V

    .line 141
    new-instance v15, Lcom/googlecode/mp4parser/boxes/mp4/ESDescriptorBox;

    invoke-direct {v15}, Lcom/googlecode/mp4parser/boxes/mp4/ESDescriptorBox;-><init>()V

    .line 142
    .local v15, esds:Lcom/googlecode/mp4parser/boxes/mp4/ESDescriptorBox;
    new-instance v12, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/ESDescriptor;

    invoke-direct {v12}, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/ESDescriptor;-><init>()V

    .line 143
    .local v12, descriptor:Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/ESDescriptor;
    const/16 v23, 0x0

    move/from16 v0, v23

    invoke-virtual {v12, v0}, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/ESDescriptor;->setEsId(I)V

    .line 145
    new-instance v22, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/SLConfigDescriptor;

    invoke-direct/range {v22 .. v22}, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/SLConfigDescriptor;-><init>()V

    .line 146
    .local v22, slConfigDescriptor:Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/SLConfigDescriptor;
    const/16 v23, 0x2

    invoke-virtual/range {v22 .. v23}, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/SLConfigDescriptor;->setPredefined(I)V

    .line 147
    move-object/from16 v0, v22

    invoke-virtual {v12, v0}, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/ESDescriptor;->setSlConfigDescriptor(Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/SLConfigDescriptor;)V

    .line 149
    new-instance v11, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/DecoderConfigDescriptor;

    invoke-direct {v11}, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/DecoderConfigDescriptor;-><init>()V

    .line 150
    .local v11, decoderConfigDescriptor:Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/DecoderConfigDescriptor;
    const/16 v23, 0x40

    move/from16 v0, v23

    invoke-virtual {v11, v0}, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/DecoderConfigDescriptor;->setObjectTypeIndication(I)V

    .line 151
    const/16 v23, 0x5

    move/from16 v0, v23

    invoke-virtual {v11, v0}, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/DecoderConfigDescriptor;->setStreamType(I)V

    .line 152
    move-object/from16 v0, p0

    iget v0, v0, Lcom/googlecode/mp4parser/authoring/tracks/AACTrackImpl;->bufferSizeDB:I

    move/from16 v23, v0

    move/from16 v0, v23

    invoke-virtual {v11, v0}, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/DecoderConfigDescriptor;->setBufferSizeDB(I)V

    .line 153
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/googlecode/mp4parser/authoring/tracks/AACTrackImpl;->maxBitRate:J

    move-wide/from16 v23, v0

    move-wide/from16 v0, v23

    invoke-virtual {v11, v0, v1}, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/DecoderConfigDescriptor;->setMaxBitRate(J)V

    .line 154
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/googlecode/mp4parser/authoring/tracks/AACTrackImpl;->avgBitRate:J

    move-wide/from16 v23, v0

    move-wide/from16 v0, v23

    invoke-virtual {v11, v0, v1}, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/DecoderConfigDescriptor;->setAvgBitRate(J)V

    .line 156
    new-instance v4, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/AudioSpecificConfig;

    invoke-direct {v4}, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/AudioSpecificConfig;-><init>()V

    .line 157
    .local v4, audioSpecificConfig:Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/AudioSpecificConfig;
    const/16 v23, 0x2

    move/from16 v0, v23

    invoke-virtual {v4, v0}, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/AudioSpecificConfig;->setAudioObjectType(I)V

    .line 158
    sget-object v23, Lcom/googlecode/mp4parser/authoring/tracks/AACTrackImpl;->samplingFrequencyIndexMap:Ljava/util/Map;

    move-object/from16 v0, p0

    iget v0, v0, Lcom/googlecode/mp4parser/authoring/tracks/AACTrackImpl;->samplerate:I

    move/from16 v24, v0

    invoke-static/range {v24 .. v24}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v24

    invoke-interface/range {v23 .. v24}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Ljava/lang/Integer;

    invoke-virtual/range {v23 .. v23}, Ljava/lang/Integer;->intValue()I

    move-result v23

    move/from16 v0, v23

    invoke-virtual {v4, v0}, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/AudioSpecificConfig;->setSamplingFrequencyIndex(I)V

    .line 159
    move-object/from16 v0, p0

    iget v0, v0, Lcom/googlecode/mp4parser/authoring/tracks/AACTrackImpl;->channelconfig:I

    move/from16 v23, v0

    move/from16 v0, v23

    invoke-virtual {v4, v0}, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/AudioSpecificConfig;->setChannelConfiguration(I)V

    .line 160
    invoke-virtual {v11, v4}, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/DecoderConfigDescriptor;->setAudioSpecificInfo(Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/AudioSpecificConfig;)V

    .line 162
    invoke-virtual {v12, v11}, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/ESDescriptor;->setDecoderConfigDescriptor(Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/DecoderConfigDescriptor;)V

    .line 164
    invoke-virtual {v12}, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/ESDescriptor;->serialize()Ljava/nio/ByteBuffer;

    move-result-object v8

    .line 165
    .local v8, data:Ljava/nio/ByteBuffer;
    invoke-virtual {v15, v8}, Lcom/googlecode/mp4parser/boxes/mp4/ESDescriptorBox;->setData(Ljava/nio/ByteBuffer;)V

    .line 166
    invoke-virtual {v3, v15}, Lcom/coremedia/iso/boxes/sampleentry/AudioSampleEntry;->addBox(Lcom/coremedia/iso/boxes/Box;)V

    .line 167
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/googlecode/mp4parser/authoring/tracks/AACTrackImpl;->sampleDescriptionBox:Lcom/coremedia/iso/boxes/SampleDescriptionBox;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    invoke-virtual {v0, v3}, Lcom/coremedia/iso/boxes/SampleDescriptionBox;->addBox(Lcom/coremedia/iso/boxes/Box;)V

    .line 169
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/googlecode/mp4parser/authoring/tracks/AACTrackImpl;->trackMetaData:Lcom/googlecode/mp4parser/authoring/TrackMetaData;

    move-object/from16 v23, v0

    new-instance v24, Ljava/util/Date;

    invoke-direct/range {v24 .. v24}, Ljava/util/Date;-><init>()V

    invoke-virtual/range {v23 .. v24}, Lcom/googlecode/mp4parser/authoring/TrackMetaData;->setCreationTime(Ljava/util/Date;)V

    .line 170
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/googlecode/mp4parser/authoring/tracks/AACTrackImpl;->trackMetaData:Lcom/googlecode/mp4parser/authoring/TrackMetaData;

    move-object/from16 v23, v0

    new-instance v24, Ljava/util/Date;

    invoke-direct/range {v24 .. v24}, Ljava/util/Date;-><init>()V

    invoke-virtual/range {v23 .. v24}, Lcom/googlecode/mp4parser/authoring/TrackMetaData;->setModificationTime(Ljava/util/Date;)V

    .line 171
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/googlecode/mp4parser/authoring/tracks/AACTrackImpl;->trackMetaData:Lcom/googlecode/mp4parser/authoring/TrackMetaData;

    move-object/from16 v23, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/googlecode/mp4parser/authoring/tracks/AACTrackImpl;->lang:Ljava/lang/String;

    move-object/from16 v24, v0

    invoke-virtual/range {v23 .. v24}, Lcom/googlecode/mp4parser/authoring/TrackMetaData;->setLanguage(Ljava/lang/String;)V

    .line 172
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/googlecode/mp4parser/authoring/tracks/AACTrackImpl;->trackMetaData:Lcom/googlecode/mp4parser/authoring/TrackMetaData;

    move-object/from16 v23, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/googlecode/mp4parser/authoring/tracks/AACTrackImpl;->samplerate:I

    move/from16 v24, v0

    move/from16 v0, v24

    int-to-long v0, v0

    move-wide/from16 v24, v0

    invoke-virtual/range {v23 .. v25}, Lcom/googlecode/mp4parser/authoring/TrackMetaData;->setTimescale(J)V

    .line 173
    return-void
.end method

.method private readSamples()Z
    .locals 18
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 243
    move-object/from16 v0, p0

    iget-boolean v12, v0, Lcom/googlecode/mp4parser/authoring/tracks/AACTrackImpl;->readSamples:Z

    if-eqz v12, :cond_1

    .line 244
    const/4 v9, 0x1

    .line 279
    :cond_0
    :goto_0
    return v9

    .line 247
    :cond_1
    const/4 v12, 0x1

    move-object/from16 v0, p0

    iput-boolean v12, v0, Lcom/googlecode/mp4parser/authoring/tracks/AACTrackImpl;->readSamples:Z

    .line 248
    const/16 v12, 0xf

    new-array v6, v12, [B

    .line 249
    .local v6, header:[B
    const/4 v9, 0x0

    .line 250
    .local v9, ret:Z
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/googlecode/mp4parser/authoring/tracks/AACTrackImpl;->inputStream:Ljava/io/BufferedInputStream;

    const/16 v13, 0xf

    invoke-virtual {v12, v13}, Ljava/io/BufferedInputStream;->mark(I)V

    .line 251
    :goto_1
    const/4 v12, -0x1

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/googlecode/mp4parser/authoring/tracks/AACTrackImpl;->inputStream:Ljava/io/BufferedInputStream;

    invoke-virtual {v13, v6}, Ljava/io/BufferedInputStream;->read([B)I

    move-result v13

    if-eq v12, v13, :cond_0

    .line 252
    const/4 v9, 0x1

    .line 253
    invoke-static {v6}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 254
    .local v1, bb:Ljava/nio/ByteBuffer;
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/googlecode/mp4parser/authoring/tracks/AACTrackImpl;->inputStream:Ljava/io/BufferedInputStream;

    invoke-virtual {v12}, Ljava/io/BufferedInputStream;->reset()V

    .line 255
    new-instance v2, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/BitReaderBuffer;

    invoke-direct {v2, v1}, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/BitReaderBuffer;-><init>(Ljava/nio/ByteBuffer;)V

    .line 256
    .local v2, brb:Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/BitReaderBuffer;
    const/16 v12, 0xc

    invoke-virtual {v2, v12}, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/BitReaderBuffer;->readBits(I)I

    move-result v10

    .line 257
    .local v10, syncword:I
    const/16 v12, 0xfff

    if-eq v10, v12, :cond_2

    .line 258
    const/4 v9, 0x0

    goto :goto_0

    .line 260
    :cond_2
    const/4 v12, 0x3

    invoke-virtual {v2, v12}, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/BitReaderBuffer;->readBits(I)I

    .line 261
    const/4 v12, 0x1

    invoke-virtual {v2, v12}, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/BitReaderBuffer;->readBits(I)I

    move-result v8

    .line 262
    .local v8, protectionAbsent:I
    const/16 v12, 0xe

    invoke-virtual {v2, v12}, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/BitReaderBuffer;->readBits(I)I

    .line 263
    const/16 v12, 0xd

    invoke-virtual {v2, v12}, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/BitReaderBuffer;->readBits(I)I

    move-result v5

    .line 264
    .local v5, frameSize:I
    const/16 v12, 0xb

    invoke-virtual {v2, v12}, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/BitReaderBuffer;->readBits(I)I

    move-result v3

    .line 265
    .local v3, bufferFullness:I
    const/4 v12, 0x2

    invoke-virtual {v2, v12}, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/BitReaderBuffer;->readBits(I)I

    move-result v7

    .line 266
    .local v7, noBlocks:I
    invoke-virtual {v2}, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/BitReaderBuffer;->getPosition()I

    move-result v12

    int-to-double v12, v12

    const-wide/high16 v14, 0x4020

    div-double/2addr v12, v14

    invoke-static {v12, v13}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v12

    double-to-int v11, v12

    .line 267
    .local v11, used:I
    if-nez v8, :cond_3

    .line 268
    add-int/lit8 v11, v11, 0x2

    .line 270
    :cond_3
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/googlecode/mp4parser/authoring/tracks/AACTrackImpl;->inputStream:Ljava/io/BufferedInputStream;

    int-to-long v13, v11

    invoke-virtual {v12, v13, v14}, Ljava/io/BufferedInputStream;->skip(J)J

    .line 271
    sub-int/2addr v5, v11

    .line 273
    new-array v4, v5, [B

    .line 274
    .local v4, data:[B
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/googlecode/mp4parser/authoring/tracks/AACTrackImpl;->inputStream:Ljava/io/BufferedInputStream;

    invoke-virtual {v12, v4}, Ljava/io/BufferedInputStream;->read([B)I

    .line 275
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/googlecode/mp4parser/authoring/tracks/AACTrackImpl;->samples:Ljava/util/List;

    invoke-static {v4}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v13

    invoke-interface {v12, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 276
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/googlecode/mp4parser/authoring/tracks/AACTrackImpl;->stts:Ljava/util/List;

    new-instance v13, Lcom/coremedia/iso/boxes/TimeToSampleBox$Entry;

    const-wide/16 v14, 0x1

    const-wide/16 v16, 0x400

    invoke-direct/range {v13 .. v17}, Lcom/coremedia/iso/boxes/TimeToSampleBox$Entry;-><init>(JJ)V

    invoke-interface {v12, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 277
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/googlecode/mp4parser/authoring/tracks/AACTrackImpl;->inputStream:Ljava/io/BufferedInputStream;

    const/16 v13, 0xf

    invoke-virtual {v12, v13}, Ljava/io/BufferedInputStream;->mark(I)V

    goto/16 :goto_1
.end method

.method private readVariables()Z
    .locals 15
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 216
    const/16 v11, 0x64

    new-array v2, v11, [B

    .line 217
    .local v2, data:[B
    iget-object v11, p0, Lcom/googlecode/mp4parser/authoring/tracks/AACTrackImpl;->inputStream:Ljava/io/BufferedInputStream;

    const/16 v12, 0x64

    invoke-virtual {v11, v12}, Ljava/io/BufferedInputStream;->mark(I)V

    .line 218
    const/16 v11, 0x64

    iget-object v12, p0, Lcom/googlecode/mp4parser/authoring/tracks/AACTrackImpl;->inputStream:Ljava/io/BufferedInputStream;

    const/4 v13, 0x0

    const/16 v14, 0x64

    invoke-virtual {v12, v2, v13, v14}, Ljava/io/BufferedInputStream;->read([BII)I

    move-result v12

    if-eq v11, v12, :cond_0

    .line 219
    const/4 v11, 0x0

    .line 239
    :goto_0
    return v11

    .line 221
    :cond_0
    iget-object v11, p0, Lcom/googlecode/mp4parser/authoring/tracks/AACTrackImpl;->inputStream:Ljava/io/BufferedInputStream;

    invoke-virtual {v11}, Ljava/io/BufferedInputStream;->reset()V

    .line 222
    invoke-static {v2}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 223
    .local v0, bb:Ljava/nio/ByteBuffer;
    new-instance v1, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/BitReaderBuffer;

    invoke-direct {v1, v0}, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/BitReaderBuffer;-><init>(Ljava/nio/ByteBuffer;)V

    .line 224
    .local v1, brb:Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/BitReaderBuffer;
    const/16 v11, 0xc

    invoke-virtual {v1, v11}, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/BitReaderBuffer;->readBits(I)I

    move-result v10

    .line 225
    .local v10, syncword:I
    const/16 v11, 0xfff

    if-eq v10, v11, :cond_1

    .line 226
    const/4 v11, 0x0

    goto :goto_0

    .line 228
    :cond_1
    const/4 v11, 0x1

    invoke-virtual {v1, v11}, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/BitReaderBuffer;->readBits(I)I

    move-result v5

    .line 229
    .local v5, id:I
    const/4 v11, 0x2

    invoke-virtual {v1, v11}, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/BitReaderBuffer;->readBits(I)I

    move-result v6

    .line 230
    .local v6, layer:I
    const/4 v11, 0x1

    invoke-virtual {v1, v11}, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/BitReaderBuffer;->readBits(I)I

    move-result v9

    .line 231
    .local v9, protectionAbsent:I
    const/4 v11, 0x2

    invoke-virtual {v1, v11}, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/BitReaderBuffer;->readBits(I)I

    move-result v8

    .line 232
    .local v8, profile:I
    sget-object v11, Lcom/googlecode/mp4parser/authoring/tracks/AACTrackImpl;->samplingFrequencyIndexMap:Ljava/util/Map;

    const/4 v12, 0x4

    invoke-virtual {v1, v12}, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/BitReaderBuffer;->readBits(I)I

    move-result v12

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-interface {v11, v12}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/Integer;

    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v11

    iput v11, p0, Lcom/googlecode/mp4parser/authoring/tracks/AACTrackImpl;->samplerate:I

    .line 233
    const/4 v11, 0x1

    invoke-virtual {v1, v11}, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/BitReaderBuffer;->readBits(I)I

    .line 234
    const/4 v11, 0x3

    invoke-virtual {v1, v11}, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/BitReaderBuffer;->readBits(I)I

    move-result v11

    iput v11, p0, Lcom/googlecode/mp4parser/authoring/tracks/AACTrackImpl;->channelconfig:I

    .line 235
    const/4 v11, 0x1

    invoke-virtual {v1, v11}, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/BitReaderBuffer;->readBits(I)I

    move-result v7

    .line 236
    .local v7, original:I
    const/4 v11, 0x1

    invoke-virtual {v1, v11}, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/BitReaderBuffer;->readBits(I)I

    move-result v4

    .line 237
    .local v4, home:I
    const/4 v11, 0x2

    invoke-virtual {v1, v11}, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/BitReaderBuffer;->readBits(I)I

    move-result v3

    .line 239
    .local v3, emphasis:I
    const/4 v11, 0x1

    goto :goto_0
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
    .line 184
    const/4 v0, 0x0

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
    .line 180
    iget-object v0, p0, Lcom/googlecode/mp4parser/authoring/tracks/AACTrackImpl;->stts:Ljava/util/List;

    return-object v0
.end method

.method public getHandler()Ljava/lang/String;
    .locals 1

    .prologue
    .line 200
    const-string v0, "soun"

    return-object v0
.end method

.method public getMediaHeaderBox()Lcom/coremedia/iso/boxes/Box;
    .locals 1

    .prologue
    .line 208
    new-instance v0, Lcom/coremedia/iso/boxes/SoundMediaHeaderBox;

    invoke-direct {v0}, Lcom/coremedia/iso/boxes/SoundMediaHeaderBox;-><init>()V

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
    .line 192
    const/4 v0, 0x0

    return-object v0
.end method

.method public getSampleDescriptionBox()Lcom/coremedia/iso/boxes/SampleDescriptionBox;
    .locals 1

    .prologue
    .line 176
    iget-object v0, p0, Lcom/googlecode/mp4parser/authoring/tracks/AACTrackImpl;->sampleDescriptionBox:Lcom/coremedia/iso/boxes/SampleDescriptionBox;

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
    .line 204
    iget-object v0, p0, Lcom/googlecode/mp4parser/authoring/tracks/AACTrackImpl;->samples:Ljava/util/List;

    return-object v0
.end method

.method public getSubsampleInformationBox()Lcom/coremedia/iso/boxes/SubSampleInformationBox;
    .locals 1

    .prologue
    .line 212
    const/4 v0, 0x0

    return-object v0
.end method

.method public getSyncSamples()[J
    .locals 1

    .prologue
    .line 188
    const/4 v0, 0x0

    return-object v0
.end method

.method public getTrackMetaData()Lcom/googlecode/mp4parser/authoring/TrackMetaData;
    .locals 1

    .prologue
    .line 196
    iget-object v0, p0, Lcom/googlecode/mp4parser/authoring/tracks/AACTrackImpl;->trackMetaData:Lcom/googlecode/mp4parser/authoring/TrackMetaData;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 284
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "AACTrackImpl{samplerate="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/googlecode/mp4parser/authoring/tracks/AACTrackImpl;->samplerate:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", bitrate="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/googlecode/mp4parser/authoring/tracks/AACTrackImpl;->bitrate:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", channelCount="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/googlecode/mp4parser/authoring/tracks/AACTrackImpl;->channelCount:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", channelconfig="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/googlecode/mp4parser/authoring/tracks/AACTrackImpl;->channelconfig:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
