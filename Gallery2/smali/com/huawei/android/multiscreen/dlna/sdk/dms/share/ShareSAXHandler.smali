.class public Lcom/huawei/android/multiscreen/dlna/sdk/dms/share/ShareSAXHandler;
.super Lorg/xml/sax/helpers/DefaultHandler;
.source "ShareSAXHandler.java"


# instance fields
.field private values:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 17
    invoke-direct {p0}, Lorg/xml/sax/helpers/DefaultHandler;-><init>()V

    .line 19
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/huawei/android/multiscreen/dlna/sdk/dms/share/ShareSAXHandler;->values:Ljava/util/ArrayList;

    .line 17
    return-void
.end method


# virtual methods
.method public clearValue()V
    .locals 1

    .prologue
    .line 69
    iget-object v0, p0, Lcom/huawei/android/multiscreen/dlna/sdk/dms/share/ShareSAXHandler;->values:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/huawei/android/multiscreen/dlna/sdk/dms/share/ShareSAXHandler;->values:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 70
    iget-object v0, p0, Lcom/huawei/android/multiscreen/dlna/sdk/dms/share/ShareSAXHandler;->values:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 72
    :cond_0
    return-void
.end method

.method public endDocument()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 38
    invoke-super {p0}, Lorg/xml/sax/helpers/DefaultHandler;->endDocument()V

    .line 39
    return-void
.end method

.method public endElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter "uri"
    .parameter "localName"
    .parameter "qName"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 63
    return-void
.end method

.method public getValues()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 27
    iget-object v0, p0, Lcom/huawei/android/multiscreen/dlna/sdk/dms/share/ShareSAXHandler;->values:Ljava/util/ArrayList;

    return-object v0
.end method

.method public startDocument()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 32
    invoke-super {p0}, Lorg/xml/sax/helpers/DefaultHandler;->startDocument()V

    .line 34
    return-void
.end method

.method public startElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)V
    .locals 3
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
    .line 45
    if-eqz p2, :cond_0

    const-string v1, "filePath"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 46
    if-nez p4, :cond_1

    .line 57
    :cond_0
    return-void

    .line 50
    :cond_1
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    invoke-interface {p4}, Lorg/xml/sax/Attributes;->getLength()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 51
    invoke-interface {p4, v0}, Lorg/xml/sax/Attributes;->getLocalName(I)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 52
    invoke-interface {p4, v0}, Lorg/xml/sax/Attributes;->getLocalName(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "path"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 53
    iget-object v1, p0, Lcom/huawei/android/multiscreen/dlna/sdk/dms/share/ShareSAXHandler;->values:Ljava/util/ArrayList;

    invoke-interface {p4, v0}, Lorg/xml/sax/Attributes;->getValue(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 50
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method
