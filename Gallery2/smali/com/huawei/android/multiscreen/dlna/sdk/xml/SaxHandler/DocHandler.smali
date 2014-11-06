.class public Lcom/huawei/android/multiscreen/dlna/sdk/xml/SaxHandler/DocHandler;
.super Lorg/xml/sax/helpers/DefaultHandler;
.source "DocHandler.java"


# instance fields
.field private containerHandler:Lcom/huawei/android/multiscreen/dlna/sdk/xml/SaxHandler/ContainerHandler;

.field private event:B

.field private itemHandler:Lcom/huawei/android/multiscreen/dlna/sdk/xml/SaxHandler/ItemHandler;

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
.method public constructor <init>(Lorg/xml/sax/XMLReader;IZ)V
    .locals 2
    .parameter "_reader"
    .parameter "_deviceID"
    .parameter "isNeedUpdate"

    .prologue
    const/16 v1, 0x32

    .line 38
    invoke-direct {p0}, Lorg/xml/sax/helpers/DefaultHandler;-><init>()V

    .line 34
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/huawei/android/multiscreen/dlna/sdk/xml/SaxHandler/DocHandler;->sqls:Ljava/util/List;

    .line 35
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/huawei/android/multiscreen/dlna/sdk/xml/SaxHandler/DocHandler;->values:Ljava/util/List;

    .line 39
    iput-object p1, p0, Lcom/huawei/android/multiscreen/dlna/sdk/xml/SaxHandler/DocHandler;->reader:Lorg/xml/sax/XMLReader;

    .line 40
    new-instance v0, Lcom/huawei/android/multiscreen/dlna/sdk/xml/SaxHandler/ContainerHandler;

    invoke-direct {v0}, Lcom/huawei/android/multiscreen/dlna/sdk/xml/SaxHandler/ContainerHandler;-><init>()V

    iput-object v0, p0, Lcom/huawei/android/multiscreen/dlna/sdk/xml/SaxHandler/DocHandler;->containerHandler:Lcom/huawei/android/multiscreen/dlna/sdk/xml/SaxHandler/ContainerHandler;

    .line 41
    iget-object v0, p0, Lcom/huawei/android/multiscreen/dlna/sdk/xml/SaxHandler/DocHandler;->containerHandler:Lcom/huawei/android/multiscreen/dlna/sdk/xml/SaxHandler/ContainerHandler;

    invoke-virtual {v0, p1}, Lcom/huawei/android/multiscreen/dlna/sdk/xml/SaxHandler/ContainerHandler;->setXMLReader(Lorg/xml/sax/XMLReader;)Lcom/huawei/android/multiscreen/dlna/sdk/xml/SaxHandler/ContainerHandler;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/huawei/android/multiscreen/dlna/sdk/xml/SaxHandler/ContainerHandler;->setDeviceID(I)Lcom/huawei/android/multiscreen/dlna/sdk/xml/SaxHandler/ContainerHandler;

    move-result-object v0

    .line 42
    invoke-virtual {v0, p0}, Lcom/huawei/android/multiscreen/dlna/sdk/xml/SaxHandler/ContainerHandler;->setParentHandler(Lcom/huawei/android/multiscreen/dlna/sdk/xml/SaxHandler/DocHandler;)Lcom/huawei/android/multiscreen/dlna/sdk/xml/SaxHandler/ContainerHandler;

    move-result-object v0

    iget-object v1, p0, Lcom/huawei/android/multiscreen/dlna/sdk/xml/SaxHandler/DocHandler;->sqls:Ljava/util/List;

    invoke-virtual {v0, v1}, Lcom/huawei/android/multiscreen/dlna/sdk/xml/SaxHandler/ContainerHandler;->setSQLList(Ljava/util/List;)Lcom/huawei/android/multiscreen/dlna/sdk/xml/SaxHandler/ContainerHandler;

    move-result-object v0

    iget-object v1, p0, Lcom/huawei/android/multiscreen/dlna/sdk/xml/SaxHandler/DocHandler;->values:Ljava/util/List;

    invoke-virtual {v0, v1}, Lcom/huawei/android/multiscreen/dlna/sdk/xml/SaxHandler/ContainerHandler;->setValueList(Ljava/util/List;)Lcom/huawei/android/multiscreen/dlna/sdk/xml/SaxHandler/ContainerHandler;

    .line 44
    new-instance v0, Lcom/huawei/android/multiscreen/dlna/sdk/xml/SaxHandler/ItemHandler;

    invoke-direct {v0, p3}, Lcom/huawei/android/multiscreen/dlna/sdk/xml/SaxHandler/ItemHandler;-><init>(Z)V

    iput-object v0, p0, Lcom/huawei/android/multiscreen/dlna/sdk/xml/SaxHandler/DocHandler;->itemHandler:Lcom/huawei/android/multiscreen/dlna/sdk/xml/SaxHandler/ItemHandler;

    .line 45
    iget-object v0, p0, Lcom/huawei/android/multiscreen/dlna/sdk/xml/SaxHandler/DocHandler;->itemHandler:Lcom/huawei/android/multiscreen/dlna/sdk/xml/SaxHandler/ItemHandler;

    invoke-virtual {v0, p1}, Lcom/huawei/android/multiscreen/dlna/sdk/xml/SaxHandler/ItemHandler;->setXMLReader(Lorg/xml/sax/XMLReader;)Lcom/huawei/android/multiscreen/dlna/sdk/xml/SaxHandler/ItemHandler;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/huawei/android/multiscreen/dlna/sdk/xml/SaxHandler/ItemHandler;->setDeviceID(I)Lcom/huawei/android/multiscreen/dlna/sdk/xml/SaxHandler/ItemHandler;

    move-result-object v0

    .line 46
    invoke-virtual {v0, p0}, Lcom/huawei/android/multiscreen/dlna/sdk/xml/SaxHandler/ItemHandler;->setParentHandler(Lcom/huawei/android/multiscreen/dlna/sdk/xml/SaxHandler/DocHandler;)Lcom/huawei/android/multiscreen/dlna/sdk/xml/SaxHandler/ItemHandler;

    move-result-object v0

    iget-object v1, p0, Lcom/huawei/android/multiscreen/dlna/sdk/xml/SaxHandler/DocHandler;->sqls:Ljava/util/List;

    invoke-virtual {v0, v1}, Lcom/huawei/android/multiscreen/dlna/sdk/xml/SaxHandler/ItemHandler;->setSQLList(Ljava/util/List;)Lcom/huawei/android/multiscreen/dlna/sdk/xml/SaxHandler/ItemHandler;

    move-result-object v0

    iget-object v1, p0, Lcom/huawei/android/multiscreen/dlna/sdk/xml/SaxHandler/DocHandler;->values:Ljava/util/List;

    invoke-virtual {v0, v1}, Lcom/huawei/android/multiscreen/dlna/sdk/xml/SaxHandler/ItemHandler;->setValueList(Ljava/util/List;)Lcom/huawei/android/multiscreen/dlna/sdk/xml/SaxHandler/ItemHandler;

    .line 47
    return-void
.end method


# virtual methods
.method public getEvent()B
    .locals 1

    .prologue
    .line 94
    iget-byte v0, p0, Lcom/huawei/android/multiscreen/dlna/sdk/xml/SaxHandler/DocHandler;->event:B

    return v0
.end method

.method public getSQLs()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 86
    iget-object v0, p0, Lcom/huawei/android/multiscreen/dlna/sdk/xml/SaxHandler/DocHandler;->sqls:Ljava/util/List;

    return-object v0
.end method

.method public getValues()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<[",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 90
    iget-object v0, p0, Lcom/huawei/android/multiscreen/dlna/sdk/xml/SaxHandler/DocHandler;->values:Ljava/util/List;

    return-object v0
.end method

.method public setEvent(B)V
    .locals 0
    .parameter "_event"

    .prologue
    .line 98
    iput-byte p1, p0, Lcom/huawei/android/multiscreen/dlna/sdk/xml/SaxHandler/DocHandler;->event:B

    .line 99
    return-void
.end method

.method public startElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)V
    .locals 2
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
    .line 53
    if-eqz p3, :cond_0

    iget-object v0, p0, Lcom/huawei/android/multiscreen/dlna/sdk/xml/SaxHandler/DocHandler;->reader:Lorg/xml/sax/XMLReader;

    if-eqz v0, :cond_0

    .line 56
    invoke-virtual {p3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    const-string v1, "container"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/huawei/android/multiscreen/dlna/sdk/xml/SaxHandler/DocHandler;->containerHandler:Lcom/huawei/android/multiscreen/dlna/sdk/xml/SaxHandler/ContainerHandler;

    if-eqz v0, :cond_1

    .line 58
    iget-object v0, p0, Lcom/huawei/android/multiscreen/dlna/sdk/xml/SaxHandler/DocHandler;->reader:Lorg/xml/sax/XMLReader;

    iget-object v1, p0, Lcom/huawei/android/multiscreen/dlna/sdk/xml/SaxHandler/DocHandler;->containerHandler:Lcom/huawei/android/multiscreen/dlna/sdk/xml/SaxHandler/ContainerHandler;

    invoke-interface {v0, v1}, Lorg/xml/sax/XMLReader;->setContentHandler(Lorg/xml/sax/ContentHandler;)V

    .line 59
    iget-object v0, p0, Lcom/huawei/android/multiscreen/dlna/sdk/xml/SaxHandler/DocHandler;->containerHandler:Lcom/huawei/android/multiscreen/dlna/sdk/xml/SaxHandler/ContainerHandler;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/huawei/android/multiscreen/dlna/sdk/xml/SaxHandler/ContainerHandler;->startElementFromParentHandler(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)V

    .line 83
    :cond_0
    :goto_0
    return-void

    .line 62
    :cond_1
    invoke-virtual {p3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    const-string v1, "item"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/huawei/android/multiscreen/dlna/sdk/xml/SaxHandler/DocHandler;->itemHandler:Lcom/huawei/android/multiscreen/dlna/sdk/xml/SaxHandler/ItemHandler;

    if-eqz v0, :cond_0

    .line 64
    iget-object v0, p0, Lcom/huawei/android/multiscreen/dlna/sdk/xml/SaxHandler/DocHandler;->reader:Lorg/xml/sax/XMLReader;

    iget-object v1, p0, Lcom/huawei/android/multiscreen/dlna/sdk/xml/SaxHandler/DocHandler;->itemHandler:Lcom/huawei/android/multiscreen/dlna/sdk/xml/SaxHandler/ItemHandler;

    invoke-interface {v0, v1}, Lorg/xml/sax/XMLReader;->setContentHandler(Lorg/xml/sax/ContentHandler;)V

    .line 65
    iget-object v0, p0, Lcom/huawei/android/multiscreen/dlna/sdk/xml/SaxHandler/DocHandler;->itemHandler:Lcom/huawei/android/multiscreen/dlna/sdk/xml/SaxHandler/ItemHandler;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/huawei/android/multiscreen/dlna/sdk/xml/SaxHandler/ItemHandler;->startElementFromParentHandler(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)V

    goto :goto_0
.end method
