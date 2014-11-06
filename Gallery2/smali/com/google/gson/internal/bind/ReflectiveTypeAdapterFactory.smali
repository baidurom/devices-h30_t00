.class public Lcom/google/gson/internal/bind/ReflectiveTypeAdapterFactory;
.super Ljava/lang/Object;
.source "ReflectiveTypeAdapterFactory.java"

# interfaces
.implements Lcom/google/gson/internal/bind/TypeAdapter$Factory;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/gson/internal/bind/ReflectiveTypeAdapterFactory$Adapter;,
        Lcom/google/gson/internal/bind/ReflectiveTypeAdapterFactory$BoundField;
    }
.end annotation


# instance fields
.field private final constructorConstructor:Lcom/google/gson/internal/ConstructorConstructor;


# direct methods
.method public constructor <init>(Lcom/google/gson/internal/ConstructorConstructor;)V
    .locals 0
    .parameter "constructorConstructor"

    .prologue
    .line 41
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 42
    iput-object p1, p0, Lcom/google/gson/internal/bind/ReflectiveTypeAdapterFactory;->constructorConstructor:Lcom/google/gson/internal/ConstructorConstructor;

    .line 43
    return-void
.end method

.method private createBoundField(Lcom/google/gson/internal/bind/MiniGson;Ljava/lang/reflect/Field;Ljava/lang/String;Lcom/google/gson/reflect/TypeToken;ZZ)Lcom/google/gson/internal/bind/ReflectiveTypeAdapterFactory$BoundField;
    .locals 9
    .parameter "context"
    .parameter "field"
    .parameter "name"
    .parameter
    .parameter "serialize"
    .parameter "deserialize"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/gson/internal/bind/MiniGson;",
            "Ljava/lang/reflect/Field;",
            "Ljava/lang/String;",
            "Lcom/google/gson/reflect/TypeToken",
            "<*>;ZZ)",
            "Lcom/google/gson/internal/bind/ReflectiveTypeAdapterFactory$BoundField;"
        }
    .end annotation

    .prologue
    .line 71
    .local p4, fieldType:Lcom/google/gson/reflect/TypeToken;,"Lcom/google/gson/reflect/TypeToken<*>;"
    invoke-virtual {p4}, Lcom/google/gson/reflect/TypeToken;->getRawType()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0}, Lcom/google/gson/internal/Primitives;->isPrimitive(Ljava/lang/reflect/Type;)Z

    move-result v8

    .line 74
    .local v8, isPrimitive:Z
    new-instance v0, Lcom/google/gson/internal/bind/ReflectiveTypeAdapterFactory$1;

    move-object v1, p0

    move-object v2, p3

    move v3, p5

    move v4, p6

    move-object v5, p1

    move-object v6, p4

    move-object v7, p2

    invoke-direct/range {v0 .. v8}, Lcom/google/gson/internal/bind/ReflectiveTypeAdapterFactory$1;-><init>(Lcom/google/gson/internal/bind/ReflectiveTypeAdapterFactory;Ljava/lang/String;ZZLcom/google/gson/internal/bind/MiniGson;Lcom/google/gson/reflect/TypeToken;Ljava/lang/reflect/Field;Z)V

    return-object v0
.end method

.method private getBoundFields(Lcom/google/gson/internal/bind/MiniGson;Lcom/google/gson/reflect/TypeToken;Ljava/lang/Class;)Ljava/util/Map;
    .locals 18
    .parameter "context"
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/gson/internal/bind/MiniGson;",
            "Lcom/google/gson/reflect/TypeToken",
            "<*>;",
            "Ljava/lang/Class",
            "<*>;)",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/google/gson/internal/bind/ReflectiveTypeAdapterFactory$BoundField;",
            ">;"
        }
    .end annotation

    .prologue
    .line 96
    .local p2, type:Lcom/google/gson/reflect/TypeToken;,"Lcom/google/gson/reflect/TypeToken<*>;"
    .local p3, raw:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    new-instance v17, Ljava/util/LinkedHashMap;

    invoke-direct/range {v17 .. v17}, Ljava/util/LinkedHashMap;-><init>()V

    .line 97
    .local v17, result:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Lcom/google/gson/internal/bind/ReflectiveTypeAdapterFactory$BoundField;>;"
    invoke-virtual/range {p3 .. p3}, Ljava/lang/Class;->isInterface()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 123
    :cond_0
    return-object v17

    .line 101
    :cond_1
    invoke-virtual/range {p2 .. p2}, Lcom/google/gson/reflect/TypeToken;->getType()Ljava/lang/reflect/Type;

    move-result-object v11

    .line 102
    .local v11, declaredType:Ljava/lang/reflect/Type;
    :goto_0
    const-class v2, Ljava/lang/Object;

    move-object/from16 v0, p3

    if-eq v0, v2, :cond_0

    .line 103
    invoke-virtual/range {p3 .. p3}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object v13

    .line 104
    .local v13, fields:[Ljava/lang/reflect/Field;
    const/4 v2, 0x1

    invoke-static {v13, v2}, Ljava/lang/reflect/AccessibleObject;->setAccessible([Ljava/lang/reflect/AccessibleObject;Z)V

    .line 105
    move-object v9, v13

    .local v9, arr$:[Ljava/lang/reflect/Field;
    array-length v15, v9

    .local v15, len$:I
    const/4 v14, 0x0

    .local v14, i$:I
    :goto_1
    if-ge v14, v15, :cond_4

    aget-object v4, v9, v14

    .line 106
    .local v4, field:Ljava/lang/reflect/Field;
    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-virtual {v0, v1, v4, v11}, Lcom/google/gson/internal/bind/ReflectiveTypeAdapterFactory;->serializeField(Ljava/lang/Class;Ljava/lang/reflect/Field;Ljava/lang/reflect/Type;)Z

    move-result v7

    .line 107
    .local v7, serialize:Z
    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-virtual {v0, v1, v4, v11}, Lcom/google/gson/internal/bind/ReflectiveTypeAdapterFactory;->deserializeField(Ljava/lang/Class;Ljava/lang/reflect/Field;Ljava/lang/reflect/Type;)Z

    move-result v8

    .line 108
    .local v8, deserialize:Z
    if-nez v7, :cond_3

    if-nez v8, :cond_3

    .line 105
    :cond_2
    add-int/lit8 v14, v14, 0x1

    goto :goto_1

    .line 111
    :cond_3
    invoke-virtual/range {p2 .. p2}, Lcom/google/gson/reflect/TypeToken;->getType()Ljava/lang/reflect/Type;

    move-result-object v2

    invoke-virtual {v4}, Ljava/lang/reflect/Field;->getGenericType()Ljava/lang/reflect/Type;

    move-result-object v3

    move-object/from16 v0, p3

    invoke-static {v2, v0, v3}, Lcom/google/gson/internal/$Gson$Types;->resolve(Ljava/lang/reflect/Type;Ljava/lang/Class;Ljava/lang/reflect/Type;)Ljava/lang/reflect/Type;

    move-result-object v12

    .line 112
    .local v12, fieldType:Ljava/lang/reflect/Type;
    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-virtual {v0, v1, v4, v11}, Lcom/google/gson/internal/bind/ReflectiveTypeAdapterFactory;->getFieldName(Ljava/lang/Class;Ljava/lang/reflect/Field;Ljava/lang/reflect/Type;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v12}, Lcom/google/gson/reflect/TypeToken;->get(Ljava/lang/reflect/Type;)Lcom/google/gson/reflect/TypeToken;

    move-result-object v6

    move-object/from16 v2, p0

    move-object/from16 v3, p1

    invoke-direct/range {v2 .. v8}, Lcom/google/gson/internal/bind/ReflectiveTypeAdapterFactory;->createBoundField(Lcom/google/gson/internal/bind/MiniGson;Ljava/lang/reflect/Field;Ljava/lang/String;Lcom/google/gson/reflect/TypeToken;ZZ)Lcom/google/gson/internal/bind/ReflectiveTypeAdapterFactory$BoundField;

    move-result-object v10

    .line 114
    .local v10, boundField:Lcom/google/gson/internal/bind/ReflectiveTypeAdapterFactory$BoundField;
    iget-object v2, v10, Lcom/google/gson/internal/bind/ReflectiveTypeAdapterFactory$BoundField;->name:Ljava/lang/String;

    move-object/from16 v0, v17

    invoke-interface {v0, v2, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Lcom/google/gson/internal/bind/ReflectiveTypeAdapterFactory$BoundField;

    .line 115
    .local v16, previous:Lcom/google/gson/internal/bind/ReflectiveTypeAdapterFactory$BoundField;
    if-eqz v16, :cond_2

    .line 116
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, " declares multiple JSON fields named "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v16

    iget-object v5, v0, Lcom/google/gson/internal/bind/ReflectiveTypeAdapterFactory$BoundField;->name:Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 120
    .end local v4           #field:Ljava/lang/reflect/Field;
    .end local v7           #serialize:Z
    .end local v8           #deserialize:Z
    .end local v10           #boundField:Lcom/google/gson/internal/bind/ReflectiveTypeAdapterFactory$BoundField;
    .end local v12           #fieldType:Ljava/lang/reflect/Type;
    .end local v16           #previous:Lcom/google/gson/internal/bind/ReflectiveTypeAdapterFactory$BoundField;
    :cond_4
    invoke-virtual/range {p2 .. p2}, Lcom/google/gson/reflect/TypeToken;->getType()Ljava/lang/reflect/Type;

    move-result-object v2

    invoke-virtual/range {p3 .. p3}, Ljava/lang/Class;->getGenericSuperclass()Ljava/lang/reflect/Type;

    move-result-object v3

    move-object/from16 v0, p3

    invoke-static {v2, v0, v3}, Lcom/google/gson/internal/$Gson$Types;->resolve(Ljava/lang/reflect/Type;Ljava/lang/Class;Ljava/lang/reflect/Type;)Ljava/lang/reflect/Type;

    move-result-object v2

    invoke-static {v2}, Lcom/google/gson/reflect/TypeToken;->get(Ljava/lang/reflect/Type;)Lcom/google/gson/reflect/TypeToken;

    move-result-object p2

    .line 121
    invoke-virtual/range {p2 .. p2}, Lcom/google/gson/reflect/TypeToken;->getRawType()Ljava/lang/Class;

    move-result-object p3

    .line 122
    goto/16 :goto_0
.end method


# virtual methods
.method public create(Lcom/google/gson/internal/bind/MiniGson;Lcom/google/gson/reflect/TypeToken;)Lcom/google/gson/internal/bind/TypeAdapter;
    .locals 5
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
    .local p2, type:Lcom/google/gson/reflect/TypeToken;,"Lcom/google/gson/reflect/TypeToken<TT;>;"
    const/4 v2, 0x0

    .line 58
    invoke-virtual {p2}, Lcom/google/gson/reflect/TypeToken;->getRawType()Ljava/lang/Class;

    move-result-object v1

    .line 60
    .local v1, raw:Ljava/lang/Class;,"Ljava/lang/Class<-TT;>;"
    const-class v3, Ljava/lang/Object;

    invoke-virtual {v3, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 65
    :goto_0
    return-object v2

    .line 64
    :cond_0
    iget-object v3, p0, Lcom/google/gson/internal/bind/ReflectiveTypeAdapterFactory;->constructorConstructor:Lcom/google/gson/internal/ConstructorConstructor;

    invoke-virtual {v3, p2}, Lcom/google/gson/internal/ConstructorConstructor;->getConstructor(Lcom/google/gson/reflect/TypeToken;)Lcom/google/gson/internal/ObjectConstructor;

    move-result-object v0

    .line 65
    .local v0, constructor:Lcom/google/gson/internal/ObjectConstructor;,"Lcom/google/gson/internal/ObjectConstructor<TT;>;"
    new-instance v3, Lcom/google/gson/internal/bind/ReflectiveTypeAdapterFactory$Adapter;

    invoke-direct {p0, p1, p2, v1}, Lcom/google/gson/internal/bind/ReflectiveTypeAdapterFactory;->getBoundFields(Lcom/google/gson/internal/bind/MiniGson;Lcom/google/gson/reflect/TypeToken;Ljava/lang/Class;)Ljava/util/Map;

    move-result-object v4

    invoke-direct {v3, p0, v0, v4, v2}, Lcom/google/gson/internal/bind/ReflectiveTypeAdapterFactory$Adapter;-><init>(Lcom/google/gson/internal/bind/ReflectiveTypeAdapterFactory;Lcom/google/gson/internal/ObjectConstructor;Ljava/util/Map;Lcom/google/gson/internal/bind/ReflectiveTypeAdapterFactory$1;)V

    move-object v2, v3

    goto :goto_0
.end method

.method protected deserializeField(Ljava/lang/Class;Ljava/lang/reflect/Field;Ljava/lang/reflect/Type;)Z
    .locals 1
    .parameter
    .parameter "f"
    .parameter "declaredType"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/reflect/Field;",
            "Ljava/lang/reflect/Type;",
            ")Z"
        }
    .end annotation

    .prologue
    .line 50
    .local p1, declaringClazz:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    invoke-virtual {p2}, Ljava/lang/reflect/Field;->isSynthetic()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected getFieldName(Ljava/lang/Class;Ljava/lang/reflect/Field;Ljava/lang/reflect/Type;)Ljava/lang/String;
    .locals 1
    .parameter
    .parameter "f"
    .parameter "declaredType"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/reflect/Field;",
            "Ljava/lang/reflect/Type;",
            ")",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 54
    .local p1, declaringClazz:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    invoke-virtual {p2}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected serializeField(Ljava/lang/Class;Ljava/lang/reflect/Field;Ljava/lang/reflect/Type;)Z
    .locals 1
    .parameter
    .parameter "f"
    .parameter "declaredType"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/reflect/Field;",
            "Ljava/lang/reflect/Type;",
            ")Z"
        }
    .end annotation

    .prologue
    .line 46
    .local p1, declaringClazz:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    invoke-virtual {p2}, Ljava/lang/reflect/Field;->isSynthetic()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
