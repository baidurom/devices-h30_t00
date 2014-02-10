.class public Lcom/huawei/device/chrlog/Cenum;
.super Ljava/lang/Object;
.source "Cenum.java"


# instance fields
.field length:I

.field map:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field name:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lcom/huawei/device/chrlog/Cenum;->map:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public getOrdinal()I
    .locals 3

    .prologue
    .line 37
    const/4 v0, 0x0

    .line 38
    .local v0, index:I
    iget-object v1, p0, Lcom/huawei/device/chrlog/Cenum;->map:Ljava/util/Map;

    iget-object v2, p0, Lcom/huawei/device/chrlog/Cenum;->name:Ljava/lang/String;

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 39
    iget-object v1, p0, Lcom/huawei/device/chrlog/Cenum;->map:Ljava/util/Map;

    iget-object v2, p0, Lcom/huawei/device/chrlog/Cenum;->name:Ljava/lang/String;

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 41
    :cond_0
    return v0
.end method

.method setLength(I)V
    .locals 0
    .parameter "length"

    .prologue
    .line 57
    iput p1, p0, Lcom/huawei/device/chrlog/Cenum;->length:I

    .line 58
    return-void
.end method

.method public setValue(Ljava/lang/String;)V
    .locals 0
    .parameter "name"

    .prologue
    .line 49
    iput-object p1, p0, Lcom/huawei/device/chrlog/Cenum;->name:Ljava/lang/String;

    .line 50
    return-void
.end method

.method public toByteArray()[B
    .locals 4

    .prologue
    .line 66
    iget v2, p0, Lcom/huawei/device/chrlog/Cenum;->length:I

    new-array v0, v2, [B

    .line 67
    .local v0, byteArray:[B
    invoke-static {v0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 68
    .local v1, bytebuf:Ljava/nio/ByteBuffer;
    iget v2, p0, Lcom/huawei/device/chrlog/Cenum;->length:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    .line 69
    invoke-virtual {p0}, Lcom/huawei/device/chrlog/Cenum;->getOrdinal()I

    move-result v2

    int-to-byte v2, v2

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 75
    :goto_0
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v2

    return-object v2

    .line 70
    :cond_0
    iget v2, p0, Lcom/huawei/device/chrlog/Cenum;->length:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_1

    .line 71
    invoke-virtual {p0}, Lcom/huawei/device/chrlog/Cenum;->getOrdinal()I

    move-result v2

    int-to-short v2, v2

    invoke-static {v2}, Lcom/huawei/device/chrlog/ByteConvert;->shortToBytes(S)[B

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    goto :goto_0

    .line 73
    :cond_1
    invoke-virtual {p0}, Lcom/huawei/device/chrlog/Cenum;->getOrdinal()I

    move-result v2

    invoke-static {v2}, Lcom/huawei/device/chrlog/ByteConvert;->intToBytes(I)[B

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    goto :goto_0
.end method
