.class final Lcom/google/gson/internal/bind/MapTypeAdapterFactory$Adapter;
.super Lcom/google/gson/internal/bind/TypeAdapter;
.source "MapTypeAdapterFactory.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/gson/internal/bind/MapTypeAdapterFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "Adapter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/gson/internal/bind/TypeAdapter",
        "<",
        "Ljava/util/Map",
        "<TK;TV;>;>;"
    }
.end annotation


# instance fields
.field private final constructor:Lcom/google/gson/internal/ObjectConstructor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/gson/internal/ObjectConstructor",
            "<+",
            "Ljava/util/Map",
            "<TK;TV;>;>;"
        }
    .end annotation
.end field

.field private final keyTypeAdapter:Lcom/google/gson/internal/bind/TypeAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/gson/internal/bind/TypeAdapter",
            "<TK;>;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/google/gson/internal/bind/MapTypeAdapterFactory;

.field private final valueTypeAdapter:Lcom/google/gson/internal/bind/TypeAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/gson/internal/bind/TypeAdapter",
            "<TV;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/google/gson/internal/bind/MapTypeAdapterFactory;Lcom/google/gson/internal/bind/MiniGson;Ljava/lang/reflect/Type;Lcom/google/gson/internal/bind/TypeAdapter;Ljava/lang/reflect/Type;Lcom/google/gson/internal/bind/TypeAdapter;Lcom/google/gson/internal/ObjectConstructor;)V
    .locals 1
    .parameter
    .parameter "context"
    .parameter "keyType"
    .parameter
    .parameter "valueType"
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/gson/internal/bind/MiniGson;",
            "Ljava/lang/reflect/Type;",
            "Lcom/google/gson/internal/bind/TypeAdapter",
            "<TK;>;",
            "Ljava/lang/reflect/Type;",
            "Lcom/google/gson/internal/bind/TypeAdapter",
            "<TV;>;",
            "Lcom/google/gson/internal/ObjectConstructor",
            "<+",
            "Ljava/util/Map",
            "<TK;TV;>;>;)V"
        }
    .end annotation

    .prologue
    .line 148
    .local p0, this:Lcom/google/gson/internal/bind/MapTypeAdapterFactory$Adapter;,"Lcom/google/gson/internal/bind/MapTypeAdapterFactory$Adapter<TK;TV;>;"
    .local p4, keyTypeAdapter:Lcom/google/gson/internal/bind/TypeAdapter;,"Lcom/google/gson/internal/bind/TypeAdapter<TK;>;"
    .local p6, valueTypeAdapter:Lcom/google/gson/internal/bind/TypeAdapter;,"Lcom/google/gson/internal/bind/TypeAdapter<TV;>;"
    .local p7, constructor:Lcom/google/gson/internal/ObjectConstructor;,"Lcom/google/gson/internal/ObjectConstructor<+Ljava/util/Map<TK;TV;>;>;"
    iput-object p1, p0, Lcom/google/gson/internal/bind/MapTypeAdapterFactory$Adapter;->this$0:Lcom/google/gson/internal/bind/MapTypeAdapterFactory;

    invoke-direct {p0}, Lcom/google/gson/internal/bind/TypeAdapter;-><init>()V

    .line 149
    new-instance v0, Lcom/google/gson/internal/bind/TypeAdapterRuntimeTypeWrapper;

    invoke-direct {v0, p2, p4, p3}, Lcom/google/gson/internal/bind/TypeAdapterRuntimeTypeWrapper;-><init>(Lcom/google/gson/internal/bind/MiniGson;Lcom/google/gson/internal/bind/TypeAdapter;Ljava/lang/reflect/Type;)V

    iput-object v0, p0, Lcom/google/gson/internal/bind/MapTypeAdapterFactory$Adapter;->keyTypeAdapter:Lcom/google/gson/internal/bind/TypeAdapter;

    .line 151
    new-instance v0, Lcom/google/gson/internal/bind/TypeAdapterRuntimeTypeWrapper;

    invoke-direct {v0, p2, p6, p5}, Lcom/google/gson/internal/bind/TypeAdapterRuntimeTypeWrapper;-><init>(Lcom/google/gson/internal/bind/MiniGson;Lcom/google/gson/internal/bind/TypeAdapter;Ljava/lang/reflect/Type;)V

    iput-object v0, p0, Lcom/google/gson/internal/bind/MapTypeAdapterFactory$Adapter;->valueTypeAdapter:Lcom/google/gson/internal/bind/TypeAdapter;

    .line 153
    iput-object p7, p0, Lcom/google/gson/internal/bind/MapTypeAdapterFactory$Adapter;->constructor:Lcom/google/gson/internal/ObjectConstructor;

    .line 154
    return-void
.end method

.method private keyToString(Lcom/google/gson/JsonElement;)Ljava/lang/String;
    .locals 2
    .parameter "keyElement"

    .prologue
    .line 242
    .local p0, this:Lcom/google/gson/internal/bind/MapTypeAdapterFactory$Adapter;,"Lcom/google/gson/internal/bind/MapTypeAdapterFactory$Adapter<TK;TV;>;"
    invoke-virtual {p1}, Lcom/google/gson/JsonElement;->isJsonPrimitive()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 243
    invoke-virtual {p1}, Lcom/google/gson/JsonElement;->getAsJsonPrimitive()Lcom/google/gson/JsonPrimitive;

    move-result-object v0

    .line 244
    .local v0, primitive:Lcom/google/gson/JsonPrimitive;
    invoke-virtual {v0}, Lcom/google/gson/JsonPrimitive;->isNumber()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 245
    invoke-virtual {v0}, Lcom/google/gson/JsonPrimitive;->getAsNumber()Ljava/lang/Number;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 254
    .end local v0           #primitive:Lcom/google/gson/JsonPrimitive;
    :goto_0
    return-object v1

    .line 246
    .restart local v0       #primitive:Lcom/google/gson/JsonPrimitive;
    :cond_0
    invoke-virtual {v0}, Lcom/google/gson/JsonPrimitive;->isBoolean()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 247
    invoke-virtual {v0}, Lcom/google/gson/JsonPrimitive;->getAsBoolean()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 248
    :cond_1
    invoke-virtual {v0}, Lcom/google/gson/JsonPrimitive;->isString()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 249
    invoke-virtual {v0}, Lcom/google/gson/JsonPrimitive;->getAsString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 251
    :cond_2
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    .line 253
    .end local v0           #primitive:Lcom/google/gson/JsonPrimitive;
    :cond_3
    invoke-virtual {p1}, Lcom/google/gson/JsonElement;->isJsonNull()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 254
    const-string v1, "null"

    goto :goto_0

    .line 256
    :cond_4
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1
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
    .line 141
    .local p0, this:Lcom/google/gson/internal/bind/MapTypeAdapterFactory$Adapter;,"Lcom/google/gson/internal/bind/MapTypeAdapterFactory$Adapter<TK;TV;>;"
    invoke-virtual {p0, p1}, Lcom/google/gson/internal/bind/MapTypeAdapterFactory$Adapter;->read(Lcom/google/gson/stream/JsonReader;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public read(Lcom/google/gson/stream/JsonReader;)Ljava/util/Map;
    .locals 9
    .parameter "reader"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/gson/stream/JsonReader;",
            ")",
            "Ljava/util/Map",
            "<TK;TV;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 157
    .local p0, this:Lcom/google/gson/internal/bind/MapTypeAdapterFactory$Adapter;,"Lcom/google/gson/internal/bind/MapTypeAdapterFactory$Adapter<TK;TV;>;"
    invoke-virtual {p1}, Lcom/google/gson/stream/JsonReader;->peek()Lcom/google/gson/stream/JsonToken;

    move-result-object v3

    .line 158
    .local v3, peek:Lcom/google/gson/stream/JsonToken;
    sget-object v6, Lcom/google/gson/stream/JsonToken;->NULL:Lcom/google/gson/stream/JsonToken;

    if-ne v3, v6, :cond_0

    .line 159
    invoke-virtual {p1}, Lcom/google/gson/stream/JsonReader;->nextNull()V

    .line 160
    const/4 v2, 0x0

    .line 191
    :goto_0
    return-object v2

    .line 163
    :cond_0
    iget-object v6, p0, Lcom/google/gson/internal/bind/MapTypeAdapterFactory$Adapter;->constructor:Lcom/google/gson/internal/ObjectConstructor;

    invoke-interface {v6}, Lcom/google/gson/internal/ObjectConstructor;->construct()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map;

    .line 165
    .local v2, map:Ljava/util/Map;,"Ljava/util/Map<TK;TV;>;"
    sget-object v6, Lcom/google/gson/stream/JsonToken;->BEGIN_ARRAY:Lcom/google/gson/stream/JsonToken;

    if-ne v3, v6, :cond_3

    .line 166
    invoke-virtual {p1}, Lcom/google/gson/stream/JsonReader;->beginArray()V

    .line 167
    :goto_1
    invoke-virtual {p1}, Lcom/google/gson/stream/JsonReader;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 168
    invoke-virtual {p1}, Lcom/google/gson/stream/JsonReader;->beginArray()V

    .line 169
    iget-object v6, p0, Lcom/google/gson/internal/bind/MapTypeAdapterFactory$Adapter;->keyTypeAdapter:Lcom/google/gson/internal/bind/TypeAdapter;

    invoke-virtual {v6, p1}, Lcom/google/gson/internal/bind/TypeAdapter;->read(Lcom/google/gson/stream/JsonReader;)Ljava/lang/Object;

    move-result-object v0

    .line 170
    .local v0, key:Ljava/lang/Object;,"TK;"
    iget-object v6, p0, Lcom/google/gson/internal/bind/MapTypeAdapterFactory$Adapter;->valueTypeAdapter:Lcom/google/gson/internal/bind/TypeAdapter;

    invoke-virtual {v6, p1}, Lcom/google/gson/internal/bind/TypeAdapter;->read(Lcom/google/gson/stream/JsonReader;)Ljava/lang/Object;

    move-result-object v5

    .line 171
    .local v5, value:Ljava/lang/Object;,"TV;"
    invoke-interface {v2, v0, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    .line 172
    .local v4, replaced:Ljava/lang/Object;,"TV;"
    if-eqz v4, :cond_1

    .line 173
    new-instance v6, Lcom/google/gson/JsonSyntaxException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "duplicate key: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Lcom/google/gson/JsonSyntaxException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 175
    :cond_1
    invoke-virtual {p1}, Lcom/google/gson/stream/JsonReader;->endArray()V

    goto :goto_1

    .line 177
    .end local v0           #key:Ljava/lang/Object;,"TK;"
    .end local v4           #replaced:Ljava/lang/Object;,"TV;"
    .end local v5           #value:Ljava/lang/Object;,"TV;"
    :cond_2
    invoke-virtual {p1}, Lcom/google/gson/stream/JsonReader;->endArray()V

    goto :goto_0

    .line 179
    :cond_3
    invoke-virtual {p1}, Lcom/google/gson/stream/JsonReader;->beginObject()V

    .line 180
    :cond_4
    invoke-virtual {p1}, Lcom/google/gson/stream/JsonReader;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_5

    .line 181
    invoke-virtual {p1}, Lcom/google/gson/stream/JsonReader;->nextName()Ljava/lang/String;

    move-result-object v1

    .line 182
    .local v1, keyString:Ljava/lang/String;
    iget-object v6, p0, Lcom/google/gson/internal/bind/MapTypeAdapterFactory$Adapter;->keyTypeAdapter:Lcom/google/gson/internal/bind/TypeAdapter;

    new-instance v7, Lcom/google/gson/JsonPrimitive;

    invoke-direct {v7, v1}, Lcom/google/gson/JsonPrimitive;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v7}, Lcom/google/gson/internal/bind/TypeAdapter;->fromJsonElement(Lcom/google/gson/JsonElement;)Ljava/lang/Object;

    move-result-object v0

    .line 183
    .restart local v0       #key:Ljava/lang/Object;,"TK;"
    iget-object v6, p0, Lcom/google/gson/internal/bind/MapTypeAdapterFactory$Adapter;->valueTypeAdapter:Lcom/google/gson/internal/bind/TypeAdapter;

    invoke-virtual {v6, p1}, Lcom/google/gson/internal/bind/TypeAdapter;->read(Lcom/google/gson/stream/JsonReader;)Ljava/lang/Object;

    move-result-object v5

    .line 184
    .restart local v5       #value:Ljava/lang/Object;,"TV;"
    invoke-interface {v2, v0, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    .line 185
    .restart local v4       #replaced:Ljava/lang/Object;,"TV;"
    if-eqz v4, :cond_4

    .line 186
    new-instance v6, Lcom/google/gson/JsonSyntaxException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "duplicate key: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Lcom/google/gson/JsonSyntaxException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 189
    .end local v0           #key:Ljava/lang/Object;,"TK;"
    .end local v1           #keyString:Ljava/lang/String;
    .end local v4           #replaced:Ljava/lang/Object;,"TV;"
    .end local v5           #value:Ljava/lang/Object;,"TV;"
    :cond_5
    invoke-virtual {p1}, Lcom/google/gson/stream/JsonReader;->endObject()V

    goto/16 :goto_0
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
    .line 141
    .local p0, this:Lcom/google/gson/internal/bind/MapTypeAdapterFactory$Adapter;,"Lcom/google/gson/internal/bind/MapTypeAdapterFactory$Adapter<TK;TV;>;"
    check-cast p2, Ljava/util/Map;

    .end local p2
    invoke-virtual {p0, p1, p2}, Lcom/google/gson/internal/bind/MapTypeAdapterFactory$Adapter;->write(Lcom/google/gson/stream/JsonWriter;Ljava/util/Map;)V

    return-void
.end method

.method public write(Lcom/google/gson/stream/JsonWriter;Ljava/util/Map;)V
    .locals 9
    .parameter "writer"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/gson/stream/JsonWriter;",
            "Ljava/util/Map",
            "<TK;TV;>;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 195
    .local p0, this:Lcom/google/gson/internal/bind/MapTypeAdapterFactory$Adapter;,"Lcom/google/gson/internal/bind/MapTypeAdapterFactory$Adapter<TK;TV;>;"
    .local p2, map:Ljava/util/Map;,"Ljava/util/Map<TK;TV;>;"
    if-nez p2, :cond_0

    .line 196
    invoke-virtual {p1}, Lcom/google/gson/stream/JsonWriter;->nullValue()Lcom/google/gson/stream/JsonWriter;

    .line 239
    :goto_0
    return-void

    .line 200
    :cond_0
    iget-object v7, p0, Lcom/google/gson/internal/bind/MapTypeAdapterFactory$Adapter;->this$0:Lcom/google/gson/internal/bind/MapTypeAdapterFactory;

    #getter for: Lcom/google/gson/internal/bind/MapTypeAdapterFactory;->complexMapKeySerialization:Z
    invoke-static {v7}, Lcom/google/gson/internal/bind/MapTypeAdapterFactory;->access$000(Lcom/google/gson/internal/bind/MapTypeAdapterFactory;)Z

    move-result v7

    if-nez v7, :cond_2

    .line 201
    invoke-virtual {p1}, Lcom/google/gson/stream/JsonWriter;->beginObject()Lcom/google/gson/stream/JsonWriter;

    .line 202
    invoke-interface {p2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, i$:Ljava/util/Iterator;
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 203
    .local v0, entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<TK;TV;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p1, v7}, Lcom/google/gson/stream/JsonWriter;->name(Ljava/lang/String;)Lcom/google/gson/stream/JsonWriter;

    .line 204
    iget-object v7, p0, Lcom/google/gson/internal/bind/MapTypeAdapterFactory$Adapter;->valueTypeAdapter:Lcom/google/gson/internal/bind/TypeAdapter;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v7, p1, v8}, Lcom/google/gson/internal/bind/TypeAdapter;->write(Lcom/google/gson/stream/JsonWriter;Ljava/lang/Object;)V

    goto :goto_1

    .line 206
    .end local v0           #entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<TK;TV;>;"
    :cond_1
    invoke-virtual {p1}, Lcom/google/gson/stream/JsonWriter;->endObject()Lcom/google/gson/stream/JsonWriter;

    goto :goto_0

    .line 210
    .end local v3           #i$:Ljava/util/Iterator;
    :cond_2
    const/4 v1, 0x0

    .line 211
    .local v1, hasComplexKeys:Z
    new-instance v5, Ljava/util/ArrayList;

    invoke-interface {p2}, Ljava/util/Map;->size()I

    move-result v7

    invoke-direct {v5, v7}, Ljava/util/ArrayList;-><init>(I)V

    .line 213
    .local v5, keys:Ljava/util/List;,"Ljava/util/List<Lcom/google/gson/JsonElement;>;"
    new-instance v6, Ljava/util/ArrayList;

    invoke-interface {p2}, Ljava/util/Map;->size()I

    move-result v7

    invoke-direct {v6, v7}, Ljava/util/ArrayList;-><init>(I)V

    .line 214
    .local v6, values:Ljava/util/List;,"Ljava/util/List<TV;>;"
    invoke-interface {p2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .restart local v3       #i$:Ljava/util/Iterator;
    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_5

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 215
    .restart local v0       #entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<TK;TV;>;"
    iget-object v7, p0, Lcom/google/gson/internal/bind/MapTypeAdapterFactory$Adapter;->keyTypeAdapter:Lcom/google/gson/internal/bind/TypeAdapter;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/google/gson/internal/bind/TypeAdapter;->toJsonElement(Ljava/lang/Object;)Lcom/google/gson/JsonElement;

    move-result-object v4

    .line 216
    .local v4, keyElement:Lcom/google/gson/JsonElement;
    invoke-interface {v5, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 217
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v7

    invoke-interface {v6, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 218
    invoke-virtual {v4}, Lcom/google/gson/JsonElement;->isJsonArray()Z

    move-result v7

    if-nez v7, :cond_3

    invoke-virtual {v4}, Lcom/google/gson/JsonElement;->isJsonObject()Z

    move-result v7

    if-eqz v7, :cond_4

    :cond_3
    const/4 v7, 0x1

    :goto_3
    or-int/2addr v1, v7

    .line 219
    goto :goto_2

    .line 218
    :cond_4
    const/4 v7, 0x0

    goto :goto_3

    .line 221
    .end local v0           #entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<TK;TV;>;"
    .end local v4           #keyElement:Lcom/google/gson/JsonElement;
    :cond_5
    if-eqz v1, :cond_7

    .line 222
    invoke-virtual {p1}, Lcom/google/gson/stream/JsonWriter;->beginArray()Lcom/google/gson/stream/JsonWriter;

    .line 223
    const/4 v2, 0x0

    .local v2, i:I
    :goto_4
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v7

    if-ge v2, v7, :cond_6

    .line 224
    invoke-virtual {p1}, Lcom/google/gson/stream/JsonWriter;->beginArray()Lcom/google/gson/stream/JsonWriter;

    .line 225
    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/google/gson/JsonElement;

    invoke-static {v7, p1}, Lcom/google/gson/internal/Streams;->write(Lcom/google/gson/JsonElement;Lcom/google/gson/stream/JsonWriter;)V

    .line 226
    iget-object v7, p0, Lcom/google/gson/internal/bind/MapTypeAdapterFactory$Adapter;->valueTypeAdapter:Lcom/google/gson/internal/bind/TypeAdapter;

    invoke-interface {v6, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v7, p1, v8}, Lcom/google/gson/internal/bind/TypeAdapter;->write(Lcom/google/gson/stream/JsonWriter;Ljava/lang/Object;)V

    .line 227
    invoke-virtual {p1}, Lcom/google/gson/stream/JsonWriter;->endArray()Lcom/google/gson/stream/JsonWriter;

    .line 223
    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    .line 229
    :cond_6
    invoke-virtual {p1}, Lcom/google/gson/stream/JsonWriter;->endArray()Lcom/google/gson/stream/JsonWriter;

    goto/16 :goto_0

    .line 231
    .end local v2           #i:I
    :cond_7
    invoke-virtual {p1}, Lcom/google/gson/stream/JsonWriter;->beginObject()Lcom/google/gson/stream/JsonWriter;

    .line 232
    const/4 v2, 0x0

    .restart local v2       #i:I
    :goto_5
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v7

    if-ge v2, v7, :cond_8

    .line 233
    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/gson/JsonElement;

    .line 234
    .restart local v4       #keyElement:Lcom/google/gson/JsonElement;
    invoke-direct {p0, v4}, Lcom/google/gson/internal/bind/MapTypeAdapterFactory$Adapter;->keyToString(Lcom/google/gson/JsonElement;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p1, v7}, Lcom/google/gson/stream/JsonWriter;->name(Ljava/lang/String;)Lcom/google/gson/stream/JsonWriter;

    .line 235
    iget-object v7, p0, Lcom/google/gson/internal/bind/MapTypeAdapterFactory$Adapter;->valueTypeAdapter:Lcom/google/gson/internal/bind/TypeAdapter;

    invoke-interface {v6, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v7, p1, v8}, Lcom/google/gson/internal/bind/TypeAdapter;->write(Lcom/google/gson/stream/JsonWriter;Ljava/lang/Object;)V

    .line 232
    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    .line 237
    .end local v4           #keyElement:Lcom/google/gson/JsonElement;
    :cond_8
    invoke-virtual {p1}, Lcom/google/gson/stream/JsonWriter;->endObject()Lcom/google/gson/stream/JsonWriter;

    goto/16 :goto_0
.end method
