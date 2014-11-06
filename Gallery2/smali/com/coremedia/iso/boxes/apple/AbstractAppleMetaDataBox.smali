.class public abstract Lcom/coremedia/iso/boxes/apple/AbstractAppleMetaDataBox;
.super Lcom/googlecode/mp4parser/AbstractBox;
.source "AbstractAppleMetaDataBox.java"

# interfaces
.implements Lcom/coremedia/iso/boxes/ContainerBox;


# static fields
.field static final synthetic $assertionsDisabled:Z

.field private static LOG:Ljava/util/logging/Logger;


# instance fields
.field appleDataBox:Lcom/coremedia/iso/boxes/apple/AppleDataBox;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 21
    const-class v0, Lcom/coremedia/iso/boxes/apple/AbstractAppleMetaDataBox;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/coremedia/iso/boxes/apple/AbstractAppleMetaDataBox;->$assertionsDisabled:Z

    .line 22
    const-class v0, Lcom/coremedia/iso/boxes/apple/AbstractAppleMetaDataBox;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lcom/coremedia/iso/boxes/apple/AbstractAppleMetaDataBox;->LOG:Ljava/util/logging/Logger;

    return-void

    .line 21
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .parameter "type"

    .prologue
    .line 50
    invoke-direct {p0, p1}, Lcom/googlecode/mp4parser/AbstractBox;-><init>(Ljava/lang/String;)V

    .line 23
    new-instance v0, Lcom/coremedia/iso/boxes/apple/AppleDataBox;

    invoke-direct {v0}, Lcom/coremedia/iso/boxes/apple/AppleDataBox;-><init>()V

    iput-object v0, p0, Lcom/coremedia/iso/boxes/apple/AbstractAppleMetaDataBox;->appleDataBox:Lcom/coremedia/iso/boxes/apple/AppleDataBox;

    .line 51
    return-void
.end method

.method public static hexStringToByteArray(Ljava/lang/String;)[B
    .locals 7
    .parameter "s"

    .prologue
    const/16 v6, 0x10

    .line 154
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    .line 155
    .local v2, len:I
    div-int/lit8 v3, v2, 0x2

    new-array v0, v3, [B

    .line 156
    .local v0, data:[B
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v2, :cond_0

    .line 157
    div-int/lit8 v3, v1, 0x2

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-static {v4, v6}, Ljava/lang/Character;->digit(CI)I

    move-result v4

    shl-int/lit8 v4, v4, 0x4

    add-int/lit8 v5, v1, 0x1

    invoke-virtual {p0, v5}, Ljava/lang/String;->charAt(I)C

    move-result v5

    invoke-static {v5, v6}, Ljava/lang/Character;->digit(CI)I

    move-result v5

    add-int/2addr v4, v5

    int-to-byte v4, v4

    aput-byte v4, v0, v3

    .line 156
    add-int/lit8 v1, v1, 0x2

    goto :goto_0

    .line 160
    :cond_0
    return-object v0
.end method

.method static toLong(B)J
    .locals 2
    .parameter "b"

    .prologue
    .line 92
    if-gez p0, :cond_0

    add-int/lit16 v0, p0, 0x100

    int-to-long v0, v0

    :goto_0
    return-wide v0

    :cond_0
    int-to-long v0, p0

    goto :goto_0
.end method


# virtual methods
.method public _parseDetails(Ljava/nio/ByteBuffer;)V
    .locals 10
    .parameter "content"

    .prologue
    .line 55
    invoke-static {p1}, Lcom/coremedia/iso/IsoTypeReader;->readUInt32(Ljava/nio/ByteBuffer;)J

    move-result-wide v6

    .line 56
    .local v6, dataBoxSize:J
    invoke-static {p1}, Lcom/coremedia/iso/IsoTypeReader;->read4cc(Ljava/nio/ByteBuffer;)Ljava/lang/String;

    move-result-object v9

    .line 57
    .local v9, thisShouldBeData:Ljava/lang/String;
    sget-boolean v0, Lcom/coremedia/iso/boxes/apple/AbstractAppleMetaDataBox;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    const-string v0, "data"

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 58
    :cond_0
    new-instance v0, Lcom/coremedia/iso/boxes/apple/AppleDataBox;

    invoke-direct {v0}, Lcom/coremedia/iso/boxes/apple/AppleDataBox;-><init>()V

    iput-object v0, p0, Lcom/coremedia/iso/boxes/apple/AbstractAppleMetaDataBox;->appleDataBox:Lcom/coremedia/iso/boxes/apple/AppleDataBox;

    .line 60
    :try_start_0
    iget-object v0, p0, Lcom/coremedia/iso/boxes/apple/AbstractAppleMetaDataBox;->appleDataBox:Lcom/coremedia/iso/boxes/apple/AppleDataBox;

    new-instance v1, Lcom/googlecode/mp4parser/util/ByteBufferByteChannel;

    invoke-direct {v1, p1}, Lcom/googlecode/mp4parser/util/ByteBufferByteChannel;-><init>(Ljava/nio/ByteBuffer;)V

    const/4 v2, 0x0

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v3

    int-to-long v3, v3

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Lcom/coremedia/iso/boxes/apple/AppleDataBox;->parse(Ljava/nio/channels/ReadableByteChannel;Ljava/nio/ByteBuffer;JLcom/coremedia/iso/BoxParser;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 64
    iget-object v0, p0, Lcom/coremedia/iso/boxes/apple/AbstractAppleMetaDataBox;->appleDataBox:Lcom/coremedia/iso/boxes/apple/AppleDataBox;

    invoke-virtual {v0, p0}, Lcom/coremedia/iso/boxes/apple/AppleDataBox;->setParent(Lcom/coremedia/iso/boxes/ContainerBox;)V

    .line 65
    return-void

    .line 61
    :catch_0
    move-exception v8

    .line 62
    .local v8, e:Ljava/io/IOException;
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, v8}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method public getBoxes()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/coremedia/iso/boxes/Box;",
            ">;"
        }
    .end annotation

    .prologue
    .line 26
    iget-object v0, p0, Lcom/coremedia/iso/boxes/apple/AbstractAppleMetaDataBox;->appleDataBox:Lcom/coremedia/iso/boxes/apple/AppleDataBox;

    invoke-static {v0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getBoxes(Ljava/lang/Class;)Ljava/util/List;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lcom/coremedia/iso/boxes/Box;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;)",
            "Ljava/util/List",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 38
    .local p1, clazz:Ljava/lang/Class;,"Ljava/lang/Class<TT;>;"
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/coremedia/iso/boxes/apple/AbstractAppleMetaDataBox;->getBoxes(Ljava/lang/Class;Z)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getBoxes(Ljava/lang/Class;Z)Ljava/util/List;
    .locals 1
    .parameter
    .parameter "recursive"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lcom/coremedia/iso/boxes/Box;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;Z)",
            "Ljava/util/List",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 43
    .local p1, clazz:Ljava/lang/Class;,"Ljava/lang/Class<TT;>;"
    iget-object v0, p0, Lcom/coremedia/iso/boxes/apple/AbstractAppleMetaDataBox;->appleDataBox:Lcom/coremedia/iso/boxes/apple/AppleDataBox;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 44
    iget-object v0, p0, Lcom/coremedia/iso/boxes/apple/AbstractAppleMetaDataBox;->appleDataBox:Lcom/coremedia/iso/boxes/apple/AppleDataBox;

    invoke-static {v0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    .line 46
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected getContent(Ljava/nio/ByteBuffer;)V
    .locals 3
    .parameter "byteBuffer"

    .prologue
    .line 74
    :try_start_0
    iget-object v1, p0, Lcom/coremedia/iso/boxes/apple/AbstractAppleMetaDataBox;->appleDataBox:Lcom/coremedia/iso/boxes/apple/AppleDataBox;

    new-instance v2, Lcom/googlecode/mp4parser/util/ByteBufferByteChannel;

    invoke-direct {v2, p1}, Lcom/googlecode/mp4parser/util/ByteBufferByteChannel;-><init>(Ljava/nio/ByteBuffer;)V

    invoke-virtual {v1, v2}, Lcom/coremedia/iso/boxes/apple/AppleDataBox;->getBox(Ljava/nio/channels/WritableByteChannel;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 78
    return-void

    .line 75
    :catch_0
    move-exception v0

    .line 76
    .local v0, e:Ljava/io/IOException;
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "The Channel is based on a ByteBuffer and therefore it shouldn\'t throw any exception"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method protected getContentSize()J
    .locals 2

    .prologue
    .line 69
    iget-object v0, p0, Lcom/coremedia/iso/boxes/apple/AbstractAppleMetaDataBox;->appleDataBox:Lcom/coremedia/iso/boxes/apple/AppleDataBox;

    invoke-virtual {v0}, Lcom/coremedia/iso/boxes/apple/AppleDataBox;->getSize()J

    move-result-wide v0

    return-wide v0
.end method

.method public getNumOfBytesToFirstChild()J
    .locals 4

    .prologue
    .line 81
    invoke-virtual {p0}, Lcom/coremedia/iso/boxes/apple/AbstractAppleMetaDataBox;->getSize()J

    move-result-wide v0

    iget-object v2, p0, Lcom/coremedia/iso/boxes/apple/AbstractAppleMetaDataBox;->appleDataBox:Lcom/coremedia/iso/boxes/apple/AppleDataBox;

    invoke-virtual {v2}, Lcom/coremedia/iso/boxes/apple/AppleDataBox;->getSize()J

    move-result-wide v2

    sub-long/2addr v0, v2

    return-wide v0
.end method

.method public getValue()Ljava/lang/String;
    .locals 15

    .prologue
    const/4 v12, 0x1

    .line 135
    iget-object v10, p0, Lcom/coremedia/iso/boxes/apple/AbstractAppleMetaDataBox;->appleDataBox:Lcom/coremedia/iso/boxes/apple/AppleDataBox;

    invoke-virtual {v10}, Lcom/coremedia/iso/boxes/apple/AppleDataBox;->getFlags()I

    move-result v10

    if-ne v10, v12, :cond_0

    .line 136
    iget-object v10, p0, Lcom/coremedia/iso/boxes/apple/AbstractAppleMetaDataBox;->appleDataBox:Lcom/coremedia/iso/boxes/apple/AppleDataBox;

    invoke-virtual {v10}, Lcom/coremedia/iso/boxes/apple/AppleDataBox;->getData()[B

    move-result-object v10

    invoke-static {v10}, Lcom/coremedia/iso/Utf8;->convert([B)Ljava/lang/String;

    move-result-object v10

    .line 149
    :goto_0
    return-object v10

    .line 137
    :cond_0
    iget-object v10, p0, Lcom/coremedia/iso/boxes/apple/AbstractAppleMetaDataBox;->appleDataBox:Lcom/coremedia/iso/boxes/apple/AppleDataBox;

    invoke-virtual {v10}, Lcom/coremedia/iso/boxes/apple/AppleDataBox;->getFlags()I

    move-result v10

    const/16 v11, 0x15

    if-ne v10, v11, :cond_2

    .line 138
    iget-object v10, p0, Lcom/coremedia/iso/boxes/apple/AbstractAppleMetaDataBox;->appleDataBox:Lcom/coremedia/iso/boxes/apple/AppleDataBox;

    invoke-virtual {v10}, Lcom/coremedia/iso/boxes/apple/AppleDataBox;->getData()[B

    move-result-object v2

    .line 139
    .local v2, content:[B
    const-wide/16 v6, 0x0

    .line 140
    .local v6, l:J
    const/4 v3, 0x1

    .line 141
    .local v3, current:I
    array-length v9, v2

    .line 142
    .local v9, length:I
    move-object v0, v2

    .local v0, arr$:[B
    array-length v8, v0

    .local v8, len$:I
    const/4 v5, 0x0

    .local v5, i$:I
    move v4, v3

    .end local v3           #current:I
    .local v4, current:I
    :goto_1
    if-ge v5, v8, :cond_1

    aget-byte v1, v0, v5

    .line 143
    .local v1, b:B
    invoke-static {v1}, Lcom/coremedia/iso/boxes/apple/AbstractAppleMetaDataBox;->toLong(B)J

    move-result-wide v10

    add-int/lit8 v3, v4, 0x1

    .end local v4           #current:I
    .restart local v3       #current:I
    sub-int v12, v9, v4

    mul-int/lit8 v12, v12, 0x8

    shl-long/2addr v10, v12

    add-long/2addr v6, v10

    .line 142
    add-int/lit8 v5, v5, 0x1

    move v4, v3

    .end local v3           #current:I
    .restart local v4       #current:I
    goto :goto_1

    .line 145
    .end local v1           #b:B
    :cond_1
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, ""

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    goto :goto_0

    .line 146
    .end local v0           #arr$:[B
    .end local v2           #content:[B
    .end local v4           #current:I
    .end local v5           #i$:I
    .end local v6           #l:J
    .end local v8           #len$:I
    .end local v9           #length:I
    :cond_2
    iget-object v10, p0, Lcom/coremedia/iso/boxes/apple/AbstractAppleMetaDataBox;->appleDataBox:Lcom/coremedia/iso/boxes/apple/AppleDataBox;

    invoke-virtual {v10}, Lcom/coremedia/iso/boxes/apple/AppleDataBox;->getFlags()I

    move-result v10

    if-nez v10, :cond_3

    .line 147
    const-string v10, "%x"

    new-array v11, v12, [Ljava/lang/Object;

    const/4 v12, 0x0

    new-instance v13, Ljava/math/BigInteger;

    iget-object v14, p0, Lcom/coremedia/iso/boxes/apple/AbstractAppleMetaDataBox;->appleDataBox:Lcom/coremedia/iso/boxes/apple/AppleDataBox;

    invoke-virtual {v14}, Lcom/coremedia/iso/boxes/apple/AppleDataBox;->getData()[B

    move-result-object v14

    invoke-direct {v13, v14}, Ljava/math/BigInteger;-><init>([B)V

    aput-object v13, v11, v12

    invoke-static {v10, v11}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    goto :goto_0

    .line 149
    :cond_3
    const-string v10, "unknown"

    goto :goto_0
.end method

.method public setBoxes(Ljava/util/List;)V
    .locals 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/coremedia/iso/boxes/Box;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, boxes:Ljava/util/List;,"Ljava/util/List<Lcom/coremedia/iso/boxes/Box;>;"
    const/4 v2, 0x0

    .line 30
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Lcom/coremedia/iso/boxes/apple/AppleDataBox;

    if-eqz v0, :cond_0

    .line 31
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/coremedia/iso/boxes/apple/AppleDataBox;

    iput-object v0, p0, Lcom/coremedia/iso/boxes/apple/AbstractAppleMetaDataBox;->appleDataBox:Lcom/coremedia/iso/boxes/apple/AppleDataBox;

    .line 35
    return-void

    .line 33
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "This box only accepts one AppleDataBox child"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setValue(Ljava/lang/String;)V
    .locals 7
    .parameter "value"

    .prologue
    const/16 v6, 0x15

    const/4 v5, 0x1

    const/4 v4, 0x4

    const/4 v3, 0x0

    .line 96
    iget-object v2, p0, Lcom/coremedia/iso/boxes/apple/AbstractAppleMetaDataBox;->appleDataBox:Lcom/coremedia/iso/boxes/apple/AppleDataBox;

    invoke-virtual {v2}, Lcom/coremedia/iso/boxes/apple/AppleDataBox;->getFlags()I

    move-result v2

    if-ne v2, v5, :cond_0

    .line 97
    new-instance v2, Lcom/coremedia/iso/boxes/apple/AppleDataBox;

    invoke-direct {v2}, Lcom/coremedia/iso/boxes/apple/AppleDataBox;-><init>()V

    iput-object v2, p0, Lcom/coremedia/iso/boxes/apple/AbstractAppleMetaDataBox;->appleDataBox:Lcom/coremedia/iso/boxes/apple/AppleDataBox;

    .line 98
    iget-object v2, p0, Lcom/coremedia/iso/boxes/apple/AbstractAppleMetaDataBox;->appleDataBox:Lcom/coremedia/iso/boxes/apple/AppleDataBox;

    invoke-virtual {v2, v3}, Lcom/coremedia/iso/boxes/apple/AppleDataBox;->setVersion(I)V

    .line 99
    iget-object v2, p0, Lcom/coremedia/iso/boxes/apple/AbstractAppleMetaDataBox;->appleDataBox:Lcom/coremedia/iso/boxes/apple/AppleDataBox;

    invoke-virtual {v2, v5}, Lcom/coremedia/iso/boxes/apple/AppleDataBox;->setFlags(I)V

    .line 100
    iget-object v2, p0, Lcom/coremedia/iso/boxes/apple/AbstractAppleMetaDataBox;->appleDataBox:Lcom/coremedia/iso/boxes/apple/AppleDataBox;

    new-array v3, v4, [B

    invoke-virtual {v2, v3}, Lcom/coremedia/iso/boxes/apple/AppleDataBox;->setFourBytes([B)V

    .line 101
    iget-object v2, p0, Lcom/coremedia/iso/boxes/apple/AbstractAppleMetaDataBox;->appleDataBox:Lcom/coremedia/iso/boxes/apple/AppleDataBox;

    invoke-static {p1}, Lcom/coremedia/iso/Utf8;->convert(Ljava/lang/String;)[B

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/coremedia/iso/boxes/apple/AppleDataBox;->setData([B)V

    .line 132
    :goto_0
    return-void

    .line 102
    :cond_0
    iget-object v2, p0, Lcom/coremedia/iso/boxes/apple/AbstractAppleMetaDataBox;->appleDataBox:Lcom/coremedia/iso/boxes/apple/AppleDataBox;

    invoke-virtual {v2}, Lcom/coremedia/iso/boxes/apple/AppleDataBox;->getFlags()I

    move-result v2

    if-ne v2, v6, :cond_5

    .line 103
    iget-object v2, p0, Lcom/coremedia/iso/boxes/apple/AbstractAppleMetaDataBox;->appleDataBox:Lcom/coremedia/iso/boxes/apple/AppleDataBox;

    invoke-virtual {v2}, Lcom/coremedia/iso/boxes/apple/AppleDataBox;->getData()[B

    move-result-object v1

    .line 104
    .local v1, content:[B
    new-instance v2, Lcom/coremedia/iso/boxes/apple/AppleDataBox;

    invoke-direct {v2}, Lcom/coremedia/iso/boxes/apple/AppleDataBox;-><init>()V

    iput-object v2, p0, Lcom/coremedia/iso/boxes/apple/AbstractAppleMetaDataBox;->appleDataBox:Lcom/coremedia/iso/boxes/apple/AppleDataBox;

    .line 105
    iget-object v2, p0, Lcom/coremedia/iso/boxes/apple/AbstractAppleMetaDataBox;->appleDataBox:Lcom/coremedia/iso/boxes/apple/AppleDataBox;

    invoke-virtual {v2, v3}, Lcom/coremedia/iso/boxes/apple/AppleDataBox;->setVersion(I)V

    .line 106
    iget-object v2, p0, Lcom/coremedia/iso/boxes/apple/AbstractAppleMetaDataBox;->appleDataBox:Lcom/coremedia/iso/boxes/apple/AppleDataBox;

    invoke-virtual {v2, v6}, Lcom/coremedia/iso/boxes/apple/AppleDataBox;->setFlags(I)V

    .line 107
    iget-object v2, p0, Lcom/coremedia/iso/boxes/apple/AbstractAppleMetaDataBox;->appleDataBox:Lcom/coremedia/iso/boxes/apple/AppleDataBox;

    new-array v3, v4, [B

    invoke-virtual {v2, v3}, Lcom/coremedia/iso/boxes/apple/AppleDataBox;->setFourBytes([B)V

    .line 109
    array-length v2, v1

    invoke-static {v2}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 110
    .local v0, bb:Ljava/nio/ByteBuffer;
    array-length v2, v1

    if-ne v2, v5, :cond_1

    .line 111
    invoke-static {p1}, Ljava/lang/Byte;->parseByte(Ljava/lang/String;)B

    move-result v2

    and-int/lit16 v2, v2, 0xff

    invoke-static {v0, v2}, Lcom/coremedia/iso/IsoTypeWriter;->writeUInt8(Ljava/nio/ByteBuffer;I)V

    .line 121
    :goto_1
    iget-object v2, p0, Lcom/coremedia/iso/boxes/apple/AbstractAppleMetaDataBox;->appleDataBox:Lcom/coremedia/iso/boxes/apple/AppleDataBox;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/coremedia/iso/boxes/apple/AppleDataBox;->setData([B)V

    goto :goto_0

    .line 112
    :cond_1
    array-length v2, v1

    const/4 v3, 0x2

    if-ne v2, v3, :cond_2

    .line 113
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    invoke-static {v0, v2}, Lcom/coremedia/iso/IsoTypeWriter;->writeUInt16(Ljava/nio/ByteBuffer;I)V

    goto :goto_1

    .line 114
    :cond_2
    array-length v2, v1

    if-ne v2, v4, :cond_3

    .line 115
    invoke-static {p1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    invoke-static {v0, v2, v3}, Lcom/coremedia/iso/IsoTypeWriter;->writeUInt32(Ljava/nio/ByteBuffer;J)V

    goto :goto_1

    .line 116
    :cond_3
    array-length v2, v1

    const/16 v3, 0x8

    if-ne v2, v3, :cond_4

    .line 117
    invoke-static {p1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    invoke-static {v0, v2, v3}, Lcom/coremedia/iso/IsoTypeWriter;->writeUInt64(Ljava/nio/ByteBuffer;J)V

    goto :goto_1

    .line 119
    :cond_4
    new-instance v2, Ljava/lang/Error;

    const-string v3, "The content length within the appleDataBox is neither 1, 2, 4 or 8. I can\'t handle that!"

    invoke-direct {v2, v3}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw v2

    .line 122
    .end local v0           #bb:Ljava/nio/ByteBuffer;
    .end local v1           #content:[B
    :cond_5
    iget-object v2, p0, Lcom/coremedia/iso/boxes/apple/AbstractAppleMetaDataBox;->appleDataBox:Lcom/coremedia/iso/boxes/apple/AppleDataBox;

    invoke-virtual {v2}, Lcom/coremedia/iso/boxes/apple/AppleDataBox;->getFlags()I

    move-result v2

    if-nez v2, :cond_6

    .line 123
    new-instance v2, Lcom/coremedia/iso/boxes/apple/AppleDataBox;

    invoke-direct {v2}, Lcom/coremedia/iso/boxes/apple/AppleDataBox;-><init>()V

    iput-object v2, p0, Lcom/coremedia/iso/boxes/apple/AbstractAppleMetaDataBox;->appleDataBox:Lcom/coremedia/iso/boxes/apple/AppleDataBox;

    .line 124
    iget-object v2, p0, Lcom/coremedia/iso/boxes/apple/AbstractAppleMetaDataBox;->appleDataBox:Lcom/coremedia/iso/boxes/apple/AppleDataBox;

    invoke-virtual {v2, v3}, Lcom/coremedia/iso/boxes/apple/AppleDataBox;->setVersion(I)V

    .line 125
    iget-object v2, p0, Lcom/coremedia/iso/boxes/apple/AbstractAppleMetaDataBox;->appleDataBox:Lcom/coremedia/iso/boxes/apple/AppleDataBox;

    invoke-virtual {v2, v3}, Lcom/coremedia/iso/boxes/apple/AppleDataBox;->setFlags(I)V

    .line 126
    iget-object v2, p0, Lcom/coremedia/iso/boxes/apple/AbstractAppleMetaDataBox;->appleDataBox:Lcom/coremedia/iso/boxes/apple/AppleDataBox;

    new-array v3, v4, [B

    invoke-virtual {v2, v3}, Lcom/coremedia/iso/boxes/apple/AppleDataBox;->setFourBytes([B)V

    .line 127
    iget-object v2, p0, Lcom/coremedia/iso/boxes/apple/AbstractAppleMetaDataBox;->appleDataBox:Lcom/coremedia/iso/boxes/apple/AppleDataBox;

    invoke-static {p1}, Lcom/coremedia/iso/boxes/apple/AbstractAppleMetaDataBox;->hexStringToByteArray(Ljava/lang/String;)[B

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/coremedia/iso/boxes/apple/AppleDataBox;->setData([B)V

    goto/16 :goto_0

    .line 130
    :cond_6
    sget-object v2, Lcom/coremedia/iso/boxes/apple/AbstractAppleMetaDataBox;->LOG:Ljava/util/logging/Logger;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Don\'t know how to handle appleDataBox with flag="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/coremedia/iso/boxes/apple/AbstractAppleMetaDataBox;->appleDataBox:Lcom/coremedia/iso/boxes/apple/AppleDataBox;

    invoke-virtual {v4}, Lcom/coremedia/iso/boxes/apple/AppleDataBox;->getFlags()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 86
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "appleDataBox="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/coremedia/iso/boxes/apple/AbstractAppleMetaDataBox;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
