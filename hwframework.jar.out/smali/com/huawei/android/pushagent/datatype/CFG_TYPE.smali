.class public Lcom/huawei/android/pushagent/datatype/CFG_TYPE;
.super Ljava/lang/Object;
.source "CFG_TYPE.java"


# instance fields
.field public itemClass:Ljava/lang/Class;

.field public itemName:Ljava/lang/String;

.field public itemValue:Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;)V
    .locals 0
    .parameter "name"
    .parameter "cls"
    .parameter "value"

    .prologue
    .line 11
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 12
    iput-object p1, p0, Lcom/huawei/android/pushagent/datatype/CFG_TYPE;->itemName:Ljava/lang/String;

    .line 13
    iput-object p2, p0, Lcom/huawei/android/pushagent/datatype/CFG_TYPE;->itemClass:Ljava/lang/Class;

    .line 14
    iput-object p3, p0, Lcom/huawei/android/pushagent/datatype/CFG_TYPE;->itemValue:Ljava/lang/Object;

    .line 15
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/String;)V
    .locals 0
    .parameter "name"
    .parameter "cls"
    .parameter "value"

    .prologue
    .line 17
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 18
    iput-object p1, p0, Lcom/huawei/android/pushagent/datatype/CFG_TYPE;->itemName:Ljava/lang/String;

    .line 19
    iput-object p2, p0, Lcom/huawei/android/pushagent/datatype/CFG_TYPE;->itemClass:Ljava/lang/Class;

    .line 20
    invoke-virtual {p0, p3}, Lcom/huawei/android/pushagent/datatype/CFG_TYPE;->setItemValue(Ljava/lang/String;)V

    .line 21
    return-void
.end method


# virtual methods
.method public setItemValue(Ljava/lang/String;)V
    .locals 2
    .parameter "str"

    .prologue
    .line 33
    const-class v0, Ljava/lang/String;

    iget-object v1, p0, Lcom/huawei/android/pushagent/datatype/CFG_TYPE;->itemClass:Ljava/lang/Class;

    if-ne v0, v1, :cond_0

    .line 34
    iput-object p1, p0, Lcom/huawei/android/pushagent/datatype/CFG_TYPE;->itemValue:Ljava/lang/Object;

    .line 44
    :goto_0
    return-void

    .line 35
    :cond_0
    const-class v0, Ljava/lang/Integer;

    iget-object v1, p0, Lcom/huawei/android/pushagent/datatype/CFG_TYPE;->itemClass:Ljava/lang/Class;

    if-ne v0, v1, :cond_1

    .line 36
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/huawei/android/pushagent/datatype/CFG_TYPE;->itemValue:Ljava/lang/Object;

    goto :goto_0

    .line 37
    :cond_1
    const-class v0, Ljava/lang/Long;

    iget-object v1, p0, Lcom/huawei/android/pushagent/datatype/CFG_TYPE;->itemClass:Ljava/lang/Class;

    if-ne v0, v1, :cond_2

    .line 38
    invoke-static {p1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lcom/huawei/android/pushagent/datatype/CFG_TYPE;->itemValue:Ljava/lang/Object;

    goto :goto_0

    .line 39
    :cond_2
    const-class v0, Ljava/lang/Boolean;

    iget-object v1, p0, Lcom/huawei/android/pushagent/datatype/CFG_TYPE;->itemClass:Ljava/lang/Class;

    if-ne v0, v1, :cond_3

    .line 40
    invoke-static {p1}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/huawei/android/pushagent/datatype/CFG_TYPE;->itemValue:Ljava/lang/Object;

    goto :goto_0

    .line 42
    :cond_3
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/huawei/android/pushagent/datatype/CFG_TYPE;->itemValue:Ljava/lang/Object;

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 24
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    iget-object v1, p0, Lcom/huawei/android/pushagent/datatype/CFG_TYPE;->itemName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget-object v1, p0, Lcom/huawei/android/pushagent/datatype/CFG_TYPE;->itemValue:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget-object v1, p0, Lcom/huawei/android/pushagent/datatype/CFG_TYPE;->itemClass:Ljava/lang/Class;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
