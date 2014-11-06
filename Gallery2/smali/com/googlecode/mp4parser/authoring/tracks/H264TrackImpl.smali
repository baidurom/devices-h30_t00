.class public Lcom/googlecode/mp4parser/authoring/tracks/H264TrackImpl;
.super Lcom/googlecode/mp4parser/authoring/AbstractTrack;
.source "H264TrackImpl.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/googlecode/mp4parser/authoring/tracks/H264TrackImpl$1;,
        Lcom/googlecode/mp4parser/authoring/tracks/H264TrackImpl$SEIMessage;,
        Lcom/googlecode/mp4parser/authoring/tracks/H264TrackImpl$ReaderWrapper;,
        Lcom/googlecode/mp4parser/authoring/tracks/H264TrackImpl$SliceHeader;,
        Lcom/googlecode/mp4parser/authoring/tracks/H264TrackImpl$NALActions;
    }
.end annotation


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

.field private currentScSize:I

.field private determineFrameRate:Z

.field frameNrInGop:I

.field private frametick:I

.field private height:I

.field private lang:Ljava/lang/String;

.field pictureParameterSet:Lcom/googlecode/mp4parser/h264/model/PictureParameterSet;

.field pictureParameterSetList:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<[B>;"
        }
    .end annotation
.end field

.field private prevScSize:I

.field readSamples:Z

.field private reader:Lcom/googlecode/mp4parser/authoring/tracks/H264TrackImpl$ReaderWrapper;

.field sampleDescriptionBox:Lcom/coremedia/iso/boxes/SampleDescriptionBox;

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

.field sdtp:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/coremedia/iso/boxes/SampleDependencyTypeBox$Entry;",
            ">;"
        }
    .end annotation
.end field

.field private seiMessage:Lcom/googlecode/mp4parser/authoring/tracks/H264TrackImpl$SEIMessage;

.field seqParameterSet:Lcom/googlecode/mp4parser/h264/model/SeqParameterSet;

.field seqParameterSetList:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<[B>;"
        }
    .end annotation
.end field

.field stss:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
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

.field private timescale:I

.field trackMetaData:Lcom/googlecode/mp4parser/authoring/TrackMetaData;

.field private width:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 27
    const-class v0, Lcom/googlecode/mp4parser/authoring/tracks/H264TrackImpl;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lcom/googlecode/mp4parser/authoring/tracks/H264TrackImpl;->LOG:Ljava/util/logging/Logger;

    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 3
    .parameter "inputStream"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 75
    invoke-direct {p0}, Lcom/googlecode/mp4parser/authoring/AbstractTrack;-><init>()V

    .line 29
    new-instance v0, Lcom/googlecode/mp4parser/authoring/TrackMetaData;

    invoke-direct {v0}, Lcom/googlecode/mp4parser/authoring/TrackMetaData;-><init>()V

    iput-object v0, p0, Lcom/googlecode/mp4parser/authoring/tracks/H264TrackImpl;->trackMetaData:Lcom/googlecode/mp4parser/authoring/TrackMetaData;

    .line 34
    iput-boolean v1, p0, Lcom/googlecode/mp4parser/authoring/tracks/H264TrackImpl;->readSamples:Z

    .line 41
    iput-object v2, p0, Lcom/googlecode/mp4parser/authoring/tracks/H264TrackImpl;->seqParameterSet:Lcom/googlecode/mp4parser/h264/model/SeqParameterSet;

    .line 42
    iput-object v2, p0, Lcom/googlecode/mp4parser/authoring/tracks/H264TrackImpl;->pictureParameterSet:Lcom/googlecode/mp4parser/h264/model/PictureParameterSet;

    .line 43
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/googlecode/mp4parser/authoring/tracks/H264TrackImpl;->seqParameterSetList:Ljava/util/LinkedList;

    .line 44
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/googlecode/mp4parser/authoring/tracks/H264TrackImpl;->pictureParameterSetList:Ljava/util/LinkedList;

    .line 54
    iput v1, p0, Lcom/googlecode/mp4parser/authoring/tracks/H264TrackImpl;->frameNrInGop:I

    .line 55
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/googlecode/mp4parser/authoring/tracks/H264TrackImpl;->determineFrameRate:Z

    .line 56
    const-string v0, "und"

    iput-object v0, p0, Lcom/googlecode/mp4parser/authoring/tracks/H264TrackImpl;->lang:Ljava/lang/String;

    .line 76
    invoke-direct {p0, p1}, Lcom/googlecode/mp4parser/authoring/tracks/H264TrackImpl;->parse(Ljava/io/InputStream;)V

    .line 77
    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;Ljava/lang/String;)V
    .locals 3
    .parameter "inputStream"
    .parameter "lang"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 70
    invoke-direct {p0}, Lcom/googlecode/mp4parser/authoring/AbstractTrack;-><init>()V

    .line 29
    new-instance v0, Lcom/googlecode/mp4parser/authoring/TrackMetaData;

    invoke-direct {v0}, Lcom/googlecode/mp4parser/authoring/TrackMetaData;-><init>()V

    iput-object v0, p0, Lcom/googlecode/mp4parser/authoring/tracks/H264TrackImpl;->trackMetaData:Lcom/googlecode/mp4parser/authoring/TrackMetaData;

    .line 34
    iput-boolean v1, p0, Lcom/googlecode/mp4parser/authoring/tracks/H264TrackImpl;->readSamples:Z

    .line 41
    iput-object v2, p0, Lcom/googlecode/mp4parser/authoring/tracks/H264TrackImpl;->seqParameterSet:Lcom/googlecode/mp4parser/h264/model/SeqParameterSet;

    .line 42
    iput-object v2, p0, Lcom/googlecode/mp4parser/authoring/tracks/H264TrackImpl;->pictureParameterSet:Lcom/googlecode/mp4parser/h264/model/PictureParameterSet;

    .line 43
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/googlecode/mp4parser/authoring/tracks/H264TrackImpl;->seqParameterSetList:Ljava/util/LinkedList;

    .line 44
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/googlecode/mp4parser/authoring/tracks/H264TrackImpl;->pictureParameterSetList:Ljava/util/LinkedList;

    .line 54
    iput v1, p0, Lcom/googlecode/mp4parser/authoring/tracks/H264TrackImpl;->frameNrInGop:I

    .line 55
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/googlecode/mp4parser/authoring/tracks/H264TrackImpl;->determineFrameRate:Z

    .line 56
    const-string v0, "und"

    iput-object v0, p0, Lcom/googlecode/mp4parser/authoring/tracks/H264TrackImpl;->lang:Ljava/lang/String;

    .line 71
    iput-object p2, p0, Lcom/googlecode/mp4parser/authoring/tracks/H264TrackImpl;->lang:Ljava/lang/String;

    .line 72
    invoke-direct {p0, p1}, Lcom/googlecode/mp4parser/authoring/tracks/H264TrackImpl;->parse(Ljava/io/InputStream;)V

    .line 73
    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;Ljava/lang/String;J)V
    .locals 3
    .parameter "inputStream"
    .parameter "lang"
    .parameter "timescale"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 58
    invoke-direct {p0}, Lcom/googlecode/mp4parser/authoring/AbstractTrack;-><init>()V

    .line 29
    new-instance v0, Lcom/googlecode/mp4parser/authoring/TrackMetaData;

    invoke-direct {v0}, Lcom/googlecode/mp4parser/authoring/TrackMetaData;-><init>()V

    iput-object v0, p0, Lcom/googlecode/mp4parser/authoring/tracks/H264TrackImpl;->trackMetaData:Lcom/googlecode/mp4parser/authoring/TrackMetaData;

    .line 34
    iput-boolean v2, p0, Lcom/googlecode/mp4parser/authoring/tracks/H264TrackImpl;->readSamples:Z

    .line 41
    iput-object v1, p0, Lcom/googlecode/mp4parser/authoring/tracks/H264TrackImpl;->seqParameterSet:Lcom/googlecode/mp4parser/h264/model/SeqParameterSet;

    .line 42
    iput-object v1, p0, Lcom/googlecode/mp4parser/authoring/tracks/H264TrackImpl;->pictureParameterSet:Lcom/googlecode/mp4parser/h264/model/PictureParameterSet;

    .line 43
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/googlecode/mp4parser/authoring/tracks/H264TrackImpl;->seqParameterSetList:Ljava/util/LinkedList;

    .line 44
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/googlecode/mp4parser/authoring/tracks/H264TrackImpl;->pictureParameterSetList:Ljava/util/LinkedList;

    .line 54
    iput v2, p0, Lcom/googlecode/mp4parser/authoring/tracks/H264TrackImpl;->frameNrInGop:I

    .line 55
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/googlecode/mp4parser/authoring/tracks/H264TrackImpl;->determineFrameRate:Z

    .line 56
    const-string v0, "und"

    iput-object v0, p0, Lcom/googlecode/mp4parser/authoring/tracks/H264TrackImpl;->lang:Ljava/lang/String;

    .line 59
    iput-object p2, p0, Lcom/googlecode/mp4parser/authoring/tracks/H264TrackImpl;->lang:Ljava/lang/String;

    .line 60
    const-wide/16 v0, 0x3e8

    cmp-long v0, p3, v0

    if-lez v0, :cond_0

    .line 62
    const/16 v0, 0x3e8

    iput v0, p0, Lcom/googlecode/mp4parser/authoring/tracks/H264TrackImpl;->frametick:I

    .line 63
    iput-boolean v2, p0, Lcom/googlecode/mp4parser/authoring/tracks/H264TrackImpl;->determineFrameRate:Z

    .line 67
    invoke-direct {p0, p1}, Lcom/googlecode/mp4parser/authoring/tracks/H264TrackImpl;->parse(Ljava/io/InputStream;)V

    .line 68
    return-void

    .line 65
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Timescale must be specified in milliseconds!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method static synthetic access$100()Ljava/util/logging/Logger;
    .locals 1

    .prologue
    .line 26
    sget-object v0, Lcom/googlecode/mp4parser/authoring/tracks/H264TrackImpl;->LOG:Ljava/util/logging/Logger;

    return-object v0
.end method

.method private cleanBuffer([B)Ljava/io/ByteArrayInputStream;
    .locals 6
    .parameter "data"

    .prologue
    const/4 v5, 0x0

    .line 326
    array-length v3, p1

    new-array v2, v3, [B

    .line 327
    .local v2, output:[B
    const/4 v0, 0x0

    .line 328
    .local v0, inPos:I
    const/4 v1, 0x0

    .line 329
    .local v1, outPos:I
    :goto_0
    array-length v3, p1

    if-ge v0, v3, :cond_1

    .line 330
    aget-byte v3, p1, v0

    if-nez v3, :cond_0

    add-int/lit8 v3, v0, 0x1

    aget-byte v3, p1, v3

    if-nez v3, :cond_0

    add-int/lit8 v3, v0, 0x2

    aget-byte v3, p1, v3

    const/4 v4, 0x3

    if-ne v3, v4, :cond_0

    .line 331
    aput-byte v5, v2, v1

    .line 332
    add-int/lit8 v3, v1, 0x1

    aput-byte v5, v2, v3

    .line 333
    add-int/lit8 v0, v0, 0x3

    .line 334
    add-int/lit8 v1, v1, 0x2

    goto :goto_0

    .line 336
    :cond_0
    aget-byte v3, p1, v0

    aput-byte v3, v2, v1

    .line 337
    add-int/lit8 v0, v0, 0x1

    .line 338
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 341
    :cond_1
    new-instance v3, Ljava/io/ByteArrayInputStream;

    invoke-direct {v3, v2, v5, v1}, Ljava/io/ByteArrayInputStream;-><init>([BII)V

    return-object v3
.end method

.method private configureFramerate()V
    .locals 5

    .prologue
    const v4, 0x15f90

    const/16 v3, 0xe10

    .line 404
    iget-boolean v0, p0, Lcom/googlecode/mp4parser/authoring/tracks/H264TrackImpl;->determineFrameRate:Z

    if-eqz v0, :cond_1

    .line 405
    iget-object v0, p0, Lcom/googlecode/mp4parser/authoring/tracks/H264TrackImpl;->seqParameterSet:Lcom/googlecode/mp4parser/h264/model/SeqParameterSet;

    iget-object v0, v0, Lcom/googlecode/mp4parser/h264/model/SeqParameterSet;->vuiParams:Lcom/googlecode/mp4parser/h264/model/VUIParameters;

    if-eqz v0, :cond_2

    .line 406
    iget-object v0, p0, Lcom/googlecode/mp4parser/authoring/tracks/H264TrackImpl;->seqParameterSet:Lcom/googlecode/mp4parser/h264/model/SeqParameterSet;

    iget-object v0, v0, Lcom/googlecode/mp4parser/h264/model/SeqParameterSet;->vuiParams:Lcom/googlecode/mp4parser/h264/model/VUIParameters;

    iget v0, v0, Lcom/googlecode/mp4parser/h264/model/VUIParameters;->time_scale:I

    shr-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/googlecode/mp4parser/authoring/tracks/H264TrackImpl;->timescale:I

    .line 407
    iget-object v0, p0, Lcom/googlecode/mp4parser/authoring/tracks/H264TrackImpl;->seqParameterSet:Lcom/googlecode/mp4parser/h264/model/SeqParameterSet;

    iget-object v0, v0, Lcom/googlecode/mp4parser/h264/model/SeqParameterSet;->vuiParams:Lcom/googlecode/mp4parser/h264/model/VUIParameters;

    iget v0, v0, Lcom/googlecode/mp4parser/h264/model/VUIParameters;->num_units_in_tick:I

    iput v0, p0, Lcom/googlecode/mp4parser/authoring/tracks/H264TrackImpl;->frametick:I

    .line 408
    iget v0, p0, Lcom/googlecode/mp4parser/authoring/tracks/H264TrackImpl;->timescale:I

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/googlecode/mp4parser/authoring/tracks/H264TrackImpl;->frametick:I

    if-nez v0, :cond_1

    .line 409
    :cond_0
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Warning: vuiParams contain invalid values: time_scale: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/googlecode/mp4parser/authoring/tracks/H264TrackImpl;->timescale:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " and frame_tick: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/googlecode/mp4parser/authoring/tracks/H264TrackImpl;->frametick:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ". Setting frame rate to 25fps"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 410
    iput v4, p0, Lcom/googlecode/mp4parser/authoring/tracks/H264TrackImpl;->timescale:I

    .line 411
    iput v3, p0, Lcom/googlecode/mp4parser/authoring/tracks/H264TrackImpl;->frametick:I

    .line 419
    :cond_1
    :goto_0
    return-void

    .line 414
    :cond_2
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v1, "Warning: Can\'t determine frame rate. Guessing 25 fps"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 415
    iput v4, p0, Lcom/googlecode/mp4parser/authoring/tracks/H264TrackImpl;->timescale:I

    .line 416
    iput v3, p0, Lcom/googlecode/mp4parser/authoring/tracks/H264TrackImpl;->frametick:I

    goto :goto_0
.end method

.method private createSample(Ljava/util/List;)Ljava/nio/ByteBuffer;
    .locals 5
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<[B>;)",
            "Ljava/nio/ByteBuffer;"
        }
    .end annotation

    .prologue
    .line 310
    .local p1, buffers:Ljava/util/List;,"Ljava/util/List<[B>;"
    const/4 v3, 0x0

    .line 311
    .local v3, outsize:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v4

    if-ge v1, v4, :cond_0

    .line 312
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [B

    array-length v4, v4

    add-int/lit8 v4, v4, 0x4

    add-int/2addr v3, v4

    .line 311
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 314
    :cond_0
    new-array v2, v3, [B

    .line 316
    .local v2, output:[B
    invoke-static {v2}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 317
    .local v0, bb:Ljava/nio/ByteBuffer;
    const/4 v1, 0x0

    :goto_1
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v4

    if-ge v1, v4, :cond_1

    .line 318
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [B

    array-length v4, v4

    invoke-virtual {v0, v4}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 319
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [B

    invoke-virtual {v0, v4}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 317
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 321
    :cond_1
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 322
    return-object v0
.end method

.method private findNextStartcode()Z
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 200
    new-array v1, v7, [B

    fill-array-data v1, :array_0

    .line 203
    .local v1, test:[B
    :cond_0
    iget-object v4, p0, Lcom/googlecode/mp4parser/authoring/tracks/H264TrackImpl;->reader:Lcom/googlecode/mp4parser/authoring/tracks/H264TrackImpl$ReaderWrapper;

    invoke-virtual {v4}, Lcom/googlecode/mp4parser/authoring/tracks/H264TrackImpl$ReaderWrapper;->read()I

    move-result v0

    .local v0, c:I
    const/4 v4, -0x1

    if-eq v0, v4, :cond_2

    .line 204
    aget-byte v4, v1, v2

    aput-byte v4, v1, v3

    .line 205
    aget-byte v4, v1, v5

    aput-byte v4, v1, v2

    .line 206
    aget-byte v4, v1, v6

    aput-byte v4, v1, v5

    .line 207
    int-to-byte v4, v0

    aput-byte v4, v1, v6

    .line 208
    aget-byte v4, v1, v3

    if-nez v4, :cond_1

    aget-byte v4, v1, v2

    if-nez v4, :cond_1

    aget-byte v4, v1, v5

    if-nez v4, :cond_1

    aget-byte v4, v1, v6

    if-ne v4, v2, :cond_1

    .line 209
    iget v3, p0, Lcom/googlecode/mp4parser/authoring/tracks/H264TrackImpl;->currentScSize:I

    iput v3, p0, Lcom/googlecode/mp4parser/authoring/tracks/H264TrackImpl;->prevScSize:I

    .line 210
    iput v7, p0, Lcom/googlecode/mp4parser/authoring/tracks/H264TrackImpl;->currentScSize:I

    .line 219
    :goto_0
    return v2

    .line 213
    :cond_1
    aget-byte v4, v1, v3

    if-nez v4, :cond_0

    aget-byte v4, v1, v2

    if-nez v4, :cond_0

    aget-byte v4, v1, v5

    if-ne v4, v2, :cond_0

    .line 214
    iget v3, p0, Lcom/googlecode/mp4parser/authoring/tracks/H264TrackImpl;->currentScSize:I

    iput v3, p0, Lcom/googlecode/mp4parser/authoring/tracks/H264TrackImpl;->prevScSize:I

    .line 215
    iput v6, p0, Lcom/googlecode/mp4parser/authoring/tracks/H264TrackImpl;->currentScSize:I

    goto :goto_0

    :cond_2
    move v2, v3

    .line 219
    goto :goto_0

    .line 200
    :array_0
    .array-data 0x1
        0xfft
        0xfft
        0xfft
        0xfft
    .end array-data
.end method

.method private handleNALUnit(II[B)Lcom/googlecode/mp4parser/authoring/tracks/H264TrackImpl$NALActions;
    .locals 6
    .parameter "nal_ref_idc"
    .parameter "nal_unit_type"
    .parameter "data"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 346
    packed-switch p2, :pswitch_data_0

    .line 395
    sget-object v3, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unknown NAL unit type: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 396
    sget-object v0, Lcom/googlecode/mp4parser/authoring/tracks/H264TrackImpl$NALActions;->IGNORE:Lcom/googlecode/mp4parser/authoring/tracks/H264TrackImpl$NALActions;

    .line 400
    .local v0, action:Lcom/googlecode/mp4parser/authoring/tracks/H264TrackImpl$NALActions;
    :goto_0
    return-object v0

    .line 352
    .end local v0           #action:Lcom/googlecode/mp4parser/authoring/tracks/H264TrackImpl$NALActions;
    :pswitch_0
    sget-object v0, Lcom/googlecode/mp4parser/authoring/tracks/H264TrackImpl$NALActions;->STORE:Lcom/googlecode/mp4parser/authoring/tracks/H264TrackImpl$NALActions;

    .line 353
    .restart local v0       #action:Lcom/googlecode/mp4parser/authoring/tracks/H264TrackImpl$NALActions;
    goto :goto_0

    .line 356
    .end local v0           #action:Lcom/googlecode/mp4parser/authoring/tracks/H264TrackImpl$NALActions;
    :pswitch_1
    new-instance v3, Lcom/googlecode/mp4parser/authoring/tracks/H264TrackImpl$SEIMessage;

    invoke-direct {p0, p3}, Lcom/googlecode/mp4parser/authoring/tracks/H264TrackImpl;->cleanBuffer([B)Ljava/io/ByteArrayInputStream;

    move-result-object v4

    iget-object v5, p0, Lcom/googlecode/mp4parser/authoring/tracks/H264TrackImpl;->seqParameterSet:Lcom/googlecode/mp4parser/h264/model/SeqParameterSet;

    invoke-direct {v3, p0, v4, v5}, Lcom/googlecode/mp4parser/authoring/tracks/H264TrackImpl$SEIMessage;-><init>(Lcom/googlecode/mp4parser/authoring/tracks/H264TrackImpl;Ljava/io/InputStream;Lcom/googlecode/mp4parser/h264/model/SeqParameterSet;)V

    iput-object v3, p0, Lcom/googlecode/mp4parser/authoring/tracks/H264TrackImpl;->seiMessage:Lcom/googlecode/mp4parser/authoring/tracks/H264TrackImpl$SEIMessage;

    .line 357
    sget-object v0, Lcom/googlecode/mp4parser/authoring/tracks/H264TrackImpl$NALActions;->BUFFER:Lcom/googlecode/mp4parser/authoring/tracks/H264TrackImpl$NALActions;

    .line 358
    .restart local v0       #action:Lcom/googlecode/mp4parser/authoring/tracks/H264TrackImpl$NALActions;
    goto :goto_0

    .line 362
    .end local v0           #action:Lcom/googlecode/mp4parser/authoring/tracks/H264TrackImpl$NALActions;
    :pswitch_2
    const/4 v3, 0x1

    aget-byte v3, p3, v3

    shr-int/lit8 v2, v3, 0x5

    .line 363
    .local v2, type:I
    sget-object v3, Lcom/googlecode/mp4parser/authoring/tracks/H264TrackImpl;->LOG:Ljava/util/logging/Logger;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Access unit delimiter type: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 364
    sget-object v0, Lcom/googlecode/mp4parser/authoring/tracks/H264TrackImpl$NALActions;->BUFFER:Lcom/googlecode/mp4parser/authoring/tracks/H264TrackImpl$NALActions;

    .line 365
    .restart local v0       #action:Lcom/googlecode/mp4parser/authoring/tracks/H264TrackImpl$NALActions;
    goto :goto_0

    .line 369
    .end local v0           #action:Lcom/googlecode/mp4parser/authoring/tracks/H264TrackImpl$NALActions;
    .end local v2           #type:I
    :pswitch_3
    iget-object v3, p0, Lcom/googlecode/mp4parser/authoring/tracks/H264TrackImpl;->seqParameterSet:Lcom/googlecode/mp4parser/h264/model/SeqParameterSet;

    if-nez v3, :cond_0

    .line 370
    invoke-direct {p0, p3}, Lcom/googlecode/mp4parser/authoring/tracks/H264TrackImpl;->cleanBuffer([B)Ljava/io/ByteArrayInputStream;

    move-result-object v1

    .line 371
    .local v1, is:Ljava/io/ByteArrayInputStream;
    invoke-virtual {v1}, Ljava/io/ByteArrayInputStream;->read()I

    .line 372
    invoke-static {v1}, Lcom/googlecode/mp4parser/h264/model/SeqParameterSet;->read(Ljava/io/InputStream;)Lcom/googlecode/mp4parser/h264/model/SeqParameterSet;

    move-result-object v3

    iput-object v3, p0, Lcom/googlecode/mp4parser/authoring/tracks/H264TrackImpl;->seqParameterSet:Lcom/googlecode/mp4parser/h264/model/SeqParameterSet;

    .line 373
    iget-object v3, p0, Lcom/googlecode/mp4parser/authoring/tracks/H264TrackImpl;->seqParameterSetList:Ljava/util/LinkedList;

    invoke-virtual {v3, p3}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 374
    invoke-direct {p0}, Lcom/googlecode/mp4parser/authoring/tracks/H264TrackImpl;->configureFramerate()V

    .line 376
    .end local v1           #is:Ljava/io/ByteArrayInputStream;
    :cond_0
    sget-object v0, Lcom/googlecode/mp4parser/authoring/tracks/H264TrackImpl$NALActions;->IGNORE:Lcom/googlecode/mp4parser/authoring/tracks/H264TrackImpl$NALActions;

    .line 377
    .restart local v0       #action:Lcom/googlecode/mp4parser/authoring/tracks/H264TrackImpl$NALActions;
    goto :goto_0

    .line 380
    .end local v0           #action:Lcom/googlecode/mp4parser/authoring/tracks/H264TrackImpl$NALActions;
    :pswitch_4
    iget-object v3, p0, Lcom/googlecode/mp4parser/authoring/tracks/H264TrackImpl;->pictureParameterSet:Lcom/googlecode/mp4parser/h264/model/PictureParameterSet;

    if-nez v3, :cond_1

    .line 381
    new-instance v1, Ljava/io/ByteArrayInputStream;

    invoke-direct {v1, p3}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 382
    .restart local v1       #is:Ljava/io/ByteArrayInputStream;
    invoke-virtual {v1}, Ljava/io/ByteArrayInputStream;->read()I

    .line 383
    invoke-static {v1}, Lcom/googlecode/mp4parser/h264/model/PictureParameterSet;->read(Ljava/io/InputStream;)Lcom/googlecode/mp4parser/h264/model/PictureParameterSet;

    move-result-object v3

    iput-object v3, p0, Lcom/googlecode/mp4parser/authoring/tracks/H264TrackImpl;->pictureParameterSet:Lcom/googlecode/mp4parser/h264/model/PictureParameterSet;

    .line 384
    iget-object v3, p0, Lcom/googlecode/mp4parser/authoring/tracks/H264TrackImpl;->pictureParameterSetList:Ljava/util/LinkedList;

    invoke-virtual {v3, p3}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 386
    .end local v1           #is:Ljava/io/ByteArrayInputStream;
    :cond_1
    sget-object v0, Lcom/googlecode/mp4parser/authoring/tracks/H264TrackImpl$NALActions;->IGNORE:Lcom/googlecode/mp4parser/authoring/tracks/H264TrackImpl$NALActions;

    .line 387
    .restart local v0       #action:Lcom/googlecode/mp4parser/authoring/tracks/H264TrackImpl$NALActions;
    goto :goto_0

    .line 391
    .end local v0           #action:Lcom/googlecode/mp4parser/authoring/tracks/H264TrackImpl$NALActions;
    :pswitch_5
    sget-object v0, Lcom/googlecode/mp4parser/authoring/tracks/H264TrackImpl$NALActions;->END:Lcom/googlecode/mp4parser/authoring/tracks/H264TrackImpl$NALActions;

    .line 392
    .restart local v0       #action:Lcom/googlecode/mp4parser/authoring/tracks/H264TrackImpl$NALActions;
    goto :goto_0

    .line 346
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_3
        :pswitch_4
        :pswitch_2
        :pswitch_5
        :pswitch_5
    .end packed-switch
.end method

.method private parse(Ljava/io/InputStream;)V
    .locals 7
    .parameter "inputStream"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const-wide/high16 v5, 0x4052

    const/4 v4, 0x1

    .line 80
    new-instance v2, Lcom/googlecode/mp4parser/authoring/tracks/H264TrackImpl$ReaderWrapper;

    const/4 v3, 0x0

    invoke-direct {v2, p0, p1, v3}, Lcom/googlecode/mp4parser/authoring/tracks/H264TrackImpl$ReaderWrapper;-><init>(Lcom/googlecode/mp4parser/authoring/tracks/H264TrackImpl;Ljava/io/InputStream;Lcom/googlecode/mp4parser/authoring/tracks/H264TrackImpl$1;)V

    iput-object v2, p0, Lcom/googlecode/mp4parser/authoring/tracks/H264TrackImpl;->reader:Lcom/googlecode/mp4parser/authoring/tracks/H264TrackImpl$ReaderWrapper;

    .line 81
    new-instance v2, Ljava/util/LinkedList;

    invoke-direct {v2}, Ljava/util/LinkedList;-><init>()V

    iput-object v2, p0, Lcom/googlecode/mp4parser/authoring/tracks/H264TrackImpl;->stts:Ljava/util/List;

    .line 82
    new-instance v2, Ljava/util/LinkedList;

    invoke-direct {v2}, Ljava/util/LinkedList;-><init>()V

    iput-object v2, p0, Lcom/googlecode/mp4parser/authoring/tracks/H264TrackImpl;->ctts:Ljava/util/List;

    .line 83
    new-instance v2, Ljava/util/LinkedList;

    invoke-direct {v2}, Ljava/util/LinkedList;-><init>()V

    iput-object v2, p0, Lcom/googlecode/mp4parser/authoring/tracks/H264TrackImpl;->sdtp:Ljava/util/List;

    .line 84
    new-instance v2, Ljava/util/LinkedList;

    invoke-direct {v2}, Ljava/util/LinkedList;-><init>()V

    iput-object v2, p0, Lcom/googlecode/mp4parser/authoring/tracks/H264TrackImpl;->stss:Ljava/util/List;

    .line 86
    new-instance v2, Ljava/util/LinkedList;

    invoke-direct {v2}, Ljava/util/LinkedList;-><init>()V

    iput-object v2, p0, Lcom/googlecode/mp4parser/authoring/tracks/H264TrackImpl;->samples:Ljava/util/List;

    .line 87
    invoke-direct {p0}, Lcom/googlecode/mp4parser/authoring/tracks/H264TrackImpl;->readSamples()Z

    move-result v2

    if-nez v2, :cond_0

    .line 88
    new-instance v2, Ljava/io/IOException;

    invoke-direct {v2}, Ljava/io/IOException;-><init>()V

    throw v2

    .line 91
    :cond_0
    invoke-direct {p0}, Lcom/googlecode/mp4parser/authoring/tracks/H264TrackImpl;->readVariables()Z

    move-result v2

    if-nez v2, :cond_1

    .line 92
    new-instance v2, Ljava/io/IOException;

    invoke-direct {v2}, Ljava/io/IOException;-><init>()V

    throw v2

    .line 95
    :cond_1
    new-instance v2, Lcom/coremedia/iso/boxes/SampleDescriptionBox;

    invoke-direct {v2}, Lcom/coremedia/iso/boxes/SampleDescriptionBox;-><init>()V

    iput-object v2, p0, Lcom/googlecode/mp4parser/authoring/tracks/H264TrackImpl;->sampleDescriptionBox:Lcom/coremedia/iso/boxes/SampleDescriptionBox;

    .line 96
    new-instance v1, Lcom/coremedia/iso/boxes/sampleentry/VisualSampleEntry;

    const-string v2, "avc1"

    invoke-direct {v1, v2}, Lcom/coremedia/iso/boxes/sampleentry/VisualSampleEntry;-><init>(Ljava/lang/String;)V

    .line 97
    .local v1, visualSampleEntry:Lcom/coremedia/iso/boxes/sampleentry/VisualSampleEntry;
    invoke-virtual {v1, v4}, Lcom/coremedia/iso/boxes/sampleentry/VisualSampleEntry;->setDataReferenceIndex(I)V

    .line 98
    const/16 v2, 0x18

    invoke-virtual {v1, v2}, Lcom/coremedia/iso/boxes/sampleentry/VisualSampleEntry;->setDepth(I)V

    .line 99
    invoke-virtual {v1, v4}, Lcom/coremedia/iso/boxes/sampleentry/VisualSampleEntry;->setFrameCount(I)V

    .line 100
    invoke-virtual {v1, v5, v6}, Lcom/coremedia/iso/boxes/sampleentry/VisualSampleEntry;->setHorizresolution(D)V

    .line 101
    invoke-virtual {v1, v5, v6}, Lcom/coremedia/iso/boxes/sampleentry/VisualSampleEntry;->setVertresolution(D)V

    .line 102
    iget v2, p0, Lcom/googlecode/mp4parser/authoring/tracks/H264TrackImpl;->width:I

    invoke-virtual {v1, v2}, Lcom/coremedia/iso/boxes/sampleentry/VisualSampleEntry;->setWidth(I)V

    .line 103
    iget v2, p0, Lcom/googlecode/mp4parser/authoring/tracks/H264TrackImpl;->height:I

    invoke-virtual {v1, v2}, Lcom/coremedia/iso/boxes/sampleentry/VisualSampleEntry;->setHeight(I)V

    .line 104
    const-string v2, "AVC Coding"

    invoke-virtual {v1, v2}, Lcom/coremedia/iso/boxes/sampleentry/VisualSampleEntry;->setCompressorname(Ljava/lang/String;)V

    .line 106
    new-instance v0, Lcom/coremedia/iso/boxes/h264/AvcConfigurationBox;

    invoke-direct {v0}, Lcom/coremedia/iso/boxes/h264/AvcConfigurationBox;-><init>()V

    .line 108
    .local v0, avcConfigurationBox:Lcom/coremedia/iso/boxes/h264/AvcConfigurationBox;
    iget-object v2, p0, Lcom/googlecode/mp4parser/authoring/tracks/H264TrackImpl;->seqParameterSetList:Ljava/util/LinkedList;

    invoke-virtual {v0, v2}, Lcom/coremedia/iso/boxes/h264/AvcConfigurationBox;->setSequenceParameterSets(Ljava/util/List;)V

    .line 109
    iget-object v2, p0, Lcom/googlecode/mp4parser/authoring/tracks/H264TrackImpl;->pictureParameterSetList:Ljava/util/LinkedList;

    invoke-virtual {v0, v2}, Lcom/coremedia/iso/boxes/h264/AvcConfigurationBox;->setPictureParameterSets(Ljava/util/List;)V

    .line 110
    iget-object v2, p0, Lcom/googlecode/mp4parser/authoring/tracks/H264TrackImpl;->seqParameterSet:Lcom/googlecode/mp4parser/h264/model/SeqParameterSet;

    iget v2, v2, Lcom/googlecode/mp4parser/h264/model/SeqParameterSet;->level_idc:I

    invoke-virtual {v0, v2}, Lcom/coremedia/iso/boxes/h264/AvcConfigurationBox;->setAvcLevelIndication(I)V

    .line 111
    iget-object v2, p0, Lcom/googlecode/mp4parser/authoring/tracks/H264TrackImpl;->seqParameterSet:Lcom/googlecode/mp4parser/h264/model/SeqParameterSet;

    iget v2, v2, Lcom/googlecode/mp4parser/h264/model/SeqParameterSet;->profile_idc:I

    invoke-virtual {v0, v2}, Lcom/coremedia/iso/boxes/h264/AvcConfigurationBox;->setAvcProfileIndication(I)V

    .line 112
    iget-object v2, p0, Lcom/googlecode/mp4parser/authoring/tracks/H264TrackImpl;->seqParameterSet:Lcom/googlecode/mp4parser/h264/model/SeqParameterSet;

    iget v2, v2, Lcom/googlecode/mp4parser/h264/model/SeqParameterSet;->bit_depth_luma_minus8:I

    invoke-virtual {v0, v2}, Lcom/coremedia/iso/boxes/h264/AvcConfigurationBox;->setBitDepthLumaMinus8(I)V

    .line 113
    iget-object v2, p0, Lcom/googlecode/mp4parser/authoring/tracks/H264TrackImpl;->seqParameterSet:Lcom/googlecode/mp4parser/h264/model/SeqParameterSet;

    iget v2, v2, Lcom/googlecode/mp4parser/h264/model/SeqParameterSet;->bit_depth_chroma_minus8:I

    invoke-virtual {v0, v2}, Lcom/coremedia/iso/boxes/h264/AvcConfigurationBox;->setBitDepthChromaMinus8(I)V

    .line 114
    iget-object v2, p0, Lcom/googlecode/mp4parser/authoring/tracks/H264TrackImpl;->seqParameterSet:Lcom/googlecode/mp4parser/h264/model/SeqParameterSet;

    iget-object v2, v2, Lcom/googlecode/mp4parser/h264/model/SeqParameterSet;->chroma_format_idc:Lcom/googlecode/mp4parser/h264/model/ChromaFormat;

    invoke-virtual {v2}, Lcom/googlecode/mp4parser/h264/model/ChromaFormat;->getId()I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/coremedia/iso/boxes/h264/AvcConfigurationBox;->setChromaFormat(I)V

    .line 115
    invoke-virtual {v0, v4}, Lcom/coremedia/iso/boxes/h264/AvcConfigurationBox;->setConfigurationVersion(I)V

    .line 116
    const/4 v2, 0x3

    invoke-virtual {v0, v2}, Lcom/coremedia/iso/boxes/h264/AvcConfigurationBox;->setLengthSizeMinusOne(I)V

    .line 117
    iget-object v2, p0, Lcom/googlecode/mp4parser/authoring/tracks/H264TrackImpl;->seqParameterSetList:Ljava/util/LinkedList;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [B

    aget-byte v2, v2, v4

    invoke-virtual {v0, v2}, Lcom/coremedia/iso/boxes/h264/AvcConfigurationBox;->setProfileCompatibility(I)V

    .line 119
    invoke-virtual {v1, v0}, Lcom/coremedia/iso/boxes/sampleentry/VisualSampleEntry;->addBox(Lcom/coremedia/iso/boxes/Box;)V

    .line 120
    iget-object v2, p0, Lcom/googlecode/mp4parser/authoring/tracks/H264TrackImpl;->sampleDescriptionBox:Lcom/coremedia/iso/boxes/SampleDescriptionBox;

    invoke-virtual {v2, v1}, Lcom/coremedia/iso/boxes/SampleDescriptionBox;->addBox(Lcom/coremedia/iso/boxes/Box;)V

    .line 122
    iget-object v2, p0, Lcom/googlecode/mp4parser/authoring/tracks/H264TrackImpl;->trackMetaData:Lcom/googlecode/mp4parser/authoring/TrackMetaData;

    new-instance v3, Ljava/util/Date;

    invoke-direct {v3}, Ljava/util/Date;-><init>()V

    invoke-virtual {v2, v3}, Lcom/googlecode/mp4parser/authoring/TrackMetaData;->setCreationTime(Ljava/util/Date;)V

    .line 123
    iget-object v2, p0, Lcom/googlecode/mp4parser/authoring/tracks/H264TrackImpl;->trackMetaData:Lcom/googlecode/mp4parser/authoring/TrackMetaData;

    new-instance v3, Ljava/util/Date;

    invoke-direct {v3}, Ljava/util/Date;-><init>()V

    invoke-virtual {v2, v3}, Lcom/googlecode/mp4parser/authoring/TrackMetaData;->setModificationTime(Ljava/util/Date;)V

    .line 124
    iget-object v2, p0, Lcom/googlecode/mp4parser/authoring/tracks/H264TrackImpl;->trackMetaData:Lcom/googlecode/mp4parser/authoring/TrackMetaData;

    iget-object v3, p0, Lcom/googlecode/mp4parser/authoring/tracks/H264TrackImpl;->lang:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/googlecode/mp4parser/authoring/TrackMetaData;->setLanguage(Ljava/lang/String;)V

    .line 125
    iget-object v2, p0, Lcom/googlecode/mp4parser/authoring/tracks/H264TrackImpl;->trackMetaData:Lcom/googlecode/mp4parser/authoring/TrackMetaData;

    iget v3, p0, Lcom/googlecode/mp4parser/authoring/tracks/H264TrackImpl;->timescale:I

    int-to-long v3, v3

    invoke-virtual {v2, v3, v4}, Lcom/googlecode/mp4parser/authoring/TrackMetaData;->setTimescale(J)V

    .line 126
    iget-object v2, p0, Lcom/googlecode/mp4parser/authoring/tracks/H264TrackImpl;->trackMetaData:Lcom/googlecode/mp4parser/authoring/TrackMetaData;

    iget v3, p0, Lcom/googlecode/mp4parser/authoring/tracks/H264TrackImpl;->width:I

    int-to-double v3, v3

    invoke-virtual {v2, v3, v4}, Lcom/googlecode/mp4parser/authoring/TrackMetaData;->setWidth(D)V

    .line 127
    iget-object v2, p0, Lcom/googlecode/mp4parser/authoring/tracks/H264TrackImpl;->trackMetaData:Lcom/googlecode/mp4parser/authoring/TrackMetaData;

    iget v3, p0, Lcom/googlecode/mp4parser/authoring/tracks/H264TrackImpl;->height:I

    int-to-double v3, v3

    invoke-virtual {v2, v3, v4}, Lcom/googlecode/mp4parser/authoring/TrackMetaData;->setHeight(D)V

    .line 128
    return-void
.end method

.method private readSamples()Z
    .locals 27
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 227
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/googlecode/mp4parser/authoring/tracks/H264TrackImpl;->readSamples:Z

    move/from16 v21, v0

    if-eqz v21, :cond_0

    .line 228
    const/16 v21, 0x1

    .line 306
    :goto_0
    return v21

    .line 231
    :cond_0
    const/16 v21, 0x1

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/googlecode/mp4parser/authoring/tracks/H264TrackImpl;->readSamples:Z

    .line 234
    invoke-direct/range {p0 .. p0}, Lcom/googlecode/mp4parser/authoring/tracks/H264TrackImpl;->findNextStartcode()Z

    .line 235
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/googlecode/mp4parser/authoring/tracks/H264TrackImpl;->reader:Lcom/googlecode/mp4parser/authoring/tracks/H264TrackImpl$ReaderWrapper;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/googlecode/mp4parser/authoring/tracks/H264TrackImpl$ReaderWrapper;->mark()V

    .line 236
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/googlecode/mp4parser/authoring/tracks/H264TrackImpl;->reader:Lcom/googlecode/mp4parser/authoring/tracks/H264TrackImpl$ReaderWrapper;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/googlecode/mp4parser/authoring/tracks/H264TrackImpl$ReaderWrapper;->getPos()J

    move-result-wide v15

    .line 238
    .local v15, pos:J
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 240
    .local v7, buffered:Ljava/util/ArrayList;,"Ljava/util/ArrayList<[B>;"
    const/4 v9, 0x0

    .line 242
    .local v9, frameNr:I
    :goto_1
    invoke-direct/range {p0 .. p0}, Lcom/googlecode/mp4parser/authoring/tracks/H264TrackImpl;->findNextStartcode()Z

    move-result v21

    if-eqz v21, :cond_7

    .line 243
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/googlecode/mp4parser/authoring/tracks/H264TrackImpl;->reader:Lcom/googlecode/mp4parser/authoring/tracks/H264TrackImpl$ReaderWrapper;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/googlecode/mp4parser/authoring/tracks/H264TrackImpl$ReaderWrapper;->getPos()J

    move-result-wide v12

    .line 244
    .local v12, newpos:J
    sub-long v21, v12, v15

    move-object/from16 v0, p0

    iget v0, v0, Lcom/googlecode/mp4parser/authoring/tracks/H264TrackImpl;->prevScSize:I

    move/from16 v23, v0

    move/from16 v0, v23

    int-to-long v0, v0

    move-wide/from16 v23, v0

    sub-long v21, v21, v23

    move-wide/from16 v0, v21

    long-to-int v0, v0

    move/from16 v18, v0

    .line 245
    .local v18, size:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/googlecode/mp4parser/authoring/tracks/H264TrackImpl;->reader:Lcom/googlecode/mp4parser/authoring/tracks/H264TrackImpl$ReaderWrapper;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/googlecode/mp4parser/authoring/tracks/H264TrackImpl$ReaderWrapper;->reset()V

    .line 246
    move/from16 v0, v18

    new-array v8, v0, [B

    .line 247
    .local v8, data:[B
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/googlecode/mp4parser/authoring/tracks/H264TrackImpl;->reader:Lcom/googlecode/mp4parser/authoring/tracks/H264TrackImpl$ReaderWrapper;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    invoke-virtual {v0, v8}, Lcom/googlecode/mp4parser/authoring/tracks/H264TrackImpl$ReaderWrapper;->read([B)J

    .line 248
    const/16 v21, 0x0

    aget-byte v20, v8, v21

    .line 249
    .local v20, type:I
    shr-int/lit8 v21, v20, 0x5

    and-int/lit8 v10, v21, 0x3

    .line 250
    .local v10, nal_ref_idc:I
    and-int/lit8 v11, v20, 0x1f

    .line 251
    .local v11, nal_unit_type:I
    sget-object v21, Lcom/googlecode/mp4parser/authoring/tracks/H264TrackImpl;->LOG:Ljava/util/logging/Logger;

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "Found startcode at "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    const-wide/16 v23, 0x4

    sub-long v23, v15, v23

    invoke-virtual/range {v22 .. v24}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, " Type: "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, " ref idc: "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, " (size "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, ")"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 252
    move-object/from16 v0, p0

    invoke-direct {v0, v10, v11, v8}, Lcom/googlecode/mp4parser/authoring/tracks/H264TrackImpl;->handleNALUnit(II[B)Lcom/googlecode/mp4parser/authoring/tracks/H264TrackImpl$NALActions;

    move-result-object v4

    .line 253
    .local v4, action:Lcom/googlecode/mp4parser/authoring/tracks/H264TrackImpl$NALActions;
    sget-object v21, Lcom/googlecode/mp4parser/authoring/tracks/H264TrackImpl$1;->$SwitchMap$com$googlecode$mp4parser$authoring$tracks$H264TrackImpl$NALActions:[I

    invoke-virtual {v4}, Lcom/googlecode/mp4parser/authoring/tracks/H264TrackImpl$NALActions;->ordinal()I

    move-result v22

    aget v21, v21, v22

    packed-switch v21, :pswitch_data_0

    .line 302
    :goto_2
    :pswitch_0
    move-wide v15, v12

    .line 303
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/googlecode/mp4parser/authoring/tracks/H264TrackImpl;->reader:Lcom/googlecode/mp4parser/authoring/tracks/H264TrackImpl$ReaderWrapper;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/googlecode/mp4parser/authoring/tracks/H264TrackImpl;->currentScSize:I

    move/from16 v22, v0

    invoke-virtual/range {v21 .. v22}, Lcom/googlecode/mp4parser/authoring/tracks/H264TrackImpl$ReaderWrapper;->seek(I)J

    .line 304
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/googlecode/mp4parser/authoring/tracks/H264TrackImpl;->reader:Lcom/googlecode/mp4parser/authoring/tracks/H264TrackImpl$ReaderWrapper;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/googlecode/mp4parser/authoring/tracks/H264TrackImpl$ReaderWrapper;->mark()V

    goto/16 :goto_1

    .line 258
    :pswitch_1
    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 262
    :pswitch_2
    const/16 v19, 0x16

    .line 263
    .local v19, stdpValue:I
    add-int/lit8 v9, v9, 0x1

    .line 264
    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 265
    move-object/from16 v0, p0

    invoke-direct {v0, v7}, Lcom/googlecode/mp4parser/authoring/tracks/H264TrackImpl;->createSample(Ljava/util/List;)Ljava/nio/ByteBuffer;

    move-result-object v5

    .line 266
    .local v5, bb:Ljava/nio/ByteBuffer;
    const/4 v3, 0x0

    .line 267
    .local v3, IdrPicFlag:Z
    const/16 v21, 0x5

    move/from16 v0, v21

    if-ne v11, v0, :cond_1

    .line 268
    add-int/lit8 v19, v19, 0x10

    .line 269
    const/4 v3, 0x1

    .line 271
    :cond_1
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v21

    add-int/lit8 v21, v21, -0x1

    move/from16 v0, v21

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v21

    check-cast v21, [B

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-direct {v0, v1}, Lcom/googlecode/mp4parser/authoring/tracks/H264TrackImpl;->cleanBuffer([B)Ljava/io/ByteArrayInputStream;

    move-result-object v6

    .line 272
    .local v6, bs:Ljava/io/ByteArrayInputStream;
    new-instance v17, Lcom/googlecode/mp4parser/authoring/tracks/H264TrackImpl$SliceHeader;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/googlecode/mp4parser/authoring/tracks/H264TrackImpl;->seqParameterSet:Lcom/googlecode/mp4parser/h264/model/SeqParameterSet;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/googlecode/mp4parser/authoring/tracks/H264TrackImpl;->pictureParameterSet:Lcom/googlecode/mp4parser/h264/model/PictureParameterSet;

    move-object/from16 v22, v0

    move-object/from16 v0, v17

    move-object/from16 v1, v21

    move-object/from16 v2, v22

    invoke-direct {v0, v6, v1, v2, v3}, Lcom/googlecode/mp4parser/authoring/tracks/H264TrackImpl$SliceHeader;-><init>(Ljava/io/InputStream;Lcom/googlecode/mp4parser/h264/model/SeqParameterSet;Lcom/googlecode/mp4parser/h264/model/PictureParameterSet;Z)V

    .line 273
    .local v17, sh:Lcom/googlecode/mp4parser/authoring/tracks/H264TrackImpl$SliceHeader;
    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/googlecode/mp4parser/authoring/tracks/H264TrackImpl$SliceHeader;->slice_type:Lcom/googlecode/mp4parser/authoring/tracks/H264TrackImpl$SliceHeader$SliceType;

    move-object/from16 v21, v0

    sget-object v22, Lcom/googlecode/mp4parser/authoring/tracks/H264TrackImpl$SliceHeader$SliceType;->B:Lcom/googlecode/mp4parser/authoring/tracks/H264TrackImpl$SliceHeader$SliceType;

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    if-ne v0, v1, :cond_2

    .line 274
    add-int/lit8 v19, v19, 0x4

    .line 276
    :cond_2
    sget-object v21, Lcom/googlecode/mp4parser/authoring/tracks/H264TrackImpl;->LOG:Ljava/util/logging/Logger;

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "Adding sample with size "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual {v5}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v23

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, " and header "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 277
    invoke-virtual {v7}, Ljava/util/ArrayList;->clear()V

    .line 278
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/googlecode/mp4parser/authoring/tracks/H264TrackImpl;->samples:Ljava/util/List;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 279
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/googlecode/mp4parser/authoring/tracks/H264TrackImpl;->stts:Ljava/util/List;

    move-object/from16 v21, v0

    new-instance v22, Lcom/coremedia/iso/boxes/TimeToSampleBox$Entry;

    const-wide/16 v23, 0x1

    move-object/from16 v0, p0

    iget v0, v0, Lcom/googlecode/mp4parser/authoring/tracks/H264TrackImpl;->frametick:I

    move/from16 v25, v0

    move/from16 v0, v25

    int-to-long v0, v0

    move-wide/from16 v25, v0

    invoke-direct/range {v22 .. v26}, Lcom/coremedia/iso/boxes/TimeToSampleBox$Entry;-><init>(JJ)V

    invoke-interface/range {v21 .. v22}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 280
    const/16 v21, 0x5

    move/from16 v0, v21

    if-ne v11, v0, :cond_3

    .line 281
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/googlecode/mp4parser/authoring/tracks/H264TrackImpl;->stss:Ljava/util/List;

    move-object/from16 v21, v0

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v22

    invoke-interface/range {v21 .. v22}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 283
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/googlecode/mp4parser/authoring/tracks/H264TrackImpl;->seiMessage:Lcom/googlecode/mp4parser/authoring/tracks/H264TrackImpl$SEIMessage;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget v0, v0, Lcom/googlecode/mp4parser/authoring/tracks/H264TrackImpl$SEIMessage;->n_frames:I

    move/from16 v21, v0

    if-nez v21, :cond_4

    .line 284
    const/16 v21, 0x0

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput v0, v1, Lcom/googlecode/mp4parser/authoring/tracks/H264TrackImpl;->frameNrInGop:I

    .line 286
    :cond_4
    const/4 v14, 0x0

    .line 287
    .local v14, offset:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/googlecode/mp4parser/authoring/tracks/H264TrackImpl;->seiMessage:Lcom/googlecode/mp4parser/authoring/tracks/H264TrackImpl$SEIMessage;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-boolean v0, v0, Lcom/googlecode/mp4parser/authoring/tracks/H264TrackImpl$SEIMessage;->clock_timestamp_flag:Z

    move/from16 v21, v0

    if-eqz v21, :cond_6

    .line 288
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/googlecode/mp4parser/authoring/tracks/H264TrackImpl;->seiMessage:Lcom/googlecode/mp4parser/authoring/tracks/H264TrackImpl$SEIMessage;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget v0, v0, Lcom/googlecode/mp4parser/authoring/tracks/H264TrackImpl$SEIMessage;->n_frames:I

    move/from16 v21, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/googlecode/mp4parser/authoring/tracks/H264TrackImpl;->frameNrInGop:I

    move/from16 v22, v0

    sub-int v14, v21, v22

    .line 292
    :cond_5
    :goto_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/googlecode/mp4parser/authoring/tracks/H264TrackImpl;->ctts:Ljava/util/List;

    move-object/from16 v21, v0

    new-instance v22, Lcom/coremedia/iso/boxes/CompositionTimeToSample$Entry;

    const/16 v23, 0x1

    move-object/from16 v0, p0

    iget v0, v0, Lcom/googlecode/mp4parser/authoring/tracks/H264TrackImpl;->frametick:I

    move/from16 v24, v0

    mul-int v24, v24, v14

    invoke-direct/range {v22 .. v24}, Lcom/coremedia/iso/boxes/CompositionTimeToSample$Entry;-><init>(II)V

    invoke-interface/range {v21 .. v22}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 293
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/googlecode/mp4parser/authoring/tracks/H264TrackImpl;->sdtp:Ljava/util/List;

    move-object/from16 v21, v0

    new-instance v22, Lcom/coremedia/iso/boxes/SampleDependencyTypeBox$Entry;

    move-object/from16 v0, v22

    move/from16 v1, v19

    invoke-direct {v0, v1}, Lcom/coremedia/iso/boxes/SampleDependencyTypeBox$Entry;-><init>(I)V

    invoke-interface/range {v21 .. v22}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 294
    move-object/from16 v0, p0

    iget v0, v0, Lcom/googlecode/mp4parser/authoring/tracks/H264TrackImpl;->frameNrInGop:I

    move/from16 v21, v0

    add-int/lit8 v21, v21, 0x1

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput v0, v1, Lcom/googlecode/mp4parser/authoring/tracks/H264TrackImpl;->frameNrInGop:I

    goto/16 :goto_2

    .line 289
    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/googlecode/mp4parser/authoring/tracks/H264TrackImpl;->seiMessage:Lcom/googlecode/mp4parser/authoring/tracks/H264TrackImpl$SEIMessage;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-boolean v0, v0, Lcom/googlecode/mp4parser/authoring/tracks/H264TrackImpl$SEIMessage;->removal_delay_flag:Z

    move/from16 v21, v0

    if-eqz v21, :cond_5

    .line 290
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/googlecode/mp4parser/authoring/tracks/H264TrackImpl;->seiMessage:Lcom/googlecode/mp4parser/authoring/tracks/H264TrackImpl$SEIMessage;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget v0, v0, Lcom/googlecode/mp4parser/authoring/tracks/H264TrackImpl$SEIMessage;->dpb_removal_delay:I

    move/from16 v21, v0

    div-int/lit8 v14, v21, 0x2

    goto :goto_3

    .line 298
    .end local v3           #IdrPicFlag:Z
    .end local v5           #bb:Ljava/nio/ByteBuffer;
    .end local v6           #bs:Ljava/io/ByteArrayInputStream;
    .end local v14           #offset:I
    .end local v17           #sh:Lcom/googlecode/mp4parser/authoring/tracks/H264TrackImpl$SliceHeader;
    .end local v19           #stdpValue:I
    :pswitch_3
    const/16 v21, 0x1

    goto/16 :goto_0

    .line 306
    .end local v4           #action:Lcom/googlecode/mp4parser/authoring/tracks/H264TrackImpl$NALActions;
    .end local v8           #data:[B
    .end local v10           #nal_ref_idc:I
    .end local v11           #nal_unit_type:I
    .end local v12           #newpos:J
    .end local v18           #size:I
    .end local v20           #type:I
    :cond_7
    const/16 v21, 0x1

    goto/16 :goto_0

    .line 253
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private readVariables()Z
    .locals 7

    .prologue
    .line 175
    iget-object v4, p0, Lcom/googlecode/mp4parser/authoring/tracks/H264TrackImpl;->seqParameterSet:Lcom/googlecode/mp4parser/h264/model/SeqParameterSet;

    iget v4, v4, Lcom/googlecode/mp4parser/h264/model/SeqParameterSet;->pic_width_in_mbs_minus1:I

    add-int/lit8 v4, v4, 0x1

    mul-int/lit8 v4, v4, 0x10

    iput v4, p0, Lcom/googlecode/mp4parser/authoring/tracks/H264TrackImpl;->width:I

    .line 176
    const/4 v3, 0x2

    .line 177
    .local v3, mult:I
    iget-object v4, p0, Lcom/googlecode/mp4parser/authoring/tracks/H264TrackImpl;->seqParameterSet:Lcom/googlecode/mp4parser/h264/model/SeqParameterSet;

    iget-boolean v4, v4, Lcom/googlecode/mp4parser/h264/model/SeqParameterSet;->frame_mbs_only_flag:Z

    if-eqz v4, :cond_0

    .line 178
    const/4 v3, 0x1

    .line 180
    :cond_0
    iget-object v4, p0, Lcom/googlecode/mp4parser/authoring/tracks/H264TrackImpl;->seqParameterSet:Lcom/googlecode/mp4parser/h264/model/SeqParameterSet;

    iget v4, v4, Lcom/googlecode/mp4parser/h264/model/SeqParameterSet;->pic_height_in_map_units_minus1:I

    add-int/lit8 v4, v4, 0x1

    mul-int/lit8 v4, v4, 0x10

    mul-int/2addr v4, v3

    iput v4, p0, Lcom/googlecode/mp4parser/authoring/tracks/H264TrackImpl;->height:I

    .line 181
    iget-object v4, p0, Lcom/googlecode/mp4parser/authoring/tracks/H264TrackImpl;->seqParameterSet:Lcom/googlecode/mp4parser/h264/model/SeqParameterSet;

    iget-boolean v4, v4, Lcom/googlecode/mp4parser/h264/model/SeqParameterSet;->frame_cropping_flag:Z

    if-eqz v4, :cond_3

    .line 182
    const/4 v0, 0x0

    .line 183
    .local v0, chromaArrayType:I
    iget-object v4, p0, Lcom/googlecode/mp4parser/authoring/tracks/H264TrackImpl;->seqParameterSet:Lcom/googlecode/mp4parser/h264/model/SeqParameterSet;

    iget-boolean v4, v4, Lcom/googlecode/mp4parser/h264/model/SeqParameterSet;->residual_color_transform_flag:Z

    if-nez v4, :cond_1

    .line 184
    iget-object v4, p0, Lcom/googlecode/mp4parser/authoring/tracks/H264TrackImpl;->seqParameterSet:Lcom/googlecode/mp4parser/h264/model/SeqParameterSet;

    iget-object v4, v4, Lcom/googlecode/mp4parser/h264/model/SeqParameterSet;->chroma_format_idc:Lcom/googlecode/mp4parser/h264/model/ChromaFormat;

    invoke-virtual {v4}, Lcom/googlecode/mp4parser/h264/model/ChromaFormat;->getId()I

    move-result v0

    .line 186
    :cond_1
    const/4 v1, 0x1

    .line 187
    .local v1, cropUnitX:I
    move v2, v3

    .line 188
    .local v2, cropUnitY:I
    if-eqz v0, :cond_2

    .line 189
    iget-object v4, p0, Lcom/googlecode/mp4parser/authoring/tracks/H264TrackImpl;->seqParameterSet:Lcom/googlecode/mp4parser/h264/model/SeqParameterSet;

    iget-object v4, v4, Lcom/googlecode/mp4parser/h264/model/SeqParameterSet;->chroma_format_idc:Lcom/googlecode/mp4parser/h264/model/ChromaFormat;

    invoke-virtual {v4}, Lcom/googlecode/mp4parser/h264/model/ChromaFormat;->getSubWidth()I

    move-result v1

    .line 190
    iget-object v4, p0, Lcom/googlecode/mp4parser/authoring/tracks/H264TrackImpl;->seqParameterSet:Lcom/googlecode/mp4parser/h264/model/SeqParameterSet;

    iget-object v4, v4, Lcom/googlecode/mp4parser/h264/model/SeqParameterSet;->chroma_format_idc:Lcom/googlecode/mp4parser/h264/model/ChromaFormat;

    invoke-virtual {v4}, Lcom/googlecode/mp4parser/h264/model/ChromaFormat;->getSubHeight()I

    move-result v4

    mul-int v2, v4, v3

    .line 193
    :cond_2
    iget v4, p0, Lcom/googlecode/mp4parser/authoring/tracks/H264TrackImpl;->width:I

    iget-object v5, p0, Lcom/googlecode/mp4parser/authoring/tracks/H264TrackImpl;->seqParameterSet:Lcom/googlecode/mp4parser/h264/model/SeqParameterSet;

    iget v5, v5, Lcom/googlecode/mp4parser/h264/model/SeqParameterSet;->frame_crop_left_offset:I

    iget-object v6, p0, Lcom/googlecode/mp4parser/authoring/tracks/H264TrackImpl;->seqParameterSet:Lcom/googlecode/mp4parser/h264/model/SeqParameterSet;

    iget v6, v6, Lcom/googlecode/mp4parser/h264/model/SeqParameterSet;->frame_crop_right_offset:I

    add-int/2addr v5, v6

    mul-int/2addr v5, v1

    sub-int/2addr v4, v5

    iput v4, p0, Lcom/googlecode/mp4parser/authoring/tracks/H264TrackImpl;->width:I

    .line 194
    iget v4, p0, Lcom/googlecode/mp4parser/authoring/tracks/H264TrackImpl;->height:I

    iget-object v5, p0, Lcom/googlecode/mp4parser/authoring/tracks/H264TrackImpl;->seqParameterSet:Lcom/googlecode/mp4parser/h264/model/SeqParameterSet;

    iget v5, v5, Lcom/googlecode/mp4parser/h264/model/SeqParameterSet;->frame_crop_top_offset:I

    iget-object v6, p0, Lcom/googlecode/mp4parser/authoring/tracks/H264TrackImpl;->seqParameterSet:Lcom/googlecode/mp4parser/h264/model/SeqParameterSet;

    iget v6, v6, Lcom/googlecode/mp4parser/h264/model/SeqParameterSet;->frame_crop_bottom_offset:I

    add-int/2addr v5, v6

    mul-int/2addr v5, v2

    sub-int/2addr v4, v5

    iput v4, p0, Lcom/googlecode/mp4parser/authoring/tracks/H264TrackImpl;->height:I

    .line 196
    .end local v0           #chromaArrayType:I
    .end local v1           #cropUnitX:I
    .end local v2           #cropUnitY:I
    :cond_3
    const/4 v4, 0x1

    return v4
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
    .line 139
    iget-object v0, p0, Lcom/googlecode/mp4parser/authoring/tracks/H264TrackImpl;->ctts:Ljava/util/List;

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
    .line 135
    iget-object v0, p0, Lcom/googlecode/mp4parser/authoring/tracks/H264TrackImpl;->stts:Ljava/util/List;

    return-object v0
.end method

.method public getHandler()Ljava/lang/String;
    .locals 1

    .prologue
    .line 159
    const-string v0, "vide"

    return-object v0
.end method

.method public getMediaHeaderBox()Lcom/coremedia/iso/boxes/AbstractMediaHeaderBox;
    .locals 1

    .prologue
    .line 167
    new-instance v0, Lcom/coremedia/iso/boxes/VideoMediaHeaderBox;

    invoke-direct {v0}, Lcom/coremedia/iso/boxes/VideoMediaHeaderBox;-><init>()V

    return-object v0
.end method

.method public bridge synthetic getMediaHeaderBox()Lcom/coremedia/iso/boxes/Box;
    .locals 1

    .prologue
    .line 26
    invoke-virtual {p0}, Lcom/googlecode/mp4parser/authoring/tracks/H264TrackImpl;->getMediaHeaderBox()Lcom/coremedia/iso/boxes/AbstractMediaHeaderBox;

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
    .line 151
    iget-object v0, p0, Lcom/googlecode/mp4parser/authoring/tracks/H264TrackImpl;->sdtp:Ljava/util/List;

    return-object v0
.end method

.method public getSampleDescriptionBox()Lcom/coremedia/iso/boxes/SampleDescriptionBox;
    .locals 1

    .prologue
    .line 131
    iget-object v0, p0, Lcom/googlecode/mp4parser/authoring/tracks/H264TrackImpl;->sampleDescriptionBox:Lcom/coremedia/iso/boxes/SampleDescriptionBox;

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
    .line 163
    iget-object v0, p0, Lcom/googlecode/mp4parser/authoring/tracks/H264TrackImpl;->samples:Ljava/util/List;

    return-object v0
.end method

.method public getSubsampleInformationBox()Lcom/coremedia/iso/boxes/SubSampleInformationBox;
    .locals 1

    .prologue
    .line 171
    const/4 v0, 0x0

    return-object v0
.end method

.method public getSyncSamples()[J
    .locals 4

    .prologue
    .line 143
    iget-object v2, p0, Lcom/googlecode/mp4parser/authoring/tracks/H264TrackImpl;->stss:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    new-array v1, v2, [J

    .line 144
    .local v1, returns:[J
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v2, p0, Lcom/googlecode/mp4parser/authoring/tracks/H264TrackImpl;->stss:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_0

    .line 145
    iget-object v2, p0, Lcom/googlecode/mp4parser/authoring/tracks/H264TrackImpl;->stss:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    int-to-long v2, v2

    aput-wide v2, v1, v0

    .line 144
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 147
    :cond_0
    return-object v1
.end method

.method public getTrackMetaData()Lcom/googlecode/mp4parser/authoring/TrackMetaData;
    .locals 1

    .prologue
    .line 155
    iget-object v0, p0, Lcom/googlecode/mp4parser/authoring/tracks/H264TrackImpl;->trackMetaData:Lcom/googlecode/mp4parser/authoring/TrackMetaData;

    return-object v0
.end method

.method public printAccessUnitDelimiter([B)V
    .locals 3
    .parameter "data"

    .prologue
    .line 422
    sget-object v0, Lcom/googlecode/mp4parser/authoring/tracks/H264TrackImpl;->LOG:Ljava/util/logging/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Access unit delimiter: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/4 v2, 0x1

    aget-byte v2, p1, v2

    shr-int/lit8 v2, v2, 0x5

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 423
    return-void
.end method
