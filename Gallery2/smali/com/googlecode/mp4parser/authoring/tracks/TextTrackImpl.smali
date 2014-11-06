.class public Lcom/googlecode/mp4parser/authoring/tracks/TextTrackImpl;
.super Lcom/googlecode/mp4parser/authoring/AbstractTrack;
.source "TextTrackImpl.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/googlecode/mp4parser/authoring/tracks/TextTrackImpl$Line;
    }
.end annotation


# instance fields
.field sampleDescriptionBox:Lcom/coremedia/iso/boxes/SampleDescriptionBox;

.field subs:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/googlecode/mp4parser/authoring/tracks/TextTrackImpl$Line;",
            ">;"
        }
    .end annotation
.end field

.field trackMetaData:Lcom/googlecode/mp4parser/authoring/TrackMetaData;


# direct methods
.method public constructor <init>()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 45
    invoke-direct {p0}, Lcom/googlecode/mp4parser/authoring/AbstractTrack;-><init>()V

    .line 37
    new-instance v2, Lcom/googlecode/mp4parser/authoring/TrackMetaData;

    invoke-direct {v2}, Lcom/googlecode/mp4parser/authoring/TrackMetaData;-><init>()V

    iput-object v2, p0, Lcom/googlecode/mp4parser/authoring/tracks/TextTrackImpl;->trackMetaData:Lcom/googlecode/mp4parser/authoring/TrackMetaData;

    .line 39
    new-instance v2, Ljava/util/LinkedList;

    invoke-direct {v2}, Ljava/util/LinkedList;-><init>()V

    iput-object v2, p0, Lcom/googlecode/mp4parser/authoring/tracks/TextTrackImpl;->subs:Ljava/util/List;

    .line 46
    new-instance v2, Lcom/coremedia/iso/boxes/SampleDescriptionBox;

    invoke-direct {v2}, Lcom/coremedia/iso/boxes/SampleDescriptionBox;-><init>()V

    iput-object v2, p0, Lcom/googlecode/mp4parser/authoring/tracks/TextTrackImpl;->sampleDescriptionBox:Lcom/coremedia/iso/boxes/SampleDescriptionBox;

    .line 47
    new-instance v1, Lcom/coremedia/iso/boxes/sampleentry/TextSampleEntry;

    const-string v2, "tx3g"

    invoke-direct {v1, v2}, Lcom/coremedia/iso/boxes/sampleentry/TextSampleEntry;-><init>(Ljava/lang/String;)V

    .line 48
    .local v1, tx3g:Lcom/coremedia/iso/boxes/sampleentry/TextSampleEntry;
    invoke-virtual {v1, v4}, Lcom/coremedia/iso/boxes/sampleentry/TextSampleEntry;->setDataReferenceIndex(I)V

    .line 49
    new-instance v2, Lcom/coremedia/iso/boxes/sampleentry/TextSampleEntry$StyleRecord;

    invoke-direct {v2}, Lcom/coremedia/iso/boxes/sampleentry/TextSampleEntry$StyleRecord;-><init>()V

    invoke-virtual {v1, v2}, Lcom/coremedia/iso/boxes/sampleentry/TextSampleEntry;->setStyleRecord(Lcom/coremedia/iso/boxes/sampleentry/TextSampleEntry$StyleRecord;)V

    .line 50
    new-instance v2, Lcom/coremedia/iso/boxes/sampleentry/TextSampleEntry$BoxRecord;

    invoke-direct {v2}, Lcom/coremedia/iso/boxes/sampleentry/TextSampleEntry$BoxRecord;-><init>()V

    invoke-virtual {v1, v2}, Lcom/coremedia/iso/boxes/sampleentry/TextSampleEntry;->setBoxRecord(Lcom/coremedia/iso/boxes/sampleentry/TextSampleEntry$BoxRecord;)V

    .line 51
    iget-object v2, p0, Lcom/googlecode/mp4parser/authoring/tracks/TextTrackImpl;->sampleDescriptionBox:Lcom/coremedia/iso/boxes/SampleDescriptionBox;

    invoke-virtual {v2, v1}, Lcom/coremedia/iso/boxes/SampleDescriptionBox;->addBox(Lcom/coremedia/iso/boxes/Box;)V

    .line 53
    new-instance v0, Lcom/googlecode/mp4parser/boxes/threegpp26245/FontTableBox;

    invoke-direct {v0}, Lcom/googlecode/mp4parser/boxes/threegpp26245/FontTableBox;-><init>()V

    .line 54
    .local v0, ftab:Lcom/googlecode/mp4parser/boxes/threegpp26245/FontTableBox;
    new-instance v2, Lcom/googlecode/mp4parser/boxes/threegpp26245/FontTableBox$FontRecord;

    const-string v3, "Serif"

    invoke-direct {v2, v4, v3}, Lcom/googlecode/mp4parser/boxes/threegpp26245/FontTableBox$FontRecord;-><init>(ILjava/lang/String;)V

    invoke-static {v2}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/googlecode/mp4parser/boxes/threegpp26245/FontTableBox;->setEntries(Ljava/util/List;)V

    .line 56
    invoke-virtual {v1, v0}, Lcom/coremedia/iso/boxes/sampleentry/TextSampleEntry;->addBox(Lcom/coremedia/iso/boxes/Box;)V

    .line 59
    iget-object v2, p0, Lcom/googlecode/mp4parser/authoring/tracks/TextTrackImpl;->trackMetaData:Lcom/googlecode/mp4parser/authoring/TrackMetaData;

    new-instance v3, Ljava/util/Date;

    invoke-direct {v3}, Ljava/util/Date;-><init>()V

    invoke-virtual {v2, v3}, Lcom/googlecode/mp4parser/authoring/TrackMetaData;->setCreationTime(Ljava/util/Date;)V

    .line 60
    iget-object v2, p0, Lcom/googlecode/mp4parser/authoring/tracks/TextTrackImpl;->trackMetaData:Lcom/googlecode/mp4parser/authoring/TrackMetaData;

    new-instance v3, Ljava/util/Date;

    invoke-direct {v3}, Ljava/util/Date;-><init>()V

    invoke-virtual {v2, v3}, Lcom/googlecode/mp4parser/authoring/TrackMetaData;->setModificationTime(Ljava/util/Date;)V

    .line 61
    iget-object v2, p0, Lcom/googlecode/mp4parser/authoring/tracks/TextTrackImpl;->trackMetaData:Lcom/googlecode/mp4parser/authoring/TrackMetaData;

    const-wide/16 v3, 0x3e8

    invoke-virtual {v2, v3, v4}, Lcom/googlecode/mp4parser/authoring/TrackMetaData;->setTimescale(J)V

    .line 64
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
    .line 113
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
    .line 97
    new-instance v5, Ljava/util/LinkedList;

    invoke-direct {v5}, Ljava/util/LinkedList;-><init>()V

    .line 98
    .local v5, stts:Ljava/util/List;,"Ljava/util/List<Lcom/coremedia/iso/boxes/TimeToSampleBox$Entry;>;"
    const-wide/16 v1, 0x0

    .line 99
    .local v1, lastEnd:J
    iget-object v7, p0, Lcom/googlecode/mp4parser/authoring/tracks/TextTrackImpl;->subs:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/googlecode/mp4parser/authoring/tracks/TextTrackImpl$Line;

    .line 100
    .local v6, sub:Lcom/googlecode/mp4parser/authoring/tracks/TextTrackImpl$Line;
    iget-wide v7, v6, Lcom/googlecode/mp4parser/authoring/tracks/TextTrackImpl$Line;->from:J

    sub-long v3, v7, v1

    .line 101
    .local v3, silentTime:J
    const-wide/16 v7, 0x0

    cmp-long v7, v3, v7

    if-lez v7, :cond_1

    .line 102
    new-instance v7, Lcom/coremedia/iso/boxes/TimeToSampleBox$Entry;

    const-wide/16 v8, 0x1

    invoke-direct {v7, v8, v9, v3, v4}, Lcom/coremedia/iso/boxes/TimeToSampleBox$Entry;-><init>(JJ)V

    invoke-interface {v5, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 106
    :cond_0
    new-instance v7, Lcom/coremedia/iso/boxes/TimeToSampleBox$Entry;

    const-wide/16 v8, 0x1

    iget-wide v10, v6, Lcom/googlecode/mp4parser/authoring/tracks/TextTrackImpl$Line;->to:J

    iget-wide v12, v6, Lcom/googlecode/mp4parser/authoring/tracks/TextTrackImpl$Line;->from:J

    sub-long/2addr v10, v12

    invoke-direct {v7, v8, v9, v10, v11}, Lcom/coremedia/iso/boxes/TimeToSampleBox$Entry;-><init>(JJ)V

    invoke-interface {v5, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 107
    iget-wide v1, v6, Lcom/googlecode/mp4parser/authoring/tracks/TextTrackImpl$Line;->to:J

    .line 108
    goto :goto_0

    .line 103
    :cond_1
    const-wide/16 v7, 0x0

    cmp-long v7, v3, v7

    if-gez v7, :cond_0

    .line 104
    new-instance v7, Ljava/lang/Error;

    const-string v8, "Subtitle display times may not intersect"

    invoke-direct {v7, v8}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw v7

    .line 109
    .end local v3           #silentTime:J
    .end local v6           #sub:Lcom/googlecode/mp4parser/authoring/tracks/TextTrackImpl$Line;
    :cond_2
    return-object v5
.end method

.method public getHandler()Ljava/lang/String;
    .locals 1

    .prologue
    .line 129
    const-string v0, "sbtl"

    return-object v0
.end method

.method public getMediaHeaderBox()Lcom/coremedia/iso/boxes/AbstractMediaHeaderBox;
    .locals 1

    .prologue
    .line 159
    new-instance v0, Lcom/coremedia/iso/boxes/NullMediaHeaderBox;

    invoke-direct {v0}, Lcom/coremedia/iso/boxes/NullMediaHeaderBox;-><init>()V

    return-object v0
.end method

.method public bridge synthetic getMediaHeaderBox()Lcom/coremedia/iso/boxes/Box;
    .locals 1

    .prologue
    .line 36
    invoke-virtual {p0}, Lcom/googlecode/mp4parser/authoring/tracks/TextTrackImpl;->getMediaHeaderBox()Lcom/coremedia/iso/boxes/AbstractMediaHeaderBox;

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
    .line 121
    const/4 v0, 0x0

    return-object v0
.end method

.method public getSampleDescriptionBox()Lcom/coremedia/iso/boxes/SampleDescriptionBox;
    .locals 1

    .prologue
    .line 93
    iget-object v0, p0, Lcom/googlecode/mp4parser/authoring/tracks/TextTrackImpl;->sampleDescriptionBox:Lcom/coremedia/iso/boxes/SampleDescriptionBox;

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

    .line 68
    new-instance v6, Ljava/util/LinkedList;

    invoke-direct {v6}, Ljava/util/LinkedList;-><init>()V

    .line 69
    .local v6, samples:Ljava/util/List;,"Ljava/util/List<Ljava/nio/ByteBuffer;>;"
    const-wide/16 v4, 0x0

    .line 70
    .local v4, lastEnd:J
    iget-object v10, p0, Lcom/googlecode/mp4parser/authoring/tracks/TextTrackImpl;->subs:Ljava/util/List;

    invoke-interface {v10}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/googlecode/mp4parser/authoring/tracks/TextTrackImpl$Line;

    .line 71
    .local v9, sub:Lcom/googlecode/mp4parser/authoring/tracks/TextTrackImpl$Line;
    iget-wide v10, v9, Lcom/googlecode/mp4parser/authoring/tracks/TextTrackImpl$Line;->from:J

    sub-long v7, v10, v4

    .line 72
    .local v7, silentTime:J
    cmp-long v10, v7, v12

    if-lez v10, :cond_1

    .line 73
    const/4 v10, 0x2

    new-array v10, v10, [B

    fill-array-data v10, :array_0

    invoke-static {v10}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v10

    invoke-interface {v6, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 77
    :cond_0
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 78
    .local v0, baos:Ljava/io/ByteArrayOutputStream;
    new-instance v1, Ljava/io/DataOutputStream;

    invoke-direct {v1, v0}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 80
    .local v1, dos:Ljava/io/DataOutputStream;
    :try_start_0
    iget-object v10, v9, Lcom/googlecode/mp4parser/authoring/tracks/TextTrackImpl$Line;->text:Ljava/lang/String;

    const-string v11, "UTF-8"

    invoke-virtual {v10, v11}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v10

    array-length v10, v10

    invoke-virtual {v1, v10}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 81
    iget-object v10, v9, Lcom/googlecode/mp4parser/authoring/tracks/TextTrackImpl$Line;->text:Ljava/lang/String;

    const-string v11, "UTF-8"

    invoke-virtual {v10, v11}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v10

    invoke-virtual {v1, v10}, Ljava/io/DataOutputStream;->write([B)V

    .line 82
    invoke-virtual {v1}, Ljava/io/DataOutputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 86
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v10

    invoke-static {v10}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v10

    invoke-interface {v6, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 87
    iget-wide v4, v9, Lcom/googlecode/mp4parser/authoring/tracks/TextTrackImpl$Line;->to:J

    .line 88
    goto :goto_0

    .line 74
    .end local v0           #baos:Ljava/io/ByteArrayOutputStream;
    .end local v1           #dos:Ljava/io/DataOutputStream;
    :cond_1
    cmp-long v10, v7, v12

    if-gez v10, :cond_0

    .line 75
    new-instance v10, Ljava/lang/Error;

    const-string v11, "Subtitle display times may not intersect"

    invoke-direct {v10, v11}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw v10

    .line 83
    .restart local v0       #baos:Ljava/io/ByteArrayOutputStream;
    .restart local v1       #dos:Ljava/io/DataOutputStream;
    :catch_0
    move-exception v2

    .line 84
    .local v2, e:Ljava/io/IOException;
    new-instance v10, Ljava/lang/Error;

    const-string v11, "VM is broken. Does not support UTF-8"

    invoke-direct {v10, v11}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw v10

    .line 89
    .end local v0           #baos:Ljava/io/ByteArrayOutputStream;
    .end local v1           #dos:Ljava/io/DataOutputStream;
    .end local v2           #e:Ljava/io/IOException;
    .end local v7           #silentTime:J
    .end local v9           #sub:Lcom/googlecode/mp4parser/authoring/tracks/TextTrackImpl$Line;
    :cond_2
    return-object v6

    .line 73
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
            "Lcom/googlecode/mp4parser/authoring/tracks/TextTrackImpl$Line;",
            ">;"
        }
    .end annotation

    .prologue
    .line 42
    iget-object v0, p0, Lcom/googlecode/mp4parser/authoring/tracks/TextTrackImpl;->subs:Ljava/util/List;

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
    .line 117
    const/4 v0, 0x0

    return-object v0
.end method

.method public getTrackMetaData()Lcom/googlecode/mp4parser/authoring/TrackMetaData;
    .locals 1

    .prologue
    .line 125
    iget-object v0, p0, Lcom/googlecode/mp4parser/authoring/tracks/TextTrackImpl;->trackMetaData:Lcom/googlecode/mp4parser/authoring/TrackMetaData;

    return-object v0
.end method
