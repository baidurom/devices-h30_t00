.class public Lcom/coremedia/iso/boxes/fragment/MovieFragmentBox;
.super Lcom/googlecode/mp4parser/AbstractContainerBox;
.source "MovieFragmentBox.java"


# static fields
.field public static final TYPE:Ljava/lang/String; = "moof"


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 36
    const-string v0, "moof"

    invoke-direct {p0, v0}, Lcom/googlecode/mp4parser/AbstractContainerBox;-><init>(Ljava/lang/String;)V

    .line 37
    return-void
.end method


# virtual methods
.method public getOffset()J
    .locals 7
    .annotation runtime Lcom/googlecode/mp4parser/annotations/DoNotParseDetail;
    .end annotation

    .prologue
    .line 57
    move-object v0, p0

    .line 58
    .local v0, b:Lcom/coremedia/iso/boxes/Box;
    const-wide/16 v3, 0x0

    .line 59
    .local v3, offset:J
    :goto_0
    invoke-interface {v0}, Lcom/coremedia/iso/boxes/Box;->getParent()Lcom/coremedia/iso/boxes/ContainerBox;

    move-result-object v5

    if-eqz v5, :cond_2

    .line 60
    invoke-interface {v0}, Lcom/coremedia/iso/boxes/Box;->getParent()Lcom/coremedia/iso/boxes/ContainerBox;

    move-result-object v5

    invoke-interface {v5}, Lcom/coremedia/iso/boxes/ContainerBox;->getBoxes()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/coremedia/iso/boxes/Box;

    .line 61
    .local v1, box:Lcom/coremedia/iso/boxes/Box;
    if-ne v0, v1, :cond_1

    .line 66
    .end local v1           #box:Lcom/coremedia/iso/boxes/Box;
    :cond_0
    invoke-interface {v0}, Lcom/coremedia/iso/boxes/Box;->getParent()Lcom/coremedia/iso/boxes/ContainerBox;

    move-result-object v0

    goto :goto_0

    .line 64
    .restart local v1       #box:Lcom/coremedia/iso/boxes/Box;
    :cond_1
    invoke-interface {v1}, Lcom/coremedia/iso/boxes/Box;->getSize()J

    move-result-wide v5

    add-long/2addr v3, v5

    goto :goto_1

    .line 68
    .end local v1           #box:Lcom/coremedia/iso/boxes/Box;
    .end local v2           #i$:Ljava/util/Iterator;
    :cond_2
    return-wide v3
.end method

.method public getSyncSamples(Lcom/coremedia/iso/boxes/SampleDependencyTypeBox;)Ljava/util/List;
    .locals 8
    .parameter "sdtp"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/coremedia/iso/boxes/SampleDependencyTypeBox;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .prologue
    .line 41
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 43
    .local v3, result:Ljava/util/List;,"Ljava/util/List<Ljava/lang/Long;>;"
    invoke-virtual {p1}, Lcom/coremedia/iso/boxes/SampleDependencyTypeBox;->getEntries()Ljava/util/List;

    move-result-object v4

    .line 44
    .local v4, sampleEntries:Ljava/util/List;,"Ljava/util/List<Lcom/coremedia/iso/boxes/SampleDependencyTypeBox$Entry;>;"
    const-wide/16 v0, 0x1

    .line 45
    .local v0, i:J
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/coremedia/iso/boxes/SampleDependencyTypeBox$Entry;

    .line 46
    .local v5, sampleEntry:Lcom/coremedia/iso/boxes/SampleDependencyTypeBox$Entry;
    invoke-virtual {v5}, Lcom/coremedia/iso/boxes/SampleDependencyTypeBox$Entry;->getSampleDependsOn()I

    move-result v6

    const/4 v7, 0x2

    if-ne v6, v7, :cond_0

    .line 47
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-interface {v3, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 49
    :cond_0
    const-wide/16 v6, 0x1

    add-long/2addr v0, v6

    goto :goto_0

    .line 52
    .end local v5           #sampleEntry:Lcom/coremedia/iso/boxes/SampleDependencyTypeBox$Entry;
    :cond_1
    return-object v3
.end method

.method public getTrackCount()I
    .locals 2

    .prologue
    .line 73
    const-class v0, Lcom/coremedia/iso/boxes/fragment/TrackFragmentBox;

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/coremedia/iso/boxes/fragment/MovieFragmentBox;->getBoxes(Ljava/lang/Class;Z)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getTrackFragmentHeaderBoxes()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/coremedia/iso/boxes/fragment/TrackFragmentHeaderBox;",
            ">;"
        }
    .end annotation

    .prologue
    .line 94
    const-class v0, Lcom/coremedia/iso/boxes/fragment/TrackFragmentHeaderBox;

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/coremedia/iso/boxes/fragment/MovieFragmentBox;->getBoxes(Ljava/lang/Class;Z)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getTrackNumbers()[J
    .locals 6

    .prologue
    .line 84
    const-class v4, Lcom/coremedia/iso/boxes/fragment/TrackFragmentBox;

    const/4 v5, 0x0

    invoke-virtual {p0, v4, v5}, Lcom/coremedia/iso/boxes/fragment/MovieFragmentBox;->getBoxes(Ljava/lang/Class;Z)Ljava/util/List;

    move-result-object v1

    .line 85
    .local v1, trackBoxes:Ljava/util/List;,"Ljava/util/List<Lcom/coremedia/iso/boxes/fragment/TrackFragmentBox;>;"
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v4

    new-array v3, v4, [J

    .line 86
    .local v3, trackNumbers:[J
    const/4 v2, 0x0

    .local v2, trackCounter:I
    :goto_0
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v4

    if-ge v2, v4, :cond_0

    .line 87
    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/coremedia/iso/boxes/fragment/TrackFragmentBox;

    .line 88
    .local v0, trackBoxe:Lcom/coremedia/iso/boxes/fragment/TrackFragmentBox;
    invoke-virtual {v0}, Lcom/coremedia/iso/boxes/fragment/TrackFragmentBox;->getTrackFragmentHeaderBox()Lcom/coremedia/iso/boxes/fragment/TrackFragmentHeaderBox;

    move-result-object v4

    invoke-virtual {v4}, Lcom/coremedia/iso/boxes/fragment/TrackFragmentHeaderBox;->getTrackId()J

    move-result-wide v4

    aput-wide v4, v3, v2

    .line 86
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 90
    .end local v0           #trackBoxe:Lcom/coremedia/iso/boxes/fragment/TrackFragmentBox;
    :cond_0
    return-object v3
.end method

.method public getTrackRunBoxes()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/coremedia/iso/boxes/fragment/TrackRunBox;",
            ">;"
        }
    .end annotation

    .prologue
    .line 98
    const-class v0, Lcom/coremedia/iso/boxes/fragment/TrackRunBox;

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/coremedia/iso/boxes/fragment/MovieFragmentBox;->getBoxes(Ljava/lang/Class;Z)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method
