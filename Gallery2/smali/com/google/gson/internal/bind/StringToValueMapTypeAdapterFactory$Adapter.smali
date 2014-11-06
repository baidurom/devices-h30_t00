.class final Lcom/google/gson/internal/bind/StringToValueMapTypeAdapterFactory$Adapter;
.super Lcom/google/gson/internal/bind/TypeAdapter;
.source "StringToValueMapTypeAdapterFactory.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/gson/internal/bind/StringToValueMapTypeAdapterFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "Adapter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<V:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/gson/internal/bind/TypeAdapter",
        "<",
        "Ljava/util/Map",
        "<",
        "Ljava/lang/String;",
        "TV;>;>;"
    }
.end annotation


# instance fields
.field private final constructor:Lcom/google/gson/internal/ObjectConstructor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/gson/internal/ObjectConstructor",
            "<+",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "TV;>;>;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/google/gson/internal/bind/StringToValueMapTypeAdapterFactory;

.field private final valueTypeAdapter:Lcom/google/gson/internal/bind/TypeAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/gson/internal/bind/TypeAdapter",
            "<TV;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/google/gson/internal/bind/StringToValueMapTypeAdapterFactory;Lcom/google/gson/internal/bind/TypeAdapter;Lcom/google/gson/internal/ObjectConstructor;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/gson/internal/bind/TypeAdapter",
            "<TV;>;",
            "Lcom/google/gson/internal/ObjectConstructor",
            "<+",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "TV;>;>;)V"
        }
    .end annotation

    .prologue
    .line 71
    .local p0, this:Lcom/google/gson/internal/bind/StringToValueMapTypeAdapterFactory$Adapter;,"Lcom/google/gson/internal/bind/StringToValueMapTypeAdapterFactory$Adapter<TV;>;"
    .local p2, valueTypeAdapter:Lcom/google/gson/internal/bind/TypeAdapter;,"Lcom/google/gson/internal/bind/TypeAdapter<TV;>;"
    .local p3, constructor:Lcom/google/gson/internal/ObjectConstructor;,"Lcom/google/gson/internal/ObjectConstructor<+Ljava/util/Map<Ljava/lang/String;TV;>;>;"
    iput-object p1, p0, Lcom/google/gson/internal/bind/StringToValueMapTypeAdapterFactory$Adapter;->this$0:Lcom/google/gson/internal/bind/StringToValueMapTypeAdapterFactory;

    invoke-direct {p0}, Lcom/google/gson/internal/bind/TypeAdapter;-><init>()V

    .line 72
    iput-object p2, p0, Lcom/google/gson/internal/bind/StringToValueMapTypeAdapterFactory$Adapter;->valueTypeAdapter:Lcom/google/gson/internal/bind/TypeAdapter;

    .line 73
    iput-object p3, p0, Lcom/google/gson/internal/bind/StringToValueMapTypeAdapterFactory$Adapter;->constructor:Lcom/google/gson/internal/ObjectConstructor;

    .line 74
    return-void
.end method


# virtual methods
.method public bridge synthetic read(Lcom/google/gson/stream/JsonReader;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 66
    .local p0, this:Lcom/google/gson/internal/bind/StringToValueMapTypeAdapterFactory$Adapter;,"Lcom/google/gson/internal/bind/StringToValueMapTypeAdapterFactory$Adapter<TV;>;"
    invoke-virtual {p0, p1}, Lcom/google/gson/internal/bind/StringToValueMapTypeAdapterFactory$Adapter;->read(Lcom/google/gson/stream/JsonReader;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public read(Lcom/google/gson/stream/JsonReader;)Ljava/util/Map;
    .locals 5
    .parameter "reader"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/gson/stream/JsonReader;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "TV;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 77
    .local p0, this:Lcom/google/gson/internal/bind/StringToValueMapTypeAdapterFactory$Adapter;,"Lcom/google/gson/internal/bind/StringToValueMapTypeAdapterFactory$Adapter<TV;>;"
    invoke-virtual {p1}, Lcom/google/gson/stream/JsonReader;->peek()Lcom/google/gson/stream/JsonToken;

    move-result-object v3

    sget-object v4, Lcom/google/gson/stream/JsonToken;->NULL:Lcom/google/gson/stream/JsonToken;

    if-ne v3, v4, :cond_0

    .line 78
    invoke-virtual {p1}, Lcom/google/gson/stream/JsonReader;->nextNull()V

    .line 79
    const/4 v1, 0x0

    .line 90
    :goto_0
    return-object v1

    .line 82
    :cond_0
    iget-object v3, p0, Lcom/google/gson/internal/bind/StringToValueMapTypeAdapterFactory$Adapter;->constructor:Lcom/google/gson/internal/ObjectConstructor;

    invoke-interface {v3}, Lcom/google/gson/internal/ObjectConstructor;->construct()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map;

    .line 83
    .local v1, map:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;TV;>;"
    invoke-virtual {p1}, Lcom/google/gson/stream/JsonReader;->beginObject()V

    .line 84
    :goto_1
    invoke-virtual {p1}, Lcom/google/gson/stream/JsonReader;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 85
    invoke-virtual {p1}, Lcom/google/gson/stream/JsonReader;->nextName()Ljava/lang/String;

    move-result-object v0

    .line 86
    .local v0, key:Ljava/lang/String;
    iget-object v3, p0, Lcom/google/gson/internal/bind/StringToValueMapTypeAdapterFactory$Adapter;->valueTypeAdapter:Lcom/google/gson/internal/bind/TypeAdapter;

    invoke-virtual {v3, p1}, Lcom/google/gson/internal/bind/TypeAdapter;->read(Lcom/google/gson/stream/JsonReader;)Ljava/lang/Object;

    move-result-object v2

    .line 87
    .local v2, value:Ljava/lang/Object;,"TV;"
    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 89
    .end local v0           #key:Ljava/lang/String;
    .end local v2           #value:Ljava/lang/Object;,"TV;"
    :cond_1
    invoke-virtual {p1}, Lcom/google/gson/stream/JsonReader;->endObject()V

    goto :goto_0
.end method

.method public bridge synthetic write(Lcom/google/gson/stream/JsonWriter;Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 66
    .local p0, this:Lcom/google/gson/internal/bind/StringToValueMapTypeAdapterFactory$Adapter;,"Lcom/google/gson/internal/bind/StringToValueMapTypeAdapterFactory$Adapter<TV;>;"
    check-cast p2, Ljava/util/Map;

    .end local p2
    invoke-virtual {p0, p1, p2}, Lcom/google/gson/internal/bind/StringToValueMapTypeAdapterFactory$Adapter;->write(Lcom/google/gson/stream/JsonWriter;Ljava/util/Map;)V

    return-void
.end method

.method public write(Lcom/google/gson/stream/JsonWriter;Ljava/util/Map;)V
    .locals 4
    .parameter "writer"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/gson/stream/JsonWriter;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "TV;>;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 94
    .local p0, this:Lcom/google/gson/internal/bind/StringToValueMapTypeAdapterFactory$Adapter;,"Lcom/google/gson/internal/bind/StringToValueMapTypeAdapterFactory$Adapter<TV;>;"
    .local p2, map:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;TV;>;"
    if-nez p2, :cond_0

    .line 95
    invoke-virtual {p1}, Lcom/google/gson/stream/JsonWriter;->nullValue()Lcom/google/gson/stream/JsonWriter;

    .line 105
    :goto_0
    return-void

    .line 99
    :cond_0
    invoke-virtual {p1}, Lcom/google/gson/stream/JsonWriter;->beginObject()Lcom/google/gson/stream/JsonWriter;

    .line 100
    invoke-interface {p2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 101
    .local v0, entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;TV;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {p1, v2}, Lcom/google/gson/stream/JsonWriter;->name(Ljava/lang/String;)Lcom/google/gson/stream/JsonWriter;

    .line 102
    iget-object v2, p0, Lcom/google/gson/internal/bind/StringToValueMapTypeAdapterFactory$Adapter;->valueTypeAdapter:Lcom/google/gson/internal/bind/TypeAdapter;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, p1, v3}, Lcom/google/gson/internal/bind/TypeAdapter;->write(Lcom/google/gson/stream/JsonWriter;Ljava/lang/Object;)V

    goto :goto_1

    .line 104
    .end local v0           #entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;TV;>;"
    :cond_1
    invoke-virtual {p1}, Lcom/google/gson/stream/JsonWriter;->endObject()Lcom/google/gson/stream/JsonWriter;

    goto :goto_0
.end method
