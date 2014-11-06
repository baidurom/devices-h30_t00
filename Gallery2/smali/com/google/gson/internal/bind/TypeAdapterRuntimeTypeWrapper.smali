.class final Lcom/google/gson/internal/bind/TypeAdapterRuntimeTypeWrapper;
.super Lcom/google/gson/internal/bind/TypeAdapter;
.source "TypeAdapterRuntimeTypeWrapper.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/gson/internal/bind/TypeAdapter",
        "<TT;>;"
    }
.end annotation


# instance fields
.field private final context:Lcom/google/gson/internal/bind/MiniGson;

.field private final delegate:Lcom/google/gson/internal/bind/TypeAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/gson/internal/bind/TypeAdapter",
            "<TT;>;"
        }
    .end annotation
.end field

.field private final type:Ljava/lang/reflect/Type;


# direct methods
.method constructor <init>(Lcom/google/gson/internal/bind/MiniGson;Lcom/google/gson/internal/bind/TypeAdapter;Ljava/lang/reflect/Type;)V
    .locals 0
    .parameter "context"
    .parameter
    .parameter "type"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/gson/internal/bind/MiniGson;",
            "Lcom/google/gson/internal/bind/TypeAdapter",
            "<TT;>;",
            "Ljava/lang/reflect/Type;",
            ")V"
        }
    .end annotation

    .prologue
    .line 30
    .local p0, this:Lcom/google/gson/internal/bind/TypeAdapterRuntimeTypeWrapper;,"Lcom/google/gson/internal/bind/TypeAdapterRuntimeTypeWrapper<TT;>;"
    .local p2, delegate:Lcom/google/gson/internal/bind/TypeAdapter;,"Lcom/google/gson/internal/bind/TypeAdapter<TT;>;"
    invoke-direct {p0}, Lcom/google/gson/internal/bind/TypeAdapter;-><init>()V

    .line 31
    iput-object p1, p0, Lcom/google/gson/internal/bind/TypeAdapterRuntimeTypeWrapper;->context:Lcom/google/gson/internal/bind/MiniGson;

    .line 32
    iput-object p2, p0, Lcom/google/gson/internal/bind/TypeAdapterRuntimeTypeWrapper;->delegate:Lcom/google/gson/internal/bind/TypeAdapter;

    .line 33
    iput-object p3, p0, Lcom/google/gson/internal/bind/TypeAdapterRuntimeTypeWrapper;->type:Ljava/lang/reflect/Type;

    .line 34
    return-void
.end method


# virtual methods
.method public read(Lcom/google/gson/stream/JsonReader;)Ljava/lang/Object;
    .locals 1
    .parameter "reader"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/gson/stream/JsonReader;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 38
    .local p0, this:Lcom/google/gson/internal/bind/TypeAdapterRuntimeTypeWrapper;,"Lcom/google/gson/internal/bind/TypeAdapterRuntimeTypeWrapper<TT;>;"
    iget-object v0, p0, Lcom/google/gson/internal/bind/TypeAdapterRuntimeTypeWrapper;->delegate:Lcom/google/gson/internal/bind/TypeAdapter;

    invoke-virtual {v0, p1}, Lcom/google/gson/internal/bind/TypeAdapter;->read(Lcom/google/gson/stream/JsonReader;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public write(Lcom/google/gson/stream/JsonWriter;Ljava/lang/Object;)V
    .locals 5
    .parameter "writer"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/gson/stream/JsonWriter;",
            "TT;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 50
    .local p0, this:Lcom/google/gson/internal/bind/TypeAdapterRuntimeTypeWrapper;,"Lcom/google/gson/internal/bind/TypeAdapterRuntimeTypeWrapper<TT;>;"
    .local p2, value:Ljava/lang/Object;,"TT;"
    iget-object v0, p0, Lcom/google/gson/internal/bind/TypeAdapterRuntimeTypeWrapper;->delegate:Lcom/google/gson/internal/bind/TypeAdapter;

    .line 51
    .local v0, chosen:Lcom/google/gson/internal/bind/TypeAdapter;
    iget-object v3, p0, Lcom/google/gson/internal/bind/TypeAdapterRuntimeTypeWrapper;->type:Ljava/lang/reflect/Type;

    invoke-static {v3, p2}, Lcom/google/gson/internal/bind/Reflection;->getRuntimeTypeIfMoreSpecific(Ljava/lang/reflect/Type;Ljava/lang/Object;)Ljava/lang/reflect/Type;

    move-result-object v1

    .line 52
    .local v1, runtimeType:Ljava/lang/reflect/Type;
    iget-object v3, p0, Lcom/google/gson/internal/bind/TypeAdapterRuntimeTypeWrapper;->type:Ljava/lang/reflect/Type;

    if-eq v1, v3, :cond_0

    .line 53
    iget-object v3, p0, Lcom/google/gson/internal/bind/TypeAdapterRuntimeTypeWrapper;->context:Lcom/google/gson/internal/bind/MiniGson;

    invoke-static {v1}, Lcom/google/gson/reflect/TypeToken;->get(Ljava/lang/reflect/Type;)Lcom/google/gson/reflect/TypeToken;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/google/gson/internal/bind/MiniGson;->getAdapter(Lcom/google/gson/reflect/TypeToken;)Lcom/google/gson/internal/bind/TypeAdapter;

    move-result-object v2

    .line 54
    .local v2, runtimeTypeAdapter:Lcom/google/gson/internal/bind/TypeAdapter;
    instance-of v3, v2, Lcom/google/gson/internal/bind/ReflectiveTypeAdapterFactory$Adapter;

    if-nez v3, :cond_1

    .line 56
    move-object v0, v2

    .line 66
    .end local v2           #runtimeTypeAdapter:Lcom/google/gson/internal/bind/TypeAdapter;
    :cond_0
    :goto_0
    invoke-virtual {v0, p1, p2}, Lcom/google/gson/internal/bind/TypeAdapter;->write(Lcom/google/gson/stream/JsonWriter;Ljava/lang/Object;)V

    .line 67
    return-void

    .line 57
    .restart local v2       #runtimeTypeAdapter:Lcom/google/gson/internal/bind/TypeAdapter;
    :cond_1
    iget-object v3, p0, Lcom/google/gson/internal/bind/TypeAdapterRuntimeTypeWrapper;->delegate:Lcom/google/gson/internal/bind/TypeAdapter;

    instance-of v3, v3, Lcom/google/gson/internal/bind/ReflectiveTypeAdapterFactory$Adapter;

    if-nez v3, :cond_2

    .line 60
    iget-object v0, p0, Lcom/google/gson/internal/bind/TypeAdapterRuntimeTypeWrapper;->delegate:Lcom/google/gson/internal/bind/TypeAdapter;

    goto :goto_0

    .line 63
    :cond_2
    move-object v0, v2

    goto :goto_0
.end method
