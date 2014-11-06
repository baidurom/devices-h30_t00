.class public Lcom/googlecode/mp4parser/authoring/adaptivestreaming/FlatPackageWriterImpl;
.super Ljava/lang/Object;
.source "FlatPackageWriterImpl.java"

# interfaces
.implements Lcom/googlecode/mp4parser/authoring/adaptivestreaming/PackageWriter;


# static fields
.field static final synthetic $assertionsDisabled:Z

.field private static LOG:Ljava/util/logging/Logger;


# instance fields
.field private debugOutput:Z

.field private ismvBuilder:Lcom/googlecode/mp4parser/authoring/builder/FragmentedMp4Builder;

.field manifestWriter:Lcom/googlecode/mp4parser/authoring/adaptivestreaming/ManifestWriter;

.field private outputDirectory:Ljava/io/File;

.field timeScale:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 36
    const-class v0, Lcom/googlecode/mp4parser/authoring/adaptivestreaming/FlatPackageWriterImpl;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/googlecode/mp4parser/authoring/adaptivestreaming/FlatPackageWriterImpl;->$assertionsDisabled:Z

    .line 37
    const-class v0, Lcom/googlecode/mp4parser/authoring/adaptivestreaming/FlatPackageWriterImpl;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lcom/googlecode/mp4parser/authoring/adaptivestreaming/FlatPackageWriterImpl;->LOG:Ljava/util/logging/Logger;

    return-void

    .line 36
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    .line 45
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 38
    const-wide/32 v1, 0x989680

    iput-wide v1, p0, Lcom/googlecode/mp4parser/authoring/adaptivestreaming/FlatPackageWriterImpl;->timeScale:J

    .line 46
    new-instance v1, Lcom/googlecode/mp4parser/authoring/builder/FragmentedMp4Builder;

    invoke-direct {v1}, Lcom/googlecode/mp4parser/authoring/builder/FragmentedMp4Builder;-><init>()V

    iput-object v1, p0, Lcom/googlecode/mp4parser/authoring/adaptivestreaming/FlatPackageWriterImpl;->ismvBuilder:Lcom/googlecode/mp4parser/authoring/builder/FragmentedMp4Builder;

    .line 47
    new-instance v0, Lcom/googlecode/mp4parser/authoring/builder/SyncSampleIntersectFinderImpl;

    invoke-direct {v0}, Lcom/googlecode/mp4parser/authoring/builder/SyncSampleIntersectFinderImpl;-><init>()V

    .line 48
    .local v0, intersectionFinder:Lcom/googlecode/mp4parser/authoring/builder/FragmentIntersectionFinder;
    iget-object v1, p0, Lcom/googlecode/mp4parser/authoring/adaptivestreaming/FlatPackageWriterImpl;->ismvBuilder:Lcom/googlecode/mp4parser/authoring/builder/FragmentedMp4Builder;

    invoke-virtual {v1, v0}, Lcom/googlecode/mp4parser/authoring/builder/FragmentedMp4Builder;->setIntersectionFinder(Lcom/googlecode/mp4parser/authoring/builder/FragmentIntersectionFinder;)V

    .line 49
    new-instance v1, Lcom/googlecode/mp4parser/authoring/adaptivestreaming/FlatManifestWriterImpl;

    invoke-direct {v1, v0}, Lcom/googlecode/mp4parser/authoring/adaptivestreaming/FlatManifestWriterImpl;-><init>(Lcom/googlecode/mp4parser/authoring/builder/FragmentIntersectionFinder;)V

    iput-object v1, p0, Lcom/googlecode/mp4parser/authoring/adaptivestreaming/FlatPackageWriterImpl;->manifestWriter:Lcom/googlecode/mp4parser/authoring/adaptivestreaming/ManifestWriter;

    .line 50
    return-void
.end method

.method public constructor <init>(I)V
    .locals 3
    .parameter "minFragmentDuration"

    .prologue
    .line 58
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 38
    const-wide/32 v1, 0x989680

    iput-wide v1, p0, Lcom/googlecode/mp4parser/authoring/adaptivestreaming/FlatPackageWriterImpl;->timeScale:J

    .line 59
    new-instance v1, Lcom/googlecode/mp4parser/authoring/builder/FragmentedMp4Builder;

    invoke-direct {v1}, Lcom/googlecode/mp4parser/authoring/builder/FragmentedMp4Builder;-><init>()V

    iput-object v1, p0, Lcom/googlecode/mp4parser/authoring/adaptivestreaming/FlatPackageWriterImpl;->ismvBuilder:Lcom/googlecode/mp4parser/authoring/builder/FragmentedMp4Builder;

    .line 60
    new-instance v0, Lcom/googlecode/mp4parser/authoring/builder/SyncSampleIntersectFinderImpl;

    invoke-direct {v0, p1}, Lcom/googlecode/mp4parser/authoring/builder/SyncSampleIntersectFinderImpl;-><init>(I)V

    .line 61
    .local v0, intersectionFinder:Lcom/googlecode/mp4parser/authoring/builder/FragmentIntersectionFinder;
    iget-object v1, p0, Lcom/googlecode/mp4parser/authoring/adaptivestreaming/FlatPackageWriterImpl;->ismvBuilder:Lcom/googlecode/mp4parser/authoring/builder/FragmentedMp4Builder;

    invoke-virtual {v1, v0}, Lcom/googlecode/mp4parser/authoring/builder/FragmentedMp4Builder;->setIntersectionFinder(Lcom/googlecode/mp4parser/authoring/builder/FragmentIntersectionFinder;)V

    .line 62
    new-instance v1, Lcom/googlecode/mp4parser/authoring/adaptivestreaming/FlatManifestWriterImpl;

    invoke-direct {v1, v0}, Lcom/googlecode/mp4parser/authoring/adaptivestreaming/FlatManifestWriterImpl;-><init>(Lcom/googlecode/mp4parser/authoring/builder/FragmentIntersectionFinder;)V

    iput-object v1, p0, Lcom/googlecode/mp4parser/authoring/adaptivestreaming/FlatPackageWriterImpl;->manifestWriter:Lcom/googlecode/mp4parser/authoring/adaptivestreaming/ManifestWriter;

    .line 63
    return-void
.end method

.method private removeUnknownTracks(Lcom/googlecode/mp4parser/authoring/Movie;)Lcom/googlecode/mp4parser/authoring/Movie;
    .locals 6
    .parameter "source"

    .prologue
    .line 169
    new-instance v1, Lcom/googlecode/mp4parser/authoring/Movie;

    invoke-direct {v1}, Lcom/googlecode/mp4parser/authoring/Movie;-><init>()V

    .line 170
    .local v1, nuMovie:Lcom/googlecode/mp4parser/authoring/Movie;
    invoke-virtual {p1}, Lcom/googlecode/mp4parser/authoring/Movie;->getTracks()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/googlecode/mp4parser/authoring/Track;

    .line 171
    .local v2, track:Lcom/googlecode/mp4parser/authoring/Track;
    const-string v3, "vide"

    invoke-interface {v2}, Lcom/googlecode/mp4parser/authoring/Track;->getHandler()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string v3, "soun"

    invoke-interface {v2}, Lcom/googlecode/mp4parser/authoring/Track;->getHandler()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 172
    :cond_0
    invoke-virtual {v1, v2}, Lcom/googlecode/mp4parser/authoring/Movie;->addTrack(Lcom/googlecode/mp4parser/authoring/Track;)V

    goto :goto_0

    .line 174
    :cond_1
    sget-object v3, Lcom/googlecode/mp4parser/authoring/adaptivestreaming/FlatPackageWriterImpl;->LOG:Ljava/util/logging/Logger;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Removed track "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    goto :goto_0

    .line 177
    .end local v2           #track:Lcom/googlecode/mp4parser/authoring/Track;
    :cond_2
    return-object v1
.end method


# virtual methods
.method public correctTimescale(Lcom/googlecode/mp4parser/authoring/Movie;)Lcom/googlecode/mp4parser/authoring/Movie;
    .locals 7
    .parameter "movie"

    .prologue
    .line 189
    new-instance v1, Lcom/googlecode/mp4parser/authoring/Movie;

    invoke-direct {v1}, Lcom/googlecode/mp4parser/authoring/Movie;-><init>()V

    .line 190
    .local v1, nuMovie:Lcom/googlecode/mp4parser/authoring/Movie;
    invoke-virtual {p1}, Lcom/googlecode/mp4parser/authoring/Movie;->getTracks()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/googlecode/mp4parser/authoring/Track;

    .line 191
    .local v2, track:Lcom/googlecode/mp4parser/authoring/Track;
    new-instance v3, Lcom/googlecode/mp4parser/authoring/tracks/ChangeTimeScaleTrack;

    iget-wide v4, p0, Lcom/googlecode/mp4parser/authoring/adaptivestreaming/FlatPackageWriterImpl;->timeScale:J

    iget-object v6, p0, Lcom/googlecode/mp4parser/authoring/adaptivestreaming/FlatPackageWriterImpl;->ismvBuilder:Lcom/googlecode/mp4parser/authoring/builder/FragmentedMp4Builder;

    invoke-virtual {v6}, Lcom/googlecode/mp4parser/authoring/builder/FragmentedMp4Builder;->getFragmentIntersectionFinder()Lcom/googlecode/mp4parser/authoring/builder/FragmentIntersectionFinder;

    move-result-object v6

    invoke-interface {v6, v2, p1}, Lcom/googlecode/mp4parser/authoring/builder/FragmentIntersectionFinder;->sampleNumbers(Lcom/googlecode/mp4parser/authoring/Track;Lcom/googlecode/mp4parser/authoring/Movie;)[J

    move-result-object v6

    invoke-direct {v3, v2, v4, v5, v6}, Lcom/googlecode/mp4parser/authoring/tracks/ChangeTimeScaleTrack;-><init>(Lcom/googlecode/mp4parser/authoring/Track;J[J)V

    invoke-virtual {v1, v3}, Lcom/googlecode/mp4parser/authoring/Movie;->addTrack(Lcom/googlecode/mp4parser/authoring/Track;)V

    goto :goto_0

    .line 193
    .end local v2           #track:Lcom/googlecode/mp4parser/authoring/Track;
    :cond_0
    return-object v1
.end method

.method public setDebugOutput(Z)V
    .locals 0
    .parameter "debugOutput"

    .prologue
    .line 72
    iput-boolean p1, p0, Lcom/googlecode/mp4parser/authoring/adaptivestreaming/FlatPackageWriterImpl;->debugOutput:Z

    .line 73
    return-void
.end method

.method public setIsmvBuilder(Lcom/googlecode/mp4parser/authoring/builder/FragmentedMp4Builder;)V
    .locals 2
    .parameter "ismvBuilder"

    .prologue
    .line 76
    iput-object p1, p0, Lcom/googlecode/mp4parser/authoring/adaptivestreaming/FlatPackageWriterImpl;->ismvBuilder:Lcom/googlecode/mp4parser/authoring/builder/FragmentedMp4Builder;

    .line 77
    new-instance v0, Lcom/googlecode/mp4parser/authoring/adaptivestreaming/FlatManifestWriterImpl;

    invoke-virtual {p1}, Lcom/googlecode/mp4parser/authoring/builder/FragmentedMp4Builder;->getFragmentIntersectionFinder()Lcom/googlecode/mp4parser/authoring/builder/FragmentIntersectionFinder;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/googlecode/mp4parser/authoring/adaptivestreaming/FlatManifestWriterImpl;-><init>(Lcom/googlecode/mp4parser/authoring/builder/FragmentIntersectionFinder;)V

    iput-object v0, p0, Lcom/googlecode/mp4parser/authoring/adaptivestreaming/FlatPackageWriterImpl;->manifestWriter:Lcom/googlecode/mp4parser/authoring/adaptivestreaming/ManifestWriter;

    .line 78
    return-void
.end method

.method public setManifestWriter(Lcom/googlecode/mp4parser/authoring/adaptivestreaming/ManifestWriter;)V
    .locals 0
    .parameter "manifestWriter"

    .prologue
    .line 81
    iput-object p1, p0, Lcom/googlecode/mp4parser/authoring/adaptivestreaming/FlatPackageWriterImpl;->manifestWriter:Lcom/googlecode/mp4parser/authoring/adaptivestreaming/ManifestWriter;

    .line 82
    return-void
.end method

.method public setOutputDirectory(Ljava/io/File;)V
    .locals 1
    .parameter "outputDirectory"

    .prologue
    .line 66
    sget-boolean v0, Lcom/googlecode/mp4parser/authoring/adaptivestreaming/FlatPackageWriterImpl;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    invoke-virtual {p1}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 67
    :cond_0
    iput-object p1, p0, Lcom/googlecode/mp4parser/authoring/adaptivestreaming/FlatPackageWriterImpl;->outputDirectory:Ljava/io/File;

    .line 69
    return-void
.end method

.method public write(Lcom/googlecode/mp4parser/authoring/Movie;)V
    .locals 33
    .parameter "source"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 93
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/googlecode/mp4parser/authoring/adaptivestreaming/FlatPackageWriterImpl;->debugOutput:Z

    move/from16 v30, v0

    if-eqz v30, :cond_0

    .line 94
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/googlecode/mp4parser/authoring/adaptivestreaming/FlatPackageWriterImpl;->outputDirectory:Ljava/io/File;

    move-object/from16 v30, v0

    invoke-virtual/range {v30 .. v30}, Ljava/io/File;->mkdirs()Z

    .line 95
    new-instance v12, Lcom/googlecode/mp4parser/authoring/builder/DefaultMp4Builder;

    invoke-direct {v12}, Lcom/googlecode/mp4parser/authoring/builder/DefaultMp4Builder;-><init>()V

    .line 96
    .local v12, defaultMp4Builder:Lcom/googlecode/mp4parser/authoring/builder/DefaultMp4Builder;
    move-object/from16 v0, p1

    invoke-virtual {v12, v0}, Lcom/googlecode/mp4parser/authoring/builder/DefaultMp4Builder;->build(Lcom/googlecode/mp4parser/authoring/Movie;)Lcom/coremedia/iso/IsoFile;

    move-result-object v22

    .line 97
    .local v22, muxed:Lcom/coremedia/iso/IsoFile;
    new-instance v23, Ljava/io/File;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/googlecode/mp4parser/authoring/adaptivestreaming/FlatPackageWriterImpl;->outputDirectory:Ljava/io/File;

    move-object/from16 v30, v0

    const-string v31, "debug_1_muxed.mp4"

    move-object/from16 v0, v23

    move-object/from16 v1, v30

    move-object/from16 v2, v31

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 98
    .local v23, muxedFile:Ljava/io/File;
    new-instance v24, Ljava/io/FileOutputStream;

    move-object/from16 v0, v24

    move-object/from16 v1, v23

    invoke-direct {v0, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 99
    .local v24, muxedFileOutputStream:Ljava/io/FileOutputStream;
    invoke-virtual/range {v24 .. v24}, Ljava/io/FileOutputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v30

    move-object/from16 v0, v22

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Lcom/coremedia/iso/IsoFile;->getBox(Ljava/nio/channels/WritableByteChannel;)V

    .line 100
    invoke-virtual/range {v24 .. v24}, Ljava/io/FileOutputStream;->close()V

    .line 102
    .end local v12           #defaultMp4Builder:Lcom/googlecode/mp4parser/authoring/builder/DefaultMp4Builder;
    .end local v22           #muxed:Lcom/coremedia/iso/IsoFile;
    .end local v23           #muxedFile:Ljava/io/File;
    .end local v24           #muxedFileOutputStream:Ljava/io/FileOutputStream;
    :cond_0
    invoke-direct/range {p0 .. p1}, Lcom/googlecode/mp4parser/authoring/adaptivestreaming/FlatPackageWriterImpl;->removeUnknownTracks(Lcom/googlecode/mp4parser/authoring/Movie;)Lcom/googlecode/mp4parser/authoring/Movie;

    move-result-object v9

    .line 103
    .local v9, cleanedSource:Lcom/googlecode/mp4parser/authoring/Movie;
    move-object/from16 v0, p0

    invoke-virtual {v0, v9}, Lcom/googlecode/mp4parser/authoring/adaptivestreaming/FlatPackageWriterImpl;->correctTimescale(Lcom/googlecode/mp4parser/authoring/Movie;)Lcom/googlecode/mp4parser/authoring/Movie;

    move-result-object v21

    .line 105
    .local v21, movieWithAdjustedTimescale:Lcom/googlecode/mp4parser/authoring/Movie;
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/googlecode/mp4parser/authoring/adaptivestreaming/FlatPackageWriterImpl;->debugOutput:Z

    move/from16 v30, v0

    if-eqz v30, :cond_1

    .line 106
    new-instance v12, Lcom/googlecode/mp4parser/authoring/builder/DefaultMp4Builder;

    invoke-direct {v12}, Lcom/googlecode/mp4parser/authoring/builder/DefaultMp4Builder;-><init>()V

    .line 107
    .restart local v12       #defaultMp4Builder:Lcom/googlecode/mp4parser/authoring/builder/DefaultMp4Builder;
    move-object/from16 v0, v21

    invoke-virtual {v12, v0}, Lcom/googlecode/mp4parser/authoring/builder/DefaultMp4Builder;->build(Lcom/googlecode/mp4parser/authoring/Movie;)Lcom/coremedia/iso/IsoFile;

    move-result-object v22

    .line 108
    .restart local v22       #muxed:Lcom/coremedia/iso/IsoFile;
    new-instance v23, Ljava/io/File;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/googlecode/mp4parser/authoring/adaptivestreaming/FlatPackageWriterImpl;->outputDirectory:Ljava/io/File;

    move-object/from16 v30, v0

    const-string v31, "debug_2_timescale.mp4"

    move-object/from16 v0, v23

    move-object/from16 v1, v30

    move-object/from16 v2, v31

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 109
    .restart local v23       #muxedFile:Ljava/io/File;
    new-instance v24, Ljava/io/FileOutputStream;

    move-object/from16 v0, v24

    move-object/from16 v1, v23

    invoke-direct {v0, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 110
    .restart local v24       #muxedFileOutputStream:Ljava/io/FileOutputStream;
    invoke-virtual/range {v24 .. v24}, Ljava/io/FileOutputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v30

    move-object/from16 v0, v22

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Lcom/coremedia/iso/IsoFile;->getBox(Ljava/nio/channels/WritableByteChannel;)V

    .line 111
    invoke-virtual/range {v24 .. v24}, Ljava/io/FileOutputStream;->close()V

    .line 113
    .end local v12           #defaultMp4Builder:Lcom/googlecode/mp4parser/authoring/builder/DefaultMp4Builder;
    .end local v22           #muxed:Lcom/coremedia/iso/IsoFile;
    .end local v23           #muxedFile:Ljava/io/File;
    .end local v24           #muxedFileOutputStream:Ljava/io/FileOutputStream;
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/googlecode/mp4parser/authoring/adaptivestreaming/FlatPackageWriterImpl;->ismvBuilder:Lcom/googlecode/mp4parser/authoring/builder/FragmentedMp4Builder;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/googlecode/mp4parser/authoring/builder/FragmentedMp4Builder;->build(Lcom/googlecode/mp4parser/authoring/Movie;)Lcom/coremedia/iso/IsoFile;

    move-result-object v18

    .line 114
    .local v18, isoFile:Lcom/coremedia/iso/IsoFile;
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/googlecode/mp4parser/authoring/adaptivestreaming/FlatPackageWriterImpl;->debugOutput:Z

    move/from16 v30, v0

    if-eqz v30, :cond_2

    .line 115
    new-instance v4, Ljava/io/File;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/googlecode/mp4parser/authoring/adaptivestreaming/FlatPackageWriterImpl;->outputDirectory:Ljava/io/File;

    move-object/from16 v30, v0

    const-string v31, "debug_3_fragmented.mp4"

    move-object/from16 v0, v30

    move-object/from16 v1, v31

    invoke-direct {v4, v0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 116
    .local v4, allQualities:Ljava/io/File;
    new-instance v3, Ljava/io/FileOutputStream;

    invoke-direct {v3, v4}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 117
    .local v3, allQualis:Ljava/io/FileOutputStream;
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v30

    move-object/from16 v0, v18

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Lcom/coremedia/iso/IsoFile;->getBox(Ljava/nio/channels/WritableByteChannel;)V

    .line 118
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V

    .line 122
    .end local v3           #allQualis:Ljava/io/FileOutputStream;
    .end local v4           #allQualities:Ljava/io/File;
    :cond_2
    invoke-virtual/range {v21 .. v21}, Lcom/googlecode/mp4parser/authoring/Movie;->getTracks()Ljava/util/List;

    move-result-object v30

    invoke-interface/range {v30 .. v30}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v17

    .local v17, i$:Ljava/util/Iterator;
    :cond_3
    :goto_0
    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->hasNext()Z

    move-result v30

    if-eqz v30, :cond_9

    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v27

    check-cast v27, Lcom/googlecode/mp4parser/authoring/Track;

    .line 123
    .local v27, track:Lcom/googlecode/mp4parser/authoring/Track;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/googlecode/mp4parser/authoring/adaptivestreaming/FlatPackageWriterImpl;->manifestWriter:Lcom/googlecode/mp4parser/authoring/adaptivestreaming/ManifestWriter;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    move-object/from16 v1, v27

    invoke-interface {v0, v1}, Lcom/googlecode/mp4parser/authoring/adaptivestreaming/ManifestWriter;->getBitrate(Lcom/googlecode/mp4parser/authoring/Track;)J

    move-result-wide v30

    invoke-static/range {v30 .. v31}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v7

    .line 124
    .local v7, bitrate:Ljava/lang/String;
    invoke-interface/range {v27 .. v27}, Lcom/googlecode/mp4parser/authoring/Track;->getTrackMetaData()Lcom/googlecode/mp4parser/authoring/TrackMetaData;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Lcom/googlecode/mp4parser/authoring/TrackMetaData;->getTrackId()J

    move-result-wide v28

    .line 125
    .local v28, trackId:J
    invoke-virtual/range {v18 .. v18}, Lcom/coremedia/iso/IsoFile;->getBoxes()Ljava/util/List;

    move-result-object v30

    invoke-interface/range {v30 .. v30}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    .line 127
    .local v8, boxIt:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/coremedia/iso/boxes/Box;>;"
    invoke-interface/range {v27 .. v27}, Lcom/googlecode/mp4parser/authoring/Track;->getMediaHeaderBox()Lcom/coremedia/iso/boxes/Box;

    move-result-object v30

    move-object/from16 v0, v30

    instance-of v0, v0, Lcom/coremedia/iso/boxes/SoundMediaHeaderBox;

    move/from16 v30, v0

    if-eqz v30, :cond_5

    .line 128
    new-instance v20, Ljava/io/File;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/googlecode/mp4parser/authoring/adaptivestreaming/FlatPackageWriterImpl;->outputDirectory:Ljava/io/File;

    move-object/from16 v30, v0

    const-string v31, "audio"

    move-object/from16 v0, v20

    move-object/from16 v1, v30

    move-object/from16 v2, v31

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 136
    .local v20, mediaOutDir:Ljava/io/File;
    :goto_1
    new-instance v6, Ljava/io/File;

    move-object/from16 v0, v20

    invoke-direct {v6, v0, v7}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 137
    .local v6, bitRateOutputDir:Ljava/io/File;
    invoke-virtual {v6}, Ljava/io/File;->mkdirs()Z

    .line 138
    sget-object v30, Lcom/googlecode/mp4parser/authoring/adaptivestreaming/FlatPackageWriterImpl;->LOG:Ljava/util/logging/Logger;

    new-instance v31, Ljava/lang/StringBuilder;

    invoke-direct/range {v31 .. v31}, Ljava/lang/StringBuilder;-><init>()V

    const-string v32, "Created : "

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    invoke-virtual {v6}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v32

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v31

    invoke-virtual/range {v30 .. v31}, Ljava/util/logging/Logger;->finer(Ljava/lang/String;)V

    .line 140
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/googlecode/mp4parser/authoring/adaptivestreaming/FlatPackageWriterImpl;->manifestWriter:Lcom/googlecode/mp4parser/authoring/adaptivestreaming/ManifestWriter;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    move-object/from16 v1, v27

    move-object/from16 v2, v21

    invoke-interface {v0, v1, v2}, Lcom/googlecode/mp4parser/authoring/adaptivestreaming/ManifestWriter;->calculateFragmentDurations(Lcom/googlecode/mp4parser/authoring/Track;Lcom/googlecode/mp4parser/authoring/Movie;)[J

    move-result-object v15

    .line 141
    .local v15, fragmentTimes:[J
    const-wide/16 v25, 0x0

    .line 142
    .local v25, startTime:J
    const/4 v10, 0x0

    .line 143
    .local v10, currentFragment:I
    :cond_4
    :goto_2
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v30

    if-eqz v30, :cond_3

    .line 144
    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/coremedia/iso/boxes/Box;

    .line 145
    .local v5, b:Lcom/coremedia/iso/boxes/Box;
    instance-of v0, v5, Lcom/coremedia/iso/boxes/fragment/MovieFragmentBox;

    move/from16 v30, v0

    if-eqz v30, :cond_4

    .line 146
    sget-boolean v30, Lcom/googlecode/mp4parser/authoring/adaptivestreaming/FlatPackageWriterImpl;->$assertionsDisabled:Z

    if-nez v30, :cond_7

    move-object/from16 v30, v5

    check-cast v30, Lcom/coremedia/iso/boxes/fragment/MovieFragmentBox;

    invoke-virtual/range {v30 .. v30}, Lcom/coremedia/iso/boxes/fragment/MovieFragmentBox;->getTrackCount()I

    move-result v30

    const/16 v31, 0x1

    move/from16 v0, v30

    move/from16 v1, v31

    if-eq v0, v1, :cond_7

    new-instance v30, Ljava/lang/AssertionError;

    invoke-direct/range {v30 .. v30}, Ljava/lang/AssertionError;-><init>()V

    throw v30

    .line 130
    .end local v5           #b:Lcom/coremedia/iso/boxes/Box;
    .end local v6           #bitRateOutputDir:Ljava/io/File;
    .end local v10           #currentFragment:I
    .end local v15           #fragmentTimes:[J
    .end local v20           #mediaOutDir:Ljava/io/File;
    .end local v25           #startTime:J
    :cond_5
    invoke-interface/range {v27 .. v27}, Lcom/googlecode/mp4parser/authoring/Track;->getMediaHeaderBox()Lcom/coremedia/iso/boxes/Box;

    move-result-object v30

    move-object/from16 v0, v30

    instance-of v0, v0, Lcom/coremedia/iso/boxes/VideoMediaHeaderBox;

    move/from16 v30, v0

    if-eqz v30, :cond_6

    .line 131
    new-instance v20, Ljava/io/File;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/googlecode/mp4parser/authoring/adaptivestreaming/FlatPackageWriterImpl;->outputDirectory:Ljava/io/File;

    move-object/from16 v30, v0

    const-string v31, "video"

    move-object/from16 v0, v20

    move-object/from16 v1, v30

    move-object/from16 v2, v31

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .restart local v20       #mediaOutDir:Ljava/io/File;
    goto/16 :goto_1

    .line 133
    .end local v20           #mediaOutDir:Ljava/io/File;
    :cond_6
    sget-object v30, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v31, Ljava/lang/StringBuilder;

    invoke-direct/range {v31 .. v31}, Ljava/lang/StringBuilder;-><init>()V

    const-string v32, "Skipping Track with handler "

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    invoke-interface/range {v27 .. v27}, Lcom/googlecode/mp4parser/authoring/Track;->getHandler()Ljava/lang/String;

    move-result-object v32

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    const-string v32, " and "

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    invoke-interface/range {v27 .. v27}, Lcom/googlecode/mp4parser/authoring/Track;->getMediaHeaderBox()Lcom/coremedia/iso/boxes/Box;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v32

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v31

    invoke-virtual/range {v30 .. v31}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto/16 :goto_0

    .restart local v5       #b:Lcom/coremedia/iso/boxes/Box;
    .restart local v6       #bitRateOutputDir:Ljava/io/File;
    .restart local v10       #currentFragment:I
    .restart local v15       #fragmentTimes:[J
    .restart local v20       #mediaOutDir:Ljava/io/File;
    .restart local v25       #startTime:J
    :cond_7
    move-object/from16 v30, v5

    .line 147
    check-cast v30, Lcom/coremedia/iso/boxes/fragment/MovieFragmentBox;

    invoke-virtual/range {v30 .. v30}, Lcom/coremedia/iso/boxes/fragment/MovieFragmentBox;->getTrackNumbers()[J

    move-result-object v30

    const/16 v31, 0x0

    aget-wide v30, v30, v31

    cmp-long v30, v30, v28

    if-nez v30, :cond_4

    .line 148
    new-instance v14, Ljava/io/FileOutputStream;

    new-instance v30, Ljava/io/File;

    invoke-static/range {v25 .. v26}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v31

    move-object/from16 v0, v30

    move-object/from16 v1, v31

    invoke-direct {v0, v6, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    move-object/from16 v0, v30

    invoke-direct {v14, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 149
    .local v14, fos:Ljava/io/FileOutputStream;
    add-int/lit8 v11, v10, 0x1

    .end local v10           #currentFragment:I
    .local v11, currentFragment:I
    aget-wide v30, v15, v10

    add-long v25, v25, v30

    .line 150
    invoke-virtual {v14}, Ljava/io/FileOutputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v13

    .line 151
    .local v13, fc:Ljava/nio/channels/FileChannel;
    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Lcom/coremedia/iso/boxes/Box;

    .line 152
    .local v19, mdat:Lcom/coremedia/iso/boxes/Box;
    sget-boolean v30, Lcom/googlecode/mp4parser/authoring/adaptivestreaming/FlatPackageWriterImpl;->$assertionsDisabled:Z

    if-nez v30, :cond_8

    invoke-interface/range {v19 .. v19}, Lcom/coremedia/iso/boxes/Box;->getType()Ljava/lang/String;

    move-result-object v30

    const-string v31, "mdat"

    invoke-virtual/range {v30 .. v31}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v30

    if-nez v30, :cond_8

    new-instance v30, Ljava/lang/AssertionError;

    invoke-direct/range {v30 .. v30}, Ljava/lang/AssertionError;-><init>()V

    throw v30

    .line 153
    :cond_8
    invoke-interface {v5, v13}, Lcom/coremedia/iso/boxes/Box;->getBox(Ljava/nio/channels/WritableByteChannel;)V

    .line 154
    move-object/from16 v0, v19

    invoke-interface {v0, v13}, Lcom/coremedia/iso/boxes/Box;->getBox(Ljava/nio/channels/WritableByteChannel;)V

    .line 155
    invoke-virtual {v13}, Ljava/nio/channels/FileChannel;->position()J

    move-result-wide v30

    move-wide/from16 v0, v30

    invoke-virtual {v13, v0, v1}, Ljava/nio/channels/FileChannel;->truncate(J)Ljava/nio/channels/FileChannel;

    .line 156
    invoke-virtual {v13}, Ljava/nio/channels/FileChannel;->close()V

    move v10, v11

    .end local v11           #currentFragment:I
    .restart local v10       #currentFragment:I
    goto/16 :goto_2

    .line 162
    .end local v5           #b:Lcom/coremedia/iso/boxes/Box;
    .end local v6           #bitRateOutputDir:Ljava/io/File;
    .end local v7           #bitrate:Ljava/lang/String;
    .end local v8           #boxIt:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/coremedia/iso/boxes/Box;>;"
    .end local v10           #currentFragment:I
    .end local v13           #fc:Ljava/nio/channels/FileChannel;
    .end local v14           #fos:Ljava/io/FileOutputStream;
    .end local v15           #fragmentTimes:[J
    .end local v19           #mdat:Lcom/coremedia/iso/boxes/Box;
    .end local v20           #mediaOutDir:Ljava/io/File;
    .end local v25           #startTime:J
    .end local v27           #track:Lcom/googlecode/mp4parser/authoring/Track;
    .end local v28           #trackId:J
    :cond_9
    new-instance v16, Ljava/io/FileWriter;

    new-instance v30, Ljava/io/File;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/googlecode/mp4parser/authoring/adaptivestreaming/FlatPackageWriterImpl;->outputDirectory:Ljava/io/File;

    move-object/from16 v31, v0

    const-string v32, "Manifest"

    invoke-direct/range {v30 .. v32}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    move-object/from16 v0, v16

    move-object/from16 v1, v30

    invoke-direct {v0, v1}, Ljava/io/FileWriter;-><init>(Ljava/io/File;)V

    .line 163
    .local v16, fw:Ljava/io/FileWriter;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/googlecode/mp4parser/authoring/adaptivestreaming/FlatPackageWriterImpl;->manifestWriter:Lcom/googlecode/mp4parser/authoring/adaptivestreaming/ManifestWriter;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    move-object/from16 v1, v21

    invoke-interface {v0, v1}, Lcom/googlecode/mp4parser/authoring/adaptivestreaming/ManifestWriter;->getManifest(Lcom/googlecode/mp4parser/authoring/Movie;)Ljava/lang/String;

    move-result-object v30

    move-object/from16 v0, v16

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Ljava/io/FileWriter;->write(Ljava/lang/String;)V

    .line 164
    invoke-virtual/range {v16 .. v16}, Ljava/io/FileWriter;->close()V

    .line 166
    return-void
.end method
