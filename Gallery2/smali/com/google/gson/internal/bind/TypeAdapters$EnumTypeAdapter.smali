.class final Lcom/google/gson/internal/bind/TypeAdapters$EnumTypeAdapter;
.super Lcom/google/gson/internal/bind/TypeAdapter;
.source "TypeAdapters.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/gson/internal/bind/TypeAdapters;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "EnumTypeAdapter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Enum",
        "<TT;>;>",
        "Lcom/google/gson/internal/bind/TypeAdapter",
        "<TT;>;"
    }
.end annotation


# instance fields
.field private final classOfT:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/Class;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 656
    .local p0, this:Lcom/google/gson/internal/bind/TypeAdapters$EnumTypeAdapter;,"Lcom/google/gson/internal/bind/TypeAdapters$EnumTypeAdapter<TT;>;"
    .local p1, classOfT:Ljava/lang/Class;,"Ljava/lang/Class<TT;>;"
    invoke-direct {p0}, Lcom/google/gson/internal/bind/TypeAdapter;-><init>()V

    .line 657
    iput-object p1, p0, Lcom/google/gson/internal/bind/TypeAdapters$EnumTypeAdapter;->classOfT:Ljava/lang/Class;

    .line 658
    return-void
.end method


# virtual methods
.method public read(Lcom/google/gson/stream/JsonReader;)Ljava/lang/Enum;
    .locals 2
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
    .line 660
    .local p0, this:Lcom/google/gson/internal/bind/TypeAdapters$EnumTypeAdapter;,"Lcom/google/gson/internal/bind/TypeAdapters$EnumTypeAdapter<TT;>;"
    invoke-virtual {p1}, Lcom/google/gson/stream/JsonReader;->peek()Lcom/google/gson/stream/JsonToken;

    move-result-object v0

    sget-object v1, Lcom/google/gson/stream/JsonToken;->NULL:Lcom/google/gson/stream/JsonToken;

    if-ne v0, v1, :cond_0

    .line 661
    invoke-virtual {p1}, Lcom/google/gson/stream/JsonReader;->nextNull()V

    .line 662
    const/4 v0, 0x0

    .line 664
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/google/gson/internal/bind/TypeAdapters$EnumTypeAdapter;->classOfT:Ljava/lang/Class;

    invoke-virtual {p1}, Lcom/google/gson/stream/JsonReader;->nextString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    goto :goto_0
.end method

.method public bridge synthetic read(Lcom/google/gson/stream/JsonReader;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 653
    .local p0, this:Lcom/google/gson/internal/bind/TypeAdapters$EnumTypeAdapter;,"Lcom/google/gson/internal/bind/TypeAdapters$EnumTypeAdapter<TT;>;"
    invoke-virtual {p0, p1}, Lcom/google/gson/internal/bind/TypeAdapters$EnumTypeAdapter;->read(Lcom/google/gson/stream/JsonReader;)Ljava/lang/Enum;

    move-result-object v0

    return-object v0
.end method

.method public write(Lcom/google/gson/stream/JsonWriter;Ljava/lang/Enum;)V
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
    .line 668
    .local p0, this:Lcom/google/gson/internal/bind/TypeAdapters$EnumTypeAdapter;,"Lcom/google/gson/internal/bind/TypeAdapters$EnumTypeAdapter<TT;>;"
    .local p2, value:Ljava/lang/Enum;,"TT;"
    if-nez p2, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p1, v0}, Lcom/google/gson/stream/JsonWriter;->value(Ljava/lang/String;)Lcom/google/gson/stream/JsonWriter;

    .line 669
    return-void

    .line 668
    :cond_0
    invoke-virtual {p2}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v0

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
    .line 653
    .local p0, this:Lcom/google/gson/internal/bind/TypeAdapters$EnumTypeAdapter;,"Lcom/google/gson/internal/bind/TypeAdapters$EnumTypeAdapter<TT;>;"
    check-cast p2, Ljava/lang/Enum;

    .end local p2
    invoke-virtual {p0, p1, p2}, Lcom/google/gson/internal/bind/TypeAdapters$EnumTypeAdapter;->write(Lcom/google/gson/stream/JsonWriter;Ljava/lang/Enum;)V

    return-void
.end method
