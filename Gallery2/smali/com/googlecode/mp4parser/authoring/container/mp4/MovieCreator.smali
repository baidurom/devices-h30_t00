.class public Lcom/googlecode/mp4parser/authoring/container/mp4/MovieCreator;
.super Ljava/lang/Object;
.source "MovieCreator.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "mp4parser"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 31
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static build(Ljava/nio/channels/ReadableByteChannel;)Lcom/googlecode/mp4parser/authoring/Movie;
    .locals 8
    .parameter "channel"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 35
    new-instance v1, Lcom/coremedia/iso/IsoFile;

    invoke-direct {v1, p0}, Lcom/coremedia/iso/IsoFile;-><init>(Ljava/nio/channels/ReadableByteChannel;)V

    .line 36
    .local v1, isoFile:Lcom/coremedia/iso/IsoFile;
    new-instance v2, Lcom/googlecode/mp4parser/authoring/Movie;

    invoke-direct {v2}, Lcom/googlecode/mp4parser/authoring/Movie;-><init>()V

    .line 39
    .local v2, m:Lcom/googlecode/mp4parser/authoring/Movie;
    invoke-virtual {v1}, Lcom/coremedia/iso/IsoFile;->getMovieBox()Lcom/coremedia/iso/boxes/MovieBox;

    move-result-object v6

    if-nez v6, :cond_1

    .line 40
    const-string v6, "mp4parser"

    const-string v7, "getMovieBox is null"

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 41
    const/4 v2, 0x0

    .line 56
    .end local v2           #m:Lcom/googlecode/mp4parser/authoring/Movie;
    :cond_0
    return-object v2

    .line 44
    .restart local v2       #m:Lcom/googlecode/mp4parser/authoring/Movie;
    :cond_1
    invoke-virtual {v1}, Lcom/coremedia/iso/IsoFile;->getMovieBox()Lcom/coremedia/iso/boxes/MovieBox;

    move-result-object v6

    const-class v7, Lcom/coremedia/iso/boxes/TrackBox;

    invoke-virtual {v6, v7}, Lcom/coremedia/iso/boxes/MovieBox;->getBoxes(Ljava/lang/Class;)Ljava/util/List;

    move-result-object v5

    .line 45
    .local v5, trackBoxes:Ljava/util/List;,"Ljava/util/List<Lcom/coremedia/iso/boxes/TrackBox;>;"
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/coremedia/iso/boxes/TrackBox;

    .line 47
    .local v4, trackBox:Lcom/coremedia/iso/boxes/TrackBox;
    new-instance v3, Lcom/googlecode/mp4parser/authoring/Mp4TrackImpl;

    invoke-direct {v3, v4}, Lcom/googlecode/mp4parser/authoring/Mp4TrackImpl;-><init>(Lcom/coremedia/iso/boxes/TrackBox;)V

    .line 48
    .local v3, track:Lcom/googlecode/mp4parser/authoring/Mp4TrackImpl;
    invoke-virtual {v3}, Lcom/googlecode/mp4parser/authoring/Mp4TrackImpl;->isReady()Z

    move-result v6

    if-nez v6, :cond_2

    .line 49
    const-string v6, "mp4parser"

    const-string v7, "track is not ready"

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 52
    :cond_2
    invoke-virtual {v2, v3}, Lcom/googlecode/mp4parser/authoring/Movie;->addTrack(Lcom/googlecode/mp4parser/authoring/Track;)V

    goto :goto_0
.end method
