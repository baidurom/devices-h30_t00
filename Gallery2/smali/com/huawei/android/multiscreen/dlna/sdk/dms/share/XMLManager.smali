.class public Lcom/huawei/android/multiscreen/dlna/sdk/dms/share/XMLManager;
.super Ljava/lang/Object;
.source "XMLManager.java"


# static fields
.field private static final ENCODING:Ljava/lang/String; = "utf-8"

.field protected static final TAG:Ljava/lang/String; = "XMLManager"


# instance fields
.field protected mContext:Landroid/content/Context;

.field protected mSAXHandler:Lcom/huawei/android/multiscreen/dlna/sdk/dms/share/ShareSAXHandler;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 28
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public declared-synchronized readXML(Ljava/lang/String;)Ljava/util/List;
    .locals 9
    .parameter "path"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v6, 0x0

    .line 57
    monitor-enter p0

    const/4 v3, 0x0

    .line 58
    .local v3, mInputStream:Ljava/io/InputStream;
    :try_start_0
    iget-object v7, p0, Lcom/huawei/android/multiscreen/dlna/sdk/dms/share/XMLManager;->mContext:Landroid/content/Context;

    if-eqz v7, :cond_0

    iget-object v7, p0, Lcom/huawei/android/multiscreen/dlna/sdk/dms/share/XMLManager;->mSAXHandler:Lcom/huawei/android/multiscreen/dlna/sdk/dms/share/ShareSAXHandler;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v7, :cond_1

    .line 98
    :cond_0
    :goto_0
    monitor-exit p0

    return-object v6

    .line 63
    :cond_1
    :try_start_1
    iget-object v7, p0, Lcom/huawei/android/multiscreen/dlna/sdk/dms/share/XMLManager;->mContext:Landroid/content/Context;

    invoke-virtual {v7, p1}, Landroid/content/Context;->openFileInput(Ljava/lang/String;)Ljava/io/FileInputStream;

    move-result-object v3

    .line 64
    invoke-static {}, Ljavax/xml/parsers/SAXParserFactory;->newInstance()Ljavax/xml/parsers/SAXParserFactory;

    move-result-object v1

    .line 66
    .local v1, factory:Ljavax/xml/parsers/SAXParserFactory;
    invoke-virtual {v1}, Ljavax/xml/parsers/SAXParserFactory;->newSAXParser()Ljavax/xml/parsers/SAXParser;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_1 .. :try_end_1} :catch_5
    .catch Lorg/xml/sax/SAXException; {:try_start_1 .. :try_end_1} :catch_7

    move-result-object v4

    .line 67
    .local v4, parser:Ljavax/xml/parsers/SAXParser;
    if-nez v4, :cond_2

    .line 89
    if-eqz v3, :cond_0

    .line 92
    :try_start_2
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    .line 93
    :catch_0
    move-exception v0

    .line 94
    .local v0, e:Ljava/io/IOException;
    :try_start_3
    const-string v7, "XMLManager"

    const-string v8, "IOException when close InputStrean after reading the SHARE XML FILE."

    invoke-static {v7, v8, v0}, Lcom/huawei/android/multiscreen/dlna/sdk/util/DebugLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 57
    .end local v0           #e:Ljava/io/IOException;
    .end local v1           #factory:Ljavax/xml/parsers/SAXParserFactory;
    .end local v4           #parser:Ljavax/xml/parsers/SAXParser;
    :catchall_0
    move-exception v6

    monitor-exit p0

    throw v6

    .line 70
    .restart local v1       #factory:Ljavax/xml/parsers/SAXParserFactory;
    .restart local v4       #parser:Ljavax/xml/parsers/SAXParser;
    :cond_2
    :try_start_4
    invoke-virtual {v4}, Ljavax/xml/parsers/SAXParser;->getXMLReader()Lorg/xml/sax/XMLReader;

    move-result-object v5

    .line 71
    .local v5, xmlreader:Lorg/xml/sax/XMLReader;
    new-instance v2, Lorg/xml/sax/InputSource;

    invoke-direct {v2, v3}, Lorg/xml/sax/InputSource;-><init>(Ljava/io/InputStream;)V

    .line 72
    .local v2, is:Lorg/xml/sax/InputSource;
    iget-object v6, p0, Lcom/huawei/android/multiscreen/dlna/sdk/dms/share/XMLManager;->mSAXHandler:Lcom/huawei/android/multiscreen/dlna/sdk/dms/share/ShareSAXHandler;

    invoke-virtual {v6}, Lcom/huawei/android/multiscreen/dlna/sdk/dms/share/ShareSAXHandler;->clearValue()V

    .line 73
    iget-object v6, p0, Lcom/huawei/android/multiscreen/dlna/sdk/dms/share/XMLManager;->mSAXHandler:Lcom/huawei/android/multiscreen/dlna/sdk/dms/share/ShareSAXHandler;

    invoke-interface {v5, v6}, Lorg/xml/sax/XMLReader;->setContentHandler(Lorg/xml/sax/ContentHandler;)V

    .line 74
    invoke-interface {v5, v2}, Lorg/xml/sax/XMLReader;->parse(Lorg/xml/sax/InputSource;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1
    .catch Ljava/io/FileNotFoundException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_4 .. :try_end_4} :catch_5
    .catch Lorg/xml/sax/SAXException; {:try_start_4 .. :try_end_4} :catch_7

    .line 89
    if-eqz v3, :cond_3

    .line 92
    :try_start_5
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_a

    .line 98
    .end local v1           #factory:Ljavax/xml/parsers/SAXParserFactory;
    .end local v2           #is:Lorg/xml/sax/InputSource;
    .end local v4           #parser:Ljavax/xml/parsers/SAXParser;
    .end local v5           #xmlreader:Lorg/xml/sax/XMLReader;
    :cond_3
    :goto_1
    :try_start_6
    iget-object v6, p0, Lcom/huawei/android/multiscreen/dlna/sdk/dms/share/XMLManager;->mSAXHandler:Lcom/huawei/android/multiscreen/dlna/sdk/dms/share/ShareSAXHandler;

    invoke-virtual {v6}, Lcom/huawei/android/multiscreen/dlna/sdk/dms/share/ShareSAXHandler;->getValues()Ljava/util/ArrayList;
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    move-result-object v6

    goto :goto_0

    .line 76
    :catch_1
    move-exception v0

    .line 77
    .local v0, e:Ljava/io/FileNotFoundException;
    :try_start_7
    const-string v6, "XMLManager"

    const-string v7, "FileNotFoundException: There is no XML Share File Found. It\'s normal."

    invoke-static {v6, v7}, Lcom/huawei/android/multiscreen/dlna/sdk/util/DebugLog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 89
    if-eqz v3, :cond_3

    .line 92
    :try_start_8
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_2

    goto :goto_1

    .line 93
    :catch_2
    move-exception v0

    .line 94
    .local v0, e:Ljava/io/IOException;
    :try_start_9
    const-string v6, "XMLManager"

    const-string v7, "IOException when close InputStrean after reading the SHARE XML FILE."

    invoke-static {v6, v7, v0}, Lcom/huawei/android/multiscreen/dlna/sdk/util/DebugLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    goto :goto_1

    .line 79
    .end local v0           #e:Ljava/io/IOException;
    :catch_3
    move-exception v0

    .line 80
    .restart local v0       #e:Ljava/io/IOException;
    :try_start_a
    const-string v6, "XMLManager"

    const-string v7, "IOException when reading the SHARE XML FILE."

    invoke-static {v6, v7, v0}, Lcom/huawei/android/multiscreen/dlna/sdk/util/DebugLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    .line 89
    if-eqz v3, :cond_3

    .line 92
    :try_start_b
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_4

    goto :goto_1

    .line 93
    :catch_4
    move-exception v0

    .line 94
    :try_start_c
    const-string v6, "XMLManager"

    const-string v7, "IOException when close InputStrean after reading the SHARE XML FILE."

    invoke-static {v6, v7, v0}, Lcom/huawei/android/multiscreen/dlna/sdk/util/DebugLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    goto :goto_1

    .line 82
    .end local v0           #e:Ljava/io/IOException;
    :catch_5
    move-exception v0

    .line 83
    .local v0, e:Ljavax/xml/parsers/ParserConfigurationException;
    :try_start_d
    const-string v6, "XMLManager"

    const-string v7, "ParserConfigurationException when reading the SHARE XML FILE."

    invoke-static {v6, v7, v0}, Lcom/huawei/android/multiscreen/dlna/sdk/util/DebugLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_1

    .line 89
    if-eqz v3, :cond_3

    .line 92
    :try_start_e
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_0
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_e} :catch_6

    goto :goto_1

    .line 93
    :catch_6
    move-exception v0

    .line 94
    .local v0, e:Ljava/io/IOException;
    :try_start_f
    const-string v6, "XMLManager"

    const-string v7, "IOException when close InputStrean after reading the SHARE XML FILE."

    invoke-static {v6, v7, v0}, Lcom/huawei/android/multiscreen/dlna/sdk/util/DebugLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_0

    goto :goto_1

    .line 84
    .end local v0           #e:Ljava/io/IOException;
    :catch_7
    move-exception v0

    .line 85
    .local v0, e:Lorg/xml/sax/SAXException;
    :try_start_10
    const-string v6, "XMLManager"

    const-string v7, "SAXException when reading the SHARE XML FILE."

    invoke-static {v6, v7, v0}, Lcom/huawei/android/multiscreen/dlna/sdk/util/DebugLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_1

    .line 89
    if-eqz v3, :cond_3

    .line 92
    :try_start_11
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_0
    .catch Ljava/io/IOException; {:try_start_11 .. :try_end_11} :catch_8

    goto :goto_1

    .line 93
    :catch_8
    move-exception v0

    .line 94
    .local v0, e:Ljava/io/IOException;
    :try_start_12
    const-string v6, "XMLManager"

    const-string v7, "IOException when close InputStrean after reading the SHARE XML FILE."

    invoke-static {v6, v7, v0}, Lcom/huawei/android/multiscreen/dlna/sdk/util/DebugLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_0

    goto :goto_1

    .line 88
    .end local v0           #e:Ljava/io/IOException;
    :catchall_1
    move-exception v6

    .line 89
    if-eqz v3, :cond_4

    .line 92
    :try_start_13
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_0
    .catch Ljava/io/IOException; {:try_start_13 .. :try_end_13} :catch_9

    .line 97
    :cond_4
    :goto_2
    :try_start_14
    throw v6

    .line 93
    :catch_9
    move-exception v0

    .line 94
    .restart local v0       #e:Ljava/io/IOException;
    const-string v7, "XMLManager"

    const-string v8, "IOException when close InputStrean after reading the SHARE XML FILE."

    invoke-static {v7, v8, v0}, Lcom/huawei/android/multiscreen/dlna/sdk/util/DebugLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2

    .line 93
    .end local v0           #e:Ljava/io/IOException;
    .restart local v1       #factory:Ljavax/xml/parsers/SAXParserFactory;
    .restart local v2       #is:Lorg/xml/sax/InputSource;
    .restart local v4       #parser:Ljavax/xml/parsers/SAXParser;
    .restart local v5       #xmlreader:Lorg/xml/sax/XMLReader;
    :catch_a
    move-exception v0

    .line 94
    .restart local v0       #e:Ljava/io/IOException;
    const-string v6, "XMLManager"

    const-string v7, "IOException when close InputStrean after reading the SHARE XML FILE."

    invoke-static {v6, v7, v0}, Lcom/huawei/android/multiscreen/dlna/sdk/util/DebugLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_14
    .catchall {:try_start_14 .. :try_end_14} :catchall_0

    goto :goto_1
.end method

.method protected declared-synchronized writeXMLFile(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 7
    .parameter "saveFileName"
    .parameter "txt"

    .prologue
    const/4 v4, 0x0

    .line 112
    monitor-enter p0

    const/4 v1, 0x0

    .line 113
    .local v1, os:Ljava/io/OutputStream;
    const/4 v2, 0x0

    .line 114
    .local v2, osw:Ljava/io/OutputStreamWriter;
    :try_start_0
    iget-object v5, p0, Lcom/huawei/android/multiscreen/dlna/sdk/dms/share/XMLManager;->mContext:Landroid/content/Context;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v5, :cond_0

    .line 146
    :goto_0
    monitor-exit p0

    return v4

    .line 118
    :cond_0
    :try_start_1
    iget-object v4, p0, Lcom/huawei/android/multiscreen/dlna/sdk/dms/share/XMLManager;->mContext:Landroid/content/Context;

    .line 119
    const/4 v5, 0x0

    .line 118
    invoke-virtual {v4, p1, v5}, Landroid/content/Context;->openFileOutput(Ljava/lang/String;I)Ljava/io/FileOutputStream;

    move-result-object v1

    .line 120
    new-instance v3, Ljava/io/OutputStreamWriter;

    const-string v4, "utf-8"

    invoke-direct {v3, v1, v4}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_4

    .line 121
    .end local v2           #osw:Ljava/io/OutputStreamWriter;
    .local v3, osw:Ljava/io/OutputStreamWriter;
    :try_start_2
    invoke-virtual {v3, p2}, Ljava/io/OutputStreamWriter;->write(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_a
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_9
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_8

    .line 134
    if-eqz v3, :cond_1

    .line 136
    :try_start_3
    invoke-virtual {v3}, Ljava/io/OutputStreamWriter;->close()V

    .line 138
    :cond_1
    if-eqz v1, :cond_8

    .line 140
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_7

    move-object v2, v3

    .line 146
    .end local v3           #osw:Ljava/io/OutputStreamWriter;
    .restart local v2       #osw:Ljava/io/OutputStreamWriter;
    :cond_2
    :goto_1
    const/4 v4, 0x1

    goto :goto_0

    .line 123
    :catch_0
    move-exception v0

    .line 124
    .local v0, e:Ljava/io/FileNotFoundException;
    :goto_2
    :try_start_4
    const-string v4, "XMLManager"

    const-string v5, "FileNotFoundException when writing the SHARE XML FILE."

    invoke-static {v4, v5}, Lcom/huawei/android/multiscreen/dlna/sdk/util/DebugLog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 134
    if-eqz v2, :cond_3

    .line 136
    :try_start_5
    invoke-virtual {v2}, Ljava/io/OutputStreamWriter;->close()V

    .line 138
    :cond_3
    if-eqz v1, :cond_2

    .line 140
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1

    goto :goto_1

    .line 142
    :catch_1
    move-exception v0

    .line 143
    .local v0, e:Ljava/io/IOException;
    :try_start_6
    const-string v4, "XMLManager"

    const-string v5, "IOException when closing strean after writing the SHARE XML FILE."

    invoke-static {v4, v5}, Lcom/huawei/android/multiscreen/dlna/sdk/util/DebugLog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto :goto_1

    .line 112
    .end local v0           #e:Ljava/io/IOException;
    :catchall_0
    move-exception v4

    :goto_3
    monitor-exit p0

    throw v4

    .line 126
    :catch_2
    move-exception v0

    .line 127
    .restart local v0       #e:Ljava/io/IOException;
    :goto_4
    :try_start_7
    const-string v4, "XMLManager"

    const-string v5, "IOException when writing the SHARE XML FILE."

    invoke-static {v4, v5}, Lcom/huawei/android/multiscreen/dlna/sdk/util/DebugLog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 134
    if-eqz v2, :cond_4

    .line 136
    :try_start_8
    invoke-virtual {v2}, Ljava/io/OutputStreamWriter;->close()V

    .line 138
    :cond_4
    if-eqz v1, :cond_2

    .line 140
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_3

    goto :goto_1

    .line 142
    :catch_3
    move-exception v0

    .line 143
    :try_start_9
    const-string v4, "XMLManager"

    const-string v5, "IOException when closing strean after writing the SHARE XML FILE."

    invoke-static {v4, v5}, Lcom/huawei/android/multiscreen/dlna/sdk/util/DebugLog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    goto :goto_1

    .line 128
    .end local v0           #e:Ljava/io/IOException;
    :catch_4
    move-exception v0

    .line 129
    .local v0, e:Ljava/lang/Throwable;
    :goto_5
    :try_start_a
    const-string v4, "XMLManager"

    const-string v5, "Throwable when writing the SHARE XML FILE."

    invoke-static {v4, v5}, Lcom/huawei/android/multiscreen/dlna/sdk/util/DebugLog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    .line 134
    if-eqz v2, :cond_5

    .line 136
    :try_start_b
    invoke-virtual {v2}, Ljava/io/OutputStreamWriter;->close()V

    .line 138
    :cond_5
    if-eqz v1, :cond_2

    .line 140
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_5

    goto :goto_1

    .line 142
    :catch_5
    move-exception v0

    .line 143
    .local v0, e:Ljava/io/IOException;
    :try_start_c
    const-string v4, "XMLManager"

    const-string v5, "IOException when closing strean after writing the SHARE XML FILE."

    invoke-static {v4, v5}, Lcom/huawei/android/multiscreen/dlna/sdk/util/DebugLog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    goto :goto_1

    .line 132
    .end local v0           #e:Ljava/io/IOException;
    :catchall_1
    move-exception v4

    .line 134
    :goto_6
    if-eqz v2, :cond_6

    .line 136
    :try_start_d
    invoke-virtual {v2}, Ljava/io/OutputStreamWriter;->close()V

    .line 138
    :cond_6
    if-eqz v1, :cond_7

    .line 140
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_0
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_6

    .line 145
    :cond_7
    :goto_7
    :try_start_e
    throw v4

    .line 142
    :catch_6
    move-exception v0

    .line 143
    .restart local v0       #e:Ljava/io/IOException;
    const-string v5, "XMLManager"

    const-string v6, "IOException when closing strean after writing the SHARE XML FILE."

    invoke-static {v5, v6}, Lcom/huawei/android/multiscreen/dlna/sdk/util/DebugLog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_0

    goto :goto_7

    .line 142
    .end local v0           #e:Ljava/io/IOException;
    .end local v2           #osw:Ljava/io/OutputStreamWriter;
    .restart local v3       #osw:Ljava/io/OutputStreamWriter;
    :catch_7
    move-exception v0

    .line 143
    .restart local v0       #e:Ljava/io/IOException;
    :try_start_f
    const-string v4, "XMLManager"

    const-string v5, "IOException when closing strean after writing the SHARE XML FILE."

    invoke-static {v4, v5}, Lcom/huawei/android/multiscreen/dlna/sdk/util/DebugLog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_3

    .end local v0           #e:Ljava/io/IOException;
    :cond_8
    move-object v2, v3

    .end local v3           #osw:Ljava/io/OutputStreamWriter;
    .restart local v2       #osw:Ljava/io/OutputStreamWriter;
    goto :goto_1

    .line 132
    .end local v2           #osw:Ljava/io/OutputStreamWriter;
    .restart local v3       #osw:Ljava/io/OutputStreamWriter;
    :catchall_2
    move-exception v4

    move-object v2, v3

    .end local v3           #osw:Ljava/io/OutputStreamWriter;
    .restart local v2       #osw:Ljava/io/OutputStreamWriter;
    goto :goto_6

    .line 128
    .end local v2           #osw:Ljava/io/OutputStreamWriter;
    .restart local v3       #osw:Ljava/io/OutputStreamWriter;
    :catch_8
    move-exception v0

    move-object v2, v3

    .end local v3           #osw:Ljava/io/OutputStreamWriter;
    .restart local v2       #osw:Ljava/io/OutputStreamWriter;
    goto :goto_5

    .line 126
    .end local v2           #osw:Ljava/io/OutputStreamWriter;
    .restart local v3       #osw:Ljava/io/OutputStreamWriter;
    :catch_9
    move-exception v0

    move-object v2, v3

    .end local v3           #osw:Ljava/io/OutputStreamWriter;
    .restart local v2       #osw:Ljava/io/OutputStreamWriter;
    goto :goto_4

    .line 123
    .end local v2           #osw:Ljava/io/OutputStreamWriter;
    .restart local v3       #osw:Ljava/io/OutputStreamWriter;
    :catch_a
    move-exception v0

    move-object v2, v3

    .end local v3           #osw:Ljava/io/OutputStreamWriter;
    .restart local v2       #osw:Ljava/io/OutputStreamWriter;
    goto :goto_2

    .line 112
    .end local v2           #osw:Ljava/io/OutputStreamWriter;
    .restart local v3       #osw:Ljava/io/OutputStreamWriter;
    :catchall_3
    move-exception v4

    move-object v2, v3

    .end local v3           #osw:Ljava/io/OutputStreamWriter;
    .restart local v2       #osw:Ljava/io/OutputStreamWriter;
    goto :goto_3
.end method
