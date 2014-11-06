.class public Lcom/huawei/android/multiscreen/sdk/XMLUploader;
.super Ljava/lang/Object;
.source "XMLUploader.java"


# static fields
.field private static final ENCODING:Ljava/lang/String; = "utf-8"

.field private static final TAG:Ljava/lang/String; = "XMLUploader"

.field private static final XML_SINK:Ljava/lang/String; = "mirror_sink_configs.xml"

.field private static final XML_SOURCE:Ljava/lang/String; = "mirror_source_configs.xml"


# instance fields
.field private mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter "context"

    .prologue
    .line 37
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 38
    iput-object p1, p0, Lcom/huawei/android/multiscreen/sdk/XMLUploader;->mContext:Landroid/content/Context;

    .line 39
    return-void
.end method

.method private getFromAsset(Ljava/lang/String;)Ljava/lang/String;
    .locals 9
    .parameter "fileName"

    .prologue
    .line 67
    const-string v5, ""

    .line 69
    .local v5, res:Ljava/lang/String;
    :try_start_0
    iget-object v7, p0, Lcom/huawei/android/multiscreen/sdk/XMLUploader;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/res/Resources;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v7

    invoke-virtual {v7, p1}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v2

    .line 70
    .local v2, in:Ljava/io/InputStream;
    invoke-virtual {v2}, Ljava/io/InputStream;->available()I

    move-result v3

    .line 71
    .local v3, length:I
    new-array v0, v3, [B

    .line 72
    .local v0, buffer:[B
    invoke-virtual {v2, v0}, Ljava/io/InputStream;->read([B)I

    move-result v4

    .line 73
    .local v4, readCount:I
    if-gez v4, :cond_0

    move-object v6, v5

    .line 82
    .end local v0           #buffer:[B
    .end local v2           #in:Ljava/io/InputStream;
    .end local v3           #length:I
    .end local v4           #readCount:I
    .end local v5           #res:Ljava/lang/String;
    .local v6, res:Ljava/lang/String;
    :goto_0
    return-object v6

    .line 76
    .end local v6           #res:Ljava/lang/String;
    .restart local v0       #buffer:[B
    .restart local v2       #in:Ljava/io/InputStream;
    .restart local v3       #length:I
    .restart local v4       #readCount:I
    .restart local v5       #res:Ljava/lang/String;
    :cond_0
    const-string v7, "utf-8"

    invoke-static {v0, v7}, Lorg/apache/http/util/EncodingUtils;->getString([BLjava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v5

    .end local v0           #buffer:[B
    .end local v2           #in:Ljava/io/InputStream;
    .end local v3           #length:I
    .end local v4           #readCount:I
    :goto_1
    move-object v6, v5

    .line 82
    .end local v5           #res:Ljava/lang/String;
    .restart local v6       #res:Ljava/lang/String;
    goto :goto_0

    .line 77
    .end local v6           #res:Ljava/lang/String;
    .restart local v5       #res:Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 78
    .local v1, e:Ljava/io/IOException;
    const-string v7, "XMLUploader"

    const-string v8, "IOException getFromAsset fail!"

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 79
    .end local v1           #e:Ljava/io/IOException;
    :catch_1
    move-exception v1

    .line 80
    .local v1, e:Ljava/lang/Exception;
    const-string v7, "XMLUploader"

    const-string v8, "Exception getFromAsset fail!"

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method private writeFileData(Ljava/lang/String;Ljava/lang/String;)V
    .locals 8
    .parameter "fileName"
    .parameter "message"

    .prologue
    .line 51
    :try_start_0
    iget-object v6, p0, Lcom/huawei/android/multiscreen/sdk/XMLUploader;->mContext:Landroid/content/Context;

    const/4 v7, 0x0

    invoke-virtual {v6, p1, v7}, Landroid/content/Context;->openFileOutput(Ljava/lang/String;I)Ljava/io/FileOutputStream;

    move-result-object v4

    .line 52
    .local v4, fout:Ljava/io/FileOutputStream;
    const-string v6, "utf-8"

    invoke-virtual {p2, v6}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    .line 53
    .local v0, bytes:[B
    invoke-virtual {v4, v0}, Ljava/io/FileOutputStream;->write([B)V

    .line 54
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3

    .line 64
    .end local v0           #bytes:[B
    .end local v4           #fout:Ljava/io/FileOutputStream;
    :goto_0
    return-void

    .line 55
    :catch_0
    move-exception v2

    .line 56
    .local v2, e1:Ljava/io/UnsupportedEncodingException;
    const-string v6, "XMLUploader"

    const-string v7, "writeFileData hanppened UnsupportedEncodingException"

    invoke-static {v6, v7}, Lcom/huawei/android/multiscreen/dlna/sdk/util/DebugLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 57
    .end local v2           #e1:Ljava/io/UnsupportedEncodingException;
    :catch_1
    move-exception v3

    .line 58
    .local v3, fe:Ljava/io/FileNotFoundException;
    const-string v6, "XMLUploader"

    const-string v7, "writeFileData fail FileNotFoundException"

    invoke-static {v6, v7, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 59
    .end local v3           #fe:Ljava/io/FileNotFoundException;
    :catch_2
    move-exception v5

    .line 60
    .local v5, ioe:Ljava/io/IOException;
    const-string v6, "XMLUploader"

    const-string v7, "writeFileData fail IOException"

    invoke-static {v6, v7, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 61
    .end local v5           #ioe:Ljava/io/IOException;
    :catch_3
    move-exception v1

    .line 62
    .local v1, e:Ljava/lang/Exception;
    const-string v6, "XMLUploader"

    const-string v7, "writeFileData fail"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method


# virtual methods
.method public uploadXML()V
    .locals 2

    .prologue
    .line 45
    const-string v0, "mirror_sink_configs.xml"

    const-string v1, "mirror_sink_configs.xml"

    invoke-direct {p0, v1}, Lcom/huawei/android/multiscreen/sdk/XMLUploader;->getFromAsset(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/huawei/android/multiscreen/sdk/XMLUploader;->writeFileData(Ljava/lang/String;Ljava/lang/String;)V

    .line 46
    const-string v0, "mirror_source_configs.xml"

    const-string v1, "mirror_source_configs.xml"

    invoke-direct {p0, v1}, Lcom/huawei/android/multiscreen/sdk/XMLUploader;->getFromAsset(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/huawei/android/multiscreen/sdk/XMLUploader;->writeFileData(Ljava/lang/String;Ljava/lang/String;)V

    .line 47
    return-void
.end method
