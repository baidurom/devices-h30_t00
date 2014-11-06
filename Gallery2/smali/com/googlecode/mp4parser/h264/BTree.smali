.class public Lcom/googlecode/mp4parser/h264/BTree;
.super Ljava/lang/Object;
.source "BTree.java"


# instance fields
.field private one:Lcom/googlecode/mp4parser/h264/BTree;

.field private value:Ljava/lang/Object;

.field private zero:Lcom/googlecode/mp4parser/h264/BTree;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 29
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public addString(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 3
    .parameter "path"
    .parameter "value"

    .prologue
    .line 41
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_0

    .line 42
    iput-object p2, p0, Lcom/googlecode/mp4parser/h264/BTree;->value:Ljava/lang/Object;

    .line 57
    :goto_0
    return-void

    .line 45
    :cond_0
    const/4 v2, 0x0

    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 47
    .local v1, charAt:C
    const/16 v2, 0x30

    if-ne v1, v2, :cond_2

    .line 48
    iget-object v2, p0, Lcom/googlecode/mp4parser/h264/BTree;->zero:Lcom/googlecode/mp4parser/h264/BTree;

    if-nez v2, :cond_1

    .line 49
    new-instance v2, Lcom/googlecode/mp4parser/h264/BTree;

    invoke-direct {v2}, Lcom/googlecode/mp4parser/h264/BTree;-><init>()V

    iput-object v2, p0, Lcom/googlecode/mp4parser/h264/BTree;->zero:Lcom/googlecode/mp4parser/h264/BTree;

    .line 50
    :cond_1
    iget-object v0, p0, Lcom/googlecode/mp4parser/h264/BTree;->zero:Lcom/googlecode/mp4parser/h264/BTree;

    .line 56
    .local v0, branch:Lcom/googlecode/mp4parser/h264/BTree;
    :goto_1
    const/4 v2, 0x1

    invoke-virtual {p1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2, p2}, Lcom/googlecode/mp4parser/h264/BTree;->addString(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0

    .line 52
    .end local v0           #branch:Lcom/googlecode/mp4parser/h264/BTree;
    :cond_2
    iget-object v2, p0, Lcom/googlecode/mp4parser/h264/BTree;->one:Lcom/googlecode/mp4parser/h264/BTree;

    if-nez v2, :cond_3

    .line 53
    new-instance v2, Lcom/googlecode/mp4parser/h264/BTree;

    invoke-direct {v2}, Lcom/googlecode/mp4parser/h264/BTree;-><init>()V

    iput-object v2, p0, Lcom/googlecode/mp4parser/h264/BTree;->one:Lcom/googlecode/mp4parser/h264/BTree;

    .line 54
    :cond_3
    iget-object v0, p0, Lcom/googlecode/mp4parser/h264/BTree;->one:Lcom/googlecode/mp4parser/h264/BTree;

    .restart local v0       #branch:Lcom/googlecode/mp4parser/h264/BTree;
    goto :goto_1
.end method

.method public down(I)Lcom/googlecode/mp4parser/h264/BTree;
    .locals 1
    .parameter "b"

    .prologue
    .line 60
    if-nez p1, :cond_0

    .line 61
    iget-object v0, p0, Lcom/googlecode/mp4parser/h264/BTree;->zero:Lcom/googlecode/mp4parser/h264/BTree;

    .line 63
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/googlecode/mp4parser/h264/BTree;->one:Lcom/googlecode/mp4parser/h264/BTree;

    goto :goto_0
.end method

.method public getValue()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 67
    iget-object v0, p0, Lcom/googlecode/mp4parser/h264/BTree;->value:Ljava/lang/Object;

    return-object v0
.end method
