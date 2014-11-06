.class public Lcom/huawei/android/multiscreen/dlna/sdk/dms/share/ShareXMLManager;
.super Lcom/huawei/android/multiscreen/dlna/sdk/dms/share/XMLManager;
.source "ShareXMLManager.java"


# static fields
.field public static final SHAREFILE_XML_NAME:Ljava/lang/String; = "dlna_share_file_configuration.xml"

.field private static instance:Lcom/huawei/android/multiscreen/dlna/sdk/dms/share/ShareXMLManager;


# direct methods
.method protected constructor <init>()V
    .locals 1

    .prologue
    .line 48
    invoke-direct {p0}, Lcom/huawei/android/multiscreen/dlna/sdk/dms/share/XMLManager;-><init>()V

    .line 49
    invoke-static {}, Lcom/huawei/android/multiscreen/dlna/sdk/dlnamanager/DlnaManager;->getInstance()Lcom/huawei/android/multiscreen/dlna/sdk/dlnamanager/IDlnaManager;

    move-result-object v0

    invoke-interface {v0}, Lcom/huawei/android/multiscreen/dlna/sdk/dlnamanager/IDlnaManager;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/huawei/android/multiscreen/dlna/sdk/dms/share/XMLManager;->mContext:Landroid/content/Context;

    .line 50
    new-instance v0, Lcom/huawei/android/multiscreen/dlna/sdk/dms/share/ShareSAXHandler;

    invoke-direct {v0}, Lcom/huawei/android/multiscreen/dlna/sdk/dms/share/ShareSAXHandler;-><init>()V

    iput-object v0, p0, Lcom/huawei/android/multiscreen/dlna/sdk/dms/share/XMLManager;->mSAXHandler:Lcom/huawei/android/multiscreen/dlna/sdk/dms/share/ShareSAXHandler;

    .line 51
    return-void
.end method

.method private declared-synchronized convertToXMLString(Lcom/huawei/android/multiscreen/dlna/sdk/jni/DlnaDmsShareDir;)Ljava/lang/String;
    .locals 7
    .parameter "dir"

    .prologue
    .line 89
    monitor-enter p0

    :try_start_0
    const-string v1, ""

    .line 90
    .local v1, output:Ljava/lang/String;
    invoke-static {}, Landroid/util/Xml;->newSerializer()Lorg/xmlpull/v1/XmlSerializer;

    move-result-object v2

    .line 91
    .local v2, serializer:Lorg/xmlpull/v1/XmlSerializer;
    new-instance v3, Ljava/io/StringWriter;

    invoke-direct {v3}, Ljava/io/StringWriter;-><init>()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 93
    .local v3, writer:Ljava/io/StringWriter;
    :try_start_1
    invoke-interface {v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->setOutput(Ljava/io/Writer;)V

    .line 94
    const-string v4, "UTF-8"

    const/4 v5, 0x1

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-interface {v2, v4, v5}, Lorg/xmlpull/v1/XmlSerializer;->startDocument(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 95
    const-string v4, ""

    const-string v5, "fileShare"

    invoke-interface {v2, v4, v5}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 97
    invoke-direct {p0, v2, p1}, Lcom/huawei/android/multiscreen/dlna/sdk/dms/share/ShareXMLManager;->getSerializer(Lorg/xmlpull/v1/XmlSerializer;Lcom/huawei/android/multiscreen/dlna/sdk/jni/DlnaDmsShareFile;)V

    .line 99
    const-string v4, ""

    const-string v5, "fileShare"

    invoke-interface {v2, v4, v5}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 100
    invoke-interface {v2}, Lorg/xmlpull/v1/XmlSerializer;->endDocument()V

    .line 101
    invoke-virtual {v3}, Ljava/io/StringWriter;->toString()Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v1

    .line 108
    :try_start_2
    invoke-virtual {v3}, Ljava/io/StringWriter;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_3

    .line 114
    :goto_0
    monitor-exit p0

    return-object v1

    .line 102
    :catch_0
    move-exception v0

    .line 103
    .local v0, e:Ljava/io/IOException;
    :try_start_3
    const-string v4, "XMLManager"

    const-string v5, "IOException when convert SHARE TREE to XML."

    invoke-static {v4, v5, v0}, Lcom/huawei/android/multiscreen/dlna/sdk/util/DebugLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 108
    :try_start_4
    invoke-virtual {v3}, Ljava/io/StringWriter;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_0

    .line 109
    :catch_1
    move-exception v0

    .line 110
    :try_start_5
    const-string v4, "XMLManager"

    const-string v5, "IOException when close StringWriter after convert SHARE TREE to XML."

    invoke-static {v4, v5, v0}, Lcom/huawei/android/multiscreen/dlna/sdk/util/DebugLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_0

    .line 89
    .end local v0           #e:Ljava/io/IOException;
    .end local v1           #output:Ljava/lang/String;
    .end local v2           #serializer:Lorg/xmlpull/v1/XmlSerializer;
    .end local v3           #writer:Ljava/io/StringWriter;
    :catchall_0
    move-exception v4

    monitor-exit p0

    throw v4

    .line 106
    .restart local v1       #output:Ljava/lang/String;
    .restart local v2       #serializer:Lorg/xmlpull/v1/XmlSerializer;
    .restart local v3       #writer:Ljava/io/StringWriter;
    :catchall_1
    move-exception v4

    .line 108
    :try_start_6
    invoke-virtual {v3}, Ljava/io/StringWriter;->close()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_2

    .line 112
    :goto_1
    :try_start_7
    throw v4

    .line 109
    :catch_2
    move-exception v0

    .line 110
    .restart local v0       #e:Ljava/io/IOException;
    const-string v5, "XMLManager"

    const-string v6, "IOException when close StringWriter after convert SHARE TREE to XML."

    invoke-static {v5, v6, v0}, Lcom/huawei/android/multiscreen/dlna/sdk/util/DebugLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 109
    .end local v0           #e:Ljava/io/IOException;
    :catch_3
    move-exception v0

    .line 110
    .restart local v0       #e:Ljava/io/IOException;
    const-string v4, "XMLManager"

    const-string v5, "IOException when close StringWriter after convert SHARE TREE to XML."

    invoke-static {v4, v5, v0}, Lcom/huawei/android/multiscreen/dlna/sdk/util/DebugLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    goto :goto_0
.end method

.method public static getInstance()Lcom/huawei/android/multiscreen/dlna/sdk/dms/share/ShareXMLManager;
    .locals 1

    .prologue
    .line 59
    sget-object v0, Lcom/huawei/android/multiscreen/dlna/sdk/dms/share/ShareXMLManager;->instance:Lcom/huawei/android/multiscreen/dlna/sdk/dms/share/ShareXMLManager;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/huawei/android/multiscreen/dlna/sdk/dms/share/ShareXMLManager;->instance:Lcom/huawei/android/multiscreen/dlna/sdk/dms/share/ShareXMLManager;

    iget-object v0, v0, Lcom/huawei/android/multiscreen/dlna/sdk/dms/share/XMLManager;->mContext:Landroid/content/Context;

    if-nez v0, :cond_1

    .line 60
    :cond_0
    new-instance v0, Lcom/huawei/android/multiscreen/dlna/sdk/dms/share/ShareXMLManager;

    invoke-direct {v0}, Lcom/huawei/android/multiscreen/dlna/sdk/dms/share/ShareXMLManager;-><init>()V

    sput-object v0, Lcom/huawei/android/multiscreen/dlna/sdk/dms/share/ShareXMLManager;->instance:Lcom/huawei/android/multiscreen/dlna/sdk/dms/share/ShareXMLManager;

    .line 61
    :cond_1
    sget-object v0, Lcom/huawei/android/multiscreen/dlna/sdk/dms/share/ShareXMLManager;->instance:Lcom/huawei/android/multiscreen/dlna/sdk/dms/share/ShareXMLManager;

    return-object v0
.end method

.method private getSerializer(Lorg/xmlpull/v1/XmlSerializer;Lcom/huawei/android/multiscreen/dlna/sdk/jni/DlnaDmsShareFile;)V
    .locals 7
    .parameter "serializer"
    .parameter "file"

    .prologue
    .line 125
    invoke-virtual {p2}, Lcom/huawei/android/multiscreen/dlna/sdk/jni/DlnaDmsShareFile;->getAllOrPartFlag()I

    move-result v4

    sget-object v5, Lcom/huawei/android/multiscreen/dlna/sdk/dms/ShareStateEnum;->ALL_SHARE_FLAG:Lcom/huawei/android/multiscreen/dlna/sdk/dms/ShareStateEnum;

    invoke-virtual {v5}, Lcom/huawei/android/multiscreen/dlna/sdk/dms/ShareStateEnum;->getValue()I

    move-result v5

    if-ne v4, v5, :cond_0

    .line 128
    :try_start_0
    const-string v4, ""

    const-string v5, "filePath"

    invoke-interface {p1, v4, v5}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 129
    const-string v4, ""

    const-string v5, "path"

    invoke-virtual {p2}, Lcom/huawei/android/multiscreen/dlna/sdk/jni/DlnaDmsShareFile;->getPath()Ljava/lang/String;

    move-result-object v6

    invoke-interface {p1, v4, v5, v6}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 130
    const-string v4, ""

    const-string v5, "filePath"

    invoke-interface {p1, v4, v5}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2

    .line 139
    :cond_0
    :goto_0
    invoke-virtual {p2}, Lcom/huawei/android/multiscreen/dlna/sdk/jni/DlnaDmsShareFile;->isDirectory()Z

    move-result v4

    if-eqz v4, :cond_1

    move-object v0, p2

    .line 141
    check-cast v0, Lcom/huawei/android/multiscreen/dlna/sdk/jni/DlnaDmsShareDir;

    .line 142
    .local v0, dir:Lcom/huawei/android/multiscreen/dlna/sdk/jni/DlnaDmsShareDir;
    invoke-virtual {v0}, Lcom/huawei/android/multiscreen/dlna/sdk/jni/DlnaDmsShareDir;->getMapShareFiles()Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    move-result-object v3

    .line 143
    .local v3, sons:Ljava/util/Collection;,"Ljava/util/Collection<Lcom/huawei/android/multiscreen/dlna/sdk/jni/DlnaDmsShareFile;>;"
    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-nez v5, :cond_2

    .line 148
    .end local v0           #dir:Lcom/huawei/android/multiscreen/dlna/sdk/jni/DlnaDmsShareDir;
    .end local v3           #sons:Ljava/util/Collection;,"Ljava/util/Collection<Lcom/huawei/android/multiscreen/dlna/sdk/jni/DlnaDmsShareFile;>;"
    :cond_1
    return-void

    .line 131
    :catch_0
    move-exception v1

    .line 132
    .local v1, e:Ljava/lang/IllegalArgumentException;
    const-string v4, "XMLManager"

    const-string v5, "IllegalArgumentException when convert SHARE TREE to serializer."

    invoke-static {v4, v5, v1}, Lcom/huawei/android/multiscreen/dlna/sdk/util/DebugLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 133
    .end local v1           #e:Ljava/lang/IllegalArgumentException;
    :catch_1
    move-exception v1

    .line 134
    .local v1, e:Ljava/lang/IllegalStateException;
    const-string v4, "XMLManager"

    const-string v5, "IllegalStateException when convert SHARE TREE to serializer."

    invoke-static {v4, v5, v1}, Lcom/huawei/android/multiscreen/dlna/sdk/util/DebugLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 135
    .end local v1           #e:Ljava/lang/IllegalStateException;
    :catch_2
    move-exception v1

    .line 136
    .local v1, e:Ljava/io/IOException;
    const-string v4, "XMLManager"

    const-string v5, "IOException when convert SHARE TREE to serializer."

    invoke-static {v4, v5, v1}, Lcom/huawei/android/multiscreen/dlna/sdk/util/DebugLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 143
    .end local v1           #e:Ljava/io/IOException;
    .restart local v0       #dir:Lcom/huawei/android/multiscreen/dlna/sdk/jni/DlnaDmsShareDir;
    .restart local v3       #sons:Ljava/util/Collection;,"Ljava/util/Collection<Lcom/huawei/android/multiscreen/dlna/sdk/jni/DlnaDmsShareFile;>;"
    :cond_2
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/huawei/android/multiscreen/dlna/sdk/jni/DlnaDmsShareFile;

    .line 145
    .local v2, son:Lcom/huawei/android/multiscreen/dlna/sdk/jni/DlnaDmsShareFile;
    invoke-direct {p0, p1, v2}, Lcom/huawei/android/multiscreen/dlna/sdk/dms/share/ShareXMLManager;->getSerializer(Lorg/xmlpull/v1/XmlSerializer;Lcom/huawei/android/multiscreen/dlna/sdk/jni/DlnaDmsShareFile;)V

    goto :goto_1
.end method


# virtual methods
.method public saveShareFileList()V
    .locals 2

    .prologue
    .line 74
    invoke-static {}, Lcom/huawei/android/multiscreen/dlna/sdk/dms/share/ShareFileManagerEx;->getInstance()Lcom/huawei/android/multiscreen/dlna/sdk/dms/share/ShareFileManagerEx;

    move-result-object v1

    invoke-virtual {v1}, Lcom/huawei/android/multiscreen/dlna/sdk/dms/share/ShareFileManagerEx;->getShareFileList()Lcom/huawei/android/multiscreen/dlna/sdk/jni/DlnaDmsShareDir;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/huawei/android/multiscreen/dlna/sdk/dms/share/ShareXMLManager;->convertToXMLString(Lcom/huawei/android/multiscreen/dlna/sdk/jni/DlnaDmsShareDir;)Ljava/lang/String;

    move-result-object v0

    .line 76
    .local v0, mFileShareText:Ljava/lang/String;
    const-string v1, "dlna_share_file_configuration.xml"

    invoke-virtual {p0, v1, v0}, Lcom/huawei/android/multiscreen/dlna/sdk/dms/share/ShareXMLManager;->writeXMLFile(Ljava/lang/String;Ljava/lang/String;)Z

    .line 77
    return-void
.end method
