.class public Lcom/googlecode/mp4parser/authoring/builder/ByteBufferHelper;
.super Ljava/lang/Object;
.source "ByteBufferHelper.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 26
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static mergeAdjacentBuffers(Ljava/util/List;)Ljava/util/List;
    .locals 10
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/nio/ByteBuffer;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Ljava/nio/ByteBuffer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 28
    .local p0, samples:Ljava/util/List;,"Ljava/util/List<Ljava/nio/ByteBuffer;>;"
    new-instance v4, Ljava/util/ArrayList;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v6

    invoke-direct {v4, v6}, Ljava/util/ArrayList;-><init>(I)V

    .line 29
    .local v4, nuSamples:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/nio/ByteBuffer;>;"
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/nio/ByteBuffer;

    .line 30
    .local v0, buffer:Ljava/nio/ByteBuffer;
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v6

    add-int/lit8 v2, v6, -0x1

    .line 31
    .local v2, lastIndex:I
    if-ltz v2, :cond_0

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->hasArray()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/nio/ByteBuffer;

    invoke-virtual {v6}, Ljava/nio/ByteBuffer;->hasArray()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v7

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/nio/ByteBuffer;

    invoke-virtual {v6}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v6

    if-ne v7, v6, :cond_0

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/nio/ByteBuffer;

    invoke-virtual {v6}, Ljava/nio/ByteBuffer;->arrayOffset()I

    move-result v7

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/nio/ByteBuffer;

    invoke-virtual {v6}, Ljava/nio/ByteBuffer;->limit()I

    move-result v6

    add-int/2addr v6, v7

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->arrayOffset()I

    move-result v7

    if-ne v6, v7, :cond_0

    .line 33
    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/nio/ByteBuffer;

    .line 34
    .local v5, oldBuffer:Ljava/nio/ByteBuffer;
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v6

    invoke-virtual {v5}, Ljava/nio/ByteBuffer;->arrayOffset()I

    move-result v7

    invoke-virtual {v5}, Ljava/nio/ByteBuffer;->limit()I

    move-result v8

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->limit()I

    move-result v9

    add-int/2addr v8, v9

    invoke-static {v6, v7, v8}, Ljava/nio/ByteBuffer;->wrap([BII)Ljava/nio/ByteBuffer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/nio/ByteBuffer;->slice()Ljava/nio/ByteBuffer;

    move-result-object v3

    .line 36
    .local v3, nu:Ljava/nio/ByteBuffer;
    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 37
    .end local v3           #nu:Ljava/nio/ByteBuffer;
    .end local v5           #oldBuffer:Ljava/nio/ByteBuffer;
    :cond_0
    if-ltz v2, :cond_1

    instance-of v6, v0, Ljava/nio/MappedByteBuffer;

    if-eqz v6, :cond_1

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    instance-of v6, v6, Ljava/nio/MappedByteBuffer;

    if-eqz v6, :cond_1

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/nio/ByteBuffer;

    invoke-virtual {v6}, Ljava/nio/ByteBuffer;->limit()I

    move-result v7

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/nio/ByteBuffer;

    invoke-virtual {v6}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v6

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v8

    sub-int/2addr v6, v8

    if-ne v7, v6, :cond_1

    .line 41
    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/nio/ByteBuffer;

    .line 42
    .restart local v5       #oldBuffer:Ljava/nio/ByteBuffer;
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->limit()I

    move-result v6

    invoke-virtual {v5}, Ljava/nio/ByteBuffer;->limit()I

    move-result v7

    add-int/2addr v6, v7

    invoke-virtual {v5, v6}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    goto/16 :goto_0

    .line 44
    .end local v5           #oldBuffer:Ljava/nio/ByteBuffer;
    :cond_1
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 45
    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 48
    .end local v0           #buffer:Ljava/nio/ByteBuffer;
    .end local v2           #lastIndex:I
    :cond_2
    return-object v4
.end method
