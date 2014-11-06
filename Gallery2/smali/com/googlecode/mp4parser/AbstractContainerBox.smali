.class public abstract Lcom/googlecode/mp4parser/AbstractContainerBox;
.super Lcom/googlecode/mp4parser/AbstractBox;
.source "AbstractContainerBox.java"

# interfaces
.implements Lcom/coremedia/iso/boxes/ContainerBox;


# static fields
.field private static LOG:Ljava/util/logging/Logger;


# instance fields
.field protected boxParser:Lcom/coremedia/iso/BoxParser;

.field protected boxes:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/coremedia/iso/boxes/Box;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 40
    const-class v0, Lcom/googlecode/mp4parser/AbstractContainerBox;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lcom/googlecode/mp4parser/AbstractContainerBox;->LOG:Ljava/util/logging/Logger;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .parameter "type"

    .prologue
    .line 55
    invoke-direct {p0, p1}, Lcom/googlecode/mp4parser/AbstractBox;-><init>(Ljava/lang/String;)V

    .line 42
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/googlecode/mp4parser/AbstractContainerBox;->boxes:Ljava/util/List;

    .line 56
    return-void
.end method


# virtual methods
.method public _parseDetails(Ljava/nio/ByteBuffer;)V
    .locals 0
    .parameter "content"

    .prologue
    .line 112
    invoke-virtual {p0, p1}, Lcom/googlecode/mp4parser/AbstractContainerBox;->parseChildBoxes(Ljava/nio/ByteBuffer;)V

    .line 113
    return-void
.end method

.method public addBox(Lcom/coremedia/iso/boxes/Box;)V
    .locals 1
    .parameter "b"

    .prologue
    .line 95
    invoke-interface {p1, p0}, Lcom/coremedia/iso/boxes/Box;->setParent(Lcom/coremedia/iso/boxes/ContainerBox;)V

    .line 96
    iget-object v0, p0, Lcom/googlecode/mp4parser/AbstractContainerBox;->boxes:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 97
    return-void
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
    .line 59
    iget-object v0, p0, Lcom/googlecode/mp4parser/AbstractContainerBox;->boxes:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

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
    .line 68
    .local p1, clazz:Ljava/lang/Class;,"Ljava/lang/Class<TT;>;"
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/googlecode/mp4parser/AbstractContainerBox;->getBoxes(Ljava/lang/Class;Z)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getBoxes(Ljava/lang/Class;Z)Ljava/util/List;
    .locals 4
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
    .line 73
    .local p1, clazz:Ljava/lang/Class;,"Ljava/lang/Class<TT;>;"
    new-instance v1, Ljava/util/ArrayList;

    const/4 v3, 0x2

    invoke-direct {v1, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 74
    .local v1, boxesToBeReturned:Ljava/util/List;,"Ljava/util/List<TT;>;"
    iget-object v3, p0, Lcom/googlecode/mp4parser/AbstractContainerBox;->boxes:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/coremedia/iso/boxes/Box;

    .line 78
    .local v0, boxe:Lcom/coremedia/iso/boxes/Box;
    invoke-virtual {p1, v0}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 79
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 82
    :cond_1
    if-eqz p2, :cond_0

    instance-of v3, v0, Lcom/coremedia/iso/boxes/ContainerBox;

    if-eqz v3, :cond_0

    .line 83
    check-cast v0, Lcom/coremedia/iso/boxes/ContainerBox;

    .end local v0           #boxe:Lcom/coremedia/iso/boxes/Box;
    invoke-interface {v0, p1, p2}, Lcom/coremedia/iso/boxes/ContainerBox;->getBoxes(Ljava/lang/Class;Z)Ljava/util/List;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    .line 86
    :cond_2
    return-object v1
.end method

.method protected getContent(Ljava/nio/ByteBuffer;)V
    .locals 0
    .parameter "byteBuffer"

    .prologue
    .line 142
    invoke-virtual {p0, p1}, Lcom/googlecode/mp4parser/AbstractContainerBox;->writeChildBoxes(Ljava/nio/ByteBuffer;)V

    .line 143
    return-void
.end method

.method protected getContentSize()J
    .locals 6

    .prologue
    .line 47
    const-wide/16 v1, 0x0

    .line 48
    .local v1, contentSize:J
    iget-object v4, p0, Lcom/googlecode/mp4parser/AbstractContainerBox;->boxes:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/coremedia/iso/boxes/Box;

    .line 49
    .local v0, boxe:Lcom/coremedia/iso/boxes/Box;
    invoke-interface {v0}, Lcom/coremedia/iso/boxes/Box;->getSize()J

    move-result-wide v4

    add-long/2addr v1, v4

    goto :goto_0

    .line 51
    .end local v0           #boxe:Lcom/coremedia/iso/boxes/Box;
    :cond_0
    return-wide v1
.end method

.method public getNumOfBytesToFirstChild()J
    .locals 2

    .prologue
    .line 137
    const-wide/16 v0, 0x8

    return-wide v0
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
    .line 106
    iput-object p5, p0, Lcom/googlecode/mp4parser/AbstractContainerBox;->boxParser:Lcom/coremedia/iso/BoxParser;

    .line 107
    invoke-super/range {p0 .. p5}, Lcom/googlecode/mp4parser/AbstractBox;->parse(Ljava/nio/channels/ReadableByteChannel;Ljava/nio/ByteBuffer;JLcom/coremedia/iso/BoxParser;)V

    .line 108
    return-void
.end method

.method protected final parseChildBoxes(Ljava/nio/ByteBuffer;)V
    .locals 4
    .parameter "content"

    .prologue
    .line 147
    :goto_0
    :try_start_0
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v2

    const/16 v3, 0x8

    if-lt v2, v3, :cond_0

    .line 149
    iget-object v2, p0, Lcom/googlecode/mp4parser/AbstractContainerBox;->boxParser:Lcom/coremedia/iso/BoxParser;

    new-instance v3, Lcom/googlecode/mp4parser/util/ByteBufferByteChannel;

    invoke-direct {v3, p1}, Lcom/googlecode/mp4parser/util/ByteBufferByteChannel;-><init>(Ljava/nio/ByteBuffer;)V

    invoke-interface {v2, v3, p0}, Lcom/coremedia/iso/BoxParser;->parseBox(Ljava/nio/channels/ReadableByteChannel;Lcom/coremedia/iso/boxes/ContainerBox;)Lcom/coremedia/iso/boxes/Box;

    move-result-object v0

    .line 150
    .local v0, box:Lcom/coremedia/iso/boxes/Box;
    if-nez v0, :cond_2

    .line 151
    const-string v2, "mp4parse-AbstractContainerBox"

    const-string v3, "parseBox is null"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 161
    .end local v0           #box:Lcom/coremedia/iso/boxes/Box;
    :cond_0
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v2

    if-eqz v2, :cond_1

    .line 162
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->slice()Ljava/nio/ByteBuffer;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/googlecode/mp4parser/AbstractContainerBox;->setDeadBytes(Ljava/nio/ByteBuffer;)V

    .line 163
    sget-object v2, Lcom/googlecode/mp4parser/AbstractContainerBox;->LOG:Ljava/util/logging/Logger;

    const-string v3, "Something\'s wrong with the sizes. There are dead bytes in a container box."

    invoke-virtual {v2, v3}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V

    .line 168
    :cond_1
    return-void

    .line 155
    .restart local v0       #box:Lcom/coremedia/iso/boxes/Box;
    :cond_2
    iget-object v2, p0, Lcom/googlecode/mp4parser/AbstractContainerBox;->boxes:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 165
    .end local v0           #box:Lcom/coremedia/iso/boxes/Box;
    :catch_0
    move-exception v1

    .line 166
    .local v1, e:Ljava/io/IOException;
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v2
.end method

.method public removeBox(Lcom/coremedia/iso/boxes/Box;)V
    .locals 1
    .parameter "b"

    .prologue
    .line 100
    invoke-interface {p1, p0}, Lcom/coremedia/iso/boxes/Box;->setParent(Lcom/coremedia/iso/boxes/ContainerBox;)V

    .line 101
    iget-object v0, p0, Lcom/googlecode/mp4parser/AbstractContainerBox;->boxes:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 102
    return-void
.end method

.method public setBoxes(Ljava/util/List;)V
    .locals 1
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
    .line 63
    .local p1, boxes:Ljava/util/List;,"Ljava/util/List<Lcom/coremedia/iso/boxes/Box;>;"
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0, p1}, Ljava/util/LinkedList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/googlecode/mp4parser/AbstractContainerBox;->boxes:Ljava/util/List;

    .line 64
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 117
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 119
    .local v0, buffer:Ljava/lang/StringBuilder;
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 120
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    iget-object v2, p0, Lcom/googlecode/mp4parser/AbstractContainerBox;->boxes:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 121
    if-lez v1, :cond_0

    .line 122
    const-string v2, ";"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 124
    :cond_0
    iget-object v2, p0, Lcom/googlecode/mp4parser/AbstractContainerBox;->boxes:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/coremedia/iso/boxes/Box;

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 120
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 126
    :cond_1
    const-string v2, "]"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 127
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method protected final writeChildBoxes(Ljava/nio/ByteBuffer;)V
    .locals 6
    .parameter "bb"

    .prologue
    .line 171
    new-instance v3, Lcom/googlecode/mp4parser/util/ByteBufferByteChannel;

    invoke-direct {v3, p1}, Lcom/googlecode/mp4parser/util/ByteBufferByteChannel;-><init>(Ljava/nio/ByteBuffer;)V

    .line 172
    .local v3, wbc:Ljava/nio/channels/WritableByteChannel;
    iget-object v4, p0, Lcom/googlecode/mp4parser/AbstractContainerBox;->boxes:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/coremedia/iso/boxes/Box;

    .line 174
    .local v0, box:Lcom/coremedia/iso/boxes/Box;
    :try_start_0
    invoke-interface {v0, v3}, Lcom/coremedia/iso/boxes/Box;->getBox(Ljava/nio/channels/WritableByteChannel;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 175
    :catch_0
    move-exception v1

    .line 177
    .local v1, e:Ljava/io/IOException;
    new-instance v4, Ljava/lang/RuntimeException;

    const-string v5, "Cannot happen to me"

    invoke-direct {v4, v5, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v4

    .line 180
    .end local v0           #box:Lcom/coremedia/iso/boxes/Box;
    .end local v1           #e:Ljava/io/IOException;
    :cond_0
    return-void
.end method
