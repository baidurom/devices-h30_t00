.class Lcom/googlecode/mp4parser/authoring/builder/FragmentedMp4Builder$1Mdat;
.super Ljava/lang/Object;
.source "FragmentedMp4Builder.java"

# interfaces
.implements Lcom/coremedia/iso/boxes/Box;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/googlecode/mp4parser/authoring/builder/FragmentedMp4Builder;->createMdat(JJLcom/googlecode/mp4parser/authoring/Track;I)Lcom/coremedia/iso/boxes/Box;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "Mdat"
.end annotation


# instance fields
.field parent:Lcom/coremedia/iso/boxes/ContainerBox;

.field final synthetic this$0:Lcom/googlecode/mp4parser/authoring/builder/FragmentedMp4Builder;

.field final synthetic val$endSample:J

.field final synthetic val$i:I

.field final synthetic val$startSample:J

.field final synthetic val$track:Lcom/googlecode/mp4parser/authoring/Track;


# direct methods
.method constructor <init>(Lcom/googlecode/mp4parser/authoring/builder/FragmentedMp4Builder;JJLcom/googlecode/mp4parser/authoring/Track;I)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 174
    iput-object p1, p0, Lcom/googlecode/mp4parser/authoring/builder/FragmentedMp4Builder$1Mdat;->this$0:Lcom/googlecode/mp4parser/authoring/builder/FragmentedMp4Builder;

    iput-wide p2, p0, Lcom/googlecode/mp4parser/authoring/builder/FragmentedMp4Builder$1Mdat;->val$startSample:J

    iput-wide p4, p0, Lcom/googlecode/mp4parser/authoring/builder/FragmentedMp4Builder$1Mdat;->val$endSample:J

    iput-object p6, p0, Lcom/googlecode/mp4parser/authoring/builder/FragmentedMp4Builder$1Mdat;->val$track:Lcom/googlecode/mp4parser/authoring/Track;

    iput p7, p0, Lcom/googlecode/mp4parser/authoring/builder/FragmentedMp4Builder$1Mdat;->val$i:I

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getBox(Ljava/nio/channels/WritableByteChannel;)V
    .locals 17
    .parameter "writableByteChannel"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 198
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/googlecode/mp4parser/authoring/builder/FragmentedMp4Builder$1Mdat;->this$0:Lcom/googlecode/mp4parser/authoring/builder/FragmentedMp4Builder;

    move-object/from16 v0, p0

    iget-wide v2, v0, Lcom/googlecode/mp4parser/authoring/builder/FragmentedMp4Builder$1Mdat;->val$startSample:J

    move-object/from16 v0, p0

    iget-wide v4, v0, Lcom/googlecode/mp4parser/authoring/builder/FragmentedMp4Builder$1Mdat;->val$endSample:J

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/googlecode/mp4parser/authoring/builder/FragmentedMp4Builder$1Mdat;->val$track:Lcom/googlecode/mp4parser/authoring/Track;

    move-object/from16 v0, p0

    iget v7, v0, Lcom/googlecode/mp4parser/authoring/builder/FragmentedMp4Builder$1Mdat;->val$i:I

    invoke-virtual/range {v1 .. v7}, Lcom/googlecode/mp4parser/authoring/builder/FragmentedMp4Builder;->getSamples(JJLcom/googlecode/mp4parser/authoring/Track;I)Ljava/util/List;

    move-result-object v9

    .line 199
    .local v9, bbs:Ljava/util/List;,"Ljava/util/List<Ljava/nio/ByteBuffer;>;"
    invoke-static {v9}, Lcom/googlecode/mp4parser/authoring/builder/ByteBufferHelper;->mergeAdjacentBuffers(Ljava/util/List;)Ljava/util/List;

    move-result-object v15

    .line 200
    .local v15, samples:Ljava/util/List;,"Ljava/util/List<Ljava/nio/ByteBuffer;>;"
    const/16 v1, 0x8

    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v10

    .line 201
    .local v10, header:Ljava/nio/ByteBuffer;
    invoke-virtual/range {p0 .. p0}, Lcom/googlecode/mp4parser/authoring/builder/FragmentedMp4Builder$1Mdat;->getSize()J

    move-result-wide v1

    invoke-static {v1, v2}, Lcom/googlecode/mp4parser/util/CastUtils;->l2i(J)I

    move-result v1

    int-to-long v1, v1

    invoke-static {v10, v1, v2}, Lcom/coremedia/iso/IsoTypeWriter;->writeUInt32(Ljava/nio/ByteBuffer;J)V

    .line 202
    invoke-virtual/range {p0 .. p0}, Lcom/googlecode/mp4parser/authoring/builder/FragmentedMp4Builder$1Mdat;->getType()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/coremedia/iso/IsoFile;->fourCCtoBytes(Ljava/lang/String;)[B

    move-result-object v1

    invoke-virtual {v10, v1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 203
    invoke-virtual {v10}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 204
    move-object/from16 v0, p1

    invoke-interface {v0, v10}, Ljava/nio/channels/WritableByteChannel;->write(Ljava/nio/ByteBuffer;)I

    .line 205
    move-object/from16 v0, p1

    instance-of v1, v0, Ljava/nio/channels/GatheringByteChannel;

    if-eqz v1, :cond_2

    .line 207
    const/16 v8, 0x400

    .line 211
    .local v8, STEPSIZE:I
    const/4 v11, 0x0

    .local v11, i:I
    :goto_0
    int-to-double v1, v11

    invoke-interface {v15}, Ljava/util/List;->size()I

    move-result v3

    int-to-double v3, v3

    int-to-double v5, v8

    div-double/2addr v3, v5

    invoke-static {v3, v4}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v3

    cmpg-double v1, v1, v3

    if-gez v1, :cond_3

    .line 212
    mul-int v2, v11, v8

    add-int/lit8 v1, v11, 0x1

    mul-int/2addr v1, v8

    invoke-interface {v15}, Ljava/util/List;->size()I

    move-result v3

    if-ge v1, v3, :cond_1

    add-int/lit8 v1, v11, 0x1

    mul-int/2addr v1, v8

    :goto_1
    invoke-interface {v15, v2, v1}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v16

    .line 215
    .local v16, sublist:Ljava/util/List;,"Ljava/util/List<Ljava/nio/ByteBuffer;>;"
    invoke-interface/range {v16 .. v16}, Ljava/util/List;->size()I

    move-result v1

    new-array v1, v1, [Ljava/nio/ByteBuffer;

    move-object/from16 v0, v16

    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v14

    check-cast v14, [Ljava/nio/ByteBuffer;

    .local v14, sampleArray:[Ljava/nio/ByteBuffer;
    :cond_0
    move-object/from16 v1, p1

    .line 217
    check-cast v1, Ljava/nio/channels/GatheringByteChannel;

    invoke-interface {v1, v14}, Ljava/nio/channels/GatheringByteChannel;->write([Ljava/nio/ByteBuffer;)J

    .line 218
    array-length v1, v14

    add-int/lit8 v1, v1, -0x1

    aget-object v1, v14, v1

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v1

    if-gtz v1, :cond_0

    .line 211
    add-int/lit8 v11, v11, 0x1

    goto :goto_0

    .line 212
    .end local v14           #sampleArray:[Ljava/nio/ByteBuffer;
    .end local v16           #sublist:Ljava/util/List;,"Ljava/util/List<Ljava/nio/ByteBuffer;>;"
    :cond_1
    invoke-interface {v15}, Ljava/util/List;->size()I

    move-result v1

    goto :goto_1

    .line 222
    .end local v8           #STEPSIZE:I
    .end local v11           #i:I
    :cond_2
    invoke-interface {v15}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v12

    .local v12, i$:Ljava/util/Iterator;
    :goto_2
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/nio/ByteBuffer;

    .line 223
    .local v13, sample:Ljava/nio/ByteBuffer;
    invoke-virtual {v13}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 224
    move-object/from16 v0, p1

    invoke-interface {v0, v13}, Ljava/nio/channels/WritableByteChannel;->write(Ljava/nio/ByteBuffer;)I

    goto :goto_2

    .line 228
    .end local v12           #i$:Ljava/util/Iterator;
    .end local v13           #sample:Ljava/nio/ByteBuffer;
    :cond_3
    return-void
.end method

.method public getParent()Lcom/coremedia/iso/boxes/ContainerBox;
    .locals 1

    .prologue
    .line 178
    iget-object v0, p0, Lcom/googlecode/mp4parser/authoring/builder/FragmentedMp4Builder$1Mdat;->parent:Lcom/coremedia/iso/boxes/ContainerBox;

    return-object v0
.end method

.method public getSize()J
    .locals 11

    .prologue
    .line 186
    const-wide/16 v9, 0x8

    .line 187
    .local v9, size:J
    iget-object v0, p0, Lcom/googlecode/mp4parser/authoring/builder/FragmentedMp4Builder$1Mdat;->this$0:Lcom/googlecode/mp4parser/authoring/builder/FragmentedMp4Builder;

    iget-wide v1, p0, Lcom/googlecode/mp4parser/authoring/builder/FragmentedMp4Builder$1Mdat;->val$startSample:J

    iget-wide v3, p0, Lcom/googlecode/mp4parser/authoring/builder/FragmentedMp4Builder$1Mdat;->val$endSample:J

    iget-object v5, p0, Lcom/googlecode/mp4parser/authoring/builder/FragmentedMp4Builder$1Mdat;->val$track:Lcom/googlecode/mp4parser/authoring/Track;

    iget v6, p0, Lcom/googlecode/mp4parser/authoring/builder/FragmentedMp4Builder$1Mdat;->val$i:I

    invoke-virtual/range {v0 .. v6}, Lcom/googlecode/mp4parser/authoring/builder/FragmentedMp4Builder;->getSamples(JJLcom/googlecode/mp4parser/authoring/Track;I)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .local v7, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/nio/ByteBuffer;

    .line 188
    .local v8, sample:Ljava/nio/ByteBuffer;
    invoke-virtual {v8}, Ljava/nio/ByteBuffer;->limit()I

    move-result v0

    int-to-long v0, v0

    add-long/2addr v9, v0

    goto :goto_0

    .line 190
    .end local v8           #sample:Ljava/nio/ByteBuffer;
    :cond_0
    return-wide v9
.end method

.method public getType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 194
    const-string v0, "mdat"

    return-object v0
.end method

.method public parse(Ljava/nio/channels/ReadableByteChannel;Ljava/nio/ByteBuffer;JLcom/coremedia/iso/BoxParser;)V
    .locals 0
    .parameter "readableByteChannel"
    .parameter "header"
    .parameter "contentSize"
    .parameter "boxParser"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 232
    return-void
.end method

.method public setParent(Lcom/coremedia/iso/boxes/ContainerBox;)V
    .locals 0
    .parameter "parent"

    .prologue
    .line 182
    iput-object p1, p0, Lcom/googlecode/mp4parser/authoring/builder/FragmentedMp4Builder$1Mdat;->parent:Lcom/coremedia/iso/boxes/ContainerBox;

    .line 183
    return-void
.end method
