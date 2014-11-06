.class public Lcom/huawei/device/chrlog/AESUtils;
.super Ljava/lang/Object;
.source "AESUtils.java"


# static fields
.field private static final AES:Ljava/lang/String; = "AES"

.field private static final DEFAULT_CIPHER_ALGORITHM:Ljava/lang/String; = "AES/CFB/NoPadding"

.field private static final IV:[B = null

.field private static final SEED:Ljava/lang/String; = "0123456789abcdef"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 18
    const/16 v0, 0x10

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/huawei/device/chrlog/AESUtils;->IV:[B

    return-void

    :array_0
    .array-data 0x1
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
        0x61t
        0x62t
        0x63t
        0x64t
        0x65t
        0x66t
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static decrypt([B)[B
    .locals 2
    .parameter "encrypted"

    .prologue
    .line 42
    const/4 v1, 0x2

    :try_start_0
    invoke-static {v1}, Lcom/huawei/device/chrlog/AESUtils;->getCipher(I)Ljavax/crypto/Cipher;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljavax/crypto/Cipher;->doFinal([B)[B
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 45
    :goto_0
    return-object v1

    .line 43
    :catch_0
    move-exception v0

    .line 44
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 45
    const/4 v1, 0x0

    new-array v1, v1, [B

    goto :goto_0
.end method

.method public static decryptFileName([B)Ljava/lang/String;
    .locals 4
    .parameter "strIn"

    .prologue
    .line 70
    :try_start_0
    new-instance v1, Ljava/lang/String;

    invoke-static {p0}, Lcom/huawei/device/chrlog/Base64Coder;->decode([B)[B

    move-result-object v2

    invoke-static {v2}, Lcom/huawei/device/chrlog/AESUtils;->decrypt([B)[B

    move-result-object v2

    const-string v3, "UTF-8"

    invoke-direct {v1, v2, v3}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 73
    :goto_0
    return-object v1

    .line 71
    :catch_0
    move-exception v0

    .line 72
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 73
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static encrypt([B)[B
    .locals 2
    .parameter "clear"

    .prologue
    .line 28
    const/4 v1, 0x1

    :try_start_0
    invoke-static {v1}, Lcom/huawei/device/chrlog/AESUtils;->getCipher(I)Ljavax/crypto/Cipher;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljavax/crypto/Cipher;->doFinal([B)[B
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 31
    :goto_0
    return-object v1

    .line 29
    :catch_0
    move-exception v0

    .line 30
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 31
    const/4 v1, 0x0

    new-array v1, v1, [B

    goto :goto_0
.end method

.method public static encryptFilename(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "strIn"

    .prologue
    .line 56
    :try_start_0
    const-string v1, "UTF-8"

    invoke-virtual {p0, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v1

    invoke-static {v1}, Lcom/huawei/device/chrlog/AESUtils;->encrypt([B)[B

    move-result-object v1

    invoke-static {v1}, Lcom/huawei/device/chrlog/Base64Coder;->encode([B)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 59
    :goto_0
    return-object v1

    .line 57
    :catch_0
    move-exception v0

    .line 58
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 59
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private static getCipher(I)Ljavax/crypto/Cipher;
    .locals 4
    .parameter "mode"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 89
    const-string v1, "AES/CFB/NoPadding"

    invoke-static {v1}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v0

    .line 90
    .local v0, cipher:Ljavax/crypto/Cipher;
    const-string v1, "0123456789abcdef"

    invoke-static {v1}, Lcom/huawei/device/chrlog/AESUtils;->getKey(Ljava/lang/String;)Ljavax/crypto/spec/SecretKeySpec;

    move-result-object v1

    new-instance v2, Ljavax/crypto/spec/IvParameterSpec;

    sget-object v3, Lcom/huawei/device/chrlog/AESUtils;->IV:[B

    invoke-direct {v2, v3}, Ljavax/crypto/spec/IvParameterSpec;-><init>([B)V

    invoke-virtual {v0, p0, v1, v2}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    .line 91
    return-object v0
.end method

.method private static getKey(Ljava/lang/String;)Ljavax/crypto/spec/SecretKeySpec;
    .locals 5
    .parameter "strKey"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 78
    const-string v3, "UTF-8"

    invoke-virtual {p0, v3}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v1

    .line 79
    .local v1, arrBTmp:[B
    const/16 v3, 0x10

    new-array v0, v3, [B

    .line 81
    .local v0, arrB:[B
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    array-length v3, v1

    if-ge v2, v3, :cond_0

    array-length v3, v0

    if-ge v2, v3, :cond_0

    .line 82
    aget-byte v3, v1, v2

    aput-byte v3, v0, v2

    .line 81
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 85
    :cond_0
    new-instance v3, Ljavax/crypto/spec/SecretKeySpec;

    const-string v4, "AES"

    invoke-direct {v3, v0, v4}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    return-object v3
.end method
