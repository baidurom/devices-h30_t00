.class public Lcom/huawei/android/pushagent/utils/PushConst$Certificate;
.super Ljava/lang/Object;
.source "PushConst.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/huawei/android/pushagent/utils/PushConst;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Certificate"
.end annotation


# static fields
.field public static final CERTIFICATE_EXP_STR:Ljava/lang/String; = "Not trusted server certificate"

.field public static final CLIENT_AGREEMENT:Ljava/lang/String; = "TLS"

.field public static final CLIENT_TRUST_KEYSTORE:Ljava/lang/String; = "BKS"

.field public static final CLIENT_TRUST_MANAGER:Ljava/lang/String; = "X509"

.field public static final CLIENT_TRUST_PASSWORD:Ljava/lang/String; = "123456"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 92
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getClientCipherSuites()[Ljava/lang/String;
    .locals 3

    .prologue
    .line 101
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "AES128-SHA"

    aput-object v2, v0, v1

    return-object v0
.end method
