.class public Lcom/android/gallery3d/data/BytesBufferPool$BytesBuffer;
.super Ljava/lang/Object;
.source "BytesBufferPool.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/gallery3d/data/BytesBufferPool;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "BytesBuffer"
.end annotation


# instance fields
.field public data:[B

.field public length:I

.field public offset:I


# direct methods
.method private constructor <init>(I)V
    .locals 1
    .parameter "capacity"

    .prologue
    .line 35
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 36
    new-array v0, p1, [B

    iput-object v0, p0, Lcom/android/gallery3d/data/BytesBufferPool$BytesBuffer;->data:[B

    .line 37
    return-void
.end method

.method synthetic constructor <init>(ILcom/android/gallery3d/data/BytesBufferPool$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 30
    invoke-direct {p0, p1}, Lcom/android/gallery3d/data/BytesBufferPool$BytesBuffer;-><init>(I)V

    return-void
.end method


# virtual methods
.method public readFrom(Lcom/android/gallery3d/util/ThreadPool$JobContext;Ljava/io/FileDescriptor;)V
    .locals 9
    .parameter "jc"
    .parameter "fd"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    .line 41
    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, p2}, Ljava/io/FileInputStream;-><init>(Ljava/io/FileDescriptor;)V

    .line 42
    .local v1, fis:Ljava/io/FileInputStream;
    iput v5, p0, Lcom/android/gallery3d/data/BytesBufferPool$BytesBuffer;->length:I

    .line 44
    :try_start_0
    iget-object v5, p0, Lcom/android/gallery3d/data/BytesBufferPool$BytesBuffer;->data:[B

    array-length v0, v5

    .line 46
    .local v0, capacity:I
    :cond_0
    :goto_0
    const/16 v5, 0x1000

    iget v6, p0, Lcom/android/gallery3d/data/BytesBufferPool$BytesBuffer;->length:I

    sub-int v6, v0, v6

    invoke-static {v5, v6}, Ljava/lang/Math;->min(II)I

    move-result v4

    .line 47
    .local v4, step:I
    iget-object v5, p0, Lcom/android/gallery3d/data/BytesBufferPool$BytesBuffer;->data:[B

    iget v6, p0, Lcom/android/gallery3d/data/BytesBufferPool$BytesBuffer;->length:I

    invoke-virtual {v1, v5, v6, v4}, Ljava/io/FileInputStream;->read([BII)I

    move-result v3

    .line 48
    .local v3, rc:I
    if-ltz v3, :cond_1

    invoke-interface {p1}, Lcom/android/gallery3d/util/ThreadPool$JobContext;->isCancelled()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v5

    if-eqz v5, :cond_2

    .line 59
    :cond_1
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V

    return-void

    .line 49
    :cond_2
    :try_start_1
    iget v5, p0, Lcom/android/gallery3d/data/BytesBufferPool$BytesBuffer;->length:I

    add-int/2addr v5, v3

    iput v5, p0, Lcom/android/gallery3d/data/BytesBufferPool$BytesBuffer;->length:I

    .line 51
    iget v5, p0, Lcom/android/gallery3d/data/BytesBufferPool$BytesBuffer;->length:I

    if-ne v5, v0, :cond_0

    .line 52
    iget-object v5, p0, Lcom/android/gallery3d/data/BytesBufferPool$BytesBuffer;->data:[B

    array-length v5, v5

    mul-int/lit8 v5, v5, 0x2

    new-array v2, v5, [B

    .line 53
    .local v2, newData:[B
    iget-object v5, p0, Lcom/android/gallery3d/data/BytesBufferPool$BytesBuffer;->data:[B

    const/4 v6, 0x0

    const/4 v7, 0x0

    iget-object v8, p0, Lcom/android/gallery3d/data/BytesBufferPool$BytesBuffer;->data:[B

    array-length v8, v8

    invoke-static {v5, v6, v2, v7, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 54
    iput-object v2, p0, Lcom/android/gallery3d/data/BytesBufferPool$BytesBuffer;->data:[B

    .line 55
    iget-object v5, p0, Lcom/android/gallery3d/data/BytesBufferPool$BytesBuffer;->data:[B

    array-length v0, v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 59
    .end local v0           #capacity:I
    .end local v2           #newData:[B
    .end local v3           #rc:I
    .end local v4           #step:I
    :catchall_0
    move-exception v5

    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V

    throw v5
.end method
