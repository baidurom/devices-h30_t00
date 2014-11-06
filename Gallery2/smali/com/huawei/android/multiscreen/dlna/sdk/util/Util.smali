.class public Lcom/huawei/android/multiscreen/dlna/sdk/util/Util;
.super Ljava/lang/Object;
.source "Util.java"


# static fields
.field private static final ENCODING:Ljava/lang/String; = "utf-8"

.field private static final TAG:Ljava/lang/String; = "Util"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 37
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getMediaTypeFromUpnpClass(Ljava/lang/String;)Lcom/huawei/android/multiscreen/dlna/sdk/common/EMediaInfoType;
    .locals 1
    .parameter "upnpClass"

    .prologue
    .line 118
    sget-object v0, Lcom/huawei/android/multiscreen/dlna/sdk/constant/DLNAXMLConst;->IMAGE_CLASS:Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 119
    sget-object v0, Lcom/huawei/android/multiscreen/dlna/sdk/common/EMediaInfoType;->IMAGE:Lcom/huawei/android/multiscreen/dlna/sdk/common/EMediaInfoType;

    .line 125
    :goto_0
    return-object v0

    .line 120
    :cond_0
    sget-object v0, Lcom/huawei/android/multiscreen/dlna/sdk/constant/DLNAXMLConst;->AUDIO_CLASS:Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 121
    sget-object v0, Lcom/huawei/android/multiscreen/dlna/sdk/common/EMediaInfoType;->AUDIO:Lcom/huawei/android/multiscreen/dlna/sdk/common/EMediaInfoType;

    goto :goto_0

    .line 122
    :cond_1
    sget-object v0, Lcom/huawei/android/multiscreen/dlna/sdk/constant/DLNAXMLConst;->VIDEO_CLASS:Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 123
    sget-object v0, Lcom/huawei/android/multiscreen/dlna/sdk/common/EMediaInfoType;->VIDEO:Lcom/huawei/android/multiscreen/dlna/sdk/common/EMediaInfoType;

    goto :goto_0

    .line 125
    :cond_2
    sget-object v0, Lcom/huawei/android/multiscreen/dlna/sdk/common/EMediaInfoType;->FOLDER:Lcom/huawei/android/multiscreen/dlna/sdk/common/EMediaInfoType;

    goto :goto_0
.end method

.method public static getScale(Landroid/graphics/Matrix;)F
    .locals 2
    .parameter "matrix"

    .prologue
    .line 203
    const/16 v1, 0x9

    new-array v0, v1, [F

    .line 204
    .local v0, mMatrixValues:[F
    invoke-virtual {p0, v0}, Landroid/graphics/Matrix;->getValues([F)V

    .line 205
    const/4 v1, 0x0

    aget v1, v0, v1

    return v1
.end method

.method public static getX(Landroid/graphics/Matrix;)F
    .locals 2
    .parameter "matrix"

    .prologue
    .line 209
    const/16 v1, 0x9

    new-array v0, v1, [F

    .line 210
    .local v0, mMatrixValues:[F
    invoke-virtual {p0, v0}, Landroid/graphics/Matrix;->getValues([F)V

    .line 211
    const/4 v1, 0x2

    aget v1, v0, v1

    return v1
.end method

.method public static getY(Landroid/graphics/Matrix;)F
    .locals 2
    .parameter "matrix"

    .prologue
    .line 215
    const/16 v1, 0x9

    new-array v0, v1, [F

    .line 216
    .local v0, mMatrixValues:[F
    invoke-virtual {p0, v0}, Landroid/graphics/Matrix;->getValues([F)V

    .line 217
    const/4 v1, 0x5

    aget v1, v0, v1

    return v1
.end method

.method public static parseMediaInfoFromXml(Ljava/lang/String;)Lcom/huawei/android/multiscreen/dlna/sdk/common/MediaInfo;
    .locals 18
    .parameter "content"

    .prologue
    .line 221
    const/4 v10, 0x0

    .line 222
    .local v10, media:Lcom/huawei/android/multiscreen/dlna/sdk/common/DmsMediaInfo;
    if-eqz p0, :cond_0

    invoke-virtual/range {p0 .. p0}, Ljava/lang/String;->length()I

    move-result v15

    if-nez v15, :cond_1

    .line 223
    :cond_0
    const/4 v15, 0x0

    .line 287
    :goto_0
    return-object v15

    .line 225
    :cond_1
    const/4 v1, 0x0

    .line 226
    .local v1, byteStream:Ljava/io/ByteArrayInputStream;
    const/4 v5, 0x0

    .line 230
    .local v5, doc:Lorg/w3c/dom/Document;
    :try_start_0
    new-instance v2, Ljava/io/ByteArrayInputStream;

    const-string v15, "utf-8"

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v15

    invoke-direct {v2, v15}, Ljava/io/ByteArrayInputStream;-><init>([B)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_11
    .catch Lorg/xml/sax/SAXException; {:try_start_0 .. :try_end_0} :catch_f
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_5
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_0 .. :try_end_0} :catch_7

    .line 232
    .end local v1           #byteStream:Ljava/io/ByteArrayInputStream;
    .local v2, byteStream:Ljava/io/ByteArrayInputStream;
    :try_start_1
    invoke-static {}, Ljavax/xml/parsers/DocumentBuilderFactory;->newInstance()Ljavax/xml/parsers/DocumentBuilderFactory;

    move-result-object v8

    .line 234
    .local v8, factory:Ljavax/xml/parsers/DocumentBuilderFactory;
    invoke-virtual {v8}, Ljavax/xml/parsers/DocumentBuilderFactory;->newDocumentBuilder()Ljavax/xml/parsers/DocumentBuilder;

    move-result-object v15

    invoke-virtual {v15, v2}, Ljavax/xml/parsers/DocumentBuilder;->parse(Ljava/io/InputStream;)Lorg/w3c/dom/Document;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_12
    .catch Lorg/xml/sax/SAXException; {:try_start_1 .. :try_end_1} :catch_10
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_d
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_1 .. :try_end_1} :catch_b

    move-result-object v5

    .line 235
    if-nez v5, :cond_3

    .line 280
    if-eqz v2, :cond_2

    .line 281
    :try_start_2
    invoke-virtual {v2}, Ljava/io/ByteArrayInputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 236
    :cond_2
    :goto_1
    const/4 v15, 0x0

    goto :goto_0

    .line 283
    :catch_0
    move-exception v6

    .line 284
    .local v6, e:Ljava/io/IOException;
    const-string v15, "Util"

    const-string v16, "parseMediaInfoFromXml hanppened IOException"

    invoke-static/range {v15 .. v16}, Lcom/huawei/android/multiscreen/dlna/sdk/util/DebugLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 238
    .end local v6           #e:Ljava/io/IOException;
    :cond_3
    :try_start_3
    invoke-interface {v5}, Lorg/w3c/dom/Document;->getDocumentElement()Lorg/w3c/dom/Element;

    move-result-object v14

    .line 239
    .local v14, root:Lorg/w3c/dom/Element;
    const-string v15, "item"

    invoke-interface {v14, v15}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v13

    .line 240
    .local v13, nodes:Lorg/w3c/dom/NodeList;
    if-eqz v13, :cond_4

    invoke-interface {v13}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v15

    if-lez v15, :cond_4

    .line 241
    const/4 v15, 0x0

    invoke-interface {v13, v15}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v12

    check-cast v12, Lorg/w3c/dom/Element;

    .line 242
    .local v12, node:Lorg/w3c/dom/Element;
    new-instance v11, Lcom/huawei/android/multiscreen/dlna/sdk/common/DmsMediaInfo;

    invoke-direct {v11}, Lcom/huawei/android/multiscreen/dlna/sdk/common/DmsMediaInfo;-><init>()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_3 .. :try_end_3} :catch_12
    .catch Lorg/xml/sax/SAXException; {:try_start_3 .. :try_end_3} :catch_10
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_d
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_3 .. :try_end_3} :catch_b

    .line 244
    .end local v10           #media:Lcom/huawei/android/multiscreen/dlna/sdk/common/DmsMediaInfo;
    .local v11, media:Lcom/huawei/android/multiscreen/dlna/sdk/common/DmsMediaInfo;
    :try_start_4
    const-string v15, "id"

    invoke-interface {v12, v15}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v11, v15}, Lcom/huawei/android/multiscreen/dlna/sdk/common/DmsMediaInfo;->setItemId(Ljava/lang/String;)V

    .line 245
    const-string v15, "parentID"

    invoke-interface {v12, v15}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v11, v15}, Lcom/huawei/android/multiscreen/dlna/sdk/common/DmsMediaInfo;->setItemParentId(Ljava/lang/String;)V

    .line 246
    invoke-interface {v12}, Lorg/w3c/dom/Element;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v4

    .line 247
    .local v4, children:Lorg/w3c/dom/NodeList;
    const/4 v9, 0x0

    .local v9, i:I
    :goto_2
    invoke-interface {v4}, Lorg/w3c/dom/NodeList;->getLength()I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Lorg/xml/sax/SAXException; {:try_start_4 .. :try_end_4} :catch_3
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_e
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_4 .. :try_end_4} :catch_c

    move-result v15

    if-lt v9, v15, :cond_6

    move-object v10, v11

    .line 280
    .end local v4           #children:Lorg/w3c/dom/NodeList;
    .end local v9           #i:I
    .end local v11           #media:Lcom/huawei/android/multiscreen/dlna/sdk/common/DmsMediaInfo;
    .end local v12           #node:Lorg/w3c/dom/Element;
    .restart local v10       #media:Lcom/huawei/android/multiscreen/dlna/sdk/common/DmsMediaInfo;
    :cond_4
    if-eqz v2, :cond_b

    .line 281
    :try_start_5
    invoke-virtual {v2}, Ljava/io/ByteArrayInputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_a

    move-object v1, v2

    .end local v2           #byteStream:Ljava/io/ByteArrayInputStream;
    .end local v8           #factory:Ljavax/xml/parsers/DocumentBuilderFactory;
    .end local v13           #nodes:Lorg/w3c/dom/NodeList;
    .end local v14           #root:Lorg/w3c/dom/Element;
    .restart local v1       #byteStream:Ljava/io/ByteArrayInputStream;
    :cond_5
    :goto_3
    move-object v15, v10

    .line 287
    goto :goto_0

    .line 248
    .end local v1           #byteStream:Ljava/io/ByteArrayInputStream;
    .end local v10           #media:Lcom/huawei/android/multiscreen/dlna/sdk/common/DmsMediaInfo;
    .restart local v2       #byteStream:Ljava/io/ByteArrayInputStream;
    .restart local v4       #children:Lorg/w3c/dom/NodeList;
    .restart local v8       #factory:Ljavax/xml/parsers/DocumentBuilderFactory;
    .restart local v9       #i:I
    .restart local v11       #media:Lcom/huawei/android/multiscreen/dlna/sdk/common/DmsMediaInfo;
    .restart local v12       #node:Lorg/w3c/dom/Element;
    .restart local v13       #nodes:Lorg/w3c/dom/NodeList;
    .restart local v14       #root:Lorg/w3c/dom/Element;
    :cond_6
    :try_start_6
    invoke-interface {v4, v9}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v3

    .line 249
    .local v3, child:Lorg/w3c/dom/Node;
    const-string v15, "dc:title"

    invoke-interface {v3}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_8

    .line 250
    invoke-interface {v3}, Lorg/w3c/dom/Node;->getTextContent()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v11, v15}, Lcom/huawei/android/multiscreen/dlna/sdk/common/DmsMediaInfo;->setTitle(Ljava/lang/String;)V

    .line 247
    :cond_7
    :goto_4
    add-int/lit8 v9, v9, 0x1

    goto :goto_2

    .line 251
    :cond_8
    const-string v15, "upnp:class"

    invoke-interface {v3}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_9

    .line 252
    invoke-interface {v3}, Lorg/w3c/dom/Node;->getTextContent()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v11, v15}, Lcom/huawei/android/multiscreen/dlna/sdk/common/DmsMediaInfo;->setUpnpClass(Ljava/lang/String;)V

    .line 254
    invoke-virtual {v11}, Lcom/huawei/android/multiscreen/dlna/sdk/common/DmsMediaInfo;->getUpnpClass()Ljava/lang/String;

    move-result-object v15

    .line 253
    invoke-static {v15}, Lcom/huawei/android/multiscreen/dlna/sdk/util/Util;->getMediaTypeFromUpnpClass(Ljava/lang/String;)Lcom/huawei/android/multiscreen/dlna/sdk/common/EMediaInfoType;

    move-result-object v15

    invoke-virtual {v11, v15}, Lcom/huawei/android/multiscreen/dlna/sdk/common/DmsMediaInfo;->setMediaInfoType(Lcom/huawei/android/multiscreen/dlna/sdk/common/EMediaInfoType;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_6 .. :try_end_6} :catch_1
    .catch Lorg/xml/sax/SAXException; {:try_start_6 .. :try_end_6} :catch_3
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_e
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_6 .. :try_end_6} :catch_c

    goto :goto_4

    .line 265
    .end local v3           #child:Lorg/w3c/dom/Node;
    .end local v4           #children:Lorg/w3c/dom/NodeList;
    .end local v9           #i:I
    :catch_1
    move-exception v7

    move-object v1, v2

    .end local v2           #byteStream:Ljava/io/ByteArrayInputStream;
    .restart local v1       #byteStream:Ljava/io/ByteArrayInputStream;
    move-object v10, v11

    .line 266
    .end local v8           #factory:Ljavax/xml/parsers/DocumentBuilderFactory;
    .end local v11           #media:Lcom/huawei/android/multiscreen/dlna/sdk/common/DmsMediaInfo;
    .end local v12           #node:Lorg/w3c/dom/Element;
    .end local v13           #nodes:Lorg/w3c/dom/NodeList;
    .end local v14           #root:Lorg/w3c/dom/Element;
    .local v7, e1:Ljava/io/UnsupportedEncodingException;
    .restart local v10       #media:Lcom/huawei/android/multiscreen/dlna/sdk/common/DmsMediaInfo;
    :goto_5
    :try_start_7
    const-string v15, "Util"

    .line 267
    const-string v16, "parseMediaInfoFromXml hanppened UnsupportedEncodingException"

    .line 266
    invoke-static/range {v15 .. v16}, Lcom/huawei/android/multiscreen/dlna/sdk/util/DebugLog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 280
    if-eqz v1, :cond_5

    .line 281
    :try_start_8
    invoke-virtual {v1}, Ljava/io/ByteArrayInputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_2

    goto :goto_3

    .line 283
    :catch_2
    move-exception v6

    .line 284
    .restart local v6       #e:Ljava/io/IOException;
    const-string v15, "Util"

    const-string v16, "parseMediaInfoFromXml hanppened IOException"

    invoke-static/range {v15 .. v16}, Lcom/huawei/android/multiscreen/dlna/sdk/util/DebugLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 255
    .end local v1           #byteStream:Ljava/io/ByteArrayInputStream;
    .end local v6           #e:Ljava/io/IOException;
    .end local v7           #e1:Ljava/io/UnsupportedEncodingException;
    .end local v10           #media:Lcom/huawei/android/multiscreen/dlna/sdk/common/DmsMediaInfo;
    .restart local v2       #byteStream:Ljava/io/ByteArrayInputStream;
    .restart local v3       #child:Lorg/w3c/dom/Node;
    .restart local v4       #children:Lorg/w3c/dom/NodeList;
    .restart local v8       #factory:Ljavax/xml/parsers/DocumentBuilderFactory;
    .restart local v9       #i:I
    .restart local v11       #media:Lcom/huawei/android/multiscreen/dlna/sdk/common/DmsMediaInfo;
    .restart local v12       #node:Lorg/w3c/dom/Element;
    .restart local v13       #nodes:Lorg/w3c/dom/NodeList;
    .restart local v14       #root:Lorg/w3c/dom/Element;
    :cond_9
    :try_start_9
    const-string v15, "res"

    invoke-interface {v3}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_7

    .line 256
    move-object v0, v3

    check-cast v0, Lorg/w3c/dom/Element;

    move-object v15, v0

    .line 257
    const-string v16, "protocolInfo"

    invoke-interface/range {v15 .. v16}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 256
    invoke-virtual {v11, v15}, Lcom/huawei/android/multiscreen/dlna/sdk/common/DmsMediaInfo;->setMimeType(Ljava/lang/String;)V

    .line 259
    invoke-interface {v3}, Lorg/w3c/dom/Node;->getTextContent()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v11, v15}, Lcom/huawei/android/multiscreen/dlna/sdk/common/DmsMediaInfo;->setUrl(Ljava/lang/String;)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_2
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_9 .. :try_end_9} :catch_1
    .catch Lorg/xml/sax/SAXException; {:try_start_9 .. :try_end_9} :catch_3
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_e
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_9 .. :try_end_9} :catch_c

    goto :goto_4

    .line 268
    .end local v3           #child:Lorg/w3c/dom/Node;
    .end local v4           #children:Lorg/w3c/dom/NodeList;
    .end local v9           #i:I
    :catch_3
    move-exception v6

    move-object v1, v2

    .end local v2           #byteStream:Ljava/io/ByteArrayInputStream;
    .restart local v1       #byteStream:Ljava/io/ByteArrayInputStream;
    move-object v10, v11

    .line 269
    .end local v8           #factory:Ljavax/xml/parsers/DocumentBuilderFactory;
    .end local v11           #media:Lcom/huawei/android/multiscreen/dlna/sdk/common/DmsMediaInfo;
    .end local v12           #node:Lorg/w3c/dom/Element;
    .end local v13           #nodes:Lorg/w3c/dom/NodeList;
    .end local v14           #root:Lorg/w3c/dom/Element;
    .local v6, e:Lorg/xml/sax/SAXException;
    .restart local v10       #media:Lcom/huawei/android/multiscreen/dlna/sdk/common/DmsMediaInfo;
    :goto_6
    :try_start_a
    const-string v15, "Util"

    const-string v16, "parseMediaInfoFromXml hanppened SAXException"

    invoke-static/range {v15 .. v16}, Lcom/huawei/android/multiscreen/dlna/sdk/util/DebugLog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    .line 280
    if-eqz v1, :cond_5

    .line 281
    :try_start_b
    invoke-virtual {v1}, Ljava/io/ByteArrayInputStream;->close()V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_4

    goto/16 :goto_3

    .line 283
    :catch_4
    move-exception v6

    .line 284
    .local v6, e:Ljava/io/IOException;
    const-string v15, "Util"

    const-string v16, "parseMediaInfoFromXml hanppened IOException"

    invoke-static/range {v15 .. v16}, Lcom/huawei/android/multiscreen/dlna/sdk/util/DebugLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3

    .line 271
    .end local v6           #e:Ljava/io/IOException;
    :catch_5
    move-exception v6

    .line 272
    .restart local v6       #e:Ljava/io/IOException;
    :goto_7
    :try_start_c
    const-string v15, "Util"

    const-string v16, "parseMediaInfoFromXml hanppened IOException"

    invoke-static/range {v15 .. v16}, Lcom/huawei/android/multiscreen/dlna/sdk/util/DebugLog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    .line 280
    if-eqz v1, :cond_5

    .line 281
    :try_start_d
    invoke-virtual {v1}, Ljava/io/ByteArrayInputStream;->close()V
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_6

    goto/16 :goto_3

    .line 283
    :catch_6
    move-exception v6

    .line 284
    const-string v15, "Util"

    const-string v16, "parseMediaInfoFromXml hanppened IOException"

    invoke-static/range {v15 .. v16}, Lcom/huawei/android/multiscreen/dlna/sdk/util/DebugLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3

    .line 274
    .end local v6           #e:Ljava/io/IOException;
    :catch_7
    move-exception v6

    .line 275
    .local v6, e:Ljavax/xml/parsers/ParserConfigurationException;
    :goto_8
    :try_start_e
    const-string v15, "Util"

    .line 276
    const-string v16, "parseMediaInfoFromXml hanppened ParserConfigurationException"

    .line 275
    invoke-static/range {v15 .. v16}, Lcom/huawei/android/multiscreen/dlna/sdk/util/DebugLog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_0

    .line 280
    if-eqz v1, :cond_5

    .line 281
    :try_start_f
    invoke-virtual {v1}, Ljava/io/ByteArrayInputStream;->close()V
    :try_end_f
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_f} :catch_8

    goto/16 :goto_3

    .line 283
    :catch_8
    move-exception v6

    .line 284
    .local v6, e:Ljava/io/IOException;
    const-string v15, "Util"

    const-string v16, "parseMediaInfoFromXml hanppened IOException"

    invoke-static/range {v15 .. v16}, Lcom/huawei/android/multiscreen/dlna/sdk/util/DebugLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3

    .line 278
    .end local v6           #e:Ljava/io/IOException;
    :catchall_0
    move-exception v15

    .line 280
    :goto_9
    if-eqz v1, :cond_a

    .line 281
    :try_start_10
    invoke-virtual {v1}, Ljava/io/ByteArrayInputStream;->close()V
    :try_end_10
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_10} :catch_9

    .line 286
    :cond_a
    :goto_a
    throw v15

    .line 283
    :catch_9
    move-exception v6

    .line 284
    .restart local v6       #e:Ljava/io/IOException;
    const-string v16, "Util"

    const-string v17, "parseMediaInfoFromXml hanppened IOException"

    invoke-static/range {v16 .. v17}, Lcom/huawei/android/multiscreen/dlna/sdk/util/DebugLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_a

    .line 283
    .end local v1           #byteStream:Ljava/io/ByteArrayInputStream;
    .end local v6           #e:Ljava/io/IOException;
    .restart local v2       #byteStream:Ljava/io/ByteArrayInputStream;
    .restart local v8       #factory:Ljavax/xml/parsers/DocumentBuilderFactory;
    .restart local v13       #nodes:Lorg/w3c/dom/NodeList;
    .restart local v14       #root:Lorg/w3c/dom/Element;
    :catch_a
    move-exception v6

    .line 284
    .restart local v6       #e:Ljava/io/IOException;
    const-string v15, "Util"

    const-string v16, "parseMediaInfoFromXml hanppened IOException"

    invoke-static/range {v15 .. v16}, Lcom/huawei/android/multiscreen/dlna/sdk/util/DebugLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .end local v6           #e:Ljava/io/IOException;
    :cond_b
    move-object v1, v2

    .end local v2           #byteStream:Ljava/io/ByteArrayInputStream;
    .restart local v1       #byteStream:Ljava/io/ByteArrayInputStream;
    goto/16 :goto_3

    .line 278
    .end local v1           #byteStream:Ljava/io/ByteArrayInputStream;
    .end local v8           #factory:Ljavax/xml/parsers/DocumentBuilderFactory;
    .end local v13           #nodes:Lorg/w3c/dom/NodeList;
    .end local v14           #root:Lorg/w3c/dom/Element;
    .restart local v2       #byteStream:Ljava/io/ByteArrayInputStream;
    :catchall_1
    move-exception v15

    move-object v1, v2

    .end local v2           #byteStream:Ljava/io/ByteArrayInputStream;
    .restart local v1       #byteStream:Ljava/io/ByteArrayInputStream;
    goto :goto_9

    .end local v1           #byteStream:Ljava/io/ByteArrayInputStream;
    .end local v10           #media:Lcom/huawei/android/multiscreen/dlna/sdk/common/DmsMediaInfo;
    .restart local v2       #byteStream:Ljava/io/ByteArrayInputStream;
    .restart local v8       #factory:Ljavax/xml/parsers/DocumentBuilderFactory;
    .restart local v11       #media:Lcom/huawei/android/multiscreen/dlna/sdk/common/DmsMediaInfo;
    .restart local v12       #node:Lorg/w3c/dom/Element;
    .restart local v13       #nodes:Lorg/w3c/dom/NodeList;
    .restart local v14       #root:Lorg/w3c/dom/Element;
    :catchall_2
    move-exception v15

    move-object v1, v2

    .end local v2           #byteStream:Ljava/io/ByteArrayInputStream;
    .restart local v1       #byteStream:Ljava/io/ByteArrayInputStream;
    move-object v10, v11

    .end local v11           #media:Lcom/huawei/android/multiscreen/dlna/sdk/common/DmsMediaInfo;
    .restart local v10       #media:Lcom/huawei/android/multiscreen/dlna/sdk/common/DmsMediaInfo;
    goto :goto_9

    .line 274
    .end local v1           #byteStream:Ljava/io/ByteArrayInputStream;
    .end local v8           #factory:Ljavax/xml/parsers/DocumentBuilderFactory;
    .end local v12           #node:Lorg/w3c/dom/Element;
    .end local v13           #nodes:Lorg/w3c/dom/NodeList;
    .end local v14           #root:Lorg/w3c/dom/Element;
    .restart local v2       #byteStream:Ljava/io/ByteArrayInputStream;
    :catch_b
    move-exception v6

    move-object v1, v2

    .end local v2           #byteStream:Ljava/io/ByteArrayInputStream;
    .restart local v1       #byteStream:Ljava/io/ByteArrayInputStream;
    goto :goto_8

    .end local v1           #byteStream:Ljava/io/ByteArrayInputStream;
    .end local v10           #media:Lcom/huawei/android/multiscreen/dlna/sdk/common/DmsMediaInfo;
    .restart local v2       #byteStream:Ljava/io/ByteArrayInputStream;
    .restart local v8       #factory:Ljavax/xml/parsers/DocumentBuilderFactory;
    .restart local v11       #media:Lcom/huawei/android/multiscreen/dlna/sdk/common/DmsMediaInfo;
    .restart local v12       #node:Lorg/w3c/dom/Element;
    .restart local v13       #nodes:Lorg/w3c/dom/NodeList;
    .restart local v14       #root:Lorg/w3c/dom/Element;
    :catch_c
    move-exception v6

    move-object v1, v2

    .end local v2           #byteStream:Ljava/io/ByteArrayInputStream;
    .restart local v1       #byteStream:Ljava/io/ByteArrayInputStream;
    move-object v10, v11

    .end local v11           #media:Lcom/huawei/android/multiscreen/dlna/sdk/common/DmsMediaInfo;
    .restart local v10       #media:Lcom/huawei/android/multiscreen/dlna/sdk/common/DmsMediaInfo;
    goto :goto_8

    .line 271
    .end local v1           #byteStream:Ljava/io/ByteArrayInputStream;
    .end local v8           #factory:Ljavax/xml/parsers/DocumentBuilderFactory;
    .end local v12           #node:Lorg/w3c/dom/Element;
    .end local v13           #nodes:Lorg/w3c/dom/NodeList;
    .end local v14           #root:Lorg/w3c/dom/Element;
    .restart local v2       #byteStream:Ljava/io/ByteArrayInputStream;
    :catch_d
    move-exception v6

    move-object v1, v2

    .end local v2           #byteStream:Ljava/io/ByteArrayInputStream;
    .restart local v1       #byteStream:Ljava/io/ByteArrayInputStream;
    goto :goto_7

    .end local v1           #byteStream:Ljava/io/ByteArrayInputStream;
    .end local v10           #media:Lcom/huawei/android/multiscreen/dlna/sdk/common/DmsMediaInfo;
    .restart local v2       #byteStream:Ljava/io/ByteArrayInputStream;
    .restart local v8       #factory:Ljavax/xml/parsers/DocumentBuilderFactory;
    .restart local v11       #media:Lcom/huawei/android/multiscreen/dlna/sdk/common/DmsMediaInfo;
    .restart local v12       #node:Lorg/w3c/dom/Element;
    .restart local v13       #nodes:Lorg/w3c/dom/NodeList;
    .restart local v14       #root:Lorg/w3c/dom/Element;
    :catch_e
    move-exception v6

    move-object v1, v2

    .end local v2           #byteStream:Ljava/io/ByteArrayInputStream;
    .restart local v1       #byteStream:Ljava/io/ByteArrayInputStream;
    move-object v10, v11

    .end local v11           #media:Lcom/huawei/android/multiscreen/dlna/sdk/common/DmsMediaInfo;
    .restart local v10       #media:Lcom/huawei/android/multiscreen/dlna/sdk/common/DmsMediaInfo;
    goto :goto_7

    .line 268
    .end local v8           #factory:Ljavax/xml/parsers/DocumentBuilderFactory;
    .end local v12           #node:Lorg/w3c/dom/Element;
    .end local v13           #nodes:Lorg/w3c/dom/NodeList;
    .end local v14           #root:Lorg/w3c/dom/Element;
    :catch_f
    move-exception v6

    goto :goto_6

    .end local v1           #byteStream:Ljava/io/ByteArrayInputStream;
    .restart local v2       #byteStream:Ljava/io/ByteArrayInputStream;
    :catch_10
    move-exception v6

    move-object v1, v2

    .end local v2           #byteStream:Ljava/io/ByteArrayInputStream;
    .restart local v1       #byteStream:Ljava/io/ByteArrayInputStream;
    goto :goto_6

    .line 265
    :catch_11
    move-exception v7

    goto/16 :goto_5

    .end local v1           #byteStream:Ljava/io/ByteArrayInputStream;
    .restart local v2       #byteStream:Ljava/io/ByteArrayInputStream;
    :catch_12
    move-exception v7

    move-object v1, v2

    .end local v2           #byteStream:Ljava/io/ByteArrayInputStream;
    .restart local v1       #byteStream:Ljava/io/ByteArrayInputStream;
    goto/16 :goto_5
.end method

.method public static timeMs2TimeStr(I)Ljava/lang/String;
    .locals 9
    .parameter "ms"

    .prologue
    .line 191
    div-int/lit16 v3, p0, 0x3e8

    .line 194
    .local v3, second:I
    div-int/lit16 v0, v3, 0xe10

    .line 195
    .local v0, h:I
    rem-int/lit16 v5, v3, 0xe10

    div-int/lit8 v1, v5, 0x3c

    .line 196
    .local v1, m:I
    rem-int/lit16 v5, v3, 0xe10

    rem-int/lit8 v2, v5, 0x3c

    .line 198
    .local v2, s:I
    const-string v5, "%02d:%02d:%02d.000"

    const/4 v6, 0x3

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 199
    .local v4, str:Ljava/lang/String;
    return-object v4
.end method

.method public static timeStr2TimeSecond(Ljava/lang/String;)J
    .locals 11
    .parameter "timestr"

    .prologue
    const/4 v10, 0x2

    const/4 v9, -0x1

    .line 53
    const-string v5, ":"

    .line 54
    .local v5, splitstr:Ljava/lang/String;
    const/4 v0, 0x0

    .line 56
    .local v0, arraycount:I
    const/4 v4, 0x0

    .line 57
    .local v4, second:I
    if-eqz p0, :cond_0

    const-string v7, ""

    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 58
    :cond_0
    const-wide/16 v7, 0x0

    .line 107
    :goto_0
    return-wide v7

    .line 61
    :cond_1
    const-string v7, "."

    invoke-virtual {p0, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 62
    const/4 v7, 0x0

    const-string v8, "."

    invoke-virtual {p0, v8}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v8

    invoke-virtual {p0, v7, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    .line 65
    :cond_2
    invoke-virtual {p0, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    .line 67
    .local v6, tempstr:[Ljava/lang/String;
    array-length v0, v6

    .line 70
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    if-lt v1, v0, :cond_3

    .line 93
    if-le v0, v10, :cond_7

    .line 94
    add-int/lit8 v7, v0, -0x1

    aget-object v7, v6, v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    .line 95
    add-int/lit8 v8, v0, -0x1

    add-int/lit8 v8, v8, -0x1

    aget-object v8, v6, v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    mul-int/lit8 v8, v8, 0x3c

    .line 94
    add-int/2addr v7, v8

    .line 96
    add-int/lit8 v8, v0, -0x1

    add-int/lit8 v8, v8, -0x1

    add-int/lit8 v8, v8, -0x1

    aget-object v8, v6, v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    mul-int/lit8 v8, v8, 0x3c

    mul-int/lit8 v8, v8, 0x3c

    .line 94
    add-int v4, v7, v8

    .line 107
    :goto_2
    int-to-long v7, v4

    goto :goto_0

    .line 72
    :cond_3
    aget-object v7, v6, v1

    const-string v8, "0"

    invoke-static {v7, v8}, Lcom/huawei/android/multiscreen/dlna/sdk/util/StringUtil;->findFirstNotOf(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    .line 73
    .local v2, pos1:I
    if-ne v2, v9, :cond_4

    .line 75
    const-string v7, ""

    aput-object v7, v6, v1

    .line 78
    :cond_4
    const-string v7, ""

    aget-object v8, v6, v1

    invoke-virtual {v8}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_5

    .line 79
    aget-object v7, v6, v1

    const-string v8, "-"

    invoke-static {v7, v8}, Lcom/huawei/android/multiscreen/dlna/sdk/util/StringUtil;->findFirstNotOf(Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    .line 80
    .local v3, pos2:I
    if-ne v3, v9, :cond_5

    .line 82
    const-string v7, ""

    aput-object v7, v6, v1

    .line 86
    .end local v3           #pos2:I
    :cond_5
    const-string v7, ""

    aget-object v8, v6, v1

    invoke-virtual {v8}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_6

    .line 87
    const-string v7, "0"

    aput-object v7, v6, v1

    .line 70
    :cond_6
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 98
    .end local v2           #pos1:I
    :cond_7
    if-ne v0, v10, :cond_8

    .line 99
    add-int/lit8 v7, v0, -0x1

    aget-object v7, v6, v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    .line 100
    add-int/lit8 v8, v0, -0x1

    add-int/lit8 v8, v8, -0x1

    aget-object v8, v6, v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    mul-int/lit8 v8, v8, 0x3c

    .line 99
    add-int v4, v7, v8

    goto :goto_2

    .line 101
    :cond_8
    const/4 v7, 0x1

    if-ne v0, v7, :cond_9

    .line 102
    add-int/lit8 v7, v0, -0x1

    aget-object v7, v6, v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v4

    goto :goto_2

    .line 104
    :cond_9
    const/4 v4, 0x0

    goto :goto_2
.end method
