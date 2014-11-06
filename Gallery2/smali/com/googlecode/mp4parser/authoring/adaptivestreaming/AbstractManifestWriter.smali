.class public abstract Lcom/googlecode/mp4parser/authoring/adaptivestreaming/AbstractManifestWriter;
.super Ljava/lang/Object;
.source "AbstractManifestWriter.java"

# interfaces
.implements Lcom/googlecode/mp4parser/authoring/adaptivestreaming/ManifestWriter;


# static fields
.field private static final LOG:Ljava/util/logging/Logger;


# instance fields
.field protected audioFragmentsDurations:[J

.field private intersectionFinder:Lcom/googlecode/mp4parser/authoring/builder/FragmentIntersectionFinder;

.field protected videoFragmentsDurations:[J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 25
    const-class v0, Lcom/googlecode/mp4parser/authoring/adaptivestreaming/AbstractManifestWriter;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lcom/googlecode/mp4parser/authoring/adaptivestreaming/AbstractManifestWriter;->LOG:Ljava/util/logging/Logger;

    return-void
.end method

.method protected constructor <init>(Lcom/googlecode/mp4parser/authoring/builder/FragmentIntersectionFinder;)V
    .locals 0
    .parameter "intersectionFinder"

    .prologue
    .line 31
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 32
    iput-object p1, p0, Lcom/googlecode/mp4parser/authoring/adaptivestreaming/AbstractManifestWriter;->intersectionFinder:Lcom/googlecode/mp4parser/authoring/builder/FragmentIntersectionFinder;

    .line 33
    return-void
.end method

.method protected static getDuration(Lcom/googlecode/mp4parser/authoring/Track;)J
    .locals 8
    .parameter "track"

    .prologue
    .line 76
    const-wide/16 v0, 0x0

    .line 77
    .local v0, duration:J
    invoke-interface {p0}, Lcom/googlecode/mp4parser/authoring/Track;->getDecodingTimeEntries()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/coremedia/iso/boxes/TimeToSampleBox$Entry;

    .line 78
    .local v2, entry:Lcom/coremedia/iso/boxes/TimeToSampleBox$Entry;
    invoke-virtual {v2}, Lcom/coremedia/iso/boxes/TimeToSampleBox$Entry;->getCount()J

    move-result-wide v4

    invoke-virtual {v2}, Lcom/coremedia/iso/boxes/TimeToSampleBox$Entry;->getDelta()J

    move-result-wide v6

    mul-long/2addr v4, v6

    add-long/2addr v0, v4

    goto :goto_0

    .line 80
    .end local v2           #entry:Lcom/coremedia/iso/boxes/TimeToSampleBox$Entry;
    :cond_0
    return-wide v0
.end method


# virtual methods
.method public calculateFragmentDurations(Lcom/googlecode/mp4parser/authoring/Track;Lcom/googlecode/mp4parser/authoring/Movie;)[J
    .locals 11
    .parameter "track"
    .parameter "movie"

    .prologue
    .line 43
    iget-object v7, p0, Lcom/googlecode/mp4parser/authoring/adaptivestreaming/AbstractManifestWriter;->intersectionFinder:Lcom/googlecode/mp4parser/authoring/builder/FragmentIntersectionFinder;

    invoke-interface {v7, p1, p2}, Lcom/googlecode/mp4parser/authoring/builder/FragmentIntersectionFinder;->sampleNumbers(Lcom/googlecode/mp4parser/authoring/Track;Lcom/googlecode/mp4parser/authoring/Movie;)[J

    move-result-object v6

    .line 44
    .local v6, startSamples:[J
    array-length v7, v6

    new-array v2, v7, [J

    .line 45
    .local v2, durations:[J
    const/4 v0, 0x0

    .line 46
    .local v0, currentFragment:I
    const/4 v1, 0x1

    .line 48
    .local v1, currentSample:I
    invoke-interface {p1}, Lcom/googlecode/mp4parser/authoring/Track;->getDecodingTimeEntries()Ljava/util/List;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/coremedia/iso/boxes/TimeToSampleBox$Entry;

    .line 49
    .local v3, entry:Lcom/coremedia/iso/boxes/TimeToSampleBox$Entry;
    invoke-virtual {v3}, Lcom/coremedia/iso/boxes/TimeToSampleBox$Entry;->getCount()J

    move-result-wide v7

    invoke-static {v7, v8}, Lcom/googlecode/mp4parser/util/CastUtils;->l2i(J)I

    move-result v7

    add-int v5, v1, v7

    .local v5, max:I
    :goto_0
    if-ge v1, v5, :cond_0

    .line 52
    array-length v7, v6

    add-int/lit8 v7, v7, -0x1

    if-eq v0, v7, :cond_1

    int-to-long v7, v1

    add-int/lit8 v9, v0, 0x1

    aget-wide v9, v6, v9

    cmp-long v7, v7, v9

    if-nez v7, :cond_1

    .line 54
    add-int/lit8 v0, v0, 0x1

    .line 56
    :cond_1
    aget-wide v7, v2, v0

    invoke-virtual {v3}, Lcom/coremedia/iso/boxes/TimeToSampleBox$Entry;->getDelta()J

    move-result-wide v9

    add-long/2addr v7, v9

    aput-wide v7, v2, v0

    .line 49
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 61
    .end local v3           #entry:Lcom/coremedia/iso/boxes/TimeToSampleBox$Entry;
    .end local v5           #max:I
    :cond_2
    return-object v2
.end method

.method protected checkFragmentsAlign([J[J)[J
    .locals 13
    .parameter "referenceTimes"
    .parameter "checkTimes"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 85
    if-eqz p1, :cond_0

    array-length v8, p1

    if-nez v8, :cond_1

    .line 114
    :cond_0
    return-object p2

    .line 88
    :cond_1
    array-length v8, p1

    add-int/lit8 v8, v8, -0x1

    new-array v7, v8, [J

    .line 89
    .local v7, referenceTimesMinusLast:[J
    const/4 v8, 0x0

    const/4 v9, 0x0

    array-length v10, p1

    add-int/lit8 v10, v10, -0x1

    invoke-static {p1, v8, v7, v9, v10}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 90
    array-length v8, p2

    add-int/lit8 v8, v8, -0x1

    new-array v1, v8, [J

    .line 91
    .local v1, checkTimesMinusLast:[J
    const/4 v8, 0x0

    const/4 v9, 0x0

    array-length v10, p2

    add-int/lit8 v10, v10, -0x1

    invoke-static {p2, v8, v1, v9, v10}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 93
    invoke-static {v1, v7}, Ljava/util/Arrays;->equals([J[J)Z

    move-result v8

    if-nez v8, :cond_0

    .line 94
    const-string v6, ""

    .line 95
    .local v6, log:Ljava/lang/String;
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    array-length v9, p1

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 96
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "Reference     :  ["

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 97
    move-object v0, p1

    .local v0, arr$:[J
    array-length v5, v0

    .local v5, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_0
    if-ge v2, v5, :cond_2

    aget-wide v3, v0, v2

    .line 98
    .local v3, l:J
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "%10d,"

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    aput-object v12, v10, v11

    invoke-static {v9, v10}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 97
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 100
    .end local v3           #l:J
    :cond_2
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "]"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 101
    sget-object v8, Lcom/googlecode/mp4parser/authoring/adaptivestreaming/AbstractManifestWriter;->LOG:Ljava/util/logging/Logger;

    invoke-virtual {v8, v6}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V

    .line 102
    const-string v6, ""

    .line 104
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    array-length v9, p2

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 105
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "Current       :  ["

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 106
    move-object v0, p2

    array-length v5, v0

    const/4 v2, 0x0

    :goto_1
    if-ge v2, v5, :cond_3

    aget-wide v3, v0, v2

    .line 107
    .restart local v3       #l:J
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "%10d,"

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    aput-object v12, v10, v11

    invoke-static {v9, v10}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 106
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 109
    .end local v3           #l:J
    :cond_3
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "]"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 110
    sget-object v8, Lcom/googlecode/mp4parser/authoring/adaptivestreaming/AbstractManifestWriter;->LOG:Ljava/util/logging/Logger;

    invoke-virtual {v8, v6}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V

    .line 111
    new-instance v8, Ljava/io/IOException;

    const-string v9, "Track does not have the same fragment borders as its predecessor."

    invoke-direct {v8, v9}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v8
.end method

.method public getBitrate(Lcom/googlecode/mp4parser/authoring/Track;)J
    .locals 10
    .parameter "track"

    .prologue
    .line 66
    const-wide/16 v0, 0x0

    .line 67
    .local v0, bitrate:J
    invoke-interface {p1}, Lcom/googlecode/mp4parser/authoring/Track;->getSamples()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/nio/ByteBuffer;

    .line 68
    .local v3, sample:Ljava/nio/ByteBuffer;
    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->limit()I

    move-result v4

    int-to-long v4, v4

    add-long/2addr v0, v4

    goto :goto_0

    .line 70
    .end local v3           #sample:Ljava/nio/ByteBuffer;
    :cond_0
    const-wide/16 v4, 0x8

    mul-long/2addr v0, v4

    .line 71
    long-to-double v4, v0

    invoke-static {p1}, Lcom/googlecode/mp4parser/authoring/adaptivestreaming/AbstractManifestWriter;->getDuration(Lcom/googlecode/mp4parser/authoring/Track;)J

    move-result-wide v6

    long-to-double v6, v6

    invoke-interface {p1}, Lcom/googlecode/mp4parser/authoring/Track;->getTrackMetaData()Lcom/googlecode/mp4parser/authoring/TrackMetaData;

    move-result-object v8

    invoke-virtual {v8}, Lcom/googlecode/mp4parser/authoring/TrackMetaData;->getTimescale()J

    move-result-wide v8

    long-to-double v8, v8

    div-double/2addr v6, v8

    div-double/2addr v4, v6

    double-to-long v0, v4

    .line 72
    return-wide v0
.end method

.method protected getFormat(Lcom/coremedia/iso/boxes/sampleentry/SampleEntry;)Ljava/lang/String;
    .locals 4
    .parameter "se"

    .prologue
    .line 119
    invoke-virtual {p1}, Lcom/coremedia/iso/boxes/sampleentry/SampleEntry;->getType()Ljava/lang/String;

    move-result-object v1

    .line 120
    .local v1, type:Ljava/lang/String;
    const-string v2, "encv"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "enca"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "encv"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 121
    :cond_0
    const-class v2, Lcom/coremedia/iso/boxes/OriginalFormatBox;

    const/4 v3, 0x1

    invoke-virtual {p1, v2, v3}, Lcom/coremedia/iso/boxes/sampleentry/SampleEntry;->getBoxes(Ljava/lang/Class;Z)Ljava/util/List;

    move-result-object v2

    const/4 v3, 0x0

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/coremedia/iso/boxes/OriginalFormatBox;

    .line 122
    .local v0, frma:Lcom/coremedia/iso/boxes/OriginalFormatBox;
    invoke-virtual {v0}, Lcom/coremedia/iso/boxes/OriginalFormatBox;->getDataFormat()Ljava/lang/String;

    move-result-object v1

    .line 124
    .end local v0           #frma:Lcom/coremedia/iso/boxes/OriginalFormatBox;
    :cond_1
    return-object v1
.end method
