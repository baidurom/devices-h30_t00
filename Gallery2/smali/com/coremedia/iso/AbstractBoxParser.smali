.class public abstract Lcom/coremedia/iso/AbstractBoxParser;
.super Ljava/lang/Object;
.source "AbstractBoxParser.java"

# interfaces
.implements Lcom/coremedia/iso/BoxParser;


# static fields
.field static final synthetic $assertionsDisabled:Z

.field private static LOG:Ljava/util/logging/Logger;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 35
    const-class v0, Lcom/coremedia/iso/AbstractBoxParser;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/coremedia/iso/AbstractBoxParser;->$assertionsDisabled:Z

    .line 37
    const-class v0, Lcom/coremedia/iso/AbstractBoxParser;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lcom/coremedia/iso/AbstractBoxParser;->LOG:Ljava/util/logging/Logger;

    return-void

    .line 35
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 35
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract createBox(Ljava/lang/String;[BLjava/lang/String;)Lcom/coremedia/iso/boxes/Box;
.end method

.method public parseBox(Ljava/nio/channels/ReadableByteChannel;Lcom/coremedia/iso/boxes/ContainerBox;)Lcom/coremedia/iso/boxes/Box;
    .locals 16
    .parameter "byteChannel"
    .parameter "parent"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 52
    const-wide/16 v12, 0x8

    move-object/from16 v0, p1

    invoke-static {v0, v12, v13}, Lcom/coremedia/iso/ChannelHelper;->readFully(Ljava/nio/channels/ReadableByteChannel;J)Ljava/nio/ByteBuffer;

    move-result-object v3

    .line 54
    .local v3, header:Ljava/nio/ByteBuffer;
    invoke-static {v3}, Lcom/coremedia/iso/IsoTypeReader;->readUInt32(Ljava/nio/ByteBuffer;)J

    move-result-wide v8

    .line 56
    .local v8, size:J
    const-wide/16 v12, 0x8

    cmp-long v2, v8, v12

    if-gez v2, :cond_1

    const-wide/16 v12, 0x1

    cmp-long v2, v8, v12

    if-lez v2, :cond_1

    .line 57
    sget-object v2, Lcom/coremedia/iso/AbstractBoxParser;->LOG:Ljava/util/logging/Logger;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Plausibility check failed: size < 8 (size = "

    invoke-virtual {v6, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v12, "). Stop parsing!"

    invoke-virtual {v6, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/util/logging/Logger;->severe(Ljava/lang/String;)V

    .line 58
    const/4 v1, 0x0

    .line 143
    :cond_0
    :goto_0
    return-object v1

    .line 62
    :cond_1
    invoke-static {v3}, Lcom/coremedia/iso/IsoTypeReader;->read4cc(Ljava/nio/ByteBuffer;)Ljava/lang/String;

    move-result-object v10

    .line 63
    .local v10, type:Ljava/lang/String;
    const/4 v11, 0x0

    .line 66
    .local v11, usertype:[B
    const-wide/16 v12, 0x1

    cmp-long v2, v8, v12

    if-nez v2, :cond_3

    .line 67
    const/16 v2, 0x8

    invoke-static {v2}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v7

    .line 68
    .local v7, bb:Ljava/nio/ByteBuffer;
    move-object/from16 v0, p1

    invoke-interface {v0, v7}, Ljava/nio/channels/ReadableByteChannel;->read(Ljava/nio/ByteBuffer;)I

    .line 69
    invoke-virtual {v7}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 70
    invoke-static {v7}, Lcom/coremedia/iso/IsoTypeReader;->readUInt64(Ljava/nio/ByteBuffer;)J

    move-result-wide v8

    .line 71
    const-wide/16 v12, 0x10

    sub-long v4, v8, v12

    .line 82
    .end local v7           #bb:Ljava/nio/ByteBuffer;
    .local v4, contentSize:J
    :goto_1
    const-string v2, "uuid"

    invoke-virtual {v2, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 83
    const/16 v2, 0x10

    invoke-static {v2}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v7

    .line 84
    .restart local v7       #bb:Ljava/nio/ByteBuffer;
    move-object/from16 v0, p1

    invoke-interface {v0, v7}, Ljava/nio/channels/ReadableByteChannel;->read(Ljava/nio/ByteBuffer;)I

    .line 85
    invoke-virtual {v7}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 86
    invoke-virtual {v7}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v11

    .line 87
    const-wide/16 v12, 0x10

    sub-long/2addr v4, v12

    .line 89
    .end local v7           #bb:Ljava/nio/ByteBuffer;
    :cond_2
    invoke-interface/range {p2 .. p2}, Lcom/coremedia/iso/boxes/ContainerBox;->getType()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-virtual {v0, v10, v11, v2}, Lcom/coremedia/iso/AbstractBoxParser;->createBox(Ljava/lang/String;[BLjava/lang/String;)Lcom/coremedia/iso/boxes/Box;

    move-result-object v1

    .line 90
    .local v1, box:Lcom/coremedia/iso/boxes/Box;
    move-object/from16 v0, p2

    invoke-interface {v1, v0}, Lcom/coremedia/iso/boxes/Box;->setParent(Lcom/coremedia/iso/boxes/ContainerBox;)V

    .line 91
    sget-object v2, Lcom/coremedia/iso/AbstractBoxParser;->LOG:Ljava/util/logging/Logger;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Parsing "

    invoke-virtual {v6, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-interface {v1}, Lcom/coremedia/iso/boxes/Box;->getType()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v6, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/util/logging/Logger;->finest(Ljava/lang/String;)V

    .line 95
    sub-long v12, v8, v4

    invoke-static {v12, v13}, Lcom/googlecode/mp4parser/util/CastUtils;->l2i(J)I

    move-result v2

    const/16 v6, 0x8

    if-ne v2, v6, :cond_6

    .line 98
    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 120
    :goto_2
    const-wide/16 v12, 0x0

    cmp-long v2, v4, v12

    if-gez v2, :cond_a

    .line 121
    const-string v2, "mp4parser-AbstractBoxParser"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "contenSize:"

    invoke-virtual {v6, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v12, " < 0"

    invoke-virtual {v6, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v2, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 122
    const-string v2, "mp4parser-AbstractBoxParser"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "parsing "

    invoke-virtual {v6, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-interface {v1}, Lcom/coremedia/iso/boxes/Box;->getType()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v6, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v12, " "

    invoke-virtual {v6, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v6, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v12, " size="

    invoke-virtual {v6, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v2, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 123
    const/4 v1, 0x0

    goto/16 :goto_0

    .line 72
    .end local v1           #box:Lcom/coremedia/iso/boxes/Box;
    .end local v4           #contentSize:J
    :cond_3
    const-wide/16 v12, 0x0

    cmp-long v2, v8, v12

    if-nez v2, :cond_5

    .line 73
    move-object/from16 v0, p1

    instance-of v2, v0, Ljava/nio/channels/FileChannel;

    if-eqz v2, :cond_4

    move-object/from16 v2, p1

    .line 74
    check-cast v2, Ljava/nio/channels/FileChannel;

    invoke-virtual {v2}, Ljava/nio/channels/FileChannel;->size()J

    move-result-wide v12

    move-object/from16 v2, p1

    check-cast v2, Ljava/nio/channels/FileChannel;

    invoke-virtual {v2}, Ljava/nio/channels/FileChannel;->position()J

    move-result-wide v14

    sub-long/2addr v12, v14

    const-wide/16 v14, 0x8

    sub-long v8, v12, v14

    .line 78
    const-wide/16 v12, 0x8

    sub-long v4, v8, v12

    .restart local v4       #contentSize:J
    goto/16 :goto_1

    .line 76
    .end local v4           #contentSize:J
    :cond_4
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v6, "Only FileChannel inputs may use size == 0 (box reaches to the end of file)"

    invoke-direct {v2, v6}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 80
    :cond_5
    const-wide/16 v12, 0x8

    sub-long v4, v8, v12

    .restart local v4       #contentSize:J
    goto/16 :goto_1

    .line 99
    .restart local v1       #box:Lcom/coremedia/iso/boxes/Box;
    :cond_6
    sub-long v12, v8, v4

    invoke-static {v12, v13}, Lcom/googlecode/mp4parser/util/CastUtils;->l2i(J)I

    move-result v2

    const/16 v6, 0x10

    if-ne v2, v6, :cond_7

    .line 100
    const/16 v2, 0x10

    invoke-static {v2}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v3

    .line 101
    const-wide/16 v12, 0x1

    invoke-static {v3, v12, v13}, Lcom/coremedia/iso/IsoTypeWriter;->writeUInt32(Ljava/nio/ByteBuffer;J)V

    .line 102
    invoke-static {v10}, Lcom/coremedia/iso/IsoFile;->fourCCtoBytes(Ljava/lang/String;)[B

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 103
    invoke-static {v3, v8, v9}, Lcom/coremedia/iso/IsoTypeWriter;->writeUInt64(Ljava/nio/ByteBuffer;J)V

    goto/16 :goto_2

    .line 104
    :cond_7
    sub-long v12, v8, v4

    invoke-static {v12, v13}, Lcom/googlecode/mp4parser/util/CastUtils;->l2i(J)I

    move-result v2

    const/16 v6, 0x18

    if-ne v2, v6, :cond_8

    .line 105
    const/16 v2, 0x18

    invoke-static {v2}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v3

    .line 106
    invoke-static {v3, v8, v9}, Lcom/coremedia/iso/IsoTypeWriter;->writeUInt32(Ljava/nio/ByteBuffer;J)V

    .line 107
    invoke-static {v10}, Lcom/coremedia/iso/IsoFile;->fourCCtoBytes(Ljava/lang/String;)[B

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 108
    invoke-virtual {v3, v11}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    goto/16 :goto_2

    .line 109
    :cond_8
    sub-long v12, v8, v4

    invoke-static {v12, v13}, Lcom/googlecode/mp4parser/util/CastUtils;->l2i(J)I

    move-result v2

    const/16 v6, 0x20

    if-ne v2, v6, :cond_9

    .line 110
    const/16 v2, 0x20

    invoke-static {v2}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v3

    .line 111
    invoke-static {v3, v8, v9}, Lcom/coremedia/iso/IsoTypeWriter;->writeUInt32(Ljava/nio/ByteBuffer;J)V

    .line 112
    invoke-static {v10}, Lcom/coremedia/iso/IsoFile;->fourCCtoBytes(Ljava/lang/String;)[B

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 113
    invoke-static {v3, v8, v9}, Lcom/coremedia/iso/IsoTypeWriter;->writeUInt64(Ljava/nio/ByteBuffer;J)V

    .line 114
    invoke-virtual {v3, v11}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    goto/16 :goto_2

    .line 116
    :cond_9
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v6, "I didn\'t expect that"

    invoke-direct {v2, v6}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_a
    move-object/from16 v2, p1

    move-object/from16 v6, p0

    .line 127
    invoke-interface/range {v1 .. v6}, Lcom/coremedia/iso/boxes/Box;->parse(Ljava/nio/channels/ReadableByteChannel;Ljava/nio/ByteBuffer;JLcom/coremedia/iso/BoxParser;)V

    .line 132
    sget-boolean v2, Lcom/coremedia/iso/AbstractBoxParser;->$assertionsDisabled:Z

    if-nez v2, :cond_b

    invoke-interface {v1}, Lcom/coremedia/iso/boxes/Box;->getSize()J

    move-result-wide v12

    cmp-long v2, v8, v12

    if-eqz v2, :cond_b

    new-instance v2, Ljava/lang/AssertionError;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Reconstructed Size is not x to the number of parsed bytes! ("

    invoke-virtual {v6, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-interface {v1}, Lcom/coremedia/iso/boxes/Box;->getType()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v6, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v12, ")"

    invoke-virtual {v6, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v12, " Actual Box size: "

    invoke-virtual {v6, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v12, " Calculated size: "

    invoke-virtual {v6, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-interface {v1}, Lcom/coremedia/iso/boxes/Box;->getSize()J

    move-result-wide v12

    invoke-virtual {v6, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v2, v6}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v2

    .line 136
    :cond_b
    invoke-interface {v1}, Lcom/coremedia/iso/boxes/Box;->getSize()J

    move-result-wide v12

    cmp-long v2, v8, v12

    if-eqz v2, :cond_0

    .line 137
    const-string v2, "mp4parser-AbstractBoxParser"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Reconstructed Size is not x to the number of parsed bytes! ("

    invoke-virtual {v6, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-interface {v1}, Lcom/coremedia/iso/boxes/Box;->getType()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v6, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v12, ")"

    invoke-virtual {v6, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v12, " Actual Box size: "

    invoke-virtual {v6, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v12, " Calculated size: "

    invoke-virtual {v6, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-interface {v1}, Lcom/coremedia/iso/boxes/Box;->getSize()J

    move-result-wide v12

    invoke-virtual {v6, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v2, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 140
    const/4 v1, 0x0

    goto/16 :goto_0
.end method
