.class Lcom/google/gson/internal/bind/ExcludedTypeAdapterFactory$1;
.super Lcom/google/gson/internal/bind/TypeAdapter;
.source "ExcludedTypeAdapterFactory.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/gson/internal/bind/ExcludedTypeAdapterFactory;->create(Lcom/google/gson/internal/bind/MiniGson;Lcom/google/gson/reflect/TypeToken;)Lcom/google/gson/internal/bind/TypeAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/gson/internal/bind/TypeAdapter",
        "<TT;>;"
    }
.end annotation


# instance fields
.field private delegate:Lcom/google/gson/internal/bind/TypeAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/gson/internal/bind/TypeAdapter",
            "<TT;>;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/google/gson/internal/bind/ExcludedTypeAdapterFactory;

.field final synthetic val$context:Lcom/google/gson/internal/bind/MiniGson;

.field final synthetic val$skipDeserialize:Z

.field final synthetic val$skipSerialize:Z

.field final synthetic val$type:Lcom/google/gson/reflect/TypeToken;


# direct methods
.method constructor <init>(Lcom/google/gson/internal/bind/ExcludedTypeAdapterFactory;ZZLcom/google/gson/internal/bind/MiniGson;Lcom/google/gson/reflect/TypeToken;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 71
    iput-object p1, p0, Lcom/google/gson/internal/bind/ExcludedTypeAdapterFactory$1;->this$0:Lcom/google/gson/internal/bind/ExcludedTypeAdapterFactory;

    iput-boolean p2, p0, Lcom/google/gson/internal/bind/ExcludedTypeAdapterFactory$1;->val$skipDeserialize:Z

    iput-boolean p3, p0, Lcom/google/gson/internal/bind/ExcludedTypeAdapterFactory$1;->val$skipSerialize:Z

    iput-object p4, p0, Lcom/google/gson/internal/bind/ExcludedTypeAdapterFactory$1;->val$context:Lcom/google/gson/internal/bind/MiniGson;

    iput-object p5, p0, Lcom/google/gson/internal/bind/ExcludedTypeAdapterFactory$1;->val$type:Lcom/google/gson/reflect/TypeToken;

    invoke-direct {p0}, Lcom/google/gson/internal/bind/TypeAdapter;-><init>()V

    return-void
.end method

.method private delegate()Lcom/google/gson/internal/bind/TypeAdapter;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/gson/internal/bind/TypeAdapter",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 72
    iget-object v0, p0, Lcom/google/gson/internal/bind/ExcludedTypeAdapterFactory$1;->delegate:Lcom/google/gson/internal/bind/TypeAdapter;

    .line 73
    .local v0, d:Lcom/google/gson/internal/bind/TypeAdapter;,"Lcom/google/gson/internal/bind/TypeAdapter<TT;>;"
    if-eqz v0, :cond_0

    .end local v0           #d:Lcom/google/gson/internal/bind/TypeAdapter;,"Lcom/google/gson/internal/bind/TypeAdapter<TT;>;"
    :goto_0
    return-object v0

    .restart local v0       #d:Lcom/google/gson/internal/bind/TypeAdapter;,"Lcom/google/gson/internal/bind/TypeAdapter<TT;>;"
    :cond_0
    iget-object v1, p0, Lcom/google/gson/internal/bind/ExcludedTypeAdapterFactory$1;->val$context:Lcom/google/gson/internal/bind/MiniGson;

    iget-object v2, p0, Lcom/google/gson/internal/bind/ExcludedTypeAdapterFactory$1;->this$0:Lcom/google/gson/internal/bind/ExcludedTypeAdapterFactory;

    iget-object v3, p0, Lcom/google/gson/internal/bind/ExcludedTypeAdapterFactory$1;->val$type:Lcom/google/gson/reflect/TypeToken;

    invoke-virtual {v1, v2, v3}, Lcom/google/gson/internal/bind/MiniGson;->getNextAdapter(Lcom/google/gson/internal/bind/TypeAdapter$Factory;Lcom/google/gson/reflect/TypeToken;)Lcom/google/gson/internal/bind/TypeAdapter;

    move-result-object v0

    .end local v0           #d:Lcom/google/gson/internal/bind/TypeAdapter;,"Lcom/google/gson/internal/bind/TypeAdapter<TT;>;"
    iput-object v0, p0, Lcom/google/gson/internal/bind/ExcludedTypeAdapterFactory$1;->delegate:Lcom/google/gson/internal/bind/TypeAdapter;

    goto :goto_0
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
    .line 56
    iget-boolean v0, p0, Lcom/google/gson/internal/bind/ExcludedTypeAdapterFactory$1;->val$skipDeserialize:Z

    if-eqz v0, :cond_0

    .line 57
    invoke-virtual {p1}, Lcom/google/gson/stream/JsonReader;->skipValue()V

    .line 58
    const/4 v0, 0x0

    .line 60
    :goto_0
    return-object v0

    :cond_0
    invoke-direct {p0}, Lcom/google/gson/internal/bind/ExcludedTypeAdapterFactory$1;->delegate()Lcom/google/gson/internal/bind/TypeAdapter;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/gson/internal/bind/TypeAdapter;->read(Lcom/google/gson/stream/JsonReader;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0
.end method

.method public write(Lcom/google/gson/stream/JsonWriter;Ljava/lang/Object;)V
    .locals 1
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
    .line 64
    .local p2, value:Ljava/lang/Object;,"TT;"
    iget-boolean v0, p0, Lcom/google/gson/internal/bind/ExcludedTypeAdapterFactory$1;->val$skipSerialize:Z

    if-eqz v0, :cond_0

    .line 65
    invoke-virtual {p1}, Lcom/google/gson/stream/JsonWriter;->nullValue()Lcom/google/gson/stream/JsonWriter;

    .line 69
    :goto_0
    return-void

    .line 68
    :cond_0
    invoke-direct {p0}, Lcom/google/gson/internal/bind/ExcludedTypeAdapterFactory$1;->delegate()Lcom/google/gson/internal/bind/TypeAdapter;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/google/gson/internal/bind/TypeAdapter;->write(Lcom/google/gson/stream/JsonWriter;Ljava/lang/Object;)V

    goto :goto_0
.end method
