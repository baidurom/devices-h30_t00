.class public final Lcom/google/gson/internal/bind/StringToValueMapTypeAdapterFactory;
.super Ljava/lang/Object;
.source "StringToValueMapTypeAdapterFactory.java"

# interfaces
.implements Lcom/google/gson/internal/bind/TypeAdapter$Factory;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/gson/internal/bind/StringToValueMapTypeAdapterFactory$Adapter;
    }
.end annotation


# instance fields
.field private final constructorConstructor:Lcom/google/gson/internal/ConstructorConstructor;


# direct methods
.method public constructor <init>(Lcom/google/gson/internal/ConstructorConstructor;)V
    .locals 0
    .parameter "constructorConstructor"

    .prologue
    .line 37
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 38
    iput-object p1, p0, Lcom/google/gson/internal/bind/StringToValueMapTypeAdapterFactory;->constructorConstructor:Lcom/google/gson/internal/ConstructorConstructor;

    .line 39
    return-void
.end method


# virtual methods
.method public create(Lcom/google/gson/internal/bind/MiniGson;Lcom/google/gson/reflect/TypeToken;)Lcom/google/gson/internal/bind/TypeAdapter;
    .locals 8
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
    const/4 v3, 0x0

    .line 42
    invoke-virtual {p2}, Lcom/google/gson/reflect/TypeToken;->getType()Ljava/lang/reflect/Type;

    move-result-object v4

    .line 43
    .local v4, type:Ljava/lang/reflect/Type;
    instance-of v6, v4, Ljava/lang/reflect/ParameterizedType;

    if-nez v6, :cond_1

    .line 63
    :cond_0
    :goto_0
    return-object v3

    .line 47
    :cond_1
    invoke-virtual {p2}, Lcom/google/gson/reflect/TypeToken;->getRawType()Ljava/lang/Class;

    move-result-object v2

    .line 48
    .local v2, rawType:Ljava/lang/Class;,"Ljava/lang/Class<-TT;>;"
    const-class v6, Ljava/util/Map;

    invoke-virtual {v6, v2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 52
    invoke-static {v4, v2}, Lcom/google/gson/internal/$Gson$Types;->getMapKeyAndValueTypes(Ljava/lang/reflect/Type;Ljava/lang/Class;)[Ljava/lang/reflect/Type;

    move-result-object v1

    .line 53
    .local v1, keyAndValueTypes:[Ljava/lang/reflect/Type;
    const/4 v6, 0x0

    aget-object v6, v1, v6

    const-class v7, Ljava/lang/String;

    if-ne v6, v7, :cond_0

    .line 56
    const/4 v6, 0x1

    aget-object v6, v1, v6

    invoke-static {v6}, Lcom/google/gson/reflect/TypeToken;->get(Ljava/lang/reflect/Type;)Lcom/google/gson/reflect/TypeToken;

    move-result-object v6

    invoke-virtual {p1, v6}, Lcom/google/gson/internal/bind/MiniGson;->getAdapter(Lcom/google/gson/reflect/TypeToken;)Lcom/google/gson/internal/bind/TypeAdapter;

    move-result-object v5

    .line 58
    .local v5, valueAdapter:Lcom/google/gson/internal/bind/TypeAdapter;,"Lcom/google/gson/internal/bind/TypeAdapter<*>;"
    iget-object v6, p0, Lcom/google/gson/internal/bind/StringToValueMapTypeAdapterFactory;->constructorConstructor:Lcom/google/gson/internal/ConstructorConstructor;

    invoke-virtual {v6, p2}, Lcom/google/gson/internal/ConstructorConstructor;->getConstructor(Lcom/google/gson/reflect/TypeToken;)Lcom/google/gson/internal/ObjectConstructor;

    move-result-object v0

    .line 62
    .local v0, constructor:Lcom/google/gson/internal/ObjectConstructor;,"Lcom/google/gson/internal/ObjectConstructor<*>;"
    new-instance v3, Lcom/google/gson/internal/bind/StringToValueMapTypeAdapterFactory$Adapter;

    invoke-direct {v3, p0, v5, v0}, Lcom/google/gson/internal/bind/StringToValueMapTypeAdapterFactory$Adapter;-><init>(Lcom/google/gson/internal/bind/StringToValueMapTypeAdapterFactory;Lcom/google/gson/internal/bind/TypeAdapter;Lcom/google/gson/internal/ObjectConstructor;)V

    .line 63
    .local v3, result:Lcom/google/gson/internal/bind/TypeAdapter;,"Lcom/google/gson/internal/bind/TypeAdapter<TT;>;"
    goto :goto_0
.end method
