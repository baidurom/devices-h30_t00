.class final Lcom/hianalytics/android/v1/d;
.super Ljava/lang/Thread;


# instance fields
.field private a:Landroid/content/Context;

.field private b:I

.field private c:J


# direct methods
.method constructor <init>(Landroid/content/Context;IJ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    iput-object p1, p0, Lcom/hianalytics/android/v1/d;->a:Landroid/content/Context;

    iput p2, p0, Lcom/hianalytics/android/v1/d;->b:I

    iput-wide p3, p0, Lcom/hianalytics/android/v1/d;->c:J

    return-void
.end method

.method private a([B)Ljava/lang/String;
    .locals 8

    const/4 v6, 0x1

    const/16 v5, 0xd

    const/4 v1, 0x0

    new-instance v2, Ljava/util/Random;

    invoke-direct {v2}, Ljava/util/Random;-><init>()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v3, v5, :cond_2

    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4, v0}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    move v0, v1

    :goto_0
    rsub-int/lit8 v5, v3, 0xd

    if-lt v0, v5, :cond_1

    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_0
    :goto_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v0, "%03d"

    new-array v4, v6, [Ljava/lang/Object;

    const/16 v5, 0x3e7

    invoke-virtual {v2, v5}, Ljava/util/Random;->nextInt(I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v4, v1

    invoke-static {v0, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :try_start_0
    invoke-static {v0, p1}, Lcom/hianalytics/android/b/a/b;->a(Ljava/lang/String;[B)[B

    move-result-object v1

    const-string v2, "UTF-8"

    invoke-virtual {v0, v2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v2

    const-string v0, "MIGfMA0GCSqGSIb3DQEBAQUAA4GNADCBiQKBgQDf5raDExuuXbsVNCWl48yuB89W\rfNOuuhPuS2Mptii/0UorpzypBkNTTGt11E7aorCc1lFwlB+4KDMIpFyQsdChSk+A\rt9UfhFKa95uiDpMe5rMfU+DAhoXGER6WQ2qGtrHmBWVv33i3lc76u9IgEfYuLwC6\r1mhQDHzAKPiViY6oeQIDAQAB\r"

    new-instance v3, Lcom/hianalytics/android/b/a/a/a;

    invoke-direct {v3}, Lcom/hianalytics/android/b/a/a/a;-><init>()V

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    new-array v4, v4, [B

    const/4 v5, 0x0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v6

    const/4 v7, 0x0

    invoke-virtual {v0, v5, v6, v4, v7}, Ljava/lang/String;->getBytes(II[BI)V

    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-direct {v0, v4}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    new-instance v4, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v4}, Ljava/io/ByteArrayOutputStream;-><init>()V

    invoke-virtual {v3, v0, v4}, Lcom/hianalytics/android/b/a/a/d;->a(Ljava/io/InputStream;Ljava/io/OutputStream;)V

    invoke-virtual {v4}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    const-string v3, "RSA"

    invoke-static {v3}, Ljava/security/KeyFactory;->getInstance(Ljava/lang/String;)Ljava/security/KeyFactory;

    move-result-object v3

    new-instance v4, Ljava/security/spec/X509EncodedKeySpec;

    invoke-direct {v4, v0}, Ljava/security/spec/X509EncodedKeySpec;-><init>([B)V

    invoke-virtual {v3, v4}, Ljava/security/KeyFactory;->generatePublic(Ljava/security/spec/KeySpec;)Ljava/security/PublicKey;

    move-result-object v0

    check-cast v0, Ljava/security/interfaces/RSAPublicKey;

    const-string v3, "RSA/ECB/PKCS1Padding"

    invoke-static {v3}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v3

    const/4 v4, 0x1

    invoke-virtual {v3, v4, v0}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V

    invoke-virtual {v3, v2}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object v0

    iget-object v2, p0, Lcom/hianalytics/android/v1/d;->a:Landroid/content/Context;

    invoke-static {v2}, Lcom/hianalytics/android/b/a/a;->e(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "{\"vs\":\""

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\",\"ed\":\""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v1}, Lcom/hianalytics/android/b/a/a;->b([B)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\",\"ek\":\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {v0}, Lcom/hianalytics/android/b/a/a;->b([B)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\"}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_2
    return-object v0

    :cond_1
    const-string v5, "0"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_0

    :cond_2
    if-le v3, v5, :cond_0

    invoke-virtual {v0, v1, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_1

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    const/4 v0, 0x0

    goto :goto_2
.end method

.method private a(Landroid/content/Context;Lorg/json/JSONObject;Z)V
    .locals 15

    invoke-static/range {p1 .. p1}, Lcom/hianalytics/android/a/a/a;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_1

    invoke-static {}, Lcom/hianalytics/android/b/a/a;->e()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string v1, "cached"

    move-object/from16 v0, p1

    invoke-static {v0, v1}, Lcom/hianalytics/android/b/a/c;->b(Landroid/content/Context;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    new-instance v5, Lorg/json/JSONObject;

    invoke-direct {v5}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string v1, "type"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_0

    const-string v1, "type"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->remove(Ljava/lang/String;)Ljava/lang/Object;

    const/4 v1, 0x1

    if-eqz v3, :cond_3

    invoke-virtual {v3, v6}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    new-instance v2, Lorg/json/JSONArray;

    invoke-direct {v2}, Lorg/json/JSONArray;-><init>()V

    :goto_1
    if-eqz p3, :cond_4

    if-eqz v1, :cond_4

    invoke-static {}, Lcom/hianalytics/android/b/a/a;->e()V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    const-string v1, "cached"

    move-object/from16 v0, p1

    invoke-static {v0, v1}, Lcom/hianalytics/android/b/a/c;->c(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    :try_start_1
    invoke-virtual {v3, v6}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    goto :goto_1

    :cond_3
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    new-instance v2, Lorg/json/JSONArray;

    invoke-direct {v2}, Lorg/json/JSONArray;-><init>()V

    goto :goto_1

    :cond_4
    if-nez p3, :cond_5

    move-object/from16 v0, p2

    invoke-virtual {v2, v0}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    :cond_5
    new-instance v7, Lorg/json/JSONArray;

    invoke-direct {v7}, Lorg/json/JSONArray;-><init>()V

    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v8

    const/4 v1, 0x0

    :goto_2
    add-int/lit8 v9, v8, -0x1

    if-le v1, v9, :cond_6

    invoke-virtual {v7}, Lorg/json/JSONArray;->length()I

    move-result v1

    if-gtz v1, :cond_b

    invoke-static {}, Lcom/hianalytics/android/b/a/a;->e()V

    goto :goto_0

    :cond_6
    invoke-virtual {v2, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v9

    const-string v10, "b"

    invoke-virtual {v9, v10}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_9

    const-string v10, "b"

    invoke-virtual {v9, v10}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v10

    if-eqz v10, :cond_7

    invoke-virtual {v10}, Lorg/json/JSONArray;->length()I

    move-result v11

    if-lez v11, :cond_7

    invoke-virtual {v10}, Lorg/json/JSONArray;->length()I

    move-result v11

    add-int/lit8 v11, v11, -0x1

    invoke-virtual {v10, v11}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v10

    const-string v11, ","

    invoke-virtual {v10, v11}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v10

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v11

    const-wide/16 v13, 0x3e8

    div-long/2addr v11, v13

    const/4 v13, 0x1

    aget-object v13, v10, v13

    invoke-static {v13}, Lcom/hianalytics/android/b/a/a;->a(Ljava/lang/String;)J

    move-result-wide v13

    sub-long/2addr v11, v13

    const/4 v13, 0x2

    aget-object v10, v10, v13

    invoke-static {v10}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v13

    sub-long v10, v11, v13

    invoke-static {}, Lcom/hianalytics/android/b/a/a;->b()Ljava/lang/Long;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/Long;->longValue()J

    move-result-wide v12

    cmp-long v10, v10, v12

    if-gez v10, :cond_8

    invoke-virtual {v7, v9}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    :cond_7
    :goto_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_8
    invoke-static {}, Lcom/hianalytics/android/b/a/a;->e()V

    goto :goto_3

    :cond_9
    const-string v10, "e"

    invoke-virtual {v9, v10}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_7

    const-string v10, "e"

    invoke-virtual {v9, v10}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v10

    if-eqz v10, :cond_7

    invoke-virtual {v10}, Lorg/json/JSONArray;->length()I

    move-result v11

    if-lez v11, :cond_7

    invoke-virtual {v10}, Lorg/json/JSONArray;->length()I

    move-result v11

    add-int/lit8 v11, v11, -0x1

    invoke-virtual {v10, v11}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v10

    const-string v11, ","

    invoke-virtual {v10, v11}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v10

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v11

    const-wide/16 v13, 0x3e8

    div-long/2addr v11, v13

    const/4 v13, 0x2

    aget-object v10, v10, v13

    invoke-static {v10}, Lcom/hianalytics/android/b/a/a;->a(Ljava/lang/String;)J

    move-result-wide v13

    sub-long v10, v11, v13

    invoke-static {}, Lcom/hianalytics/android/b/a/a;->b()Ljava/lang/Long;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/Long;->longValue()J

    move-result-wide v12

    cmp-long v10, v10, v12

    if-gez v10, :cond_a

    invoke-virtual {v7, v9}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_3

    :cond_a
    invoke-static {}, Lcom/hianalytics/android/b/a/a;->e()V

    goto :goto_3

    :cond_b
    invoke-virtual {v3, v6}, Lorg/json/JSONObject;->remove(Ljava/lang/String;)Ljava/lang/Object;

    invoke-virtual {v3, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "g"

    invoke-virtual {v5, v1, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "s"

    invoke-virtual {v5, v1, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "message="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    invoke-static {}, Lcom/hianalytics/android/b/a/a;->e()V

    invoke-static/range {p1 .. p1}, Lcom/hianalytics/android/b/a/a;->f(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v5, v1}, Lcom/hianalytics/android/v1/d;->a(Lorg/json/JSONObject;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_d

    const-string v1, "flag"

    move-object/from16 v0, p1

    invoke-static {v0, v1}, Lcom/hianalytics/android/b/a/c;->a(Landroid/content/Context;Ljava/lang/String;)Landroid/content/SharedPreferences;

    move-result-object v1

    const-string v2, "first_time"

    const/4 v3, 0x1

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_c

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "first_time"

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    :cond_c
    const-string v1, "cached"

    move-object/from16 v0, p1

    invoke-static {v0, v1}, Lcom/hianalytics/android/b/a/c;->c(Landroid/content/Context;Ljava/lang/String;)V

    invoke-static {}, Lcom/hianalytics/android/b/a/a;->e()V

    goto/16 :goto_0

    :cond_d
    const-string v1, "cached"

    move-object/from16 v0, p1

    invoke-static {v0, v3, v1}, Lcom/hianalytics/android/b/a/c;->a(Landroid/content/Context;Lorg/json/JSONObject;Ljava/lang/String;)V

    invoke-static {}, Lcom/hianalytics/android/b/a/a;->e()V

    goto/16 :goto_0
.end method

.method private a(Landroid/content/SharedPreferences;)V
    .locals 4

    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "last_millis"

    iget-wide v2, p0, Lcom/hianalytics/android/v1/d;->c:J

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method private a(Lorg/json/JSONObject;Ljava/lang/String;)Z
    .locals 4

    const/4 v0, 0x0

    invoke-virtual {p2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    :try_start_0
    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "UTF-8"

    invoke-virtual {v2, v3}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v2

    invoke-static {v2}, Lcom/hianalytics/android/b/a/a;->a([B)[B
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    if-nez v2, :cond_1

    :cond_0
    :goto_0
    return v0

    :catch_0
    move-exception v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "UnsupportedEncodingException:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/UnsupportedEncodingException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    invoke-static {}, Lcom/hianalytics/android/b/a/a;->e()V

    goto :goto_0

    :cond_1
    invoke-direct {p0, v2}, Lcom/hianalytics/android/v1/d;->a([B)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    :try_start_1
    const-string v3, "UTF-8"

    invoke-virtual {v2, v3}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B
    :try_end_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v0

    const-string v2, "https"

    invoke-virtual {v1, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    if-ltz v1, :cond_2

    invoke-static {}, Lcom/hianalytics/android/b/a/a;->e()V

    invoke-static {p2, v0}, Lcom/hianalytics/android/v1/b;->a(Ljava/lang/String;[B)Z

    move-result v0

    invoke-static {}, Lcom/hianalytics/android/v1/b;->a()V

    goto :goto_0

    :catch_1
    move-exception v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "UnsupportedEncodingException:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/UnsupportedEncodingException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    invoke-static {}, Lcom/hianalytics/android/b/a/a;->e()V

    goto :goto_0

    :cond_2
    invoke-static {}, Lcom/hianalytics/android/b/a/a;->e()V

    invoke-static {p2, v0}, Lcom/hianalytics/android/v1/b;->b(Ljava/lang/String;[B)Z

    move-result v0

    goto :goto_0
.end method

.method private b(Landroid/content/SharedPreferences;)V
    .locals 11

    const/4 v2, 0x0

    const/4 v3, 0x1

    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4}, Lorg/json/JSONObject;-><init>()V

    iget-object v5, p0, Lcom/hianalytics/android/v1/d;->a:Landroid/content/Context;

    new-instance v6, Ljava/lang/StringBuffer;

    const-string v0, ""

    invoke-direct {v6, v0}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    const-string v0, "sessioncontext"

    invoke-static {v5, v0}, Lcom/hianalytics/android/b/a/c;->a(Landroid/content/Context;Ljava/lang/String;)Landroid/content/SharedPreferences;

    move-result-object v7

    const-string v0, "session_id"

    const-string v1, ""

    invoke-interface {v7, v0, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v0, "phone"

    invoke-virtual {v5, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getDeviceId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/hianalytics/android/b/a/a;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v8, v9}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v10

    invoke-direct {v1, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v7}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v10, "session_id"

    invoke-interface {v1, v10, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    const-string v10, "end_millis"

    invoke-interface {v1, v10, v8, v9}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    :cond_0
    move-object v1, v0

    const-string v0, "refer_id"

    const-string v8, ""

    invoke-interface {v7, v0, v8}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string v0, "phone"

    invoke-virtual {v5, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    if-nez v0, :cond_3

    invoke-static {}, Lcom/hianalytics/android/b/a/a;->e()V

    const/4 v0, 0x0

    move-object v1, v0

    :goto_0
    if-eqz v1, :cond_2

    :try_start_0
    const-string v0, "activities"

    const-string v5, ""

    invoke-interface {p1, v0, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_6

    const-string v0, "activities"

    const-string v3, ""

    invoke-interface {p1, v0, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v3, ";"

    invoke-virtual {v0, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    new-instance v5, Lorg/json/JSONArray;

    invoke-direct {v5}, Lorg/json/JSONArray;-><init>()V

    move v0, v2

    :goto_1
    array-length v6, v3

    if-lt v0, v6, :cond_4

    const-string v0, "b"

    invoke-virtual {v4, v0, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move v0, v2

    :goto_2
    const-string v3, "events"

    const-string v5, ""

    invoke-interface {p1, v3, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_1

    const-string v0, "events"

    const-string v3, ""

    invoke-interface {p1, v0, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v3, ";"

    invoke-virtual {v0, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    new-instance v5, Lorg/json/JSONArray;

    invoke-direct {v5}, Lorg/json/JSONArray;-><init>()V

    move v0, v2

    :goto_3
    array-length v6, v3

    if-lt v0, v6, :cond_5

    const-string v0, "e"

    invoke-virtual {v4, v0, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move v0, v2

    :cond_1
    const-string v2, "h"

    invoke-virtual {v4, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "type"

    const-string v2, "termination"

    invoke-virtual {v4, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    iget-object v1, p0, Lcom/hianalytics/android/v1/d;->a:Landroid/content/Context;

    invoke-direct {p0, v1, v4, v0}, Lcom/hianalytics/android/v1/d;->a(Landroid/content/Context;Lorg/json/JSONObject;Z)V

    :cond_2
    :goto_4
    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "activities"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    const-string v1, "events"

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void

    :cond_3
    invoke-static {v5}, Lcom/hianalytics/android/b/a/a;->c(Landroid/content/Context;)[Ljava/lang/String;

    move-result-object v5

    aget-object v5, v5, v2

    invoke-virtual {v6, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    const-string v8, ","

    invoke-virtual {v5, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getNetworkOperatorName()Ljava/lang/String;

    move-result-object v0

    const/16 v8, 0x2c

    const/16 v9, 0x26

    invoke-virtual {v0, v8, v9}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v5, ","

    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v6}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    move-object v1, v0

    goto/16 :goto_0

    :cond_4
    :try_start_1
    aget-object v6, v3, v0

    invoke-virtual {v5, v6}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_1

    :cond_5
    aget-object v6, v3, v0

    invoke-virtual {v5, v6}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    :catch_0
    move-exception v0

    const-string v1, "HiAnalytics"

    const-string v2, "onTerminate: JSONException."

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_4

    :cond_6
    move v0, v3

    goto/16 :goto_2
.end method

.method private c(Landroid/content/SharedPreferences;)Z
    .locals 6

    const-string v0, "last_millis"

    const-wide/16 v1, -0x1

    invoke-interface {p1, v0, v1, v2}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    iget-wide v2, p0, Lcom/hianalytics/android/v1/d;->c:J

    sub-long v0, v2, v0

    invoke-static {}, Lcom/hianalytics/android/b/a/a;->a()Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    const-wide/16 v4, 0x3e8

    mul-long/2addr v2, v4

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public final run()V
    .locals 14

    const-wide/16 v6, -0x1

    sget-object v1, Lcom/hianalytics/android/b/a/a;->a:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget v0, p0, Lcom/hianalytics/android/v1/d;->b:I

    if-nez v0, :cond_5

    iget-object v2, p0, Lcom/hianalytics/android/v1/d;->a:Landroid/content/Context;

    iget-object v0, p0, Lcom/hianalytics/android/v1/d;->a:Landroid/content/Context;

    if-eq v0, v2, :cond_1

    invoke-static {}, Lcom/hianalytics/android/b/a/a;->e()V

    :cond_0
    :goto_0
    monitor-exit v1

    return-void

    :cond_1
    iput-object v2, p0, Lcom/hianalytics/android/v1/d;->a:Landroid/content/Context;

    const-string v0, "state"

    invoke-static {v2, v0}, Lcom/hianalytics/android/b/a/c;->a(Landroid/content/Context;Ljava/lang/String;)Landroid/content/SharedPreferences;

    move-result-object v3

    if-eqz v3, :cond_0

    const-string v0, "last_millis"

    const-wide/16 v4, -0x1

    invoke-interface {v3, v0, v4, v5}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v4

    cmp-long v0, v4, v6

    if-nez v0, :cond_2

    invoke-static {}, Lcom/hianalytics/android/b/a/a;->e()V

    :goto_1
    invoke-direct {p0, v3}, Lcom/hianalytics/android/v1/d;->c(Landroid/content/SharedPreferences;)Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-direct {p0, v3}, Lcom/hianalytics/android/v1/d;->b(Landroid/content/SharedPreferences;)V

    invoke-direct {p0, v3}, Lcom/hianalytics/android/v1/d;->a(Landroid/content/SharedPreferences;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    :cond_2
    :try_start_1
    iget-wide v6, p0, Lcom/hianalytics/android/v1/d;->c:J

    sub-long/2addr v6, v4

    const-string v0, "duration"

    const-wide/16 v8, 0x0

    invoke-interface {v3, v0, v8, v9}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v8

    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v10

    const-string v0, "activities"

    const-string v11, ""

    invoke-interface {v3, v0, v11}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v11

    const-string v12, ""

    invoke-virtual {v12, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_3

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v12, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v0, ";"

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_3
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v12, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v12, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v11, ","

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    new-instance v11, Ljava/text/SimpleDateFormat;

    const-string v12, "yyyyMMddHHmmssSSS"

    sget-object v13, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {v11, v12, v13}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    new-instance v12, Ljava/util/Date;

    invoke-direct {v12, v4, v5}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v11, v12}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, ","

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-wide/16 v4, 0x3e8

    div-long v4, v6, v4

    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v4, "activities"

    invoke-interface {v10, v4}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    const-string v4, "activities"

    invoke-interface {v10, v4, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    const-string v0, "duration"

    add-long v4, v8, v6

    invoke-interface {v10, v0, v4, v5}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v10}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto/16 :goto_1

    :cond_4
    invoke-static {v2}, Lcom/hianalytics/android/b/a/a;->d(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0, v3}, Lcom/hianalytics/android/v1/d;->b(Landroid/content/SharedPreferences;)V

    invoke-direct {p0, v3}, Lcom/hianalytics/android/v1/d;->a(Landroid/content/SharedPreferences;)V

    goto/16 :goto_0

    :cond_5
    iget v0, p0, Lcom/hianalytics/android/v1/d;->b:I

    const/4 v2, 0x1

    if-ne v0, v2, :cond_6

    iget-object v0, p0, Lcom/hianalytics/android/v1/d;->a:Landroid/content/Context;

    iput-object v0, p0, Lcom/hianalytics/android/v1/d;->a:Landroid/content/Context;

    const-string v2, "state"

    invoke-static {v0, v2}, Lcom/hianalytics/android/b/a/c;->a(Landroid/content/Context;Ljava/lang/String;)Landroid/content/SharedPreferences;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-direct {p0, v0}, Lcom/hianalytics/android/v1/d;->c(Landroid/content/SharedPreferences;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-direct {p0, v0}, Lcom/hianalytics/android/v1/d;->b(Landroid/content/SharedPreferences;)V

    invoke-direct {p0, v0}, Lcom/hianalytics/android/v1/d;->a(Landroid/content/SharedPreferences;)V

    goto/16 :goto_0

    :cond_6
    iget v0, p0, Lcom/hianalytics/android/v1/d;->b:I

    const/4 v2, 0x2

    if-ne v0, v2, :cond_0

    iget-object v0, p0, Lcom/hianalytics/android/v1/d;->a:Landroid/content/Context;

    const-string v2, "state"

    invoke-static {v0, v2}, Lcom/hianalytics/android/b/a/c;->a(Landroid/content/Context;Ljava/lang/String;)Landroid/content/SharedPreferences;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-direct {p0, v0}, Lcom/hianalytics/android/v1/d;->b(Landroid/content/SharedPreferences;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_0
.end method
