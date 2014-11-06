.class public Lcom/huawei/android/multiscreen/dlna/sdk/xml/XmlSAXParser;
.super Ljava/lang/Object;
.source "XmlSAXParser.java"


# static fields
.field private static final ENCODING:Ljava/lang/String; = "utf-8"

.field private static final TAG:Ljava/lang/String; = "XmlSAXParser"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 38
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static parseXML(Ljava/lang/String;IZ)Lcom/huawei/android/multiscreen/dlna/sdk/xml/ParseResult;
    .locals 22
    .parameter "content"
    .parameter "deviceID"
    .parameter "isNeedUpdate"

    .prologue
    .line 53
    invoke-static/range {p0 .. p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v19

    if-eqz v19, :cond_1

    .line 54
    const/4 v15, 0x0

    .line 114
    :cond_0
    :goto_0
    return-object v15

    .line 63
    :cond_1
    const/4 v3, 0x0

    .line 65
    .local v3, byteStream:Ljava/io/ByteArrayInputStream;
    :try_start_0
    new-instance v4, Ljava/io/ByteArrayInputStream;

    .line 66
    const-string v19, "utf-8"

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v19

    .line 65
    move-object/from16 v0, v19

    invoke-direct {v4, v0}, Ljava/io/ByteArrayInputStream;-><init>([B)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljavax/xml/parsers/FactoryConfigurationError; {:try_start_0 .. :try_end_0} :catch_5
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_0 .. :try_end_0} :catch_7
    .catch Lorg/xml/sax/SAXException; {:try_start_0 .. :try_end_0} :catch_9
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_b
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_d

    .line 67
    .end local v3           #byteStream:Ljava/io/ByteArrayInputStream;
    .local v4, byteStream:Ljava/io/ByteArrayInputStream;
    :try_start_1
    invoke-static {}, Ljavax/xml/parsers/SAXParserFactory;->newInstance()Ljavax/xml/parsers/SAXParserFactory;

    move-result-object v7

    .line 69
    .local v7, factory:Ljavax/xml/parsers/SAXParserFactory;
    invoke-virtual {v7}, Ljavax/xml/parsers/SAXParserFactory;->newSAXParser()Ljavax/xml/parsers/SAXParser;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_15
    .catch Ljavax/xml/parsers/FactoryConfigurationError; {:try_start_1 .. :try_end_1} :catch_14
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_1 .. :try_end_1} :catch_13
    .catch Lorg/xml/sax/SAXException; {:try_start_1 .. :try_end_1} :catch_12
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_11
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_10

    move-result-object v12

    .line 70
    .local v12, parser:Ljavax/xml/parsers/SAXParser;
    if-nez v12, :cond_3

    .line 102
    if-eqz v4, :cond_2

    .line 106
    :try_start_2
    invoke-virtual {v4}, Ljava/io/ByteArrayInputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 71
    :cond_2
    :goto_1
    const/4 v15, 0x0

    goto :goto_0

    .line 108
    :catch_0
    move-exception v5

    .line 110
    .local v5, e:Ljava/io/IOException;
    const-string v19, "XmlSAXParser"

    const-string v20, "parseXML() has IOException"

    invoke-static/range {v19 .. v20}, Lcom/huawei/android/multiscreen/dlna/sdk/util/DebugLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 73
    .end local v5           #e:Ljava/io/IOException;
    :cond_3
    :try_start_3
    invoke-virtual {v12}, Ljavax/xml/parsers/SAXParser;->getXMLReader()Lorg/xml/sax/XMLReader;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_3 .. :try_end_3} :catch_15
    .catch Ljavax/xml/parsers/FactoryConfigurationError; {:try_start_3 .. :try_end_3} :catch_14
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_3 .. :try_end_3} :catch_13
    .catch Lorg/xml/sax/SAXException; {:try_start_3 .. :try_end_3} :catch_12
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_11
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_10

    move-result-object v14

    .line 74
    .local v14, reader:Lorg/xml/sax/XMLReader;
    if-nez v14, :cond_5

    .line 102
    if-eqz v4, :cond_4

    .line 106
    :try_start_4
    invoke-virtual {v4}, Ljava/io/ByteArrayInputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    .line 75
    :cond_4
    :goto_2
    const/4 v15, 0x0

    goto :goto_0

    .line 108
    :catch_1
    move-exception v5

    .line 110
    .restart local v5       #e:Ljava/io/IOException;
    const-string v19, "XmlSAXParser"

    const-string v20, "parseXML() has IOException"

    invoke-static/range {v19 .. v20}, Lcom/huawei/android/multiscreen/dlna/sdk/util/DebugLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 77
    .end local v5           #e:Ljava/io/IOException;
    :cond_5
    :try_start_5
    new-instance v9, Lcom/huawei/android/multiscreen/dlna/sdk/xml/SaxHandler/DocHandler;

    move/from16 v0, p1

    move/from16 v1, p2

    invoke-direct {v9, v14, v0, v1}, Lcom/huawei/android/multiscreen/dlna/sdk/xml/SaxHandler/DocHandler;-><init>(Lorg/xml/sax/XMLReader;IZ)V

    .line 78
    .local v9, handler:Lcom/huawei/android/multiscreen/dlna/sdk/xml/SaxHandler/DocHandler;
    invoke-interface {v14, v9}, Lorg/xml/sax/XMLReader;->setContentHandler(Lorg/xml/sax/ContentHandler;)V

    .line 79
    new-instance v11, Lorg/xml/sax/InputSource;

    invoke-direct {v11, v4}, Lorg/xml/sax/InputSource;-><init>(Ljava/io/InputStream;)V

    .line 80
    .local v11, input:Lorg/xml/sax/InputSource;
    invoke-interface {v14, v11}, Lorg/xml/sax/XMLReader;->parse(Lorg/xml/sax/InputSource;)V

    .line 82
    invoke-virtual {v9}, Lcom/huawei/android/multiscreen/dlna/sdk/xml/SaxHandler/DocHandler;->getSQLs()Ljava/util/List;

    move-result-object v17

    .line 83
    .local v17, sqls:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {v9}, Lcom/huawei/android/multiscreen/dlna/sdk/xml/SaxHandler/DocHandler;->getValues()Ljava/util/List;

    move-result-object v18

    .line 84
    .local v18, values:Ljava/util/List;,"Ljava/util/List<[Ljava/lang/String;>;"
    invoke-virtual {v9}, Lcom/huawei/android/multiscreen/dlna/sdk/xml/SaxHandler/DocHandler;->getEvent()B

    move-result v2

    .line 85
    .local v2, affectedTableEvent:B
    new-instance v15, Lcom/huawei/android/multiscreen/dlna/sdk/xml/ParseResult;

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-direct {v15, v0, v1, v2}, Lcom/huawei/android/multiscreen/dlna/sdk/xml/ParseResult;-><init>(Ljava/util/List;Ljava/util/List;B)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_5 .. :try_end_5} :catch_15
    .catch Ljavax/xml/parsers/FactoryConfigurationError; {:try_start_5 .. :try_end_5} :catch_14
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_5 .. :try_end_5} :catch_13
    .catch Lorg/xml/sax/SAXException; {:try_start_5 .. :try_end_5} :catch_12
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_11
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_10

    .line 102
    .local v15, ret:Lcom/huawei/android/multiscreen/dlna/sdk/xml/ParseResult;
    if-eqz v4, :cond_0

    .line 106
    :try_start_6
    invoke-virtual {v4}, Ljava/io/ByteArrayInputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_2

    goto :goto_0

    .line 108
    :catch_2
    move-exception v5

    .line 110
    .restart local v5       #e:Ljava/io/IOException;
    const-string v19, "XmlSAXParser"

    const-string v20, "parseXML() has IOException"

    invoke-static/range {v19 .. v20}, Lcom/huawei/android/multiscreen/dlna/sdk/util/DebugLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 88
    .end local v2           #affectedTableEvent:B
    .end local v4           #byteStream:Ljava/io/ByteArrayInputStream;
    .end local v5           #e:Ljava/io/IOException;
    .end local v7           #factory:Ljavax/xml/parsers/SAXParserFactory;
    .end local v9           #handler:Lcom/huawei/android/multiscreen/dlna/sdk/xml/SaxHandler/DocHandler;
    .end local v11           #input:Lorg/xml/sax/InputSource;
    .end local v12           #parser:Ljavax/xml/parsers/SAXParser;
    .end local v14           #reader:Lorg/xml/sax/XMLReader;
    .end local v15           #ret:Lcom/huawei/android/multiscreen/dlna/sdk/xml/ParseResult;
    .end local v17           #sqls:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    .end local v18           #values:Ljava/util/List;,"Ljava/util/List<[Ljava/lang/String;>;"
    .restart local v3       #byteStream:Ljava/io/ByteArrayInputStream;
    :catch_3
    move-exception v6

    .line 89
    .local v6, e1:Ljava/io/UnsupportedEncodingException;
    :goto_3
    :try_start_7
    const-string v19, "XmlSAXParser"

    const-string v20, "parseMediaInfoFromXml hanppened UnsupportedEncodingException"

    invoke-static/range {v19 .. v20}, Lcom/huawei/android/multiscreen/dlna/sdk/util/DebugLog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 102
    if-eqz v3, :cond_6

    .line 106
    :try_start_8
    invoke-virtual {v3}, Ljava/io/ByteArrayInputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_4

    .line 114
    .end local v6           #e1:Ljava/io/UnsupportedEncodingException;
    :cond_6
    :goto_4
    const/4 v15, 0x0

    goto/16 :goto_0

    .line 108
    .restart local v6       #e1:Ljava/io/UnsupportedEncodingException;
    :catch_4
    move-exception v5

    .line 110
    .restart local v5       #e:Ljava/io/IOException;
    const-string v19, "XmlSAXParser"

    const-string v20, "parseXML() has IOException"

    invoke-static/range {v19 .. v20}, Lcom/huawei/android/multiscreen/dlna/sdk/util/DebugLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    .line 90
    .end local v5           #e:Ljava/io/IOException;
    .end local v6           #e1:Ljava/io/UnsupportedEncodingException;
    :catch_5
    move-exception v8

    .line 91
    .local v8, fcex:Ljavax/xml/parsers/FactoryConfigurationError;
    :goto_5
    :try_start_9
    const-string v19, "XmlSAXParser"

    const-string v20, "XmlSAXParser.parseXml FactoryConfigurationError"

    invoke-static/range {v19 .. v20}, Lcom/huawei/android/multiscreen/dlna/sdk/util/DebugLog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    .line 102
    if-eqz v3, :cond_6

    .line 106
    :try_start_a
    invoke-virtual {v3}, Ljava/io/ByteArrayInputStream;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_6

    goto :goto_4

    .line 108
    :catch_6
    move-exception v5

    .line 110
    .restart local v5       #e:Ljava/io/IOException;
    const-string v19, "XmlSAXParser"

    const-string v20, "parseXML() has IOException"

    invoke-static/range {v19 .. v20}, Lcom/huawei/android/multiscreen/dlna/sdk/util/DebugLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    .line 92
    .end local v5           #e:Ljava/io/IOException;
    .end local v8           #fcex:Ljavax/xml/parsers/FactoryConfigurationError;
    :catch_7
    move-exception v13

    .line 93
    .local v13, pcex:Ljavax/xml/parsers/ParserConfigurationException;
    :goto_6
    :try_start_b
    const-string v19, "XmlSAXParser"

    const-string v20, "XmlSAXParser.parseXml ParserConfigurationException"

    invoke-static/range {v19 .. v20}, Lcom/huawei/android/multiscreen/dlna/sdk/util/DebugLog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    .line 102
    if-eqz v3, :cond_6

    .line 106
    :try_start_c
    invoke-virtual {v3}, Ljava/io/ByteArrayInputStream;->close()V
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_8

    goto :goto_4

    .line 108
    :catch_8
    move-exception v5

    .line 110
    .restart local v5       #e:Ljava/io/IOException;
    const-string v19, "XmlSAXParser"

    const-string v20, "parseXML() has IOException"

    invoke-static/range {v19 .. v20}, Lcom/huawei/android/multiscreen/dlna/sdk/util/DebugLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    .line 94
    .end local v5           #e:Ljava/io/IOException;
    .end local v13           #pcex:Ljavax/xml/parsers/ParserConfigurationException;
    :catch_9
    move-exception v16

    .line 95
    .local v16, sex:Lorg/xml/sax/SAXException;
    :goto_7
    :try_start_d
    const-string v19, "XmlSAXParser"

    const-string v20, "XmlSAXParser.parseXml SAXException"

    invoke-static/range {v19 .. v20}, Lcom/huawei/android/multiscreen/dlna/sdk/util/DebugLog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_0

    .line 102
    if-eqz v3, :cond_6

    .line 106
    :try_start_e
    invoke-virtual {v3}, Ljava/io/ByteArrayInputStream;->close()V
    :try_end_e
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_e} :catch_a

    goto :goto_4

    .line 108
    :catch_a
    move-exception v5

    .line 110
    .restart local v5       #e:Ljava/io/IOException;
    const-string v19, "XmlSAXParser"

    const-string v20, "parseXML() has IOException"

    invoke-static/range {v19 .. v20}, Lcom/huawei/android/multiscreen/dlna/sdk/util/DebugLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    .line 96
    .end local v5           #e:Ljava/io/IOException;
    .end local v16           #sex:Lorg/xml/sax/SAXException;
    :catch_b
    move-exception v10

    .line 97
    .local v10, iex:Ljava/io/IOException;
    :goto_8
    :try_start_f
    const-string v19, "XmlSAXParser"

    const-string v20, "XmlSAXParser.parseXml IOException"

    invoke-static/range {v19 .. v20}, Lcom/huawei/android/multiscreen/dlna/sdk/util/DebugLog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_0

    .line 102
    if-eqz v3, :cond_6

    .line 106
    :try_start_10
    invoke-virtual {v3}, Ljava/io/ByteArrayInputStream;->close()V
    :try_end_10
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_10} :catch_c

    goto :goto_4

    .line 108
    :catch_c
    move-exception v5

    .line 110
    .restart local v5       #e:Ljava/io/IOException;
    const-string v19, "XmlSAXParser"

    const-string v20, "parseXML() has IOException"

    invoke-static/range {v19 .. v20}, Lcom/huawei/android/multiscreen/dlna/sdk/util/DebugLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    .line 98
    .end local v5           #e:Ljava/io/IOException;
    .end local v10           #iex:Ljava/io/IOException;
    :catch_d
    move-exception v5

    .line 99
    .local v5, e:Ljava/lang/Exception;
    :goto_9
    :try_start_11
    const-string v19, "XmlSAXParser"

    const-string v20, "XmlSAXParser.parseXml Exception"

    invoke-static/range {v19 .. v20}, Lcom/huawei/android/multiscreen/dlna/sdk/util/DebugLog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_0

    .line 102
    if-eqz v3, :cond_6

    .line 106
    :try_start_12
    invoke-virtual {v3}, Ljava/io/ByteArrayInputStream;->close()V
    :try_end_12
    .catch Ljava/io/IOException; {:try_start_12 .. :try_end_12} :catch_e

    goto :goto_4

    .line 108
    :catch_e
    move-exception v5

    .line 110
    .local v5, e:Ljava/io/IOException;
    const-string v19, "XmlSAXParser"

    const-string v20, "parseXML() has IOException"

    invoke-static/range {v19 .. v20}, Lcom/huawei/android/multiscreen/dlna/sdk/util/DebugLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    .line 100
    .end local v5           #e:Ljava/io/IOException;
    :catchall_0
    move-exception v19

    .line 102
    :goto_a
    if-eqz v3, :cond_7

    .line 106
    :try_start_13
    invoke-virtual {v3}, Ljava/io/ByteArrayInputStream;->close()V
    :try_end_13
    .catch Ljava/io/IOException; {:try_start_13 .. :try_end_13} :catch_f

    .line 113
    :cond_7
    :goto_b
    throw v19

    .line 108
    :catch_f
    move-exception v5

    .line 110
    .restart local v5       #e:Ljava/io/IOException;
    const-string v20, "XmlSAXParser"

    const-string v21, "parseXML() has IOException"

    invoke-static/range {v20 .. v21}, Lcom/huawei/android/multiscreen/dlna/sdk/util/DebugLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_b

    .line 100
    .end local v3           #byteStream:Ljava/io/ByteArrayInputStream;
    .end local v5           #e:Ljava/io/IOException;
    .restart local v4       #byteStream:Ljava/io/ByteArrayInputStream;
    :catchall_1
    move-exception v19

    move-object v3, v4

    .end local v4           #byteStream:Ljava/io/ByteArrayInputStream;
    .restart local v3       #byteStream:Ljava/io/ByteArrayInputStream;
    goto :goto_a

    .line 98
    .end local v3           #byteStream:Ljava/io/ByteArrayInputStream;
    .restart local v4       #byteStream:Ljava/io/ByteArrayInputStream;
    :catch_10
    move-exception v5

    move-object v3, v4

    .end local v4           #byteStream:Ljava/io/ByteArrayInputStream;
    .restart local v3       #byteStream:Ljava/io/ByteArrayInputStream;
    goto :goto_9

    .line 96
    .end local v3           #byteStream:Ljava/io/ByteArrayInputStream;
    .restart local v4       #byteStream:Ljava/io/ByteArrayInputStream;
    :catch_11
    move-exception v10

    move-object v3, v4

    .end local v4           #byteStream:Ljava/io/ByteArrayInputStream;
    .restart local v3       #byteStream:Ljava/io/ByteArrayInputStream;
    goto :goto_8

    .line 94
    .end local v3           #byteStream:Ljava/io/ByteArrayInputStream;
    .restart local v4       #byteStream:Ljava/io/ByteArrayInputStream;
    :catch_12
    move-exception v16

    move-object v3, v4

    .end local v4           #byteStream:Ljava/io/ByteArrayInputStream;
    .restart local v3       #byteStream:Ljava/io/ByteArrayInputStream;
    goto :goto_7

    .line 92
    .end local v3           #byteStream:Ljava/io/ByteArrayInputStream;
    .restart local v4       #byteStream:Ljava/io/ByteArrayInputStream;
    :catch_13
    move-exception v13

    move-object v3, v4

    .end local v4           #byteStream:Ljava/io/ByteArrayInputStream;
    .restart local v3       #byteStream:Ljava/io/ByteArrayInputStream;
    goto :goto_6

    .line 90
    .end local v3           #byteStream:Ljava/io/ByteArrayInputStream;
    .restart local v4       #byteStream:Ljava/io/ByteArrayInputStream;
    :catch_14
    move-exception v8

    move-object v3, v4

    .end local v4           #byteStream:Ljava/io/ByteArrayInputStream;
    .restart local v3       #byteStream:Ljava/io/ByteArrayInputStream;
    goto/16 :goto_5

    .line 88
    .end local v3           #byteStream:Ljava/io/ByteArrayInputStream;
    .restart local v4       #byteStream:Ljava/io/ByteArrayInputStream;
    :catch_15
    move-exception v6

    move-object v3, v4

    .end local v4           #byteStream:Ljava/io/ByteArrayInputStream;
    .restart local v3       #byteStream:Ljava/io/ByteArrayInputStream;
    goto/16 :goto_3
.end method
