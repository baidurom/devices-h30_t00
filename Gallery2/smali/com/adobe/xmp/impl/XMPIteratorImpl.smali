.class public Lcom/adobe/xmp/impl/XMPIteratorImpl;
.super Ljava/lang/Object;
.source "XMPIteratorImpl.java"

# interfaces
.implements Lcom/adobe/xmp/XMPIterator;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/adobe/xmp/impl/XMPIteratorImpl$NodeIteratorChildren;,
        Lcom/adobe/xmp/impl/XMPIteratorImpl$NodeIterator;
    }
.end annotation


# instance fields
.field private baseNS:Ljava/lang/String;

.field private nodeIterator:Ljava/util/Iterator;

.field private options:Lcom/adobe/xmp/options/IteratorOptions;

.field protected skipSiblings:Z

.field protected skipSubtree:Z


# direct methods
.method public constructor <init>(Lcom/adobe/xmp/impl/XMPMetaImpl;Ljava/lang/String;Ljava/lang/String;Lcom/adobe/xmp/options/IteratorOptions;)V
    .locals 11
    .parameter "xmp"
    .parameter "schemaNS"
    .parameter "propPath"
    .parameter "options"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/adobe/xmp/XMPException;
        }
    .end annotation

    .prologue
    const/4 v10, 0x0

    const/4 v7, 0x1

    const/4 v8, 0x0

    .line 59
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 39
    iput-object v10, p0, Lcom/adobe/xmp/impl/XMPIteratorImpl;->baseNS:Ljava/lang/String;

    .line 41
    iput-boolean v8, p0, Lcom/adobe/xmp/impl/XMPIteratorImpl;->skipSiblings:Z

    .line 43
    iput-boolean v8, p0, Lcom/adobe/xmp/impl/XMPIteratorImpl;->skipSubtree:Z

    .line 45
    iput-object v10, p0, Lcom/adobe/xmp/impl/XMPIteratorImpl;->nodeIterator:Ljava/util/Iterator;

    .line 61
    if-eqz p4, :cond_0

    .end local p4
    :goto_0
    iput-object p4, p0, Lcom/adobe/xmp/impl/XMPIteratorImpl;->options:Lcom/adobe/xmp/options/IteratorOptions;

    .line 64
    const/4 v6, 0x0

    .line 65
    .local v6, startNode:Lcom/adobe/xmp/impl/XMPNode;
    const/4 v4, 0x0

    .line 66
    .local v4, initialPath:Ljava/lang/String;
    if-eqz p2, :cond_1

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v9

    if-lez v9, :cond_1

    move v2, v7

    .line 67
    .local v2, baseSchema:Z
    :goto_1
    if-eqz p3, :cond_2

    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v9

    if-lez v9, :cond_2

    move v1, v7

    .line 69
    .local v1, baseProperty:Z
    :goto_2
    if-nez v2, :cond_3

    if-nez v1, :cond_3

    .line 72
    invoke-virtual {p1}, Lcom/adobe/xmp/impl/XMPMetaImpl;->getRoot()Lcom/adobe/xmp/impl/XMPNode;

    move-result-object v6

    .line 103
    :goto_3
    if-eqz v6, :cond_8

    .line 105
    iget-object v8, p0, Lcom/adobe/xmp/impl/XMPIteratorImpl;->options:Lcom/adobe/xmp/options/IteratorOptions;

    invoke-virtual {v8}, Lcom/adobe/xmp/options/IteratorOptions;->isJustChildren()Z

    move-result v8

    if-nez v8, :cond_7

    .line 107
    new-instance v8, Lcom/adobe/xmp/impl/XMPIteratorImpl$NodeIterator;

    invoke-direct {v8, p0, v6, v4, v7}, Lcom/adobe/xmp/impl/XMPIteratorImpl$NodeIterator;-><init>(Lcom/adobe/xmp/impl/XMPIteratorImpl;Lcom/adobe/xmp/impl/XMPNode;Ljava/lang/String;I)V

    iput-object v8, p0, Lcom/adobe/xmp/impl/XMPIteratorImpl;->nodeIterator:Ljava/util/Iterator;

    .line 119
    :goto_4
    return-void

    .line 61
    .end local v1           #baseProperty:Z
    .end local v2           #baseSchema:Z
    .end local v4           #initialPath:Ljava/lang/String;
    .end local v6           #startNode:Lcom/adobe/xmp/impl/XMPNode;
    .restart local p4
    :cond_0
    new-instance p4, Lcom/adobe/xmp/options/IteratorOptions;

    .end local p4
    invoke-direct {p4}, Lcom/adobe/xmp/options/IteratorOptions;-><init>()V

    goto :goto_0

    .restart local v4       #initialPath:Ljava/lang/String;
    .restart local v6       #startNode:Lcom/adobe/xmp/impl/XMPNode;
    :cond_1
    move v2, v8

    .line 66
    goto :goto_1

    .restart local v2       #baseSchema:Z
    :cond_2
    move v1, v8

    .line 67
    goto :goto_2

    .line 74
    .restart local v1       #baseProperty:Z
    :cond_3
    if-eqz v2, :cond_5

    if-eqz v1, :cond_5

    .line 77
    invoke-static {p2, p3}, Lcom/adobe/xmp/impl/xpath/XMPPathParser;->expandXPath(Ljava/lang/String;Ljava/lang/String;)Lcom/adobe/xmp/impl/xpath/XMPPath;

    move-result-object v5

    .line 80
    .local v5, path:Lcom/adobe/xmp/impl/xpath/XMPPath;
    new-instance v0, Lcom/adobe/xmp/impl/xpath/XMPPath;

    invoke-direct {v0}, Lcom/adobe/xmp/impl/xpath/XMPPath;-><init>()V

    .line 81
    .local v0, basePath:Lcom/adobe/xmp/impl/xpath/XMPPath;
    const/4 v3, 0x0

    .local v3, i:I
    :goto_5
    invoke-virtual {v5}, Lcom/adobe/xmp/impl/xpath/XMPPath;->size()I

    move-result v9

    add-int/lit8 v9, v9, -0x1

    if-ge v3, v9, :cond_4

    .line 83
    invoke-virtual {v5, v3}, Lcom/adobe/xmp/impl/xpath/XMPPath;->getSegment(I)Lcom/adobe/xmp/impl/xpath/XMPPathSegment;

    move-result-object v9

    invoke-virtual {v0, v9}, Lcom/adobe/xmp/impl/xpath/XMPPath;->add(Lcom/adobe/xmp/impl/xpath/XMPPathSegment;)V

    .line 81
    add-int/lit8 v3, v3, 0x1

    goto :goto_5

    .line 86
    :cond_4
    invoke-virtual {p1}, Lcom/adobe/xmp/impl/XMPMetaImpl;->getRoot()Lcom/adobe/xmp/impl/XMPNode;

    move-result-object v9

    invoke-static {v9, v5, v8, v10}, Lcom/adobe/xmp/impl/XMPNodeUtils;->findNode(Lcom/adobe/xmp/impl/XMPNode;Lcom/adobe/xmp/impl/xpath/XMPPath;ZLcom/adobe/xmp/options/PropertyOptions;)Lcom/adobe/xmp/impl/XMPNode;

    move-result-object v6

    .line 87
    iput-object p2, p0, Lcom/adobe/xmp/impl/XMPIteratorImpl;->baseNS:Ljava/lang/String;

    .line 88
    invoke-virtual {v0}, Lcom/adobe/xmp/impl/xpath/XMPPath;->toString()Ljava/lang/String;

    move-result-object v4

    .line 89
    goto :goto_3

    .line 90
    .end local v0           #basePath:Lcom/adobe/xmp/impl/xpath/XMPPath;
    .end local v3           #i:I
    .end local v5           #path:Lcom/adobe/xmp/impl/xpath/XMPPath;
    :cond_5
    if-eqz v2, :cond_6

    if-nez v1, :cond_6

    .line 93
    invoke-virtual {p1}, Lcom/adobe/xmp/impl/XMPMetaImpl;->getRoot()Lcom/adobe/xmp/impl/XMPNode;

    move-result-object v9

    invoke-static {v9, p2, v8}, Lcom/adobe/xmp/impl/XMPNodeUtils;->findSchemaNode(Lcom/adobe/xmp/impl/XMPNode;Ljava/lang/String;Z)Lcom/adobe/xmp/impl/XMPNode;

    move-result-object v6

    goto :goto_3

    .line 98
    :cond_6
    new-instance v7, Lcom/adobe/xmp/XMPException;

    const-string v8, "Schema namespace URI is required"

    const/16 v9, 0x65

    invoke-direct {v7, v8, v9}, Lcom/adobe/xmp/XMPException;-><init>(Ljava/lang/String;I)V

    throw v7

    .line 111
    :cond_7
    new-instance v7, Lcom/adobe/xmp/impl/XMPIteratorImpl$NodeIteratorChildren;

    invoke-direct {v7, p0, v6, v4}, Lcom/adobe/xmp/impl/XMPIteratorImpl$NodeIteratorChildren;-><init>(Lcom/adobe/xmp/impl/XMPIteratorImpl;Lcom/adobe/xmp/impl/XMPNode;Ljava/lang/String;)V

    iput-object v7, p0, Lcom/adobe/xmp/impl/XMPIteratorImpl;->nodeIterator:Ljava/util/Iterator;

    goto :goto_4

    .line 117
    :cond_8
    sget-object v7, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    iput-object v7, p0, Lcom/adobe/xmp/impl/XMPIteratorImpl;->nodeIterator:Ljava/util/Iterator;

    goto :goto_4
.end method


# virtual methods
.method protected getBaseNS()Ljava/lang/String;
    .locals 1

    .prologue
    .line 182
    iget-object v0, p0, Lcom/adobe/xmp/impl/XMPIteratorImpl;->baseNS:Ljava/lang/String;

    return-object v0
.end method

.method protected getOptions()Lcom/adobe/xmp/options/IteratorOptions;
    .locals 1

    .prologue
    .line 173
    iget-object v0, p0, Lcom/adobe/xmp/impl/XMPIteratorImpl;->options:Lcom/adobe/xmp/options/IteratorOptions;

    return-object v0
.end method

.method public hasNext()Z
    .locals 1

    .prologue
    .line 146
    iget-object v0, p0, Lcom/adobe/xmp/impl/XMPIteratorImpl;->nodeIterator:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    return v0
.end method

.method public next()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 155
    iget-object v0, p0, Lcom/adobe/xmp/impl/XMPIteratorImpl;->nodeIterator:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public remove()V
    .locals 2

    .prologue
    .line 164
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "The XMPIterator does not support remove()."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected setBaseNS(Ljava/lang/String;)V
    .locals 0
    .parameter "baseNS"

    .prologue
    .line 191
    iput-object p1, p0, Lcom/adobe/xmp/impl/XMPIteratorImpl;->baseNS:Ljava/lang/String;

    .line 192
    return-void
.end method

.method public skipSiblings()V
    .locals 1

    .prologue
    .line 136
    invoke-virtual {p0}, Lcom/adobe/xmp/impl/XMPIteratorImpl;->skipSubtree()V

    .line 137
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/adobe/xmp/impl/XMPIteratorImpl;->skipSiblings:Z

    .line 138
    return-void
.end method

.method public skipSubtree()V
    .locals 1

    .prologue
    .line 127
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/adobe/xmp/impl/XMPIteratorImpl;->skipSubtree:Z

    .line 128
    return-void
.end method
