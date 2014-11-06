.class public Lcom/huawei/android/multiscreen/dlna/sdk/xml/ParseResult;
.super Ljava/lang/Object;
.source "ParseResult.java"


# instance fields
.field private event:B

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
.method public constructor <init>(Ljava/util/List;Ljava/util/List;B)V
    .locals 0
    .parameter
    .parameter
    .parameter "event"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List",
            "<[",
            "Ljava/lang/String;",
            ">;B)V"
        }
    .end annotation

    .prologue
    .line 27
    .local p1, sqls:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    .local p2, values:Ljava/util/List;,"Ljava/util/List<[Ljava/lang/String;>;"
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 28
    iput-object p1, p0, Lcom/huawei/android/multiscreen/dlna/sdk/xml/ParseResult;->sqls:Ljava/util/List;

    .line 29
    iput-object p2, p0, Lcom/huawei/android/multiscreen/dlna/sdk/xml/ParseResult;->values:Ljava/util/List;

    .line 30
    iput-byte p3, p0, Lcom/huawei/android/multiscreen/dlna/sdk/xml/ParseResult;->event:B

    .line 31
    return-void
.end method


# virtual methods
.method public getEvent()B
    .locals 1

    .prologue
    .line 50
    iget-byte v0, p0, Lcom/huawei/android/multiscreen/dlna/sdk/xml/ParseResult;->event:B

    return v0
.end method

.method public getSqls()Ljava/util/List;
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
    .line 34
    iget-object v0, p0, Lcom/huawei/android/multiscreen/dlna/sdk/xml/ParseResult;->sqls:Ljava/util/List;

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
    .line 42
    iget-object v0, p0, Lcom/huawei/android/multiscreen/dlna/sdk/xml/ParseResult;->values:Ljava/util/List;

    return-object v0
.end method

.method public setEvent(B)V
    .locals 0
    .parameter "event"

    .prologue
    .line 54
    iput-byte p1, p0, Lcom/huawei/android/multiscreen/dlna/sdk/xml/ParseResult;->event:B

    .line 55
    return-void
.end method

.method public setSqls(Ljava/util/List;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 38
    .local p1, sqls:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    iput-object p1, p0, Lcom/huawei/android/multiscreen/dlna/sdk/xml/ParseResult;->sqls:Ljava/util/List;

    .line 39
    return-void
.end method

.method public setValues(Ljava/util/List;)V
    .locals 0
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
    .line 46
    .local p1, values:Ljava/util/List;,"Ljava/util/List<[Ljava/lang/String;>;"
    iput-object p1, p0, Lcom/huawei/android/multiscreen/dlna/sdk/xml/ParseResult;->values:Ljava/util/List;

    .line 47
    return-void
.end method
