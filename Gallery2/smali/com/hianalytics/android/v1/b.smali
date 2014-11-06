.class public final Lcom/hianalytics/android/v1/b;
.super Ljava/lang/Object;


# static fields
.field private static final a:Lorg/apache/http/conn/ssl/AllowAllHostnameVerifier;

.field private static b:Ljavax/net/ssl/X509TrustManager;

.field private static c:[Ljavax/net/ssl/X509TrustManager;

.field private static d:Ljavax/net/ssl/HttpsURLConnection;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lorg/apache/http/conn/ssl/AllowAllHostnameVerifier;

    invoke-direct {v0}, Lorg/apache/http/conn/ssl/AllowAllHostnameVerifier;-><init>()V

    sput-object v0, Lcom/hianalytics/android/v1/b;->a:Lorg/apache/http/conn/ssl/AllowAllHostnameVerifier;

    new-instance v0, Lcom/hianalytics/android/v1/c;

    invoke-direct {v0}, Lcom/hianalytics/android/v1/c;-><init>()V

    sput-object v0, Lcom/hianalytics/android/v1/b;->b:Ljavax/net/ssl/X509TrustManager;

    const/4 v0, 0x1

    new-array v0, v0, [Ljavax/net/ssl/X509TrustManager;

    const/4 v1, 0x0

    sget-object v2, Lcom/hianalytics/android/v1/b;->b:Ljavax/net/ssl/X509TrustManager;

    aput-object v2, v0, v1

    sput-object v0, Lcom/hianalytics/android/v1/b;->c:[Ljavax/net/ssl/X509TrustManager;

    const/4 v0, 0x0

    sput-object v0, Lcom/hianalytics/android/v1/b;->d:Ljavax/net/ssl/HttpsURLConnection;

    return-void
.end method

.method public static a()V
    .locals 1

    sget-object v0, Lcom/hianalytics/android/v1/b;->d:Ljavax/net/ssl/HttpsURLConnection;

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/hianalytics/android/b/a/a;->e()V

    sget-object v0, Lcom/hianalytics/android/v1/b;->d:Ljavax/net/ssl/HttpsURLConnection;

    invoke-virtual {v0}, Ljavax/net/ssl/HttpsURLConnection;->disconnect()V

    :cond_0
    return-void
.end method

.method public static a(Ljava/lang/String;[B)Z
    .locals 7

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x0

    :try_start_0
    new-instance v0, Ljava/net/URL;

    invoke-direct {v0, p0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    check-cast v0, Ljavax/net/ssl/HttpsURLConnection;

    sput-object v0, Lcom/hianalytics/android/v1/b;->d:Ljavax/net/ssl/HttpsURLConnection;

    const-string v0, "TLS"

    invoke-static {v0}, Ljavax/net/ssl/SSLContext;->getInstance(Ljava/lang/String;)Ljavax/net/ssl/SSLContext;

    move-result-object v0

    const/4 v4, 0x0

    new-array v4, v4, [Ljavax/net/ssl/KeyManager;

    sget-object v5, Lcom/hianalytics/android/v1/b;->c:[Ljavax/net/ssl/X509TrustManager;

    new-instance v6, Ljava/security/SecureRandom;

    invoke-direct {v6}, Ljava/security/SecureRandom;-><init>()V

    invoke-virtual {v0, v4, v5, v6}, Ljavax/net/ssl/SSLContext;->init([Ljavax/net/ssl/KeyManager;[Ljavax/net/ssl/TrustManager;Ljava/security/SecureRandom;)V

    invoke-virtual {v0}, Ljavax/net/ssl/SSLContext;->getSocketFactory()Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v0

    sget-object v4, Lcom/hianalytics/android/v1/b;->d:Ljavax/net/ssl/HttpsURLConnection;

    invoke-virtual {v4, v0}, Ljavax/net/ssl/HttpsURLConnection;->setSSLSocketFactory(Ljavax/net/ssl/SSLSocketFactory;)V

    sget-object v0, Lcom/hianalytics/android/v1/b;->d:Ljavax/net/ssl/HttpsURLConnection;

    sget-object v4, Lcom/hianalytics/android/v1/b;->a:Lorg/apache/http/conn/ssl/AllowAllHostnameVerifier;

    invoke-virtual {v0, v4}, Ljavax/net/ssl/HttpsURLConnection;->setHostnameVerifier(Ljavax/net/ssl/HostnameVerifier;)V

    sget-object v0, Lcom/hianalytics/android/v1/b;->d:Ljavax/net/ssl/HttpsURLConnection;

    const/16 v4, 0x1388

    invoke-virtual {v0, v4}, Ljavax/net/ssl/HttpsURLConnection;->setConnectTimeout(I)V

    sget-object v0, Lcom/hianalytics/android/v1/b;->d:Ljavax/net/ssl/HttpsURLConnection;

    const-string v4, "POST"

    invoke-virtual {v0, v4}, Ljavax/net/ssl/HttpsURLConnection;->setRequestMethod(Ljava/lang/String;)V

    sget-object v0, Lcom/hianalytics/android/v1/b;->d:Ljavax/net/ssl/HttpsURLConnection;

    const/4 v4, 0x1

    invoke-virtual {v0, v4}, Ljavax/net/ssl/HttpsURLConnection;->setDoOutput(Z)V

    sget-object v0, Lcom/hianalytics/android/v1/b;->d:Ljavax/net/ssl/HttpsURLConnection;

    const-string v4, "Content-Type"

    const-string v5, "application/x-www-form-urlencoded"

    invoke-virtual {v0, v4, v5}, Ljavax/net/ssl/HttpsURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/hianalytics/android/v1/b;->d:Ljavax/net/ssl/HttpsURLConnection;

    const-string v4, "Content-Length"

    array-length v5, p1

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Ljavax/net/ssl/HttpsURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/hianalytics/android/v1/b;->d:Ljavax/net/ssl/HttpsURLConnection;

    invoke-virtual {v0}, Ljavax/net/ssl/HttpsURLConnection;->getOutputStream()Ljava/io/OutputStream;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v3

    :try_start_1
    invoke-virtual {v3, p1}, Ljava/io/OutputStream;->write([B)V

    invoke-virtual {v3}, Ljava/io/OutputStream;->flush()V

    sget-object v0, Lcom/hianalytics/android/v1/b;->d:Ljavax/net/ssl/HttpsURLConnection;

    invoke-virtual {v0}, Ljavax/net/ssl/HttpsURLConnection;->getResponseCode()I

    move-result v0

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "conn.getResponseCode() = "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    invoke-static {}, Lcom/hianalytics/android/b/a/a;->e()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_4

    const/16 v4, 0xc8

    if-ne v0, v4, :cond_1

    move v0, v1

    :goto_0
    if-eqz v3, :cond_0

    :try_start_2
    invoke-virtual {v3}, Ljava/io/OutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    :cond_0
    :goto_1
    return v0

    :cond_1
    move v0, v2

    goto :goto_0

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    :catch_1
    move-exception v0

    move-object v1, v3

    :goto_2
    :try_start_3
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "conn error:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    invoke-static {}, Lcom/hianalytics/android/b/a/a;->e()V

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    if-eqz v1, :cond_2

    :try_start_4
    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    :cond_2
    :goto_3
    move v0, v2

    goto :goto_1

    :catch_2
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_3

    :catchall_0
    move-exception v0

    :goto_4
    if-eqz v3, :cond_3

    :try_start_5
    invoke-virtual {v3}, Ljava/io/OutputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    :cond_3
    :goto_5
    throw v0

    :catch_3
    move-exception v1

    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_5

    :catchall_1
    move-exception v0

    move-object v3, v1

    goto :goto_4

    :catch_4
    move-exception v0

    move-object v1, v3

    goto :goto_2
.end method

.method public static b(Ljava/lang/String;[B)Z
    .locals 8

    const/4 v3, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x0

    :try_start_0
    new-instance v0, Ljava/net/URL;

    invoke-direct {v0, p0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    check-cast v0, Ljava/net/HttpURLConnection;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    :try_start_1
    invoke-static {}, Lcom/hianalytics/android/b/a/a;->e()V

    const-string v4, "POST"

    invoke-virtual {v0, v4}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    const/16 v4, 0x1388

    invoke-virtual {v0, v4}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    const/4 v4, 0x1

    invoke-virtual {v0, v4}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    const-string v4, "Content-Type"

    const-string v5, "application/x-www-form-urlencoded; charset=UTF-8"

    invoke-virtual {v0, v4, v5}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    const-string v4, "Content-Length"

    array-length v5, p1

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/io/OutputStream;->write([B)V

    invoke-virtual {v3}, Ljava/io/OutputStream;->flush()V

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v4

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "connHttp.getResponseCode() = "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    invoke-static {}, Lcom/hianalytics/android/b/a/a;->e()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_4

    const/16 v5, 0xc8

    if-ne v4, v5, :cond_2

    :goto_0
    if-eqz v3, :cond_0

    :try_start_2
    invoke-virtual {v3}, Ljava/io/OutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    :cond_0
    :goto_1
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V

    invoke-static {}, Lcom/hianalytics/android/b/a/a;->e()V

    :cond_1
    :goto_2
    return v1

    :cond_2
    move v1, v2

    goto :goto_0

    :catch_0
    move-exception v2

    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    :catch_1
    move-exception v0

    move-object v1, v3

    :goto_3
    :try_start_3
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "connHttp error:"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    invoke-static {}, Lcom/hianalytics/android/b/a/a;->e()V

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    if-eqz v3, :cond_3

    :try_start_4
    invoke-virtual {v3}, Ljava/io/OutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    :cond_3
    :goto_4
    if-eqz v1, :cond_4

    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->disconnect()V

    invoke-static {}, Lcom/hianalytics/android/b/a/a;->e()V

    :cond_4
    move v1, v2

    goto :goto_2

    :catch_2
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_4

    :catchall_0
    move-exception v0

    move-object v1, v3

    :goto_5
    if-eqz v3, :cond_5

    :try_start_5
    invoke-virtual {v3}, Ljava/io/OutputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    :cond_5
    :goto_6
    if-eqz v1, :cond_6

    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->disconnect()V

    invoke-static {}, Lcom/hianalytics/android/b/a/a;->e()V

    :cond_6
    throw v0

    :catch_3
    move-exception v2

    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_6

    :catchall_1
    move-exception v1

    move-object v7, v1

    move-object v1, v0

    move-object v0, v7

    goto :goto_5

    :catchall_2
    move-exception v0

    goto :goto_5

    :catch_4
    move-exception v1

    move-object v7, v1

    move-object v1, v0

    move-object v0, v7

    goto :goto_3
.end method
