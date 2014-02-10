.class public Lcom/huawei/device/chrlog/Base64Coder;
.super Ljava/lang/Object;
.source "Base64Coder.java"


# static fields
.field static final base64_alphabet:[C


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 8
    const/16 v0, 0x41

    new-array v0, v0, [C

    fill-array-data v0, :array_0

    sput-object v0, Lcom/huawei/device/chrlog/Base64Coder;->base64_alphabet:[C

    return-void

    :array_0
    .array-data 0x2
        0x41t 0x0t
        0x42t 0x0t
        0x43t 0x0t
        0x44t 0x0t
        0x45t 0x0t
        0x46t 0x0t
        0x47t 0x0t
        0x48t 0x0t
        0x49t 0x0t
        0x4at 0x0t
        0x4bt 0x0t
        0x4ct 0x0t
        0x4dt 0x0t
        0x4et 0x0t
        0x4ft 0x0t
        0x50t 0x0t
        0x51t 0x0t
        0x52t 0x0t
        0x53t 0x0t
        0x54t 0x0t
        0x55t 0x0t
        0x56t 0x0t
        0x57t 0x0t
        0x58t 0x0t
        0x59t 0x0t
        0x5at 0x0t
        0x61t 0x0t
        0x62t 0x0t
        0x63t 0x0t
        0x64t 0x0t
        0x65t 0x0t
        0x66t 0x0t
        0x67t 0x0t
        0x68t 0x0t
        0x69t 0x0t
        0x6at 0x0t
        0x6bt 0x0t
        0x6ct 0x0t
        0x6dt 0x0t
        0x6et 0x0t
        0x6ft 0x0t
        0x70t 0x0t
        0x71t 0x0t
        0x72t 0x0t
        0x73t 0x0t
        0x74t 0x0t
        0x75t 0x0t
        0x76t 0x0t
        0x77t 0x0t
        0x78t 0x0t
        0x79t 0x0t
        0x7at 0x0t
        0x30t 0x0t
        0x31t 0x0t
        0x32t 0x0t
        0x33t 0x0t
        0x34t 0x0t
        0x35t 0x0t
        0x36t 0x0t
        0x37t 0x0t
        0x38t 0x0t
        0x39t 0x0t
        0x2bt 0x0t
        0x24t 0x0t
        0x3dt 0x0t
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static decode([B)[B
    .locals 13
    .parameter "data"

    .prologue
    .line 60
    const/4 v4, 0x0

    .local v4, i:I
    const/4 v6, 0x0

    .local v6, j:I
    const/4 v2, 0x0

    .line 61
    .local v2, enCode:I
    array-length v7, p0

    .line 62
    .local v7, mLength:I
    const/4 v10, 0x4

    new-array v1, v10, [B

    .line 63
    .local v1, char_array_4:[B
    const/4 v10, 0x3

    new-array v0, v10, [B

    .line 65
    .local v0, char_array_3:[B
    new-array v10, v7, [B

    invoke-static {v10}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v9

    .local v9, retContent:Ljava/nio/ByteBuffer;
    move v3, v2

    .end local v2           #enCode:I
    .local v3, enCode:I
    move v5, v4

    .line 69
    .end local v4           #i:I
    .local v5, i:I
    :goto_0
    if-lez v7, :cond_2

    aget-byte v10, p0, v3

    int-to-char v10, v10

    const/16 v11, 0x3d

    if-eq v10, v11, :cond_2

    aget-byte v10, p0, v3

    int-to-char v10, v10

    invoke-static {v10}, Lcom/huawei/device/chrlog/Base64Coder;->isBase64(C)Z

    move-result v10

    if-eqz v10, :cond_2

    .line 70
    add-int/lit8 v7, v7, -0x1

    .line 71
    add-int/lit8 v4, v5, 0x1

    .end local v5           #i:I
    .restart local v4       #i:I
    add-int/lit8 v2, v3, 0x1

    .end local v3           #enCode:I
    .restart local v2       #enCode:I
    aget-byte v10, p0, v3

    aput-byte v10, v1, v5

    .line 72
    const/4 v10, 0x4

    if-ne v4, v10, :cond_6

    .line 73
    const/4 v4, 0x0

    :goto_1
    const/4 v10, 0x4

    if-ge v4, v10, :cond_0

    .line 74
    aget-byte v10, v1, v4

    int-to-char v10, v10

    invoke-static {v10}, Lcom/huawei/device/chrlog/Base64Coder;->findChar(C)B

    move-result v10

    aput-byte v10, v1, v4

    .line 73
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 76
    :cond_0
    const/4 v10, 0x0

    const/4 v11, 0x0

    aget-byte v11, v1, v11

    shl-int/lit8 v11, v11, 0x2

    const/4 v12, 0x1

    aget-byte v12, v1, v12

    and-int/lit8 v12, v12, 0x30

    shr-int/lit8 v12, v12, 0x4

    add-int/2addr v11, v12

    int-to-byte v11, v11

    aput-byte v11, v0, v10

    .line 77
    const/4 v10, 0x1

    const/4 v11, 0x1

    aget-byte v11, v1, v11

    and-int/lit8 v11, v11, 0xf

    shl-int/lit8 v11, v11, 0x4

    const/4 v12, 0x2

    aget-byte v12, v1, v12

    and-int/lit8 v12, v12, 0x3c

    shr-int/lit8 v12, v12, 0x2

    add-int/2addr v11, v12

    int-to-byte v11, v11

    aput-byte v11, v0, v10

    .line 78
    const/4 v10, 0x2

    const/4 v11, 0x2

    aget-byte v11, v1, v11

    and-int/lit8 v11, v11, 0x3

    shl-int/lit8 v11, v11, 0x6

    const/4 v12, 0x3

    aget-byte v12, v1, v12

    add-int/2addr v11, v12

    int-to-byte v11, v11

    aput-byte v11, v0, v10

    .line 80
    const/4 v4, 0x0

    :goto_2
    const/4 v10, 0x3

    if-ge v4, v10, :cond_1

    .line 81
    aget-byte v10, v0, v4

    invoke-virtual {v9, v10}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 80
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 83
    :cond_1
    const/4 v4, 0x0

    move v3, v2

    .end local v2           #enCode:I
    .restart local v3       #enCode:I
    move v5, v4

    .end local v4           #i:I
    .restart local v5       #i:I
    goto :goto_0

    .line 88
    :cond_2
    if-lez v5, :cond_5

    .line 89
    move v6, v5

    :goto_3
    const/4 v10, 0x4

    if-ge v6, v10, :cond_3

    .line 90
    const/4 v10, 0x0

    aput-byte v10, v1, v6

    .line 89
    add-int/lit8 v6, v6, 0x1

    goto :goto_3

    .line 92
    :cond_3
    const/4 v6, 0x0

    :goto_4
    const/4 v10, 0x4

    if-ge v6, v10, :cond_4

    .line 93
    aget-byte v10, v1, v6

    int-to-char v10, v10

    invoke-static {v10}, Lcom/huawei/device/chrlog/Base64Coder;->findChar(C)B

    move-result v10

    aput-byte v10, v1, v6

    .line 92
    add-int/lit8 v6, v6, 0x1

    goto :goto_4

    .line 95
    :cond_4
    const/4 v10, 0x0

    const/4 v11, 0x0

    aget-byte v11, v1, v11

    shl-int/lit8 v11, v11, 0x2

    const/4 v12, 0x1

    aget-byte v12, v1, v12

    and-int/lit8 v12, v12, 0x30

    shr-int/lit8 v12, v12, 0x4

    add-int/2addr v11, v12

    int-to-byte v11, v11

    aput-byte v11, v0, v10

    .line 96
    const/4 v10, 0x1

    const/4 v11, 0x1

    aget-byte v11, v1, v11

    and-int/lit8 v11, v11, 0xf

    shl-int/lit8 v11, v11, 0x4

    const/4 v12, 0x2

    aget-byte v12, v1, v12

    and-int/lit8 v12, v12, 0x3c

    shr-int/lit8 v12, v12, 0x2

    add-int/2addr v11, v12

    int-to-byte v11, v11

    aput-byte v11, v0, v10

    .line 97
    const/4 v10, 0x2

    const/4 v11, 0x2

    aget-byte v11, v1, v11

    and-int/lit8 v11, v11, 0x3

    shl-int/lit8 v11, v11, 0x6

    const/4 v12, 0x3

    aget-byte v12, v1, v12

    add-int/2addr v11, v12

    int-to-byte v11, v11

    aput-byte v11, v0, v10

    .line 99
    const/4 v6, 0x0

    :goto_5
    add-int/lit8 v10, v5, -0x1

    if-ge v6, v10, :cond_5

    .line 100
    aget-byte v10, v0, v6

    invoke-virtual {v9, v10}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 99
    add-int/lit8 v6, v6, 0x1

    goto :goto_5

    .line 103
    :cond_5
    invoke-virtual {v9}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 105
    invoke-virtual {v9}, Ljava/nio/ByteBuffer;->limit()I

    move-result v10

    new-array v8, v10, [B

    .line 106
    .local v8, retArray:[B
    const/4 v10, 0x0

    invoke-virtual {v9}, Ljava/nio/ByteBuffer;->limit()I

    move-result v11

    invoke-virtual {v9, v8, v10, v11}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    .line 107
    return-object v8

    .end local v3           #enCode:I
    .end local v5           #i:I
    .end local v8           #retArray:[B
    .restart local v2       #enCode:I
    .restart local v4       #i:I
    :cond_6
    move v3, v2

    .end local v2           #enCode:I
    .restart local v3       #enCode:I
    move v5, v4

    .end local v4           #i:I
    .restart local v5       #i:I
    goto/16 :goto_0
.end method

.method public static encode([B)Ljava/lang/String;
    .locals 12
    .parameter "data"

    .prologue
    .line 16
    array-length v5, p0

    .line 17
    .local v5, length:I
    const/4 v9, 0x3

    new-array v0, v9, [B

    fill-array-data v0, :array_0

    .line 18
    .local v0, char_array_3:[B
    const/4 v9, 0x4

    new-array v1, v9, [B

    fill-array-data v1, :array_1

    .line 19
    .local v1, char_array_4:[B
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 20
    .local v6, retContent:Ljava/lang/StringBuilder;
    const/4 v2, 0x0

    .line 21
    .local v2, i:I
    const/4 v4, 0x0

    .line 22
    .local v4, j:I
    const/4 v7, 0x0

    .local v7, reversePos:I
    move v8, v7

    .end local v7           #reversePos:I
    .local v8, reversePos:I
    move v3, v2

    .line 23
    .end local v2           #i:I
    .local v3, i:I
    :goto_0
    if-lez v5, :cond_1

    .line 24
    add-int/lit8 v5, v5, -0x1

    .line 25
    add-int/lit8 v2, v3, 0x1

    .end local v3           #i:I
    .restart local v2       #i:I
    add-int/lit8 v7, v8, 0x1

    .end local v8           #reversePos:I
    .restart local v7       #reversePos:I
    aget-byte v9, p0, v8

    aput-byte v9, v0, v3

    .line 26
    const/4 v9, 0x3

    if-ne v2, v9, :cond_6

    .line 27
    const/4 v9, 0x0

    const/4 v10, 0x0

    aget-byte v10, v0, v10

    and-int/lit16 v10, v10, 0xfc

    shr-int/lit8 v10, v10, 0x2

    int-to-byte v10, v10

    aput-byte v10, v1, v9

    .line 28
    const/4 v9, 0x1

    const/4 v10, 0x0

    aget-byte v10, v0, v10

    and-int/lit8 v10, v10, 0x3

    shl-int/lit8 v10, v10, 0x4

    const/4 v11, 0x1

    aget-byte v11, v0, v11

    and-int/lit16 v11, v11, 0xf0

    shr-int/lit8 v11, v11, 0x4

    add-int/2addr v10, v11

    int-to-byte v10, v10

    aput-byte v10, v1, v9

    .line 29
    const/4 v9, 0x2

    const/4 v10, 0x1

    aget-byte v10, v0, v10

    and-int/lit8 v10, v10, 0xf

    shl-int/lit8 v10, v10, 0x2

    const/4 v11, 0x2

    aget-byte v11, v0, v11

    and-int/lit16 v11, v11, 0xc0

    shr-int/lit8 v11, v11, 0x6

    add-int/2addr v10, v11

    int-to-byte v10, v10

    aput-byte v10, v1, v9

    .line 30
    const/4 v9, 0x3

    const/4 v10, 0x2

    aget-byte v10, v0, v10

    and-int/lit8 v10, v10, 0x3f

    int-to-byte v10, v10

    aput-byte v10, v1, v9

    .line 31
    const/4 v2, 0x0

    :goto_1
    const/4 v9, 0x4

    if-ge v2, v9, :cond_0

    .line 32
    sget-object v9, Lcom/huawei/device/chrlog/Base64Coder;->base64_alphabet:[C

    aget-byte v10, v1, v2

    aget-char v9, v9, v10

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 31
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 34
    :cond_0
    const/4 v2, 0x0

    move v8, v7

    .end local v7           #reversePos:I
    .restart local v8       #reversePos:I
    move v3, v2

    .end local v2           #i:I
    .restart local v3       #i:I
    goto :goto_0

    .line 39
    :cond_1
    if-lez v3, :cond_4

    .line 40
    move v4, v3

    :goto_2
    const/4 v9, 0x3

    if-ge v4, v9, :cond_2

    .line 41
    const/4 v9, 0x0

    aput-byte v9, v0, v4

    .line 40
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 43
    :cond_2
    const/4 v9, 0x0

    const/4 v10, 0x0

    aget-byte v10, v0, v10

    and-int/lit16 v10, v10, 0xfc

    shr-int/lit8 v10, v10, 0x2

    int-to-byte v10, v10

    aput-byte v10, v1, v9

    .line 44
    const/4 v9, 0x1

    const/4 v10, 0x0

    aget-byte v10, v0, v10

    and-int/lit8 v10, v10, 0x3

    shl-int/lit8 v10, v10, 0x4

    const/4 v11, 0x1

    aget-byte v11, v0, v11

    and-int/lit16 v11, v11, 0xf0

    shr-int/lit8 v11, v11, 0x4

    add-int/2addr v10, v11

    int-to-byte v10, v10

    aput-byte v10, v1, v9

    .line 45
    const/4 v9, 0x2

    const/4 v10, 0x1

    aget-byte v10, v0, v10

    and-int/lit8 v10, v10, 0xf

    shl-int/lit8 v10, v10, 0x2

    const/4 v11, 0x2

    aget-byte v11, v0, v11

    and-int/lit16 v11, v11, 0xc0

    shr-int/lit8 v11, v11, 0x6

    add-int/2addr v10, v11

    int-to-byte v10, v10

    aput-byte v10, v1, v9

    .line 46
    const/4 v9, 0x3

    const/4 v10, 0x2

    aget-byte v10, v0, v10

    and-int/lit8 v10, v10, 0x3f

    int-to-byte v10, v10

    aput-byte v10, v1, v9

    .line 48
    const/4 v4, 0x0

    :goto_3
    add-int/lit8 v9, v3, 0x1

    if-ge v4, v9, :cond_3

    .line 49
    sget-object v9, Lcom/huawei/device/chrlog/Base64Coder;->base64_alphabet:[C

    aget-byte v10, v1, v4

    aget-char v9, v9, v10

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 48
    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    .line 51
    :cond_3
    :goto_4
    add-int/lit8 v2, v3, 0x1

    .end local v3           #i:I
    .restart local v2       #i:I
    const/4 v9, 0x3

    if-ge v3, v9, :cond_5

    .line 53
    const/16 v9, 0x3d

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move v3, v2

    .end local v2           #i:I
    .restart local v3       #i:I
    goto :goto_4

    :cond_4
    move v2, v3

    .line 56
    .end local v3           #i:I
    .restart local v2       #i:I
    :cond_5
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    return-object v9

    .end local v8           #reversePos:I
    .restart local v7       #reversePos:I
    :cond_6
    move v8, v7

    .end local v7           #reversePos:I
    .restart local v8       #reversePos:I
    move v3, v2

    .end local v2           #i:I
    .restart local v3       #i:I
    goto/16 :goto_0

    .line 17
    nop

    :array_0
    .array-data 0x1
        0x0t
        0x0t
        0x0t
    .end array-data

    .line 18
    :array_1
    .array-data 0x1
        0x3dt
        0x3dt
        0x3dt
        0x3dt
    .end array-data
.end method

.method public static findChar(C)B
    .locals 3
    .parameter "x"

    .prologue
    .line 123
    const/16 v1, 0x40

    .line 124
    .local v1, index:B
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    const/16 v2, 0x40

    if-ge v0, v2, :cond_0

    .line 125
    sget-object v2, Lcom/huawei/device/chrlog/Base64Coder;->base64_alphabet:[C

    aget-char v2, v2, v0

    if-ne p0, v2, :cond_1

    .line 126
    int-to-byte v1, v0

    .line 130
    :cond_0
    return v1

    .line 124
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public static isBase64(C)Z
    .locals 3
    .parameter "c"

    .prologue
    .line 112
    const/4 v0, 0x0

    .line 113
    .local v0, base64:Z
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    const/16 v2, 0x40

    if-ge v1, v2, :cond_0

    .line 114
    sget-object v2, Lcom/huawei/device/chrlog/Base64Coder;->base64_alphabet:[C

    aget-char v2, v2, v1

    if-ne p0, v2, :cond_1

    .line 115
    const/4 v0, 0x1

    .line 119
    :cond_0
    return v0

    .line 113
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method
