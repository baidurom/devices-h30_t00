.class public Lcom/coremedia/iso/boxes/SubSampleInformationBox$SampleEntry;
.super Ljava/lang/Object;
.source "SubSampleInformationBox.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/coremedia/iso/boxes/SubSampleInformationBox;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SampleEntry"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/coremedia/iso/boxes/SubSampleInformationBox$SampleEntry$SubsampleEntry;
    }
.end annotation


# instance fields
.field private sampleDelta:J

.field private subsampleCount:I

.field private subsampleEntries:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/coremedia/iso/boxes/SubSampleInformationBox$SampleEntry$SubsampleEntry;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 120
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 123
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/coremedia/iso/boxes/SubSampleInformationBox$SampleEntry;->subsampleEntries:Ljava/util/List;

    .line 150
    return-void
.end method


# virtual methods
.method public addSubsampleEntry(Lcom/coremedia/iso/boxes/SubSampleInformationBox$SampleEntry$SubsampleEntry;)V
    .locals 1
    .parameter "subsampleEntry"

    .prologue
    .line 146
    iget-object v0, p0, Lcom/coremedia/iso/boxes/SubSampleInformationBox$SampleEntry;->subsampleEntries:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 147
    iget v0, p0, Lcom/coremedia/iso/boxes/SubSampleInformationBox$SampleEntry;->subsampleCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/coremedia/iso/boxes/SubSampleInformationBox$SampleEntry;->subsampleCount:I

    .line 148
    return-void
.end method

.method public getSampleDelta()J
    .locals 2

    .prologue
    .line 126
    iget-wide v0, p0, Lcom/coremedia/iso/boxes/SubSampleInformationBox$SampleEntry;->sampleDelta:J

    return-wide v0
.end method

.method public getSubsampleCount()I
    .locals 1

    .prologue
    .line 134
    iget v0, p0, Lcom/coremedia/iso/boxes/SubSampleInformationBox$SampleEntry;->subsampleCount:I

    return v0
.end method

.method public getSubsampleEntries()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/coremedia/iso/boxes/SubSampleInformationBox$SampleEntry$SubsampleEntry;",
            ">;"
        }
    .end annotation

    .prologue
    .line 142
    iget-object v0, p0, Lcom/coremedia/iso/boxes/SubSampleInformationBox$SampleEntry;->subsampleEntries:Ljava/util/List;

    return-object v0
.end method

.method public setSampleDelta(J)V
    .locals 0
    .parameter "sampleDelta"

    .prologue
    .line 130
    iput-wide p1, p0, Lcom/coremedia/iso/boxes/SubSampleInformationBox$SampleEntry;->sampleDelta:J

    .line 131
    return-void
.end method

.method public setSubsampleCount(I)V
    .locals 0
    .parameter "subsampleCount"

    .prologue
    .line 138
    iput p1, p0, Lcom/coremedia/iso/boxes/SubSampleInformationBox$SampleEntry;->subsampleCount:I

    .line 139
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 201
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SampleEntry{sampleDelta="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/coremedia/iso/boxes/SubSampleInformationBox$SampleEntry;->sampleDelta:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", subsampleCount="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/coremedia/iso/boxes/SubSampleInformationBox$SampleEntry;->subsampleCount:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", subsampleEntries="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/coremedia/iso/boxes/SubSampleInformationBox$SampleEntry;->subsampleEntries:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
