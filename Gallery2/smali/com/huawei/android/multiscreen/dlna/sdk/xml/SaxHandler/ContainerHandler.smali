.class public Lcom/huawei/android/multiscreen/dlna/sdk/xml/SaxHandler/ContainerHandler;
.super Lorg/xml/sax/helpers/DefaultHandler;
.source "ContainerHandler.java"


# instance fields
.field private deviceID:I

.field private itemClass:Ljava/lang/String;

.field private parentHandler:Lcom/huawei/android/multiscreen/dlna/sdk/xml/SaxHandler/DocHandler;

.field private reader:Lorg/xml/sax/XMLReader;

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
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 48
    invoke-direct {p0}, Lorg/xml/sax/helpers/DefaultHandler;-><init>()V

    .line 49
    return-void
.end method

.method private setAffectedTable(Ljava/lang/String;)V
    .locals 3
    .parameter "itemClass"

    .prologue
    .line 218
    invoke-static {p1}, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/db/BrowseResultDao;->getTableType(Ljava/lang/String;)I

    move-result v1

    .line 220
    .local v1, tableType:I
    iget-object v2, p0, Lcom/huawei/android/multiscreen/dlna/sdk/xml/SaxHandler/ContainerHandler;->parentHandler:Lcom/huawei/android/multiscreen/dlna/sdk/xml/SaxHandler/DocHandler;

    if-eqz v2, :cond_0

    .line 222
    iget-object v2, p0, Lcom/huawei/android/multiscreen/dlna/sdk/xml/SaxHandler/ContainerHandler;->parentHandler:Lcom/huawei/android/multiscreen/dlna/sdk/xml/SaxHandler/DocHandler;

    invoke-virtual {v2}, Lcom/huawei/android/multiscreen/dlna/sdk/xml/SaxHandler/DocHandler;->getEvent()B

    move-result v0

    .line 223
    .local v0, affectedTable:B
    packed-switch v1, :pswitch_data_0

    .line 231
    :goto_0
    iget-object v2, p0, Lcom/huawei/android/multiscreen/dlna/sdk/xml/SaxHandler/ContainerHandler;->parentHandler:Lcom/huawei/android/multiscreen/dlna/sdk/xml/SaxHandler/DocHandler;

    invoke-virtual {v2, v0}, Lcom/huawei/android/multiscreen/dlna/sdk/xml/SaxHandler/DocHandler;->setEvent(B)V

    .line 233
    .end local v0           #affectedTable:B
    :cond_0
    return-void

    .line 225
    .restart local v0       #affectedTable:B
    :pswitch_0
    or-int/lit8 v2, v0, 0x1

    int-to-byte v0, v2

    .line 226
    goto :goto_0

    .line 223
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public addSQL(Ljava/util/List;Ljava/lang/String;)V
    .locals 8
    .parameter
    .parameter "itemClass"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<[",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .local p1, tagAttrList:Ljava/util/List;,"Ljava/util/List<[Ljava/lang/String;>;"
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 245
    invoke-static {p2}, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/db/BrowseResultDao;->getTableType(Ljava/lang/String;)I

    move-result v2

    .line 246
    .local v2, tableType:I
    invoke-static {}, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/db/BrowseResultDao;->getIntance()Lcom/huawei/android/multiscreen/dlna/sdk/dmc/db/BrowseResultDao;

    move-result-object v4

    .line 247
    iget v5, p0, Lcom/huawei/android/multiscreen/dlna/sdk/xml/SaxHandler/ContainerHandler;->deviceID:I

    .line 246
    invoke-virtual {v4, p1, v2, v5}, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/db/BrowseResultDao;->createInsertDataSql(Ljava/util/List;II)[[Ljava/lang/String;

    move-result-object v0

    .line 248
    .local v0, ret:[[Ljava/lang/String;
    if-eqz v0, :cond_0

    iget-object v4, p0, Lcom/huawei/android/multiscreen/dlna/sdk/xml/SaxHandler/ContainerHandler;->sqls:Ljava/util/List;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/huawei/android/multiscreen/dlna/sdk/xml/SaxHandler/ContainerHandler;->values:Ljava/util/List;

    if-eqz v4, :cond_0

    array-length v4, v0

    if-le v4, v7, :cond_0

    .line 249
    aget-object v4, v0, v6

    aget-object v1, v4, v6

    .line 250
    .local v1, sql:Ljava/lang/String;
    aget-object v3, v0, v7

    .line 251
    .local v3, value:[Ljava/lang/String;
    iget-object v4, p0, Lcom/huawei/android/multiscreen/dlna/sdk/xml/SaxHandler/ContainerHandler;->sqls:Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 252
    iget-object v4, p0, Lcom/huawei/android/multiscreen/dlna/sdk/xml/SaxHandler/ContainerHandler;->values:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 255
    .end local v1           #sql:Ljava/lang/String;
    .end local v3           #value:[Ljava/lang/String;
    :cond_0
    return-void
.end method

.method public characters([CII)V
    .locals 6
    .parameter "ch"
    .parameter "start"
    .parameter "length"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 140
    if-eqz p1, :cond_0

    if-ltz p3, :cond_0

    if-ltz p2, :cond_0

    add-int v2, p2, p3

    array-length v3, p1

    if-le v2, v3, :cond_1

    .line 158
    :cond_0
    :goto_0
    return-void

    .line 143
    :cond_1
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p1, p2, p3}, Ljava/lang/String;-><init>([CII)V

    .line 144
    .local v0, tagText:Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    .line 146
    .local v1, tagTextBuffer:Ljava/lang/StringBuffer;
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 150
    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 152
    iget-object v2, p0, Lcom/huawei/android/multiscreen/dlna/sdk/xml/SaxHandler/ContainerHandler;->tagName:Ljava/lang/String;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/huawei/android/multiscreen/dlna/sdk/xml/SaxHandler/ContainerHandler;->tagName:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    const-string v3, "upnp:class"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 153
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/huawei/android/multiscreen/dlna/sdk/xml/SaxHandler/ContainerHandler;->itemClass:Ljava/lang/String;

    .line 155
    :cond_2
    iget-object v2, p0, Lcom/huawei/android/multiscreen/dlna/sdk/xml/SaxHandler/ContainerHandler;->tagAttrList:Ljava/util/List;

    if-eqz v2, :cond_0

    .line 156
    iget-object v2, p0, Lcom/huawei/android/multiscreen/dlna/sdk/xml/SaxHandler/ContainerHandler;->tagAttrList:Ljava/util/List;

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/huawei/android/multiscreen/dlna/sdk/xml/SaxHandler/ContainerHandler;->tagName:Ljava/lang/String;

    aput-object v5, v3, v4

    const/4 v4, 0x1

    aput-object v0, v3, v4

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public endElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .parameter "uri"
    .parameter "localName"
    .parameter "qName"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 200
    iget-object v0, p0, Lcom/huawei/android/multiscreen/dlna/sdk/xml/SaxHandler/ContainerHandler;->reader:Lorg/xml/sax/XMLReader;

    if-eqz v0, :cond_0

    if-eqz p3, :cond_0

    .line 201
    invoke-virtual {p3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    const-string v1, "container"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 202
    iget-object v0, p0, Lcom/huawei/android/multiscreen/dlna/sdk/xml/SaxHandler/ContainerHandler;->itemClass:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/huawei/android/multiscreen/dlna/sdk/xml/SaxHandler/ContainerHandler;->setAffectedTable(Ljava/lang/String;)V

    .line 203
    iget-object v0, p0, Lcom/huawei/android/multiscreen/dlna/sdk/xml/SaxHandler/ContainerHandler;->tagAttrList:Ljava/util/List;

    iget-object v1, p0, Lcom/huawei/android/multiscreen/dlna/sdk/xml/SaxHandler/ContainerHandler;->itemClass:Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Lcom/huawei/android/multiscreen/dlna/sdk/xml/SaxHandler/ContainerHandler;->addSQL(Ljava/util/List;Ljava/lang/String;)V

    .line 204
    iget-object v0, p0, Lcom/huawei/android/multiscreen/dlna/sdk/xml/SaxHandler/ContainerHandler;->reader:Lorg/xml/sax/XMLReader;

    iget-object v1, p0, Lcom/huawei/android/multiscreen/dlna/sdk/xml/SaxHandler/ContainerHandler;->parentHandler:Lcom/huawei/android/multiscreen/dlna/sdk/xml/SaxHandler/DocHandler;

    invoke-interface {v0, v1}, Lorg/xml/sax/XMLReader;->setContentHandler(Lorg/xml/sax/ContentHandler;)V

    .line 206
    :cond_0
    return-void
.end method

.method public parseAttr(Lorg/xml/sax/Attributes;)V
    .locals 5
    .parameter "attributes"

    .prologue
    .line 168
    if-eqz p1, :cond_0

    iget-object v4, p0, Lcom/huawei/android/multiscreen/dlna/sdk/xml/SaxHandler/ContainerHandler;->tagAttrList:Ljava/util/List;

    if-nez v4, :cond_1

    .line 182
    :cond_0
    return-void

    .line 171
    :cond_1
    const/4 v3, 0x0

    .local v3, i:I
    :goto_0
    invoke-interface {p1}, Lorg/xml/sax/Attributes;->getLength()I

    move-result v4

    if-ge v3, v4, :cond_0

    .line 173
    const/4 v4, 0x2

    new-array v0, v4, [Ljava/lang/String;

    .line 174
    .local v0, attrArray:[Ljava/lang/String;
    invoke-interface {p1, v3}, Lorg/xml/sax/Attributes;->getQName(I)Ljava/lang/String;

    move-result-object v1

    .line 175
    .local v1, attrName:Ljava/lang/String;
    invoke-interface {p1, v3}, Lorg/xml/sax/Attributes;->getValue(I)Ljava/lang/String;

    move-result-object v2

    .line 177
    .local v2, attrValue:Ljava/lang/String;
    const/4 v4, 0x0

    aput-object v1, v0, v4

    .line 178
    const/4 v4, 0x1

    aput-object v2, v0, v4

    .line 180
    iget-object v4, p0, Lcom/huawei/android/multiscreen/dlna/sdk/xml/SaxHandler/ContainerHandler;->tagAttrList:Ljava/util/List;

    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 171
    add-int/lit8 v3, v3, 0x1

    goto :goto_0
.end method

.method public setDeviceID(I)Lcom/huawei/android/multiscreen/dlna/sdk/xml/SaxHandler/ContainerHandler;
    .locals 0
    .parameter "_deviceID"

    .prologue
    .line 62
    iput p1, p0, Lcom/huawei/android/multiscreen/dlna/sdk/xml/SaxHandler/ContainerHandler;->deviceID:I

    .line 63
    return-object p0
.end method

.method public setParentHandler(Lcom/huawei/android/multiscreen/dlna/sdk/xml/SaxHandler/DocHandler;)Lcom/huawei/android/multiscreen/dlna/sdk/xml/SaxHandler/ContainerHandler;
    .locals 0
    .parameter "_parentHandler"

    .prologue
    .line 52
    iput-object p1, p0, Lcom/huawei/android/multiscreen/dlna/sdk/xml/SaxHandler/ContainerHandler;->parentHandler:Lcom/huawei/android/multiscreen/dlna/sdk/xml/SaxHandler/DocHandler;

    .line 53
    return-object p0
.end method

.method public setSQLList(Ljava/util/List;)Lcom/huawei/android/multiscreen/dlna/sdk/xml/SaxHandler/ContainerHandler;
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/huawei/android/multiscreen/dlna/sdk/xml/SaxHandler/ContainerHandler;"
        }
    .end annotation

    .prologue
    .line 67
    .local p1, sqls:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    iput-object p1, p0, Lcom/huawei/android/multiscreen/dlna/sdk/xml/SaxHandler/ContainerHandler;->sqls:Ljava/util/List;

    .line 68
    return-object p0
.end method

.method public setValueList(Ljava/util/List;)Lcom/huawei/android/multiscreen/dlna/sdk/xml/SaxHandler/ContainerHandler;
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<[",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/huawei/android/multiscreen/dlna/sdk/xml/SaxHandler/ContainerHandler;"
        }
    .end annotation

    .prologue
    .line 72
    .local p1, values:Ljava/util/List;,"Ljava/util/List<[Ljava/lang/String;>;"
    iput-object p1, p0, Lcom/huawei/android/multiscreen/dlna/sdk/xml/SaxHandler/ContainerHandler;->values:Ljava/util/List;

    .line 73
    return-object p0
.end method

.method public setXMLReader(Lorg/xml/sax/XMLReader;)Lcom/huawei/android/multiscreen/dlna/sdk/xml/SaxHandler/ContainerHandler;
    .locals 0
    .parameter "_reader"

    .prologue
    .line 57
    iput-object p1, p0, Lcom/huawei/android/multiscreen/dlna/sdk/xml/SaxHandler/ContainerHandler;->reader:Lorg/xml/sax/XMLReader;

    .line 58
    return-object p0
.end method

.method public startElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)V
    .locals 0
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
    .line 118
    iput-object p3, p0, Lcom/huawei/android/multiscreen/dlna/sdk/xml/SaxHandler/ContainerHandler;->tagName:Ljava/lang/String;

    .line 121
    invoke-virtual {p0, p4}, Lcom/huawei/android/multiscreen/dlna/sdk/xml/SaxHandler/ContainerHandler;->parseAttr(Lorg/xml/sax/Attributes;)V

    .line 122
    return-void
.end method

.method public startElementFromParentHandler(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)V
    .locals 1
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
    .line 93
    iput-object p3, p0, Lcom/huawei/android/multiscreen/dlna/sdk/xml/SaxHandler/ContainerHandler;->tagName:Ljava/lang/String;

    .line 94
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/huawei/android/multiscreen/dlna/sdk/xml/SaxHandler/ContainerHandler;->tagAttrList:Ljava/util/List;

    .line 97
    invoke-virtual {p0, p4}, Lcom/huawei/android/multiscreen/dlna/sdk/xml/SaxHandler/ContainerHandler;->parseAttr(Lorg/xml/sax/Attributes;)V

    .line 98
    return-void
.end method
