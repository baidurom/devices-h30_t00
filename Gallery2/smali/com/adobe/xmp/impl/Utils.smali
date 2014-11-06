.class public Lcom/adobe/xmp/impl/Utils;
.super Ljava/lang/Object;
.source "Utils.java"

# interfaces
.implements Lcom/adobe/xmp/XMPConst;


# static fields
.field public static final UUID_LENGTH:I = 0x24

.field public static final UUID_SEGMENT_COUNT:I = 0x4

.field private static xmlNameChars:[Z

.field private static xmlNameStartChars:[Z


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .prologue
    .line 34
    invoke-static {}, Lcom/adobe/xmp/impl/Utils;->initCharTables()V

    .line 35
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 42
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 44
    return-void
.end method

.method static checkUUIDFormat(Ljava/lang/String;)Z
    .locals 7
    .parameter "uuid"

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 274
    const/4 v2, 0x1

    .line 275
    .local v2, result:Z
    const/4 v0, 0x0

    .line 276
    .local v0, delimCnt:I
    const/4 v1, 0x0

    .line 278
    .local v1, delimPos:I
    if-nez p0, :cond_0

    .line 293
    :goto_0
    return v4

    .line 283
    :cond_0
    const/4 v1, 0x0

    :goto_1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v5

    if-ge v1, v5, :cond_4

    .line 285
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v5

    const/16 v6, 0x2d

    if-ne v5, v6, :cond_2

    .line 287
    add-int/lit8 v0, v0, 0x1

    .line 288
    if-eqz v2, :cond_3

    const/16 v5, 0x8

    if-eq v1, v5, :cond_1

    const/16 v5, 0xd

    if-eq v1, v5, :cond_1

    const/16 v5, 0x12

    if-eq v1, v5, :cond_1

    const/16 v5, 0x17

    if-ne v1, v5, :cond_3

    :cond_1
    move v2, v3

    .line 283
    :cond_2
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_3
    move v2, v4

    .line 288
    goto :goto_2

    .line 293
    :cond_4
    if-eqz v2, :cond_5

    const/4 v5, 0x4

    if-ne v5, v0, :cond_5

    const/16 v5, 0x24

    if-ne v5, v1, :cond_5

    :goto_3
    move v4, v3

    goto :goto_0

    :cond_5
    move v3, v4

    goto :goto_3
.end method

.method public static escapeXML(Ljava/lang/String;ZZ)Ljava/lang/String;
    .locals 8
    .parameter "value"
    .parameter "forAttribute"
    .parameter "escapeWhitespaces"

    .prologue
    const/16 v7, 0xd

    const/16 v6, 0xa

    const/16 v5, 0x9

    .line 373
    const/4 v3, 0x0

    .line 374
    .local v3, needsEscaping:Z
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    if-ge v2, v4, :cond_2

    .line 376
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 377
    .local v1, c:C
    const/16 v4, 0x3c

    if-eq v1, v4, :cond_1

    const/16 v4, 0x3e

    if-eq v1, v4, :cond_1

    const/16 v4, 0x26

    if-eq v1, v4, :cond_1

    if-eqz p2, :cond_0

    if-eq v1, v5, :cond_1

    if-eq v1, v6, :cond_1

    if-eq v1, v7, :cond_1

    :cond_0
    if-eqz p1, :cond_3

    const/16 v4, 0x22

    if-ne v1, v4, :cond_3

    .line 382
    :cond_1
    const/4 v3, 0x1

    .line 387
    .end local v1           #c:C
    :cond_2
    if-nez v3, :cond_4

    .line 421
    .end local p0
    :goto_1
    return-object p0

    .line 374
    .restart local v1       #c:C
    .restart local p0
    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 395
    .end local v1           #c:C
    :cond_4
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    mul-int/lit8 v4, v4, 0x4

    div-int/lit8 v4, v4, 0x3

    invoke-direct {v0, v4}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 396
    .local v0, buffer:Ljava/lang/StringBuffer;
    const/4 v2, 0x0

    :goto_2
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    if-ge v2, v4, :cond_8

    .line 398
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 399
    .restart local v1       #c:C
    if-eqz p2, :cond_5

    if-eq v1, v5, :cond_7

    if-eq v1, v6, :cond_7

    if-eq v1, v7, :cond_7

    .line 401
    :cond_5
    sparse-switch v1, :sswitch_data_0

    .line 409
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 396
    :goto_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 405
    :sswitch_0
    const-string v4, "&lt;"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_3

    .line 406
    :sswitch_1
    const-string v4, "&gt;"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_3

    .line 407
    :sswitch_2
    const-string v4, "&amp;"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_3

    .line 408
    :sswitch_3
    if-eqz p1, :cond_6

    const-string v4, "&quot;"

    :goto_4
    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_3

    :cond_6
    const-string v4, "\""

    goto :goto_4

    .line 416
    :cond_7
    const-string v4, "&#x"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 417
    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 418
    const/16 v4, 0x3b

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_3

    .line 421
    .end local v1           #c:C
    :cond_8
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_1

    .line 401
    :sswitch_data_0
    .sparse-switch
        0x22 -> :sswitch_3
        0x26 -> :sswitch_2
        0x3c -> :sswitch_0
        0x3e -> :sswitch_1
    .end sparse-switch
.end method

.method private static initCharTables()V
    .locals 8

    .prologue
    const/16 v7, 0x5a

    const/16 v6, 0x41

    const/16 v5, 0x3a

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 485
    const/16 v1, 0x100

    new-array v1, v1, [Z

    sput-object v1, Lcom/adobe/xmp/impl/Utils;->xmlNameChars:[Z

    .line 486
    const/16 v1, 0x100

    new-array v1, v1, [Z

    sput-object v1, Lcom/adobe/xmp/impl/Utils;->xmlNameStartChars:[Z

    .line 488
    const/4 v0, 0x0

    .local v0, ch:C
    :goto_0
    sget-object v1, Lcom/adobe/xmp/impl/Utils;->xmlNameChars:[Z

    array-length v1, v1

    if-ge v0, v1, :cond_b

    .line 490
    sget-object v4, Lcom/adobe/xmp/impl/Utils;->xmlNameStartChars:[Z

    const/16 v1, 0x61

    if-gt v1, v0, :cond_0

    const/16 v1, 0x7a

    if-le v0, v1, :cond_3

    :cond_0
    if-gt v6, v0, :cond_1

    if-le v0, v7, :cond_3

    :cond_1
    if-eq v0, v5, :cond_3

    const/16 v1, 0x5f

    if-eq v0, v1, :cond_3

    const/16 v1, 0xc0

    if-gt v1, v0, :cond_2

    const/16 v1, 0xd6

    if-le v0, v1, :cond_3

    :cond_2
    const/16 v1, 0xd8

    if-gt v1, v0, :cond_9

    const/16 v1, 0xf6

    if-gt v0, v1, :cond_9

    :cond_3
    move v1, v2

    :goto_1
    aput-boolean v1, v4, v0

    .line 498
    sget-object v4, Lcom/adobe/xmp/impl/Utils;->xmlNameChars:[Z

    const/16 v1, 0x61

    if-gt v1, v0, :cond_4

    const/16 v1, 0x7a

    if-le v0, v1, :cond_8

    :cond_4
    if-gt v6, v0, :cond_5

    if-le v0, v7, :cond_8

    :cond_5
    const/16 v1, 0x30

    if-gt v1, v0, :cond_6

    const/16 v1, 0x39

    if-le v0, v1, :cond_8

    :cond_6
    if-eq v0, v5, :cond_8

    const/16 v1, 0x5f

    if-eq v0, v1, :cond_8

    const/16 v1, 0x2d

    if-eq v0, v1, :cond_8

    const/16 v1, 0x2e

    if-eq v0, v1, :cond_8

    const/16 v1, 0xb7

    if-eq v0, v1, :cond_8

    const/16 v1, 0xc0

    if-gt v1, v0, :cond_7

    const/16 v1, 0xd6

    if-le v0, v1, :cond_8

    :cond_7
    const/16 v1, 0xd8

    if-gt v1, v0, :cond_a

    const/16 v1, 0xf6

    if-gt v0, v1, :cond_a

    :cond_8
    move v1, v2

    :goto_2
    aput-boolean v1, v4, v0

    .line 488
    add-int/lit8 v1, v0, 0x1

    int-to-char v0, v1

    goto :goto_0

    :cond_9
    move v1, v3

    .line 490
    goto :goto_1

    :cond_a
    move v1, v3

    .line 498
    goto :goto_2

    .line 510
    :cond_b
    return-void
.end method

.method static isControlChar(C)Z
    .locals 1
    .parameter "c"

    .prologue
    .line 353
    const/16 v0, 0x1f

    if-le p0, v0, :cond_0

    const/16 v0, 0x7f

    if-ne p0, v0, :cond_1

    :cond_0
    const/16 v0, 0x9

    if-eq p0, v0, :cond_1

    const/16 v0, 0xa

    if-eq p0, v0, :cond_1

    const/16 v0, 0xd

    if-eq p0, v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static isInternalProperty(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 2
    .parameter "schema"
    .parameter "prop"

    .prologue
    .line 163
    const/4 v0, 0x0

    .line 165
    .local v0, isInternal:Z
    const-string v1, "http://purl.org/dc/elements/1.1/"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 167
    const-string v1, "dc:format"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "dc:language"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 169
    :cond_0
    const/4 v0, 0x1

    .line 255
    :cond_1
    :goto_0
    return v0

    .line 172
    :cond_2
    const-string v1, "http://ns.adobe.com/xap/1.0/"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 174
    const-string v1, "xmp:BaseURL"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    const-string v1, "xmp:CreatorTool"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    const-string v1, "xmp:Format"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    const-string v1, "xmp:Locale"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    const-string v1, "xmp:MetadataDate"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    const-string v1, "xmp:ModifyDate"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 178
    :cond_3
    const/4 v0, 0x1

    goto :goto_0

    .line 181
    :cond_4
    const-string v1, "http://ns.adobe.com/pdf/1.3/"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 183
    const-string v1, "pdf:BaseURL"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    const-string v1, "pdf:Creator"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    const-string v1, "pdf:ModDate"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    const-string v1, "pdf:PDFVersion"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    const-string v1, "pdf:Producer"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 187
    :cond_5
    const/4 v0, 0x1

    goto :goto_0

    .line 190
    :cond_6
    const-string v1, "http://ns.adobe.com/tiff/1.0/"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 192
    const/4 v0, 0x1

    .line 193
    const-string v1, "tiff:ImageDescription"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7

    const-string v1, "tiff:Artist"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7

    const-string v1, "tiff:Copyright"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 196
    :cond_7
    const/4 v0, 0x0

    goto/16 :goto_0

    .line 199
    :cond_8
    const-string v1, "http://ns.adobe.com/exif/1.0/"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 201
    const/4 v0, 0x1

    .line 202
    const-string v1, "exif:UserComment"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 204
    const/4 v0, 0x0

    goto/16 :goto_0

    .line 207
    :cond_9
    const-string v1, "http://ns.adobe.com/exif/1.0/aux/"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 209
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 211
    :cond_a
    const-string v1, "http://ns.adobe.com/photoshop/1.0/"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b

    .line 213
    const-string v1, "photoshop:ICCProfile"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 215
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 218
    :cond_b
    const-string v1, "http://ns.adobe.com/camera-raw-settings/1.0/"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_d

    .line 220
    const-string v1, "crs:Version"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_c

    const-string v1, "crs:RawFileName"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_c

    const-string v1, "crs:ToneCurveName"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 223
    :cond_c
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 226
    :cond_d
    const-string v1, "http://ns.adobe.com/StockPhoto/1.0/"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_e

    .line 228
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 230
    :cond_e
    const-string v1, "http://ns.adobe.com/xap/1.0/mm/"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_f

    .line 232
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 234
    :cond_f
    const-string v1, "http://ns.adobe.com/xap/1.0/t/"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_10

    .line 236
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 238
    :cond_10
    const-string v1, "http://ns.adobe.com/xap/1.0/t/pg/"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_11

    .line 240
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 242
    :cond_11
    const-string v1, "http://ns.adobe.com/xap/1.0/g/"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_12

    .line 244
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 246
    :cond_12
    const-string v1, "http://ns.adobe.com/xap/1.0/g/img/"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_13

    .line 248
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 250
    :cond_13
    const-string v1, "http://ns.adobe.com/xap/1.0/sType/Font#"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 252
    const/4 v0, 0x1

    goto/16 :goto_0
.end method

.method private static isNameChar(C)Z
    .locals 1
    .parameter "ch"

    .prologue
    .line 476
    const/16 v0, 0xff

    if-gt p0, v0, :cond_0

    sget-object v0, Lcom/adobe/xmp/impl/Utils;->xmlNameChars:[Z

    aget-boolean v0, v0, p0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static isNameStartChar(C)Z
    .locals 1
    .parameter "ch"

    .prologue
    .line 459
    const/16 v0, 0xff

    if-gt p0, v0, :cond_0

    sget-object v0, Lcom/adobe/xmp/impl/Utils;->xmlNameStartChars:[Z

    aget-boolean v0, v0, p0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isXMLName(Ljava/lang/String;)Z
    .locals 3
    .parameter "name"

    .prologue
    const/4 v1, 0x0

    .line 308
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_1

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-static {v2}, Lcom/adobe/xmp/impl/Utils;->isNameStartChar(C)Z

    move-result v2

    if-nez v2, :cond_1

    .line 319
    :cond_0
    :goto_0
    return v1

    .line 312
    :cond_1
    const/4 v0, 0x1

    .local v0, i:I
    :goto_1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v0, v2, :cond_2

    .line 314
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-static {v2}, Lcom/adobe/xmp/impl/Utils;->isNameChar(C)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 312
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 319
    :cond_2
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public static isXMLNameNS(Ljava/lang/String;)Z
    .locals 4
    .parameter "name"

    .prologue
    const/16 v3, 0x3a

    const/4 v1, 0x0

    .line 332
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_1

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-static {v2}, Lcom/adobe/xmp/impl/Utils;->isNameStartChar(C)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    if-ne v2, v3, :cond_1

    .line 343
    :cond_0
    :goto_0
    return v1

    .line 336
    :cond_1
    const/4 v0, 0x1

    .local v0, i:I
    :goto_1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v0, v2, :cond_2

    .line 338
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-static {v2}, Lcom/adobe/xmp/impl/Utils;->isNameChar(C)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    if-eq v2, v3, :cond_0

    .line 336
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 343
    :cond_2
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public static normalizeLangValue(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .parameter "value"

    .prologue
    .line 65
    const-string v3, "x-default"

    invoke-virtual {v3, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 99
    .end local p0
    :goto_0
    return-object p0

    .line 70
    .restart local p0
    :cond_0
    const/4 v2, 0x1

    .line 71
    .local v2, subTag:I
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 73
    .local v0, buffer:Ljava/lang/StringBuffer;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v1, v3, :cond_2

    .line 75
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v3

    sparse-switch v3, :sswitch_data_0

    .line 88
    const/4 v3, 0x2

    if-eq v2, v3, :cond_1

    .line 90
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-static {v3}, Ljava/lang/Character;->toLowerCase(C)C

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 73
    :goto_2
    :sswitch_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 80
    :sswitch_1
    const/16 v3, 0x2d

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 81
    add-int/lit8 v2, v2, 0x1

    .line 82
    goto :goto_2

    .line 94
    :cond_1
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-static {v3}, Ljava/lang/Character;->toUpperCase(C)C

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_2

    .line 99
    :cond_2
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    .line 75
    nop

    :sswitch_data_0
    .sparse-switch
        0x20 -> :sswitch_0
        0x2d -> :sswitch_1
        0x5f -> :sswitch_1
    .end sparse-switch
.end method

.method static removeControlChars(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .parameter "value"

    .prologue
    .line 435
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0, p0}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 436
    .local v0, buffer:Ljava/lang/StringBuffer;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->length()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 438
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->charAt(I)C

    move-result v2

    invoke-static {v2}, Lcom/adobe/xmp/impl/Utils;->isControlChar(C)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 440
    const/16 v2, 0x20

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuffer;->setCharAt(IC)V

    .line 436
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 443
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method static splitNameAndValue(Ljava/lang/String;)[Ljava/lang/String;
    .locals 9
    .parameter "selector"

    .prologue
    .line 124
    const/16 v6, 0x3d

    invoke-virtual {p0, v6}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    .line 125
    .local v1, eq:I
    const/4 v3, 0x1

    .line 126
    .local v3, pos:I
    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v6

    const/16 v7, 0x3f

    if-ne v6, v7, :cond_0

    .line 128
    add-int/lit8 v3, v3, 0x1

    .line 130
    :cond_0
    invoke-virtual {p0, v3, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 133
    .local v2, name:Ljava/lang/String;
    add-int/lit8 v3, v1, 0x1

    .line 134
    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v4

    .line 135
    .local v4, quote:C
    add-int/lit8 v3, v3, 0x1

    .line 136
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v6

    add-int/lit8 v0, v6, -0x2

    .line 137
    .local v0, end:I
    new-instance v5, Ljava/lang/StringBuffer;

    sub-int v6, v0, v1

    invoke-direct {v5, v6}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 138
    .local v5, value:Ljava/lang/StringBuffer;
    :cond_1
    :goto_0
    if-ge v3, v0, :cond_2

    .line 140
    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 141
    add-int/lit8 v3, v3, 0x1

    .line 142
    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v6

    if-ne v6, v4, :cond_1

    .line 145
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 148
    :cond_2
    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/String;

    const/4 v7, 0x0

    aput-object v2, v6, v7

    const/4 v7, 0x1

    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    return-object v6
.end method
