.class public final Lcom/google/gson/internal/bind/MiniGson$Builder;
.super Ljava/lang/Object;
.source "MiniGson.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/gson/internal/bind/MiniGson;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field addDefaultFactories:Z

.field private final factories:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/gson/internal/bind/TypeAdapter$Factory;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 173
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 174
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/gson/internal/bind/MiniGson$Builder;->factories:Ljava/util/List;

    .line 175
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/gson/internal/bind/MiniGson$Builder;->addDefaultFactories:Z

    return-void
.end method

.method static synthetic access$000(Lcom/google/gson/internal/bind/MiniGson$Builder;)Ljava/util/List;
    .locals 1
    .parameter "x0"

    .prologue
    .line 173
    iget-object v0, p0, Lcom/google/gson/internal/bind/MiniGson$Builder;->factories:Ljava/util/List;

    return-object v0
.end method


# virtual methods
.method public build()Lcom/google/gson/internal/bind/MiniGson;
    .locals 2

    .prologue
    .line 203
    new-instance v0, Lcom/google/gson/internal/bind/MiniGson;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/gson/internal/bind/MiniGson;-><init>(Lcom/google/gson/internal/bind/MiniGson$Builder;Lcom/google/gson/internal/bind/MiniGson$1;)V

    return-object v0
.end method

.method public factory(Lcom/google/gson/internal/bind/TypeAdapter$Factory;)Lcom/google/gson/internal/bind/MiniGson$Builder;
    .locals 1
    .parameter "factory"

    .prologue
    .line 178
    iget-object v0, p0, Lcom/google/gson/internal/bind/MiniGson$Builder;->factories:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 179
    return-object p0
.end method

.method public typeAdapter(Lcom/google/gson/reflect/TypeToken;Lcom/google/gson/internal/bind/TypeAdapter;)Lcom/google/gson/internal/bind/MiniGson$Builder;
    .locals 2
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/gson/reflect/TypeToken",
            "<TT;>;",
            "Lcom/google/gson/internal/bind/TypeAdapter",
            "<TT;>;)",
            "Lcom/google/gson/internal/bind/MiniGson$Builder;"
        }
    .end annotation

    .prologue
    .line 193
    .local p1, type:Lcom/google/gson/reflect/TypeToken;,"Lcom/google/gson/reflect/TypeToken<TT;>;"
    .local p2, typeAdapter:Lcom/google/gson/internal/bind/TypeAdapter;,"Lcom/google/gson/internal/bind/TypeAdapter<TT;>;"
    iget-object v0, p0, Lcom/google/gson/internal/bind/MiniGson$Builder;->factories:Ljava/util/List;

    invoke-static {p1, p2}, Lcom/google/gson/internal/bind/TypeAdapters;->newFactory(Lcom/google/gson/reflect/TypeToken;Lcom/google/gson/internal/bind/TypeAdapter;)Lcom/google/gson/internal/bind/TypeAdapter$Factory;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 194
    return-object p0
.end method

.method public typeAdapter(Ljava/lang/Class;Lcom/google/gson/internal/bind/TypeAdapter;)Lcom/google/gson/internal/bind/MiniGson$Builder;
    .locals 2
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;",
            "Lcom/google/gson/internal/bind/TypeAdapter",
            "<TT;>;)",
            "Lcom/google/gson/internal/bind/MiniGson$Builder;"
        }
    .end annotation

    .prologue
    .line 188
    .local p1, type:Ljava/lang/Class;,"Ljava/lang/Class<TT;>;"
    .local p2, typeAdapter:Lcom/google/gson/internal/bind/TypeAdapter;,"Lcom/google/gson/internal/bind/TypeAdapter<TT;>;"
    iget-object v0, p0, Lcom/google/gson/internal/bind/MiniGson$Builder;->factories:Ljava/util/List;

    invoke-static {p1, p2}, Lcom/google/gson/internal/bind/TypeAdapters;->newFactory(Ljava/lang/Class;Lcom/google/gson/internal/bind/TypeAdapter;)Lcom/google/gson/internal/bind/TypeAdapter$Factory;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 189
    return-object p0
.end method

.method public typeHierarchyAdapter(Ljava/lang/Class;Lcom/google/gson/internal/bind/TypeAdapter;)Lcom/google/gson/internal/bind/MiniGson$Builder;
    .locals 2
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;",
            "Lcom/google/gson/internal/bind/TypeAdapter",
            "<TT;>;)",
            "Lcom/google/gson/internal/bind/MiniGson$Builder;"
        }
    .end annotation

    .prologue
    .line 198
    .local p1, type:Ljava/lang/Class;,"Ljava/lang/Class<TT;>;"
    .local p2, typeAdapter:Lcom/google/gson/internal/bind/TypeAdapter;,"Lcom/google/gson/internal/bind/TypeAdapter<TT;>;"
    iget-object v0, p0, Lcom/google/gson/internal/bind/MiniGson$Builder;->factories:Ljava/util/List;

    invoke-static {p1, p2}, Lcom/google/gson/internal/bind/TypeAdapters;->newTypeHierarchyFactory(Ljava/lang/Class;Lcom/google/gson/internal/bind/TypeAdapter;)Lcom/google/gson/internal/bind/TypeAdapter$Factory;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 199
    return-object p0
.end method

.method public withoutDefaultFactories()Lcom/google/gson/internal/bind/MiniGson$Builder;
    .locals 1

    .prologue
    .line 183
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/gson/internal/bind/MiniGson$Builder;->addDefaultFactories:Z

    .line 184
    return-object p0
.end method
