.class public Lcom/coremedia/iso/boxes/MovieBox;
.super Lcom/googlecode/mp4parser/AbstractContainerBox;
.source "MovieBox.java"


# static fields
.field public static final TYPE:Ljava/lang/String; = "moov"


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 33
    const-string v0, "moov"

    invoke-direct {p0, v0}, Lcom/googlecode/mp4parser/AbstractContainerBox;-><init>(Ljava/lang/String;)V

    .line 34
    return-void
.end method


# virtual methods
.method public getMovieHeaderBox()Lcom/coremedia/iso/boxes/MovieHeaderBox;
    .locals 3

    .prologue
    .line 59
    iget-object v2, p0, Lcom/googlecode/mp4parser/AbstractContainerBox;->boxes:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/coremedia/iso/boxes/Box;

    .line 60
    .local v0, box:Lcom/coremedia/iso/boxes/Box;
    instance-of v2, v0, Lcom/coremedia/iso/boxes/MovieHeaderBox;

    if-eqz v2, :cond_0

    .line 61
    check-cast v0, Lcom/coremedia/iso/boxes/MovieHeaderBox;

    .line 64
    .end local v0           #box:Lcom/coremedia/iso/boxes/Box;
    :goto_0
    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getTrackCount()I
    .locals 1

    .prologue
    .line 37
    const-class v0, Lcom/coremedia/iso/boxes/TrackBox;

    invoke-virtual {p0, v0}, Lcom/coremedia/iso/boxes/MovieBox;->getBoxes(Ljava/lang/Class;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getTrackNumbers()[J
    .locals 7

    .prologue
    .line 48
    const-class v5, Lcom/coremedia/iso/boxes/TrackBox;

    invoke-virtual {p0, v5}, Lcom/coremedia/iso/boxes/MovieBox;->getBoxes(Ljava/lang/Class;)Ljava/util/List;

    move-result-object v2

    .line 49
    .local v2, trackBoxes:Ljava/util/List;,"Ljava/util/List<Lcom/coremedia/iso/boxes/TrackBox;>;"
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v5

    new-array v4, v5, [J

    .line 50
    .local v4, trackNumbers:[J
    const/4 v3, 0x0

    .local v3, trackCounter:I
    :goto_0
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v5

    if-ge v3, v5, :cond_0

    .line 51
    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/googlecode/mp4parser/AbstractBox;

    .local v1, trackBoxe:Lcom/googlecode/mp4parser/AbstractBox;
    move-object v0, v1

    .line 52
    check-cast v0, Lcom/coremedia/iso/boxes/TrackBox;

    .line 53
    .local v0, trackBox:Lcom/coremedia/iso/boxes/TrackBox;
    invoke-virtual {v0}, Lcom/coremedia/iso/boxes/TrackBox;->getTrackHeaderBox()Lcom/coremedia/iso/boxes/TrackHeaderBox;

    move-result-object v5

    invoke-virtual {v5}, Lcom/coremedia/iso/boxes/TrackHeaderBox;->getTrackId()J

    move-result-wide v5

    aput-wide v5, v4, v3

    .line 50
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 55
    .end local v0           #trackBox:Lcom/coremedia/iso/boxes/TrackBox;
    .end local v1           #trackBoxe:Lcom/googlecode/mp4parser/AbstractBox;
    :cond_0
    return-object v4
.end method
