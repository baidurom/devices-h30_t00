.class public Lcom/googlecode/mp4parser/authoring/tracks/EC3TrackImpl;
.super Lcom/googlecode/mp4parser/authoring/AbstractTrack;
.source "EC3TrackImpl.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/googlecode/mp4parser/authoring/tracks/EC3TrackImpl$BitStreamInfo;
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field bitrate:I

.field entries:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/googlecode/mp4parser/authoring/tracks/EC3TrackImpl$BitStreamInfo;",
            ">;"
        }
    .end annotation
.end field

.field frameSize:I

.field private inputStream:Ljava/io/BufferedInputStream;

.field private lang:Ljava/lang/String;

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
    .locals 1

    .prologue
    .line 25
    const-class v0, Lcom/googlecode/mp4parser/authoring/tracks/EC3TrackImpl;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/googlecode/mp4parser/authoring/tracks/EC3TrackImpl;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 1
    .parameter "fin"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 45
    invoke-direct {p0}, Lcom/googlecode/mp4parser/authoring/AbstractTrack;-><init>()V

    .line 26
    new-instance v0, Lcom/googlecode/mp4parser/authoring/TrackMetaData;

    invoke-direct {v0}, Lcom/googlecode/mp4parser/authoring/TrackMetaData;-><init>()V

    iput-object v0, p0, Lcom/googlecode/mp4parser/authoring/tracks/EC3TrackImpl;->trackMetaData:Lcom/googlecode/mp4parser/authoring/TrackMetaData;

    .line 33
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/googlecode/mp4parser/authoring/tracks/EC3TrackImpl;->entries:Ljava/util/List;

    .line 37
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/googlecode/mp4parser/authoring/tracks/EC3TrackImpl;->stts:Ljava/util/List;

    .line 38
    const-string v0, "und"

    iput-object v0, p0, Lcom/googlecode/mp4parser/authoring/tracks/EC3TrackImpl;->lang:Ljava/lang/String;

    .line 46
    invoke-direct {p0, p1}, Lcom/googlecode/mp4parser/authoring/tracks/EC3TrackImpl;->parse(Ljava/io/InputStream;)V

    .line 47
    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;Ljava/lang/String;)V
    .locals 1
    .parameter "fin"
    .parameter "lang"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 40
    invoke-direct {p0}, Lcom/googlecode/mp4parser/authoring/AbstractTrack;-><init>()V

    .line 26
    new-instance v0, Lcom/googlecode/mp4parser/authoring/TrackMetaData;

    invoke-direct {v0}, Lcom/googlecode/mp4parser/authoring/TrackMetaData;-><init>()V

    iput-object v0, p0, Lcom/googlecode/mp4parser/authoring/tracks/EC3TrackImpl;->trackMetaData:Lcom/googlecode/mp4parser/authoring/TrackMetaData;

    .line 33
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/googlecode/mp4parser/authoring/tracks/EC3TrackImpl;->entries:Ljava/util/List;

    .line 37
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/googlecode/mp4parser/authoring/tracks/EC3TrackImpl;->stts:Ljava/util/List;

    .line 38
    const-string v0, "und"

    iput-object v0, p0, Lcom/googlecode/mp4parser/authoring/tracks/EC3TrackImpl;->lang:Ljava/lang/String;

    .line 41
    iput-object p2, p0, Lcom/googlecode/mp4parser/authoring/tracks/EC3TrackImpl;->lang:Ljava/lang/String;

    .line 42
    invoke-direct {p0, p1}, Lcom/googlecode/mp4parser/authoring/tracks/EC3TrackImpl;->parse(Ljava/io/InputStream;)V

    .line 43
    return-void
.end method

.method private parse(Ljava/io/InputStream;)V
    .locals 14
    .parameter "fin"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 50
    new-instance v11, Ljava/io/BufferedInputStream;

    invoke-direct {v11, p1}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    iput-object v11, p0, Lcom/googlecode/mp4parser/authoring/tracks/EC3TrackImpl;->inputStream:Ljava/io/BufferedInputStream;

    .line 52
    const/4 v4, 0x0

    .line 53
    .local v4, done:Z
    iget-object v11, p0, Lcom/googlecode/mp4parser/authoring/tracks/EC3TrackImpl;->inputStream:Ljava/io/BufferedInputStream;

    const/16 v12, 0x2710

    invoke-virtual {v11, v12}, Ljava/io/BufferedInputStream;->mark(I)V

    .line 54
    :cond_0
    if-nez v4, :cond_4

    .line 55
    invoke-direct {p0}, Lcom/googlecode/mp4parser/authoring/tracks/EC3TrackImpl;->readVariables()Lcom/googlecode/mp4parser/authoring/tracks/EC3TrackImpl$BitStreamInfo;

    move-result-object v1

    .line 56
    .local v1, bsi:Lcom/googlecode/mp4parser/authoring/tracks/EC3TrackImpl$BitStreamInfo;
    if-nez v1, :cond_1

    .line 57
    new-instance v11, Ljava/io/IOException;

    invoke-direct {v11}, Ljava/io/IOException;-><init>()V

    throw v11

    .line 59
    :cond_1
    iget-object v11, p0, Lcom/googlecode/mp4parser/authoring/tracks/EC3TrackImpl;->entries:Ljava/util/List;

    invoke-interface {v11}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    .local v8, i$:Ljava/util/Iterator;
    :cond_2
    :goto_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_3

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/googlecode/mp4parser/authoring/tracks/EC3TrackImpl$BitStreamInfo;

    .line 60
    .local v7, entry:Lcom/googlecode/mp4parser/authoring/tracks/EC3TrackImpl$BitStreamInfo;
    iget v11, v1, Lcom/googlecode/mp4parser/authoring/tracks/EC3TrackImpl$BitStreamInfo;->strmtyp:I

    const/4 v12, 0x1

    if-eq v11, v12, :cond_2

    iget v11, v7, Lcom/googlecode/mp4parser/authoring/tracks/EC3TrackImpl$BitStreamInfo;->substreamid:I

    iget v12, v1, Lcom/googlecode/mp4parser/authoring/tracks/EC3TrackImpl$BitStreamInfo;->substreamid:I

    if-ne v11, v12, :cond_2

    .line 61
    const/4 v4, 0x1

    goto :goto_0

    .line 64
    .end local v7           #entry:Lcom/googlecode/mp4parser/authoring/tracks/EC3TrackImpl$BitStreamInfo;
    :cond_3
    if-nez v4, :cond_0

    .line 65
    iget-object v11, p0, Lcom/googlecode/mp4parser/authoring/tracks/EC3TrackImpl;->entries:Ljava/util/List;

    invoke-interface {v11, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 66
    iget-object v11, p0, Lcom/googlecode/mp4parser/authoring/tracks/EC3TrackImpl;->inputStream:Ljava/io/BufferedInputStream;

    iget v12, v1, Lcom/googlecode/mp4parser/authoring/tracks/EC3TrackImpl$BitStreamInfo;->frameSize:I

    int-to-long v12, v12

    invoke-virtual {v11, v12, v13}, Ljava/io/BufferedInputStream;->skip(J)J

    move-result-wide v9

    .line 67
    .local v9, skipped:J
    sget-boolean v11, Lcom/googlecode/mp4parser/authoring/tracks/EC3TrackImpl;->$assertionsDisabled:Z

    if-nez v11, :cond_0

    iget v11, v1, Lcom/googlecode/mp4parser/authoring/tracks/EC3TrackImpl$BitStreamInfo;->frameSize:I

    int-to-long v11, v11

    cmp-long v11, v9, v11

    if-eqz v11, :cond_0

    new-instance v11, Ljava/lang/AssertionError;

    invoke-direct {v11}, Ljava/lang/AssertionError;-><init>()V

    throw v11

    .line 71
    .end local v1           #bsi:Lcom/googlecode/mp4parser/authoring/tracks/EC3TrackImpl$BitStreamInfo;
    .end local v8           #i$:Ljava/util/Iterator;
    .end local v9           #skipped:J
    :cond_4
    iget-object v11, p0, Lcom/googlecode/mp4parser/authoring/tracks/EC3TrackImpl;->inputStream:Ljava/io/BufferedInputStream;

    invoke-virtual {v11}, Ljava/io/BufferedInputStream;->reset()V

    .line 73
    iget-object v11, p0, Lcom/googlecode/mp4parser/authoring/tracks/EC3TrackImpl;->entries:Ljava/util/List;

    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v11

    if-nez v11, :cond_5

    .line 74
    new-instance v11, Ljava/io/IOException;

    invoke-direct {v11}, Ljava/io/IOException;-><init>()V

    throw v11

    .line 76
    :cond_5
    iget-object v11, p0, Lcom/googlecode/mp4parser/authoring/tracks/EC3TrackImpl;->entries:Ljava/util/List;

    const/4 v12, 0x0

    invoke-interface {v11, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/googlecode/mp4parser/authoring/tracks/EC3TrackImpl$BitStreamInfo;

    iget v11, v11, Lcom/googlecode/mp4parser/authoring/tracks/EC3TrackImpl$BitStreamInfo;->samplerate:I

    iput v11, p0, Lcom/googlecode/mp4parser/authoring/tracks/EC3TrackImpl;->samplerate:I

    .line 78
    new-instance v11, Lcom/coremedia/iso/boxes/SampleDescriptionBox;

    invoke-direct {v11}, Lcom/coremedia/iso/boxes/SampleDescriptionBox;-><init>()V

    iput-object v11, p0, Lcom/googlecode/mp4parser/authoring/tracks/EC3TrackImpl;->sampleDescriptionBox:Lcom/coremedia/iso/boxes/SampleDescriptionBox;

    .line 79
    new-instance v0, Lcom/coremedia/iso/boxes/sampleentry/AudioSampleEntry;

    const-string v11, "ec-3"

    invoke-direct {v0, v11}, Lcom/coremedia/iso/boxes/sampleentry/AudioSampleEntry;-><init>(Ljava/lang/String;)V

    .line 80
    .local v0, audioSampleEntry:Lcom/coremedia/iso/boxes/sampleentry/AudioSampleEntry;
    const/4 v11, 0x2

    invoke-virtual {v0, v11}, Lcom/coremedia/iso/boxes/sampleentry/AudioSampleEntry;->setChannelCount(I)V

    .line 81
    iget v11, p0, Lcom/googlecode/mp4parser/authoring/tracks/EC3TrackImpl;->samplerate:I

    int-to-long v11, v11

    invoke-virtual {v0, v11, v12}, Lcom/coremedia/iso/boxes/sampleentry/AudioSampleEntry;->setSampleRate(J)V

    .line 82
    const/4 v11, 0x1

    invoke-virtual {v0, v11}, Lcom/coremedia/iso/boxes/sampleentry/AudioSampleEntry;->setDataReferenceIndex(I)V

    .line 83
    const/16 v11, 0x10

    invoke-virtual {v0, v11}, Lcom/coremedia/iso/boxes/sampleentry/AudioSampleEntry;->setSampleSize(I)V

    .line 85
    new-instance v6, Lcom/googlecode/mp4parser/boxes/EC3SpecificBox;

    invoke-direct {v6}, Lcom/googlecode/mp4parser/boxes/EC3SpecificBox;-><init>()V

    .line 86
    .local v6, ec3:Lcom/googlecode/mp4parser/boxes/EC3SpecificBox;
    iget-object v11, p0, Lcom/googlecode/mp4parser/authoring/tracks/EC3TrackImpl;->entries:Ljava/util/List;

    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v11

    new-array v3, v11, [I

    .line 87
    .local v3, deps:[I
    iget-object v11, p0, Lcom/googlecode/mp4parser/authoring/tracks/EC3TrackImpl;->entries:Ljava/util/List;

    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v11

    new-array v2, v11, [I

    .line 88
    .local v2, chan_locs:[I
    iget-object v11, p0, Lcom/googlecode/mp4parser/authoring/tracks/EC3TrackImpl;->entries:Ljava/util/List;

    invoke-interface {v11}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    .restart local v8       #i$:Ljava/util/Iterator;
    :cond_6
    :goto_1
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_7

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/googlecode/mp4parser/authoring/tracks/EC3TrackImpl$BitStreamInfo;

    .line 89
    .restart local v1       #bsi:Lcom/googlecode/mp4parser/authoring/tracks/EC3TrackImpl$BitStreamInfo;
    iget v11, v1, Lcom/googlecode/mp4parser/authoring/tracks/EC3TrackImpl$BitStreamInfo;->strmtyp:I

    const/4 v12, 0x1

    if-ne v11, v12, :cond_6

    .line 90
    iget v11, v1, Lcom/googlecode/mp4parser/authoring/tracks/EC3TrackImpl$BitStreamInfo;->substreamid:I

    aget v12, v3, v11

    add-int/lit8 v12, v12, 0x1

    aput v12, v3, v11

    .line 91
    iget v11, v1, Lcom/googlecode/mp4parser/authoring/tracks/EC3TrackImpl$BitStreamInfo;->substreamid:I

    iget v12, v1, Lcom/googlecode/mp4parser/authoring/tracks/EC3TrackImpl$BitStreamInfo;->chanmap:I

    shr-int/lit8 v12, v12, 0x6

    and-int/lit16 v12, v12, 0x100

    iget v13, v1, Lcom/googlecode/mp4parser/authoring/tracks/EC3TrackImpl$BitStreamInfo;->chanmap:I

    shr-int/lit8 v13, v13, 0x5

    and-int/lit16 v13, v13, 0xff

    or-int/2addr v12, v13

    aput v12, v2, v11

    goto :goto_1

    .line 94
    .end local v1           #bsi:Lcom/googlecode/mp4parser/authoring/tracks/EC3TrackImpl$BitStreamInfo;
    :cond_7
    iget-object v11, p0, Lcom/googlecode/mp4parser/authoring/tracks/EC3TrackImpl;->entries:Ljava/util/List;

    invoke-interface {v11}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_2
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_9

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/googlecode/mp4parser/authoring/tracks/EC3TrackImpl$BitStreamInfo;

    .line 95
    .restart local v1       #bsi:Lcom/googlecode/mp4parser/authoring/tracks/EC3TrackImpl$BitStreamInfo;
    iget v11, v1, Lcom/googlecode/mp4parser/authoring/tracks/EC3TrackImpl$BitStreamInfo;->strmtyp:I

    const/4 v12, 0x1

    if-eq v11, v12, :cond_8

    .line 96
    new-instance v5, Lcom/googlecode/mp4parser/boxes/EC3SpecificBox$Entry;

    invoke-direct {v5}, Lcom/googlecode/mp4parser/boxes/EC3SpecificBox$Entry;-><init>()V

    .line 97
    .local v5, e:Lcom/googlecode/mp4parser/boxes/EC3SpecificBox$Entry;
    iget v11, v1, Lcom/googlecode/mp4parser/boxes/EC3SpecificBox$Entry;->fscod:I

    iput v11, v5, Lcom/googlecode/mp4parser/boxes/EC3SpecificBox$Entry;->fscod:I

    .line 98
    iget v11, v1, Lcom/googlecode/mp4parser/boxes/EC3SpecificBox$Entry;->bsid:I

    iput v11, v5, Lcom/googlecode/mp4parser/boxes/EC3SpecificBox$Entry;->bsid:I

    .line 99
    iget v11, v1, Lcom/googlecode/mp4parser/boxes/EC3SpecificBox$Entry;->bsmod:I

    iput v11, v5, Lcom/googlecode/mp4parser/boxes/EC3SpecificBox$Entry;->bsmod:I

    .line 100
    iget v11, v1, Lcom/googlecode/mp4parser/boxes/EC3SpecificBox$Entry;->acmod:I

    iput v11, v5, Lcom/googlecode/mp4parser/boxes/EC3SpecificBox$Entry;->acmod:I

    .line 101
    iget v11, v1, Lcom/googlecode/mp4parser/boxes/EC3SpecificBox$Entry;->lfeon:I

    iput v11, v5, Lcom/googlecode/mp4parser/boxes/EC3SpecificBox$Entry;->lfeon:I

    .line 102
    const/4 v11, 0x0

    iput v11, v5, Lcom/googlecode/mp4parser/boxes/EC3SpecificBox$Entry;->reserved:I

    .line 103
    iget v11, v1, Lcom/googlecode/mp4parser/authoring/tracks/EC3TrackImpl$BitStreamInfo;->substreamid:I

    aget v11, v3, v11

    iput v11, v5, Lcom/googlecode/mp4parser/boxes/EC3SpecificBox$Entry;->num_dep_sub:I

    .line 104
    iget v11, v1, Lcom/googlecode/mp4parser/authoring/tracks/EC3TrackImpl$BitStreamInfo;->substreamid:I

    aget v11, v2, v11

    iput v11, v5, Lcom/googlecode/mp4parser/boxes/EC3SpecificBox$Entry;->chan_loc:I

    .line 105
    const/4 v11, 0x0

    iput v11, v5, Lcom/googlecode/mp4parser/boxes/EC3SpecificBox$Entry;->reserved2:I

    .line 106
    invoke-virtual {v6, v5}, Lcom/googlecode/mp4parser/boxes/EC3SpecificBox;->addEntry(Lcom/googlecode/mp4parser/boxes/EC3SpecificBox$Entry;)V

    .line 108
    .end local v5           #e:Lcom/googlecode/mp4parser/boxes/EC3SpecificBox$Entry;
    :cond_8
    iget v11, p0, Lcom/googlecode/mp4parser/authoring/tracks/EC3TrackImpl;->bitrate:I

    iget v12, v1, Lcom/googlecode/mp4parser/authoring/tracks/EC3TrackImpl$BitStreamInfo;->bitrate:I

    add-int/2addr v11, v12

    iput v11, p0, Lcom/googlecode/mp4parser/authoring/tracks/EC3TrackImpl;->bitrate:I

    .line 109
    iget v11, p0, Lcom/googlecode/mp4parser/authoring/tracks/EC3TrackImpl;->frameSize:I

    iget v12, v1, Lcom/googlecode/mp4parser/authoring/tracks/EC3TrackImpl$BitStreamInfo;->frameSize:I

    add-int/2addr v11, v12

    iput v11, p0, Lcom/googlecode/mp4parser/authoring/tracks/EC3TrackImpl;->frameSize:I

    goto :goto_2

    .line 112
    .end local v1           #bsi:Lcom/googlecode/mp4parser/authoring/tracks/EC3TrackImpl$BitStreamInfo;
    :cond_9
    iget v11, p0, Lcom/googlecode/mp4parser/authoring/tracks/EC3TrackImpl;->bitrate:I

    div-int/lit16 v11, v11, 0x3e8

    invoke-virtual {v6, v11}, Lcom/googlecode/mp4parser/boxes/EC3SpecificBox;->setDataRate(I)V

    .line 113
    invoke-virtual {v0, v6}, Lcom/coremedia/iso/boxes/sampleentry/AudioSampleEntry;->addBox(Lcom/coremedia/iso/boxes/Box;)V

    .line 114
    iget-object v11, p0, Lcom/googlecode/mp4parser/authoring/tracks/EC3TrackImpl;->sampleDescriptionBox:Lcom/coremedia/iso/boxes/SampleDescriptionBox;

    invoke-virtual {v11, v0}, Lcom/coremedia/iso/boxes/SampleDescriptionBox;->addBox(Lcom/coremedia/iso/boxes/Box;)V

    .line 116
    iget-object v11, p0, Lcom/googlecode/mp4parser/authoring/tracks/EC3TrackImpl;->trackMetaData:Lcom/googlecode/mp4parser/authoring/TrackMetaData;

    new-instance v12, Ljava/util/Date;

    invoke-direct {v12}, Ljava/util/Date;-><init>()V

    invoke-virtual {v11, v12}, Lcom/googlecode/mp4parser/authoring/TrackMetaData;->setCreationTime(Ljava/util/Date;)V

    .line 117
    iget-object v11, p0, Lcom/googlecode/mp4parser/authoring/tracks/EC3TrackImpl;->trackMetaData:Lcom/googlecode/mp4parser/authoring/TrackMetaData;

    new-instance v12, Ljava/util/Date;

    invoke-direct {v12}, Ljava/util/Date;-><init>()V

    invoke-virtual {v11, v12}, Lcom/googlecode/mp4parser/authoring/TrackMetaData;->setModificationTime(Ljava/util/Date;)V

    .line 118
    iget-object v11, p0, Lcom/googlecode/mp4parser/authoring/tracks/EC3TrackImpl;->trackMetaData:Lcom/googlecode/mp4parser/authoring/TrackMetaData;

    iget-object v12, p0, Lcom/googlecode/mp4parser/authoring/tracks/EC3TrackImpl;->lang:Ljava/lang/String;

    invoke-virtual {v11, v12}, Lcom/googlecode/mp4parser/authoring/TrackMetaData;->setLanguage(Ljava/lang/String;)V

    .line 119
    iget-object v11, p0, Lcom/googlecode/mp4parser/authoring/tracks/EC3TrackImpl;->trackMetaData:Lcom/googlecode/mp4parser/authoring/TrackMetaData;

    iget v12, p0, Lcom/googlecode/mp4parser/authoring/tracks/EC3TrackImpl;->samplerate:I

    int-to-long v12, v12

    invoke-virtual {v11, v12, v13}, Lcom/googlecode/mp4parser/authoring/TrackMetaData;->setTimescale(J)V

    .line 121
    new-instance v11, Ljava/util/LinkedList;

    invoke-direct {v11}, Ljava/util/LinkedList;-><init>()V

    iput-object v11, p0, Lcom/googlecode/mp4parser/authoring/tracks/EC3TrackImpl;->samples:Ljava/util/List;

    .line 122
    invoke-direct {p0}, Lcom/googlecode/mp4parser/authoring/tracks/EC3TrackImpl;->readSamples()Z

    move-result v11

    if-nez v11, :cond_a

    .line 123
    new-instance v11, Ljava/io/IOException;

    invoke-direct {v11}, Ljava/io/IOException;-><init>()V

    throw v11

    .line 125
    :cond_a
    return-void
.end method

.method private readSamples()Z
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 393
    iget v1, p0, Lcom/googlecode/mp4parser/authoring/tracks/EC3TrackImpl;->frameSize:I

    .line 394
    .local v1, read:I
    const/4 v2, 0x0

    .line 395
    .local v2, ret:Z
    :cond_0
    :goto_0
    iget v3, p0, Lcom/googlecode/mp4parser/authoring/tracks/EC3TrackImpl;->frameSize:I

    if-ne v3, v1, :cond_1

    .line 396
    const/4 v2, 0x1

    .line 397
    iget v3, p0, Lcom/googlecode/mp4parser/authoring/tracks/EC3TrackImpl;->frameSize:I

    new-array v0, v3, [B

    .line 398
    .local v0, data:[B
    iget-object v3, p0, Lcom/googlecode/mp4parser/authoring/tracks/EC3TrackImpl;->inputStream:Ljava/io/BufferedInputStream;

    invoke-virtual {v3, v0}, Ljava/io/BufferedInputStream;->read([B)I

    move-result v1

    .line 399
    iget v3, p0, Lcom/googlecode/mp4parser/authoring/tracks/EC3TrackImpl;->frameSize:I

    if-ne v1, v3, :cond_0

    .line 400
    iget-object v3, p0, Lcom/googlecode/mp4parser/authoring/tracks/EC3TrackImpl;->samples:Ljava/util/List;

    invoke-static {v0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 401
    iget-object v3, p0, Lcom/googlecode/mp4parser/authoring/tracks/EC3TrackImpl;->stts:Ljava/util/List;

    new-instance v4, Lcom/coremedia/iso/boxes/TimeToSampleBox$Entry;

    const-wide/16 v5, 0x1

    const-wide/16 v7, 0x600

    invoke-direct {v4, v5, v6, v7, v8}, Lcom/coremedia/iso/boxes/TimeToSampleBox$Entry;-><init>(JJ)V

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 404
    .end local v0           #data:[B
    :cond_1
    return v2
.end method

.method private readVariables()Lcom/googlecode/mp4parser/authoring/tracks/EC3TrackImpl$BitStreamInfo;
    .locals 17
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 170
    const/16 v13, 0xc8

    new-array v3, v13, [B

    .line 171
    .local v3, data:[B
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/googlecode/mp4parser/authoring/tracks/EC3TrackImpl;->inputStream:Ljava/io/BufferedInputStream;

    const/16 v14, 0xc8

    invoke-virtual {v13, v14}, Ljava/io/BufferedInputStream;->mark(I)V

    .line 172
    const/16 v13, 0xc8

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/googlecode/mp4parser/authoring/tracks/EC3TrackImpl;->inputStream:Ljava/io/BufferedInputStream;

    const/4 v15, 0x0

    const/16 v16, 0xc8

    move/from16 v0, v16

    invoke-virtual {v14, v3, v15, v0}, Ljava/io/BufferedInputStream;->read([BII)I

    move-result v14

    if-eq v13, v14, :cond_0

    .line 173
    const/4 v4, 0x0

    .line 389
    :goto_0
    return-object v4

    .line 175
    :cond_0
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/googlecode/mp4parser/authoring/tracks/EC3TrackImpl;->inputStream:Ljava/io/BufferedInputStream;

    invoke-virtual {v13}, Ljava/io/BufferedInputStream;->reset()V

    .line 176
    invoke-static {v3}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 177
    .local v1, bb:Ljava/nio/ByteBuffer;
    new-instance v2, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/BitReaderBuffer;

    invoke-direct {v2, v1}, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/BitReaderBuffer;-><init>(Ljava/nio/ByteBuffer;)V

    .line 178
    .local v2, brb:Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/BitReaderBuffer;
    const/16 v13, 0x10

    invoke-virtual {v2, v13}, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/BitReaderBuffer;->readBits(I)I

    move-result v12

    .line 179
    .local v12, syncword:I
    const/16 v13, 0xb77

    if-eq v12, v13, :cond_1

    .line 180
    const/4 v4, 0x0

    goto :goto_0

    .line 183
    :cond_1
    new-instance v4, Lcom/googlecode/mp4parser/authoring/tracks/EC3TrackImpl$BitStreamInfo;

    invoke-direct {v4}, Lcom/googlecode/mp4parser/authoring/tracks/EC3TrackImpl$BitStreamInfo;-><init>()V

    .line 185
    .local v4, entry:Lcom/googlecode/mp4parser/authoring/tracks/EC3TrackImpl$BitStreamInfo;
    const/4 v13, 0x2

    invoke-virtual {v2, v13}, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/BitReaderBuffer;->readBits(I)I

    move-result v13

    iput v13, v4, Lcom/googlecode/mp4parser/authoring/tracks/EC3TrackImpl$BitStreamInfo;->strmtyp:I

    .line 186
    const/4 v13, 0x3

    invoke-virtual {v2, v13}, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/BitReaderBuffer;->readBits(I)I

    move-result v13

    iput v13, v4, Lcom/googlecode/mp4parser/authoring/tracks/EC3TrackImpl$BitStreamInfo;->substreamid:I

    .line 187
    const/16 v13, 0xb

    invoke-virtual {v2, v13}, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/BitReaderBuffer;->readBits(I)I

    move-result v5

    .line 188
    .local v5, frmsiz:I
    add-int/lit8 v13, v5, 0x1

    mul-int/lit8 v13, v13, 0x2

    iput v13, v4, Lcom/googlecode/mp4parser/authoring/tracks/EC3TrackImpl$BitStreamInfo;->frameSize:I

    .line 190
    const/4 v13, 0x2

    invoke-virtual {v2, v13}, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/BitReaderBuffer;->readBits(I)I

    move-result v13

    iput v13, v4, Lcom/googlecode/mp4parser/boxes/EC3SpecificBox$Entry;->fscod:I

    .line 191
    const/4 v6, -0x1

    .line 193
    .local v6, fscod2:I
    iget v13, v4, Lcom/googlecode/mp4parser/boxes/EC3SpecificBox$Entry;->fscod:I

    const/4 v14, 0x3

    if-ne v13, v14, :cond_11

    .line 194
    const/4 v13, 0x2

    invoke-virtual {v2, v13}, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/BitReaderBuffer;->readBits(I)I

    move-result v6

    .line 195
    const/4 v11, 0x3

    .line 199
    .local v11, numblkscod:I
    :goto_1
    const/4 v10, 0x0

    .line 200
    .local v10, numberOfBlocksPerSyncFrame:I
    packed-switch v11, :pswitch_data_0

    .line 218
    :goto_2
    iget v13, v4, Lcom/googlecode/mp4parser/authoring/tracks/EC3TrackImpl$BitStreamInfo;->frameSize:I

    const/4 v14, 0x6

    div-int/2addr v14, v10

    mul-int/2addr v13, v14

    iput v13, v4, Lcom/googlecode/mp4parser/authoring/tracks/EC3TrackImpl$BitStreamInfo;->frameSize:I

    .line 220
    const/4 v13, 0x3

    invoke-virtual {v2, v13}, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/BitReaderBuffer;->readBits(I)I

    move-result v13

    iput v13, v4, Lcom/googlecode/mp4parser/boxes/EC3SpecificBox$Entry;->acmod:I

    .line 221
    const/4 v13, 0x1

    invoke-virtual {v2, v13}, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/BitReaderBuffer;->readBits(I)I

    move-result v13

    iput v13, v4, Lcom/googlecode/mp4parser/boxes/EC3SpecificBox$Entry;->lfeon:I

    .line 222
    const/4 v13, 0x5

    invoke-virtual {v2, v13}, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/BitReaderBuffer;->readBits(I)I

    move-result v13

    iput v13, v4, Lcom/googlecode/mp4parser/boxes/EC3SpecificBox$Entry;->bsid:I

    .line 223
    const/4 v13, 0x5

    invoke-virtual {v2, v13}, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/BitReaderBuffer;->readBits(I)I

    .line 224
    const/4 v13, 0x1

    const/4 v14, 0x1

    invoke-virtual {v2, v14}, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/BitReaderBuffer;->readBits(I)I

    move-result v14

    if-ne v13, v14, :cond_2

    .line 225
    const/16 v13, 0x8

    invoke-virtual {v2, v13}, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/BitReaderBuffer;->readBits(I)I

    .line 227
    :cond_2
    iget v13, v4, Lcom/googlecode/mp4parser/boxes/EC3SpecificBox$Entry;->acmod:I

    if-nez v13, :cond_3

    .line 228
    const/4 v13, 0x5

    invoke-virtual {v2, v13}, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/BitReaderBuffer;->readBits(I)I

    .line 229
    const/4 v13, 0x1

    const/4 v14, 0x1

    invoke-virtual {v2, v14}, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/BitReaderBuffer;->readBits(I)I

    move-result v14

    if-ne v13, v14, :cond_3

    .line 230
    const/16 v13, 0x8

    invoke-virtual {v2, v13}, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/BitReaderBuffer;->readBits(I)I

    .line 233
    :cond_3
    const/4 v13, 0x1

    iget v14, v4, Lcom/googlecode/mp4parser/authoring/tracks/EC3TrackImpl$BitStreamInfo;->strmtyp:I

    if-ne v13, v14, :cond_4

    .line 234
    const/4 v13, 0x1

    const/4 v14, 0x1

    invoke-virtual {v2, v14}, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/BitReaderBuffer;->readBits(I)I

    move-result v14

    if-ne v13, v14, :cond_4

    .line 235
    const/16 v13, 0x10

    invoke-virtual {v2, v13}, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/BitReaderBuffer;->readBits(I)I

    move-result v13

    iput v13, v4, Lcom/googlecode/mp4parser/authoring/tracks/EC3TrackImpl$BitStreamInfo;->chanmap:I

    .line 238
    :cond_4
    const/4 v13, 0x1

    const/4 v14, 0x1

    invoke-virtual {v2, v14}, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/BitReaderBuffer;->readBits(I)I

    move-result v14

    if-ne v13, v14, :cond_f

    .line 239
    iget v13, v4, Lcom/googlecode/mp4parser/boxes/EC3SpecificBox$Entry;->acmod:I

    const/4 v14, 0x2

    if-le v13, v14, :cond_5

    .line 240
    const/4 v13, 0x2

    invoke-virtual {v2, v13}, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/BitReaderBuffer;->readBits(I)I

    .line 242
    :cond_5
    const/4 v13, 0x1

    iget v14, v4, Lcom/googlecode/mp4parser/boxes/EC3SpecificBox$Entry;->acmod:I

    and-int/lit8 v14, v14, 0x1

    if-ne v13, v14, :cond_6

    iget v13, v4, Lcom/googlecode/mp4parser/boxes/EC3SpecificBox$Entry;->acmod:I

    const/4 v14, 0x2

    if-le v13, v14, :cond_6

    .line 243
    const/4 v13, 0x3

    invoke-virtual {v2, v13}, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/BitReaderBuffer;->readBits(I)I

    .line 244
    const/4 v13, 0x3

    invoke-virtual {v2, v13}, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/BitReaderBuffer;->readBits(I)I

    .line 246
    :cond_6
    iget v13, v4, Lcom/googlecode/mp4parser/boxes/EC3SpecificBox$Entry;->acmod:I

    and-int/lit8 v13, v13, 0x4

    if-lez v13, :cond_7

    .line 247
    const/4 v13, 0x3

    invoke-virtual {v2, v13}, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/BitReaderBuffer;->readBits(I)I

    .line 248
    const/4 v13, 0x3

    invoke-virtual {v2, v13}, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/BitReaderBuffer;->readBits(I)I

    .line 250
    :cond_7
    const/4 v13, 0x1

    iget v14, v4, Lcom/googlecode/mp4parser/boxes/EC3SpecificBox$Entry;->lfeon:I

    if-ne v13, v14, :cond_8

    .line 251
    const/4 v13, 0x1

    const/4 v14, 0x1

    invoke-virtual {v2, v14}, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/BitReaderBuffer;->readBits(I)I

    move-result v14

    if-ne v13, v14, :cond_8

    .line 252
    const/4 v13, 0x5

    invoke-virtual {v2, v13}, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/BitReaderBuffer;->readBits(I)I

    .line 255
    :cond_8
    iget v13, v4, Lcom/googlecode/mp4parser/authoring/tracks/EC3TrackImpl$BitStreamInfo;->strmtyp:I

    if-nez v13, :cond_f

    .line 256
    const/4 v13, 0x1

    const/4 v14, 0x1

    invoke-virtual {v2, v14}, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/BitReaderBuffer;->readBits(I)I

    move-result v14

    if-ne v13, v14, :cond_9

    .line 257
    const/4 v13, 0x6

    invoke-virtual {v2, v13}, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/BitReaderBuffer;->readBits(I)I

    .line 259
    :cond_9
    iget v13, v4, Lcom/googlecode/mp4parser/boxes/EC3SpecificBox$Entry;->acmod:I

    if-nez v13, :cond_a

    .line 260
    const/4 v13, 0x1

    const/4 v14, 0x1

    invoke-virtual {v2, v14}, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/BitReaderBuffer;->readBits(I)I

    move-result v14

    if-ne v13, v14, :cond_a

    .line 261
    const/4 v13, 0x6

    invoke-virtual {v2, v13}, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/BitReaderBuffer;->readBits(I)I

    .line 264
    :cond_a
    const/4 v13, 0x1

    const/4 v14, 0x1

    invoke-virtual {v2, v14}, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/BitReaderBuffer;->readBits(I)I

    move-result v14

    if-ne v13, v14, :cond_b

    .line 265
    const/4 v13, 0x6

    invoke-virtual {v2, v13}, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/BitReaderBuffer;->readBits(I)I

    .line 267
    :cond_b
    const/4 v13, 0x2

    invoke-virtual {v2, v13}, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/BitReaderBuffer;->readBits(I)I

    move-result v8

    .line 268
    .local v8, mixdef:I
    const/4 v13, 0x1

    if-ne v13, v8, :cond_12

    .line 269
    const/4 v13, 0x5

    invoke-virtual {v2, v13}, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/BitReaderBuffer;->readBits(I)I

    .line 320
    :cond_c
    :goto_3
    iget v13, v4, Lcom/googlecode/mp4parser/boxes/EC3SpecificBox$Entry;->acmod:I

    const/4 v14, 0x2

    if-ge v13, v14, :cond_f

    .line 321
    const/4 v13, 0x1

    const/4 v14, 0x1

    invoke-virtual {v2, v14}, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/BitReaderBuffer;->readBits(I)I

    move-result v14

    if-ne v13, v14, :cond_d

    .line 322
    const/16 v13, 0xe

    invoke-virtual {v2, v13}, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/BitReaderBuffer;->readBits(I)I

    .line 324
    :cond_d
    iget v13, v4, Lcom/googlecode/mp4parser/boxes/EC3SpecificBox$Entry;->acmod:I

    if-nez v13, :cond_e

    .line 325
    const/4 v13, 0x1

    const/4 v14, 0x1

    invoke-virtual {v2, v14}, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/BitReaderBuffer;->readBits(I)I

    move-result v14

    if-ne v13, v14, :cond_e

    .line 326
    const/16 v13, 0xe

    invoke-virtual {v2, v13}, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/BitReaderBuffer;->readBits(I)I

    .line 329
    :cond_e
    const/4 v13, 0x1

    const/4 v14, 0x1

    invoke-virtual {v2, v14}, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/BitReaderBuffer;->readBits(I)I

    move-result v14

    if-ne v13, v14, :cond_f

    .line 330
    if-nez v11, :cond_1f

    .line 331
    const/4 v13, 0x5

    invoke-virtual {v2, v13}, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/BitReaderBuffer;->readBits(I)I

    .line 344
    .end local v8           #mixdef:I
    :cond_f
    const/4 v13, 0x1

    const/4 v14, 0x1

    invoke-virtual {v2, v14}, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/BitReaderBuffer;->readBits(I)I

    move-result v14

    if-ne v13, v14, :cond_10

    .line 345
    const/4 v13, 0x3

    invoke-virtual {v2, v13}, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/BitReaderBuffer;->readBits(I)I

    move-result v13

    iput v13, v4, Lcom/googlecode/mp4parser/boxes/EC3SpecificBox$Entry;->bsmod:I

    .line 348
    :cond_10
    iget v13, v4, Lcom/googlecode/mp4parser/boxes/EC3SpecificBox$Entry;->fscod:I

    packed-switch v13, :pswitch_data_1

    .line 383
    :goto_4
    iget v13, v4, Lcom/googlecode/mp4parser/authoring/tracks/EC3TrackImpl$BitStreamInfo;->samplerate:I

    if-nez v13, :cond_21

    .line 384
    const/4 v4, 0x0

    goto/16 :goto_0

    .line 197
    .end local v10           #numberOfBlocksPerSyncFrame:I
    .end local v11           #numblkscod:I
    :cond_11
    const/4 v13, 0x2

    invoke-virtual {v2, v13}, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/BitReaderBuffer;->readBits(I)I

    move-result v11

    .restart local v11       #numblkscod:I
    goto/16 :goto_1

    .line 202
    .restart local v10       #numberOfBlocksPerSyncFrame:I
    :pswitch_0
    const/4 v10, 0x1

    .line 203
    goto/16 :goto_2

    .line 206
    :pswitch_1
    const/4 v10, 0x2

    .line 207
    goto/16 :goto_2

    .line 210
    :pswitch_2
    const/4 v10, 0x3

    .line 211
    goto/16 :goto_2

    .line 214
    :pswitch_3
    const/4 v10, 0x6

    goto/16 :goto_2

    .line 270
    .restart local v8       #mixdef:I
    :cond_12
    const/4 v13, 0x2

    if-ne v13, v8, :cond_13

    .line 271
    const/16 v13, 0xc

    invoke-virtual {v2, v13}, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/BitReaderBuffer;->readBits(I)I

    goto :goto_3

    .line 272
    :cond_13
    const/4 v13, 0x3

    if-ne v13, v8, :cond_c

    .line 273
    const/4 v13, 0x5

    invoke-virtual {v2, v13}, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/BitReaderBuffer;->readBits(I)I

    move-result v9

    .line 274
    .local v9, mixdeflen:I
    const/4 v13, 0x1

    const/4 v14, 0x1

    invoke-virtual {v2, v14}, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/BitReaderBuffer;->readBits(I)I

    move-result v14

    if-ne v13, v14, :cond_1c

    .line 275
    const/4 v13, 0x5

    invoke-virtual {v2, v13}, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/BitReaderBuffer;->readBits(I)I

    .line 276
    const/4 v13, 0x1

    const/4 v14, 0x1

    invoke-virtual {v2, v14}, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/BitReaderBuffer;->readBits(I)I

    move-result v14

    if-ne v13, v14, :cond_14

    .line 277
    const/4 v13, 0x4

    invoke-virtual {v2, v13}, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/BitReaderBuffer;->readBits(I)I

    .line 279
    :cond_14
    const/4 v13, 0x1

    const/4 v14, 0x1

    invoke-virtual {v2, v14}, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/BitReaderBuffer;->readBits(I)I

    move-result v14

    if-ne v13, v14, :cond_15

    .line 280
    const/4 v13, 0x4

    invoke-virtual {v2, v13}, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/BitReaderBuffer;->readBits(I)I

    .line 282
    :cond_15
    const/4 v13, 0x1

    const/4 v14, 0x1

    invoke-virtual {v2, v14}, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/BitReaderBuffer;->readBits(I)I

    move-result v14

    if-ne v13, v14, :cond_16

    .line 283
    const/4 v13, 0x4

    invoke-virtual {v2, v13}, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/BitReaderBuffer;->readBits(I)I

    .line 285
    :cond_16
    const/4 v13, 0x1

    const/4 v14, 0x1

    invoke-virtual {v2, v14}, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/BitReaderBuffer;->readBits(I)I

    move-result v14

    if-ne v13, v14, :cond_17

    .line 286
    const/4 v13, 0x4

    invoke-virtual {v2, v13}, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/BitReaderBuffer;->readBits(I)I

    .line 288
    :cond_17
    const/4 v13, 0x1

    const/4 v14, 0x1

    invoke-virtual {v2, v14}, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/BitReaderBuffer;->readBits(I)I

    move-result v14

    if-ne v13, v14, :cond_18

    .line 289
    const/4 v13, 0x4

    invoke-virtual {v2, v13}, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/BitReaderBuffer;->readBits(I)I

    .line 291
    :cond_18
    const/4 v13, 0x1

    const/4 v14, 0x1

    invoke-virtual {v2, v14}, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/BitReaderBuffer;->readBits(I)I

    move-result v14

    if-ne v13, v14, :cond_19

    .line 292
    const/4 v13, 0x4

    invoke-virtual {v2, v13}, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/BitReaderBuffer;->readBits(I)I

    .line 294
    :cond_19
    const/4 v13, 0x1

    const/4 v14, 0x1

    invoke-virtual {v2, v14}, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/BitReaderBuffer;->readBits(I)I

    move-result v14

    if-ne v13, v14, :cond_1a

    .line 295
    const/4 v13, 0x4

    invoke-virtual {v2, v13}, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/BitReaderBuffer;->readBits(I)I

    .line 297
    :cond_1a
    const/4 v13, 0x1

    const/4 v14, 0x1

    invoke-virtual {v2, v14}, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/BitReaderBuffer;->readBits(I)I

    move-result v14

    if-ne v13, v14, :cond_1c

    .line 298
    const/4 v13, 0x1

    const/4 v14, 0x1

    invoke-virtual {v2, v14}, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/BitReaderBuffer;->readBits(I)I

    move-result v14

    if-ne v13, v14, :cond_1b

    .line 299
    const/4 v13, 0x4

    invoke-virtual {v2, v13}, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/BitReaderBuffer;->readBits(I)I

    .line 301
    :cond_1b
    const/4 v13, 0x1

    const/4 v14, 0x1

    invoke-virtual {v2, v14}, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/BitReaderBuffer;->readBits(I)I

    move-result v14

    if-ne v13, v14, :cond_1c

    .line 302
    const/4 v13, 0x4

    invoke-virtual {v2, v13}, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/BitReaderBuffer;->readBits(I)I

    .line 306
    :cond_1c
    const/4 v13, 0x1

    const/4 v14, 0x1

    invoke-virtual {v2, v14}, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/BitReaderBuffer;->readBits(I)I

    move-result v14

    if-ne v13, v14, :cond_1d

    .line 307
    const/4 v13, 0x5

    invoke-virtual {v2, v13}, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/BitReaderBuffer;->readBits(I)I

    .line 308
    const/4 v13, 0x1

    const/4 v14, 0x1

    invoke-virtual {v2, v14}, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/BitReaderBuffer;->readBits(I)I

    move-result v14

    if-ne v13, v14, :cond_1d

    .line 309
    const/4 v13, 0x7

    invoke-virtual {v2, v13}, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/BitReaderBuffer;->readBits(I)I

    .line 310
    const/4 v13, 0x1

    const/4 v14, 0x1

    invoke-virtual {v2, v14}, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/BitReaderBuffer;->readBits(I)I

    move-result v14

    if-ne v13, v14, :cond_1d

    .line 311
    const/16 v13, 0x8

    invoke-virtual {v2, v13}, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/BitReaderBuffer;->readBits(I)I

    .line 315
    :cond_1d
    const/4 v7, 0x0

    .local v7, i:I
    :goto_5
    add-int/lit8 v13, v9, 0x2

    if-ge v7, v13, :cond_1e

    .line 316
    const/16 v13, 0x8

    invoke-virtual {v2, v13}, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/BitReaderBuffer;->readBits(I)I

    .line 315
    add-int/lit8 v7, v7, 0x1

    goto :goto_5

    .line 318
    :cond_1e
    invoke-virtual {v2}, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/BitReaderBuffer;->byteSync()I

    goto/16 :goto_3

    .line 333
    .end local v7           #i:I
    .end local v9           #mixdeflen:I
    :cond_1f
    const/4 v7, 0x0

    .restart local v7       #i:I
    :goto_6
    if-ge v7, v10, :cond_f

    .line 334
    const/4 v13, 0x1

    const/4 v14, 0x1

    invoke-virtual {v2, v14}, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/BitReaderBuffer;->readBits(I)I

    move-result v14

    if-ne v13, v14, :cond_20

    .line 335
    const/4 v13, 0x5

    invoke-virtual {v2, v13}, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/BitReaderBuffer;->readBits(I)I

    .line 333
    :cond_20
    add-int/lit8 v7, v7, 0x1

    goto :goto_6

    .line 350
    .end local v7           #i:I
    .end local v8           #mixdef:I
    :pswitch_4
    const v13, 0xbb80

    iput v13, v4, Lcom/googlecode/mp4parser/authoring/tracks/EC3TrackImpl$BitStreamInfo;->samplerate:I

    goto/16 :goto_4

    .line 354
    :pswitch_5
    const v13, 0xac44

    iput v13, v4, Lcom/googlecode/mp4parser/authoring/tracks/EC3TrackImpl$BitStreamInfo;->samplerate:I

    goto/16 :goto_4

    .line 358
    :pswitch_6
    const/16 v13, 0x7d00

    iput v13, v4, Lcom/googlecode/mp4parser/authoring/tracks/EC3TrackImpl$BitStreamInfo;->samplerate:I

    goto/16 :goto_4

    .line 362
    :pswitch_7
    packed-switch v6, :pswitch_data_2

    goto/16 :goto_4

    .line 364
    :pswitch_8
    const/16 v13, 0x5dc0

    iput v13, v4, Lcom/googlecode/mp4parser/authoring/tracks/EC3TrackImpl$BitStreamInfo;->samplerate:I

    goto/16 :goto_4

    .line 368
    :pswitch_9
    const/16 v13, 0x5622

    iput v13, v4, Lcom/googlecode/mp4parser/authoring/tracks/EC3TrackImpl$BitStreamInfo;->samplerate:I

    goto/16 :goto_4

    .line 372
    :pswitch_a
    const/16 v13, 0x3e80

    iput v13, v4, Lcom/googlecode/mp4parser/authoring/tracks/EC3TrackImpl$BitStreamInfo;->samplerate:I

    goto/16 :goto_4

    .line 376
    :pswitch_b
    const/4 v13, 0x0

    iput v13, v4, Lcom/googlecode/mp4parser/authoring/tracks/EC3TrackImpl$BitStreamInfo;->samplerate:I

    goto/16 :goto_4

    .line 387
    :cond_21
    iget v13, v4, Lcom/googlecode/mp4parser/authoring/tracks/EC3TrackImpl$BitStreamInfo;->samplerate:I

    int-to-double v13, v13

    const-wide/high16 v15, 0x4098

    div-double/2addr v13, v15

    iget v15, v4, Lcom/googlecode/mp4parser/authoring/tracks/EC3TrackImpl$BitStreamInfo;->frameSize:I

    int-to-double v15, v15

    mul-double/2addr v13, v15

    const-wide/high16 v15, 0x4020

    mul-double/2addr v13, v15

    double-to-int v13, v13

    iput v13, v4, Lcom/googlecode/mp4parser/authoring/tracks/EC3TrackImpl$BitStreamInfo;->bitrate:I

    goto/16 :goto_0

    .line 200
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch

    .line 348
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
    .end packed-switch

    .line 362
    :pswitch_data_2
    .packed-switch 0x0
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
    .end packed-switch
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
    .line 142
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
    .line 138
    iget-object v0, p0, Lcom/googlecode/mp4parser/authoring/tracks/EC3TrackImpl;->stts:Ljava/util/List;

    return-object v0
.end method

.method public getHandler()Ljava/lang/String;
    .locals 1

    .prologue
    .line 158
    const-string v0, "soun"

    return-object v0
.end method

.method public getMediaHeaderBox()Lcom/coremedia/iso/boxes/AbstractMediaHeaderBox;
    .locals 1

    .prologue
    .line 162
    new-instance v0, Lcom/coremedia/iso/boxes/SoundMediaHeaderBox;

    invoke-direct {v0}, Lcom/coremedia/iso/boxes/SoundMediaHeaderBox;-><init>()V

    return-object v0
.end method

.method public bridge synthetic getMediaHeaderBox()Lcom/coremedia/iso/boxes/Box;
    .locals 1

    .prologue
    .line 25
    invoke-virtual {p0}, Lcom/googlecode/mp4parser/authoring/tracks/EC3TrackImpl;->getMediaHeaderBox()Lcom/coremedia/iso/boxes/AbstractMediaHeaderBox;

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
    .line 150
    const/4 v0, 0x0

    return-object v0
.end method

.method public getSampleDescriptionBox()Lcom/coremedia/iso/boxes/SampleDescriptionBox;
    .locals 1

    .prologue
    .line 134
    iget-object v0, p0, Lcom/googlecode/mp4parser/authoring/tracks/EC3TrackImpl;->sampleDescriptionBox:Lcom/coremedia/iso/boxes/SampleDescriptionBox;

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
    iget-object v0, p0, Lcom/googlecode/mp4parser/authoring/tracks/EC3TrackImpl;->samples:Ljava/util/List;

    return-object v0
.end method

.method public getSubsampleInformationBox()Lcom/coremedia/iso/boxes/SubSampleInformationBox;
    .locals 1

    .prologue
    .line 166
    const/4 v0, 0x0

    return-object v0
.end method

.method public getSyncSamples()[J
    .locals 1

    .prologue
    .line 146
    const/4 v0, 0x0

    return-object v0
.end method

.method public getTrackMetaData()Lcom/googlecode/mp4parser/authoring/TrackMetaData;
    .locals 1

    .prologue
    .line 154
    iget-object v0, p0, Lcom/googlecode/mp4parser/authoring/tracks/EC3TrackImpl;->trackMetaData:Lcom/googlecode/mp4parser/authoring/TrackMetaData;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 430
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "EC3TrackImpl{bitrate="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/googlecode/mp4parser/authoring/tracks/EC3TrackImpl;->bitrate:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", samplerate="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/googlecode/mp4parser/authoring/tracks/EC3TrackImpl;->samplerate:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", entries="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/googlecode/mp4parser/authoring/tracks/EC3TrackImpl;->entries:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
