.class public Lcom/googlecode/mp4parser/authoring/tracks/AppendTrack;
.super Lcom/googlecode/mp4parser/authoring/AbstractTrack;
.source "AppendTrack.java"


# instance fields
.field stsd:Lcom/coremedia/iso/boxes/SampleDescriptionBox;

.field tracks:[Lcom/googlecode/mp4parser/authoring/Track;


# direct methods
.method public varargs constructor <init>([Lcom/googlecode/mp4parser/authoring/Track;)V
    .locals 14
    .parameter "tracks"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v12, 0x1

    const/4 v13, 0x0

    .line 41
    invoke-direct {p0}, Lcom/googlecode/mp4parser/authoring/AbstractTrack;-><init>()V

    .line 42
    iput-object p1, p0, Lcom/googlecode/mp4parser/authoring/tracks/AppendTrack;->tracks:[Lcom/googlecode/mp4parser/authoring/Track;

    .line 44
    move-object v0, p1

    .local v0, arr$:[Lcom/googlecode/mp4parser/authoring/Track;
    array-length v6, v0

    .local v6, len$:I
    const/4 v5, 0x0

    .local v5, i$:I
    :goto_0
    if-ge v5, v6, :cond_2

    aget-object v9, v0, v5

    .line 46
    .local v9, track:Lcom/googlecode/mp4parser/authoring/Track;
    iget-object v10, p0, Lcom/googlecode/mp4parser/authoring/tracks/AppendTrack;->stsd:Lcom/coremedia/iso/boxes/SampleDescriptionBox;

    if-nez v10, :cond_1

    .line 47
    invoke-interface {v9}, Lcom/googlecode/mp4parser/authoring/Track;->getSampleDescriptionBox()Lcom/coremedia/iso/boxes/SampleDescriptionBox;

    move-result-object v10

    iput-object v10, p0, Lcom/googlecode/mp4parser/authoring/tracks/AppendTrack;->stsd:Lcom/coremedia/iso/boxes/SampleDescriptionBox;

    .line 44
    :cond_0
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 49
    :cond_1
    new-instance v3, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v3}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 50
    .local v3, curBaos:Ljava/io/ByteArrayOutputStream;
    new-instance v8, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v8}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 51
    .local v8, refBaos:Ljava/io/ByteArrayOutputStream;
    invoke-interface {v9}, Lcom/googlecode/mp4parser/authoring/Track;->getSampleDescriptionBox()Lcom/coremedia/iso/boxes/SampleDescriptionBox;

    move-result-object v10

    invoke-static {v3}, Ljava/nio/channels/Channels;->newChannel(Ljava/io/OutputStream;)Ljava/nio/channels/WritableByteChannel;

    move-result-object v11

    invoke-virtual {v10, v11}, Lcom/coremedia/iso/boxes/SampleDescriptionBox;->getBox(Ljava/nio/channels/WritableByteChannel;)V

    .line 52
    iget-object v10, p0, Lcom/googlecode/mp4parser/authoring/tracks/AppendTrack;->stsd:Lcom/coremedia/iso/boxes/SampleDescriptionBox;

    invoke-static {v8}, Ljava/nio/channels/Channels;->newChannel(Ljava/io/OutputStream;)Ljava/nio/channels/WritableByteChannel;

    move-result-object v11

    invoke-virtual {v10, v11}, Lcom/coremedia/iso/boxes/SampleDescriptionBox;->getBox(Ljava/nio/channels/WritableByteChannel;)V

    .line 53
    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v2

    .line 54
    .local v2, cur:[B
    invoke-virtual {v8}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v7

    .line 56
    .local v7, ref:[B
    invoke-static {v7, v2}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v10

    if-nez v10, :cond_0

    .line 57
    invoke-interface {v9}, Lcom/googlecode/mp4parser/authoring/Track;->getSampleDescriptionBox()Lcom/coremedia/iso/boxes/SampleDescriptionBox;

    move-result-object v4

    .line 58
    .local v4, curStsd:Lcom/coremedia/iso/boxes/SampleDescriptionBox;
    iget-object v10, p0, Lcom/googlecode/mp4parser/authoring/tracks/AppendTrack;->stsd:Lcom/coremedia/iso/boxes/SampleDescriptionBox;

    invoke-virtual {v10}, Lcom/coremedia/iso/boxes/SampleDescriptionBox;->getBoxes()Ljava/util/List;

    move-result-object v10

    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v10

    if-ne v10, v12, :cond_3

    invoke-virtual {v4}, Lcom/coremedia/iso/boxes/SampleDescriptionBox;->getBoxes()Ljava/util/List;

    move-result-object v10

    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v10

    if-ne v10, v12, :cond_3

    .line 59
    iget-object v10, p0, Lcom/googlecode/mp4parser/authoring/tracks/AppendTrack;->stsd:Lcom/coremedia/iso/boxes/SampleDescriptionBox;

    invoke-virtual {v10}, Lcom/coremedia/iso/boxes/SampleDescriptionBox;->getBoxes()Ljava/util/List;

    move-result-object v10

    invoke-interface {v10, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    instance-of v10, v10, Lcom/coremedia/iso/boxes/sampleentry/AudioSampleEntry;

    if-eqz v10, :cond_3

    invoke-virtual {v4}, Lcom/coremedia/iso/boxes/SampleDescriptionBox;->getBoxes()Ljava/util/List;

    move-result-object v10

    invoke-interface {v10, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    instance-of v10, v10, Lcom/coremedia/iso/boxes/sampleentry/AudioSampleEntry;

    if-eqz v10, :cond_3

    .line 60
    iget-object v10, p0, Lcom/googlecode/mp4parser/authoring/tracks/AppendTrack;->stsd:Lcom/coremedia/iso/boxes/SampleDescriptionBox;

    invoke-virtual {v10}, Lcom/coremedia/iso/boxes/SampleDescriptionBox;->getBoxes()Ljava/util/List;

    move-result-object v10

    invoke-interface {v10, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/coremedia/iso/boxes/sampleentry/AudioSampleEntry;

    invoke-virtual {v4}, Lcom/coremedia/iso/boxes/SampleDescriptionBox;->getBoxes()Ljava/util/List;

    move-result-object v11

    invoke-interface {v11, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/coremedia/iso/boxes/sampleentry/AudioSampleEntry;

    invoke-direct {p0, v10, v11}, Lcom/googlecode/mp4parser/authoring/tracks/AppendTrack;->mergeAudioSampleEntries(Lcom/coremedia/iso/boxes/sampleentry/AudioSampleEntry;Lcom/coremedia/iso/boxes/sampleentry/AudioSampleEntry;)Lcom/coremedia/iso/boxes/sampleentry/AudioSampleEntry;

    move-result-object v1

    .line 61
    .local v1, aseResult:Lcom/coremedia/iso/boxes/sampleentry/AudioSampleEntry;
    if-eqz v1, :cond_3

    .line 62
    iget-object v10, p0, Lcom/googlecode/mp4parser/authoring/tracks/AppendTrack;->stsd:Lcom/coremedia/iso/boxes/SampleDescriptionBox;

    invoke-static {v1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v11

    invoke-virtual {v10, v11}, Lcom/coremedia/iso/boxes/SampleDescriptionBox;->setBoxes(Ljava/util/List;)V

    .line 71
    .end local v1           #aseResult:Lcom/coremedia/iso/boxes/sampleentry/AudioSampleEntry;
    .end local v2           #cur:[B
    .end local v3           #curBaos:Ljava/io/ByteArrayOutputStream;
    .end local v4           #curStsd:Lcom/coremedia/iso/boxes/SampleDescriptionBox;
    .end local v7           #ref:[B
    .end local v8           #refBaos:Ljava/io/ByteArrayOutputStream;
    .end local v9           #track:Lcom/googlecode/mp4parser/authoring/Track;
    :cond_2
    return-void

    .line 67
    .restart local v2       #cur:[B
    .restart local v3       #curBaos:Ljava/io/ByteArrayOutputStream;
    .restart local v4       #curStsd:Lcom/coremedia/iso/boxes/SampleDescriptionBox;
    .restart local v7       #ref:[B
    .restart local v8       #refBaos:Ljava/io/ByteArrayOutputStream;
    .restart local v9       #track:Lcom/googlecode/mp4parser/authoring/Track;
    :cond_3
    new-instance v10, Ljava/io/IOException;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Cannot append "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " to "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    aget-object v12, p1, v13

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " since their Sample Description Boxes differ: \n"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-interface {v9}, Lcom/googlecode/mp4parser/authoring/Track;->getSampleDescriptionBox()Lcom/coremedia/iso/boxes/SampleDescriptionBox;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "\n vs. \n"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    aget-object v12, p1, v13

    invoke-interface {v12}, Lcom/googlecode/mp4parser/authoring/Track;->getSampleDescriptionBox()Lcom/coremedia/iso/boxes/SampleDescriptionBox;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v10
.end method

.method private mergeAudioSampleEntries(Lcom/coremedia/iso/boxes/sampleentry/AudioSampleEntry;Lcom/coremedia/iso/boxes/sampleentry/AudioSampleEntry;)Lcom/coremedia/iso/boxes/sampleentry/AudioSampleEntry;
    .locals 17
    .parameter "ase1"
    .parameter "ase2"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 74
    invoke-virtual/range {p1 .. p1}, Lcom/coremedia/iso/boxes/sampleentry/AudioSampleEntry;->getType()Ljava/lang/String;

    move-result-object v13

    invoke-virtual/range {p2 .. p2}, Lcom/coremedia/iso/boxes/sampleentry/AudioSampleEntry;->getType()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_2d

    .line 75
    new-instance v0, Lcom/coremedia/iso/boxes/sampleentry/AudioSampleEntry;

    invoke-virtual/range {p2 .. p2}, Lcom/coremedia/iso/boxes/sampleentry/AudioSampleEntry;->getType()Ljava/lang/String;

    move-result-object v13

    invoke-direct {v0, v13}, Lcom/coremedia/iso/boxes/sampleentry/AudioSampleEntry;-><init>(Ljava/lang/String;)V

    .line 76
    .local v0, ase:Lcom/coremedia/iso/boxes/sampleentry/AudioSampleEntry;
    invoke-virtual/range {p1 .. p1}, Lcom/coremedia/iso/boxes/sampleentry/AudioSampleEntry;->getBytesPerFrame()J

    move-result-wide v13

    invoke-virtual/range {p2 .. p2}, Lcom/coremedia/iso/boxes/sampleentry/AudioSampleEntry;->getBytesPerFrame()J

    move-result-wide v15

    cmp-long v13, v13, v15

    if-nez v13, :cond_1

    .line 77
    invoke-virtual/range {p1 .. p1}, Lcom/coremedia/iso/boxes/sampleentry/AudioSampleEntry;->getBytesPerFrame()J

    move-result-wide v13

    invoke-virtual {v0, v13, v14}, Lcom/coremedia/iso/boxes/sampleentry/AudioSampleEntry;->setBytesPerFrame(J)V

    .line 81
    invoke-virtual/range {p1 .. p1}, Lcom/coremedia/iso/boxes/sampleentry/AudioSampleEntry;->getBytesPerPacket()J

    move-result-wide v13

    invoke-virtual/range {p2 .. p2}, Lcom/coremedia/iso/boxes/sampleentry/AudioSampleEntry;->getBytesPerPacket()J

    move-result-wide v15

    cmp-long v13, v13, v15

    if-nez v13, :cond_3

    .line 82
    invoke-virtual/range {p1 .. p1}, Lcom/coremedia/iso/boxes/sampleentry/AudioSampleEntry;->getBytesPerPacket()J

    move-result-wide v13

    invoke-virtual {v0, v13, v14}, Lcom/coremedia/iso/boxes/sampleentry/AudioSampleEntry;->setBytesPerPacket(J)V

    .line 86
    invoke-virtual/range {p1 .. p1}, Lcom/coremedia/iso/boxes/sampleentry/AudioSampleEntry;->getBytesPerSample()J

    move-result-wide v13

    invoke-virtual/range {p2 .. p2}, Lcom/coremedia/iso/boxes/sampleentry/AudioSampleEntry;->getBytesPerSample()J

    move-result-wide v15

    cmp-long v13, v13, v15

    if-nez v13, :cond_4

    .line 87
    invoke-virtual/range {p1 .. p1}, Lcom/coremedia/iso/boxes/sampleentry/AudioSampleEntry;->getBytesPerSample()J

    move-result-wide v13

    invoke-virtual {v0, v13, v14}, Lcom/coremedia/iso/boxes/sampleentry/AudioSampleEntry;->setBytesPerSample(J)V

    .line 91
    invoke-virtual/range {p1 .. p1}, Lcom/coremedia/iso/boxes/sampleentry/AudioSampleEntry;->getChannelCount()I

    move-result v13

    invoke-virtual/range {p2 .. p2}, Lcom/coremedia/iso/boxes/sampleentry/AudioSampleEntry;->getChannelCount()I

    move-result v14

    if-ne v13, v14, :cond_5

    .line 92
    invoke-virtual/range {p1 .. p1}, Lcom/coremedia/iso/boxes/sampleentry/AudioSampleEntry;->getChannelCount()I

    move-result v13

    invoke-virtual {v0, v13}, Lcom/coremedia/iso/boxes/sampleentry/AudioSampleEntry;->setChannelCount(I)V

    .line 96
    invoke-virtual/range {p1 .. p1}, Lcom/coremedia/iso/boxes/sampleentry/AudioSampleEntry;->getPacketSize()I

    move-result v13

    invoke-virtual/range {p2 .. p2}, Lcom/coremedia/iso/boxes/sampleentry/AudioSampleEntry;->getPacketSize()I

    move-result v14

    if-ne v13, v14, :cond_6

    .line 97
    invoke-virtual/range {p1 .. p1}, Lcom/coremedia/iso/boxes/sampleentry/AudioSampleEntry;->getPacketSize()I

    move-result v13

    invoke-virtual {v0, v13}, Lcom/coremedia/iso/boxes/sampleentry/AudioSampleEntry;->setPacketSize(I)V

    .line 101
    invoke-virtual/range {p1 .. p1}, Lcom/coremedia/iso/boxes/sampleentry/AudioSampleEntry;->getCompressionId()I

    move-result v13

    invoke-virtual/range {p2 .. p2}, Lcom/coremedia/iso/boxes/sampleentry/AudioSampleEntry;->getCompressionId()I

    move-result v14

    if-ne v13, v14, :cond_7

    .line 102
    invoke-virtual/range {p1 .. p1}, Lcom/coremedia/iso/boxes/sampleentry/AudioSampleEntry;->getCompressionId()I

    move-result v13

    invoke-virtual {v0, v13}, Lcom/coremedia/iso/boxes/sampleentry/AudioSampleEntry;->setCompressionId(I)V

    .line 106
    invoke-virtual/range {p1 .. p1}, Lcom/coremedia/iso/boxes/sampleentry/AudioSampleEntry;->getSampleRate()J

    move-result-wide v13

    invoke-virtual/range {p2 .. p2}, Lcom/coremedia/iso/boxes/sampleentry/AudioSampleEntry;->getSampleRate()J

    move-result-wide v15

    cmp-long v13, v13, v15

    if-nez v13, :cond_8

    .line 107
    invoke-virtual/range {p1 .. p1}, Lcom/coremedia/iso/boxes/sampleentry/AudioSampleEntry;->getSampleRate()J

    move-result-wide v13

    invoke-virtual {v0, v13, v14}, Lcom/coremedia/iso/boxes/sampleentry/AudioSampleEntry;->setSampleRate(J)V

    .line 111
    invoke-virtual/range {p1 .. p1}, Lcom/coremedia/iso/boxes/sampleentry/AudioSampleEntry;->getSampleSize()I

    move-result v13

    invoke-virtual/range {p2 .. p2}, Lcom/coremedia/iso/boxes/sampleentry/AudioSampleEntry;->getSampleSize()I

    move-result v14

    if-ne v13, v14, :cond_9

    .line 112
    invoke-virtual/range {p1 .. p1}, Lcom/coremedia/iso/boxes/sampleentry/AudioSampleEntry;->getSampleSize()I

    move-result v13

    invoke-virtual {v0, v13}, Lcom/coremedia/iso/boxes/sampleentry/AudioSampleEntry;->setSampleSize(I)V

    .line 116
    invoke-virtual/range {p1 .. p1}, Lcom/coremedia/iso/boxes/sampleentry/AudioSampleEntry;->getSamplesPerPacket()J

    move-result-wide v13

    invoke-virtual/range {p2 .. p2}, Lcom/coremedia/iso/boxes/sampleentry/AudioSampleEntry;->getSamplesPerPacket()J

    move-result-wide v15

    cmp-long v13, v13, v15

    if-nez v13, :cond_a

    .line 117
    invoke-virtual/range {p1 .. p1}, Lcom/coremedia/iso/boxes/sampleentry/AudioSampleEntry;->getSamplesPerPacket()J

    move-result-wide v13

    invoke-virtual {v0, v13, v14}, Lcom/coremedia/iso/boxes/sampleentry/AudioSampleEntry;->setSamplesPerPacket(J)V

    .line 121
    invoke-virtual/range {p1 .. p1}, Lcom/coremedia/iso/boxes/sampleentry/AudioSampleEntry;->getSoundVersion()I

    move-result v13

    invoke-virtual/range {p2 .. p2}, Lcom/coremedia/iso/boxes/sampleentry/AudioSampleEntry;->getSoundVersion()I

    move-result v14

    if-ne v13, v14, :cond_b

    .line 122
    invoke-virtual/range {p1 .. p1}, Lcom/coremedia/iso/boxes/sampleentry/AudioSampleEntry;->getSoundVersion()I

    move-result v13

    invoke-virtual {v0, v13}, Lcom/coremedia/iso/boxes/sampleentry/AudioSampleEntry;->setSoundVersion(I)V

    .line 126
    invoke-virtual/range {p1 .. p1}, Lcom/coremedia/iso/boxes/sampleentry/AudioSampleEntry;->getSoundVersion2Data()[B

    move-result-object v13

    invoke-virtual/range {p2 .. p2}, Lcom/coremedia/iso/boxes/sampleentry/AudioSampleEntry;->getSoundVersion2Data()[B

    move-result-object v14

    invoke-static {v13, v14}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v13

    if-eqz v13, :cond_c

    .line 127
    invoke-virtual/range {p1 .. p1}, Lcom/coremedia/iso/boxes/sampleentry/AudioSampleEntry;->getSoundVersion2Data()[B

    move-result-object v13

    invoke-virtual {v0, v13}, Lcom/coremedia/iso/boxes/sampleentry/AudioSampleEntry;->setSoundVersion2Data([B)V

    .line 131
    invoke-virtual/range {p1 .. p1}, Lcom/coremedia/iso/boxes/sampleentry/AudioSampleEntry;->getBoxes()Ljava/util/List;

    move-result-object v13

    invoke-interface {v13}, Ljava/util/List;->size()I

    move-result v13

    invoke-virtual/range {p2 .. p2}, Lcom/coremedia/iso/boxes/sampleentry/AudioSampleEntry;->getBoxes()Ljava/util/List;

    move-result-object v14

    invoke-interface {v14}, Ljava/util/List;->size()I

    move-result v14

    if-ne v13, v14, :cond_2

    .line 132
    invoke-virtual/range {p1 .. p1}, Lcom/coremedia/iso/boxes/sampleentry/AudioSampleEntry;->getBoxes()Ljava/util/List;

    move-result-object v13

    invoke-interface {v13}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 133
    .local v3, bxs1:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/coremedia/iso/boxes/Box;>;"
    invoke-virtual/range {p2 .. p2}, Lcom/coremedia/iso/boxes/sampleentry/AudioSampleEntry;->getBoxes()Ljava/util/List;

    move-result-object v13

    invoke-interface {v13}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .line 134
    .local v4, bxs2:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/coremedia/iso/boxes/Box;>;"
    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_2

    .line 135
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/coremedia/iso/boxes/Box;

    .line 136
    .local v5, cur1:Lcom/coremedia/iso/boxes/Box;
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/coremedia/iso/boxes/Box;

    .line 137
    .local v6, cur2:Lcom/coremedia/iso/boxes/Box;
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 138
    .local v1, baos1:Ljava/io/ByteArrayOutputStream;
    new-instance v2, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v2}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 139
    .local v2, baos2:Ljava/io/ByteArrayOutputStream;
    invoke-static {v1}, Ljava/nio/channels/Channels;->newChannel(Ljava/io/OutputStream;)Ljava/nio/channels/WritableByteChannel;

    move-result-object v13

    invoke-interface {v5, v13}, Lcom/coremedia/iso/boxes/Box;->getBox(Ljava/nio/channels/WritableByteChannel;)V

    .line 140
    invoke-static {v2}, Ljava/nio/channels/Channels;->newChannel(Ljava/io/OutputStream;)Ljava/nio/channels/WritableByteChannel;

    move-result-object v13

    invoke-interface {v6, v13}, Lcom/coremedia/iso/boxes/Box;->getBox(Ljava/nio/channels/WritableByteChannel;)V

    .line 141
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v13

    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v14

    invoke-static {v13, v14}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v13

    if-eqz v13, :cond_d

    .line 142
    invoke-virtual {v0, v5}, Lcom/coremedia/iso/boxes/sampleentry/AudioSampleEntry;->addBox(Lcom/coremedia/iso/boxes/Box;)V

    goto :goto_0

    .line 79
    .end local v1           #baos1:Ljava/io/ByteArrayOutputStream;
    .end local v2           #baos2:Ljava/io/ByteArrayOutputStream;
    .end local v3           #bxs1:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/coremedia/iso/boxes/Box;>;"
    .end local v4           #bxs2:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/coremedia/iso/boxes/Box;>;"
    .end local v5           #cur1:Lcom/coremedia/iso/boxes/Box;
    .end local v6           #cur2:Lcom/coremedia/iso/boxes/Box;
    :cond_1
    const/4 v0, 0x0

    .line 228
    .end local v0           #ase:Lcom/coremedia/iso/boxes/sampleentry/AudioSampleEntry;
    :cond_2
    :goto_1
    return-object v0

    .line 84
    .restart local v0       #ase:Lcom/coremedia/iso/boxes/sampleentry/AudioSampleEntry;
    :cond_3
    const/4 v0, 0x0

    goto :goto_1

    .line 89
    :cond_4
    const/4 v0, 0x0

    goto :goto_1

    .line 94
    :cond_5
    const/4 v0, 0x0

    goto :goto_1

    .line 99
    :cond_6
    const/4 v0, 0x0

    goto :goto_1

    .line 104
    :cond_7
    const/4 v0, 0x0

    goto :goto_1

    .line 109
    :cond_8
    const/4 v0, 0x0

    goto :goto_1

    .line 114
    :cond_9
    const/4 v0, 0x0

    goto :goto_1

    .line 119
    :cond_a
    const/4 v0, 0x0

    goto :goto_1

    .line 124
    :cond_b
    const/4 v0, 0x0

    goto :goto_1

    .line 129
    :cond_c
    const/4 v0, 0x0

    goto :goto_1

    .line 144
    .restart local v1       #baos1:Ljava/io/ByteArrayOutputStream;
    .restart local v2       #baos2:Ljava/io/ByteArrayOutputStream;
    .restart local v3       #bxs1:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/coremedia/iso/boxes/Box;>;"
    .restart local v4       #bxs2:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/coremedia/iso/boxes/Box;>;"
    .restart local v5       #cur1:Lcom/coremedia/iso/boxes/Box;
    .restart local v6       #cur2:Lcom/coremedia/iso/boxes/Box;
    :cond_d
    const-string v13, "esds"

    invoke-interface {v5}, Lcom/coremedia/iso/boxes/Box;->getType()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_0

    const-string v13, "esds"

    invoke-interface {v6}, Lcom/coremedia/iso/boxes/Box;->getType()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_0

    move-object v11, v5

    .line 145
    check-cast v11, Lcom/googlecode/mp4parser/boxes/mp4/ESDescriptorBox;

    .local v11, esdsBox1:Lcom/googlecode/mp4parser/boxes/mp4/ESDescriptorBox;
    move-object v12, v6

    .line 146
    check-cast v12, Lcom/googlecode/mp4parser/boxes/mp4/ESDescriptorBox;

    .line 147
    .local v12, esdsBox2:Lcom/googlecode/mp4parser/boxes/mp4/ESDescriptorBox;
    invoke-virtual {v11}, Lcom/googlecode/mp4parser/boxes/mp4/ESDescriptorBox;->getEsDescriptor()Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/ESDescriptor;

    move-result-object v9

    .line 148
    .local v9, esds1:Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/ESDescriptor;
    invoke-virtual {v12}, Lcom/googlecode/mp4parser/boxes/mp4/ESDescriptorBox;->getEsDescriptor()Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/ESDescriptor;

    move-result-object v10

    .line 149
    .local v10, esds2:Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/ESDescriptor;
    invoke-virtual {v9}, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/ESDescriptor;->getURLFlag()I

    move-result v13

    invoke-virtual {v10}, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/ESDescriptor;->getURLFlag()I

    move-result v14

    if-eq v13, v14, :cond_e

    .line 150
    const/4 v0, 0x0

    goto :goto_1

    .line 152
    :cond_e
    invoke-virtual {v9}, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/ESDescriptor;->getURLLength()I

    move-result v13

    invoke-virtual {v10}, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/ESDescriptor;->getURLLength()I

    move-result v14

    if-eq v13, v14, :cond_f

    .line 153
    const/4 v0, 0x0

    goto :goto_1

    .line 155
    :cond_f
    invoke-virtual {v9}, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/ESDescriptor;->getDependsOnEsId()I

    move-result v13

    invoke-virtual {v10}, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/ESDescriptor;->getDependsOnEsId()I

    move-result v14

    if-eq v13, v14, :cond_10

    .line 156
    const/4 v0, 0x0

    goto :goto_1

    .line 158
    :cond_10
    invoke-virtual {v9}, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/ESDescriptor;->getEsId()I

    move-result v13

    invoke-virtual {v10}, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/ESDescriptor;->getEsId()I

    move-result v14

    if-eq v13, v14, :cond_11

    .line 159
    const/4 v0, 0x0

    goto :goto_1

    .line 161
    :cond_11
    invoke-virtual {v9}, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/ESDescriptor;->getoCREsId()I

    move-result v13

    invoke-virtual {v10}, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/ESDescriptor;->getoCREsId()I

    move-result v14

    if-eq v13, v14, :cond_12

    .line 162
    const/4 v0, 0x0

    goto :goto_1

    .line 164
    :cond_12
    invoke-virtual {v9}, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/ESDescriptor;->getoCRstreamFlag()I

    move-result v13

    invoke-virtual {v10}, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/ESDescriptor;->getoCRstreamFlag()I

    move-result v14

    if-eq v13, v14, :cond_13

    .line 165
    const/4 v0, 0x0

    goto/16 :goto_1

    .line 167
    :cond_13
    invoke-virtual {v9}, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/ESDescriptor;->getRemoteODFlag()I

    move-result v13

    invoke-virtual {v10}, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/ESDescriptor;->getRemoteODFlag()I

    move-result v14

    if-eq v13, v14, :cond_14

    .line 168
    const/4 v0, 0x0

    goto/16 :goto_1

    .line 170
    :cond_14
    invoke-virtual {v9}, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/ESDescriptor;->getStreamDependenceFlag()I

    move-result v13

    invoke-virtual {v10}, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/ESDescriptor;->getStreamDependenceFlag()I

    move-result v14

    if-eq v13, v14, :cond_15

    .line 171
    const/4 v0, 0x0

    goto/16 :goto_1

    .line 173
    :cond_15
    invoke-virtual {v9}, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/ESDescriptor;->getStreamPriority()I

    move-result v13

    invoke-virtual {v10}, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/ESDescriptor;->getStreamPriority()I

    move-result v14

    if-eq v13, v14, :cond_16

    .line 174
    const/4 v0, 0x0

    goto/16 :goto_1

    .line 176
    :cond_16
    invoke-virtual {v9}, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/ESDescriptor;->getURLString()Ljava/lang/String;

    move-result-object v13

    if-eqz v13, :cond_18

    invoke-virtual {v9}, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/ESDescriptor;->getURLString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v10}, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/ESDescriptor;->getURLString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_19

    .line 177
    :cond_17
    const/4 v0, 0x0

    goto/16 :goto_1

    .line 176
    :cond_18
    invoke-virtual {v10}, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/ESDescriptor;->getURLString()Ljava/lang/String;

    move-result-object v13

    if-nez v13, :cond_17

    .line 179
    :cond_19
    invoke-virtual {v9}, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/ESDescriptor;->getDecoderConfigDescriptor()Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/DecoderConfigDescriptor;

    move-result-object v13

    if-eqz v13, :cond_1b

    invoke-virtual {v9}, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/ESDescriptor;->getDecoderConfigDescriptor()Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/DecoderConfigDescriptor;

    move-result-object v13

    invoke-virtual {v10}, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/ESDescriptor;->getDecoderConfigDescriptor()Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/DecoderConfigDescriptor;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_1c

    .line 180
    :cond_1a
    invoke-virtual {v9}, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/ESDescriptor;->getDecoderConfigDescriptor()Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/DecoderConfigDescriptor;

    move-result-object v7

    .line 181
    .local v7, dcd1:Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/DecoderConfigDescriptor;
    invoke-virtual {v10}, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/ESDescriptor;->getDecoderConfigDescriptor()Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/DecoderConfigDescriptor;

    move-result-object v8

    .line 182
    .local v8, dcd2:Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/DecoderConfigDescriptor;
    invoke-virtual {v7}, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/DecoderConfigDescriptor;->getAudioSpecificInfo()Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/AudioSpecificConfig;

    move-result-object v13

    invoke-virtual {v8}, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/DecoderConfigDescriptor;->getAudioSpecificInfo()Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/AudioSpecificConfig;

    move-result-object v14

    invoke-virtual {v13, v14}, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/AudioSpecificConfig;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_1e

    .line 183
    const/4 v0, 0x0

    goto/16 :goto_1

    .line 179
    .end local v7           #dcd1:Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/DecoderConfigDescriptor;
    .end local v8           #dcd2:Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/DecoderConfigDescriptor;
    :cond_1b
    invoke-virtual {v10}, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/ESDescriptor;->getDecoderConfigDescriptor()Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/DecoderConfigDescriptor;

    move-result-object v13

    if-nez v13, :cond_1a

    .line 215
    :cond_1c
    invoke-virtual {v9}, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/ESDescriptor;->getOtherDescriptors()Ljava/util/List;

    move-result-object v13

    if-eqz v13, :cond_28

    invoke-virtual {v9}, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/ESDescriptor;->getOtherDescriptors()Ljava/util/List;

    move-result-object v13

    invoke-virtual {v10}, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/ESDescriptor;->getOtherDescriptors()Ljava/util/List;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_29

    .line 216
    :cond_1d
    const/4 v0, 0x0

    goto/16 :goto_1

    .line 185
    .restart local v7       #dcd1:Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/DecoderConfigDescriptor;
    .restart local v8       #dcd2:Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/DecoderConfigDescriptor;
    :cond_1e
    invoke-virtual {v7}, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/DecoderConfigDescriptor;->getAvgBitRate()J

    move-result-wide v13

    invoke-virtual {v8}, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/DecoderConfigDescriptor;->getAvgBitRate()J

    move-result-wide v15

    cmp-long v13, v13, v15

    if-eqz v13, :cond_1f

    .line 188
    :cond_1f
    invoke-virtual {v7}, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/DecoderConfigDescriptor;->getBufferSizeDB()I

    move-result v13

    invoke-virtual {v8}, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/DecoderConfigDescriptor;->getBufferSizeDB()I

    move-result v14

    if-eq v13, v14, :cond_20

    .line 192
    :cond_20
    invoke-virtual {v7}, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/DecoderConfigDescriptor;->getDecoderSpecificInfo()Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/DecoderSpecificInfo;

    move-result-object v13

    if-eqz v13, :cond_22

    invoke-virtual {v7}, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/DecoderConfigDescriptor;->getDecoderSpecificInfo()Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/DecoderSpecificInfo;

    move-result-object v13

    invoke-virtual {v8}, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/DecoderConfigDescriptor;->getDecoderSpecificInfo()Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/DecoderSpecificInfo;

    move-result-object v14

    invoke-virtual {v13, v14}, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/DecoderSpecificInfo;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_23

    .line 193
    :cond_21
    const/4 v0, 0x0

    goto/16 :goto_1

    .line 192
    :cond_22
    invoke-virtual {v8}, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/DecoderConfigDescriptor;->getDecoderSpecificInfo()Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/DecoderSpecificInfo;

    move-result-object v13

    if-nez v13, :cond_21

    .line 196
    :cond_23
    invoke-virtual {v7}, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/DecoderConfigDescriptor;->getMaxBitRate()J

    move-result-wide v13

    invoke-virtual {v8}, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/DecoderConfigDescriptor;->getMaxBitRate()J

    move-result-wide v15

    cmp-long v13, v13, v15

    if-eqz v13, :cond_24

    .line 199
    :cond_24
    invoke-virtual {v7}, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/DecoderConfigDescriptor;->getProfileLevelIndicationDescriptors()Ljava/util/List;

    move-result-object v13

    invoke-virtual {v8}, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/DecoderConfigDescriptor;->getProfileLevelIndicationDescriptors()Ljava/util/List;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_25

    .line 200
    const/4 v0, 0x0

    goto/16 :goto_1

    .line 203
    :cond_25
    invoke-virtual {v7}, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/DecoderConfigDescriptor;->getObjectTypeIndication()I

    move-result v13

    invoke-virtual {v8}, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/DecoderConfigDescriptor;->getObjectTypeIndication()I

    move-result v14

    if-eq v13, v14, :cond_26

    .line 204
    const/4 v0, 0x0

    goto/16 :goto_1

    .line 206
    :cond_26
    invoke-virtual {v7}, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/DecoderConfigDescriptor;->getStreamType()I

    move-result v13

    invoke-virtual {v8}, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/DecoderConfigDescriptor;->getStreamType()I

    move-result v14

    if-eq v13, v14, :cond_27

    .line 207
    const/4 v0, 0x0

    goto/16 :goto_1

    .line 209
    :cond_27
    invoke-virtual {v7}, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/DecoderConfigDescriptor;->getUpStream()I

    move-result v13

    invoke-virtual {v8}, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/DecoderConfigDescriptor;->getUpStream()I

    move-result v14

    if-eq v13, v14, :cond_1c

    .line 210
    const/4 v0, 0x0

    goto/16 :goto_1

    .line 215
    .end local v7           #dcd1:Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/DecoderConfigDescriptor;
    .end local v8           #dcd2:Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/DecoderConfigDescriptor;
    :cond_28
    invoke-virtual {v10}, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/ESDescriptor;->getOtherDescriptors()Ljava/util/List;

    move-result-object v13

    if-nez v13, :cond_1d

    .line 218
    :cond_29
    invoke-virtual {v9}, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/ESDescriptor;->getSlConfigDescriptor()Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/SLConfigDescriptor;

    move-result-object v13

    if-eqz v13, :cond_2b

    invoke-virtual {v9}, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/ESDescriptor;->getSlConfigDescriptor()Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/SLConfigDescriptor;

    move-result-object v13

    invoke-virtual {v10}, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/ESDescriptor;->getSlConfigDescriptor()Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/SLConfigDescriptor;

    move-result-object v14

    invoke-virtual {v13, v14}, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/SLConfigDescriptor;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_2c

    .line 219
    :cond_2a
    const/4 v0, 0x0

    goto/16 :goto_1

    .line 218
    :cond_2b
    invoke-virtual {v10}, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/ESDescriptor;->getSlConfigDescriptor()Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/SLConfigDescriptor;

    move-result-object v13

    if-nez v13, :cond_2a

    .line 221
    :cond_2c
    invoke-virtual {v0, v5}, Lcom/coremedia/iso/boxes/sampleentry/AudioSampleEntry;->addBox(Lcom/coremedia/iso/boxes/Box;)V

    goto/16 :goto_0

    .line 228
    .end local v0           #ase:Lcom/coremedia/iso/boxes/sampleentry/AudioSampleEntry;
    .end local v1           #baos1:Ljava/io/ByteArrayOutputStream;
    .end local v2           #baos2:Ljava/io/ByteArrayOutputStream;
    .end local v3           #bxs1:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/coremedia/iso/boxes/Box;>;"
    .end local v4           #bxs2:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/coremedia/iso/boxes/Box;>;"
    .end local v5           #cur1:Lcom/coremedia/iso/boxes/Box;
    .end local v6           #cur2:Lcom/coremedia/iso/boxes/Box;
    .end local v9           #esds1:Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/ESDescriptor;
    .end local v10           #esds2:Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/ESDescriptor;
    .end local v11           #esdsBox1:Lcom/googlecode/mp4parser/boxes/mp4/ESDescriptorBox;
    .end local v12           #esdsBox2:Lcom/googlecode/mp4parser/boxes/mp4/ESDescriptorBox;
    :cond_2d
    const/4 v0, 0x0

    goto/16 :goto_1
.end method


# virtual methods
.method public getCompositionTimeEntries()Ljava/util/List;
    .locals 12
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
    const/4 v11, 0x0

    .line 275
    iget-object v10, p0, Lcom/googlecode/mp4parser/authoring/tracks/AppendTrack;->tracks:[Lcom/googlecode/mp4parser/authoring/Track;

    aget-object v10, v10, v11

    invoke-interface {v10}, Lcom/googlecode/mp4parser/authoring/Track;->getCompositionTimeEntries()Ljava/util/List;

    move-result-object v10

    if-eqz v10, :cond_4

    iget-object v10, p0, Lcom/googlecode/mp4parser/authoring/tracks/AppendTrack;->tracks:[Lcom/googlecode/mp4parser/authoring/Track;

    aget-object v10, v10, v11

    invoke-interface {v10}, Lcom/googlecode/mp4parser/authoring/Track;->getCompositionTimeEntries()Ljava/util/List;

    move-result-object v10

    invoke-interface {v10}, Ljava/util/List;->isEmpty()Z

    move-result v10

    if-nez v10, :cond_4

    .line 276
    new-instance v8, Ljava/util/LinkedList;

    invoke-direct {v8}, Ljava/util/LinkedList;-><init>()V

    .line 277
    .local v8, lists:Ljava/util/List;,"Ljava/util/List<[I>;"
    iget-object v0, p0, Lcom/googlecode/mp4parser/authoring/tracks/AppendTrack;->tracks:[Lcom/googlecode/mp4parser/authoring/Track;

    .local v0, arr$:[Lcom/googlecode/mp4parser/authoring/Track;
    array-length v6, v0

    .local v6, len$:I
    const/4 v4, 0x0

    .local v4, i$:I
    :goto_0
    if-ge v4, v6, :cond_0

    aget-object v9, v0, v4

    .line 278
    .local v9, track:Lcom/googlecode/mp4parser/authoring/Track;
    invoke-interface {v9}, Lcom/googlecode/mp4parser/authoring/Track;->getCompositionTimeEntries()Ljava/util/List;

    move-result-object v10

    invoke-static {v10}, Lcom/coremedia/iso/boxes/CompositionTimeToSample;->blowupCompositionTimes(Ljava/util/List;)[I

    move-result-object v10

    invoke-interface {v8, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 277
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 280
    .end local v9           #track:Lcom/googlecode/mp4parser/authoring/Track;
    :cond_0
    new-instance v2, Ljava/util/LinkedList;

    invoke-direct {v2}, Ljava/util/LinkedList;-><init>()V

    .line 281
    .local v2, compositionTimeEntries:Ljava/util/LinkedList;,"Ljava/util/LinkedList<Lcom/coremedia/iso/boxes/CompositionTimeToSample$Entry;>;"
    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .end local v0           #arr$:[Lcom/googlecode/mp4parser/authoring/Track;
    .end local v4           #i$:I
    :cond_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_5

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [I

    .line 282
    .local v7, list:[I
    move-object v0, v7

    .local v0, arr$:[I
    array-length v6, v0

    const/4 v5, 0x0

    .local v5, i$:I
    :goto_1
    if-ge v5, v6, :cond_1

    aget v1, v0, v5

    .line 283
    .local v1, compositionTime:I
    invoke-virtual {v2}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v10

    if-nez v10, :cond_2

    invoke-virtual {v2}, Ljava/util/LinkedList;->getLast()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/coremedia/iso/boxes/CompositionTimeToSample$Entry;

    invoke-virtual {v10}, Lcom/coremedia/iso/boxes/CompositionTimeToSample$Entry;->getOffset()I

    move-result v10

    if-eq v10, v1, :cond_3

    .line 284
    :cond_2
    new-instance v3, Lcom/coremedia/iso/boxes/CompositionTimeToSample$Entry;

    const/4 v10, 0x1

    invoke-direct {v3, v10, v1}, Lcom/coremedia/iso/boxes/CompositionTimeToSample$Entry;-><init>(II)V

    .line 285
    .local v3, e:Lcom/coremedia/iso/boxes/CompositionTimeToSample$Entry;
    invoke-virtual {v2, v3}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 282
    :goto_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 287
    .end local v3           #e:Lcom/coremedia/iso/boxes/CompositionTimeToSample$Entry;
    :cond_3
    invoke-virtual {v2}, Ljava/util/LinkedList;->getLast()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/coremedia/iso/boxes/CompositionTimeToSample$Entry;

    .line 288
    .restart local v3       #e:Lcom/coremedia/iso/boxes/CompositionTimeToSample$Entry;
    invoke-virtual {v3}, Lcom/coremedia/iso/boxes/CompositionTimeToSample$Entry;->getCount()I

    move-result v10

    add-int/lit8 v10, v10, 0x1

    invoke-virtual {v3, v10}, Lcom/coremedia/iso/boxes/CompositionTimeToSample$Entry;->setCount(I)V

    goto :goto_2

    .line 294
    .end local v0           #arr$:[I
    .end local v1           #compositionTime:I
    .end local v2           #compositionTimeEntries:Ljava/util/LinkedList;,"Ljava/util/LinkedList<Lcom/coremedia/iso/boxes/CompositionTimeToSample$Entry;>;"
    .end local v3           #e:Lcom/coremedia/iso/boxes/CompositionTimeToSample$Entry;
    .end local v5           #i$:I
    .end local v6           #len$:I
    .end local v7           #list:[I
    .end local v8           #lists:Ljava/util/List;,"Ljava/util/List<[I>;"
    :cond_4
    const/4 v2, 0x0

    :cond_5
    return-object v2
.end method

.method public getDecodingTimeEntries()Ljava/util/List;
    .locals 15
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
    const-wide/16 v13, 0x1

    const/4 v12, 0x0

    .line 250
    iget-object v11, p0, Lcom/googlecode/mp4parser/authoring/tracks/AppendTrack;->tracks:[Lcom/googlecode/mp4parser/authoring/Track;

    aget-object v11, v11, v12

    invoke-interface {v11}, Lcom/googlecode/mp4parser/authoring/Track;->getDecodingTimeEntries()Ljava/util/List;

    move-result-object v11

    if-eqz v11, :cond_4

    iget-object v11, p0, Lcom/googlecode/mp4parser/authoring/tracks/AppendTrack;->tracks:[Lcom/googlecode/mp4parser/authoring/Track;

    aget-object v11, v11, v12

    invoke-interface {v11}, Lcom/googlecode/mp4parser/authoring/Track;->getDecodingTimeEntries()Ljava/util/List;

    move-result-object v11

    invoke-interface {v11}, Ljava/util/List;->isEmpty()Z

    move-result v11

    if-nez v11, :cond_4

    .line 251
    new-instance v6, Ljava/util/LinkedList;

    invoke-direct {v6}, Ljava/util/LinkedList;-><init>()V

    .line 252
    .local v6, lists:Ljava/util/List;,"Ljava/util/List<[J>;"
    iget-object v0, p0, Lcom/googlecode/mp4parser/authoring/tracks/AppendTrack;->tracks:[Lcom/googlecode/mp4parser/authoring/Track;

    .local v0, arr$:[Lcom/googlecode/mp4parser/authoring/Track;
    array-length v4, v0

    .local v4, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_0
    if-ge v2, v4, :cond_0

    aget-object v10, v0, v2

    .line 253
    .local v10, track:Lcom/googlecode/mp4parser/authoring/Track;
    invoke-interface {v10}, Lcom/googlecode/mp4parser/authoring/Track;->getDecodingTimeEntries()Ljava/util/List;

    move-result-object v11

    invoke-static {v11}, Lcom/coremedia/iso/boxes/TimeToSampleBox;->blowupTimeToSamples(Ljava/util/List;)[J

    move-result-object v11

    invoke-interface {v6, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 252
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 256
    .end local v10           #track:Lcom/googlecode/mp4parser/authoring/Track;
    :cond_0
    new-instance v9, Ljava/util/LinkedList;

    invoke-direct {v9}, Ljava/util/LinkedList;-><init>()V

    .line 257
    .local v9, returnDecodingEntries:Ljava/util/LinkedList;,"Ljava/util/LinkedList<Lcom/coremedia/iso/boxes/TimeToSampleBox$Entry;>;"
    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .end local v0           #arr$:[Lcom/googlecode/mp4parser/authoring/Track;
    .end local v2           #i$:I
    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_5

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [J

    .line 258
    .local v5, list:[J
    move-object v0, v5

    .local v0, arr$:[J
    array-length v4, v0

    const/4 v3, 0x0

    .local v3, i$:I
    :goto_1
    if-ge v3, v4, :cond_1

    aget-wide v7, v0, v3

    .line 259
    .local v7, nuDecodingTime:J
    invoke-virtual {v9}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v11

    if-nez v11, :cond_2

    invoke-virtual {v9}, Ljava/util/LinkedList;->getLast()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/coremedia/iso/boxes/TimeToSampleBox$Entry;

    invoke-virtual {v11}, Lcom/coremedia/iso/boxes/TimeToSampleBox$Entry;->getDelta()J

    move-result-wide v11

    cmp-long v11, v11, v7

    if-eqz v11, :cond_3

    .line 260
    :cond_2
    new-instance v1, Lcom/coremedia/iso/boxes/TimeToSampleBox$Entry;

    invoke-direct {v1, v13, v14, v7, v8}, Lcom/coremedia/iso/boxes/TimeToSampleBox$Entry;-><init>(JJ)V

    .line 261
    .local v1, e:Lcom/coremedia/iso/boxes/TimeToSampleBox$Entry;
    invoke-virtual {v9, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 258
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 263
    .end local v1           #e:Lcom/coremedia/iso/boxes/TimeToSampleBox$Entry;
    :cond_3
    invoke-virtual {v9}, Ljava/util/LinkedList;->getLast()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/coremedia/iso/boxes/TimeToSampleBox$Entry;

    .line 264
    .restart local v1       #e:Lcom/coremedia/iso/boxes/TimeToSampleBox$Entry;
    invoke-virtual {v1}, Lcom/coremedia/iso/boxes/TimeToSampleBox$Entry;->getCount()J

    move-result-wide v11

    add-long/2addr v11, v13

    invoke-virtual {v1, v11, v12}, Lcom/coremedia/iso/boxes/TimeToSampleBox$Entry;->setCount(J)V

    goto :goto_2

    .line 270
    .end local v0           #arr$:[J
    .end local v1           #e:Lcom/coremedia/iso/boxes/TimeToSampleBox$Entry;
    .end local v3           #i$:I
    .end local v4           #len$:I
    .end local v5           #list:[J
    .end local v6           #lists:Ljava/util/List;,"Ljava/util/List<[J>;"
    .end local v7           #nuDecodingTime:J
    .end local v9           #returnDecodingEntries:Ljava/util/LinkedList;,"Ljava/util/LinkedList<Lcom/coremedia/iso/boxes/TimeToSampleBox$Entry;>;"
    :cond_4
    const/4 v9, 0x0

    :cond_5
    return-object v9
.end method

.method public getHandler()Ljava/lang/String;
    .locals 2

    .prologue
    .line 337
    iget-object v0, p0, Lcom/googlecode/mp4parser/authoring/tracks/AppendTrack;->tracks:[Lcom/googlecode/mp4parser/authoring/Track;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-interface {v0}, Lcom/googlecode/mp4parser/authoring/Track;->getHandler()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getMediaHeaderBox()Lcom/coremedia/iso/boxes/Box;
    .locals 2

    .prologue
    .line 341
    iget-object v0, p0, Lcom/googlecode/mp4parser/authoring/tracks/AppendTrack;->tracks:[Lcom/googlecode/mp4parser/authoring/Track;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-interface {v0}, Lcom/googlecode/mp4parser/authoring/Track;->getMediaHeaderBox()Lcom/coremedia/iso/boxes/Box;

    move-result-object v0

    return-object v0
.end method

.method public getSampleDependencies()Ljava/util/List;
    .locals 7
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
    const/4 v6, 0x0

    .line 321
    iget-object v5, p0, Lcom/googlecode/mp4parser/authoring/tracks/AppendTrack;->tracks:[Lcom/googlecode/mp4parser/authoring/Track;

    aget-object v5, v5, v6

    invoke-interface {v5}, Lcom/googlecode/mp4parser/authoring/Track;->getSampleDependencies()Ljava/util/List;

    move-result-object v5

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/googlecode/mp4parser/authoring/tracks/AppendTrack;->tracks:[Lcom/googlecode/mp4parser/authoring/Track;

    aget-object v5, v5, v6

    invoke-interface {v5}, Lcom/googlecode/mp4parser/authoring/Track;->getSampleDependencies()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_0

    .line 322
    new-instance v3, Ljava/util/LinkedList;

    invoke-direct {v3}, Ljava/util/LinkedList;-><init>()V

    .line 323
    .local v3, list:Ljava/util/List;,"Ljava/util/List<Lcom/coremedia/iso/boxes/SampleDependencyTypeBox$Entry;>;"
    iget-object v0, p0, Lcom/googlecode/mp4parser/authoring/tracks/AppendTrack;->tracks:[Lcom/googlecode/mp4parser/authoring/Track;

    .local v0, arr$:[Lcom/googlecode/mp4parser/authoring/Track;
    array-length v2, v0

    .local v2, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_0
    if-ge v1, v2, :cond_1

    aget-object v4, v0, v1

    .line 324
    .local v4, track:Lcom/googlecode/mp4parser/authoring/Track;
    invoke-interface {v4}, Lcom/googlecode/mp4parser/authoring/Track;->getSampleDependencies()Ljava/util/List;

    move-result-object v5

    invoke-interface {v3, v5}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 323
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 328
    .end local v0           #arr$:[Lcom/googlecode/mp4parser/authoring/Track;
    .end local v1           #i$:I
    .end local v2           #len$:I
    .end local v3           #list:Ljava/util/List;,"Ljava/util/List<Lcom/coremedia/iso/boxes/SampleDependencyTypeBox$Entry;>;"
    .end local v4           #track:Lcom/googlecode/mp4parser/authoring/Track;
    :cond_0
    const/4 v3, 0x0

    :cond_1
    return-object v3
.end method

.method public getSampleDescriptionBox()Lcom/coremedia/iso/boxes/SampleDescriptionBox;
    .locals 1

    .prologue
    .line 246
    iget-object v0, p0, Lcom/googlecode/mp4parser/authoring/tracks/AppendTrack;->stsd:Lcom/coremedia/iso/boxes/SampleDescriptionBox;

    return-object v0
.end method

.method public getSamples()Ljava/util/List;
    .locals 6
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
    .line 236
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 238
    .local v3, lists:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/nio/ByteBuffer;>;"
    iget-object v0, p0, Lcom/googlecode/mp4parser/authoring/tracks/AppendTrack;->tracks:[Lcom/googlecode/mp4parser/authoring/Track;

    .local v0, arr$:[Lcom/googlecode/mp4parser/authoring/Track;
    array-length v2, v0

    .local v2, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_0
    if-ge v1, v2, :cond_0

    aget-object v4, v0, v1

    .line 239
    .local v4, track:Lcom/googlecode/mp4parser/authoring/Track;
    invoke-interface {v4}, Lcom/googlecode/mp4parser/authoring/Track;->getSamples()Ljava/util/List;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 238
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 242
    .end local v4           #track:Lcom/googlecode/mp4parser/authoring/Track;
    :cond_0
    return-object v3
.end method

.method public getSubsampleInformationBox()Lcom/coremedia/iso/boxes/SubSampleInformationBox;
    .locals 2

    .prologue
    .line 345
    iget-object v0, p0, Lcom/googlecode/mp4parser/authoring/tracks/AppendTrack;->tracks:[Lcom/googlecode/mp4parser/authoring/Track;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-interface {v0}, Lcom/googlecode/mp4parser/authoring/Track;->getSubsampleInformationBox()Lcom/coremedia/iso/boxes/SubSampleInformationBox;

    move-result-object v0

    return-object v0
.end method

.method public getSyncSamples()[J
    .locals 19

    .prologue
    .line 299
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/googlecode/mp4parser/authoring/tracks/AppendTrack;->tracks:[Lcom/googlecode/mp4parser/authoring/Track;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    aget-object v17, v17, v18

    invoke-interface/range {v17 .. v17}, Lcom/googlecode/mp4parser/authoring/Track;->getSyncSamples()[J

    move-result-object v17

    if-eqz v17, :cond_2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/googlecode/mp4parser/authoring/tracks/AppendTrack;->tracks:[Lcom/googlecode/mp4parser/authoring/Track;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    aget-object v17, v17, v18

    invoke-interface/range {v17 .. v17}, Lcom/googlecode/mp4parser/authoring/Track;->getSyncSamples()[J

    move-result-object v17

    move-object/from16 v0, v17

    array-length v0, v0

    move/from16 v17, v0

    if-lez v17, :cond_2

    .line 300
    const/4 v10, 0x0

    .line 301
    .local v10, numSyncSamples:I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/googlecode/mp4parser/authoring/tracks/AppendTrack;->tracks:[Lcom/googlecode/mp4parser/authoring/Track;

    .local v2, arr$:[Lcom/googlecode/mp4parser/authoring/Track;
    array-length v8, v2

    .local v8, len$:I
    const/4 v4, 0x0

    .local v4, i$:I
    :goto_0
    if-ge v4, v8, :cond_0

    aget-object v16, v2, v4

    .line 302
    .local v16, track:Lcom/googlecode/mp4parser/authoring/Track;
    invoke-interface/range {v16 .. v16}, Lcom/googlecode/mp4parser/authoring/Track;->getSyncSamples()[J

    move-result-object v17

    move-object/from16 v0, v17

    array-length v0, v0

    move/from16 v17, v0

    add-int v10, v10, v17

    .line 301
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 304
    .end local v16           #track:Lcom/googlecode/mp4parser/authoring/Track;
    :cond_0
    new-array v13, v10, [J

    .line 306
    .local v13, returnSyncSamples:[J
    const/4 v11, 0x0

    .line 307
    .local v11, pos:I
    const-wide/16 v14, 0x0

    .line 308
    .local v14, samplesBefore:J
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/googlecode/mp4parser/authoring/tracks/AppendTrack;->tracks:[Lcom/googlecode/mp4parser/authoring/Track;

    array-length v8, v2

    const/4 v4, 0x0

    move v5, v4

    .end local v2           #arr$:[Lcom/googlecode/mp4parser/authoring/Track;
    .end local v4           #i$:I
    .end local v8           #len$:I
    .local v5, i$:I
    :goto_1
    if-ge v5, v8, :cond_3

    aget-object v16, v2, v5

    .line 309
    .restart local v16       #track:Lcom/googlecode/mp4parser/authoring/Track;
    invoke-interface/range {v16 .. v16}, Lcom/googlecode/mp4parser/authoring/Track;->getSyncSamples()[J

    move-result-object v3

    .local v3, arr$:[J
    array-length v9, v3

    .local v9, len$:I
    const/4 v4, 0x0

    .end local v5           #i$:I
    .restart local v4       #i$:I
    move v12, v11

    .end local v11           #pos:I
    .local v12, pos:I
    :goto_2
    if-ge v4, v9, :cond_1

    aget-wide v6, v3, v4

    .line 310
    .local v6, l:J
    add-int/lit8 v11, v12, 0x1

    .end local v12           #pos:I
    .restart local v11       #pos:I
    add-long v17, v14, v6

    aput-wide v17, v13, v12

    .line 309
    add-int/lit8 v4, v4, 0x1

    move v12, v11

    .end local v11           #pos:I
    .restart local v12       #pos:I
    goto :goto_2

    .line 312
    .end local v6           #l:J
    :cond_1
    invoke-interface/range {v16 .. v16}, Lcom/googlecode/mp4parser/authoring/Track;->getSamples()Ljava/util/List;

    move-result-object v17

    invoke-interface/range {v17 .. v17}, Ljava/util/List;->size()I

    move-result v17

    move/from16 v0, v17

    int-to-long v0, v0

    move-wide/from16 v17, v0

    add-long v14, v14, v17

    .line 308
    add-int/lit8 v4, v5, 0x1

    move v5, v4

    .end local v4           #i$:I
    .restart local v5       #i$:I
    move v11, v12

    .end local v12           #pos:I
    .restart local v11       #pos:I
    goto :goto_1

    .line 316
    .end local v3           #arr$:[J
    .end local v5           #i$:I
    .end local v9           #len$:I
    .end local v10           #numSyncSamples:I
    .end local v11           #pos:I
    .end local v13           #returnSyncSamples:[J
    .end local v14           #samplesBefore:J
    .end local v16           #track:Lcom/googlecode/mp4parser/authoring/Track;
    :cond_2
    const/4 v13, 0x0

    :cond_3
    return-object v13
.end method

.method public getTrackMetaData()Lcom/googlecode/mp4parser/authoring/TrackMetaData;
    .locals 2

    .prologue
    .line 333
    iget-object v0, p0, Lcom/googlecode/mp4parser/authoring/tracks/AppendTrack;->tracks:[Lcom/googlecode/mp4parser/authoring/Track;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-interface {v0}, Lcom/googlecode/mp4parser/authoring/Track;->getTrackMetaData()Lcom/googlecode/mp4parser/authoring/TrackMetaData;

    move-result-object v0

    return-object v0
.end method
