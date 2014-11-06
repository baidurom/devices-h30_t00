.class public Lcn/real/device/assparser/SsaContent;
.super Ljava/lang/Object;
.source "SsaContent.java"


# instance fields
.field private mFormat:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mIndex:J


# direct methods
.method constructor <init>(JLjava/util/HashMap;)V
    .locals 0
    .parameter "index"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 16
    .local p3, data:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 17
    iput-wide p1, p0, Lcn/real/device/assparser/SsaContent;->mIndex:J

    .line 18
    iput-object p3, p0, Lcn/real/device/assparser/SsaContent;->mFormat:Ljava/util/HashMap;

    .line 19
    return-void
.end method


# virtual methods
.method public GetDuration()Ljava/lang/String;
    .locals 2

    .prologue
    .line 51
    iget-object v0, p0, Lcn/real/device/assparser/SsaContent;->mFormat:Ljava/util/HashMap;

    if-nez v0, :cond_0

    .line 52
    const/4 v0, 0x0

    .line 54
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcn/real/device/assparser/SsaContent;->mFormat:Ljava/util/HashMap;

    const-string v1, "duration"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    goto :goto_0
.end method

.method public GetEffect()Ljava/lang/String;
    .locals 2

    .prologue
    .line 65
    iget-object v0, p0, Lcn/real/device/assparser/SsaContent;->mFormat:Ljava/util/HashMap;

    if-nez v0, :cond_0

    .line 66
    const/4 v0, 0x0

    .line 68
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcn/real/device/assparser/SsaContent;->mFormat:Ljava/util/HashMap;

    const-string v1, "effect"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    goto :goto_0
.end method

.method public GetIndex()J
    .locals 2

    .prologue
    .line 21
    iget-wide v0, p0, Lcn/real/device/assparser/SsaContent;->mIndex:J

    return-wide v0
.end method

.method public GetStyle()Ljava/lang/String;
    .locals 2

    .prologue
    .line 58
    iget-object v0, p0, Lcn/real/device/assparser/SsaContent;->mFormat:Ljava/util/HashMap;

    if-nez v0, :cond_0

    .line 59
    const/4 v0, 0x0

    .line 61
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcn/real/device/assparser/SsaContent;->mFormat:Ljava/util/HashMap;

    const-string v1, "style"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    goto :goto_0
.end method

.method public GetSubTitle()Ljava/lang/String;
    .locals 2

    .prologue
    .line 44
    iget-object v0, p0, Lcn/real/device/assparser/SsaContent;->mFormat:Ljava/util/HashMap;

    if-nez v0, :cond_0

    .line 45
    const/4 v0, 0x0

    .line 47
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcn/real/device/assparser/SsaContent;->mFormat:Ljava/util/HashMap;

    const-string v1, "text"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    goto :goto_0
.end method

.method public PrintAll()V
    .locals 5

    .prologue
    .line 25
    const/4 v0, 0x0

    .line 26
    .local v0, iterator:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/String;>;"
    iget-object v2, p0, Lcn/real/device/assparser/SsaContent;->mFormat:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    .line 27
    iget-object v2, p0, Lcn/real/device/assparser/SsaContent;->mFormat:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 28
    const/4 v1, 0x0

    .line 29
    .local v1, temp:Ljava/lang/String;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_1

    .line 35
    .end local v1           #temp:Ljava/lang/String;
    :cond_0
    return-void

    .line 30
    .restart local v1       #temp:Ljava/lang/String;
    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .end local v1           #temp:Ljava/lang/String;
    check-cast v1, Ljava/lang/String;

    .line 31
    .restart local v1       #temp:Ljava/lang/String;
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "====>key="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 32
    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v2, "====>value="

    invoke-direct {v4, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcn/real/device/assparser/SsaContent;->mFormat:Ljava/util/HashMap;

    invoke-virtual {v2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public SetSubTitle(Ljava/lang/String;)V
    .locals 2
    .parameter "text"

    .prologue
    .line 38
    iget-object v0, p0, Lcn/real/device/assparser/SsaContent;->mFormat:Ljava/util/HashMap;

    if-eqz v0, :cond_0

    .line 39
    iget-object v0, p0, Lcn/real/device/assparser/SsaContent;->mFormat:Ljava/util/HashMap;

    const-string v1, "text"

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 41
    :cond_0
    return-void
.end method
