.class Lcom/android/server/AlarmManagerService$MultiMap;
.super Ljava/lang/Object;
.source "AlarmManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/AlarmManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "MultiMap"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private store:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<TK;",
            "Ljava/util/List",
            "<TV;>;>;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 3354
    .local p0, this:Lcom/android/server/AlarmManagerService$MultiMap;,"Lcom/android/server/AlarmManagerService$MultiMap<TK;TV;>;"
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 3355
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/AlarmManagerService$MultiMap;->store:Ljava/util/HashMap;

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/AlarmManagerService$1;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 3354
    .local p0, this:Lcom/android/server/AlarmManagerService$MultiMap;,"Lcom/android/server/AlarmManagerService$MultiMap<TK;TV;>;"
    invoke-direct {p0}, Lcom/android/server/AlarmManagerService$MultiMap;-><init>()V

    return-void
.end method


# virtual methods
.method clear()V
    .locals 1

    .prologue
    .line 3394
    .local p0, this:Lcom/android/server/AlarmManagerService$MultiMap;,"Lcom/android/server/AlarmManagerService$MultiMap<TK;TV;>;"
    iget-object v0, p0, Lcom/android/server/AlarmManagerService$MultiMap;->store:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 3395
    return-void
.end method

.method containsEntry(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 2
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)Z"
        }
    .end annotation

    .prologue
    .line 3385
    .local p0, this:Lcom/android/server/AlarmManagerService$MultiMap;,"Lcom/android/server/AlarmManagerService$MultiMap<TK;TV;>;"
    .local p1, key:Ljava/lang/Object;,"TK;"
    .local p2, val:Ljava/lang/Object;,"TV;"
    iget-object v1, p0, Lcom/android/server/AlarmManagerService$MultiMap;->store:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 3386
    .local v0, curVals:Ljava/util/List;,"Ljava/util/List<TV;>;"
    if-eqz v0, :cond_0

    invoke-interface {v0, p2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3387
    const/4 v1, 0x1

    .line 3389
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method getAll(Ljava/lang/Object;)Ljava/util/List;
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)",
            "Ljava/util/List",
            "<TV;>;"
        }
    .end annotation

    .prologue
    .line 3358
    .local p0, this:Lcom/android/server/AlarmManagerService$MultiMap;,"Lcom/android/server/AlarmManagerService$MultiMap<TK;TV;>;"
    .local p1, key:Ljava/lang/Object;,"TK;"
    iget-object v1, p0, Lcom/android/server/AlarmManagerService$MultiMap;->store:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 3359
    .local v0, values:Ljava/util/List;,"Ljava/util/List<TV;>;"
    if-eqz v0, :cond_0

    .end local v0           #values:Ljava/util/List;,"Ljava/util/List<TV;>;"
    :goto_0
    return-object v0

    .restart local v0       #values:Ljava/util/List;,"Ljava/util/List<TV;>;"
    :cond_0
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    goto :goto_0
.end method

.method put(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 2
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)V"
        }
    .end annotation

    .prologue
    .line 3363
    .local p0, this:Lcom/android/server/AlarmManagerService$MultiMap;,"Lcom/android/server/AlarmManagerService$MultiMap<TK;TV;>;"
    .local p1, key:Ljava/lang/Object;,"TK;"
    .local p2, val:Ljava/lang/Object;,"TV;"
    iget-object v1, p0, Lcom/android/server/AlarmManagerService$MultiMap;->store:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 3364
    .local v0, curVals:Ljava/util/List;,"Ljava/util/List<TV;>;"
    if-nez v0, :cond_0

    .line 3365
    new-instance v0, Ljava/util/ArrayList;

    .end local v0           #curVals:Ljava/util/List;,"Ljava/util/List<TV;>;"
    const/4 v1, 0x3

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 3366
    .restart local v0       #curVals:Ljava/util/List;,"Ljava/util/List<TV;>;"
    iget-object v1, p0, Lcom/android/server/AlarmManagerService$MultiMap;->store:Ljava/util/HashMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3368
    :cond_0
    invoke-interface {v0, p2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 3369
    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3371
    :cond_1
    return-void
.end method

.method remove(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 2
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)V"
        }
    .end annotation

    .prologue
    .line 3378
    .local p0, this:Lcom/android/server/AlarmManagerService$MultiMap;,"Lcom/android/server/AlarmManagerService$MultiMap<TK;TV;>;"
    .local p1, key:Ljava/lang/Object;,"TK;"
    .local p2, val:Ljava/lang/Object;,"TV;"
    iget-object v1, p0, Lcom/android/server/AlarmManagerService$MultiMap;->store:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 3379
    .local v0, curVals:Ljava/util/List;,"Ljava/util/List<TV;>;"
    if-eqz v0, :cond_0

    .line 3380
    invoke-interface {v0, p2}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 3382
    :cond_0
    return-void
.end method

.method removeAll(Ljava/lang/Object;)V
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)V"
        }
    .end annotation

    .prologue
    .line 3374
    .local p0, this:Lcom/android/server/AlarmManagerService$MultiMap;,"Lcom/android/server/AlarmManagerService$MultiMap<TK;TV;>;"
    .local p1, key:Ljava/lang/Object;,"TK;"
    iget-object v0, p0, Lcom/android/server/AlarmManagerService$MultiMap;->store:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3375
    return-void
.end method
