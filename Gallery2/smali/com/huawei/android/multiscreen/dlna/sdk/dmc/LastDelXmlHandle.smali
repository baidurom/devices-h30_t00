.class public Lcom/huawei/android/multiscreen/dlna/sdk/dmc/LastDelXmlHandle;
.super Lorg/xml/sax/helpers/DefaultHandler;
.source "LastDelXmlHandle.java"


# instance fields
.field private currentIndex:I

.field private delList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private isFromHuawei:Z

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

.field private str:Ljava/lang/StringBuilder;

.field private systemUpdateID:I


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 26
    invoke-direct {p0}, Lorg/xml/sax/helpers/DefaultHandler;-><init>()V

    .line 16
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/LastDelXmlHandle;->map:Ljava/util/Map;

    .line 18
    const/4 v0, -0x1

    iput v0, p0, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/LastDelXmlHandle;->currentIndex:I

    .line 21
    iput v2, p0, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/LastDelXmlHandle;->systemUpdateID:I

    .line 22
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/LastDelXmlHandle;->delList:Ljava/util/List;

    .line 24
    iput-boolean v2, p0, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/LastDelXmlHandle;->isFromHuawei:Z

    .line 27
    iget-object v0, p0, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/LastDelXmlHandle;->map:Ljava/util/Map;

    const-string v1, "e:propertyset"

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 28
    iget-object v0, p0, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/LastDelXmlHandle;->map:Ljava/util/Map;

    const-string v1, "SystemUpdateID"

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 29
    iget-object v0, p0, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/LastDelXmlHandle;->map:Ljava/util/Map;

    const-string v1, "objDel"

    const/4 v2, 0x2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 30
    iget-object v0, p0, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/LastDelXmlHandle;->map:Ljava/util/Map;

    const-string v1, "LastDel"

    const/4 v2, 0x3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 31
    return-void
.end method


# virtual methods
.method public characters([CII)V
    .locals 4
    .parameter "ch"
    .parameter "start"
    .parameter "length"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 68
    :try_start_0
    iget v2, p0, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/LastDelXmlHandle;->currentIndex:I

    packed-switch v2, :pswitch_data_0

    .line 87
    :goto_0
    return-void

    .line 71
    :pswitch_0
    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, p1, p2, p3}, Ljava/lang/String;-><init>([CII)V

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    .line 72
    .local v1, tempUpdateID:Ljava/lang/String;
    iget-object v2, p0, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/LastDelXmlHandle;->str:Ljava/lang/StringBuilder;

    if-nez v2, :cond_0

    .line 74
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v2, p0, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/LastDelXmlHandle;->str:Ljava/lang/StringBuilder;

    .line 76
    :cond_0
    iget-object v2, p0, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/LastDelXmlHandle;->str:Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 83
    .end local v1           #tempUpdateID:Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 84
    .local v0, e:Ljava/lang/Exception;
    const-string v2, "LastDelXmlHandle"

    const-string v3, "LastDelXmlHandle Err"

    invoke-static {v2, v3}, Lcom/huawei/android/multiscreen/dlna/sdk/util/DebugLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 68
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public endElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .parameter "uri"
    .parameter "localName"
    .parameter "qName"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 92
    iget-object v2, p0, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/LastDelXmlHandle;->map:Ljava/util/Map;

    invoke-interface {v2, p3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    .line 94
    .local v1, index:Ljava/lang/Integer;
    if-eqz v1, :cond_0

    .line 96
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    .line 113
    :cond_0
    :goto_0
    const/4 v2, -0x1

    iput v2, p0, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/LastDelXmlHandle;->currentIndex:I

    .line 114
    return-void

    .line 101
    :pswitch_0
    :try_start_0
    iget-object v2, p0, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/LastDelXmlHandle;->str:Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iput v2, p0, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/LastDelXmlHandle;->systemUpdateID:I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 105
    :goto_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v2, p0, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/LastDelXmlHandle;->str:Ljava/lang/StringBuilder;

    goto :goto_0

    .line 102
    :catch_0
    move-exception v0

    .line 103
    .local v0, e:Ljava/lang/NumberFormatException;
    const/4 v2, 0x0

    iput v2, p0, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/LastDelXmlHandle;->systemUpdateID:I

    goto :goto_1

    .line 96
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public getDelList()Ljava/util/List;
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
    .line 121
    iget-object v0, p0, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/LastDelXmlHandle;->delList:Ljava/util/List;

    return-object v0
.end method

.method public getIsFromHuawei()Z
    .locals 1

    .prologue
    .line 137
    iget-boolean v0, p0, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/LastDelXmlHandle;->isFromHuawei:Z

    return v0
.end method

.method public getSystemUpdateId()I
    .locals 1

    .prologue
    .line 129
    iget v0, p0, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/LastDelXmlHandle;->systemUpdateID:I

    return v0
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
    .line 36
    iget-object v2, p0, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/LastDelXmlHandle;->map:Ljava/util/Map;

    invoke-interface {v2, p3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 38
    .local v0, index:Ljava/lang/Integer;
    if-nez v0, :cond_1

    .line 39
    const/4 v2, -0x1

    iput v2, p0, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/LastDelXmlHandle;->currentIndex:I

    .line 62
    :cond_0
    :goto_0
    return-void

    .line 43
    :cond_1
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iput v2, p0, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/LastDelXmlHandle;->currentIndex:I

    packed-switch v2, :pswitch_data_0

    :pswitch_0
    goto :goto_0

    .line 45
    :pswitch_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v2, p0, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/LastDelXmlHandle;->str:Ljava/lang/StringBuilder;

    goto :goto_0

    .line 48
    :pswitch_2
    const-string v2, "objID"

    invoke-interface {p4, v2}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 49
    .local v1, objID:Ljava/lang/String;
    if-eqz v1, :cond_0

    .line 50
    iget-object v2, p0, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/LastDelXmlHandle;->delList:Ljava/util/List;

    if-nez v2, :cond_2

    .line 51
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/LastDelXmlHandle;->delList:Ljava/util/List;

    .line 53
    :cond_2
    iget-object v2, p0, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/LastDelXmlHandle;->delList:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 57
    .end local v1           #objID:Ljava/lang/String;
    :pswitch_3
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/LastDelXmlHandle;->isFromHuawei:Z

    goto :goto_0

    .line 43
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
