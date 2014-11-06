.class Lcom/googlecode/mp4parser/authoring/builder/FragmentedMp4Builder$1;
.super Ljava/lang/Object;
.source "FragmentedMp4Builder.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/googlecode/mp4parser/authoring/builder/FragmentedMp4Builder;->sortTracksInSequence(Ljava/util/List;ILjava/util/Map;)Ljava/util/List;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Lcom/googlecode/mp4parser/authoring/Track;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/googlecode/mp4parser/authoring/builder/FragmentedMp4Builder;

.field final synthetic val$cycle:I

.field final synthetic val$intersectionMap:Ljava/util/Map;


# direct methods
.method constructor <init>(Lcom/googlecode/mp4parser/authoring/builder/FragmentedMp4Builder;Ljava/util/Map;I)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 87
    iput-object p1, p0, Lcom/googlecode/mp4parser/authoring/builder/FragmentedMp4Builder$1;->this$0:Lcom/googlecode/mp4parser/authoring/builder/FragmentedMp4Builder;

    iput-object p2, p0, Lcom/googlecode/mp4parser/authoring/builder/FragmentedMp4Builder$1;->val$intersectionMap:Ljava/util/Map;

    iput p3, p0, Lcom/googlecode/mp4parser/authoring/builder/FragmentedMp4Builder$1;->val$cycle:I

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Lcom/googlecode/mp4parser/authoring/Track;Lcom/googlecode/mp4parser/authoring/Track;)I
    .locals 21
    .parameter "o1"
    .parameter "o2"

    .prologue
    .line 89
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/googlecode/mp4parser/authoring/builder/FragmentedMp4Builder$1;->val$intersectionMap:Ljava/util/Map;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move-object/from16 v1, p1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, [J

    .line 90
    .local v16, startSamples1:[J
    move-object/from16 v0, p0

    iget v0, v0, Lcom/googlecode/mp4parser/authoring/builder/FragmentedMp4Builder$1;->val$cycle:I

    move/from16 v18, v0

    aget-wide v12, v16, v18

    .line 92
    .local v12, startSample1:J
    move-object/from16 v0, p0

    iget v0, v0, Lcom/googlecode/mp4parser/authoring/builder/FragmentedMp4Builder$1;->val$cycle:I

    move/from16 v18, v0

    add-int/lit8 v18, v18, 0x1

    move-object/from16 v0, v16

    array-length v0, v0

    move/from16 v19, v0

    move/from16 v0, v18

    move/from16 v1, v19

    if-ge v0, v1, :cond_0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/googlecode/mp4parser/authoring/builder/FragmentedMp4Builder$1;->val$cycle:I

    move/from16 v18, v0

    add-int/lit8 v18, v18, 0x1

    aget-wide v3, v16, v18

    .line 93
    .local v3, endSample1:J
    :goto_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/googlecode/mp4parser/authoring/builder/FragmentedMp4Builder$1;->val$intersectionMap:Ljava/util/Map;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move-object/from16 v1, p2

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, [J

    .line 94
    .local v17, startSamples2:[J
    move-object/from16 v0, p0

    iget v0, v0, Lcom/googlecode/mp4parser/authoring/builder/FragmentedMp4Builder$1;->val$cycle:I

    move/from16 v18, v0

    aget-wide v14, v17, v18

    .line 96
    .local v14, startSample2:J
    move-object/from16 v0, p0

    iget v0, v0, Lcom/googlecode/mp4parser/authoring/builder/FragmentedMp4Builder$1;->val$cycle:I

    move/from16 v18, v0

    add-int/lit8 v18, v18, 0x1

    move-object/from16 v0, v17

    array-length v0, v0

    move/from16 v19, v0

    move/from16 v0, v18

    move/from16 v1, v19

    if-ge v0, v1, :cond_1

    move-object/from16 v0, p0

    iget v0, v0, Lcom/googlecode/mp4parser/authoring/builder/FragmentedMp4Builder$1;->val$cycle:I

    move/from16 v18, v0

    add-int/lit8 v18, v18, 0x1

    aget-wide v5, v17, v18

    .line 97
    .local v5, endSample2:J
    :goto_1
    invoke-interface/range {p1 .. p1}, Lcom/googlecode/mp4parser/authoring/Track;->getSamples()Ljava/util/List;

    move-result-object v18

    invoke-static {v12, v13}, Lcom/googlecode/mp4parser/util/CastUtils;->l2i(J)I

    move-result v19

    add-int/lit8 v19, v19, -0x1

    invoke-static {v3, v4}, Lcom/googlecode/mp4parser/util/CastUtils;->l2i(J)I

    move-result v20

    add-int/lit8 v20, v20, -0x1

    invoke-interface/range {v18 .. v20}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v8

    .line 98
    .local v8, samples1:Ljava/util/List;,"Ljava/util/List<Ljava/nio/ByteBuffer;>;"
    invoke-interface/range {p2 .. p2}, Lcom/googlecode/mp4parser/authoring/Track;->getSamples()Ljava/util/List;

    move-result-object v18

    invoke-static {v14, v15}, Lcom/googlecode/mp4parser/util/CastUtils;->l2i(J)I

    move-result v19

    add-int/lit8 v19, v19, -0x1

    invoke-static {v5, v6}, Lcom/googlecode/mp4parser/util/CastUtils;->l2i(J)I

    move-result v20

    add-int/lit8 v20, v20, -0x1

    invoke-interface/range {v18 .. v20}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v9

    .line 99
    .local v9, samples2:Ljava/util/List;,"Ljava/util/List<Ljava/nio/ByteBuffer;>;"
    const/4 v10, 0x0

    .line 100
    .local v10, size1:I
    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .local v7, i$:Ljava/util/Iterator;
    :goto_2
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v18

    if-eqz v18, :cond_2

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/nio/ByteBuffer;

    .line 101
    .local v2, byteBuffer:Ljava/nio/ByteBuffer;
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->limit()I

    move-result v18

    add-int v10, v10, v18

    goto :goto_2

    .line 92
    .end local v2           #byteBuffer:Ljava/nio/ByteBuffer;
    .end local v3           #endSample1:J
    .end local v5           #endSample2:J
    .end local v7           #i$:Ljava/util/Iterator;
    .end local v8           #samples1:Ljava/util/List;,"Ljava/util/List<Ljava/nio/ByteBuffer;>;"
    .end local v9           #samples2:Ljava/util/List;,"Ljava/util/List<Ljava/nio/ByteBuffer;>;"
    .end local v10           #size1:I
    .end local v14           #startSample2:J
    .end local v17           #startSamples2:[J
    :cond_0
    invoke-interface/range {p1 .. p1}, Lcom/googlecode/mp4parser/authoring/Track;->getSamples()Ljava/util/List;

    move-result-object v18

    invoke-interface/range {v18 .. v18}, Ljava/util/List;->size()I

    move-result v18

    add-int/lit8 v18, v18, 0x1

    move/from16 v0, v18

    int-to-long v3, v0

    goto/16 :goto_0

    .line 96
    .restart local v3       #endSample1:J
    .restart local v14       #startSample2:J
    .restart local v17       #startSamples2:[J
    :cond_1
    invoke-interface/range {p2 .. p2}, Lcom/googlecode/mp4parser/authoring/Track;->getSamples()Ljava/util/List;

    move-result-object v18

    invoke-interface/range {v18 .. v18}, Ljava/util/List;->size()I

    move-result v18

    add-int/lit8 v18, v18, 0x1

    move/from16 v0, v18

    int-to-long v5, v0

    goto :goto_1

    .line 103
    .restart local v5       #endSample2:J
    .restart local v7       #i$:Ljava/util/Iterator;
    .restart local v8       #samples1:Ljava/util/List;,"Ljava/util/List<Ljava/nio/ByteBuffer;>;"
    .restart local v9       #samples2:Ljava/util/List;,"Ljava/util/List<Ljava/nio/ByteBuffer;>;"
    .restart local v10       #size1:I
    :cond_2
    const/4 v11, 0x0

    .line 104
    .local v11, size2:I
    invoke-interface {v9}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_3
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v18

    if-eqz v18, :cond_3

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/nio/ByteBuffer;

    .line 105
    .restart local v2       #byteBuffer:Ljava/nio/ByteBuffer;
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->limit()I

    move-result v18

    add-int v11, v11, v18

    goto :goto_3

    .line 107
    .end local v2           #byteBuffer:Ljava/nio/ByteBuffer;
    :cond_3
    sub-int v18, v10, v11

    return v18
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 87
    check-cast p1, Lcom/googlecode/mp4parser/authoring/Track;

    .end local p1
    check-cast p2, Lcom/googlecode/mp4parser/authoring/Track;

    .end local p2
    invoke-virtual {p0, p1, p2}, Lcom/googlecode/mp4parser/authoring/builder/FragmentedMp4Builder$1;->compare(Lcom/googlecode/mp4parser/authoring/Track;Lcom/googlecode/mp4parser/authoring/Track;)I

    move-result v0

    return v0
.end method
