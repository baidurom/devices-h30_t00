.class public Lcom/huawei/device/chrlog/ChrLogBaseModel;
.super Ljava/lang/Object;
.source "ChrLogBaseModel.java"


# static fields
.field protected static final ENCRYPT_LENGTH:I = 0x2

.field private static final TO_BYTE_ARRAY:Ljava/lang/String; = "toByteArray"


# instance fields
.field lengthMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Object;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lcom/huawei/device/chrlog/ChrLogBaseModel;->lengthMap:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method getTotalBytes()I
    .locals 4

    .prologue
    .line 53
    const/4 v2, 0x0

    .line 54
    .local v2, totalBytes:I
    iget-object v3, p0, Lcom/huawei/device/chrlog/ChrLogBaseModel;->lengthMap:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 55
    .local v1, iterator:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/Object;Ljava/lang/Integer;>;>;"
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 57
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 58
    .local v0, entry:Ljava/util/Map$Entry;
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    add-int/2addr v2, v3

    .line 59
    goto :goto_0

    .line 60
    .end local v0           #entry:Ljava/util/Map$Entry;
    :cond_0
    return v2
.end method

.method protected getTotalLen()I
    .locals 6

    .prologue
    .line 69
    const/4 v4, 0x0

    .line 70
    .local v4, totalBytes:I
    const/4 v1, 0x0

    .line 71
    .local v1, firsttwo:I
    iget-object v5, p0, Lcom/huawei/device/chrlog/ChrLogBaseModel;->lengthMap:Ljava/util/Map;

    invoke-interface {v5}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 72
    .local v3, iterator:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/Object;Ljava/lang/Integer;>;>;"
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 74
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 75
    .local v0, entry:Ljava/util/Map$Entry;
    add-int/lit8 v2, v1, 0x1

    .end local v1           #firsttwo:I
    .local v2, firsttwo:I
    const/4 v5, 0x1

    if-le v1, v5, :cond_0

    .line 76
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    add-int/2addr v4, v5

    :cond_0
    move v1, v2

    .line 78
    .end local v2           #firsttwo:I
    .restart local v1       #firsttwo:I
    goto :goto_0

    .line 79
    .end local v0           #entry:Ljava/util/Map$Entry;
    :cond_1
    return v4
.end method

.method public toByteArray()[B
    .locals 10

    .prologue
    .line 29
    invoke-virtual {p0}, Lcom/huawei/device/chrlog/ChrLogBaseModel;->getTotalBytes()I

    move-result v6

    .line 30
    .local v6, totalLength:I
    new-array v7, v6, [B

    invoke-static {v7}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 31
    .local v0, bytebuf:Ljava/nio/ByteBuffer;
    iget-object v7, p0, Lcom/huawei/device/chrlog/ChrLogBaseModel;->lengthMap:Ljava/util/Map;

    invoke-interface {v7}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 32
    .local v3, iterator:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/Object;>;"
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_0

    .line 33
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    .line 35
    .local v4, key:Ljava/lang/Object;
    :try_start_0
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v7

    const-string v8, "toByteArray"

    const/4 v9, 0x0

    new-array v9, v9, [Ljava/lang/Class;

    invoke-virtual {v7, v8, v9}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v5

    .line 36
    .local v5, method:Ljava/lang/reflect/Method;
    const/4 v7, 0x0

    new-array v7, v7, [Ljava/lang/Object;

    invoke-virtual {v5, v4, v7}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [B

    check-cast v7, [B

    invoke-virtual {v0, v7}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 37
    .end local v5           #method:Ljava/lang/reflect/Method;
    :catch_0
    move-exception v2

    .line 38
    .local v2, e:Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 42
    .end local v2           #e:Ljava/lang/Exception;
    .end local v4           #key:Ljava/lang/Object;
    :cond_0
    add-int/lit8 v7, v6, 0x2

    new-array v7, v7, [B

    invoke-static {v7}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 43
    .local v1, bytebufEnc:Ljava/nio/ByteBuffer;
    int-to-short v7, v6

    invoke-static {v7}, Lcom/huawei/device/chrlog/ByteConvert;->shortToBytes(S)[B

    move-result-object v7

    invoke-virtual {v1, v7}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 44
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v7

    invoke-static {v7}, Lcom/huawei/device/chrlog/AESUtils;->encrypt([B)[B

    move-result-object v7

    invoke-virtual {v1, v7}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 45
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v7

    return-object v7
.end method
