.class public Lcom/huawei/android/pushagent/utils/tools/PushX509TrustManager;
.super Ljava/lang/Object;
.source "PushX509TrustManager.java"

# interfaces
.implements Ljavax/net/ssl/X509TrustManager;


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "PushLog2510"


# instance fields
.field m509TrustManager:Ljavax/net/ssl/X509TrustManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 7
    .parameter "context"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 28
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 32
    const-string v5, "X509"

    invoke-static {v5}, Ljavax/net/ssl/TrustManagerFactory;->getInstance(Ljava/lang/String;)Ljavax/net/ssl/TrustManagerFactory;

    move-result-object v4

    .line 36
    .local v4, trustManager:Ljavax/net/ssl/TrustManagerFactory;
    const-string v5, "BKS"

    invoke-static {v5}, Ljava/security/KeyStore;->getInstance(Ljava/lang/String;)Ljava/security/KeyStore;

    move-result-object v3

    .line 40
    .local v3, trustKeyStore:Ljava/security/KeyStore;
    new-instance v1, Ljava/io/ByteArrayInputStream;

    invoke-static {}, Lcom/huawei/android/pushagent/utils/tools/PushCredential;->getCer()[B

    move-result-object v5

    invoke-direct {v1, v5}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 41
    .local v1, is:Ljava/io/InputStream;
    invoke-virtual {v1}, Ljava/io/InputStream;->reset()V

    .line 42
    const-string v5, "123456"

    invoke-virtual {v5}, Ljava/lang/String;->toCharArray()[C

    move-result-object v5

    invoke-virtual {v3, v1, v5}, Ljava/security/KeyStore;->load(Ljava/io/InputStream;[C)V

    .line 44
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    .line 47
    invoke-virtual {v4, v3}, Ljavax/net/ssl/TrustManagerFactory;->init(Ljava/security/KeyStore;)V

    .line 48
    invoke-virtual {v4}, Ljavax/net/ssl/TrustManagerFactory;->getTrustManagers()[Ljavax/net/ssl/TrustManager;

    move-result-object v2

    .line 55
    .local v2, tms:[Ljavax/net/ssl/TrustManager;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    array-length v5, v2

    if-ge v0, v5, :cond_1

    .line 56
    aget-object v5, v2, v0

    instance-of v5, v5, Ljavax/net/ssl/X509TrustManager;

    if-eqz v5, :cond_0

    .line 57
    aget-object v5, v2, v0

    check-cast v5, Ljavax/net/ssl/X509TrustManager;

    iput-object v5, p0, Lcom/huawei/android/pushagent/utils/tools/PushX509TrustManager;->m509TrustManager:Ljavax/net/ssl/X509TrustManager;

    .line 58
    return-void

    .line 55
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 66
    :cond_1
    new-instance v5, Ljava/lang/Exception;

    const-string v6, "Couldn\'t initialize"

    invoke-direct {v5, v6}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v5
.end method


# virtual methods
.method public checkClientTrusted([Ljava/security/cert/X509Certificate;Ljava/lang/String;)V
    .locals 4
    .parameter "chain"
    .parameter "authType"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;
        }
    .end annotation

    .prologue
    .line 75
    :try_start_0
    iget-object v1, p0, Lcom/huawei/android/pushagent/utils/tools/PushX509TrustManager;->m509TrustManager:Ljavax/net/ssl/X509TrustManager;

    invoke-interface {v1, p1, p2}, Ljavax/net/ssl/X509TrustManager;->checkClientTrusted([Ljava/security/cert/X509Certificate;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/security/cert/CertificateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 82
    :goto_0
    return-void

    .line 76
    :catch_0
    move-exception v0

    .line 79
    .local v0, e:Ljava/security/cert/CertificateException;
    const-string v1, "PushLog2510"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "checkClientTrusted,trs certificate exception:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/security/cert/CertificateException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Lcom/huawei/android/pushagent/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public checkServerTrusted([Ljava/security/cert/X509Certificate;Ljava/lang/String;)V
    .locals 4
    .parameter "chain"
    .parameter "authType"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;
        }
    .end annotation

    .prologue
    .line 90
    :try_start_0
    iget-object v1, p0, Lcom/huawei/android/pushagent/utils/tools/PushX509TrustManager;->m509TrustManager:Ljavax/net/ssl/X509TrustManager;

    invoke-interface {v1, p1, p2}, Ljavax/net/ssl/X509TrustManager;->checkServerTrusted([Ljava/security/cert/X509Certificate;Ljava/lang/String;)V

    .line 92
    const-string v1, "PushLog2510"

    const-string v2, "checkServerTrusted,trs certificate success."

    invoke-static {v1, v2}, Lcom/huawei/android/pushagent/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/security/cert/CertificateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 103
    :goto_0
    return-void

    .line 94
    :catch_0
    move-exception v0

    .line 100
    .local v0, e:Ljava/security/cert/CertificateException;
    const-string v1, "PushLog2510"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "checkServerTrusted,trs certificate exception:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/security/cert/CertificateException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Lcom/huawei/android/pushagent/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public getAcceptedIssuers()[Ljava/security/cert/X509Certificate;
    .locals 1

    .prologue
    .line 109
    iget-object v0, p0, Lcom/huawei/android/pushagent/utils/tools/PushX509TrustManager;->m509TrustManager:Ljavax/net/ssl/X509TrustManager;

    invoke-interface {v0}, Ljavax/net/ssl/X509TrustManager;->getAcceptedIssuers()[Ljava/security/cert/X509Certificate;

    move-result-object v0

    return-object v0
.end method
