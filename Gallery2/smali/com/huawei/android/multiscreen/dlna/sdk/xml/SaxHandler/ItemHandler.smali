.class public Lcom/huawei/android/multiscreen/dlna/sdk/xml/SaxHandler/ItemHandler;
.super Lorg/xml/sax/helpers/DefaultHandler;
.source "ItemHandler.java"


# static fields
.field public static final STRING_AUDIO:Ljava/lang/String; = "audio"

.field public static final STRING_COLON:Ljava/lang/String; = ":"

.field public static final STRING_DLNA_ORG_JPEG_TN:Ljava/lang/String; = "DLNA.ORG_PN=JPEG_TN;"

.field public static final STRING_DLNA_ORG_PNG_TN:Ljava/lang/String; = "DLNA.ORG_PN=PNG_TN;"

.field public static final STRING_DLNA_PROFILEID:Ljava/lang/String; = "dlna:profileID"

.field public static final STRING_HTTP_127_0_0_1:Ljava/lang/String; = "http://127.0.0.1"

.field public static final STRING_ITEM:Ljava/lang/String; = "item"

.field public static final STRING_JPEG_TN:Ljava/lang/String; = "JPEG_TN"

.field public static final STRING_MULTIPLE:Ljava/lang/String; = "x"

.field public static final STRING_PNG_TN:Ljava/lang/String; = "PNG_TN"

.field public static final STRING_PROTOCOLINFO:Ljava/lang/String; = "protocolInfo"

.field public static final STRING_RES:Ljava/lang/String; = "res"

.field public static final STRING_RESOLUTION:Ljava/lang/String; = "resolution"

.field public static final STRING_UPNP_ALBUMARTURI:Ljava/lang/String; = "upnp:albumArtURI"

.field public static final STRING_UPNP_CLASS:Ljava/lang/String; = "upnp:class"

.field public static final STRING_VIDEO:Ljava/lang/String; = "video"

.field public static final TAG:Ljava/lang/String; = "ItemHandler"


# instance fields
.field private curTag:I

.field private deviceID:I

.field private isNeedUpdate:Z

.field private map:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private parentHandler:Lcom/huawei/android/multiscreen/dlna/sdk/xml/SaxHandler/DocHandler;

.field private reader:Lorg/xml/sax/XMLReader;

.field private res:Lcom/huawei/android/multiscreen/dlna/sdk/xml/SaxHandler/Res;

.field private resList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/huawei/android/multiscreen/dlna/sdk/xml/SaxHandler/Res;",
            ">;"
        }
    .end annotation
.end field

.field private sqls:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private tableType:I

.field private tagAttrList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<[",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private tagName:Ljava/lang/String;

.field private temp:Ljava/lang/StringBuilder;

.field private values:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<[",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Z)V
    .locals 4
    .parameter "isNeedUpdate"

    .prologue
    const/4 v1, 0x0

    const/4 v3, 0x1

    const/4 v0, -0x1

    const/4 v2, 0x0

    .line 132
    invoke-direct {p0}, Lorg/xml/sax/helpers/DefaultHandler;-><init>()V

    .line 90
    iput v0, p0, Lcom/huawei/android/multiscreen/dlna/sdk/xml/SaxHandler/ItemHandler;->tableType:I

    .line 100
    iput v0, p0, Lcom/huawei/android/multiscreen/dlna/sdk/xml/SaxHandler/ItemHandler;->curTag:I

    .line 110
    iput-object v1, p0, Lcom/huawei/android/multiscreen/dlna/sdk/xml/SaxHandler/ItemHandler;->resList:Ljava/util/List;

    .line 115
    iput-object v1, p0, Lcom/huawei/android/multiscreen/dlna/sdk/xml/SaxHandler/ItemHandler;->res:Lcom/huawei/android/multiscreen/dlna/sdk/xml/SaxHandler/Res;

    .line 120
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    iput-object v0, p0, Lcom/huawei/android/multiscreen/dlna/sdk/xml/SaxHandler/ItemHandler;->temp:Ljava/lang/StringBuilder;

    .line 125
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/huawei/android/multiscreen/dlna/sdk/xml/SaxHandler/ItemHandler;->map:Ljava/util/Map;

    .line 127
    iput-boolean v2, p0, Lcom/huawei/android/multiscreen/dlna/sdk/xml/SaxHandler/ItemHandler;->isNeedUpdate:Z

    .line 134
    iput-boolean p1, p0, Lcom/huawei/android/multiscreen/dlna/sdk/xml/SaxHandler/ItemHandler;->isNeedUpdate:Z

    .line 135
    iget-object v0, p0, Lcom/huawei/android/multiscreen/dlna/sdk/xml/SaxHandler/ItemHandler;->map:Ljava/util/Map;

    const-string v1, "item"

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 137
    iget-object v0, p0, Lcom/huawei/android/multiscreen/dlna/sdk/xml/SaxHandler/ItemHandler;->map:Ljava/util/Map;

    const-string v1, "res"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 138
    iget-object v0, p0, Lcom/huawei/android/multiscreen/dlna/sdk/xml/SaxHandler/ItemHandler;->map:Ljava/util/Map;

    const-string v1, "upnp:albumArtURI"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 140
    iget-object v0, p0, Lcom/huawei/android/multiscreen/dlna/sdk/xml/SaxHandler/ItemHandler;->map:Ljava/util/Map;

    const-string v1, "upnp:class"

    const/4 v2, 0x2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 141
    return-void
.end method

.method private dealItemAudio()V
    .locals 14

    .prologue
    const/4 v13, 0x2

    const/4 v12, 0x1

    const/4 v11, 0x0

    .line 455
    const/4 v3, 0x0

    .line 457
    .local v3, gotThumb:Z
    const/4 v2, 0x0

    .line 460
    .local v2, gotAudio:Z
    iget-object v6, p0, Lcom/huawei/android/multiscreen/dlna/sdk/xml/SaxHandler/ItemHandler;->resList:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    if-ne v12, v6, :cond_2

    .line 462
    iget-object v6, p0, Lcom/huawei/android/multiscreen/dlna/sdk/xml/SaxHandler/ItemHandler;->resList:Ljava/util/List;

    invoke-interface {v6, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/huawei/android/multiscreen/dlna/sdk/xml/SaxHandler/Res;

    .line 465
    .local v5, res:Lcom/huawei/android/multiscreen/dlna/sdk/xml/SaxHandler/Res;
    iget-object v6, p0, Lcom/huawei/android/multiscreen/dlna/sdk/xml/SaxHandler/ItemHandler;->tagAttrList:Ljava/util/List;

    new-array v7, v13, [Ljava/lang/String;

    iget-object v8, v5, Lcom/huawei/android/multiscreen/dlna/sdk/xml/SaxHandler/Res;->tagName:Ljava/lang/String;

    aput-object v8, v7, v11

    iget-object v8, v5, Lcom/huawei/android/multiscreen/dlna/sdk/xml/SaxHandler/Res;->tagText:Ljava/lang/String;

    aput-object v8, v7, v12

    invoke-interface {v6, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 468
    iget-object v6, v5, Lcom/huawei/android/multiscreen/dlna/sdk/xml/SaxHandler/Res;->attributes:Ljava/util/Map;

    invoke-interface {v6}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-nez v6, :cond_1

    .line 518
    .end local v5           #res:Lcom/huawei/android/multiscreen/dlna/sdk/xml/SaxHandler/Res;
    :cond_0
    :goto_1
    return-void

    .line 468
    .restart local v5       #res:Lcom/huawei/android/multiscreen/dlna/sdk/xml/SaxHandler/Res;
    :cond_1
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 470
    .local v1, entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    iget-object v8, p0, Lcom/huawei/android/multiscreen/dlna/sdk/xml/SaxHandler/ItemHandler;->tagAttrList:Ljava/util/List;

    new-array v9, v13, [Ljava/lang/String;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    aput-object v6, v9, v11

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    aput-object v6, v9, v12

    invoke-interface {v8, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 477
    .end local v1           #entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v5           #res:Lcom/huawei/android/multiscreen/dlna/sdk/xml/SaxHandler/Res;
    :cond_2
    iget-object v6, p0, Lcom/huawei/android/multiscreen/dlna/sdk/xml/SaxHandler/ItemHandler;->resList:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_3
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/huawei/android/multiscreen/dlna/sdk/xml/SaxHandler/Res;

    .line 480
    .restart local v5       #res:Lcom/huawei/android/multiscreen/dlna/sdk/xml/SaxHandler/Res;
    const-string v6, "res"

    iget-object v8, v5, Lcom/huawei/android/multiscreen/dlna/sdk/xml/SaxHandler/Res;->tagName:Ljava/lang/String;

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 482
    iget-object v6, v5, Lcom/huawei/android/multiscreen/dlna/sdk/xml/SaxHandler/Res;->attributes:Ljava/util/Map;

    const-string v8, "protocolInfo"

    invoke-interface {v6, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 483
    .local v4, protocolInfo:Ljava/lang/String;
    if-eqz v4, :cond_3

    if-nez v2, :cond_3

    const-string v6, ":"

    invoke-virtual {v4, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    aget-object v6, v6, v13

    const-string v8, "audio"

    invoke-virtual {v6, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 486
    iget-object v6, p0, Lcom/huawei/android/multiscreen/dlna/sdk/xml/SaxHandler/ItemHandler;->tagAttrList:Ljava/util/List;

    new-array v8, v13, [Ljava/lang/String;

    iget-object v9, v5, Lcom/huawei/android/multiscreen/dlna/sdk/xml/SaxHandler/Res;->tagName:Ljava/lang/String;

    aput-object v9, v8, v11

    iget-object v9, v5, Lcom/huawei/android/multiscreen/dlna/sdk/xml/SaxHandler/Res;->tagText:Ljava/lang/String;

    aput-object v9, v8, v12

    invoke-interface {v6, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 489
    iget-object v6, v5, Lcom/huawei/android/multiscreen/dlna/sdk/xml/SaxHandler/Res;->attributes:Ljava/util/Map;

    invoke-interface {v6}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_2
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-nez v6, :cond_4

    .line 494
    const/4 v2, 0x1

    .line 495
    if-eqz v3, :cond_3

    goto :goto_1

    .line 489
    :cond_4
    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 491
    .restart local v1       #entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    iget-object v9, p0, Lcom/huawei/android/multiscreen/dlna/sdk/xml/SaxHandler/ItemHandler;->tagAttrList:Ljava/util/List;

    new-array v10, v13, [Ljava/lang/String;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    aput-object v6, v10, v11

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    aput-object v6, v10, v12

    invoke-interface {v9, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 502
    .end local v1           #entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v4           #protocolInfo:Ljava/lang/String;
    :cond_5
    const-string v6, "upnp:albumArtURI"

    iget-object v8, v5, Lcom/huawei/android/multiscreen/dlna/sdk/xml/SaxHandler/Res;->tagName:Ljava/lang/String;

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 504
    iget-object v6, v5, Lcom/huawei/android/multiscreen/dlna/sdk/xml/SaxHandler/Res;->attributes:Ljava/util/Map;

    const-string v8, "dlna:profileID"

    invoke-interface {v6, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 505
    .local v0, dlna_profileID:Ljava/lang/String;
    if-eqz v0, :cond_3

    if-nez v3, :cond_3

    .line 506
    const-string v6, "JPEG_TN"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_6

    const-string v6, "PNG_TN"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 508
    :cond_6
    iget-object v6, p0, Lcom/huawei/android/multiscreen/dlna/sdk/xml/SaxHandler/ItemHandler;->tagAttrList:Ljava/util/List;

    new-array v8, v13, [Ljava/lang/String;

    const-string v9, "upnp:albumArtURI"

    aput-object v9, v8, v11

    iget-object v9, v5, Lcom/huawei/android/multiscreen/dlna/sdk/xml/SaxHandler/Res;->tagText:Ljava/lang/String;

    aput-object v9, v8, v12

    invoke-interface {v6, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 510
    const/4 v3, 0x1

    .line 511
    if-eqz v2, :cond_3

    goto/16 :goto_1
.end method

.method private dealItemImage()V
    .locals 17

    .prologue
    .line 529
    const/4 v4, 0x0

    .line 531
    .local v4, gotThumb:Z
    const/4 v7, 0x0

    .line 533
    .local v7, max_resolution_res:Lcom/huawei/android/multiscreen/dlna/sdk/xml/SaxHandler/Res;
    const-wide/16 v5, 0x0

    .line 536
    .local v5, max_resolution:J
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/huawei/android/multiscreen/dlna/sdk/xml/SaxHandler/ItemHandler;->resList:Ljava/util/List;

    invoke-interface {v12}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :cond_0
    :goto_0
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-nez v13, :cond_2

    .line 609
    if-eqz v7, :cond_1

    .line 612
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/huawei/android/multiscreen/dlna/sdk/xml/SaxHandler/ItemHandler;->tagAttrList:Ljava/util/List;

    const/4 v13, 0x2

    new-array v13, v13, [Ljava/lang/String;

    const/4 v14, 0x0

    iget-object v15, v7, Lcom/huawei/android/multiscreen/dlna/sdk/xml/SaxHandler/Res;->tagName:Ljava/lang/String;

    aput-object v15, v13, v14

    const/4 v14, 0x1

    iget-object v15, v7, Lcom/huawei/android/multiscreen/dlna/sdk/xml/SaxHandler/Res;->tagText:Ljava/lang/String;

    aput-object v15, v13, v14

    invoke-interface {v12, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 615
    iget-object v12, v7, Lcom/huawei/android/multiscreen/dlna/sdk/xml/SaxHandler/Res;->attributes:Ljava/util/Map;

    invoke-interface {v12}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v12

    invoke-interface {v12}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v13

    :goto_1
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-nez v12, :cond_7

    .line 620
    :cond_1
    return-void

    .line 536
    :cond_2
    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/huawei/android/multiscreen/dlna/sdk/xml/SaxHandler/Res;

    .line 538
    .local v9, res:Lcom/huawei/android/multiscreen/dlna/sdk/xml/SaxHandler/Res;
    iget-object v13, v9, Lcom/huawei/android/multiscreen/dlna/sdk/xml/SaxHandler/Res;->attributes:Ljava/util/Map;

    const-string v14, "protocolInfo"

    invoke-interface {v13, v14}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    .line 539
    .local v8, protocolInfo:Ljava/lang/String;
    if-eqz v8, :cond_0

    .line 545
    if-nez v4, :cond_4

    .line 546
    const-string v13, "DLNA.ORG_PN=JPEG_TN;"

    invoke-virtual {v8, v13}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v13

    if-nez v13, :cond_3

    const-string v13, "DLNA.ORG_PN=PNG_TN;"

    invoke-virtual {v8, v13}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v13

    if-eqz v13, :cond_4

    .line 548
    :cond_3
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/huawei/android/multiscreen/dlna/sdk/xml/SaxHandler/ItemHandler;->tagAttrList:Ljava/util/List;

    const/4 v14, 0x2

    new-array v14, v14, [Ljava/lang/String;

    const/4 v15, 0x0

    const-string v16, "upnp:albumArtURI"

    aput-object v16, v14, v15

    const/4 v15, 0x1

    iget-object v0, v9, Lcom/huawei/android/multiscreen/dlna/sdk/xml/SaxHandler/Res;->tagText:Ljava/lang/String;

    move-object/from16 v16, v0

    aput-object v16, v14, v15

    invoke-interface {v13, v14}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 550
    const/4 v4, 0x1

    goto :goto_0

    .line 555
    :cond_4
    if-nez v7, :cond_6

    .line 558
    iget-object v13, v9, Lcom/huawei/android/multiscreen/dlna/sdk/xml/SaxHandler/Res;->attributes:Ljava/util/Map;

    const-string v14, "resolution"

    invoke-interface {v13, v14}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    .line 561
    .local v10, resolution:Ljava/lang/String;
    if-nez v10, :cond_5

    .line 563
    move-object v7, v9

    goto :goto_0

    .line 570
    :cond_5
    :try_start_0
    const-string v13, "x"

    invoke-virtual {v10, v13}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 571
    .local v1, data:[Ljava/lang/String;
    const/4 v13, 0x0

    aget-object v13, v1, v13

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/Integer;->intValue()I

    move-result v13

    const/4 v14, 0x1

    aget-object v14, v1, v14

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/Integer;->intValue()I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result v14

    mul-int/2addr v13, v14

    int-to-long v5, v13

    .line 574
    move-object v7, v9

    goto/16 :goto_0

    .line 576
    .end local v1           #data:[Ljava/lang/String;
    :catch_0
    move-exception v2

    .line 578
    .local v2, e:Ljava/lang/NumberFormatException;
    const-string v13, "ItemHandler"

    const-string v14, "dealItemImage() has NumberFormatException"

    invoke-static {v13, v14}, Lcom/huawei/android/multiscreen/dlna/sdk/util/DebugLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 579
    .end local v2           #e:Ljava/lang/NumberFormatException;
    :catch_1
    move-exception v2

    .line 580
    .local v2, e:Ljava/lang/Exception;
    const-string v13, "ItemHandler"

    const-string v14, "dealItemImage() has Exception"

    invoke-static {v13, v14}, Lcom/huawei/android/multiscreen/dlna/sdk/util/DebugLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 587
    .end local v2           #e:Ljava/lang/Exception;
    .end local v10           #resolution:Ljava/lang/String;
    :cond_6
    iget-object v13, v9, Lcom/huawei/android/multiscreen/dlna/sdk/xml/SaxHandler/Res;->attributes:Ljava/util/Map;

    const-string v14, "resolution"

    invoke-interface {v13, v14}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    .line 590
    .local v11, resolution_value:Ljava/lang/String;
    :try_start_1
    const-string v13, "x"

    invoke-virtual {v11, v13}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 591
    .restart local v1       #data:[Ljava/lang/String;
    const/4 v13, 0x0

    aget-object v13, v1, v13

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/Integer;->intValue()I

    move-result v13

    const/4 v14, 0x1

    aget-object v14, v1, v14

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/Integer;->intValue()I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    move-result v14

    mul-int v10, v13, v14

    .line 594
    .local v10, resolution:I
    int-to-long v13, v10

    cmp-long v13, v13, v5

    if-lez v13, :cond_0

    .line 596
    move-object v7, v9

    .line 597
    int-to-long v5, v10

    goto/16 :goto_0

    .line 600
    .end local v1           #data:[Ljava/lang/String;
    .end local v10           #resolution:I
    :catch_2
    move-exception v2

    .line 602
    .restart local v2       #e:Ljava/lang/Exception;
    const-string v13, "ItemHandler"

    const-string v14, "dealItemImage() has Exception"

    invoke-static {v13, v14}, Lcom/huawei/android/multiscreen/dlna/sdk/util/DebugLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 615
    .end local v2           #e:Ljava/lang/Exception;
    .end local v8           #protocolInfo:Ljava/lang/String;
    .end local v9           #res:Lcom/huawei/android/multiscreen/dlna/sdk/xml/SaxHandler/Res;
    .end local v11           #resolution_value:Ljava/lang/String;
    :cond_7
    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 617
    .local v3, entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/huawei/android/multiscreen/dlna/sdk/xml/SaxHandler/ItemHandler;->tagAttrList:Ljava/util/List;

    const/4 v12, 0x2

    new-array v15, v12, [Ljava/lang/String;

    const/16 v16, 0x0

    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    aput-object v12, v15, v16

    const/16 v16, 0x1

    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    aput-object v12, v15, v16

    invoke-interface {v14, v15}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1
.end method

.method private dealItemVideo()V
    .locals 14

    .prologue
    const/4 v13, 0x2

    const/4 v12, 0x1

    const/4 v11, 0x0

    .line 364
    const/4 v2, 0x0

    .line 366
    .local v2, gotThumb:Z
    const/4 v3, 0x0

    .line 369
    .local v3, gotVideo:Z
    iget-object v6, p0, Lcom/huawei/android/multiscreen/dlna/sdk/xml/SaxHandler/ItemHandler;->resList:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    if-ne v12, v6, :cond_2

    .line 371
    iget-object v6, p0, Lcom/huawei/android/multiscreen/dlna/sdk/xml/SaxHandler/ItemHandler;->resList:Ljava/util/List;

    invoke-interface {v6, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/huawei/android/multiscreen/dlna/sdk/xml/SaxHandler/Res;

    .line 374
    .local v5, res:Lcom/huawei/android/multiscreen/dlna/sdk/xml/SaxHandler/Res;
    iget-object v6, p0, Lcom/huawei/android/multiscreen/dlna/sdk/xml/SaxHandler/ItemHandler;->tagAttrList:Ljava/util/List;

    new-array v7, v13, [Ljava/lang/String;

    iget-object v8, v5, Lcom/huawei/android/multiscreen/dlna/sdk/xml/SaxHandler/Res;->tagName:Ljava/lang/String;

    aput-object v8, v7, v11

    iget-object v8, v5, Lcom/huawei/android/multiscreen/dlna/sdk/xml/SaxHandler/Res;->tagText:Ljava/lang/String;

    aput-object v8, v7, v12

    invoke-interface {v6, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 377
    iget-object v6, v5, Lcom/huawei/android/multiscreen/dlna/sdk/xml/SaxHandler/Res;->attributes:Ljava/util/Map;

    invoke-interface {v6}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-nez v6, :cond_1

    .line 444
    .end local v5           #res:Lcom/huawei/android/multiscreen/dlna/sdk/xml/SaxHandler/Res;
    :cond_0
    :goto_1
    return-void

    .line 377
    .restart local v5       #res:Lcom/huawei/android/multiscreen/dlna/sdk/xml/SaxHandler/Res;
    :cond_1
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 379
    .local v1, entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    iget-object v8, p0, Lcom/huawei/android/multiscreen/dlna/sdk/xml/SaxHandler/ItemHandler;->tagAttrList:Ljava/util/List;

    new-array v9, v13, [Ljava/lang/String;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    aput-object v6, v9, v11

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    aput-object v6, v9, v12

    invoke-interface {v8, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 386
    .end local v1           #entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v5           #res:Lcom/huawei/android/multiscreen/dlna/sdk/xml/SaxHandler/Res;
    :cond_2
    iget-object v6, p0, Lcom/huawei/android/multiscreen/dlna/sdk/xml/SaxHandler/ItemHandler;->resList:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_3
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/huawei/android/multiscreen/dlna/sdk/xml/SaxHandler/Res;

    .line 390
    .restart local v5       #res:Lcom/huawei/android/multiscreen/dlna/sdk/xml/SaxHandler/Res;
    const-string v6, "res"

    iget-object v8, v5, Lcom/huawei/android/multiscreen/dlna/sdk/xml/SaxHandler/Res;->tagName:Ljava/lang/String;

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_7

    .line 392
    iget-object v6, v5, Lcom/huawei/android/multiscreen/dlna/sdk/xml/SaxHandler/Res;->attributes:Ljava/util/Map;

    const-string v8, "protocolInfo"

    invoke-interface {v6, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 393
    .local v4, protocolInfo:Ljava/lang/String;
    if-eqz v4, :cond_3

    .line 398
    if-nez v3, :cond_5

    const-string v6, ":"

    invoke-virtual {v4, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    aget-object v6, v6, v13

    const-string v8, "video"

    invoke-virtual {v6, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 401
    iget-object v6, p0, Lcom/huawei/android/multiscreen/dlna/sdk/xml/SaxHandler/ItemHandler;->tagAttrList:Ljava/util/List;

    new-array v8, v13, [Ljava/lang/String;

    const-string v9, "res"

    aput-object v9, v8, v11

    iget-object v9, v5, Lcom/huawei/android/multiscreen/dlna/sdk/xml/SaxHandler/Res;->tagText:Ljava/lang/String;

    aput-object v9, v8, v12

    invoke-interface {v6, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 404
    iget-object v6, v5, Lcom/huawei/android/multiscreen/dlna/sdk/xml/SaxHandler/Res;->attributes:Ljava/util/Map;

    invoke-interface {v6}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_2
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-nez v6, :cond_4

    .line 409
    const/4 v3, 0x1

    .line 410
    if-eqz v2, :cond_3

    goto :goto_1

    .line 404
    :cond_4
    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 406
    .restart local v1       #entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    iget-object v9, p0, Lcom/huawei/android/multiscreen/dlna/sdk/xml/SaxHandler/ItemHandler;->tagAttrList:Ljava/util/List;

    new-array v10, v13, [Ljava/lang/String;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    aput-object v6, v10, v11

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    aput-object v6, v10, v12

    invoke-interface {v9, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 415
    .end local v1           #entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_5
    if-nez v2, :cond_3

    .line 416
    const-string v6, "DLNA.ORG_PN=JPEG_TN;"

    invoke-virtual {v4, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_6

    const-string v6, "DLNA.ORG_PN=PNG_TN;"

    invoke-virtual {v4, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 418
    :cond_6
    iget-object v6, p0, Lcom/huawei/android/multiscreen/dlna/sdk/xml/SaxHandler/ItemHandler;->tagAttrList:Ljava/util/List;

    new-array v8, v13, [Ljava/lang/String;

    const-string v9, "upnp:albumArtURI"

    aput-object v9, v8, v11

    iget-object v9, v5, Lcom/huawei/android/multiscreen/dlna/sdk/xml/SaxHandler/Res;->tagText:Ljava/lang/String;

    aput-object v9, v8, v12

    invoke-interface {v6, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 420
    const/4 v2, 0x1

    .line 421
    if-eqz v3, :cond_3

    goto/16 :goto_1

    .line 428
    .end local v4           #protocolInfo:Ljava/lang/String;
    :cond_7
    const-string v6, "upnp:albumArtURI"

    iget-object v8, v5, Lcom/huawei/android/multiscreen/dlna/sdk/xml/SaxHandler/Res;->tagName:Ljava/lang/String;

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 430
    iget-object v6, v5, Lcom/huawei/android/multiscreen/dlna/sdk/xml/SaxHandler/Res;->attributes:Ljava/util/Map;

    const-string v8, "dlna:profileID"

    invoke-interface {v6, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 431
    .local v0, dlna_profileID:Ljava/lang/String;
    if-eqz v0, :cond_3

    if-nez v2, :cond_3

    .line 432
    const-string v6, "JPEG_TN"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_8

    const-string v6, "PNG_TN"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 434
    :cond_8
    iget-object v6, p0, Lcom/huawei/android/multiscreen/dlna/sdk/xml/SaxHandler/ItemHandler;->tagAttrList:Ljava/util/List;

    new-array v8, v13, [Ljava/lang/String;

    const-string v9, "upnp:albumArtURI"

    aput-object v9, v8, v11

    iget-object v9, v5, Lcom/huawei/android/multiscreen/dlna/sdk/xml/SaxHandler/Res;->tagText:Ljava/lang/String;

    aput-object v9, v8, v12

    invoke-interface {v6, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 436
    const/4 v2, 0x1

    .line 437
    if-eqz v3, :cond_3

    goto/16 :goto_1
.end method

.method private setAffectedTable()V
    .locals 2

    .prologue
    .line 680
    iget-object v1, p0, Lcom/huawei/android/multiscreen/dlna/sdk/xml/SaxHandler/ItemHandler;->parentHandler:Lcom/huawei/android/multiscreen/dlna/sdk/xml/SaxHandler/DocHandler;

    if-nez v1, :cond_0

    .line 702
    :goto_0
    return-void

    .line 685
    :cond_0
    iget-object v1, p0, Lcom/huawei/android/multiscreen/dlna/sdk/xml/SaxHandler/ItemHandler;->parentHandler:Lcom/huawei/android/multiscreen/dlna/sdk/xml/SaxHandler/DocHandler;

    invoke-virtual {v1}, Lcom/huawei/android/multiscreen/dlna/sdk/xml/SaxHandler/DocHandler;->getEvent()B

    move-result v0

    .line 686
    .local v0, affectedTable:B
    iget v1, p0, Lcom/huawei/android/multiscreen/dlna/sdk/xml/SaxHandler/ItemHandler;->tableType:I

    packed-switch v1, :pswitch_data_0

    .line 701
    :goto_1
    iget-object v1, p0, Lcom/huawei/android/multiscreen/dlna/sdk/xml/SaxHandler/ItemHandler;->parentHandler:Lcom/huawei/android/multiscreen/dlna/sdk/xml/SaxHandler/DocHandler;

    invoke-virtual {v1, v0}, Lcom/huawei/android/multiscreen/dlna/sdk/xml/SaxHandler/DocHandler;->setEvent(B)V

    goto :goto_0

    .line 689
    :pswitch_0
    or-int/lit8 v1, v0, 0x4

    int-to-byte v0, v1

    .line 690
    goto :goto_1

    .line 692
    :pswitch_1
    or-int/lit8 v1, v0, 0x8

    int-to-byte v0, v1

    .line 693
    goto :goto_1

    .line 695
    :pswitch_2
    or-int/lit8 v1, v0, 0x2

    int-to-byte v0, v1

    .line 696
    goto :goto_1

    .line 686
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method


# virtual methods
.method public addSQL(Ljava/util/List;)V
    .locals 9
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<[",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, tagAttrList:Ljava/util/List;,"Ljava/util/List<[Ljava/lang/String;>;"
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 714
    iget-boolean v4, p0, Lcom/huawei/android/multiscreen/dlna/sdk/xml/SaxHandler/ItemHandler;->isNeedUpdate:Z

    if-eqz v4, :cond_0

    .line 716
    invoke-static {}, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/db/BrowseResultDao;->getIntance()Lcom/huawei/android/multiscreen/dlna/sdk/dmc/db/BrowseResultDao;

    move-result-object v4

    iget v5, p0, Lcom/huawei/android/multiscreen/dlna/sdk/xml/SaxHandler/ItemHandler;->tableType:I

    iget v6, p0, Lcom/huawei/android/multiscreen/dlna/sdk/xml/SaxHandler/ItemHandler;->deviceID:I

    invoke-virtual {v4, p1, v5, v6}, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/db/BrowseResultDao;->createDelDataForLastChangeSql(Ljava/util/List;II)[[Ljava/lang/String;

    move-result-object v1

    .line 717
    .local v1, retDel:[[Ljava/lang/String;
    if-eqz v1, :cond_0

    iget-object v4, p0, Lcom/huawei/android/multiscreen/dlna/sdk/xml/SaxHandler/ItemHandler;->sqls:Ljava/util/List;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/huawei/android/multiscreen/dlna/sdk/xml/SaxHandler/ItemHandler;->values:Ljava/util/List;

    if-eqz v4, :cond_0

    array-length v4, v1

    if-le v4, v8, :cond_0

    .line 718
    aget-object v4, v1, v7

    aget-object v2, v4, v7

    .line 719
    .local v2, sql:Ljava/lang/String;
    aget-object v3, v1, v8

    .line 720
    .local v3, value:[Ljava/lang/String;
    iget-object v4, p0, Lcom/huawei/android/multiscreen/dlna/sdk/xml/SaxHandler/ItemHandler;->sqls:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 721
    iget-object v4, p0, Lcom/huawei/android/multiscreen/dlna/sdk/xml/SaxHandler/ItemHandler;->values:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 725
    .end local v1           #retDel:[[Ljava/lang/String;
    .end local v2           #sql:Ljava/lang/String;
    .end local v3           #value:[Ljava/lang/String;
    :cond_0
    invoke-static {}, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/db/BrowseResultDao;->getIntance()Lcom/huawei/android/multiscreen/dlna/sdk/dmc/db/BrowseResultDao;

    move-result-object v4

    iget v5, p0, Lcom/huawei/android/multiscreen/dlna/sdk/xml/SaxHandler/ItemHandler;->tableType:I

    iget v6, p0, Lcom/huawei/android/multiscreen/dlna/sdk/xml/SaxHandler/ItemHandler;->deviceID:I

    invoke-virtual {v4, p1, v5, v6}, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/db/BrowseResultDao;->createInsertDataSql(Ljava/util/List;II)[[Ljava/lang/String;

    move-result-object v0

    .line 726
    .local v0, ret:[[Ljava/lang/String;
    if-eqz v0, :cond_1

    iget-object v4, p0, Lcom/huawei/android/multiscreen/dlna/sdk/xml/SaxHandler/ItemHandler;->sqls:Ljava/util/List;

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/huawei/android/multiscreen/dlna/sdk/xml/SaxHandler/ItemHandler;->values:Ljava/util/List;

    if-eqz v4, :cond_1

    array-length v4, v0

    if-le v4, v8, :cond_1

    .line 728
    aget-object v4, v0, v7

    aget-object v2, v4, v7

    .line 729
    .restart local v2       #sql:Ljava/lang/String;
    aget-object v3, v0, v8

    .line 730
    .restart local v3       #value:[Ljava/lang/String;
    iget-object v4, p0, Lcom/huawei/android/multiscreen/dlna/sdk/xml/SaxHandler/ItemHandler;->sqls:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 731
    iget-object v4, p0, Lcom/huawei/android/multiscreen/dlna/sdk/xml/SaxHandler/ItemHandler;->values:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 733
    .end local v2           #sql:Ljava/lang/String;
    .end local v3           #value:[Ljava/lang/String;
    :cond_1
    return-void
.end method

.method public characters([CII)V
    .locals 2
    .parameter "ch"
    .parameter "start"
    .parameter "length"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 242
    iget-object v1, p0, Lcom/huawei/android/multiscreen/dlna/sdk/xml/SaxHandler/ItemHandler;->tagName:Ljava/lang/String;

    if-nez v1, :cond_0

    .line 249
    :goto_0
    return-void

    .line 247
    :cond_0
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, p1, p2, p3}, Ljava/lang/String;-><init>([CII)V

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 248
    .local v0, str:Ljava/lang/String;
    iget-object v1, p0, Lcom/huawei/android/multiscreen/dlna/sdk/xml/SaxHandler/ItemHandler;->temp:Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0
.end method

.method public endElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 8
    .parameter "uri"
    .parameter "localName"
    .parameter "qName"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x2

    const/4 v7, 0x1

    const/4 v6, -0x1

    const/4 v5, 0x0

    const/4 v4, 0x0

    .line 269
    :try_start_0
    iget-object v2, p0, Lcom/huawei/android/multiscreen/dlna/sdk/xml/SaxHandler/ItemHandler;->map:Ljava/util/Map;

    invoke-interface {v2, p3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iput v2, p0, Lcom/huawei/android/multiscreen/dlna/sdk/xml/SaxHandler/ItemHandler;->curTag:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 276
    :goto_0
    iget-object v2, p0, Lcom/huawei/android/multiscreen/dlna/sdk/xml/SaxHandler/ItemHandler;->temp:Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 278
    .local v1, tagText:Ljava/lang/String;
    iget v2, p0, Lcom/huawei/android/multiscreen/dlna/sdk/xml/SaxHandler/ItemHandler;->curTag:I

    packed-switch v2, :pswitch_data_0

    .line 344
    iget-object v2, p0, Lcom/huawei/android/multiscreen/dlna/sdk/xml/SaxHandler/ItemHandler;->tagAttrList:Ljava/util/List;

    new-array v3, v3, [Ljava/lang/String;

    aput-object p3, v3, v4

    aput-object v1, v3, v7

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 350
    :cond_0
    :goto_1
    iput-object v5, p0, Lcom/huawei/android/multiscreen/dlna/sdk/xml/SaxHandler/ItemHandler;->tagName:Ljava/lang/String;

    .line 351
    iput v6, p0, Lcom/huawei/android/multiscreen/dlna/sdk/xml/SaxHandler/ItemHandler;->curTag:I

    .line 352
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    iput-object v2, p0, Lcom/huawei/android/multiscreen/dlna/sdk/xml/SaxHandler/ItemHandler;->temp:Ljava/lang/StringBuilder;

    .line 353
    return-void

    .line 271
    .end local v1           #tagText:Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 273
    .local v0, e:Ljava/lang/Exception;
    iput v6, p0, Lcom/huawei/android/multiscreen/dlna/sdk/xml/SaxHandler/ItemHandler;->curTag:I

    goto :goto_0

    .line 283
    .end local v0           #e:Ljava/lang/Exception;
    .restart local v1       #tagText:Ljava/lang/String;
    :pswitch_0
    iget v2, p0, Lcom/huawei/android/multiscreen/dlna/sdk/xml/SaxHandler/ItemHandler;->tableType:I

    packed-switch v2, :pswitch_data_1

    .line 308
    :goto_2
    invoke-direct {p0}, Lcom/huawei/android/multiscreen/dlna/sdk/xml/SaxHandler/ItemHandler;->setAffectedTable()V

    .line 309
    iget-object v2, p0, Lcom/huawei/android/multiscreen/dlna/sdk/xml/SaxHandler/ItemHandler;->tagAttrList:Ljava/util/List;

    invoke-virtual {p0, v2}, Lcom/huawei/android/multiscreen/dlna/sdk/xml/SaxHandler/ItemHandler;->addSQL(Ljava/util/List;)V

    .line 310
    iget-object v2, p0, Lcom/huawei/android/multiscreen/dlna/sdk/xml/SaxHandler/ItemHandler;->reader:Lorg/xml/sax/XMLReader;

    iget-object v3, p0, Lcom/huawei/android/multiscreen/dlna/sdk/xml/SaxHandler/ItemHandler;->parentHandler:Lcom/huawei/android/multiscreen/dlna/sdk/xml/SaxHandler/DocHandler;

    invoke-interface {v2, v3}, Lorg/xml/sax/XMLReader;->setContentHandler(Lorg/xml/sax/ContentHandler;)V

    .line 313
    iget-object v2, p0, Lcom/huawei/android/multiscreen/dlna/sdk/xml/SaxHandler/ItemHandler;->tagAttrList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 314
    iput-object v5, p0, Lcom/huawei/android/multiscreen/dlna/sdk/xml/SaxHandler/ItemHandler;->tagAttrList:Ljava/util/List;

    .line 315
    iget-object v2, p0, Lcom/huawei/android/multiscreen/dlna/sdk/xml/SaxHandler/ItemHandler;->resList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 316
    iput-object v5, p0, Lcom/huawei/android/multiscreen/dlna/sdk/xml/SaxHandler/ItemHandler;->resList:Ljava/util/List;

    goto :goto_1

    .line 287
    :pswitch_1
    invoke-direct {p0}, Lcom/huawei/android/multiscreen/dlna/sdk/xml/SaxHandler/ItemHandler;->dealItemVideo()V

    goto :goto_2

    .line 292
    :pswitch_2
    invoke-direct {p0}, Lcom/huawei/android/multiscreen/dlna/sdk/xml/SaxHandler/ItemHandler;->dealItemAudio()V

    goto :goto_2

    .line 297
    :pswitch_3
    invoke-direct {p0}, Lcom/huawei/android/multiscreen/dlna/sdk/xml/SaxHandler/ItemHandler;->dealItemImage()V

    goto :goto_2

    .line 323
    :pswitch_4
    const-string v2, "http://127.0.0.1"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 325
    iget-object v2, p0, Lcom/huawei/android/multiscreen/dlna/sdk/xml/SaxHandler/ItemHandler;->res:Lcom/huawei/android/multiscreen/dlna/sdk/xml/SaxHandler/Res;

    iput-object v1, v2, Lcom/huawei/android/multiscreen/dlna/sdk/xml/SaxHandler/Res;->tagText:Ljava/lang/String;

    .line 326
    iget-object v2, p0, Lcom/huawei/android/multiscreen/dlna/sdk/xml/SaxHandler/ItemHandler;->resList:Ljava/util/List;

    iget-object v3, p0, Lcom/huawei/android/multiscreen/dlna/sdk/xml/SaxHandler/ItemHandler;->res:Lcom/huawei/android/multiscreen/dlna/sdk/xml/SaxHandler/Res;

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 334
    :pswitch_5
    invoke-static {v1}, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/db/BrowseResultDao;->getTableType(Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Lcom/huawei/android/multiscreen/dlna/sdk/xml/SaxHandler/ItemHandler;->tableType:I

    .line 337
    iget-object v2, p0, Lcom/huawei/android/multiscreen/dlna/sdk/xml/SaxHandler/ItemHandler;->tagAttrList:Ljava/util/List;

    new-array v3, v3, [Ljava/lang/String;

    aput-object p3, v3, v4

    aput-object v1, v3, v7

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 278
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_4
        :pswitch_5
    .end packed-switch

    .line 283
    :pswitch_data_1
    .packed-switch 0x2
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public setDeviceID(I)Lcom/huawei/android/multiscreen/dlna/sdk/xml/SaxHandler/ItemHandler;
    .locals 0
    .parameter "_deviceID"

    .prologue
    .line 749
    iput p1, p0, Lcom/huawei/android/multiscreen/dlna/sdk/xml/SaxHandler/ItemHandler;->deviceID:I

    .line 750
    return-object p0
.end method

.method public setParentHandler(Lcom/huawei/android/multiscreen/dlna/sdk/xml/SaxHandler/DocHandler;)Lcom/huawei/android/multiscreen/dlna/sdk/xml/SaxHandler/ItemHandler;
    .locals 0
    .parameter "_parentHandler"

    .prologue
    .line 737
    iput-object p1, p0, Lcom/huawei/android/multiscreen/dlna/sdk/xml/SaxHandler/ItemHandler;->parentHandler:Lcom/huawei/android/multiscreen/dlna/sdk/xml/SaxHandler/DocHandler;

    .line 738
    return-object p0
.end method

.method public setSQLList(Ljava/util/List;)Lcom/huawei/android/multiscreen/dlna/sdk/xml/SaxHandler/ItemHandler;
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/huawei/android/multiscreen/dlna/sdk/xml/SaxHandler/ItemHandler;"
        }
    .end annotation

    .prologue
    .line 755
    .local p1, sqls:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    iput-object p1, p0, Lcom/huawei/android/multiscreen/dlna/sdk/xml/SaxHandler/ItemHandler;->sqls:Ljava/util/List;

    .line 756
    return-object p0
.end method

.method public setValueList(Ljava/util/List;)Lcom/huawei/android/multiscreen/dlna/sdk/xml/SaxHandler/ItemHandler;
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<[",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/huawei/android/multiscreen/dlna/sdk/xml/SaxHandler/ItemHandler;"
        }
    .end annotation

    .prologue
    .line 761
    .local p1, values:Ljava/util/List;,"Ljava/util/List<[Ljava/lang/String;>;"
    iput-object p1, p0, Lcom/huawei/android/multiscreen/dlna/sdk/xml/SaxHandler/ItemHandler;->values:Ljava/util/List;

    .line 762
    return-object p0
.end method

.method public setXMLReader(Lorg/xml/sax/XMLReader;)Lcom/huawei/android/multiscreen/dlna/sdk/xml/SaxHandler/ItemHandler;
    .locals 0
    .parameter "_reader"

    .prologue
    .line 743
    iput-object p1, p0, Lcom/huawei/android/multiscreen/dlna/sdk/xml/SaxHandler/ItemHandler;->reader:Lorg/xml/sax/XMLReader;

    .line 744
    return-object p0
.end method

.method public startElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)V
    .locals 7
    .parameter "uri"
    .parameter "localName"
    .parameter "qName"
    .parameter "attributes"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 188
    iput-object p3, p0, Lcom/huawei/android/multiscreen/dlna/sdk/xml/SaxHandler/ItemHandler;->tagName:Ljava/lang/String;

    .line 193
    :try_start_0
    iget-object v3, p0, Lcom/huawei/android/multiscreen/dlna/sdk/xml/SaxHandler/ItemHandler;->map:Ljava/util/Map;

    invoke-interface {v3, p3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    iput v3, p0, Lcom/huawei/android/multiscreen/dlna/sdk/xml/SaxHandler/ItemHandler;->curTag:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 200
    :goto_0
    iget v3, p0, Lcom/huawei/android/multiscreen/dlna/sdk/xml/SaxHandler/ItemHandler;->curTag:I

    packed-switch v3, :pswitch_data_0

    .line 217
    const/4 v1, 0x0

    .local v1, i:I
    invoke-interface {p4}, Lorg/xml/sax/Attributes;->getLength()I

    move-result v2

    .local v2, length:I
    :goto_1
    if-lt v1, v2, :cond_1

    .line 225
    :cond_0
    return-void

    .line 195
    .end local v1           #i:I
    .end local v2           #length:I
    :catch_0
    move-exception v0

    .line 197
    .local v0, e:Ljava/lang/Exception;
    const/4 v3, -0x1

    iput v3, p0, Lcom/huawei/android/multiscreen/dlna/sdk/xml/SaxHandler/ItemHandler;->curTag:I

    goto :goto_0

    .line 205
    .end local v0           #e:Ljava/lang/Exception;
    :pswitch_0
    new-instance v3, Lcom/huawei/android/multiscreen/dlna/sdk/xml/SaxHandler/Res;

    invoke-direct {v3}, Lcom/huawei/android/multiscreen/dlna/sdk/xml/SaxHandler/Res;-><init>()V

    iput-object v3, p0, Lcom/huawei/android/multiscreen/dlna/sdk/xml/SaxHandler/ItemHandler;->res:Lcom/huawei/android/multiscreen/dlna/sdk/xml/SaxHandler/Res;

    .line 206
    iget-object v3, p0, Lcom/huawei/android/multiscreen/dlna/sdk/xml/SaxHandler/ItemHandler;->res:Lcom/huawei/android/multiscreen/dlna/sdk/xml/SaxHandler/Res;

    iput-object p3, v3, Lcom/huawei/android/multiscreen/dlna/sdk/xml/SaxHandler/Res;->tagName:Ljava/lang/String;

    .line 207
    const/4 v1, 0x0

    .restart local v1       #i:I
    invoke-interface {p4}, Lorg/xml/sax/Attributes;->getLength()I

    move-result v2

    .restart local v2       #length:I
    :goto_2
    if-ge v1, v2, :cond_0

    .line 209
    iget-object v3, p0, Lcom/huawei/android/multiscreen/dlna/sdk/xml/SaxHandler/ItemHandler;->res:Lcom/huawei/android/multiscreen/dlna/sdk/xml/SaxHandler/Res;

    iget-object v3, v3, Lcom/huawei/android/multiscreen/dlna/sdk/xml/SaxHandler/Res;->attributes:Ljava/util/Map;

    invoke-interface {p4, v1}, Lorg/xml/sax/Attributes;->getQName(I)Ljava/lang/String;

    move-result-object v4

    invoke-interface {p4, v1}, Lorg/xml/sax/Attributes;->getValue(I)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v3, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 207
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 219
    :cond_1
    iget-object v3, p0, Lcom/huawei/android/multiscreen/dlna/sdk/xml/SaxHandler/ItemHandler;->tagAttrList:Ljava/util/List;

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    invoke-interface {p4, v1}, Lorg/xml/sax/Attributes;->getQName(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x1

    invoke-interface {p4, v1}, Lorg/xml/sax/Attributes;->getValue(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 217
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 200
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public startElementFromParentHandler(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)V
    .locals 6
    .parameter "uri"
    .parameter "localName"
    .parameter "qName"
    .parameter "attributes"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 159
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/huawei/android/multiscreen/dlna/sdk/xml/SaxHandler/ItemHandler;->tagAttrList:Ljava/util/List;

    .line 162
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/huawei/android/multiscreen/dlna/sdk/xml/SaxHandler/ItemHandler;->resList:Ljava/util/List;

    .line 165
    const/4 v0, 0x0

    .local v0, i:I
    invoke-interface {p4}, Lorg/xml/sax/Attributes;->getLength()I

    move-result v1

    .local v1, length:I
    :goto_0
    if-lt v0, v1, :cond_0

    .line 169
    return-void

    .line 167
    :cond_0
    iget-object v2, p0, Lcom/huawei/android/multiscreen/dlna/sdk/xml/SaxHandler/ItemHandler;->tagAttrList:Ljava/util/List;

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    invoke-interface {p4, v0}, Lorg/xml/sax/Attributes;->getQName(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    invoke-interface {p4, v0}, Lorg/xml/sax/Attributes;->getValue(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 165
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method
