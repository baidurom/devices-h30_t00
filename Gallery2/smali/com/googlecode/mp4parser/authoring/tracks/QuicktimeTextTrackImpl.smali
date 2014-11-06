.class public Lcom/googlecode/mp4parser/authoring/tracks/QuicktimeTextTrackImpl;
.super Lcom/googlecode/mp4parser/authoring/AbstractTrack;
.source "QuicktimeTextTrackImpl.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/googlecode/mp4parser/authoring/tracks/QuicktimeTextTrackImpl$Line;
    }
.end annotation


# instance fields
.field sampleDescriptionBox:Lcom/coremedia/iso/boxes/SampleDescriptionBox;

.field subs:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/googlecode/mp4parser/authoring/tracks/QuicktimeTextTrackImpl$Line;",
            ">;"
        }
    .end annotation
.end field

.field trackMetaData:Lcom/googlecode/mp4parser/authoring/TrackMetaData;


# direct methods
.method public constructor <init>()V
    .locals 4

    .prologue
    .line 49
    invoke-direct {p0}, Lcom/googlecode/mp4parser/authoring/AbstractTrack;-><init>()V

    .line 41
    new-instance v1, Lcom/googlecode/mp4parser/authoring/TrackMetaData;

    invoke-direct {v1}, Lcom/googlecode/mp4parser/authoring/TrackMetaData;-><init>()V

    iput-object v1, p0, Lcom/googlecode/mp4parser/authoring/tracks/QuicktimeTextTrackImpl;->trackMetaData:Lcom/googlecode/mp4parser/authoring/TrackMetaData;

    .line 43
    new-instance v1, Ljava/util/LinkedList;

    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    iput-object v1, p0, Lcom/googlecode/mp4parser/authoring/tracks/QuicktimeTextTrackImpl;->subs:Ljava/util/List;

    .line 50
    new-instance v1, Lcom/coremedia/iso/boxes/SampleDescriptionBox;

    invoke-direct {v1}, Lcom/coremedia/iso/boxes/SampleDescriptionBox;-><init>()V

    iput-object v1, p0, Lcom/googlecode/mp4parser/authoring/tracks/QuicktimeTextTrackImpl;->sampleDescriptionBox:Lcom/coremedia/iso/boxes/SampleDescriptionBox;

    .line 51
    new-instance v0, Lcom/googlecode/mp4parser/boxes/apple/QuicktimeTextSampleEntry;

    invoke-direct {v0}, Lcom/googlecode/mp4parser/boxes/apple/QuicktimeTextSampleEntry;-><init>()V

    .line 52
    .local v0, textTrack:Lcom/googlecode/mp4parser/boxes/apple/QuicktimeTextSampleEntry;
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/googlecode/mp4parser/boxes/apple/QuicktimeTextSampleEntry;->setDataReferenceIndex(I)V

    .line 53
    iget-object v1, p0, Lcom/googlecode/mp4parser/authoring/tracks/QuicktimeTextTrackImpl;->sampleDescriptionBox:Lcom/coremedia/iso/boxes/SampleDescriptionBox;

    invoke-virtual {v1, v0}, Lcom/coremedia/iso/boxes/SampleDescriptionBox;->addBox(Lcom/coremedia/iso/boxes/Box;)V

    .line 56
    iget-object v1, p0, Lcom/googlecode/mp4parser/authoring/tracks/QuicktimeTextTrackImpl;->trackMetaData:Lcom/googlecode/mp4parser/authoring/TrackMetaData;

    new-instance v2, Ljava/util/Date;

    invoke-direct {v2}, Ljava/util/Date;-><init>()V

    invoke-virtual {v1, v2}, Lcom/googlecode/mp4parser/authoring/TrackMetaData;->setCreationTime(Ljava/util/Date;)V

    .line 57
    iget-object v1, p0, Lcom/googlecode/mp4parser/authoring/tracks/QuicktimeTextTrackImpl;->trackMetaData:Lcom/googlecode/mp4parser/authoring/TrackMetaData;

    new-instance v2, Ljava/util/Date;

    invoke-direct {v2}, Ljava/util/Date;-><init>()V

    invoke-virtual {v1, v2}, Lcom/googlecode/mp4parser/authoring/TrackMetaData;->setModificationTime(Ljava/util/Date;)V

    .line 58
    iget-object v1, p0, Lcom/googlecode/mp4parser/authoring/tracks/QuicktimeTextTrackImpl;->trackMetaData:Lcom/googlecode/mp4parser/authoring/TrackMetaData;

    const-wide/16 v2, 0x3e8

    invoke-virtual {v1, v2, v3}, Lcom/googlecode/mp4parser/authoring/TrackMetaData;->setTimescale(J)V

    .line 61
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
    .line 110
    const/4 v0, 0x0

    return-object v0
.end method

.method public getDecodingTimeEntries()Ljava/util/List;
    .locals 14
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
    .line 94
    new-instance v5, Ljava/util/LinkedList;

    invoke-direct {v5}, Ljava/util/LinkedList;-><init>()V

    .line 95
    .local v5, stts:Ljava/util/List;,"Ljava/util/List<Lcom/coremedia/iso/boxes/TimeToSampleBox$Entry;>;"
    const-wide/16 v1, 0x0

    .line 96
    .local v1, lastEnd:J
    iget-object v7, p0, Lcom/googlecode/mp4parser/authoring/tracks/QuicktimeTextTrackImpl;->subs:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/googlecode/mp4parser/authoring/tracks/QuicktimeTextTrackImpl$Line;

    .line 97
    .local v6, sub:Lcom/googlecode/mp4parser/authoring/tracks/QuicktimeTextTrackImpl$Line;
    iget-wide v7, v6, Lcom/googlecode/mp4parser/authoring/tracks/QuicktimeTextTrackImpl$Line;->from:J

    sub-long v3, v7, v1

    .line 98
    .local v3, silentTime:J
    const-wide/16 v7, 0x0

    cmp-long v7, v3, v7

    if-lez v7, :cond_1

    .line 99
    new-instance v7, Lcom/coremedia/iso/boxes/TimeToSampleBox$Entry;

    const-wide/16 v8, 0x1

    invoke-direct {v7, v8, v9, v3, v4}, Lcom/coremedia/iso/boxes/TimeToSampleBox$Entry;-><init>(JJ)V

    invoke-interface {v5, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 103
    :cond_0
    new-instance v7, Lcom/coremedia/iso/boxes/TimeToSampleBox$Entry;

    const-wide/16 v8, 0x1

    iget-wide v10, v6, Lcom/googlecode/mp4parser/authoring/tracks/QuicktimeTextTrackImpl$Line;->to:J

    iget-wide v12, v6, Lcom/googlecode/mp4parser/authoring/tracks/QuicktimeTextTrackImpl$Line;->from:J

    sub-long/2addr v10, v12

    invoke-direct {v7, v8, v9, v10, v11}, Lcom/coremedia/iso/boxes/TimeToSampleBox$Entry;-><init>(JJ)V

    invoke-interface {v5, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 104
    iget-wide v1, v6, Lcom/googlecode/mp4parser/authoring/tracks/QuicktimeTextTrackImpl$Line;->to:J

    .line 105
    goto :goto_0

    .line 100
    :cond_1
    const-wide/16 v7, 0x0

    cmp-long v7, v3, v7

    if-gez v7, :cond_0

    .line 101
    new-instance v7, Ljava/lang/Error;

    const-string v8, "Subtitle display times may not intersect"

    invoke-direct {v7, v8}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw v7

    .line 106
    .end local v3           #silentTime:J
    .end local v6           #sub:Lcom/googlecode/mp4parser/authoring/tracks/QuicktimeTextTrackImpl$Line;
    :cond_2
    return-object v5
.end method

.method public getHandler()Ljava/lang/String;
    .locals 1

    .prologue
    .line 126
    const-string v0, "text"

    return-object v0
.end method

.method public getMediaHeaderBox()Lcom/coremedia/iso/boxes/Box;
    .locals 2

    .prologue
    .line 156
    new-instance v0, Lcom/googlecode/mp4parser/boxes/apple/GenericMediaHeaderAtom;

    invoke-direct {v0}, Lcom/googlecode/mp4parser/boxes/apple/GenericMediaHeaderAtom;-><init>()V

    .line 157
    .local v0, ghmd:Lcom/googlecode/mp4parser/boxes/apple/GenericMediaHeaderAtom;
    new-instance v1, Lcom/googlecode/mp4parser/boxes/apple/BaseMediaInfoAtom;

    invoke-direct {v1}, Lcom/googlecode/mp4parser/boxes/apple/BaseMediaInfoAtom;-><init>()V

    invoke-virtual {v0, v1}, Lcom/googlecode/mp4parser/boxes/apple/GenericMediaHeaderAtom;->addBox(Lcom/coremedia/iso/boxes/Box;)V

    .line 158
    new-instance v1, Lcom/googlecode/mp4parser/boxes/apple/GenericMediaHeaderTextAtom;

    invoke-direct {v1}, Lcom/googlecode/mp4parser/boxes/apple/GenericMediaHeaderTextAtom;-><init>()V

    invoke-virtual {v0, v1}, Lcom/googlecode/mp4parser/boxes/apple/GenericMediaHeaderAtom;->addBox(Lcom/coremedia/iso/boxes/Box;)V

    .line 159
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
    .line 118
    const/4 v0, 0x0

    return-object v0
.end method

.method public getSampleDescriptionBox()Lcom/coremedia/iso/boxes/SampleDescriptionBox;
    .locals 1

    .prologue
    .line 90
    iget-object v0, p0, Lcom/googlecode/mp4parser/authoring/tracks/QuicktimeTextTrackImpl;->sampleDescriptionBox:Lcom/coremedia/iso/boxes/SampleDescriptionBox;

    return-object v0
.end method

.method public getSamples()Ljava/util/List;
    .locals 14
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
    const-wide/16 v12, 0x0

    .line 65
    new-instance v6, Ljava/util/LinkedList;

    invoke-direct {v6}, Ljava/util/LinkedList;-><init>()V

    .line 66
    .local v6, samples:Ljava/util/List;,"Ljava/util/List<Ljava/nio/ByteBuffer;>;"
    const-wide/16 v4, 0x0

    .line 67
    .local v4, lastEnd:J
    iget-object v10, p0, Lcom/googlecode/mp4parser/authoring/tracks/QuicktimeTextTrackImpl;->subs:Ljava/util/List;

    invoke-interface {v10}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/googlecode/mp4parser/authoring/tracks/QuicktimeTextTrackImpl$Line;

    .line 68
    .local v9, sub:Lcom/googlecode/mp4parser/authoring/tracks/QuicktimeTextTrackImpl$Line;
    iget-wide v10, v9, Lcom/googlecode/mp4parser/authoring/tracks/QuicktimeTextTrackImpl$Line;->from:J

    sub-long v7, v10, v4

    .line 69
    .local v7, silentTime:J
    cmp-long v10, v7, v12

    if-lez v10, :cond_1

    .line 70
    const/4 v10, 0x2

    new-array v10, v10, [B

    fill-array-data v10, :array_0

    invoke-static {v10}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v10

    invoke-interface {v6, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 74
    :cond_0
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 75
    .local v0, baos:Ljava/io/ByteArrayOutputStream;
    new-instance v1, Ljava/io/DataOutputStream;

    invoke-direct {v1, v0}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 77
    .local v1, dos:Ljava/io/DataOutputStream;
    :try_start_0
    iget-object v10, v9, Lcom/googlecode/mp4parser/authoring/tracks/QuicktimeTextTrackImpl$Line;->text:Ljava/lang/String;

    const-string v11, "UTF-8"

    invoke-virtual {v10, v11}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v10

    array-length v10, v10

    invoke-virtual {v1, v10}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 78
    iget-object v10, v9, Lcom/googlecode/mp4parser/authoring/tracks/QuicktimeTextTrackImpl$Line;->text:Ljava/lang/String;

    const-string v11, "UTF-8"

    invoke-virtual {v10, v11}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v10

    invoke-virtual {v1, v10}, Ljava/io/DataOutputStream;->write([B)V

    .line 79
    invoke-virtual {v1}, Ljava/io/DataOutputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 83
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v10

    invoke-static {v10}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v10

    invoke-interface {v6, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 84
    iget-wide v4, v9, Lcom/googlecode/mp4parser/authoring/tracks/QuicktimeTextTrackImpl$Line;->to:J

    .line 85
    goto :goto_0

    .line 71
    .end local v0           #baos:Ljava/io/ByteArrayOutputStream;
    .end local v1           #dos:Ljava/io/DataOutputStream;
    :cond_1
    cmp-long v10, v7, v12

    if-gez v10, :cond_0

    .line 72
    new-instance v10, Ljava/lang/Error;

    const-string v11, "Subtitle display times may not intersect"

    invoke-direct {v10, v11}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw v10

    .line 80
    .restart local v0       #baos:Ljava/io/ByteArrayOutputStream;
    .restart local v1       #dos:Ljava/io/DataOutputStream;
    :catch_0
    move-exception v2

    .line 81
    .local v2, e:Ljava/io/IOException;
    new-instance v10, Ljava/lang/Error;

    const-string v11, "VM is broken. Does not support UTF-8"

    invoke-direct {v10, v11}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw v10

    .line 86
    .end local v0           #baos:Ljava/io/ByteArrayOutputStream;
    .end local v1           #dos:Ljava/io/DataOutputStream;
    .end local v2           #e:Ljava/io/IOException;
    .end local v7           #silentTime:J
    .end local v9           #sub:Lcom/googlecode/mp4parser/authoring/tracks/QuicktimeTextTrackImpl$Line;
    :cond_2
    return-object v6

    .line 70
    :array_0
    .array-data 0x1
        0x0t
        0x0t
    .end array-data
.end method

.method public getSubs()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/googlecode/mp4parser/authoring/tracks/QuicktimeTextTrackImpl$Line;",
            ">;"
        }
    .end annotation

    .prologue
    .line 46
    iget-object v0, p0, Lcom/googlecode/mp4parser/authoring/tracks/QuicktimeTextTrackImpl;->subs:Ljava/util/List;

    return-object v0
.end method

.method public getSubsampleInformationBox()Lcom/coremedia/iso/boxes/SubSampleInformationBox;
    .locals 1

    .prologue
    .line 163
    const/4 v0, 0x0

    return-object v0
.end method

.method public getSyncSamples()[J
    .locals 1

    .prologue
    .line 114
    const/4 v0, 0x0

    return-object v0
.end method

.method public getTrackMetaData()Lcom/googlecode/mp4parser/authoring/TrackMetaData;
    .locals 1

    .prologue
    .line 122
    iget-object v0, p0, Lcom/googlecode/mp4parser/authoring/tracks/QuicktimeTextTrackImpl;->trackMetaData:Lcom/googlecode/mp4parser/authoring/TrackMetaData;

    return-object v0
.end method
