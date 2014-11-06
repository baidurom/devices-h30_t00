.class Lcom/google/gson/internal/bind/TypeAdapters$19;
.super Ljava/lang/Object;
.source "TypeAdapters.java"

# interfaces
.implements Lcom/google/gson/internal/bind/TypeAdapter$Factory;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/gson/internal/bind/TypeAdapters;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 454
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public create(Lcom/google/gson/internal/bind/MiniGson;Lcom/google/gson/reflect/TypeToken;)Lcom/google/gson/internal/bind/TypeAdapter;
    .locals 3
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
    .line 455
    .local p2, typeToken:Lcom/google/gson/reflect/TypeToken;,"Lcom/google/gson/reflect/TypeToken<TT;>;"
    invoke-virtual {p2}, Lcom/google/gson/reflect/TypeToken;->getRawType()Ljava/lang/Class;

    move-result-object v1

    const-class v2, Ljava/sql/Timestamp;

    if-eq v1, v2, :cond_0

    .line 456
    const/4 v1, 0x0

    .line 460
    :goto_0
    return-object v1

    .line 459
    :cond_0
    const-class v1, Ljava/util/Date;

    invoke-virtual {p1, v1}, Lcom/google/gson/internal/bind/MiniGson;->getAdapter(Ljava/lang/Class;)Lcom/google/gson/internal/bind/TypeAdapter;

    move-result-object v0

    .line 460
    .local v0, dateTypeAdapter:Lcom/google/gson/internal/bind/TypeAdapter;,"Lcom/google/gson/internal/bind/TypeAdapter<Ljava/util/Date;>;"
    new-instance v1, Lcom/google/gson/internal/bind/TypeAdapters$19$1;

    invoke-direct {v1, p0, v0}, Lcom/google/gson/internal/bind/TypeAdapters$19$1;-><init>(Lcom/google/gson/internal/bind/TypeAdapters$19;Lcom/google/gson/internal/bind/TypeAdapter;)V

    goto :goto_0
.end method
