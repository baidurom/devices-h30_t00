.class final Lcom/google/gson/GsonToMiniGsonTypeAdapterFactory;
.super Ljava/lang/Object;
.source "GsonToMiniGsonTypeAdapterFactory.java"

# interfaces
.implements Lcom/google/gson/internal/bind/TypeAdapter$Factory;


# instance fields
.field private final deserializationContext:Lcom/google/gson/JsonDeserializationContext;

.field private final deserializers:Lcom/google/gson/internal/ParameterizedTypeHandlerMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/gson/internal/ParameterizedTypeHandlerMap",
            "<",
            "Lcom/google/gson/JsonDeserializer",
            "<*>;>;"
        }
    .end annotation
.end field

.field private final serializationContext:Lcom/google/gson/JsonSerializationContext;

.field private final serializers:Lcom/google/gson/internal/ParameterizedTypeHandlerMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/gson/internal/ParameterizedTypeHandlerMap",
            "<",
            "Lcom/google/gson/JsonSerializer",
            "<*>;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/google/gson/Gson;Lcom/google/gson/internal/ParameterizedTypeHandlerMap;Lcom/google/gson/internal/ParameterizedTypeHandlerMap;)V
    .locals 1
    .parameter "gson"
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/gson/Gson;",
            "Lcom/google/gson/internal/ParameterizedTypeHandlerMap",
            "<",
            "Lcom/google/gson/JsonSerializer",
            "<*>;>;",
            "Lcom/google/gson/internal/ParameterizedTypeHandlerMap",
            "<",
            "Lcom/google/gson/JsonDeserializer",
            "<*>;>;)V"
        }
    .end annotation

    .prologue
    .line 36
    .local p2, serializers:Lcom/google/gson/internal/ParameterizedTypeHandlerMap;,"Lcom/google/gson/internal/ParameterizedTypeHandlerMap<Lcom/google/gson/JsonSerializer<*>;>;"
    .local p3, deserializers:Lcom/google/gson/internal/ParameterizedTypeHandlerMap;,"Lcom/google/gson/internal/ParameterizedTypeHandlerMap<Lcom/google/gson/JsonDeserializer<*>;>;"
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 37
    iput-object p2, p0, Lcom/google/gson/GsonToMiniGsonTypeAdapterFactory;->serializers:Lcom/google/gson/internal/ParameterizedTypeHandlerMap;

    .line 38
    iput-object p3, p0, Lcom/google/gson/GsonToMiniGsonTypeAdapterFactory;->deserializers:Lcom/google/gson/internal/ParameterizedTypeHandlerMap;

    .line 40
    new-instance v0, Lcom/google/gson/GsonToMiniGsonTypeAdapterFactory$1;

    invoke-direct {v0, p0, p1}, Lcom/google/gson/GsonToMiniGsonTypeAdapterFactory$1;-><init>(Lcom/google/gson/GsonToMiniGsonTypeAdapterFactory;Lcom/google/gson/Gson;)V

    iput-object v0, p0, Lcom/google/gson/GsonToMiniGsonTypeAdapterFactory;->deserializationContext:Lcom/google/gson/JsonDeserializationContext;

    .line 46
    new-instance v0, Lcom/google/gson/GsonToMiniGsonTypeAdapterFactory$2;

    invoke-direct {v0, p0, p1}, Lcom/google/gson/GsonToMiniGsonTypeAdapterFactory$2;-><init>(Lcom/google/gson/GsonToMiniGsonTypeAdapterFactory;Lcom/google/gson/Gson;)V

    iput-object v0, p0, Lcom/google/gson/GsonToMiniGsonTypeAdapterFactory;->serializationContext:Lcom/google/gson/JsonSerializationContext;

    .line 54
    return-void
.end method

.method static synthetic access$000(Lcom/google/gson/GsonToMiniGsonTypeAdapterFactory;)Lcom/google/gson/JsonDeserializationContext;
    .locals 1
    .parameter "x0"

    .prologue
    .line 28
    iget-object v0, p0, Lcom/google/gson/GsonToMiniGsonTypeAdapterFactory;->deserializationContext:Lcom/google/gson/JsonDeserializationContext;

    return-object v0
.end method

.method static synthetic access$100(Lcom/google/gson/GsonToMiniGsonTypeAdapterFactory;)Lcom/google/gson/JsonSerializationContext;
    .locals 1
    .parameter "x0"

    .prologue
    .line 28
    iget-object v0, p0, Lcom/google/gson/GsonToMiniGsonTypeAdapterFactory;->serializationContext:Lcom/google/gson/JsonSerializationContext;

    return-object v0
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
    .local p2, typeToken:Lcom/google/gson/reflect/TypeToken;,"Lcom/google/gson/reflect/TypeToken<TT;>;"
    const/4 v1, 0x0

    .line 57
    invoke-virtual {p2}, Lcom/google/gson/reflect/TypeToken;->getType()Ljava/lang/reflect/Type;

    move-result-object v3

    .line 60
    .local v3, type:Ljava/lang/reflect/Type;
    iget-object v0, p0, Lcom/google/gson/GsonToMiniGsonTypeAdapterFactory;->serializers:Lcom/google/gson/internal/ParameterizedTypeHandlerMap;

    invoke-virtual {v0, v3, v1}, Lcom/google/gson/internal/ParameterizedTypeHandlerMap;->getHandlerFor(Ljava/lang/reflect/Type;Z)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/gson/JsonSerializer;

    .line 63
    .local v4, serializer:Lcom/google/gson/JsonSerializer;,"Lcom/google/gson/JsonSerializer<TT;>;"
    iget-object v0, p0, Lcom/google/gson/GsonToMiniGsonTypeAdapterFactory;->deserializers:Lcom/google/gson/internal/ParameterizedTypeHandlerMap;

    invoke-virtual {v0, v3, v1}, Lcom/google/gson/internal/ParameterizedTypeHandlerMap;->getHandlerFor(Ljava/lang/reflect/Type;Z)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/gson/JsonDeserializer;

    .line 66
    .local v2, deserializer:Lcom/google/gson/JsonDeserializer;,"Lcom/google/gson/JsonDeserializer<TT;>;"
    if-nez v4, :cond_0

    if-nez v2, :cond_0

    .line 67
    const/4 v0, 0x0

    .line 70
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/google/gson/GsonToMiniGsonTypeAdapterFactory$3;

    move-object v1, p0

    move-object v5, p1

    move-object v6, p2

    invoke-direct/range {v0 .. v6}, Lcom/google/gson/GsonToMiniGsonTypeAdapterFactory$3;-><init>(Lcom/google/gson/GsonToMiniGsonTypeAdapterFactory;Lcom/google/gson/JsonDeserializer;Ljava/lang/reflect/Type;Lcom/google/gson/JsonSerializer;Lcom/google/gson/internal/bind/MiniGson;Lcom/google/gson/reflect/TypeToken;)V

    goto :goto_0
.end method
