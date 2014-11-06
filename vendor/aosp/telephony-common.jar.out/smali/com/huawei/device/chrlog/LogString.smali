.class public Lcom/huawei/device/chrlog/LogString;
.super Ljava/lang/Object;
.source "LogString.java"


# static fields
.field static CHARSET:Ljava/lang/String;

.field static EMPTY_STRING:Ljava/lang/String;


# instance fields
.field private length:I

.field private value:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 9
    const-string v0, "UTF-8"

    sput-object v0, Lcom/huawei/device/chrlog/LogString;->CHARSET:Ljava/lang/String;

    .line 10
    const-string v0, ""

    sput-object v0, Lcom/huawei/device/chrlog/LogString;->EMPTY_STRING:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(I)V
    .locals 1
    .parameter "length"

    .prologue
    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    iput p1, p0, Lcom/huawei/device/chrlog/LogString;->length:I

    .line 50
    invoke-direct {p0, p1}, Lcom/huawei/device/chrlog/LogString;->getEmptyString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/huawei/device/chrlog/LogString;->value:Ljava/lang/String;

    .line 51
    return-void
.end method

.method private getEmptyString(I)Ljava/lang/String;
    .locals 3
    .parameter "length"

    .prologue
    .line 22
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 23
    .local v1, sb:Ljava/lang/StringBuilder;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, p1, :cond_0

    .line 24
    sget-object v2, Lcom/huawei/device/chrlog/LogString;->EMPTY_STRING:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 23
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 26
    :cond_0
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method


# virtual methods
.method public getLength()I
    .locals 1

    .prologue
    .line 30
    iget v0, p0, Lcom/huawei/device/chrlog/LogString;->length:I

    return v0
.end method

.method public getValue()Ljava/lang/String;
    .locals 1

    .prologue
    .line 34
    iget-object v0, p0, Lcom/huawei/device/chrlog/LogString;->value:Ljava/lang/String;

    return-object v0
.end method

.method public setValue(Ljava/lang/String;)V
    .locals 1
    .parameter "value"

    .prologue
    .line 38
    if-nez p1, :cond_0

    .line 39
    iget v0, p0, Lcom/huawei/device/chrlog/LogString;->length:I

    invoke-direct {p0, v0}, Lcom/huawei/device/chrlog/LogString;->getEmptyString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/huawei/device/chrlog/LogString;->value:Ljava/lang/String;

    .line 43
    :goto_0
    return-void

    .line 41
    :cond_0
    iput-object p1, p0, Lcom/huawei/device/chrlog/LogString;->value:Ljava/lang/String;

    goto :goto_0
.end method

.method public toByteArray()[B
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 64
    :try_start_0
    iget v4, p0, Lcom/huawei/device/chrlog/LogString;->length:I

    new-array v0, v4, [B

    .line 65
    .local v0, byteArray:[B
    invoke-static {v0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 66
    .local v1, bytebuf:Ljava/nio/ByteBuffer;
    iget-object v4, p0, Lcom/huawei/device/chrlog/LogString;->value:Ljava/lang/String;

    sget-object v5, Lcom/huawei/device/chrlog/LogString;->CHARSET:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v3

    .line 67
    .local v3, subValueBytes:[B
    array-length v4, v3

    iget v5, p0, Lcom/huawei/device/chrlog/LogString;->length:I

    if-le v4, v5, :cond_0

    .line 68
    const/4 v4, 0x0

    iget v5, p0, Lcom/huawei/device/chrlog/LogString;->length:I

    invoke-virtual {v1, v3, v4, v5}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    .line 72
    :goto_0
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v4

    .line 74
    .end local v0           #byteArray:[B
    .end local v1           #bytebuf:Ljava/nio/ByteBuffer;
    .end local v3           #subValueBytes:[B
    :goto_1
    return-object v4

    .line 70
    .restart local v0       #byteArray:[B
    .restart local v1       #bytebuf:Ljava/nio/ByteBuffer;
    .restart local v3       #subValueBytes:[B
    :cond_0
    invoke-virtual {v1, v3}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 73
    .end local v0           #byteArray:[B
    .end local v1           #bytebuf:Ljava/nio/ByteBuffer;
    .end local v3           #subValueBytes:[B
    :catch_0
    move-exception v2

    .line 74
    .local v2, e:Ljava/io/UnsupportedEncodingException;
    new-array v4, v6, [B

    goto :goto_1
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 55
    iget-object v0, p0, Lcom/huawei/device/chrlog/LogString;->value:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
