.class public Lcom/huawei/android/multiscreen/dlna/sdk/util/favorite/MyFavoriteXMLManager;
.super Lcom/huawei/android/multiscreen/dlna/sdk/dms/share/XMLManager;
.source "MyFavoriteXMLManager.java"


# static fields
.field public static final FAVORITE_XML_NAME:Ljava/lang/String; = "dlna_Fav_file_configuration.xml"

.field private static instance:Lcom/huawei/android/multiscreen/dlna/sdk/util/favorite/MyFavoriteXMLManager;


# direct methods
.method protected constructor <init>()V
    .locals 1

    .prologue
    .line 46
    invoke-direct {p0}, Lcom/huawei/android/multiscreen/dlna/sdk/dms/share/XMLManager;-><init>()V

    .line 47
    invoke-static {}, Lcom/huawei/android/multiscreen/dlna/sdk/dlnamanager/DlnaManager;->getInstance()Lcom/huawei/android/multiscreen/dlna/sdk/dlnamanager/IDlnaManager;

    move-result-object v0

    invoke-interface {v0}, Lcom/huawei/android/multiscreen/dlna/sdk/dlnamanager/IDlnaManager;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/huawei/android/multiscreen/dlna/sdk/dms/share/XMLManager;->mContext:Landroid/content/Context;

    .line 48
    new-instance v0, Lcom/huawei/android/multiscreen/dlna/sdk/dms/share/ShareSAXHandler;

    invoke-direct {v0}, Lcom/huawei/android/multiscreen/dlna/sdk/dms/share/ShareSAXHandler;-><init>()V

    iput-object v0, p0, Lcom/huawei/android/multiscreen/dlna/sdk/dms/share/XMLManager;->mSAXHandler:Lcom/huawei/android/multiscreen/dlna/sdk/dms/share/ShareSAXHandler;

    .line 49
    return-void
.end method

.method private declared-synchronized convertToXMLString(Ljava/util/List;)Ljava/lang/String;
    .locals 7
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 86
    .local p1, listFavorite:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    monitor-enter p0

    :try_start_0
    const-string v1, ""

    .line 87
    .local v1, output:Ljava/lang/String;
    invoke-static {}, Landroid/util/Xml;->newSerializer()Lorg/xmlpull/v1/XmlSerializer;

    move-result-object v2

    .line 88
    .local v2, serializer:Lorg/xmlpull/v1/XmlSerializer;
    new-instance v3, Ljava/io/StringWriter;

    invoke-direct {v3}, Ljava/io/StringWriter;-><init>()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 90
    .local v3, writer:Ljava/io/StringWriter;
    :try_start_1
    invoke-interface {v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->setOutput(Ljava/io/Writer;)V

    .line 91
    const-string v4, "UTF-8"

    const/4 v5, 0x1

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-interface {v2, v4, v5}, Lorg/xmlpull/v1/XmlSerializer;->startDocument(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 92
    const-string v4, ""

    const-string v5, "fileShare"

    invoke-interface {v2, v4, v5}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 94
    invoke-direct {p0, v2, p1}, Lcom/huawei/android/multiscreen/dlna/sdk/util/favorite/MyFavoriteXMLManager;->getSerializer(Lorg/xmlpull/v1/XmlSerializer;Ljava/util/List;)V

    .line 96
    const-string v4, ""

    const-string v5, "fileShare"

    invoke-interface {v2, v4, v5}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 97
    invoke-interface {v2}, Lorg/xmlpull/v1/XmlSerializer;->endDocument()V

    .line 98
    invoke-virtual {v3}, Ljava/io/StringWriter;->toString()Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v1

    .line 103
    :try_start_2
    invoke-virtual {v3}, Ljava/io/StringWriter;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_3

    .line 112
    :goto_0
    monitor-exit p0

    return-object v1

    .line 99
    :catch_0
    move-exception v0

    .line 100
    .local v0, e:Ljava/io/IOException;
    :try_start_3
    const-string v4, "XMLManager"

    const-string v5, "IOException when convert SHARE TREE to XML."

    invoke-static {v4, v5, v0}, Lcom/huawei/android/multiscreen/dlna/sdk/util/DebugLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 103
    :try_start_4
    invoke-virtual {v3}, Ljava/io/StringWriter;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_0

    .line 104
    :catch_1
    move-exception v0

    .line 106
    :try_start_5
    const-string v4, "XMLManager"

    .line 107
    const-string v5, "IOException when close StringWriter after convert SHARE TREE to XML."

    .line 105
    invoke-static {v4, v5, v0}, Lcom/huawei/android/multiscreen/dlna/sdk/util/DebugLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_0

    .line 86
    .end local v0           #e:Ljava/io/IOException;
    .end local v1           #output:Ljava/lang/String;
    .end local v2           #serializer:Lorg/xmlpull/v1/XmlSerializer;
    .end local v3           #writer:Ljava/io/StringWriter;
    :catchall_0
    move-exception v4

    monitor-exit p0

    throw v4

    .line 101
    .restart local v1       #output:Ljava/lang/String;
    .restart local v2       #serializer:Lorg/xmlpull/v1/XmlSerializer;
    .restart local v3       #writer:Ljava/io/StringWriter;
    :catchall_1
    move-exception v4

    .line 103
    :try_start_6
    invoke-virtual {v3}, Ljava/io/StringWriter;->close()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_2

    .line 110
    :goto_1
    :try_start_7
    throw v4

    .line 104
    :catch_2
    move-exception v0

    .line 106
    .restart local v0       #e:Ljava/io/IOException;
    const-string v5, "XMLManager"

    .line 107
    const-string v6, "IOException when close StringWriter after convert SHARE TREE to XML."

    .line 105
    invoke-static {v5, v6, v0}, Lcom/huawei/android/multiscreen/dlna/sdk/util/DebugLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 104
    .end local v0           #e:Ljava/io/IOException;
    :catch_3
    move-exception v0

    .line 106
    .restart local v0       #e:Ljava/io/IOException;
    const-string v4, "XMLManager"

    .line 107
    const-string v5, "IOException when close StringWriter after convert SHARE TREE to XML."

    .line 105
    invoke-static {v4, v5, v0}, Lcom/huawei/android/multiscreen/dlna/sdk/util/DebugLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    goto :goto_0
.end method

.method public static getInstance()Lcom/huawei/android/multiscreen/dlna/sdk/util/favorite/MyFavoriteXMLManager;
    .locals 1

    .prologue
    .line 57
    sget-object v0, Lcom/huawei/android/multiscreen/dlna/sdk/util/favorite/MyFavoriteXMLManager;->instance:Lcom/huawei/android/multiscreen/dlna/sdk/util/favorite/MyFavoriteXMLManager;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/huawei/android/multiscreen/dlna/sdk/util/favorite/MyFavoriteXMLManager;->instance:Lcom/huawei/android/multiscreen/dlna/sdk/util/favorite/MyFavoriteXMLManager;

    iget-object v0, v0, Lcom/huawei/android/multiscreen/dlna/sdk/dms/share/XMLManager;->mContext:Landroid/content/Context;

    if-nez v0, :cond_1

    .line 58
    :cond_0
    new-instance v0, Lcom/huawei/android/multiscreen/dlna/sdk/util/favorite/MyFavoriteXMLManager;

    invoke-direct {v0}, Lcom/huawei/android/multiscreen/dlna/sdk/util/favorite/MyFavoriteXMLManager;-><init>()V

    sput-object v0, Lcom/huawei/android/multiscreen/dlna/sdk/util/favorite/MyFavoriteXMLManager;->instance:Lcom/huawei/android/multiscreen/dlna/sdk/util/favorite/MyFavoriteXMLManager;

    .line 59
    :cond_1
    sget-object v0, Lcom/huawei/android/multiscreen/dlna/sdk/util/favorite/MyFavoriteXMLManager;->instance:Lcom/huawei/android/multiscreen/dlna/sdk/util/favorite/MyFavoriteXMLManager;

    return-object v0
.end method

.method private getSerializer(Lorg/xmlpull/v1/XmlSerializer;Ljava/util/List;)V
    .locals 5
    .parameter "serializer"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/xmlpull/v1/XmlSerializer;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 124
    .local p2, listFavorite:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    if-nez p2, :cond_1

    .line 147
    :cond_0
    return-void

    .line 127
    :cond_1
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 129
    .local v1, path:Ljava/lang/String;
    :try_start_0
    const-string v3, ""

    const-string v4, "filePath"

    invoke-interface {p1, v3, v4}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 130
    const-string v3, ""

    const-string v4, "path"

    invoke-interface {p1, v3, v4, v1}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 131
    const-string v3, ""

    const-string v4, "filePath"

    invoke-interface {p1, v3, v4}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2

    goto :goto_0

    .line 132
    :catch_0
    move-exception v0

    .line 134
    .local v0, e:Ljava/lang/IllegalArgumentException;
    const-string v3, "XMLManager"

    .line 135
    const-string v4, "IllegalArgumentException when convert SHARE TREE to serializer."

    .line 133
    invoke-static {v3, v4, v0}, Lcom/huawei/android/multiscreen/dlna/sdk/util/DebugLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 137
    .end local v0           #e:Ljava/lang/IllegalArgumentException;
    :catch_1
    move-exception v0

    .line 139
    .local v0, e:Ljava/lang/IllegalStateException;
    const-string v3, "XMLManager"

    .line 140
    const-string v4, "IllegalStateException when convert SHARE TREE to serializer."

    .line 138
    invoke-static {v3, v4, v0}, Lcom/huawei/android/multiscreen/dlna/sdk/util/DebugLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 142
    .end local v0           #e:Ljava/lang/IllegalStateException;
    :catch_2
    move-exception v0

    .line 143
    .local v0, e:Ljava/io/IOException;
    const-string v3, "XMLManager"

    .line 144
    const-string v4, "IOException when convert SHARE TREE to serializer."

    .line 143
    invoke-static {v3, v4, v0}, Lcom/huawei/android/multiscreen/dlna/sdk/util/DebugLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method


# virtual methods
.method public saveFavoriteList(Ljava/util/List;)V
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 71
    .local p1, listFavorite:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    if-nez p1, :cond_0

    .line 77
    :goto_0
    return-void

    .line 74
    :cond_0
    invoke-direct {p0, p1}, Lcom/huawei/android/multiscreen/dlna/sdk/util/favorite/MyFavoriteXMLManager;->convertToXMLString(Ljava/util/List;)Ljava/lang/String;

    move-result-object v0

    .line 76
    .local v0, mFileShareText:Ljava/lang/String;
    const-string v1, "dlna_Fav_file_configuration.xml"

    invoke-virtual {p0, v1, v0}, Lcom/huawei/android/multiscreen/dlna/sdk/util/favorite/MyFavoriteXMLManager;->writeXMLFile(Ljava/lang/String;Ljava/lang/String;)Z

    goto :goto_0
.end method
