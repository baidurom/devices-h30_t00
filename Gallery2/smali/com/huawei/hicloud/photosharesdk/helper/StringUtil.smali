.class public Lcom/huawei/hicloud/photosharesdk/helper/StringUtil;
.super Ljava/lang/Object;
.source "StringUtil.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static MD5(Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .parameter "myinfo"

    .prologue
    const/4 v2, 0x0

    .line 41
    check-cast v2, [B

    .line 43
    .local v2, digesta:[B
    :try_start_0
    const-string v5, "MD5"

    invoke-static {v5}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0

    .line 44
    .local v0, alga:Ljava/security/MessageDigest;
    const/4 v1, 0x0

    check-cast v1, [B
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_1

    .line 47
    .local v1, by:[B
    :try_start_1
    const-string v5, "UTF-8"

    invoke-virtual {p0, v5}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B
    :try_end_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v1

    .line 53
    :goto_0
    :try_start_2
    invoke-virtual {v0, v1}, Ljava/security/MessageDigest;->update([B)V

    .line 54
    invoke-virtual {v0}, Ljava/security/MessageDigest;->digest()[B
    :try_end_2
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_2 .. :try_end_2} :catch_1

    move-result-object v2

    .line 59
    .end local v0           #alga:Ljava/security/MessageDigest;
    .end local v1           #by:[B
    :goto_1
    invoke-static {v2}, Lcom/huawei/hicloud/photosharesdk/helper/StringUtil;->byte2hex([B)Ljava/lang/String;

    move-result-object v5

    return-object v5

    .line 49
    .restart local v0       #alga:Ljava/security/MessageDigest;
    .restart local v1       #by:[B
    :catch_0
    move-exception v3

    .line 51
    .local v3, e:Ljava/io/UnsupportedEncodingException;
    :try_start_3
    invoke-static {}, Lcom/huawei/hicloud/photosharesdk3/logic/call/SDKObject;->getTagInfo()Ljava/lang/String;

    move-result-object v5

    const-string v6, ""

    invoke-static {v5, v6, v3}, Lcom/huawei/hicloud/photosharesdk3/logic/call/SDKObject;->log(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_3
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_0

    .line 56
    .end local v0           #alga:Ljava/security/MessageDigest;
    .end local v1           #by:[B
    .end local v3           #e:Ljava/io/UnsupportedEncodingException;
    :catch_1
    move-exception v4

    .line 57
    .local v4, ex:Ljava/security/NoSuchAlgorithmException;
    invoke-static {}, Lcom/huawei/hicloud/photosharesdk3/logic/call/SDKObject;->getTagInfo()Ljava/lang/String;

    move-result-object v5

    const-string v6, ""

    invoke-static {v5, v6, v4}, Lcom/huawei/hicloud/photosharesdk3/logic/call/SDKObject;->log(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_1
.end method

.method public static byte2hex([B)Ljava/lang/String;
    .locals 7
    .parameter "b"

    .prologue
    .line 63
    const-string v0, ""

    .line 64
    .local v0, stmp:Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 65
    .local v1, stringBuilder:Ljava/lang/StringBuilder;
    array-length v4, p0

    const/4 v3, 0x0

    :goto_0
    if-lt v3, v4, :cond_0

    .line 73
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3

    .line 65
    :cond_0
    aget-byte v2, p0, v3

    .line 66
    .local v2, x:I
    and-int/lit16 v5, v2, 0xff

    invoke-static {v5}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    .line 67
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v5

    const/4 v6, 0x1

    if-ne v5, v6, :cond_1

    .line 68
    const-string v5, "0"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 65
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 70
    :cond_1
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1
.end method

.method public static isBlankString(Ljava/lang/String;)Z
    .locals 1
    .parameter "str"

    .prologue
    .line 188
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 189
    :cond_0
    const/4 v0, 0x1

    .line 191
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static replace(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .parameter "oldStr"
    .parameter "newStr"
    .parameter "replacement"

    .prologue
    .line 20
    if-eqz p1, :cond_0

    if-eqz p0, :cond_0

    if-nez p2, :cond_1

    :cond_0
    move-object v2, p2

    .line 30
    .end local p2
    .local v2, replacement:Ljava/lang/String;
    :goto_0
    return-object v2

    .line 23
    .end local v2           #replacement:Ljava/lang/String;
    .restart local p2
    :cond_1
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v1

    .line 24
    .local v1, lenc:I
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    .line 25
    .local v0, lenb:I
    if-gt v0, v1, :cond_2

    .line 26
    const/4 v3, 0x0

    invoke-virtual {p2, v3, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 27
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    :cond_2
    move-object v2, p2

    .line 30
    .end local p2
    .restart local v2       #replacement:Ljava/lang/String;
    goto :goto_0
.end method
