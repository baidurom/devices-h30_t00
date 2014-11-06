.class public final Lcom/google/gson/internal/bind/ExcludedTypeAdapterFactory;
.super Ljava/lang/Object;
.source "ExcludedTypeAdapterFactory.java"

# interfaces
.implements Lcom/google/gson/internal/bind/TypeAdapter$Factory;


# instance fields
.field private final deserializationExclusionStrategy:Lcom/google/gson/ExclusionStrategy;

.field private final serializationExclusionStrategy:Lcom/google/gson/ExclusionStrategy;


# direct methods
.method public constructor <init>(Lcom/google/gson/ExclusionStrategy;Lcom/google/gson/ExclusionStrategy;)V
    .locals 0
    .parameter "serializationExclusionStrategy"
    .parameter "deserializationExclusionStrategy"

    .prologue
    .line 34
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 35
    iput-object p1, p0, Lcom/google/gson/internal/bind/ExcludedTypeAdapterFactory;->serializationExclusionStrategy:Lcom/google/gson/ExclusionStrategy;

    .line 36
    iput-object p2, p0, Lcom/google/gson/internal/bind/ExcludedTypeAdapterFactory;->deserializationExclusionStrategy:Lcom/google/gson/ExclusionStrategy;

    .line 37
    return-void
.end method


# virtual methods
.method public create(Lcom/google/gson/internal/bind/MiniGson;Lcom/google/gson/reflect/TypeToken;)Lcom/google/gson/internal/bind/TypeAdapter;
    .locals 7
    .parameter "context"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/gson/internal/bind/MiniGson;",
            "Lcom/google/gson/reflect/TypeToken",
            "<TT;>;)",
            "Lcom/google/gson/internal/bind/TypeAdapter",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 40
    .local p2, type:Lcom/google/gson/reflect/TypeToken;,"Lcom/google/gson/reflect/TypeToken<TT;>;"
    invoke-virtual {p2}, Lcom/google/gson/reflect/TypeToken;->getRawType()Ljava/lang/Class;

    move-result-object v6

    .line 41
    .local v6, rawType:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    iget-object v0, p0, Lcom/google/gson/internal/bind/ExcludedTypeAdapterFactory;->serializationExclusionStrategy:Lcom/google/gson/ExclusionStrategy;

    invoke-interface {v0, v6}, Lcom/google/gson/ExclusionStrategy;->shouldSkipClass(Ljava/lang/Class;)Z

    move-result v3

    .line 42
    .local v3, skipSerialize:Z
    iget-object v0, p0, Lcom/google/gson/internal/bind/ExcludedTypeAdapterFactory;->deserializationExclusionStrategy:Lcom/google/gson/ExclusionStrategy;

    invoke-interface {v0, v6}, Lcom/google/gson/ExclusionStrategy;->shouldSkipClass(Ljava/lang/Class;)Z

    move-result v2

    .line 44
    .local v2, skipDeserialize:Z
    if-nez v3, :cond_0

    if-nez v2, :cond_0

    .line 45
    const/4 v0, 0x0

    .line 48
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/google/gson/internal/bind/ExcludedTypeAdapterFactory$1;

    move-object v1, p0

    move-object v4, p1

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/google/gson/internal/bind/ExcludedTypeAdapterFactory$1;-><init>(Lcom/google/gson/internal/bind/ExcludedTypeAdapterFactory;ZZLcom/google/gson/internal/bind/MiniGson;Lcom/google/gson/reflect/TypeToken;)V

    goto :goto_0
.end method
