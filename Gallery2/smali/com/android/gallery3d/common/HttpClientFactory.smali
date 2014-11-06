.class public final Lcom/android/gallery3d/common/HttpClientFactory;
.super Ljava/lang/Object;
.source "HttpClientFactory.java"


# static fields
.field private static sUserAgent:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 106
    const/4 v0, 0x0

    sput-object v0, Lcom/android/gallery3d/common/HttpClientFactory;->sUserAgent:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 131
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 132
    return-void
.end method

.method public static close(Lorg/apache/http/client/HttpClient;)V
    .locals 5
    .parameter "client"

    .prologue
    .line 94
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 95
    .local v0, clazz:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    const-string v4, "close"

    const/4 v3, 0x0

    check-cast v3, [Ljava/lang/Class;

    invoke-virtual {v0, v4, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    .line 96
    .local v2, method:Ljava/lang/reflect/Method;
    const/4 v3, 0x0

    check-cast v3, [Ljava/lang/Object;

    invoke-virtual {v2, p0, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_2

    .line 104
    return-void

    .line 97
    .end local v0           #clazz:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    .end local v2           #method:Ljava/lang/reflect/Method;
    :catch_0
    move-exception v1

    .line 98
    .local v1, e:Ljava/lang/reflect/InvocationTargetException;
    new-instance v3, Ljava/lang/RuntimeException;

    invoke-direct {v3, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v3

    .line 99
    .end local v1           #e:Ljava/lang/reflect/InvocationTargetException;
    :catch_1
    move-exception v1

    .line 100
    .local v1, e:Ljava/lang/NoSuchMethodException;
    new-instance v3, Ljava/lang/RuntimeException;

    invoke-direct {v3, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v3

    .line 101
    .end local v1           #e:Ljava/lang/NoSuchMethodException;
    :catch_2
    move-exception v1

    .line 102
    .local v1, e:Ljava/lang/IllegalAccessException;
    new-instance v3, Ljava/lang/RuntimeException;

    invoke-direct {v3, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v3
.end method

.method private static getUserAgent(Landroid/content/Context;)Ljava/lang/String;
    .locals 6
    .parameter "context"

    .prologue
    const/4 v5, 0x0

    .line 109
    sget-object v2, Lcom/android/gallery3d/common/HttpClientFactory;->sUserAgent:Ljava/lang/String;

    if-nez v2, :cond_0

    .line 112
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 117
    .local v1, pi:Landroid/content/pm/PackageInfo;
    const-string v2, "%s/%s; %s/%s/%s/%s; %s/%s/%s"

    const/16 v3, 0x9

    new-array v3, v3, [Ljava/lang/Object;

    iget-object v4, v1, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    aput-object v4, v3, v5

    const/4 v4, 0x1

    iget-object v5, v1, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    aput-object v5, v3, v4

    const/4 v4, 0x2

    sget-object v5, Landroid/os/Build;->BRAND:Ljava/lang/String;

    aput-object v5, v3, v4

    const/4 v4, 0x3

    sget-object v5, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    aput-object v5, v3, v4

    const/4 v4, 0x4

    sget-object v5, Landroid/os/Build;->MODEL:Ljava/lang/String;

    aput-object v5, v3, v4

    const/4 v4, 0x5

    sget-object v5, Landroid/os/Build;->ID:Ljava/lang/String;

    aput-object v5, v3, v4

    const/4 v4, 0x6

    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x7

    sget-object v5, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    aput-object v5, v3, v4

    const/16 v4, 0x8

    sget-object v5, Landroid/os/Build$VERSION;->INCREMENTAL:Ljava/lang/String;

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/android/gallery3d/common/HttpClientFactory;->sUserAgent:Ljava/lang/String;

    .line 128
    .end local v1           #pi:Landroid/content/pm/PackageInfo;
    :cond_0
    sget-object v2, Lcom/android/gallery3d/common/HttpClientFactory;->sUserAgent:Ljava/lang/String;

    return-object v2

    .line 114
    :catch_0
    move-exception v0

    .line 115
    .local v0, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "getPackageInfo failed"

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public static newHttpClient(Landroid/content/Context;)Lorg/apache/http/client/HttpClient;
    .locals 1
    .parameter "context"

    .prologue
    .line 46
    invoke-static {p0}, Lcom/android/gallery3d/common/HttpClientFactory;->getUserAgent(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/gallery3d/common/HttpClientFactory;->newHttpClient(Ljava/lang/String;)Lorg/apache/http/client/HttpClient;

    move-result-object v0

    return-object v0
.end method

.method public static newHttpClient(Ljava/lang/String;)Lorg/apache/http/client/HttpClient;
    .locals 11
    .parameter "userAgent"

    .prologue
    .line 58
    :try_start_0
    const-string v7, "android.net.http.AndroidHttpClient"

    invoke-static {v7}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    .line 59
    .local v1, clazz:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    const-string v7, "newInstance"

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Class;

    const/4 v9, 0x0

    const-class v10, Ljava/lang/String;

    aput-object v10, v8, v9

    invoke-virtual {v1, v7, v8}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v5

    .line 60
    .local v5, newInstance:Ljava/lang/reflect/Method;
    const/4 v7, 0x0

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    aput-object p0, v8, v9

    invoke-virtual {v5, v7, v8}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    .line 62
    .local v4, instance:Ljava/lang/Object;
    move-object v0, v4

    check-cast v0, Lorg/apache/http/client/HttpClient;

    move-object v2, v0

    .line 65
    .local v2, client:Lorg/apache/http/client/HttpClient;
    invoke-interface {v2}, Lorg/apache/http/client/HttpClient;->getParams()Lorg/apache/http/params/HttpParams;

    move-result-object v6

    .line 66
    .local v6, params:Lorg/apache/http/params/HttpParams;
    const-string v7, "http.protocol.version"

    sget-object v8, Lorg/apache/http/HttpVersion;->HTTP_1_1:Lorg/apache/http/HttpVersion;

    invoke-interface {v6, v7, v8}, Lorg/apache/http/params/HttpParams;->setParameter(Ljava/lang/String;Ljava/lang/Object;)Lorg/apache/http/params/HttpParams;

    .line 73
    const-wide/32 v7, 0xea60

    invoke-static {v6, v7, v8}, Lorg/apache/http/conn/params/ConnManagerParams;->setTimeout(Lorg/apache/http/params/HttpParams;J)V
    :try_end_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_3

    .line 75
    return-object v2

    .line 76
    .end local v1           #clazz:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    .end local v2           #client:Lorg/apache/http/client/HttpClient;
    .end local v4           #instance:Ljava/lang/Object;
    .end local v5           #newInstance:Ljava/lang/reflect/Method;
    .end local v6           #params:Lorg/apache/http/params/HttpParams;
    :catch_0
    move-exception v3

    .line 77
    .local v3, e:Ljava/lang/reflect/InvocationTargetException;
    new-instance v7, Ljava/lang/RuntimeException;

    invoke-direct {v7, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v7

    .line 78
    .end local v3           #e:Ljava/lang/reflect/InvocationTargetException;
    :catch_1
    move-exception v3

    .line 79
    .local v3, e:Ljava/lang/ClassNotFoundException;
    new-instance v7, Ljava/lang/RuntimeException;

    invoke-direct {v7, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v7

    .line 80
    .end local v3           #e:Ljava/lang/ClassNotFoundException;
    :catch_2
    move-exception v3

    .line 81
    .local v3, e:Ljava/lang/NoSuchMethodException;
    new-instance v7, Ljava/lang/RuntimeException;

    invoke-direct {v7, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v7

    .line 82
    .end local v3           #e:Ljava/lang/NoSuchMethodException;
    :catch_3
    move-exception v3

    .line 83
    .local v3, e:Ljava/lang/IllegalAccessException;
    new-instance v7, Ljava/lang/RuntimeException;

    invoke-direct {v7, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v7
.end method
