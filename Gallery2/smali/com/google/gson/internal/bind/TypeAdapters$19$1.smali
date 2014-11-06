.class Lcom/google/gson/internal/bind/TypeAdapters$19$1;
.super Lcom/google/gson/internal/bind/TypeAdapter;
.source "TypeAdapters.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/gson/internal/bind/TypeAdapters$19;->create(Lcom/google/gson/internal/bind/MiniGson;Lcom/google/gson/reflect/TypeToken;)Lcom/google/gson/internal/bind/TypeAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/gson/internal/bind/TypeAdapter",
        "<",
        "Ljava/sql/Timestamp;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/gson/internal/bind/TypeAdapters$19;

.field final synthetic val$dateTypeAdapter:Lcom/google/gson/internal/bind/TypeAdapter;


# direct methods
.method constructor <init>(Lcom/google/gson/internal/bind/TypeAdapters$19;Lcom/google/gson/internal/bind/TypeAdapter;)V
    .locals 0
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 466
    iput-object p1, p0, Lcom/google/gson/internal/bind/TypeAdapters$19$1;->this$0:Lcom/google/gson/internal/bind/TypeAdapters$19;

    iput-object p2, p0, Lcom/google/gson/internal/bind/TypeAdapters$19$1;->val$dateTypeAdapter:Lcom/google/gson/internal/bind/TypeAdapter;

    invoke-direct {p0}, Lcom/google/gson/internal/bind/TypeAdapter;-><init>()V

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
    .line 466
    invoke-virtual {p0, p1}, Lcom/google/gson/internal/bind/TypeAdapters$19$1;->read(Lcom/google/gson/stream/JsonReader;)Ljava/sql/Timestamp;

    move-result-object v0

    return-object v0
.end method

.method public read(Lcom/google/gson/stream/JsonReader;)Ljava/sql/Timestamp;
    .locals 4
    .parameter "reader"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 462
    iget-object v1, p0, Lcom/google/gson/internal/bind/TypeAdapters$19$1;->val$dateTypeAdapter:Lcom/google/gson/internal/bind/TypeAdapter;

    invoke-virtual {v1, p1}, Lcom/google/gson/internal/bind/TypeAdapter;->read(Lcom/google/gson/stream/JsonReader;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Date;

    .line 463
    .local v0, date:Ljava/util/Date;
    if-eqz v0, :cond_0

    new-instance v1, Ljava/sql/Timestamp;

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    invoke-direct {v1, v2, v3}, Ljava/sql/Timestamp;-><init>(J)V

    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

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
    .line 466
    check-cast p2, Ljava/sql/Timestamp;

    .end local p2
    invoke-virtual {p0, p1, p2}, Lcom/google/gson/internal/bind/TypeAdapters$19$1;->write(Lcom/google/gson/stream/JsonWriter;Ljava/sql/Timestamp;)V

    return-void
.end method

.method public write(Lcom/google/gson/stream/JsonWriter;Ljava/sql/Timestamp;)V
    .locals 1
    .parameter "writer"
    .parameter "value"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 467
    iget-object v0, p0, Lcom/google/gson/internal/bind/TypeAdapters$19$1;->val$dateTypeAdapter:Lcom/google/gson/internal/bind/TypeAdapter;

    invoke-virtual {v0, p1, p2}, Lcom/google/gson/internal/bind/TypeAdapter;->write(Lcom/google/gson/stream/JsonWriter;Ljava/lang/Object;)V

    .line 468
    return-void
.end method
