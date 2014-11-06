.class Lcom/google/gson/Gson$1;
.super Lcom/google/gson/internal/bind/ReflectiveTypeAdapterFactory;
.source "Gson.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/gson/Gson;-><init>(Lcom/google/gson/ExclusionStrategy;Lcom/google/gson/ExclusionStrategy;Lcom/google/gson/FieldNamingStrategy2;Lcom/google/gson/internal/ParameterizedTypeHandlerMap;ZLcom/google/gson/internal/ParameterizedTypeHandlerMap;Lcom/google/gson/internal/ParameterizedTypeHandlerMap;ZZZZZLcom/google/gson/LongSerializationPolicy;Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/gson/Gson;

.field final synthetic val$fieldNamingPolicy:Lcom/google/gson/FieldNamingStrategy2;


# direct methods
.method constructor <init>(Lcom/google/gson/Gson;Lcom/google/gson/internal/ConstructorConstructor;Lcom/google/gson/FieldNamingStrategy2;)V
    .locals 0
    .parameter
    .parameter "x0"
    .parameter

    .prologue
    .line 223
    iput-object p1, p0, Lcom/google/gson/Gson$1;->this$0:Lcom/google/gson/Gson;

    iput-object p3, p0, Lcom/google/gson/Gson$1;->val$fieldNamingPolicy:Lcom/google/gson/FieldNamingStrategy2;

    invoke-direct {p0, p2}, Lcom/google/gson/internal/bind/ReflectiveTypeAdapterFactory;-><init>(Lcom/google/gson/internal/ConstructorConstructor;)V

    return-void
.end method


# virtual methods
.method public deserializeField(Ljava/lang/Class;Ljava/lang/reflect/Field;Ljava/lang/reflect/Type;)Z
    .locals 2
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
    .line 224
    .local p1, declaringClazz:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    iget-object v1, p0, Lcom/google/gson/Gson$1;->this$0:Lcom/google/gson/Gson;

    #getter for: Lcom/google/gson/Gson;->deserializationExclusionStrategy:Lcom/google/gson/ExclusionStrategy;
    invoke-static {v1}, Lcom/google/gson/Gson;->access$100(Lcom/google/gson/Gson;)Lcom/google/gson/ExclusionStrategy;

    move-result-object v0

    .line 225
    .local v0, strategy:Lcom/google/gson/ExclusionStrategy;
    invoke-virtual {p2}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/gson/ExclusionStrategy;->shouldSkipClass(Ljava/lang/Class;)Z

    move-result v1

    if-nez v1, :cond_0

    new-instance v1, Lcom/google/gson/FieldAttributes;

    invoke-direct {v1, p1, p2}, Lcom/google/gson/FieldAttributes;-><init>(Ljava/lang/Class;Ljava/lang/reflect/Field;)V

    invoke-interface {v0, v1}, Lcom/google/gson/ExclusionStrategy;->shouldSkipField(Lcom/google/gson/FieldAttributes;)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getFieldName(Ljava/lang/Class;Ljava/lang/reflect/Field;Ljava/lang/reflect/Type;)Ljava/lang/String;
    .locals 2
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
    .line 213
    .local p1, declaringClazz:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    iget-object v0, p0, Lcom/google/gson/Gson$1;->val$fieldNamingPolicy:Lcom/google/gson/FieldNamingStrategy2;

    new-instance v1, Lcom/google/gson/FieldAttributes;

    invoke-direct {v1, p1, p2}, Lcom/google/gson/FieldAttributes;-><init>(Ljava/lang/Class;Ljava/lang/reflect/Field;)V

    invoke-interface {v0, v1}, Lcom/google/gson/FieldNamingStrategy2;->translateName(Lcom/google/gson/FieldAttributes;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public serializeField(Ljava/lang/Class;Ljava/lang/reflect/Field;Ljava/lang/reflect/Type;)Z
    .locals 2
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
    .line 217
    .local p1, declaringClazz:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    iget-object v1, p0, Lcom/google/gson/Gson$1;->this$0:Lcom/google/gson/Gson;

    #getter for: Lcom/google/gson/Gson;->serializationExclusionStrategy:Lcom/google/gson/ExclusionStrategy;
    invoke-static {v1}, Lcom/google/gson/Gson;->access$000(Lcom/google/gson/Gson;)Lcom/google/gson/ExclusionStrategy;

    move-result-object v0

    .line 218
    .local v0, strategy:Lcom/google/gson/ExclusionStrategy;
    invoke-virtual {p2}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/gson/ExclusionStrategy;->shouldSkipClass(Ljava/lang/Class;)Z

    move-result v1

    if-nez v1, :cond_0

    new-instance v1, Lcom/google/gson/FieldAttributes;

    invoke-direct {v1, p1, p2}, Lcom/google/gson/FieldAttributes;-><init>(Ljava/lang/Class;Ljava/lang/reflect/Field;)V

    invoke-interface {v0, v1}, Lcom/google/gson/ExclusionStrategy;->shouldSkipField(Lcom/google/gson/FieldAttributes;)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method
