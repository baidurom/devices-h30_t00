.class public Lcom/huawei/hicloud/photosharesdk/helper/Base64;
.super Ljava/lang/Object;
.source "Base64.java"


# static fields
.field private static final decodingTable:[B

.field private static final encodingTable:[B


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/16 v3, 0x80

    .line 19
    const/16 v1, 0x40

    new-array v1, v1, [B

    fill-array-data v1, :array_0

    sput-object v1, Lcom/huawei/hicloud/photosharesdk/helper/Base64;->encodingTable:[B

    .line 105
    new-array v1, v3, [B

    sput-object v1, Lcom/huawei/hicloud/photosharesdk/helper/Base64;->decodingTable:[B

    .line 107
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-lt v0, v3, :cond_0

    .line 111
    const/16 v0, 0x41

    :goto_1
    const/16 v1, 0x5a

    if-le v0, v1, :cond_1

    .line 115
    const/16 v0, 0x61

    :goto_2
    const/16 v1, 0x7a

    if-le v0, v1, :cond_2

    .line 119
    const/16 v0, 0x30

    :goto_3
    const/16 v1, 0x39

    if-le v0, v1, :cond_3

    .line 123
    sget-object v1, Lcom/huawei/hicloud/photosharesdk/helper/Base64;->decodingTable:[B

    const/16 v2, 0x2b

    const/16 v3, 0x3e

    aput-byte v3, v1, v2

    .line 124
    sget-object v1, Lcom/huawei/hicloud/photosharesdk/helper/Base64;->decodingTable:[B

    const/16 v2, 0x2f

    const/16 v3, 0x3f

    aput-byte v3, v1, v2

    .line 18
    return-void

    .line 108
    :cond_0
    sget-object v1, Lcom/huawei/hicloud/photosharesdk/helper/Base64;->decodingTable:[B

    const/4 v2, -0x1

    aput-byte v2, v1, v0

    .line 107
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 112
    :cond_1
    sget-object v1, Lcom/huawei/hicloud/photosharesdk/helper/Base64;->decodingTable:[B

    add-int/lit8 v2, v0, -0x41

    int-to-byte v2, v2

    aput-byte v2, v1, v0

    .line 111
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 116
    :cond_2
    sget-object v1, Lcom/huawei/hicloud/photosharesdk/helper/Base64;->decodingTable:[B

    add-int/lit8 v2, v0, -0x61

    add-int/lit8 v2, v2, 0x1a

    int-to-byte v2, v2

    aput-byte v2, v1, v0

    .line 115
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 120
    :cond_3
    sget-object v1, Lcom/huawei/hicloud/photosharesdk/helper/Base64;->decodingTable:[B

    add-int/lit8 v2, v0, -0x30

    add-int/lit8 v2, v2, 0x34

    int-to-byte v2, v2

    aput-byte v2, v1, v0

    .line 119
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 19
    nop

    :array_0
    .array-data 0x1
        0x41t
        0x42t
        0x43t
        0x44t
        0x45t
        0x46t
        0x47t
        0x48t
        0x49t
        0x4at
        0x4bt
        0x4ct
        0x4dt
        0x4et
        0x4ft
        0x50t
        0x51t
        0x52t
        0x53t
        0x54t
        0x55t
        0x56t
        0x57t
        0x58t
        0x59t
        0x5at
        0x61t
        0x62t
        0x63t
        0x64t
        0x65t
        0x66t
        0x67t
        0x68t
        0x69t
        0x6at
        0x6bt
        0x6ct
        0x6dt
        0x6et
        0x6ft
        0x70t
        0x71t
        0x72t
        0x73t
        0x74t
        0x75t
        0x76t
        0x77t
        0x78t
        0x79t
        0x7at
        0x30t
        0x31t
        0x32t
        0x33t
        0x34t
        0x35t
        0x36t
        0x37t
        0x38t
        0x39t
        0x2bt
        0x2ft
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 18
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static decode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .parameter "data"
    .parameter "charset"

    .prologue
    .line 248
    const/4 v2, 0x0

    .line 249
    .local v2, result:Ljava/lang/String;
    if-nez p1, :cond_0

    .line 253
    :try_start_0
    new-instance v3, Ljava/lang/String;

    invoke-static {p0}, Lcom/huawei/hicloud/photosharesdk/helper/Base64;->decode(Ljava/lang/String;)[B

    move-result-object v4

    const-string v5, "UTF-8"

    invoke-direct {v3, v4, v5}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .end local v2           #result:Ljava/lang/String;
    .local v3, result:Ljava/lang/String;
    move-object v2, v3

    .end local v3           #result:Ljava/lang/String;
    .restart local v2       #result:Ljava/lang/String;
    :goto_0
    move-object v4, v2

    .line 280
    :goto_1
    return-object v4

    .line 255
    :catch_0
    move-exception v0

    .line 257
    .local v0, e:Ljava/io/UnsupportedEncodingException;
    invoke-static {}, Lcom/huawei/hicloud/photosharesdk3/logic/call/SDKObject;->getTagInfo()Ljava/lang/String;

    move-result-object v4

    const-string v5, ""

    invoke-static {v4, v5, v0}, Lcom/huawei/hicloud/photosharesdk3/logic/call/SDKObject;->log(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0

    .line 263
    .end local v0           #e:Ljava/io/UnsupportedEncodingException;
    :cond_0
    :try_start_1
    new-instance v4, Ljava/lang/String;

    invoke-static {p0}, Lcom/huawei/hicloud/photosharesdk/helper/Base64;->decode(Ljava/lang/String;)[B

    move-result-object v5

    invoke-direct {v4, v5, p1}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    .line 265
    :catch_1
    move-exception v1

    .line 266
    .local v1, ex:Ljava/io/UnsupportedEncodingException;
    sget-boolean v4, Lcom/huawei/hicloud/photosharesdk/helper/LogHelper;->IS_LOG_OPEN:Z

    if-eqz v4, :cond_1

    .line 268
    const-string v4, "UnsupportedEncodingException"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Charset: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 269
    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " not supported. Using default."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 268
    invoke-static {v4, v5}, Lcom/huawei/hicloud/photosharesdk/helper/LogHelper;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 270
    invoke-static {}, Lcom/huawei/hicloud/photosharesdk3/logic/call/SDKObject;->getTagInfo()Ljava/lang/String;

    move-result-object v4

    const-string v5, ""

    invoke-static {v4, v5, v1}, Lcom/huawei/hicloud/photosharesdk3/logic/call/SDKObject;->log(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 274
    :cond_1
    :try_start_2
    new-instance v3, Ljava/lang/String;

    invoke-static {p0}, Lcom/huawei/hicloud/photosharesdk/helper/Base64;->decode(Ljava/lang/String;)[B

    move-result-object v4

    const-string v5, "UTF-8"

    invoke-direct {v3, v4, v5}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_2
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_2 .. :try_end_2} :catch_2

    .end local v2           #result:Ljava/lang/String;
    .restart local v3       #result:Ljava/lang/String;
    move-object v2, v3

    .end local v3           #result:Ljava/lang/String;
    .restart local v2       #result:Ljava/lang/String;
    :goto_2
    move-object v4, v2

    .line 280
    goto :goto_1

    .line 276
    :catch_2
    move-exception v0

    .line 278
    .restart local v0       #e:Ljava/io/UnsupportedEncodingException;
    invoke-static {}, Lcom/huawei/hicloud/photosharesdk3/logic/call/SDKObject;->getTagInfo()Ljava/lang/String;

    move-result-object v4

    const-string v5, ""

    invoke-static {v4, v5, v0}, Lcom/huawei/hicloud/photosharesdk3/logic/call/SDKObject;->log(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_2
.end method

.method public static decode([BLjava/lang/String;)Ljava/lang/String;
    .locals 7
    .parameter "data"
    .parameter "charset"

    .prologue
    .line 290
    const/4 v2, 0x0

    .line 291
    .local v2, result:Ljava/lang/String;
    if-nez p1, :cond_0

    .line 294
    :try_start_0
    new-instance v3, Ljava/lang/String;

    invoke-static {p0}, Lcom/huawei/hicloud/photosharesdk/helper/Base64;->decode([B)[B

    move-result-object v4

    const-string v5, "UTF-8"

    invoke-direct {v3, v4, v5}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .end local v2           #result:Ljava/lang/String;
    .local v3, result:Ljava/lang/String;
    move-object v2, v3

    .end local v3           #result:Ljava/lang/String;
    .restart local v2       #result:Ljava/lang/String;
    :goto_0
    move-object v4, v2

    .line 321
    :goto_1
    return-object v4

    .line 296
    :catch_0
    move-exception v0

    .line 298
    .local v0, e:Ljava/io/UnsupportedEncodingException;
    invoke-static {}, Lcom/huawei/hicloud/photosharesdk3/logic/call/SDKObject;->getTagInfo()Ljava/lang/String;

    move-result-object v4

    const-string v5, ""

    invoke-static {v4, v5, v0}, Lcom/huawei/hicloud/photosharesdk3/logic/call/SDKObject;->log(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0

    .line 304
    .end local v0           #e:Ljava/io/UnsupportedEncodingException;
    :cond_0
    :try_start_1
    new-instance v4, Ljava/lang/String;

    invoke-static {p0}, Lcom/huawei/hicloud/photosharesdk/helper/Base64;->decode([B)[B

    move-result-object v5

    invoke-direct {v4, v5, p1}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    .line 306
    :catch_1
    move-exception v1

    .line 307
    .local v1, ex:Ljava/io/UnsupportedEncodingException;
    sget-boolean v4, Lcom/huawei/hicloud/photosharesdk/helper/LogHelper;->IS_LOG_OPEN:Z

    if-eqz v4, :cond_1

    .line 309
    const-string v4, "UnsupportedEncodingException"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Charset: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 310
    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " not supported. Using default."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 309
    invoke-static {v4, v5}, Lcom/huawei/hicloud/photosharesdk/helper/LogHelper;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 311
    invoke-static {}, Lcom/huawei/hicloud/photosharesdk3/logic/call/SDKObject;->getTagInfo()Ljava/lang/String;

    move-result-object v4

    const-string v5, ""

    invoke-static {v4, v5, v1}, Lcom/huawei/hicloud/photosharesdk3/logic/call/SDKObject;->log(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 315
    :cond_1
    :try_start_2
    new-instance v3, Ljava/lang/String;

    invoke-static {p0}, Lcom/huawei/hicloud/photosharesdk/helper/Base64;->decode([B)[B

    move-result-object v4

    const-string v5, "UTF-8"

    invoke-direct {v3, v4, v5}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_2
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_2 .. :try_end_2} :catch_2

    .end local v2           #result:Ljava/lang/String;
    .restart local v3       #result:Ljava/lang/String;
    move-object v2, v3

    .end local v3           #result:Ljava/lang/String;
    .restart local v2       #result:Ljava/lang/String;
    :goto_2
    move-object v4, v2

    .line 321
    goto :goto_1

    .line 317
    :catch_2
    move-exception v0

    .line 319
    .restart local v0       #e:Ljava/io/UnsupportedEncodingException;
    invoke-static {}, Lcom/huawei/hicloud/photosharesdk3/logic/call/SDKObject;->getTagInfo()Ljava/lang/String;

    move-result-object v4

    const-string v5, ""

    invoke-static {v4, v5, v0}, Lcom/huawei/hicloud/photosharesdk3/logic/call/SDKObject;->log(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_2
.end method

.method public static decode(Ljava/lang/String;)[B
    .locals 11
    .parameter "data"

    .prologue
    const/16 v10, 0x3d

    .line 195
    invoke-static {p0}, Lcom/huawei/hicloud/photosharesdk/helper/Base64;->discardNonBase64Chars(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 197
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v7

    add-int/lit8 v7, v7, -0x2

    invoke-virtual {p0, v7}, Ljava/lang/String;->charAt(I)C

    move-result v7

    if-ne v7, v10, :cond_0

    .line 198
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v7

    div-int/lit8 v7, v7, 0x4

    add-int/lit8 v7, v7, -0x1

    mul-int/lit8 v7, v7, 0x3

    add-int/lit8 v7, v7, 0x1

    new-array v4, v7, [B

    .line 205
    .local v4, bytes:[B
    :goto_0
    const/4 v5, 0x0

    .local v5, i:I
    const/4 v6, 0x0

    .local v6, j:I
    :goto_1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v7

    add-int/lit8 v7, v7, -0x4

    if-lt v5, v7, :cond_2

    .line 216
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v7

    add-int/lit8 v7, v7, -0x2

    invoke-virtual {p0, v7}, Ljava/lang/String;->charAt(I)C

    move-result v7

    if-ne v7, v10, :cond_3

    .line 217
    sget-object v7, Lcom/huawei/hicloud/photosharesdk/helper/Base64;->decodingTable:[B

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v8

    add-int/lit8 v8, v8, -0x4

    invoke-virtual {p0, v8}, Ljava/lang/String;->charAt(I)C

    move-result v8

    aget-byte v0, v7, v8

    .line 218
    .local v0, b1:B
    sget-object v7, Lcom/huawei/hicloud/photosharesdk/helper/Base64;->decodingTable:[B

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v8

    add-int/lit8 v8, v8, -0x3

    invoke-virtual {p0, v8}, Ljava/lang/String;->charAt(I)C

    move-result v8

    aget-byte v1, v7, v8

    .line 220
    .local v1, b2:B
    array-length v7, v4

    add-int/lit8 v7, v7, -0x1

    shl-int/lit8 v8, v0, 0x2

    shr-int/lit8 v9, v1, 0x4

    or-int/2addr v8, v9

    int-to-byte v8, v8

    aput-byte v8, v4, v7

    .line 239
    :goto_2
    return-object v4

    .line 199
    .end local v0           #b1:B
    .end local v1           #b2:B
    .end local v4           #bytes:[B
    .end local v5           #i:I
    .end local v6           #j:I
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v7

    add-int/lit8 v7, v7, -0x1

    invoke-virtual {p0, v7}, Ljava/lang/String;->charAt(I)C

    move-result v7

    if-ne v7, v10, :cond_1

    .line 200
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v7

    div-int/lit8 v7, v7, 0x4

    add-int/lit8 v7, v7, -0x1

    mul-int/lit8 v7, v7, 0x3

    add-int/lit8 v7, v7, 0x2

    new-array v4, v7, [B

    .restart local v4       #bytes:[B
    goto :goto_0

    .line 202
    .end local v4           #bytes:[B
    :cond_1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v7

    div-int/lit8 v7, v7, 0x4

    mul-int/lit8 v7, v7, 0x3

    new-array v4, v7, [B

    .restart local v4       #bytes:[B
    goto :goto_0

    .line 206
    .restart local v5       #i:I
    .restart local v6       #j:I
    :cond_2
    sget-object v7, Lcom/huawei/hicloud/photosharesdk/helper/Base64;->decodingTable:[B

    invoke-virtual {p0, v5}, Ljava/lang/String;->charAt(I)C

    move-result v8

    aget-byte v0, v7, v8

    .line 207
    .restart local v0       #b1:B
    sget-object v7, Lcom/huawei/hicloud/photosharesdk/helper/Base64;->decodingTable:[B

    add-int/lit8 v8, v5, 0x1

    invoke-virtual {p0, v8}, Ljava/lang/String;->charAt(I)C

    move-result v8

    aget-byte v1, v7, v8

    .line 208
    .restart local v1       #b2:B
    sget-object v7, Lcom/huawei/hicloud/photosharesdk/helper/Base64;->decodingTable:[B

    add-int/lit8 v8, v5, 0x2

    invoke-virtual {p0, v8}, Ljava/lang/String;->charAt(I)C

    move-result v8

    aget-byte v2, v7, v8

    .line 209
    .local v2, b3:B
    sget-object v7, Lcom/huawei/hicloud/photosharesdk/helper/Base64;->decodingTable:[B

    add-int/lit8 v8, v5, 0x3

    invoke-virtual {p0, v8}, Ljava/lang/String;->charAt(I)C

    move-result v8

    aget-byte v3, v7, v8

    .line 211
    .local v3, b4:B
    shl-int/lit8 v7, v0, 0x2

    shr-int/lit8 v8, v1, 0x4

    or-int/2addr v7, v8

    int-to-byte v7, v7

    aput-byte v7, v4, v6

    .line 212
    add-int/lit8 v7, v6, 0x1

    shl-int/lit8 v8, v1, 0x4

    shr-int/lit8 v9, v2, 0x2

    or-int/2addr v8, v9

    int-to-byte v8, v8

    aput-byte v8, v4, v7

    .line 213
    add-int/lit8 v7, v6, 0x2

    shl-int/lit8 v8, v2, 0x6

    or-int/2addr v8, v3

    int-to-byte v8, v8

    aput-byte v8, v4, v7

    .line 205
    add-int/lit8 v5, v5, 0x4

    add-int/lit8 v6, v6, 0x3

    goto/16 :goto_1

    .line 221
    .end local v0           #b1:B
    .end local v1           #b2:B
    .end local v2           #b3:B
    .end local v3           #b4:B
    :cond_3
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v7

    add-int/lit8 v7, v7, -0x1

    invoke-virtual {p0, v7}, Ljava/lang/String;->charAt(I)C

    move-result v7

    if-ne v7, v10, :cond_4

    .line 222
    sget-object v7, Lcom/huawei/hicloud/photosharesdk/helper/Base64;->decodingTable:[B

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v8

    add-int/lit8 v8, v8, -0x4

    invoke-virtual {p0, v8}, Ljava/lang/String;->charAt(I)C

    move-result v8

    aget-byte v0, v7, v8

    .line 223
    .restart local v0       #b1:B
    sget-object v7, Lcom/huawei/hicloud/photosharesdk/helper/Base64;->decodingTable:[B

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v8

    add-int/lit8 v8, v8, -0x3

    invoke-virtual {p0, v8}, Ljava/lang/String;->charAt(I)C

    move-result v8

    aget-byte v1, v7, v8

    .line 224
    .restart local v1       #b2:B
    sget-object v7, Lcom/huawei/hicloud/photosharesdk/helper/Base64;->decodingTable:[B

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v8

    add-int/lit8 v8, v8, -0x2

    invoke-virtual {p0, v8}, Ljava/lang/String;->charAt(I)C

    move-result v8

    aget-byte v2, v7, v8

    .line 226
    .restart local v2       #b3:B
    array-length v7, v4

    add-int/lit8 v7, v7, -0x2

    shl-int/lit8 v8, v0, 0x2

    shr-int/lit8 v9, v1, 0x4

    or-int/2addr v8, v9

    int-to-byte v8, v8

    aput-byte v8, v4, v7

    .line 227
    array-length v7, v4

    add-int/lit8 v7, v7, -0x1

    shl-int/lit8 v8, v1, 0x4

    shr-int/lit8 v9, v2, 0x2

    or-int/2addr v8, v9

    int-to-byte v8, v8

    aput-byte v8, v4, v7

    goto/16 :goto_2

    .line 229
    .end local v0           #b1:B
    .end local v1           #b2:B
    .end local v2           #b3:B
    :cond_4
    sget-object v7, Lcom/huawei/hicloud/photosharesdk/helper/Base64;->decodingTable:[B

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v8

    add-int/lit8 v8, v8, -0x4

    invoke-virtual {p0, v8}, Ljava/lang/String;->charAt(I)C

    move-result v8

    aget-byte v0, v7, v8

    .line 230
    .restart local v0       #b1:B
    sget-object v7, Lcom/huawei/hicloud/photosharesdk/helper/Base64;->decodingTable:[B

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v8

    add-int/lit8 v8, v8, -0x3

    invoke-virtual {p0, v8}, Ljava/lang/String;->charAt(I)C

    move-result v8

    aget-byte v1, v7, v8

    .line 231
    .restart local v1       #b2:B
    sget-object v7, Lcom/huawei/hicloud/photosharesdk/helper/Base64;->decodingTable:[B

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v8

    add-int/lit8 v8, v8, -0x2

    invoke-virtual {p0, v8}, Ljava/lang/String;->charAt(I)C

    move-result v8

    aget-byte v2, v7, v8

    .line 232
    .restart local v2       #b3:B
    sget-object v7, Lcom/huawei/hicloud/photosharesdk/helper/Base64;->decodingTable:[B

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v8

    add-int/lit8 v8, v8, -0x1

    invoke-virtual {p0, v8}, Ljava/lang/String;->charAt(I)C

    move-result v8

    aget-byte v3, v7, v8

    .line 234
    .restart local v3       #b4:B
    array-length v7, v4

    add-int/lit8 v7, v7, -0x3

    shl-int/lit8 v8, v0, 0x2

    shr-int/lit8 v9, v1, 0x4

    or-int/2addr v8, v9

    int-to-byte v8, v8

    aput-byte v8, v4, v7

    .line 235
    array-length v7, v4

    add-int/lit8 v7, v7, -0x2

    shl-int/lit8 v8, v1, 0x4

    shr-int/lit8 v9, v2, 0x2

    or-int/2addr v8, v9

    int-to-byte v8, v8

    aput-byte v8, v4, v7

    .line 236
    array-length v7, v4

    add-int/lit8 v7, v7, -0x1

    shl-int/lit8 v8, v2, 0x6

    or-int/2addr v8, v3

    int-to-byte v8, v8

    aput-byte v8, v4, v7

    goto/16 :goto_2
.end method

.method public static decode([B)[B
    .locals 11
    .parameter "data"

    .prologue
    const/16 v10, 0x3d

    .line 137
    invoke-static {p0}, Lcom/huawei/hicloud/photosharesdk/helper/Base64;->discardNonBase64Bytes([B)[B

    move-result-object p0

    .line 139
    array-length v7, p0

    add-int/lit8 v7, v7, -0x2

    aget-byte v7, p0, v7

    if-ne v7, v10, :cond_0

    .line 140
    array-length v7, p0

    div-int/lit8 v7, v7, 0x4

    add-int/lit8 v7, v7, -0x1

    mul-int/lit8 v7, v7, 0x3

    add-int/lit8 v7, v7, 0x1

    new-array v4, v7, [B

    .line 147
    .local v4, bytes:[B
    :goto_0
    const/4 v5, 0x0

    .local v5, i:I
    const/4 v6, 0x0

    .local v6, j:I
    :goto_1
    array-length v7, p0

    add-int/lit8 v7, v7, -0x4

    if-lt v5, v7, :cond_2

    .line 158
    array-length v7, p0

    add-int/lit8 v7, v7, -0x2

    aget-byte v7, p0, v7

    if-ne v7, v10, :cond_3

    .line 159
    sget-object v7, Lcom/huawei/hicloud/photosharesdk/helper/Base64;->decodingTable:[B

    array-length v8, p0

    add-int/lit8 v8, v8, -0x4

    aget-byte v8, p0, v8

    aget-byte v0, v7, v8

    .line 160
    .local v0, b1:B
    sget-object v7, Lcom/huawei/hicloud/photosharesdk/helper/Base64;->decodingTable:[B

    array-length v8, p0

    add-int/lit8 v8, v8, -0x3

    aget-byte v8, p0, v8

    aget-byte v1, v7, v8

    .line 162
    .local v1, b2:B
    array-length v7, v4

    add-int/lit8 v7, v7, -0x1

    shl-int/lit8 v8, v0, 0x2

    shr-int/lit8 v9, v1, 0x4

    or-int/2addr v8, v9

    int-to-byte v8, v8

    aput-byte v8, v4, v7

    .line 181
    :goto_2
    return-object v4

    .line 141
    .end local v0           #b1:B
    .end local v1           #b2:B
    .end local v4           #bytes:[B
    .end local v5           #i:I
    .end local v6           #j:I
    :cond_0
    array-length v7, p0

    add-int/lit8 v7, v7, -0x1

    aget-byte v7, p0, v7

    if-ne v7, v10, :cond_1

    .line 142
    array-length v7, p0

    div-int/lit8 v7, v7, 0x4

    add-int/lit8 v7, v7, -0x1

    mul-int/lit8 v7, v7, 0x3

    add-int/lit8 v7, v7, 0x2

    new-array v4, v7, [B

    .restart local v4       #bytes:[B
    goto :goto_0

    .line 144
    .end local v4           #bytes:[B
    :cond_1
    array-length v7, p0

    div-int/lit8 v7, v7, 0x4

    mul-int/lit8 v7, v7, 0x3

    new-array v4, v7, [B

    .restart local v4       #bytes:[B
    goto :goto_0

    .line 148
    .restart local v5       #i:I
    .restart local v6       #j:I
    :cond_2
    sget-object v7, Lcom/huawei/hicloud/photosharesdk/helper/Base64;->decodingTable:[B

    aget-byte v8, p0, v5

    aget-byte v0, v7, v8

    .line 149
    .restart local v0       #b1:B
    sget-object v7, Lcom/huawei/hicloud/photosharesdk/helper/Base64;->decodingTable:[B

    add-int/lit8 v8, v5, 0x1

    aget-byte v8, p0, v8

    aget-byte v1, v7, v8

    .line 150
    .restart local v1       #b2:B
    sget-object v7, Lcom/huawei/hicloud/photosharesdk/helper/Base64;->decodingTable:[B

    add-int/lit8 v8, v5, 0x2

    aget-byte v8, p0, v8

    aget-byte v2, v7, v8

    .line 151
    .local v2, b3:B
    sget-object v7, Lcom/huawei/hicloud/photosharesdk/helper/Base64;->decodingTable:[B

    add-int/lit8 v8, v5, 0x3

    aget-byte v8, p0, v8

    aget-byte v3, v7, v8

    .line 153
    .local v3, b4:B
    shl-int/lit8 v7, v0, 0x2

    shr-int/lit8 v8, v1, 0x4

    or-int/2addr v7, v8

    int-to-byte v7, v7

    aput-byte v7, v4, v6

    .line 154
    add-int/lit8 v7, v6, 0x1

    shl-int/lit8 v8, v1, 0x4

    shr-int/lit8 v9, v2, 0x2

    or-int/2addr v8, v9

    int-to-byte v8, v8

    aput-byte v8, v4, v7

    .line 155
    add-int/lit8 v7, v6, 0x2

    shl-int/lit8 v8, v2, 0x6

    or-int/2addr v8, v3

    int-to-byte v8, v8

    aput-byte v8, v4, v7

    .line 147
    add-int/lit8 v5, v5, 0x4

    add-int/lit8 v6, v6, 0x3

    goto/16 :goto_1

    .line 163
    .end local v0           #b1:B
    .end local v1           #b2:B
    .end local v2           #b3:B
    .end local v3           #b4:B
    :cond_3
    array-length v7, p0

    add-int/lit8 v7, v7, -0x1

    aget-byte v7, p0, v7

    if-ne v7, v10, :cond_4

    .line 164
    sget-object v7, Lcom/huawei/hicloud/photosharesdk/helper/Base64;->decodingTable:[B

    array-length v8, p0

    add-int/lit8 v8, v8, -0x4

    aget-byte v8, p0, v8

    aget-byte v0, v7, v8

    .line 165
    .restart local v0       #b1:B
    sget-object v7, Lcom/huawei/hicloud/photosharesdk/helper/Base64;->decodingTable:[B

    array-length v8, p0

    add-int/lit8 v8, v8, -0x3

    aget-byte v8, p0, v8

    aget-byte v1, v7, v8

    .line 166
    .restart local v1       #b2:B
    sget-object v7, Lcom/huawei/hicloud/photosharesdk/helper/Base64;->decodingTable:[B

    array-length v8, p0

    add-int/lit8 v8, v8, -0x2

    aget-byte v8, p0, v8

    aget-byte v2, v7, v8

    .line 168
    .restart local v2       #b3:B
    array-length v7, v4

    add-int/lit8 v7, v7, -0x2

    shl-int/lit8 v8, v0, 0x2

    shr-int/lit8 v9, v1, 0x4

    or-int/2addr v8, v9

    int-to-byte v8, v8

    aput-byte v8, v4, v7

    .line 169
    array-length v7, v4

    add-int/lit8 v7, v7, -0x1

    shl-int/lit8 v8, v1, 0x4

    shr-int/lit8 v9, v2, 0x2

    or-int/2addr v8, v9

    int-to-byte v8, v8

    aput-byte v8, v4, v7

    goto/16 :goto_2

    .line 171
    .end local v0           #b1:B
    .end local v1           #b2:B
    .end local v2           #b3:B
    :cond_4
    sget-object v7, Lcom/huawei/hicloud/photosharesdk/helper/Base64;->decodingTable:[B

    array-length v8, p0

    add-int/lit8 v8, v8, -0x4

    aget-byte v8, p0, v8

    aget-byte v0, v7, v8

    .line 172
    .restart local v0       #b1:B
    sget-object v7, Lcom/huawei/hicloud/photosharesdk/helper/Base64;->decodingTable:[B

    array-length v8, p0

    add-int/lit8 v8, v8, -0x3

    aget-byte v8, p0, v8

    aget-byte v1, v7, v8

    .line 173
    .restart local v1       #b2:B
    sget-object v7, Lcom/huawei/hicloud/photosharesdk/helper/Base64;->decodingTable:[B

    array-length v8, p0

    add-int/lit8 v8, v8, -0x2

    aget-byte v8, p0, v8

    aget-byte v2, v7, v8

    .line 174
    .restart local v2       #b3:B
    sget-object v7, Lcom/huawei/hicloud/photosharesdk/helper/Base64;->decodingTable:[B

    array-length v8, p0

    add-int/lit8 v8, v8, -0x1

    aget-byte v8, p0, v8

    aget-byte v3, v7, v8

    .line 176
    .restart local v3       #b4:B
    array-length v7, v4

    add-int/lit8 v7, v7, -0x3

    shl-int/lit8 v8, v0, 0x2

    shr-int/lit8 v9, v1, 0x4

    or-int/2addr v8, v9

    int-to-byte v8, v8

    aput-byte v8, v4, v7

    .line 177
    array-length v7, v4

    add-int/lit8 v7, v7, -0x2

    shl-int/lit8 v8, v1, 0x4

    shr-int/lit8 v9, v2, 0x2

    or-int/2addr v8, v9

    int-to-byte v8, v8

    aput-byte v8, v4, v7

    .line 178
    array-length v7, v4

    add-int/lit8 v7, v7, -0x1

    shl-int/lit8 v8, v2, 0x6

    or-int/2addr v8, v3

    int-to-byte v8, v8

    aput-byte v8, v4, v7

    goto/16 :goto_2
.end method

.method private static discardNonBase64Bytes([B)[B
    .locals 7
    .parameter "data"

    .prologue
    const/4 v6, 0x0

    .line 337
    array-length v5, p0

    new-array v4, v5, [B

    .line 338
    .local v4, temp:[B
    const/4 v0, 0x0

    .line 340
    .local v0, bytesCopied:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    array-length v5, p0

    if-lt v2, v5, :cond_0

    .line 346
    new-array v3, v0, [B

    .line 348
    .local v3, newData:[B
    invoke-static {v4, v6, v3, v6, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 350
    return-object v3

    .line 341
    .end local v3           #newData:[B
    :cond_0
    aget-byte v5, p0, v2

    invoke-static {v5}, Lcom/huawei/hicloud/photosharesdk/helper/Base64;->isValidBase64Byte(B)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 342
    add-int/lit8 v1, v0, 0x1

    .end local v0           #bytesCopied:I
    .local v1, bytesCopied:I
    aget-byte v5, p0, v2

    aput-byte v5, v4, v0

    move v0, v1

    .line 340
    .end local v1           #bytesCopied:I
    .restart local v0       #bytesCopied:I
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method private static discardNonBase64Chars(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .parameter "data"

    .prologue
    .line 364
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    .line 366
    .local v2, sb:Ljava/lang/StringBuffer;
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    .line 368
    .local v1, length:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-lt v0, v1, :cond_0

    .line 374
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3

    .line 369
    :cond_0
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v3

    int-to-byte v3, v3

    invoke-static {v3}, Lcom/huawei/hicloud/photosharesdk/helper/Base64;->isValidBase64Byte(B)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 370
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 368
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public static encode([B)[B
    .locals 18
    .parameter "data"

    .prologue
    .line 42
    move-object/from16 v0, p0

    array-length v14, v0

    rem-int/lit8 v13, v14, 0x3

    .line 43
    .local v13, modulus:I
    if-nez v13, :cond_0

    .line 44
    move-object/from16 v0, p0

    array-length v14, v0

    mul-int/lit8 v14, v14, 0x4

    div-int/lit8 v14, v14, 0x3

    new-array v7, v14, [B

    .line 49
    .local v7, bytes:[B
    :goto_0
    move-object/from16 v0, p0

    array-length v14, v0

    sub-int v10, v14, v13

    .line 51
    .local v10, dataLength:I
    const/4 v11, 0x0

    .local v11, i:I
    const/4 v12, 0x0

    .local v12, j:I
    :goto_1
    if-lt v11, v10, :cond_1

    .line 68
    packed-switch v13, :pswitch_data_0

    .line 96
    :goto_2
    :pswitch_0
    return-object v7

    .line 46
    .end local v7           #bytes:[B
    .end local v10           #dataLength:I
    .end local v11           #i:I
    .end local v12           #j:I
    :cond_0
    move-object/from16 v0, p0

    array-length v14, v0

    div-int/lit8 v14, v14, 0x3

    add-int/lit8 v14, v14, 0x1

    mul-int/lit8 v14, v14, 0x4

    new-array v7, v14, [B

    .restart local v7       #bytes:[B
    goto :goto_0

    .line 52
    .restart local v10       #dataLength:I
    .restart local v11       #i:I
    .restart local v12       #j:I
    :cond_1
    aget-byte v14, p0, v11

    and-int/lit16 v1, v14, 0xff

    .line 53
    .local v1, a1:I
    add-int/lit8 v14, v11, 0x1

    aget-byte v14, p0, v14

    and-int/lit16 v2, v14, 0xff

    .line 54
    .local v2, a2:I
    add-int/lit8 v14, v11, 0x2

    aget-byte v14, p0, v14

    and-int/lit16 v3, v14, 0xff

    .line 56
    .local v3, a3:I
    sget-object v14, Lcom/huawei/hicloud/photosharesdk/helper/Base64;->encodingTable:[B

    ushr-int/lit8 v15, v1, 0x2

    and-int/lit8 v15, v15, 0x3f

    aget-byte v14, v14, v15

    aput-byte v14, v7, v12

    .line 57
    add-int/lit8 v14, v12, 0x1

    sget-object v15, Lcom/huawei/hicloud/photosharesdk/helper/Base64;->encodingTable:[B

    shl-int/lit8 v16, v1, 0x4

    ushr-int/lit8 v17, v2, 0x4

    or-int v16, v16, v17

    and-int/lit8 v16, v16, 0x3f

    aget-byte v15, v15, v16

    aput-byte v15, v7, v14

    .line 58
    add-int/lit8 v14, v12, 0x2

    sget-object v15, Lcom/huawei/hicloud/photosharesdk/helper/Base64;->encodingTable:[B

    shl-int/lit8 v16, v2, 0x2

    ushr-int/lit8 v17, v3, 0x6

    or-int v16, v16, v17

    and-int/lit8 v16, v16, 0x3f

    aget-byte v15, v15, v16

    aput-byte v15, v7, v14

    .line 59
    add-int/lit8 v14, v12, 0x3

    sget-object v15, Lcom/huawei/hicloud/photosharesdk/helper/Base64;->encodingTable:[B

    and-int/lit8 v16, v3, 0x3f

    aget-byte v15, v15, v16

    aput-byte v15, v7, v14

    .line 51
    add-int/lit8 v11, v11, 0x3

    add-int/lit8 v12, v12, 0x4

    goto :goto_1

    .line 72
    .end local v1           #a1:I
    .end local v2           #a2:I
    .end local v3           #a3:I
    :pswitch_1
    move-object/from16 v0, p0

    array-length v14, v0

    add-int/lit8 v14, v14, -0x1

    aget-byte v14, p0, v14

    and-int/lit16 v8, v14, 0xff

    .line 73
    .local v8, d1:I
    ushr-int/lit8 v14, v8, 0x2

    and-int/lit8 v4, v14, 0x3f

    .line 74
    .local v4, b1:I
    shl-int/lit8 v14, v8, 0x4

    and-int/lit8 v5, v14, 0x3f

    .line 76
    .local v5, b2:I
    array-length v14, v7

    add-int/lit8 v14, v14, -0x4

    sget-object v15, Lcom/huawei/hicloud/photosharesdk/helper/Base64;->encodingTable:[B

    aget-byte v15, v15, v4

    aput-byte v15, v7, v14

    .line 77
    array-length v14, v7

    add-int/lit8 v14, v14, -0x3

    sget-object v15, Lcom/huawei/hicloud/photosharesdk/helper/Base64;->encodingTable:[B

    aget-byte v15, v15, v5

    aput-byte v15, v7, v14

    .line 78
    array-length v14, v7

    add-int/lit8 v14, v14, -0x2

    const/16 v15, 0x3d

    aput-byte v15, v7, v14

    .line 79
    array-length v14, v7

    add-int/lit8 v14, v14, -0x1

    const/16 v15, 0x3d

    aput-byte v15, v7, v14

    goto/16 :goto_2

    .line 82
    .end local v4           #b1:I
    .end local v5           #b2:I
    .end local v8           #d1:I
    :pswitch_2
    move-object/from16 v0, p0

    array-length v14, v0

    add-int/lit8 v14, v14, -0x2

    aget-byte v14, p0, v14

    and-int/lit16 v8, v14, 0xff

    .line 83
    .restart local v8       #d1:I
    move-object/from16 v0, p0

    array-length v14, v0

    add-int/lit8 v14, v14, -0x1

    aget-byte v14, p0, v14

    and-int/lit16 v9, v14, 0xff

    .line 85
    .local v9, d2:I
    ushr-int/lit8 v14, v8, 0x2

    and-int/lit8 v4, v14, 0x3f

    .line 86
    .restart local v4       #b1:I
    shl-int/lit8 v14, v8, 0x4

    ushr-int/lit8 v15, v9, 0x4

    or-int/2addr v14, v15

    and-int/lit8 v5, v14, 0x3f

    .line 87
    .restart local v5       #b2:I
    shl-int/lit8 v14, v9, 0x2

    and-int/lit8 v6, v14, 0x3f

    .line 89
    .local v6, b3:I
    array-length v14, v7

    add-int/lit8 v14, v14, -0x4

    sget-object v15, Lcom/huawei/hicloud/photosharesdk/helper/Base64;->encodingTable:[B

    aget-byte v15, v15, v4

    aput-byte v15, v7, v14

    .line 90
    array-length v14, v7

    add-int/lit8 v14, v14, -0x3

    sget-object v15, Lcom/huawei/hicloud/photosharesdk/helper/Base64;->encodingTable:[B

    aget-byte v15, v15, v5

    aput-byte v15, v7, v14

    .line 91
    array-length v14, v7

    add-int/lit8 v14, v14, -0x2

    sget-object v15, Lcom/huawei/hicloud/photosharesdk/helper/Base64;->encodingTable:[B

    aget-byte v15, v15, v6

    aput-byte v15, v7, v14

    .line 92
    array-length v14, v7

    add-int/lit8 v14, v14, -0x1

    const/16 v15, 0x3d

    aput-byte v15, v7, v14

    goto/16 :goto_2

    .line 68
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private static isValidBase64Byte(B)Z
    .locals 4
    .parameter "b"

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 385
    const/16 v2, 0x3d

    if-ne p0, v2, :cond_1

    .line 392
    :cond_0
    :goto_0
    return v0

    .line 387
    :cond_1
    if-ltz p0, :cond_2

    const/16 v2, 0x80

    if-lt p0, v2, :cond_3

    :cond_2
    move v0, v1

    .line 388
    goto :goto_0

    .line 389
    :cond_3
    sget-object v2, Lcom/huawei/hicloud/photosharesdk/helper/Base64;->decodingTable:[B

    aget-byte v2, v2, p0

    const/4 v3, -0x1

    if-ne v2, v3, :cond_0

    move v0, v1

    .line 390
    goto :goto_0
.end method
