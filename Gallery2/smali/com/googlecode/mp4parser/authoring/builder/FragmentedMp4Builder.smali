.class public Lcom/googlecode/mp4parser/authoring/builder/FragmentedMp4Builder;
.super Ljava/lang/Object;
.source "FragmentedMp4Builder.java"

# interfaces
.implements Lcom/googlecode/mp4parser/authoring/builder/Mp4Builder;


# static fields
.field private static final LOG:Ljava/util/logging/Logger;


# instance fields
.field protected intersectionFinder:Lcom/googlecode/mp4parser/authoring/builder/FragmentIntersectionFinder;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 41
    const-class v0, Lcom/googlecode/mp4parser/authoring/builder/FragmentedMp4Builder;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lcom/googlecode/mp4parser/authoring/builder/FragmentedMp4Builder;->LOG:Ljava/util/logging/Logger;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 45
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 46
    new-instance v0, Lcom/googlecode/mp4parser/authoring/builder/SyncSampleIntersectFinderImpl;

    invoke-direct {v0}, Lcom/googlecode/mp4parser/authoring/builder/SyncSampleIntersectFinderImpl;-><init>()V

    iput-object v0, p0, Lcom/googlecode/mp4parser/authoring/builder/FragmentedMp4Builder;->intersectionFinder:Lcom/googlecode/mp4parser/authoring/builder/FragmentIntersectionFinder;

    .line 47
    return-void
.end method

.method private getTrackDuration(Lcom/googlecode/mp4parser/authoring/Movie;Lcom/googlecode/mp4parser/authoring/Track;)J
    .locals 4
    .parameter "movie"
    .parameter "track"

    .prologue
    .line 659
    invoke-virtual {p0, p2}, Lcom/googlecode/mp4parser/authoring/builder/FragmentedMp4Builder;->getDuration(Lcom/googlecode/mp4parser/authoring/Track;)J

    move-result-wide v0

    invoke-virtual {p1}, Lcom/googlecode/mp4parser/authoring/Movie;->getTimescale()J

    move-result-wide v2

    mul-long/2addr v0, v2

    invoke-interface {p2}, Lcom/googlecode/mp4parser/authoring/Track;->getTrackMetaData()Lcom/googlecode/mp4parser/authoring/TrackMetaData;

    move-result-object v2

    invoke-virtual {v2}, Lcom/googlecode/mp4parser/authoring/TrackMetaData;->getTimescale()J

    move-result-wide v2

    div-long/2addr v0, v2

    return-wide v0
.end method


# virtual methods
.method public build(Lcom/googlecode/mp4parser/authoring/Movie;)Lcom/coremedia/iso/IsoFile;
    .locals 6
    .parameter "movie"

    .prologue
    .line 157
    sget-object v3, Lcom/googlecode/mp4parser/authoring/builder/FragmentedMp4Builder;->LOG:Ljava/util/logging/Logger;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Creating movie "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 158
    new-instance v2, Lcom/coremedia/iso/IsoFile;

    invoke-direct {v2}, Lcom/coremedia/iso/IsoFile;-><init>()V

    .line 161
    .local v2, isoFile:Lcom/coremedia/iso/IsoFile;
    invoke-virtual {p0, p1}, Lcom/googlecode/mp4parser/authoring/builder/FragmentedMp4Builder;->createFtyp(Lcom/googlecode/mp4parser/authoring/Movie;)Lcom/coremedia/iso/boxes/Box;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/coremedia/iso/IsoFile;->addBox(Lcom/coremedia/iso/boxes/Box;)V

    .line 162
    invoke-virtual {p0, p1}, Lcom/googlecode/mp4parser/authoring/builder/FragmentedMp4Builder;->createMoov(Lcom/googlecode/mp4parser/authoring/Movie;)Lcom/coremedia/iso/boxes/Box;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/coremedia/iso/IsoFile;->addBox(Lcom/coremedia/iso/boxes/Box;)V

    .line 164
    invoke-virtual {p0, p1}, Lcom/googlecode/mp4parser/authoring/builder/FragmentedMp4Builder;->createMoofMdat(Lcom/googlecode/mp4parser/authoring/Movie;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/coremedia/iso/boxes/Box;

    .line 165
    .local v0, box:Lcom/coremedia/iso/boxes/Box;
    invoke-virtual {v2, v0}, Lcom/coremedia/iso/IsoFile;->addBox(Lcom/coremedia/iso/boxes/Box;)V

    goto :goto_0

    .line 167
    .end local v0           #box:Lcom/coremedia/iso/boxes/Box;
    :cond_0
    invoke-virtual {p0, p1, v2}, Lcom/googlecode/mp4parser/authoring/builder/FragmentedMp4Builder;->createMfra(Lcom/googlecode/mp4parser/authoring/Movie;Lcom/coremedia/iso/IsoFile;)Lcom/coremedia/iso/boxes/Box;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/coremedia/iso/IsoFile;->addBox(Lcom/coremedia/iso/boxes/Box;)V

    .line 169
    return-object v2
.end method

.method protected createDinf(Lcom/googlecode/mp4parser/authoring/Movie;Lcom/googlecode/mp4parser/authoring/Track;)Lcom/coremedia/iso/boxes/DataInformationBox;
    .locals 4
    .parameter "movie"
    .parameter "track"

    .prologue
    .line 716
    new-instance v0, Lcom/coremedia/iso/boxes/DataInformationBox;

    invoke-direct {v0}, Lcom/coremedia/iso/boxes/DataInformationBox;-><init>()V

    .line 717
    .local v0, dinf:Lcom/coremedia/iso/boxes/DataInformationBox;
    new-instance v1, Lcom/coremedia/iso/boxes/DataReferenceBox;

    invoke-direct {v1}, Lcom/coremedia/iso/boxes/DataReferenceBox;-><init>()V

    .line 718
    .local v1, dref:Lcom/coremedia/iso/boxes/DataReferenceBox;
    invoke-virtual {v0, v1}, Lcom/coremedia/iso/boxes/DataInformationBox;->addBox(Lcom/coremedia/iso/boxes/Box;)V

    .line 719
    new-instance v2, Lcom/coremedia/iso/boxes/DataEntryUrlBox;

    invoke-direct {v2}, Lcom/coremedia/iso/boxes/DataEntryUrlBox;-><init>()V

    .line 720
    .local v2, url:Lcom/coremedia/iso/boxes/DataEntryUrlBox;
    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/coremedia/iso/boxes/DataEntryUrlBox;->setFlags(I)V

    .line 721
    invoke-virtual {v1, v2}, Lcom/coremedia/iso/boxes/DataReferenceBox;->addBox(Lcom/coremedia/iso/boxes/Box;)V

    .line 722
    return-object v0
.end method

.method public createFtyp(Lcom/googlecode/mp4parser/authoring/Movie;)Lcom/coremedia/iso/boxes/Box;
    .locals 5
    .parameter "movie"

    .prologue
    .line 54
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    .line 55
    .local v0, minorBrands:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    const-string v1, "isom"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 56
    const-string v1, "iso2"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 57
    const-string v1, "avc1"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 58
    new-instance v1, Lcom/coremedia/iso/boxes/FileTypeBox;

    const-string v2, "isom"

    const-wide/16 v3, 0x0

    invoke-direct {v1, v2, v3, v4, v0}, Lcom/coremedia/iso/boxes/FileTypeBox;-><init>(Ljava/lang/String;JLjava/util/List;)V

    return-object v1
.end method

.method protected createMdat(JJLcom/googlecode/mp4parser/authoring/Track;I)Lcom/coremedia/iso/boxes/Box;
    .locals 8
    .parameter "startSample"
    .parameter "endSample"
    .parameter "track"
    .parameter "i"

    .prologue
    .line 235
    new-instance v0, Lcom/googlecode/mp4parser/authoring/builder/FragmentedMp4Builder$1Mdat;

    move-object v1, p0

    move-wide v2, p1

    move-wide v4, p3

    move-object v6, p5

    move v7, p6

    invoke-direct/range {v0 .. v7}, Lcom/googlecode/mp4parser/authoring/builder/FragmentedMp4Builder$1Mdat;-><init>(Lcom/googlecode/mp4parser/authoring/builder/FragmentedMp4Builder;JJLcom/googlecode/mp4parser/authoring/Track;I)V

    return-object v0
.end method

.method protected createMdhd(Lcom/googlecode/mp4parser/authoring/Movie;Lcom/googlecode/mp4parser/authoring/Track;)Lcom/coremedia/iso/boxes/Box;
    .locals 3
    .parameter "movie"
    .parameter "track"

    .prologue
    .line 663
    new-instance v0, Lcom/coremedia/iso/boxes/MediaHeaderBox;

    invoke-direct {v0}, Lcom/coremedia/iso/boxes/MediaHeaderBox;-><init>()V

    .line 664
    .local v0, mdhd:Lcom/coremedia/iso/boxes/MediaHeaderBox;
    invoke-interface {p2}, Lcom/googlecode/mp4parser/authoring/Track;->getTrackMetaData()Lcom/googlecode/mp4parser/authoring/TrackMetaData;

    move-result-object v1

    invoke-virtual {v1}, Lcom/googlecode/mp4parser/authoring/TrackMetaData;->getCreationTime()Ljava/util/Date;

    move-result-object v1

    invoke-static {v1}, Lcom/googlecode/mp4parser/authoring/DateHelper;->convert(Ljava/util/Date;)J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/coremedia/iso/boxes/MediaHeaderBox;->setCreationTime(J)V

    .line 665
    invoke-virtual {p0, p2}, Lcom/googlecode/mp4parser/authoring/builder/FragmentedMp4Builder;->getDuration(Lcom/googlecode/mp4parser/authoring/Track;)J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/coremedia/iso/boxes/MediaHeaderBox;->setDuration(J)V

    .line 666
    invoke-interface {p2}, Lcom/googlecode/mp4parser/authoring/Track;->getTrackMetaData()Lcom/googlecode/mp4parser/authoring/TrackMetaData;

    move-result-object v1

    invoke-virtual {v1}, Lcom/googlecode/mp4parser/authoring/TrackMetaData;->getTimescale()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/coremedia/iso/boxes/MediaHeaderBox;->setTimescale(J)V

    .line 667
    invoke-interface {p2}, Lcom/googlecode/mp4parser/authoring/Track;->getTrackMetaData()Lcom/googlecode/mp4parser/authoring/TrackMetaData;

    move-result-object v1

    invoke-virtual {v1}, Lcom/googlecode/mp4parser/authoring/TrackMetaData;->getLanguage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/coremedia/iso/boxes/MediaHeaderBox;->setLanguage(Ljava/lang/String;)V

    .line 668
    return-object v0
.end method

.method protected createMdia(Lcom/googlecode/mp4parser/authoring/Track;Lcom/googlecode/mp4parser/authoring/Movie;)Lcom/coremedia/iso/boxes/Box;
    .locals 2
    .parameter "track"
    .parameter "movie"

    .prologue
    .line 696
    new-instance v0, Lcom/coremedia/iso/boxes/MediaBox;

    invoke-direct {v0}, Lcom/coremedia/iso/boxes/MediaBox;-><init>()V

    .line 697
    .local v0, mdia:Lcom/coremedia/iso/boxes/MediaBox;
    invoke-virtual {p0, p2, p1}, Lcom/googlecode/mp4parser/authoring/builder/FragmentedMp4Builder;->createMdhd(Lcom/googlecode/mp4parser/authoring/Movie;Lcom/googlecode/mp4parser/authoring/Track;)Lcom/coremedia/iso/boxes/Box;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/coremedia/iso/boxes/MediaBox;->addBox(Lcom/coremedia/iso/boxes/Box;)V

    .line 700
    invoke-virtual {p0, p1, p2}, Lcom/googlecode/mp4parser/authoring/builder/FragmentedMp4Builder;->createMdiaHdlr(Lcom/googlecode/mp4parser/authoring/Track;Lcom/googlecode/mp4parser/authoring/Movie;)Lcom/coremedia/iso/boxes/Box;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/coremedia/iso/boxes/MediaBox;->addBox(Lcom/coremedia/iso/boxes/Box;)V

    .line 703
    invoke-virtual {p0, p1, p2}, Lcom/googlecode/mp4parser/authoring/builder/FragmentedMp4Builder;->createMinf(Lcom/googlecode/mp4parser/authoring/Track;Lcom/googlecode/mp4parser/authoring/Movie;)Lcom/coremedia/iso/boxes/Box;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/coremedia/iso/boxes/MediaBox;->addBox(Lcom/coremedia/iso/boxes/Box;)V

    .line 704
    return-object v0
.end method

.method protected createMdiaHdlr(Lcom/googlecode/mp4parser/authoring/Track;Lcom/googlecode/mp4parser/authoring/Movie;)Lcom/coremedia/iso/boxes/Box;
    .locals 2
    .parameter "track"
    .parameter "movie"

    .prologue
    .line 690
    new-instance v0, Lcom/coremedia/iso/boxes/HandlerBox;

    invoke-direct {v0}, Lcom/coremedia/iso/boxes/HandlerBox;-><init>()V

    .line 691
    .local v0, hdlr:Lcom/coremedia/iso/boxes/HandlerBox;
    invoke-interface {p1}, Lcom/googlecode/mp4parser/authoring/Track;->getHandler()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/coremedia/iso/boxes/HandlerBox;->setHandlerType(Ljava/lang/String;)V

    .line 692
    return-object v0
.end method

.method protected createMfhd(JJLcom/googlecode/mp4parser/authoring/Track;I)Lcom/coremedia/iso/boxes/Box;
    .locals 3
    .parameter "startSample"
    .parameter "endSample"
    .parameter "track"
    .parameter "sequenceNumber"

    .prologue
    .line 249
    new-instance v0, Lcom/coremedia/iso/boxes/fragment/MovieFragmentHeaderBox;

    invoke-direct {v0}, Lcom/coremedia/iso/boxes/fragment/MovieFragmentHeaderBox;-><init>()V

    .line 250
    .local v0, mfhd:Lcom/coremedia/iso/boxes/fragment/MovieFragmentHeaderBox;
    int-to-long v1, p6

    invoke-virtual {v0, v1, v2}, Lcom/coremedia/iso/boxes/fragment/MovieFragmentHeaderBox;->setSequenceNumber(J)V

    .line 251
    return-object v0
.end method

.method protected createMfra(Lcom/googlecode/mp4parser/authoring/Movie;Lcom/coremedia/iso/IsoFile;)Lcom/coremedia/iso/boxes/Box;
    .locals 6
    .parameter "movie"
    .parameter "isoFile"

    .prologue
    .line 569
    new-instance v1, Lcom/coremedia/iso/boxes/fragment/MovieFragmentRandomAccessBox;

    invoke-direct {v1}, Lcom/coremedia/iso/boxes/fragment/MovieFragmentRandomAccessBox;-><init>()V

    .line 570
    .local v1, mfra:Lcom/coremedia/iso/boxes/fragment/MovieFragmentRandomAccessBox;
    invoke-virtual {p1}, Lcom/googlecode/mp4parser/authoring/Movie;->getTracks()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/googlecode/mp4parser/authoring/Track;

    .line 571
    .local v3, track:Lcom/googlecode/mp4parser/authoring/Track;
    invoke-virtual {p0, v3, p2}, Lcom/googlecode/mp4parser/authoring/builder/FragmentedMp4Builder;->createTfra(Lcom/googlecode/mp4parser/authoring/Track;Lcom/coremedia/iso/IsoFile;)Lcom/coremedia/iso/boxes/Box;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/coremedia/iso/boxes/fragment/MovieFragmentRandomAccessBox;->addBox(Lcom/coremedia/iso/boxes/Box;)V

    goto :goto_0

    .line 574
    .end local v3           #track:Lcom/googlecode/mp4parser/authoring/Track;
    :cond_0
    new-instance v2, Lcom/coremedia/iso/boxes/fragment/MovieFragmentRandomAccessOffsetBox;

    invoke-direct {v2}, Lcom/coremedia/iso/boxes/fragment/MovieFragmentRandomAccessOffsetBox;-><init>()V

    .line 575
    .local v2, mfro:Lcom/coremedia/iso/boxes/fragment/MovieFragmentRandomAccessOffsetBox;
    invoke-virtual {v1, v2}, Lcom/coremedia/iso/boxes/fragment/MovieFragmentRandomAccessBox;->addBox(Lcom/coremedia/iso/boxes/Box;)V

    .line 576
    invoke-virtual {v1}, Lcom/coremedia/iso/boxes/fragment/MovieFragmentRandomAccessBox;->getSize()J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Lcom/coremedia/iso/boxes/fragment/MovieFragmentRandomAccessOffsetBox;->setMfraSize(J)V

    .line 577
    return-object v1
.end method

.method protected createMinf(Lcom/googlecode/mp4parser/authoring/Track;Lcom/googlecode/mp4parser/authoring/Movie;)Lcom/coremedia/iso/boxes/Box;
    .locals 2
    .parameter "track"
    .parameter "movie"

    .prologue
    .line 682
    new-instance v0, Lcom/coremedia/iso/boxes/MediaInformationBox;

    invoke-direct {v0}, Lcom/coremedia/iso/boxes/MediaInformationBox;-><init>()V

    .line 683
    .local v0, minf:Lcom/coremedia/iso/boxes/MediaInformationBox;
    invoke-interface {p1}, Lcom/googlecode/mp4parser/authoring/Track;->getMediaHeaderBox()Lcom/coremedia/iso/boxes/Box;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/coremedia/iso/boxes/MediaInformationBox;->addBox(Lcom/coremedia/iso/boxes/Box;)V

    .line 684
    invoke-virtual {p0, p2, p1}, Lcom/googlecode/mp4parser/authoring/builder/FragmentedMp4Builder;->createDinf(Lcom/googlecode/mp4parser/authoring/Movie;Lcom/googlecode/mp4parser/authoring/Track;)Lcom/coremedia/iso/boxes/DataInformationBox;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/coremedia/iso/boxes/MediaInformationBox;->addBox(Lcom/coremedia/iso/boxes/Box;)V

    .line 685
    invoke-virtual {p0, p2, p1}, Lcom/googlecode/mp4parser/authoring/builder/FragmentedMp4Builder;->createStbl(Lcom/googlecode/mp4parser/authoring/Movie;Lcom/googlecode/mp4parser/authoring/Track;)Lcom/coremedia/iso/boxes/Box;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/coremedia/iso/boxes/MediaInformationBox;->addBox(Lcom/coremedia/iso/boxes/Box;)V

    .line 686
    return-object v0
.end method

.method protected createMoof(JJLcom/googlecode/mp4parser/authoring/Track;I)Lcom/coremedia/iso/boxes/Box;
    .locals 6
    .parameter "startSample"
    .parameter "endSample"
    .parameter "track"
    .parameter "sequenceNumber"

    .prologue
    .line 411
    new-instance v1, Lcom/coremedia/iso/boxes/fragment/MovieFragmentBox;

    invoke-direct {v1}, Lcom/coremedia/iso/boxes/fragment/MovieFragmentBox;-><init>()V

    .line 412
    .local v1, moof:Lcom/coremedia/iso/boxes/fragment/MovieFragmentBox;
    invoke-virtual/range {p0 .. p6}, Lcom/googlecode/mp4parser/authoring/builder/FragmentedMp4Builder;->createMfhd(JJLcom/googlecode/mp4parser/authoring/Track;I)Lcom/coremedia/iso/boxes/Box;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/coremedia/iso/boxes/fragment/MovieFragmentBox;->addBox(Lcom/coremedia/iso/boxes/Box;)V

    .line 413
    invoke-virtual/range {p0 .. p6}, Lcom/googlecode/mp4parser/authoring/builder/FragmentedMp4Builder;->createTraf(JJLcom/googlecode/mp4parser/authoring/Track;I)Lcom/coremedia/iso/boxes/Box;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/coremedia/iso/boxes/fragment/MovieFragmentBox;->addBox(Lcom/coremedia/iso/boxes/Box;)V

    .line 415
    invoke-virtual {v1}, Lcom/coremedia/iso/boxes/fragment/MovieFragmentBox;->getTrackRunBoxes()Ljava/util/List;

    move-result-object v2

    const/4 v3, 0x0

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/coremedia/iso/boxes/fragment/TrackRunBox;

    .line 416
    .local v0, firstTrun:Lcom/coremedia/iso/boxes/fragment/TrackRunBox;
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lcom/coremedia/iso/boxes/fragment/TrackRunBox;->setDataOffset(I)V

    .line 417
    const-wide/16 v2, 0x8

    invoke-virtual {v1}, Lcom/coremedia/iso/boxes/fragment/MovieFragmentBox;->getSize()J

    move-result-wide v4

    add-long/2addr v2, v4

    long-to-int v2, v2

    invoke-virtual {v0, v2}, Lcom/coremedia/iso/boxes/fragment/TrackRunBox;->setDataOffset(I)V

    .line 419
    return-object v1
.end method

.method protected createMoofMdat(Lcom/googlecode/mp4parser/authoring/Movie;)Ljava/util/List;
    .locals 18
    .parameter "movie"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/googlecode/mp4parser/authoring/Movie;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/coremedia/iso/boxes/Box;",
            ">;"
        }
    .end annotation

    .prologue
    .line 114
    new-instance v8, Ljava/util/LinkedList;

    invoke-direct {v8}, Ljava/util/LinkedList;-><init>()V

    .line 115
    .local v8, boxes:Ljava/util/List;,"Ljava/util/List<Lcom/coremedia/iso/boxes/Box;>;"
    new-instance v11, Ljava/util/HashMap;

    invoke-direct {v11}, Ljava/util/HashMap;-><init>()V

    .line 116
    .local v11, intersectionMap:Ljava/util/HashMap;,"Ljava/util/HashMap<Lcom/googlecode/mp4parser/authoring/Track;[J>;"
    const/4 v13, 0x0

    .line 117
    .local v13, maxNumberOfFragments:I
    invoke-virtual/range {p1 .. p1}, Lcom/googlecode/mp4parser/authoring/Movie;->getTracks()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    .local v10, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/googlecode/mp4parser/authoring/Track;

    .line 118
    .local v6, track:Lcom/googlecode/mp4parser/authoring/Track;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/googlecode/mp4parser/authoring/builder/FragmentedMp4Builder;->intersectionFinder:Lcom/googlecode/mp4parser/authoring/builder/FragmentIntersectionFinder;

    move-object/from16 v0, p1

    invoke-interface {v1, v6, v0}, Lcom/googlecode/mp4parser/authoring/builder/FragmentIntersectionFinder;->sampleNumbers(Lcom/googlecode/mp4parser/authoring/Track;Lcom/googlecode/mp4parser/authoring/Movie;)[J

    move-result-object v12

    .line 119
    .local v12, intersects:[J
    invoke-virtual {v11, v6, v12}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 120
    array-length v1, v12

    invoke-static {v13, v1}, Ljava/lang/Math;->max(II)I

    move-result v13

    .line 121
    goto :goto_0

    .line 124
    .end local v6           #track:Lcom/googlecode/mp4parser/authoring/Track;
    .end local v12           #intersects:[J
    :cond_0
    const/4 v7, 0x1

    .line 127
    .local v7, sequence:I
    const/4 v9, 0x0

    .local v9, cycle:I
    :goto_1
    if-ge v9, v13, :cond_5

    .line 129
    invoke-virtual/range {p1 .. p1}, Lcom/googlecode/mp4parser/authoring/Movie;->getTracks()Ljava/util/List;

    move-result-object v1

    move-object/from16 v0, p0

    invoke-virtual {v0, v1, v9, v11}, Lcom/googlecode/mp4parser/authoring/builder/FragmentedMp4Builder;->sortTracksInSequence(Ljava/util/List;ILjava/util/Map;)Ljava/util/List;

    move-result-object v15

    .line 131
    .local v15, sortedTracks:Ljava/util/List;,"Ljava/util/List<Lcom/googlecode/mp4parser/authoring/Track;>;"
    invoke-interface {v15}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :cond_1
    :goto_2
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/googlecode/mp4parser/authoring/Track;

    .line 132
    .restart local v6       #track:Lcom/googlecode/mp4parser/authoring/Track;
    invoke-virtual/range {p0 .. p0}, Lcom/googlecode/mp4parser/authoring/builder/FragmentedMp4Builder;->getAllowedHandlers()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2

    invoke-virtual/range {p0 .. p0}, Lcom/googlecode/mp4parser/authoring/builder/FragmentedMp4Builder;->getAllowedHandlers()Ljava/util/List;

    move-result-object v1

    invoke-interface {v6}, Lcom/googlecode/mp4parser/authoring/Track;->getHandler()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-interface {v1, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 133
    :cond_2
    invoke-virtual {v11, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, [J

    .line 135
    .local v16, startSamples:[J
    move-object/from16 v0, v16

    array-length v1, v0

    if-ge v9, v1, :cond_1

    .line 137
    aget-wide v2, v16, v9

    .line 139
    .local v2, startSample:J
    add-int/lit8 v1, v9, 0x1

    move-object/from16 v0, v16

    array-length v0, v0

    move/from16 v17, v0

    move/from16 v0, v17

    if-ge v1, v0, :cond_3

    add-int/lit8 v1, v9, 0x1

    aget-wide v4, v16, v1

    .line 142
    .local v4, endSample:J
    :goto_3
    cmp-long v1, v2, v4

    if-eqz v1, :cond_1

    move-object/from16 v1, p0

    .line 143
    invoke-virtual/range {v1 .. v7}, Lcom/googlecode/mp4parser/authoring/builder/FragmentedMp4Builder;->createMoof(JJLcom/googlecode/mp4parser/authoring/Track;I)Lcom/coremedia/iso/boxes/Box;

    move-result-object v1

    invoke-interface {v8, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 144
    add-int/lit8 v14, v7, 0x1

    .end local v7           #sequence:I
    .local v14, sequence:I
    move-object/from16 v1, p0

    invoke-virtual/range {v1 .. v7}, Lcom/googlecode/mp4parser/authoring/builder/FragmentedMp4Builder;->createMdat(JJLcom/googlecode/mp4parser/authoring/Track;I)Lcom/coremedia/iso/boxes/Box;

    move-result-object v1

    invoke-interface {v8, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move v7, v14

    .end local v14           #sequence:I
    .restart local v7       #sequence:I
    goto :goto_2

    .line 139
    .end local v4           #endSample:J
    :cond_3
    invoke-interface {v6}, Lcom/googlecode/mp4parser/authoring/Track;->getSamples()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    int-to-long v4, v1

    goto :goto_3

    .line 127
    .end local v2           #startSample:J
    .end local v6           #track:Lcom/googlecode/mp4parser/authoring/Track;
    .end local v16           #startSamples:[J
    :cond_4
    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    .line 150
    .end local v15           #sortedTracks:Ljava/util/List;,"Ljava/util/List<Lcom/googlecode/mp4parser/authoring/Track;>;"
    :cond_5
    return-object v8
.end method

.method protected createMoov(Lcom/googlecode/mp4parser/authoring/Movie;)Lcom/coremedia/iso/boxes/Box;
    .locals 4
    .parameter "movie"

    .prologue
    .line 468
    new-instance v1, Lcom/coremedia/iso/boxes/MovieBox;

    invoke-direct {v1}, Lcom/coremedia/iso/boxes/MovieBox;-><init>()V

    .line 470
    .local v1, movieBox:Lcom/coremedia/iso/boxes/MovieBox;
    invoke-virtual {p0, p1}, Lcom/googlecode/mp4parser/authoring/builder/FragmentedMp4Builder;->createMvhd(Lcom/googlecode/mp4parser/authoring/Movie;)Lcom/coremedia/iso/boxes/Box;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/coremedia/iso/boxes/MovieBox;->addBox(Lcom/coremedia/iso/boxes/Box;)V

    .line 471
    invoke-virtual {p0, p1}, Lcom/googlecode/mp4parser/authoring/builder/FragmentedMp4Builder;->createMvex(Lcom/googlecode/mp4parser/authoring/Movie;)Lcom/coremedia/iso/boxes/Box;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/coremedia/iso/boxes/MovieBox;->addBox(Lcom/coremedia/iso/boxes/Box;)V

    .line 473
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

    .line 474
    .local v2, track:Lcom/googlecode/mp4parser/authoring/Track;
    invoke-virtual {p0, v2, p1}, Lcom/googlecode/mp4parser/authoring/builder/FragmentedMp4Builder;->createTrak(Lcom/googlecode/mp4parser/authoring/Track;Lcom/googlecode/mp4parser/authoring/Movie;)Lcom/coremedia/iso/boxes/Box;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/coremedia/iso/boxes/MovieBox;->addBox(Lcom/coremedia/iso/boxes/Box;)V

    goto :goto_0

    .line 477
    .end local v2           #track:Lcom/googlecode/mp4parser/authoring/Track;
    :cond_0
    return-object v1
.end method

.method protected createMvex(Lcom/googlecode/mp4parser/authoring/Movie;)Lcom/coremedia/iso/boxes/Box;
    .locals 8
    .parameter "movie"

    .prologue
    .line 606
    new-instance v2, Lcom/coremedia/iso/boxes/fragment/MovieExtendsBox;

    invoke-direct {v2}, Lcom/coremedia/iso/boxes/fragment/MovieExtendsBox;-><init>()V

    .line 607
    .local v2, mvex:Lcom/coremedia/iso/boxes/fragment/MovieExtendsBox;
    new-instance v1, Lcom/coremedia/iso/boxes/fragment/MovieExtendsHeaderBox;

    invoke-direct {v1}, Lcom/coremedia/iso/boxes/fragment/MovieExtendsHeaderBox;-><init>()V

    .line 608
    .local v1, mved:Lcom/coremedia/iso/boxes/fragment/MovieExtendsHeaderBox;
    invoke-virtual {p1}, Lcom/googlecode/mp4parser/authoring/Movie;->getTracks()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/googlecode/mp4parser/authoring/Track;

    .line 609
    .local v3, track:Lcom/googlecode/mp4parser/authoring/Track;
    invoke-direct {p0, p1, v3}, Lcom/googlecode/mp4parser/authoring/builder/FragmentedMp4Builder;->getTrackDuration(Lcom/googlecode/mp4parser/authoring/Movie;Lcom/googlecode/mp4parser/authoring/Track;)J

    move-result-wide v4

    .line 610
    .local v4, trackDuration:J
    invoke-virtual {v1}, Lcom/coremedia/iso/boxes/fragment/MovieExtendsHeaderBox;->getFragmentDuration()J

    move-result-wide v6

    cmp-long v6, v6, v4

    if-gez v6, :cond_0

    .line 611
    invoke-virtual {v1, v4, v5}, Lcom/coremedia/iso/boxes/fragment/MovieExtendsHeaderBox;->setFragmentDuration(J)V

    goto :goto_0

    .line 614
    .end local v3           #track:Lcom/googlecode/mp4parser/authoring/Track;
    .end local v4           #trackDuration:J
    :cond_1
    invoke-virtual {v2, v1}, Lcom/coremedia/iso/boxes/fragment/MovieExtendsBox;->addBox(Lcom/coremedia/iso/boxes/Box;)V

    .line 616
    invoke-virtual {p1}, Lcom/googlecode/mp4parser/authoring/Movie;->getTracks()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/googlecode/mp4parser/authoring/Track;

    .line 617
    .restart local v3       #track:Lcom/googlecode/mp4parser/authoring/Track;
    invoke-virtual {p0, p1, v3}, Lcom/googlecode/mp4parser/authoring/builder/FragmentedMp4Builder;->createTrex(Lcom/googlecode/mp4parser/authoring/Movie;Lcom/googlecode/mp4parser/authoring/Track;)Lcom/coremedia/iso/boxes/Box;

    move-result-object v6

    invoke-virtual {v2, v6}, Lcom/coremedia/iso/boxes/fragment/MovieExtendsBox;->addBox(Lcom/coremedia/iso/boxes/Box;)V

    goto :goto_1

    .line 619
    .end local v3           #track:Lcom/googlecode/mp4parser/authoring/Track;
    :cond_2
    return-object v2
.end method

.method protected createMvhd(Lcom/googlecode/mp4parser/authoring/Movie;)Lcom/coremedia/iso/boxes/Box;
    .locals 15
    .parameter "movie"

    .prologue
    .line 429
    new-instance v5, Lcom/coremedia/iso/boxes/MovieHeaderBox;

    invoke-direct {v5}, Lcom/coremedia/iso/boxes/MovieHeaderBox;-><init>()V

    .line 430
    .local v5, mvhd:Lcom/coremedia/iso/boxes/MovieHeaderBox;
    const/4 v11, 0x1

    invoke-virtual {v5, v11}, Lcom/coremedia/iso/boxes/MovieHeaderBox;->setVersion(I)V

    .line 431
    new-instance v11, Ljava/util/Date;

    invoke-direct {v11}, Ljava/util/Date;-><init>()V

    invoke-static {v11}, Lcom/googlecode/mp4parser/authoring/DateHelper;->convert(Ljava/util/Date;)J

    move-result-wide v11

    invoke-virtual {v5, v11, v12}, Lcom/coremedia/iso/boxes/MovieHeaderBox;->setCreationTime(J)V

    .line 432
    new-instance v11, Ljava/util/Date;

    invoke-direct {v11}, Ljava/util/Date;-><init>()V

    invoke-static {v11}, Lcom/googlecode/mp4parser/authoring/DateHelper;->convert(Ljava/util/Date;)J

    move-result-wide v11

    invoke-virtual {v5, v11, v12}, Lcom/coremedia/iso/boxes/MovieHeaderBox;->setModificationTime(J)V

    .line 433
    invoke-virtual/range {p1 .. p1}, Lcom/googlecode/mp4parser/authoring/Movie;->getTimescale()J

    move-result-wide v3

    .line 434
    .local v3, movieTimeScale:J
    const-wide/16 v0, 0x0

    .line 436
    .local v0, duration:J
    invoke-virtual/range {p1 .. p1}, Lcom/googlecode/mp4parser/authoring/Movie;->getTracks()Ljava/util/List;

    move-result-object v11

    invoke-interface {v11}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/googlecode/mp4parser/authoring/Track;

    .line 437
    .local v8, track:Lcom/googlecode/mp4parser/authoring/Track;
    invoke-virtual {p0, v8}, Lcom/googlecode/mp4parser/authoring/builder/FragmentedMp4Builder;->getDuration(Lcom/googlecode/mp4parser/authoring/Track;)J

    move-result-wide v11

    mul-long/2addr v11, v3

    invoke-interface {v8}, Lcom/googlecode/mp4parser/authoring/Track;->getTrackMetaData()Lcom/googlecode/mp4parser/authoring/TrackMetaData;

    move-result-object v13

    invoke-virtual {v13}, Lcom/googlecode/mp4parser/authoring/TrackMetaData;->getTimescale()J

    move-result-wide v13

    div-long v9, v11, v13

    .line 438
    .local v9, tracksDuration:J
    cmp-long v11, v9, v0

    if-lez v11, :cond_0

    .line 439
    move-wide v0, v9

    goto :goto_0

    .line 445
    .end local v8           #track:Lcom/googlecode/mp4parser/authoring/Track;
    .end local v9           #tracksDuration:J
    :cond_1
    invoke-virtual {v5, v0, v1}, Lcom/coremedia/iso/boxes/MovieHeaderBox;->setDuration(J)V

    .line 446
    invoke-virtual {v5, v3, v4}, Lcom/coremedia/iso/boxes/MovieHeaderBox;->setTimescale(J)V

    .line 448
    const-wide/16 v6, 0x0

    .line 449
    .local v6, nextTrackId:J
    invoke-virtual/range {p1 .. p1}, Lcom/googlecode/mp4parser/authoring/Movie;->getTracks()Ljava/util/List;

    move-result-object v11

    invoke-interface {v11}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/googlecode/mp4parser/authoring/Track;

    .line 450
    .restart local v8       #track:Lcom/googlecode/mp4parser/authoring/Track;
    invoke-interface {v8}, Lcom/googlecode/mp4parser/authoring/Track;->getTrackMetaData()Lcom/googlecode/mp4parser/authoring/TrackMetaData;

    move-result-object v11

    invoke-virtual {v11}, Lcom/googlecode/mp4parser/authoring/TrackMetaData;->getTrackId()J

    move-result-wide v11

    cmp-long v11, v6, v11

    if-gez v11, :cond_2

    invoke-interface {v8}, Lcom/googlecode/mp4parser/authoring/Track;->getTrackMetaData()Lcom/googlecode/mp4parser/authoring/TrackMetaData;

    move-result-object v11

    invoke-virtual {v11}, Lcom/googlecode/mp4parser/authoring/TrackMetaData;->getTrackId()J

    move-result-wide v6

    :cond_2
    goto :goto_1

    .line 452
    .end local v8           #track:Lcom/googlecode/mp4parser/authoring/Track;
    :cond_3
    const-wide/16 v11, 0x1

    add-long/2addr v6, v11

    invoke-virtual {v5, v6, v7}, Lcom/coremedia/iso/boxes/MovieHeaderBox;->setNextTrackId(J)V

    .line 453
    return-object v5
.end method

.method protected createStbl(Lcom/googlecode/mp4parser/authoring/Movie;Lcom/googlecode/mp4parser/authoring/Track;)Lcom/coremedia/iso/boxes/Box;
    .locals 2
    .parameter "movie"
    .parameter "track"

    .prologue
    .line 672
    new-instance v0, Lcom/coremedia/iso/boxes/SampleTableBox;

    invoke-direct {v0}, Lcom/coremedia/iso/boxes/SampleTableBox;-><init>()V

    .line 674
    .local v0, stbl:Lcom/coremedia/iso/boxes/SampleTableBox;
    invoke-interface {p2}, Lcom/googlecode/mp4parser/authoring/Track;->getSampleDescriptionBox()Lcom/coremedia/iso/boxes/SampleDescriptionBox;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/coremedia/iso/boxes/SampleTableBox;->addBox(Lcom/coremedia/iso/boxes/Box;)V

    .line 675
    new-instance v1, Lcom/coremedia/iso/boxes/TimeToSampleBox;

    invoke-direct {v1}, Lcom/coremedia/iso/boxes/TimeToSampleBox;-><init>()V

    invoke-virtual {v0, v1}, Lcom/coremedia/iso/boxes/SampleTableBox;->addBox(Lcom/coremedia/iso/boxes/Box;)V

    .line 677
    new-instance v1, Lcom/coremedia/iso/boxes/StaticChunkOffsetBox;

    invoke-direct {v1}, Lcom/coremedia/iso/boxes/StaticChunkOffsetBox;-><init>()V

    invoke-virtual {v0, v1}, Lcom/coremedia/iso/boxes/SampleTableBox;->addBox(Lcom/coremedia/iso/boxes/Box;)V

    .line 678
    return-object v0
.end method

.method protected createTfhd(JJLcom/googlecode/mp4parser/authoring/Track;I)Lcom/coremedia/iso/boxes/Box;
    .locals 4
    .parameter "startSample"
    .parameter "endSample"
    .parameter "track"
    .parameter "sequenceNumber"

    .prologue
    .line 239
    new-instance v1, Lcom/coremedia/iso/boxes/fragment/TrackFragmentHeaderBox;

    invoke-direct {v1}, Lcom/coremedia/iso/boxes/fragment/TrackFragmentHeaderBox;-><init>()V

    .line 240
    .local v1, tfhd:Lcom/coremedia/iso/boxes/fragment/TrackFragmentHeaderBox;
    new-instance v0, Lcom/coremedia/iso/boxes/fragment/SampleFlags;

    invoke-direct {v0}, Lcom/coremedia/iso/boxes/fragment/SampleFlags;-><init>()V

    .line 242
    .local v0, sf:Lcom/coremedia/iso/boxes/fragment/SampleFlags;
    invoke-virtual {v1, v0}, Lcom/coremedia/iso/boxes/fragment/TrackFragmentHeaderBox;->setDefaultSampleFlags(Lcom/coremedia/iso/boxes/fragment/SampleFlags;)V

    .line 243
    const-wide/16 v2, -0x1

    invoke-virtual {v1, v2, v3}, Lcom/coremedia/iso/boxes/fragment/TrackFragmentHeaderBox;->setBaseDataOffset(J)V

    .line 244
    invoke-interface {p5}, Lcom/googlecode/mp4parser/authoring/Track;->getTrackMetaData()Lcom/googlecode/mp4parser/authoring/TrackMetaData;

    move-result-object v2

    invoke-virtual {v2}, Lcom/googlecode/mp4parser/authoring/TrackMetaData;->getTrackId()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/coremedia/iso/boxes/fragment/TrackFragmentHeaderBox;->setTrackId(J)V

    .line 245
    return-object v1
.end method

.method protected createTfra(Lcom/googlecode/mp4parser/authoring/Track;Lcom/coremedia/iso/IsoFile;)Lcom/coremedia/iso/boxes/Box;
    .locals 34
    .parameter "track"
    .parameter "isoFile"

    .prologue
    .line 491
    new-instance v26, Lcom/coremedia/iso/boxes/fragment/TrackFragmentRandomAccessBox;

    invoke-direct/range {v26 .. v26}, Lcom/coremedia/iso/boxes/fragment/TrackFragmentRandomAccessBox;-><init>()V

    .line 492
    .local v26, tfra:Lcom/coremedia/iso/boxes/fragment/TrackFragmentRandomAccessBox;
    const/4 v2, 0x1

    move-object/from16 v0, v26

    invoke-virtual {v0, v2}, Lcom/coremedia/iso/boxes/fragment/TrackFragmentRandomAccessBox;->setVersion(I)V

    .line 493
    new-instance v23, Ljava/util/LinkedList;

    invoke-direct/range {v23 .. v23}, Ljava/util/LinkedList;-><init>()V

    .line 494
    .local v23, offset2timeEntries:Ljava/util/List;,"Ljava/util/List<Lcom/coremedia/iso/boxes/fragment/TrackFragmentRandomAccessBox$Entry;>;"
    invoke-virtual/range {p2 .. p2}, Lcom/coremedia/iso/IsoFile;->getBoxes()Ljava/util/List;

    move-result-object v14

    .line 495
    .local v14, boxes:Ljava/util/List;,"Ljava/util/List<Lcom/coremedia/iso/boxes/Box;>;"
    const-wide/16 v5, 0x0

    .line 496
    .local v5, offset:J
    const-wide/16 v3, 0x0

    .line 497
    .local v3, duration:J
    invoke-interface {v14}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v16

    :goto_0
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_b

    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/coremedia/iso/boxes/Box;

    .line 498
    .local v13, box:Lcom/coremedia/iso/boxes/Box;
    instance-of v2, v13, Lcom/coremedia/iso/boxes/fragment/MovieFragmentBox;

    if-eqz v2, :cond_a

    move-object v2, v13

    .line 499
    check-cast v2, Lcom/coremedia/iso/boxes/fragment/MovieFragmentBox;

    const-class v7, Lcom/coremedia/iso/boxes/fragment/TrackFragmentBox;

    invoke-virtual {v2, v7}, Lcom/coremedia/iso/boxes/fragment/MovieFragmentBox;->getBoxes(Ljava/lang/Class;)Ljava/util/List;

    move-result-object v28

    .line 500
    .local v28, trafs:Ljava/util/List;,"Ljava/util/List<Lcom/coremedia/iso/boxes/fragment/TrackFragmentBox;>;"
    const/4 v15, 0x0

    .local v15, i:I
    :goto_1
    invoke-interface/range {v28 .. v28}, Ljava/util/List;->size()I

    move-result v2

    if-ge v15, v2, :cond_a

    .line 501
    move-object/from16 v0, v28

    invoke-interface {v0, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v27

    check-cast v27, Lcom/coremedia/iso/boxes/fragment/TrackFragmentBox;

    .line 502
    .local v27, traf:Lcom/coremedia/iso/boxes/fragment/TrackFragmentBox;
    invoke-virtual/range {v27 .. v27}, Lcom/coremedia/iso/boxes/fragment/TrackFragmentBox;->getTrackFragmentHeaderBox()Lcom/coremedia/iso/boxes/fragment/TrackFragmentHeaderBox;

    move-result-object v2

    invoke-virtual {v2}, Lcom/coremedia/iso/boxes/fragment/TrackFragmentHeaderBox;->getTrackId()J

    move-result-wide v7

    invoke-interface/range {p1 .. p1}, Lcom/googlecode/mp4parser/authoring/Track;->getTrackMetaData()Lcom/googlecode/mp4parser/authoring/TrackMetaData;

    move-result-object v2

    invoke-virtual {v2}, Lcom/googlecode/mp4parser/authoring/TrackMetaData;->getTrackId()J

    move-result-wide v9

    cmp-long v2, v7, v9

    if-nez v2, :cond_9

    .line 504
    const-class v2, Lcom/coremedia/iso/boxes/fragment/TrackRunBox;

    move-object/from16 v0, v27

    invoke-virtual {v0, v2}, Lcom/coremedia/iso/boxes/fragment/TrackFragmentBox;->getBoxes(Ljava/lang/Class;)Ljava/util/List;

    move-result-object v33

    .line 505
    .local v33, truns:Ljava/util/List;,"Ljava/util/List<Lcom/coremedia/iso/boxes/fragment/TrackRunBox;>;"
    const/16 v19, 0x0

    .local v19, j:I
    :goto_2
    invoke-interface/range {v33 .. v33}, Ljava/util/List;->size()I

    move-result v2

    move/from16 v0, v19

    if-ge v0, v2, :cond_9

    .line 506
    new-instance v24, Ljava/util/LinkedList;

    invoke-direct/range {v24 .. v24}, Ljava/util/LinkedList;-><init>()V

    .line 507
    .local v24, offset2timeEntriesThisTrun:Ljava/util/List;,"Ljava/util/List<Lcom/coremedia/iso/boxes/fragment/TrackFragmentRandomAccessBox$Entry;>;"
    move-object/from16 v0, v33

    move/from16 v1, v19

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v31

    check-cast v31, Lcom/coremedia/iso/boxes/fragment/TrackRunBox;

    .line 508
    .local v31, trun:Lcom/coremedia/iso/boxes/fragment/TrackRunBox;
    const/16 v20, 0x0

    .local v20, k:I
    :goto_3
    invoke-virtual/range {v31 .. v31}, Lcom/coremedia/iso/boxes/fragment/TrackRunBox;->getEntries()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    move/from16 v0, v20

    if-ge v0, v2, :cond_7

    .line 509
    invoke-virtual/range {v31 .. v31}, Lcom/coremedia/iso/boxes/fragment/TrackRunBox;->getEntries()Ljava/util/List;

    move-result-object v2

    move/from16 v0, v20

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v32

    check-cast v32, Lcom/coremedia/iso/boxes/fragment/TrackRunBox$Entry;

    .line 510
    .local v32, trunEntry:Lcom/coremedia/iso/boxes/fragment/TrackRunBox$Entry;
    const/16 v25, 0x0

    .line 511
    .local v25, sf:Lcom/coremedia/iso/boxes/fragment/SampleFlags;
    if-nez v20, :cond_1

    invoke-virtual/range {v31 .. v31}, Lcom/coremedia/iso/boxes/fragment/TrackRunBox;->isFirstSampleFlagsPresent()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 512
    invoke-virtual/range {v31 .. v31}, Lcom/coremedia/iso/boxes/fragment/TrackRunBox;->getFirstSampleFlags()Lcom/coremedia/iso/boxes/fragment/SampleFlags;

    move-result-object v25

    .line 527
    :cond_0
    :goto_4
    if-nez v25, :cond_5

    .line 528
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v7, "Could not find any SampleFlags to indicate random access or not"

    invoke-direct {v2, v7}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 513
    :cond_1
    invoke-virtual/range {v31 .. v31}, Lcom/coremedia/iso/boxes/fragment/TrackRunBox;->isSampleFlagsPresent()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 514
    invoke-virtual/range {v32 .. v32}, Lcom/coremedia/iso/boxes/fragment/TrackRunBox$Entry;->getSampleFlags()Lcom/coremedia/iso/boxes/fragment/SampleFlags;

    move-result-object v25

    goto :goto_4

    .line 516
    :cond_2
    invoke-virtual/range {p2 .. p2}, Lcom/coremedia/iso/IsoFile;->getMovieBox()Lcom/coremedia/iso/boxes/MovieBox;

    move-result-object v2

    const-class v7, Lcom/coremedia/iso/boxes/fragment/MovieExtendsBox;

    invoke-virtual {v2, v7}, Lcom/coremedia/iso/boxes/MovieBox;->getBoxes(Ljava/lang/Class;)Ljava/util/List;

    move-result-object v22

    .line 517
    .local v22, mvexs:Ljava/util/List;,"Ljava/util/List<Lcom/coremedia/iso/boxes/fragment/MovieExtendsBox;>;"
    invoke-interface/range {v22 .. v22}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v17

    :cond_3
    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Lcom/coremedia/iso/boxes/fragment/MovieExtendsBox;

    .line 518
    .local v21, mvex:Lcom/coremedia/iso/boxes/fragment/MovieExtendsBox;
    const-class v2, Lcom/coremedia/iso/boxes/fragment/TrackExtendsBox;

    move-object/from16 v0, v21

    invoke-virtual {v0, v2}, Lcom/coremedia/iso/boxes/fragment/MovieExtendsBox;->getBoxes(Ljava/lang/Class;)Ljava/util/List;

    move-result-object v30

    .line 519
    .local v30, trexs:Ljava/util/List;,"Ljava/util/List<Lcom/coremedia/iso/boxes/fragment/TrackExtendsBox;>;"
    invoke-interface/range {v30 .. v30}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v18

    .local v18, i$:Ljava/util/Iterator;
    :cond_4
    :goto_5
    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v29

    check-cast v29, Lcom/coremedia/iso/boxes/fragment/TrackExtendsBox;

    .line 520
    .local v29, trex:Lcom/coremedia/iso/boxes/fragment/TrackExtendsBox;
    invoke-virtual/range {v29 .. v29}, Lcom/coremedia/iso/boxes/fragment/TrackExtendsBox;->getTrackId()J

    move-result-wide v7

    invoke-interface/range {p1 .. p1}, Lcom/googlecode/mp4parser/authoring/Track;->getTrackMetaData()Lcom/googlecode/mp4parser/authoring/TrackMetaData;

    move-result-object v2

    invoke-virtual {v2}, Lcom/googlecode/mp4parser/authoring/TrackMetaData;->getTrackId()J

    move-result-wide v9

    cmp-long v2, v7, v9

    if-nez v2, :cond_4

    .line 521
    invoke-virtual/range {v29 .. v29}, Lcom/coremedia/iso/boxes/fragment/TrackExtendsBox;->getDefaultSampleFlags()Lcom/coremedia/iso/boxes/fragment/SampleFlags;

    move-result-object v25

    goto :goto_5

    .line 530
    .end local v18           #i$:Ljava/util/Iterator;
    .end local v21           #mvex:Lcom/coremedia/iso/boxes/fragment/MovieExtendsBox;
    .end local v22           #mvexs:Ljava/util/List;,"Ljava/util/List<Lcom/coremedia/iso/boxes/fragment/MovieExtendsBox;>;"
    .end local v29           #trex:Lcom/coremedia/iso/boxes/fragment/TrackExtendsBox;
    .end local v30           #trexs:Ljava/util/List;,"Ljava/util/List<Lcom/coremedia/iso/boxes/fragment/TrackExtendsBox;>;"
    :cond_5
    invoke-virtual/range {v25 .. v25}, Lcom/coremedia/iso/boxes/fragment/SampleFlags;->getSampleDependsOn()I

    move-result v2

    const/4 v7, 0x2

    if-ne v2, v7, :cond_6

    .line 531
    new-instance v2, Lcom/coremedia/iso/boxes/fragment/TrackFragmentRandomAccessBox$Entry;

    add-int/lit8 v7, v15, 0x1

    int-to-long v7, v7

    add-int/lit8 v9, v19, 0x1

    int-to-long v9, v9

    add-int/lit8 v11, v20, 0x1

    int-to-long v11, v11

    invoke-direct/range {v2 .. v12}, Lcom/coremedia/iso/boxes/fragment/TrackFragmentRandomAccessBox$Entry;-><init>(JJJJJ)V

    move-object/from16 v0, v24

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 536
    :cond_6
    invoke-virtual/range {v32 .. v32}, Lcom/coremedia/iso/boxes/fragment/TrackRunBox$Entry;->getSampleDuration()J

    move-result-wide v7

    add-long/2addr v3, v7

    .line 508
    add-int/lit8 v20, v20, 0x1

    goto/16 :goto_3

    .line 538
    .end local v25           #sf:Lcom/coremedia/iso/boxes/fragment/SampleFlags;
    .end local v32           #trunEntry:Lcom/coremedia/iso/boxes/fragment/TrackRunBox$Entry;
    :cond_7
    invoke-interface/range {v24 .. v24}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual/range {v31 .. v31}, Lcom/coremedia/iso/boxes/fragment/TrackRunBox;->getEntries()Ljava/util/List;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    if-ne v2, v7, :cond_8

    invoke-virtual/range {v31 .. v31}, Lcom/coremedia/iso/boxes/fragment/TrackRunBox;->getEntries()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_8

    .line 542
    const/4 v2, 0x0

    move-object/from16 v0, v24

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    move-object/from16 v0, v23

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 505
    :goto_6
    add-int/lit8 v19, v19, 0x1

    goto/16 :goto_2

    .line 544
    :cond_8
    invoke-interface/range {v23 .. v24}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_6

    .line 500
    .end local v19           #j:I
    .end local v20           #k:I
    .end local v24           #offset2timeEntriesThisTrun:Ljava/util/List;,"Ljava/util/List<Lcom/coremedia/iso/boxes/fragment/TrackFragmentRandomAccessBox$Entry;>;"
    .end local v31           #trun:Lcom/coremedia/iso/boxes/fragment/TrackRunBox;
    .end local v33           #truns:Ljava/util/List;,"Ljava/util/List<Lcom/coremedia/iso/boxes/fragment/TrackRunBox;>;"
    :cond_9
    add-int/lit8 v15, v15, 0x1

    goto/16 :goto_1

    .line 552
    .end local v15           #i:I
    .end local v27           #traf:Lcom/coremedia/iso/boxes/fragment/TrackFragmentBox;
    .end local v28           #trafs:Ljava/util/List;,"Ljava/util/List<Lcom/coremedia/iso/boxes/fragment/TrackFragmentBox;>;"
    :cond_a
    invoke-interface {v13}, Lcom/coremedia/iso/boxes/Box;->getSize()J

    move-result-wide v7

    add-long/2addr v5, v7

    goto/16 :goto_0

    .line 554
    .end local v13           #box:Lcom/coremedia/iso/boxes/Box;
    :cond_b
    move-object/from16 v0, v26

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/coremedia/iso/boxes/fragment/TrackFragmentRandomAccessBox;->setEntries(Ljava/util/List;)V

    .line 555
    invoke-interface/range {p1 .. p1}, Lcom/googlecode/mp4parser/authoring/Track;->getTrackMetaData()Lcom/googlecode/mp4parser/authoring/TrackMetaData;

    move-result-object v2

    invoke-virtual {v2}, Lcom/googlecode/mp4parser/authoring/TrackMetaData;->getTrackId()J

    move-result-wide v7

    move-object/from16 v0, v26

    invoke-virtual {v0, v7, v8}, Lcom/coremedia/iso/boxes/fragment/TrackFragmentRandomAccessBox;->setTrackId(J)V

    .line 556
    return-object v26
.end method

.method protected createTkhd(Lcom/googlecode/mp4parser/authoring/Movie;Lcom/googlecode/mp4parser/authoring/Track;)Lcom/coremedia/iso/boxes/Box;
    .locals 4
    .parameter "movie"
    .parameter "track"

    .prologue
    .line 623
    new-instance v1, Lcom/coremedia/iso/boxes/TrackHeaderBox;

    invoke-direct {v1}, Lcom/coremedia/iso/boxes/TrackHeaderBox;-><init>()V

    .line 624
    .local v1, tkhd:Lcom/coremedia/iso/boxes/TrackHeaderBox;
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/coremedia/iso/boxes/TrackHeaderBox;->setVersion(I)V

    .line 625
    const/4 v0, 0x0

    .line 626
    .local v0, flags:I
    invoke-interface {p2}, Lcom/googlecode/mp4parser/authoring/Track;->isEnabled()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 627
    add-int/lit8 v0, v0, 0x1

    .line 630
    :cond_0
    invoke-interface {p2}, Lcom/googlecode/mp4parser/authoring/Track;->isInMovie()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 631
    add-int/lit8 v0, v0, 0x2

    .line 634
    :cond_1
    invoke-interface {p2}, Lcom/googlecode/mp4parser/authoring/Track;->isInPreview()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 635
    add-int/lit8 v0, v0, 0x4

    .line 638
    :cond_2
    invoke-interface {p2}, Lcom/googlecode/mp4parser/authoring/Track;->isInPoster()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 639
    add-int/lit8 v0, v0, 0x8

    .line 641
    :cond_3
    invoke-virtual {v1, v0}, Lcom/coremedia/iso/boxes/TrackHeaderBox;->setFlags(I)V

    .line 643
    invoke-interface {p2}, Lcom/googlecode/mp4parser/authoring/Track;->getTrackMetaData()Lcom/googlecode/mp4parser/authoring/TrackMetaData;

    move-result-object v2

    invoke-virtual {v2}, Lcom/googlecode/mp4parser/authoring/TrackMetaData;->getGroup()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/coremedia/iso/boxes/TrackHeaderBox;->setAlternateGroup(I)V

    .line 644
    invoke-interface {p2}, Lcom/googlecode/mp4parser/authoring/Track;->getTrackMetaData()Lcom/googlecode/mp4parser/authoring/TrackMetaData;

    move-result-object v2

    invoke-virtual {v2}, Lcom/googlecode/mp4parser/authoring/TrackMetaData;->getCreationTime()Ljava/util/Date;

    move-result-object v2

    invoke-static {v2}, Lcom/googlecode/mp4parser/authoring/DateHelper;->convert(Ljava/util/Date;)J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/coremedia/iso/boxes/TrackHeaderBox;->setCreationTime(J)V

    .line 648
    invoke-direct {p0, p1, p2}, Lcom/googlecode/mp4parser/authoring/builder/FragmentedMp4Builder;->getTrackDuration(Lcom/googlecode/mp4parser/authoring/Movie;Lcom/googlecode/mp4parser/authoring/Track;)J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/coremedia/iso/boxes/TrackHeaderBox;->setDuration(J)V

    .line 649
    invoke-interface {p2}, Lcom/googlecode/mp4parser/authoring/Track;->getTrackMetaData()Lcom/googlecode/mp4parser/authoring/TrackMetaData;

    move-result-object v2

    invoke-virtual {v2}, Lcom/googlecode/mp4parser/authoring/TrackMetaData;->getHeight()D

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/coremedia/iso/boxes/TrackHeaderBox;->setHeight(D)V

    .line 650
    invoke-interface {p2}, Lcom/googlecode/mp4parser/authoring/Track;->getTrackMetaData()Lcom/googlecode/mp4parser/authoring/TrackMetaData;

    move-result-object v2

    invoke-virtual {v2}, Lcom/googlecode/mp4parser/authoring/TrackMetaData;->getWidth()D

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/coremedia/iso/boxes/TrackHeaderBox;->setWidth(D)V

    .line 651
    invoke-interface {p2}, Lcom/googlecode/mp4parser/authoring/Track;->getTrackMetaData()Lcom/googlecode/mp4parser/authoring/TrackMetaData;

    move-result-object v2

    invoke-virtual {v2}, Lcom/googlecode/mp4parser/authoring/TrackMetaData;->getLayer()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/coremedia/iso/boxes/TrackHeaderBox;->setLayer(I)V

    .line 652
    new-instance v2, Ljava/util/Date;

    invoke-direct {v2}, Ljava/util/Date;-><init>()V

    invoke-static {v2}, Lcom/googlecode/mp4parser/authoring/DateHelper;->convert(Ljava/util/Date;)J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/coremedia/iso/boxes/TrackHeaderBox;->setModificationTime(J)V

    .line 653
    invoke-interface {p2}, Lcom/googlecode/mp4parser/authoring/Track;->getTrackMetaData()Lcom/googlecode/mp4parser/authoring/TrackMetaData;

    move-result-object v2

    invoke-virtual {v2}, Lcom/googlecode/mp4parser/authoring/TrackMetaData;->getTrackId()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/coremedia/iso/boxes/TrackHeaderBox;->setTrackId(J)V

    .line 654
    invoke-interface {p2}, Lcom/googlecode/mp4parser/authoring/Track;->getTrackMetaData()Lcom/googlecode/mp4parser/authoring/TrackMetaData;

    move-result-object v2

    invoke-virtual {v2}, Lcom/googlecode/mp4parser/authoring/TrackMetaData;->getVolume()F

    move-result v2

    invoke-virtual {v1, v2}, Lcom/coremedia/iso/boxes/TrackHeaderBox;->setVolume(F)V

    .line 655
    return-object v1
.end method

.method protected createTraf(JJLcom/googlecode/mp4parser/authoring/Track;I)Lcom/coremedia/iso/boxes/Box;
    .locals 4
    .parameter "startSample"
    .parameter "endSample"
    .parameter "track"
    .parameter "sequenceNumber"

    .prologue
    .line 255
    new-instance v1, Lcom/coremedia/iso/boxes/fragment/TrackFragmentBox;

    invoke-direct {v1}, Lcom/coremedia/iso/boxes/fragment/TrackFragmentBox;-><init>()V

    .line 256
    .local v1, traf:Lcom/coremedia/iso/boxes/fragment/TrackFragmentBox;
    invoke-virtual/range {p0 .. p6}, Lcom/googlecode/mp4parser/authoring/builder/FragmentedMp4Builder;->createTfhd(JJLcom/googlecode/mp4parser/authoring/Track;I)Lcom/coremedia/iso/boxes/Box;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/coremedia/iso/boxes/fragment/TrackFragmentBox;->addBox(Lcom/coremedia/iso/boxes/Box;)V

    .line 257
    invoke-virtual/range {p0 .. p6}, Lcom/googlecode/mp4parser/authoring/builder/FragmentedMp4Builder;->createTruns(JJLcom/googlecode/mp4parser/authoring/Track;I)Ljava/util/List;

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

    check-cast v2, Lcom/coremedia/iso/boxes/Box;

    .line 258
    .local v2, trun:Lcom/coremedia/iso/boxes/Box;
    invoke-virtual {v1, v2}, Lcom/coremedia/iso/boxes/fragment/TrackFragmentBox;->addBox(Lcom/coremedia/iso/boxes/Box;)V

    goto :goto_0

    .line 261
    .end local v2           #trun:Lcom/coremedia/iso/boxes/Box;
    :cond_0
    return-object v1
.end method

.method protected createTrak(Lcom/googlecode/mp4parser/authoring/Track;Lcom/googlecode/mp4parser/authoring/Movie;)Lcom/coremedia/iso/boxes/Box;
    .locals 4
    .parameter "track"
    .parameter "movie"

    .prologue
    .line 708
    sget-object v1, Lcom/googlecode/mp4parser/authoring/builder/FragmentedMp4Builder;->LOG:Ljava/util/logging/Logger;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Creating Track "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 709
    new-instance v0, Lcom/coremedia/iso/boxes/TrackBox;

    invoke-direct {v0}, Lcom/coremedia/iso/boxes/TrackBox;-><init>()V

    .line 710
    .local v0, trackBox:Lcom/coremedia/iso/boxes/TrackBox;
    invoke-virtual {p0, p2, p1}, Lcom/googlecode/mp4parser/authoring/builder/FragmentedMp4Builder;->createTkhd(Lcom/googlecode/mp4parser/authoring/Movie;Lcom/googlecode/mp4parser/authoring/Track;)Lcom/coremedia/iso/boxes/Box;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/coremedia/iso/boxes/TrackBox;->addBox(Lcom/coremedia/iso/boxes/Box;)V

    .line 711
    invoke-virtual {p0, p1, p2}, Lcom/googlecode/mp4parser/authoring/builder/FragmentedMp4Builder;->createMdia(Lcom/googlecode/mp4parser/authoring/Track;Lcom/googlecode/mp4parser/authoring/Movie;)Lcom/coremedia/iso/boxes/Box;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/coremedia/iso/boxes/TrackBox;->addBox(Lcom/coremedia/iso/boxes/Box;)V

    .line 712
    return-object v0
.end method

.method protected createTrex(Lcom/googlecode/mp4parser/authoring/Movie;Lcom/googlecode/mp4parser/authoring/Track;)Lcom/coremedia/iso/boxes/Box;
    .locals 7
    .parameter "movie"
    .parameter "track"

    .prologue
    const-wide/16 v5, 0x0

    const/4 v4, 0x2

    .line 581
    new-instance v1, Lcom/coremedia/iso/boxes/fragment/TrackExtendsBox;

    invoke-direct {v1}, Lcom/coremedia/iso/boxes/fragment/TrackExtendsBox;-><init>()V

    .line 582
    .local v1, trex:Lcom/coremedia/iso/boxes/fragment/TrackExtendsBox;
    invoke-interface {p2}, Lcom/googlecode/mp4parser/authoring/Track;->getTrackMetaData()Lcom/googlecode/mp4parser/authoring/TrackMetaData;

    move-result-object v2

    invoke-virtual {v2}, Lcom/googlecode/mp4parser/authoring/TrackMetaData;->getTrackId()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/coremedia/iso/boxes/fragment/TrackExtendsBox;->setTrackId(J)V

    .line 583
    const-wide/16 v2, 0x1

    invoke-virtual {v1, v2, v3}, Lcom/coremedia/iso/boxes/fragment/TrackExtendsBox;->setDefaultSampleDescriptionIndex(J)V

    .line 584
    invoke-virtual {v1, v5, v6}, Lcom/coremedia/iso/boxes/fragment/TrackExtendsBox;->setDefaultSampleDuration(J)V

    .line 585
    invoke-virtual {v1, v5, v6}, Lcom/coremedia/iso/boxes/fragment/TrackExtendsBox;->setDefaultSampleSize(J)V

    .line 586
    new-instance v0, Lcom/coremedia/iso/boxes/fragment/SampleFlags;

    invoke-direct {v0}, Lcom/coremedia/iso/boxes/fragment/SampleFlags;-><init>()V

    .line 587
    .local v0, sf:Lcom/coremedia/iso/boxes/fragment/SampleFlags;
    const-string v2, "soun"

    invoke-interface {p2}, Lcom/googlecode/mp4parser/authoring/Track;->getHandler()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 590
    invoke-virtual {v0, v4}, Lcom/coremedia/iso/boxes/fragment/SampleFlags;->setSampleDependsOn(I)V

    .line 591
    invoke-virtual {v0, v4}, Lcom/coremedia/iso/boxes/fragment/SampleFlags;->setSampleIsDependedOn(I)V

    .line 593
    :cond_0
    invoke-virtual {v1, v0}, Lcom/coremedia/iso/boxes/fragment/TrackExtendsBox;->setDefaultSampleFlags(Lcom/coremedia/iso/boxes/fragment/SampleFlags;)V

    .line 594
    return-object v1
.end method

.method protected createTruns(JJLcom/googlecode/mp4parser/authoring/Track;I)Ljava/util/List;
    .locals 22
    .parameter "startSample"
    .parameter "endSample"
    .parameter "track"
    .parameter "sequenceNumber"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JJ",
            "Lcom/googlecode/mp4parser/authoring/Track;",
            "I)",
            "Ljava/util/List",
            "<+",
            "Lcom/coremedia/iso/boxes/Box;",
            ">;"
        }
    .end annotation

    .prologue
    .line 309
    new-instance v18, Lcom/coremedia/iso/boxes/fragment/TrackRunBox;

    invoke-direct/range {v18 .. v18}, Lcom/coremedia/iso/boxes/fragment/TrackRunBox;-><init>()V

    .line 310
    .local v18, trun:Lcom/coremedia/iso/boxes/fragment/TrackRunBox;
    invoke-virtual/range {p0 .. p6}, Lcom/googlecode/mp4parser/authoring/builder/FragmentedMp4Builder;->getSampleSizes(JJLcom/googlecode/mp4parser/authoring/Track;I)[J

    move-result-object v15

    .line 312
    .local v15, sampleSizes:[J
    const/16 v19, 0x1

    invoke-virtual/range {v18 .. v19}, Lcom/coremedia/iso/boxes/fragment/TrackRunBox;->setSampleDurationPresent(Z)V

    .line 313
    const/16 v19, 0x1

    invoke-virtual/range {v18 .. v19}, Lcom/coremedia/iso/boxes/fragment/TrackRunBox;->setSampleSizePresent(Z)V

    .line 314
    new-instance v8, Ljava/util/ArrayList;

    sub-long v19, p3, p1

    invoke-static/range {v19 .. v20}, Lcom/googlecode/mp4parser/util/CastUtils;->l2i(J)I

    move-result v19

    move/from16 v0, v19

    invoke-direct {v8, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 317
    .local v8, entries:Ljava/util/List;,"Ljava/util/List<Lcom/coremedia/iso/boxes/fragment/TrackRunBox$Entry;>;"
    new-instance v17, Ljava/util/LinkedList;

    invoke-interface/range {p5 .. p5}, Lcom/googlecode/mp4parser/authoring/Track;->getDecodingTimeEntries()Ljava/util/List;

    move-result-object v19

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    invoke-direct {v0, v1}, Ljava/util/LinkedList;-><init>(Ljava/util/Collection;)V

    .line 318
    .local v17, timeQueue:Ljava/util/Queue;,"Ljava/util/Queue<Lcom/coremedia/iso/boxes/TimeToSampleBox$Entry;>;"
    const-wide/16 v19, 0x1

    sub-long v12, p1, v19

    .line 319
    .local v12, left:J
    invoke-interface/range {v17 .. v17}, Ljava/util/Queue;->peek()Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Lcom/coremedia/iso/boxes/TimeToSampleBox$Entry;

    invoke-virtual/range {v19 .. v19}, Lcom/coremedia/iso/boxes/TimeToSampleBox$Entry;->getCount()J

    move-result-wide v5

    .line 320
    .local v5, curEntryLeft:J
    :goto_0
    cmp-long v19, v12, v5

    if-lez v19, :cond_0

    .line 321
    sub-long/2addr v12, v5

    .line 322
    invoke-interface/range {v17 .. v17}, Ljava/util/Queue;->remove()Ljava/lang/Object;

    .line 323
    invoke-interface/range {v17 .. v17}, Ljava/util/Queue;->peek()Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Lcom/coremedia/iso/boxes/TimeToSampleBox$Entry;

    invoke-virtual/range {v19 .. v19}, Lcom/coremedia/iso/boxes/TimeToSampleBox$Entry;->getCount()J

    move-result-wide v5

    goto :goto_0

    .line 325
    :cond_0
    sub-long/2addr v5, v12

    .line 328
    invoke-interface/range {p5 .. p5}, Lcom/googlecode/mp4parser/authoring/Track;->getCompositionTimeEntries()Ljava/util/List;

    move-result-object v19

    if-eqz v19, :cond_2

    invoke-interface/range {p5 .. p5}, Lcom/googlecode/mp4parser/authoring/Track;->getCompositionTimeEntries()Ljava/util/List;

    move-result-object v19

    invoke-interface/range {v19 .. v19}, Ljava/util/List;->size()I

    move-result v19

    if-lez v19, :cond_2

    new-instance v4, Ljava/util/LinkedList;

    invoke-interface/range {p5 .. p5}, Lcom/googlecode/mp4parser/authoring/Track;->getCompositionTimeEntries()Ljava/util/List;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-direct {v4, v0}, Ljava/util/LinkedList;-><init>(Ljava/util/Collection;)V

    .line 331
    .local v4, compositionTimeQueue:Ljava/util/Queue;,"Ljava/util/Queue<Lcom/coremedia/iso/boxes/CompositionTimeToSample$Entry;>;"
    :goto_1
    if-eqz v4, :cond_3

    invoke-interface {v4}, Ljava/util/Queue;->peek()Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Lcom/coremedia/iso/boxes/CompositionTimeToSample$Entry;

    invoke-virtual/range {v19 .. v19}, Lcom/coremedia/iso/boxes/CompositionTimeToSample$Entry;->getCount()I

    move-result v19

    move/from16 v0, v19

    int-to-long v2, v0

    .line 334
    .local v2, compositionTimeEntriesLeft:J
    :goto_2
    const-wide/16 v19, 0x0

    cmp-long v19, v2, v19

    if-lez v19, :cond_4

    const/16 v19, 0x1

    :goto_3
    invoke-virtual/range {v18 .. v19}, Lcom/coremedia/iso/boxes/fragment/TrackRunBox;->setSampleCompositionTimeOffsetPresent(Z)V

    .line 337
    const-wide/16 v10, 0x1

    .local v10, i:J
    :goto_4
    cmp-long v19, v10, p1

    if-gez v19, :cond_5

    .line 338
    if-eqz v4, :cond_1

    .line 340
    const-wide/16 v19, 0x1

    sub-long v2, v2, v19

    const-wide/16 v19, 0x0

    cmp-long v19, v2, v19

    if-nez v19, :cond_1

    invoke-interface {v4}, Ljava/util/Queue;->size()I

    move-result v19

    const/16 v20, 0x1

    move/from16 v0, v19

    move/from16 v1, v20

    if-le v0, v1, :cond_1

    .line 341
    invoke-interface {v4}, Ljava/util/Queue;->remove()Ljava/lang/Object;

    .line 342
    invoke-interface {v4}, Ljava/util/Queue;->element()Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Lcom/coremedia/iso/boxes/CompositionTimeToSample$Entry;

    invoke-virtual/range {v19 .. v19}, Lcom/coremedia/iso/boxes/CompositionTimeToSample$Entry;->getCount()I

    move-result v19

    move/from16 v0, v19

    int-to-long v2, v0

    .line 337
    :cond_1
    const-wide/16 v19, 0x1

    add-long v10, v10, v19

    goto :goto_4

    .line 328
    .end local v2           #compositionTimeEntriesLeft:J
    .end local v4           #compositionTimeQueue:Ljava/util/Queue;,"Ljava/util/Queue<Lcom/coremedia/iso/boxes/CompositionTimeToSample$Entry;>;"
    .end local v10           #i:J
    :cond_2
    const/4 v4, 0x0

    goto :goto_1

    .line 331
    .restart local v4       #compositionTimeQueue:Ljava/util/Queue;,"Ljava/util/Queue<Lcom/coremedia/iso/boxes/CompositionTimeToSample$Entry;>;"
    :cond_3
    const-wide/16 v2, -0x1

    goto :goto_2

    .line 334
    .restart local v2       #compositionTimeEntriesLeft:J
    :cond_4
    const/16 v19, 0x0

    goto :goto_3

    .line 347
    .restart local v10       #i:J
    :cond_5
    invoke-interface/range {p5 .. p5}, Lcom/googlecode/mp4parser/authoring/Track;->getSampleDependencies()Ljava/util/List;

    move-result-object v19

    if-eqz v19, :cond_6

    invoke-interface/range {p5 .. p5}, Lcom/googlecode/mp4parser/authoring/Track;->getSampleDependencies()Ljava/util/List;

    move-result-object v19

    invoke-interface/range {v19 .. v19}, Ljava/util/List;->isEmpty()Z

    move-result v19

    if-eqz v19, :cond_7

    :cond_6
    invoke-interface/range {p5 .. p5}, Lcom/googlecode/mp4parser/authoring/Track;->getSyncSamples()[J

    move-result-object v19

    if-eqz v19, :cond_d

    invoke-interface/range {p5 .. p5}, Lcom/googlecode/mp4parser/authoring/Track;->getSyncSamples()[J

    move-result-object v19

    move-object/from16 v0, v19

    array-length v0, v0

    move/from16 v19, v0

    if-eqz v19, :cond_d

    :cond_7
    const/4 v14, 0x1

    .line 350
    .local v14, sampleFlagsRequired:Z
    :goto_5
    move-object/from16 v0, v18

    invoke-virtual {v0, v14}, Lcom/coremedia/iso/boxes/fragment/TrackRunBox;->setSampleFlagsPresent(Z)V

    .line 352
    const/4 v10, 0x0

    .local v10, i:I
    :goto_6
    array-length v0, v15

    move/from16 v19, v0

    move/from16 v0, v19

    if-ge v10, v0, :cond_f

    .line 353
    new-instance v9, Lcom/coremedia/iso/boxes/fragment/TrackRunBox$Entry;

    invoke-direct {v9}, Lcom/coremedia/iso/boxes/fragment/TrackRunBox$Entry;-><init>()V

    .line 354
    .local v9, entry:Lcom/coremedia/iso/boxes/fragment/TrackRunBox$Entry;
    aget-wide v19, v15, v10

    move-wide/from16 v0, v19

    invoke-virtual {v9, v0, v1}, Lcom/coremedia/iso/boxes/fragment/TrackRunBox$Entry;->setSampleSize(J)V

    .line 355
    if-eqz v14, :cond_a

    .line 357
    new-instance v16, Lcom/coremedia/iso/boxes/fragment/SampleFlags;

    invoke-direct/range {v16 .. v16}, Lcom/coremedia/iso/boxes/fragment/SampleFlags;-><init>()V

    .line 359
    .local v16, sflags:Lcom/coremedia/iso/boxes/fragment/SampleFlags;
    invoke-interface/range {p5 .. p5}, Lcom/googlecode/mp4parser/authoring/Track;->getSampleDependencies()Ljava/util/List;

    move-result-object v19

    if-eqz v19, :cond_8

    invoke-interface/range {p5 .. p5}, Lcom/googlecode/mp4parser/authoring/Track;->getSampleDependencies()Ljava/util/List;

    move-result-object v19

    invoke-interface/range {v19 .. v19}, Ljava/util/List;->isEmpty()Z

    move-result v19

    if-nez v19, :cond_8

    .line 360
    invoke-interface/range {p5 .. p5}, Lcom/googlecode/mp4parser/authoring/Track;->getSampleDependencies()Ljava/util/List;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-interface {v0, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/coremedia/iso/boxes/SampleDependencyTypeBox$Entry;

    .line 361
    .local v7, e:Lcom/coremedia/iso/boxes/SampleDependencyTypeBox$Entry;
    invoke-virtual {v7}, Lcom/coremedia/iso/boxes/SampleDependencyTypeBox$Entry;->getSampleDependsOn()I

    move-result v19

    move-object/from16 v0, v16

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/coremedia/iso/boxes/fragment/SampleFlags;->setSampleDependsOn(I)V

    .line 362
    invoke-virtual {v7}, Lcom/coremedia/iso/boxes/SampleDependencyTypeBox$Entry;->getSampleIsDependentOn()I

    move-result v19

    move-object/from16 v0, v16

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/coremedia/iso/boxes/fragment/SampleFlags;->setSampleIsDependedOn(I)V

    .line 363
    invoke-virtual {v7}, Lcom/coremedia/iso/boxes/SampleDependencyTypeBox$Entry;->getSampleHasRedundancy()I

    move-result v19

    move-object/from16 v0, v16

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/coremedia/iso/boxes/fragment/SampleFlags;->setSampleHasRedundancy(I)V

    .line 365
    .end local v7           #e:Lcom/coremedia/iso/boxes/SampleDependencyTypeBox$Entry;
    :cond_8
    invoke-interface/range {p5 .. p5}, Lcom/googlecode/mp4parser/authoring/Track;->getSyncSamples()[J

    move-result-object v19

    if-eqz v19, :cond_9

    invoke-interface/range {p5 .. p5}, Lcom/googlecode/mp4parser/authoring/Track;->getSyncSamples()[J

    move-result-object v19

    move-object/from16 v0, v19

    array-length v0, v0

    move/from16 v19, v0

    if-lez v19, :cond_9

    .line 367
    invoke-interface/range {p5 .. p5}, Lcom/googlecode/mp4parser/authoring/Track;->getSyncSamples()[J

    move-result-object v19

    int-to-long v0, v10

    move-wide/from16 v20, v0

    add-long v20, v20, p1

    invoke-static/range {v19 .. v21}, Ljava/util/Arrays;->binarySearch([JJ)I

    move-result v19

    if-ltz v19, :cond_e

    .line 368
    const/16 v19, 0x0

    move-object/from16 v0, v16

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/coremedia/iso/boxes/fragment/SampleFlags;->setSampleIsDifferenceSample(Z)V

    .line 369
    const/16 v19, 0x2

    move-object/from16 v0, v16

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/coremedia/iso/boxes/fragment/SampleFlags;->setSampleDependsOn(I)V

    .line 376
    :cond_9
    :goto_7
    move-object/from16 v0, v16

    invoke-virtual {v9, v0}, Lcom/coremedia/iso/boxes/fragment/TrackRunBox$Entry;->setSampleFlags(Lcom/coremedia/iso/boxes/fragment/SampleFlags;)V

    .line 380
    .end local v16           #sflags:Lcom/coremedia/iso/boxes/fragment/SampleFlags;
    :cond_a
    invoke-interface/range {v17 .. v17}, Ljava/util/Queue;->peek()Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Lcom/coremedia/iso/boxes/TimeToSampleBox$Entry;

    invoke-virtual/range {v19 .. v19}, Lcom/coremedia/iso/boxes/TimeToSampleBox$Entry;->getDelta()J

    move-result-wide v19

    move-wide/from16 v0, v19

    invoke-virtual {v9, v0, v1}, Lcom/coremedia/iso/boxes/fragment/TrackRunBox$Entry;->setSampleDuration(J)V

    .line 381
    const-wide/16 v19, 0x1

    sub-long v5, v5, v19

    const-wide/16 v19, 0x0

    cmp-long v19, v5, v19

    if-nez v19, :cond_b

    invoke-interface/range {v17 .. v17}, Ljava/util/Queue;->size()I

    move-result v19

    const/16 v20, 0x1

    move/from16 v0, v19

    move/from16 v1, v20

    if-le v0, v1, :cond_b

    .line 382
    invoke-interface/range {v17 .. v17}, Ljava/util/Queue;->remove()Ljava/lang/Object;

    .line 383
    invoke-interface/range {v17 .. v17}, Ljava/util/Queue;->peek()Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Lcom/coremedia/iso/boxes/TimeToSampleBox$Entry;

    invoke-virtual/range {v19 .. v19}, Lcom/coremedia/iso/boxes/TimeToSampleBox$Entry;->getCount()J

    move-result-wide v5

    .line 386
    :cond_b
    if-eqz v4, :cond_c

    .line 387
    invoke-interface {v4}, Ljava/util/Queue;->peek()Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Lcom/coremedia/iso/boxes/CompositionTimeToSample$Entry;

    invoke-virtual/range {v19 .. v19}, Lcom/coremedia/iso/boxes/CompositionTimeToSample$Entry;->getOffset()I

    move-result v19

    move/from16 v0, v19

    invoke-virtual {v9, v0}, Lcom/coremedia/iso/boxes/fragment/TrackRunBox$Entry;->setSampleCompositionTimeOffset(I)V

    .line 388
    const-wide/16 v19, 0x1

    sub-long v2, v2, v19

    const-wide/16 v19, 0x0

    cmp-long v19, v2, v19

    if-nez v19, :cond_c

    invoke-interface {v4}, Ljava/util/Queue;->size()I

    move-result v19

    const/16 v20, 0x1

    move/from16 v0, v19

    move/from16 v1, v20

    if-le v0, v1, :cond_c

    .line 389
    invoke-interface {v4}, Ljava/util/Queue;->remove()Ljava/lang/Object;

    .line 390
    invoke-interface {v4}, Ljava/util/Queue;->element()Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Lcom/coremedia/iso/boxes/CompositionTimeToSample$Entry;

    invoke-virtual/range {v19 .. v19}, Lcom/coremedia/iso/boxes/CompositionTimeToSample$Entry;->getCount()I

    move-result v19

    move/from16 v0, v19

    int-to-long v2, v0

    .line 393
    :cond_c
    invoke-interface {v8, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 352
    add-int/lit8 v10, v10, 0x1

    goto/16 :goto_6

    .line 347
    .end local v9           #entry:Lcom/coremedia/iso/boxes/fragment/TrackRunBox$Entry;
    .end local v14           #sampleFlagsRequired:Z
    .local v10, i:J
    :cond_d
    const/4 v14, 0x0

    goto/16 :goto_5

    .line 371
    .restart local v9       #entry:Lcom/coremedia/iso/boxes/fragment/TrackRunBox$Entry;
    .local v10, i:I
    .restart local v14       #sampleFlagsRequired:Z
    .restart local v16       #sflags:Lcom/coremedia/iso/boxes/fragment/SampleFlags;
    :cond_e
    const/16 v19, 0x1

    move-object/from16 v0, v16

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/coremedia/iso/boxes/fragment/SampleFlags;->setSampleIsDifferenceSample(Z)V

    .line 372
    const/16 v19, 0x1

    move-object/from16 v0, v16

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/coremedia/iso/boxes/fragment/SampleFlags;->setSampleDependsOn(I)V

    goto/16 :goto_7

    .line 396
    .end local v9           #entry:Lcom/coremedia/iso/boxes/fragment/TrackRunBox$Entry;
    .end local v16           #sflags:Lcom/coremedia/iso/boxes/fragment/SampleFlags;
    :cond_f
    move-object/from16 v0, v18

    invoke-virtual {v0, v8}, Lcom/coremedia/iso/boxes/fragment/TrackRunBox;->setEntries(Ljava/util/List;)V

    .line 398
    invoke-static/range {v18 .. v18}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v19

    return-object v19
.end method

.method public getAllowedHandlers()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 50
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "soun"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "vide"

    aput-object v2, v0, v1

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method protected getDuration(Lcom/googlecode/mp4parser/authoring/Track;)J
    .locals 8
    .parameter "track"

    .prologue
    .line 734
    const-wide/16 v0, 0x0

    .line 735
    .local v0, duration:J
    invoke-interface {p1}, Lcom/googlecode/mp4parser/authoring/Track;->getDecodingTimeEntries()Ljava/util/List;

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

    .line 736
    .local v2, entry:Lcom/coremedia/iso/boxes/TimeToSampleBox$Entry;
    invoke-virtual {v2}, Lcom/coremedia/iso/boxes/TimeToSampleBox$Entry;->getCount()J

    move-result-wide v4

    invoke-virtual {v2}, Lcom/coremedia/iso/boxes/TimeToSampleBox$Entry;->getDelta()J

    move-result-wide v6

    mul-long/2addr v4, v6

    add-long/2addr v0, v4

    goto :goto_0

    .line 738
    .end local v2           #entry:Lcom/coremedia/iso/boxes/TimeToSampleBox$Entry;
    :cond_0
    return-wide v0
.end method

.method public getFragmentIntersectionFinder()Lcom/googlecode/mp4parser/authoring/builder/FragmentIntersectionFinder;
    .locals 1

    .prologue
    .line 726
    iget-object v0, p0, Lcom/googlecode/mp4parser/authoring/builder/FragmentedMp4Builder;->intersectionFinder:Lcom/googlecode/mp4parser/authoring/builder/FragmentIntersectionFinder;

    return-object v0
.end method

.method protected getSampleSizes(JJLcom/googlecode/mp4parser/authoring/Track;I)[J
    .locals 5
    .parameter "startSample"
    .parameter "endSample"
    .parameter "track"
    .parameter "sequenceNumber"

    .prologue
    .line 290
    invoke-virtual/range {p0 .. p6}, Lcom/googlecode/mp4parser/authoring/builder/FragmentedMp4Builder;->getSamples(JJLcom/googlecode/mp4parser/authoring/Track;I)Ljava/util/List;

    move-result-object v2

    .line 292
    .local v2, samples:Ljava/util/List;,"Ljava/util/List<Ljava/nio/ByteBuffer;>;"
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    new-array v1, v3, [J

    .line 293
    .local v1, sampleSizes:[J
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    array-length v3, v1

    if-ge v0, v3, :cond_0

    .line 294
    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/nio/ByteBuffer;

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->limit()I

    move-result v3

    int-to-long v3, v3

    aput-wide v3, v1, v0

    .line 293
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 296
    :cond_0
    return-object v1
.end method

.method protected getSamples(JJLcom/googlecode/mp4parser/authoring/Track;I)Ljava/util/List;
    .locals 3
    .parameter "startSample"
    .parameter "endSample"
    .parameter "track"
    .parameter "sequenceNumber"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JJ",
            "Lcom/googlecode/mp4parser/authoring/Track;",
            "I)",
            "Ljava/util/List",
            "<",
            "Ljava/nio/ByteBuffer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 277
    invoke-interface {p5}, Lcom/googlecode/mp4parser/authoring/Track;->getSamples()Ljava/util/List;

    move-result-object v0

    invoke-static {p1, p2}, Lcom/googlecode/mp4parser/util/CastUtils;->l2i(J)I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-static {p3, p4}, Lcom/googlecode/mp4parser/util/CastUtils;->l2i(J)I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-interface {v0, v1, v2}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public setIntersectionFinder(Lcom/googlecode/mp4parser/authoring/builder/FragmentIntersectionFinder;)V
    .locals 0
    .parameter "intersectionFinder"

    .prologue
    .line 730
    iput-object p1, p0, Lcom/googlecode/mp4parser/authoring/builder/FragmentedMp4Builder;->intersectionFinder:Lcom/googlecode/mp4parser/authoring/builder/FragmentIntersectionFinder;

    .line 731
    return-void
.end method

.method protected sortTracksInSequence(Ljava/util/List;ILjava/util/Map;)Ljava/util/List;
    .locals 2
    .parameter
    .parameter "cycle"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/googlecode/mp4parser/authoring/Track;",
            ">;I",
            "Ljava/util/Map",
            "<",
            "Lcom/googlecode/mp4parser/authoring/Track;",
            "[J>;)",
            "Ljava/util/List",
            "<",
            "Lcom/googlecode/mp4parser/authoring/Track;",
            ">;"
        }
    .end annotation

    .prologue
    .line 86
    .local p1, tracks:Ljava/util/List;,"Ljava/util/List<Lcom/googlecode/mp4parser/authoring/Track;>;"
    .local p3, intersectionMap:Ljava/util/Map;,"Ljava/util/Map<Lcom/googlecode/mp4parser/authoring/Track;[J>;"
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0, p1}, Ljava/util/LinkedList;-><init>(Ljava/util/Collection;)V

    .line 87
    .end local p1           #tracks:Ljava/util/List;,"Ljava/util/List<Lcom/googlecode/mp4parser/authoring/Track;>;"
    .local v0, tracks:Ljava/util/List;,"Ljava/util/List<Lcom/googlecode/mp4parser/authoring/Track;>;"
    new-instance v1, Lcom/googlecode/mp4parser/authoring/builder/FragmentedMp4Builder$1;

    invoke-direct {v1, p0, p3, p2}, Lcom/googlecode/mp4parser/authoring/builder/FragmentedMp4Builder$1;-><init>(Lcom/googlecode/mp4parser/authoring/builder/FragmentedMp4Builder;Ljava/util/Map;I)V

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 110
    return-object v0
.end method
