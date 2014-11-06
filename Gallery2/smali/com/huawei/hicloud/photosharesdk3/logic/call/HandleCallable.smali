.class public abstract Lcom/huawei/hicloud/photosharesdk3/logic/call/HandleCallable;
.super Ljava/lang/Object;
.source "HandleCallable.java"


# instance fields
.field private o:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Ljava/lang/Object;)V
    .locals 1
    .parameter "o"

    .prologue
    .line 23
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 15
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/huawei/hicloud/photosharesdk3/logic/call/HandleCallable;->o:Ljava/lang/Object;

    .line 25
    iput-object p1, p0, Lcom/huawei/hicloud/photosharesdk3/logic/call/HandleCallable;->o:Ljava/lang/Object;

    .line 26
    return-void
.end method


# virtual methods
.method public abstract handle(Ljava/lang/Object;)V
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 42
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "HandleCallable [o="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/huawei/hicloud/photosharesdk3/logic/call/HandleCallable;->o:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
