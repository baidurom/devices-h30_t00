.class public final Lcom/google/gson/GsonBuilder;
.super Ljava/lang/Object;
.source "GsonBuilder.java"


# static fields
.field private static final exposeAnnotationDeserializationExclusionStrategy:Lcom/google/gson/ExposeAnnotationDeserializationExclusionStrategy;

.field private static final exposeAnnotationSerializationExclusionStrategy:Lcom/google/gson/ExposeAnnotationSerializationExclusionStrategy;

.field private static final innerClassExclusionStrategy:Lcom/google/gson/InnerClassExclusionStrategy;


# instance fields
.field private complexMapKeySerialization:Z

.field private datePattern:Ljava/lang/String;

.field private dateStyle:I

.field private final deserializeExclusionStrategies:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lcom/google/gson/ExclusionStrategy;",
            ">;"
        }
    .end annotation
.end field

.field private final deserializers:Lcom/google/gson/internal/ParameterizedTypeHandlerMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/gson/internal/ParameterizedTypeHandlerMap",
            "<",
            "Lcom/google/gson/JsonDeserializer",
            "<*>;>;"
        }
    .end annotation
.end field

.field private escapeHtmlChars:Z

.field private excludeFieldsWithoutExposeAnnotation:Z

.field private fieldNamingPolicy:Lcom/google/gson/FieldNamingStrategy2;

.field private generateNonExecutableJson:Z

.field private ignoreVersionsAfter:D

.field private final instanceCreators:Lcom/google/gson/internal/ParameterizedTypeHandlerMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/gson/internal/ParameterizedTypeHandlerMap",
            "<",
            "Lcom/google/gson/InstanceCreator",
            "<*>;>;"
        }
    .end annotation
.end field

.field private longSerializationPolicy:Lcom/google/gson/LongSerializationPolicy;

.field private modifierBasedExclusionStrategy:Lcom/google/gson/ModifierBasedExclusionStrategy;

.field private prettyPrinting:Z

.field private final serializeExclusionStrategies:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lcom/google/gson/ExclusionStrategy;",
            ">;"
        }
    .end annotation
.end field

.field private serializeInnerClasses:Z

.field private serializeNulls:Z

.field private serializeSpecialFloatingPointValues:Z

.field private final serializers:Lcom/google/gson/internal/ParameterizedTypeHandlerMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/gson/internal/ParameterizedTypeHandlerMap",
            "<",
            "Lcom/google/gson/JsonSerializer",
            "<*>;>;"
        }
    .end annotation
.end field

.field private timeStyle:I

.field private final typeAdapterFactories:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/gson/internal/bind/TypeAdapter$Factory;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 69
    new-instance v0, Lcom/google/gson/InnerClassExclusionStrategy;

    invoke-direct {v0}, Lcom/google/gson/InnerClassExclusionStrategy;-><init>()V

    sput-object v0, Lcom/google/gson/GsonBuilder;->innerClassExclusionStrategy:Lcom/google/gson/InnerClassExclusionStrategy;

    .line 72
    new-instance v0, Lcom/google/gson/ExposeAnnotationDeserializationExclusionStrategy;

    invoke-direct {v0}, Lcom/google/gson/ExposeAnnotationDeserializationExclusionStrategy;-><init>()V

    sput-object v0, Lcom/google/gson/GsonBuilder;->exposeAnnotationDeserializationExclusionStrategy:Lcom/google/gson/ExposeAnnotationDeserializationExclusionStrategy;

    .line 75
    new-instance v0, Lcom/google/gson/ExposeAnnotationSerializationExclusionStrategy;

    invoke-direct {v0}, Lcom/google/gson/ExposeAnnotationSerializationExclusionStrategy;-><init>()V

    sput-object v0, Lcom/google/gson/GsonBuilder;->exposeAnnotationSerializationExclusionStrategy:Lcom/google/gson/ExposeAnnotationSerializationExclusionStrategy;

    return-void
.end method

.method public constructor <init>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 110
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 78
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/google/gson/GsonBuilder;->serializeExclusionStrategies:Ljava/util/Set;

    .line 80
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/google/gson/GsonBuilder;->deserializeExclusionStrategies:Ljava/util/Set;

    .line 92
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/gson/GsonBuilder;->typeAdapterFactories:Ljava/util/List;

    .line 98
    iput-boolean v2, p0, Lcom/google/gson/GsonBuilder;->complexMapKeySerialization:Z

    .line 112
    iget-object v0, p0, Lcom/google/gson/GsonBuilder;->deserializeExclusionStrategies:Ljava/util/Set;

    sget-object v1, Lcom/google/gson/Gson;->DEFAULT_ANON_LOCAL_CLASS_EXCLUSION_STRATEGY:Lcom/google/gson/AnonymousAndLocalClassExclusionStrategy;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 113
    iget-object v0, p0, Lcom/google/gson/GsonBuilder;->deserializeExclusionStrategies:Ljava/util/Set;

    sget-object v1, Lcom/google/gson/Gson;->DEFAULT_SYNTHETIC_FIELD_EXCLUSION_STRATEGY:Lcom/google/gson/SyntheticFieldExclusionStrategy;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 114
    iget-object v0, p0, Lcom/google/gson/GsonBuilder;->serializeExclusionStrategies:Ljava/util/Set;

    sget-object v1, Lcom/google/gson/Gson;->DEFAULT_ANON_LOCAL_CLASS_EXCLUSION_STRATEGY:Lcom/google/gson/AnonymousAndLocalClassExclusionStrategy;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 115
    iget-object v0, p0, Lcom/google/gson/GsonBuilder;->serializeExclusionStrategies:Ljava/util/Set;

    sget-object v1, Lcom/google/gson/Gson;->DEFAULT_SYNTHETIC_FIELD_EXCLUSION_STRATEGY:Lcom/google/gson/SyntheticFieldExclusionStrategy;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 118
    const-wide/high16 v0, -0x4010

    iput-wide v0, p0, Lcom/google/gson/GsonBuilder;->ignoreVersionsAfter:D

    .line 119
    iput-boolean v3, p0, Lcom/google/gson/GsonBuilder;->serializeInnerClasses:Z

    .line 120
    iput-boolean v2, p0, Lcom/google/gson/GsonBuilder;->prettyPrinting:Z

    .line 121
    iput-boolean v3, p0, Lcom/google/gson/GsonBuilder;->escapeHtmlChars:Z

    .line 122
    sget-object v0, Lcom/google/gson/Gson;->DEFAULT_MODIFIER_BASED_EXCLUSION_STRATEGY:Lcom/google/gson/ModifierBasedExclusionStrategy;

    iput-object v0, p0, Lcom/google/gson/GsonBuilder;->modifierBasedExclusionStrategy:Lcom/google/gson/ModifierBasedExclusionStrategy;

    .line 123
    iput-boolean v2, p0, Lcom/google/gson/GsonBuilder;->excludeFieldsWithoutExposeAnnotation:Z

    .line 124
    sget-object v0, Lcom/google/gson/LongSerializationPolicy;->DEFAULT:Lcom/google/gson/LongSerializationPolicy;

    iput-object v0, p0, Lcom/google/gson/GsonBuilder;->longSerializationPolicy:Lcom/google/gson/LongSerializationPolicy;

    .line 125
    sget-object v0, Lcom/google/gson/Gson;->DEFAULT_NAMING_POLICY:Lcom/google/gson/FieldNamingStrategy2;

    iput-object v0, p0, Lcom/google/gson/GsonBuilder;->fieldNamingPolicy:Lcom/google/gson/FieldNamingStrategy2;

    .line 126
    new-instance v0, Lcom/google/gson/internal/ParameterizedTypeHandlerMap;

    invoke-direct {v0}, Lcom/google/gson/internal/ParameterizedTypeHandlerMap;-><init>()V

    iput-object v0, p0, Lcom/google/gson/GsonBuilder;->instanceCreators:Lcom/google/gson/internal/ParameterizedTypeHandlerMap;

    .line 127
    new-instance v0, Lcom/google/gson/internal/ParameterizedTypeHandlerMap;

    invoke-direct {v0}, Lcom/google/gson/internal/ParameterizedTypeHandlerMap;-><init>()V

    iput-object v0, p0, Lcom/google/gson/GsonBuilder;->serializers:Lcom/google/gson/internal/ParameterizedTypeHandlerMap;

    .line 128
    new-instance v0, Lcom/google/gson/internal/ParameterizedTypeHandlerMap;

    invoke-direct {v0}, Lcom/google/gson/internal/ParameterizedTypeHandlerMap;-><init>()V

    iput-object v0, p0, Lcom/google/gson/GsonBuilder;->deserializers:Lcom/google/gson/internal/ParameterizedTypeHandlerMap;

    .line 129
    iput-boolean v2, p0, Lcom/google/gson/GsonBuilder;->serializeNulls:Z

    .line 130
    iput v4, p0, Lcom/google/gson/GsonBuilder;->dateStyle:I

    .line 131
    iput v4, p0, Lcom/google/gson/GsonBuilder;->timeStyle:I

    .line 132
    iput-boolean v2, p0, Lcom/google/gson/GsonBuilder;->serializeSpecialFloatingPointValues:Z

    .line 133
    iput-boolean v2, p0, Lcom/google/gson/GsonBuilder;->generateNonExecutableJson:Z

    .line 134
    return-void
.end method

.method private static addTypeAdaptersForDate(Ljava/lang/String;IILcom/google/gson/internal/ParameterizedTypeHandlerMap;Lcom/google/gson/internal/ParameterizedTypeHandlerMap;)V
    .locals 4
    .parameter "datePattern"
    .parameter "dateStyle"
    .parameter "timeStyle"
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "II",
            "Lcom/google/gson/internal/ParameterizedTypeHandlerMap",
            "<",
            "Lcom/google/gson/JsonSerializer",
            "<*>;>;",
            "Lcom/google/gson/internal/ParameterizedTypeHandlerMap",
            "<",
            "Lcom/google/gson/JsonDeserializer",
            "<*>;>;)V"
        }
    .end annotation

    .prologue
    .local p3, serializers:Lcom/google/gson/internal/ParameterizedTypeHandlerMap;,"Lcom/google/gson/internal/ParameterizedTypeHandlerMap<Lcom/google/gson/JsonSerializer<*>;>;"
    .local p4, deserializers:Lcom/google/gson/internal/ParameterizedTypeHandlerMap;,"Lcom/google/gson/internal/ParameterizedTypeHandlerMap<Lcom/google/gson/JsonDeserializer<*>;>;"
    const/4 v3, 0x2

    .line 693
    const/4 v0, 0x0

    .line 694
    .local v0, dateTypeAdapter:Lcom/google/gson/DefaultTypeAdapters$DefaultDateTypeAdapter;
    if-eqz p0, :cond_2

    const-string v1, ""

    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 695
    new-instance v0, Lcom/google/gson/DefaultTypeAdapters$DefaultDateTypeAdapter;

    .end local v0           #dateTypeAdapter:Lcom/google/gson/DefaultTypeAdapters$DefaultDateTypeAdapter;
    invoke-direct {v0, p0}, Lcom/google/gson/DefaultTypeAdapters$DefaultDateTypeAdapter;-><init>(Ljava/lang/String;)V

    .line 700
    .restart local v0       #dateTypeAdapter:Lcom/google/gson/DefaultTypeAdapters$DefaultDateTypeAdapter;
    :cond_0
    :goto_0
    if-eqz v0, :cond_1

    .line 701
    const-class v1, Ljava/util/Date;

    invoke-static {v1, p3, v0}, Lcom/google/gson/GsonBuilder;->registerIfAbsent(Ljava/lang/Class;Lcom/google/gson/internal/ParameterizedTypeHandlerMap;Ljava/lang/Object;)V

    .line 702
    const-class v1, Ljava/util/Date;

    invoke-static {v1, p4, v0}, Lcom/google/gson/GsonBuilder;->registerIfAbsent(Ljava/lang/Class;Lcom/google/gson/internal/ParameterizedTypeHandlerMap;Ljava/lang/Object;)V

    .line 703
    const-class v1, Ljava/sql/Timestamp;

    invoke-static {v1, p3, v0}, Lcom/google/gson/GsonBuilder;->registerIfAbsent(Ljava/lang/Class;Lcom/google/gson/internal/ParameterizedTypeHandlerMap;Ljava/lang/Object;)V

    .line 704
    const-class v1, Ljava/sql/Timestamp;

    invoke-static {v1, p4, v0}, Lcom/google/gson/GsonBuilder;->registerIfAbsent(Ljava/lang/Class;Lcom/google/gson/internal/ParameterizedTypeHandlerMap;Ljava/lang/Object;)V

    .line 705
    const-class v1, Ljava/sql/Date;

    invoke-static {v1, p3, v0}, Lcom/google/gson/GsonBuilder;->registerIfAbsent(Ljava/lang/Class;Lcom/google/gson/internal/ParameterizedTypeHandlerMap;Ljava/lang/Object;)V

    .line 706
    const-class v1, Ljava/sql/Date;

    invoke-static {v1, p4, v0}, Lcom/google/gson/GsonBuilder;->registerIfAbsent(Ljava/lang/Class;Lcom/google/gson/internal/ParameterizedTypeHandlerMap;Ljava/lang/Object;)V

    .line 708
    :cond_1
    return-void

    .line 696
    :cond_2
    if-eq p1, v3, :cond_0

    if-eq p2, v3, :cond_0

    .line 697
    new-instance v0, Lcom/google/gson/DefaultTypeAdapters$DefaultDateTypeAdapter;

    .end local v0           #dateTypeAdapter:Lcom/google/gson/DefaultTypeAdapters$DefaultDateTypeAdapter;
    invoke-direct {v0, p1, p2}, Lcom/google/gson/DefaultTypeAdapters$DefaultDateTypeAdapter;-><init>(II)V

    .restart local v0       #dateTypeAdapter:Lcom/google/gson/DefaultTypeAdapters$DefaultDateTypeAdapter;
    goto :goto_0
.end method

.method private registerDeserializer(Ljava/lang/reflect/Type;Lcom/google/gson/JsonDeserializer;Z)Lcom/google/gson/GsonBuilder;
    .locals 2
    .parameter "typeOfT"
    .parameter
    .parameter "isSystem"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/reflect/Type;",
            "Lcom/google/gson/JsonDeserializer",
            "<TT;>;Z)",
            "Lcom/google/gson/GsonBuilder;"
        }
    .end annotation

    .prologue
    .line 567
    .local p2, deserializer:Lcom/google/gson/JsonDeserializer;,"Lcom/google/gson/JsonDeserializer<TT;>;"
    iget-object v0, p0, Lcom/google/gson/GsonBuilder;->deserializers:Lcom/google/gson/internal/ParameterizedTypeHandlerMap;

    new-instance v1, Lcom/google/gson/JsonDeserializerExceptionWrapper;

    invoke-direct {v1, p2}, Lcom/google/gson/JsonDeserializerExceptionWrapper;-><init>(Lcom/google/gson/JsonDeserializer;)V

    invoke-virtual {v0, p1, v1, p3}, Lcom/google/gson/internal/ParameterizedTypeHandlerMap;->register(Ljava/lang/reflect/Type;Ljava/lang/Object;Z)V

    .line 568
    return-object p0
.end method

.method private registerDeserializerForTypeHierarchy(Ljava/lang/Class;Lcom/google/gson/JsonDeserializer;Z)Lcom/google/gson/GsonBuilder;
    .locals 2
    .parameter
    .parameter
    .parameter "isSystem"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class",
            "<*>;",
            "Lcom/google/gson/JsonDeserializer",
            "<TT;>;Z)",
            "Lcom/google/gson/GsonBuilder;"
        }
    .end annotation

    .prologue
    .line 622
    .local p1, classOfT:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    .local p2, deserializer:Lcom/google/gson/JsonDeserializer;,"Lcom/google/gson/JsonDeserializer<TT;>;"
    iget-object v0, p0, Lcom/google/gson/GsonBuilder;->deserializers:Lcom/google/gson/internal/ParameterizedTypeHandlerMap;

    new-instance v1, Lcom/google/gson/JsonDeserializerExceptionWrapper;

    invoke-direct {v1, p2}, Lcom/google/gson/JsonDeserializerExceptionWrapper;-><init>(Lcom/google/gson/JsonDeserializer;)V

    invoke-virtual {v0, p1, v1, p3}, Lcom/google/gson/internal/ParameterizedTypeHandlerMap;->registerForTypeHierarchy(Ljava/lang/Class;Ljava/lang/Object;Z)V

    .line 624
    return-object p0
.end method

.method private static registerIfAbsent(Ljava/lang/Class;Lcom/google/gson/internal/ParameterizedTypeHandlerMap;Ljava/lang/Object;)V
    .locals 1
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class",
            "<*>;",
            "Lcom/google/gson/internal/ParameterizedTypeHandlerMap",
            "<TT;>;TT;)V"
        }
    .end annotation

    .prologue
    .line 712
    .local p0, type:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    .local p1, adapters:Lcom/google/gson/internal/ParameterizedTypeHandlerMap;,"Lcom/google/gson/internal/ParameterizedTypeHandlerMap<TT;>;"
    .local p2, adapter:Ljava/lang/Object;,"TT;"
    invoke-virtual {p1, p0}, Lcom/google/gson/internal/ParameterizedTypeHandlerMap;->hasSpecificHandlerFor(Ljava/lang/reflect/Type;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 713
    const/4 v0, 0x0

    invoke-virtual {p1, p0, p2, v0}, Lcom/google/gson/internal/ParameterizedTypeHandlerMap;->register(Ljava/lang/reflect/Type;Ljava/lang/Object;Z)V

    .line 715
    :cond_0
    return-void
.end method

.method private registerInstanceCreator(Ljava/lang/reflect/Type;Lcom/google/gson/InstanceCreator;Z)Lcom/google/gson/GsonBuilder;
    .locals 1
    .parameter "typeOfT"
    .parameter
    .parameter "isSystem"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/reflect/Type;",
            "Lcom/google/gson/InstanceCreator",
            "<+TT;>;Z)",
            "Lcom/google/gson/GsonBuilder;"
        }
    .end annotation

    .prologue
    .line 535
    .local p2, instanceCreator:Lcom/google/gson/InstanceCreator;,"Lcom/google/gson/InstanceCreator<+TT;>;"
    iget-object v0, p0, Lcom/google/gson/GsonBuilder;->instanceCreators:Lcom/google/gson/internal/ParameterizedTypeHandlerMap;

    invoke-virtual {v0, p1, p2, p3}, Lcom/google/gson/internal/ParameterizedTypeHandlerMap;->register(Ljava/lang/reflect/Type;Ljava/lang/Object;Z)V

    .line 536
    return-object p0
.end method

.method private registerInstanceCreatorForTypeHierarchy(Ljava/lang/Class;Lcom/google/gson/InstanceCreator;Z)Lcom/google/gson/GsonBuilder;
    .locals 1
    .parameter
    .parameter
    .parameter "isSystem"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class",
            "<*>;",
            "Lcom/google/gson/InstanceCreator",
            "<+TT;>;Z)",
            "Lcom/google/gson/GsonBuilder;"
        }
    .end annotation

    .prologue
    .line 610
    .local p1, classOfT:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    .local p2, instanceCreator:Lcom/google/gson/InstanceCreator;,"Lcom/google/gson/InstanceCreator<+TT;>;"
    iget-object v0, p0, Lcom/google/gson/GsonBuilder;->instanceCreators:Lcom/google/gson/internal/ParameterizedTypeHandlerMap;

    invoke-virtual {v0, p1, p2, p3}, Lcom/google/gson/internal/ParameterizedTypeHandlerMap;->registerForTypeHierarchy(Ljava/lang/Class;Ljava/lang/Object;Z)V

    .line 611
    return-object p0
.end method

.method private registerSerializer(Ljava/lang/reflect/Type;Lcom/google/gson/JsonSerializer;Z)Lcom/google/gson/GsonBuilder;
    .locals 1
    .parameter "typeOfT"
    .parameter
    .parameter "isSystem"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/reflect/Type;",
            "Lcom/google/gson/JsonSerializer",
            "<TT;>;Z)",
            "Lcom/google/gson/GsonBuilder;"
        }
    .end annotation

    .prologue
    .line 551
    .local p2, serializer:Lcom/google/gson/JsonSerializer;,"Lcom/google/gson/JsonSerializer<TT;>;"
    iget-object v0, p0, Lcom/google/gson/GsonBuilder;->serializers:Lcom/google/gson/internal/ParameterizedTypeHandlerMap;

    invoke-virtual {v0, p1, p2, p3}, Lcom/google/gson/internal/ParameterizedTypeHandlerMap;->register(Ljava/lang/reflect/Type;Ljava/lang/Object;Z)V

    .line 552
    return-object p0
.end method

.method private registerSerializerForTypeHierarchy(Ljava/lang/Class;Lcom/google/gson/JsonSerializer;Z)Lcom/google/gson/GsonBuilder;
    .locals 1
    .parameter
    .parameter
    .parameter "isSystem"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class",
            "<*>;",
            "Lcom/google/gson/JsonSerializer",
            "<TT;>;Z)",
            "Lcom/google/gson/GsonBuilder;"
        }
    .end annotation

    .prologue
    .line 616
    .local p1, classOfT:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    .local p2, serializer:Lcom/google/gson/JsonSerializer;,"Lcom/google/gson/JsonSerializer<TT;>;"
    iget-object v0, p0, Lcom/google/gson/GsonBuilder;->serializers:Lcom/google/gson/internal/ParameterizedTypeHandlerMap;

    invoke-virtual {v0, p1, p2, p3}, Lcom/google/gson/internal/ParameterizedTypeHandlerMap;->registerForTypeHierarchy(Ljava/lang/Class;Ljava/lang/Object;Z)V

    .line 617
    return-object p0
.end method

.method private registerTypeAdapter(Ljava/lang/reflect/Type;Ljava/lang/Object;Z)Lcom/google/gson/GsonBuilder;
    .locals 3
    .parameter "type"
    .parameter "typeAdapter"
    .parameter "isSystem"

    .prologue
    .line 499
    instance-of v0, p2, Lcom/google/gson/JsonSerializer;

    if-nez v0, :cond_0

    instance-of v0, p2, Lcom/google/gson/JsonDeserializer;

    if-nez v0, :cond_0

    instance-of v0, p2, Lcom/google/gson/InstanceCreator;

    if-nez v0, :cond_0

    instance-of v0, p2, Lcom/google/gson/internal/bind/TypeAdapter$Factory;

    if-eqz v0, :cond_2

    :cond_0
    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Lcom/google/gson/internal/$Gson$Preconditions;->checkArgument(Z)V

    .line 503
    invoke-static {p1}, Lcom/google/gson/internal/Primitives;->isPrimitive(Ljava/lang/reflect/Type;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {p1}, Lcom/google/gson/internal/Primitives;->isWrapperType(Ljava/lang/reflect/Type;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 504
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Cannot register type adapters for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 499
    :cond_2
    const/4 v0, 0x0

    goto :goto_0

    .line 507
    :cond_3
    instance-of v0, p2, Lcom/google/gson/InstanceCreator;

    if-eqz v0, :cond_4

    move-object v0, p2

    .line 508
    check-cast v0, Lcom/google/gson/InstanceCreator;

    invoke-direct {p0, p1, v0, p3}, Lcom/google/gson/GsonBuilder;->registerInstanceCreator(Ljava/lang/reflect/Type;Lcom/google/gson/InstanceCreator;Z)Lcom/google/gson/GsonBuilder;

    .line 510
    :cond_4
    instance-of v0, p2, Lcom/google/gson/JsonSerializer;

    if-eqz v0, :cond_5

    move-object v0, p2

    .line 511
    check-cast v0, Lcom/google/gson/JsonSerializer;

    invoke-direct {p0, p1, v0, p3}, Lcom/google/gson/GsonBuilder;->registerSerializer(Ljava/lang/reflect/Type;Lcom/google/gson/JsonSerializer;Z)Lcom/google/gson/GsonBuilder;

    .line 513
    :cond_5
    instance-of v0, p2, Lcom/google/gson/JsonDeserializer;

    if-eqz v0, :cond_6

    move-object v0, p2

    .line 514
    check-cast v0, Lcom/google/gson/JsonDeserializer;

    invoke-direct {p0, p1, v0, p3}, Lcom/google/gson/GsonBuilder;->registerDeserializer(Ljava/lang/reflect/Type;Lcom/google/gson/JsonDeserializer;Z)Lcom/google/gson/GsonBuilder;

    .line 516
    :cond_6
    instance-of v0, p2, Lcom/google/gson/internal/bind/TypeAdapter$Factory;

    if-eqz v0, :cond_7

    .line 517
    iget-object v0, p0, Lcom/google/gson/GsonBuilder;->typeAdapterFactories:Ljava/util/List;

    check-cast p2, Lcom/google/gson/internal/bind/TypeAdapter$Factory;

    .end local p2
    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 519
    :cond_7
    return-object p0
.end method

.method private registerTypeHierarchyAdapter(Ljava/lang/Class;Ljava/lang/Object;Z)Lcom/google/gson/GsonBuilder;
    .locals 1
    .parameter
    .parameter "typeAdapter"
    .parameter "isSystem"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/Object;",
            "Z)",
            "Lcom/google/gson/GsonBuilder;"
        }
    .end annotation

    .prologue
    .line 594
    .local p1, baseType:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    instance-of v0, p2, Lcom/google/gson/JsonSerializer;

    if-nez v0, :cond_0

    instance-of v0, p2, Lcom/google/gson/JsonDeserializer;

    if-nez v0, :cond_0

    instance-of v0, p2, Lcom/google/gson/InstanceCreator;

    if-eqz v0, :cond_4

    :cond_0
    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Lcom/google/gson/internal/$Gson$Preconditions;->checkArgument(Z)V

    .line 596
    instance-of v0, p2, Lcom/google/gson/InstanceCreator;

    if-eqz v0, :cond_1

    move-object v0, p2

    .line 597
    check-cast v0, Lcom/google/gson/InstanceCreator;

    invoke-direct {p0, p1, v0, p3}, Lcom/google/gson/GsonBuilder;->registerInstanceCreatorForTypeHierarchy(Ljava/lang/Class;Lcom/google/gson/InstanceCreator;Z)Lcom/google/gson/GsonBuilder;

    .line 599
    :cond_1
    instance-of v0, p2, Lcom/google/gson/JsonSerializer;

    if-eqz v0, :cond_2

    move-object v0, p2

    .line 600
    check-cast v0, Lcom/google/gson/JsonSerializer;

    invoke-direct {p0, p1, v0, p3}, Lcom/google/gson/GsonBuilder;->registerSerializerForTypeHierarchy(Ljava/lang/Class;Lcom/google/gson/JsonSerializer;Z)Lcom/google/gson/GsonBuilder;

    .line 602
    :cond_2
    instance-of v0, p2, Lcom/google/gson/JsonDeserializer;

    if-eqz v0, :cond_3

    .line 603
    check-cast p2, Lcom/google/gson/JsonDeserializer;

    .end local p2
    invoke-direct {p0, p1, p2, p3}, Lcom/google/gson/GsonBuilder;->registerDeserializerForTypeHierarchy(Ljava/lang/Class;Lcom/google/gson/JsonDeserializer;Z)Lcom/google/gson/GsonBuilder;

    .line 605
    :cond_3
    return-object p0

    .line 594
    .restart local p2
    :cond_4
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public addDeserializationExclusionStrategy(Lcom/google/gson/ExclusionStrategy;)Lcom/google/gson/GsonBuilder;
    .locals 1
    .parameter "strategy"

    .prologue
    .line 390
    iget-object v0, p0, Lcom/google/gson/GsonBuilder;->deserializeExclusionStrategies:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 391
    return-object p0
.end method

.method public addSerializationExclusionStrategy(Lcom/google/gson/ExclusionStrategy;)Lcom/google/gson/GsonBuilder;
    .locals 1
    .parameter "strategy"

    .prologue
    .line 373
    iget-object v0, p0, Lcom/google/gson/GsonBuilder;->serializeExclusionStrategies:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 374
    return-object p0
.end method

.method public create()Lcom/google/gson/Gson;
    .locals 20

    .prologue
    .line 659
    new-instance v17, Ljava/util/LinkedList;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/gson/GsonBuilder;->deserializeExclusionStrategies:Ljava/util/Set;

    move-object/from16 v0, v17

    invoke-direct {v0, v2}, Ljava/util/LinkedList;-><init>(Ljava/util/Collection;)V

    .line 661
    .local v17, deserializationStrategies:Ljava/util/List;,"Ljava/util/List<Lcom/google/gson/ExclusionStrategy;>;"
    new-instance v18, Ljava/util/LinkedList;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/gson/GsonBuilder;->serializeExclusionStrategies:Ljava/util/Set;

    move-object/from16 v0, v18

    invoke-direct {v0, v2}, Ljava/util/LinkedList;-><init>(Ljava/util/Collection;)V

    .line 663
    .local v18, serializationStrategies:Ljava/util/List;,"Ljava/util/List<Lcom/google/gson/ExclusionStrategy;>;"
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/gson/GsonBuilder;->modifierBasedExclusionStrategy:Lcom/google/gson/ModifierBasedExclusionStrategy;

    move-object/from16 v0, v17

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 664
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/gson/GsonBuilder;->modifierBasedExclusionStrategy:Lcom/google/gson/ModifierBasedExclusionStrategy;

    move-object/from16 v0, v18

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 666
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/google/gson/GsonBuilder;->serializeInnerClasses:Z

    if-nez v2, :cond_0

    .line 667
    sget-object v2, Lcom/google/gson/GsonBuilder;->innerClassExclusionStrategy:Lcom/google/gson/InnerClassExclusionStrategy;

    move-object/from16 v0, v17

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 668
    sget-object v2, Lcom/google/gson/GsonBuilder;->innerClassExclusionStrategy:Lcom/google/gson/InnerClassExclusionStrategy;

    move-object/from16 v0, v18

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 670
    :cond_0
    move-object/from16 v0, p0

    iget-wide v2, v0, Lcom/google/gson/GsonBuilder;->ignoreVersionsAfter:D

    const-wide/high16 v4, -0x4010

    cmpl-double v2, v2, v4

    if-eqz v2, :cond_1

    .line 671
    new-instance v19, Lcom/google/gson/VersionExclusionStrategy;

    move-object/from16 v0, p0

    iget-wide v2, v0, Lcom/google/gson/GsonBuilder;->ignoreVersionsAfter:D

    move-object/from16 v0, v19

    invoke-direct {v0, v2, v3}, Lcom/google/gson/VersionExclusionStrategy;-><init>(D)V

    .line 673
    .local v19, versionExclusionStrategy:Lcom/google/gson/VersionExclusionStrategy;
    move-object/from16 v0, v17

    move-object/from16 v1, v19

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 674
    invoke-interface/range {v18 .. v19}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 676
    .end local v19           #versionExclusionStrategy:Lcom/google/gson/VersionExclusionStrategy;
    :cond_1
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/google/gson/GsonBuilder;->excludeFieldsWithoutExposeAnnotation:Z

    if-eqz v2, :cond_2

    .line 677
    sget-object v2, Lcom/google/gson/GsonBuilder;->exposeAnnotationDeserializationExclusionStrategy:Lcom/google/gson/ExposeAnnotationDeserializationExclusionStrategy;

    move-object/from16 v0, v17

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 678
    sget-object v2, Lcom/google/gson/GsonBuilder;->exposeAnnotationSerializationExclusionStrategy:Lcom/google/gson/ExposeAnnotationSerializationExclusionStrategy;

    move-object/from16 v0, v18

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 680
    :cond_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/gson/GsonBuilder;->datePattern:Ljava/lang/String;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/google/gson/GsonBuilder;->dateStyle:I

    move-object/from16 v0, p0

    iget v4, v0, Lcom/google/gson/GsonBuilder;->timeStyle:I

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/google/gson/GsonBuilder;->serializers:Lcom/google/gson/internal/ParameterizedTypeHandlerMap;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/google/gson/GsonBuilder;->deserializers:Lcom/google/gson/internal/ParameterizedTypeHandlerMap;

    invoke-static {v2, v3, v4, v5, v6}, Lcom/google/gson/GsonBuilder;->addTypeAdaptersForDate(Ljava/lang/String;IILcom/google/gson/internal/ParameterizedTypeHandlerMap;Lcom/google/gson/internal/ParameterizedTypeHandlerMap;)V

    .line 682
    new-instance v2, Lcom/google/gson/Gson;

    new-instance v3, Lcom/google/gson/DisjunctionExclusionStrategy;

    move-object/from16 v0, v17

    invoke-direct {v3, v0}, Lcom/google/gson/DisjunctionExclusionStrategy;-><init>(Ljava/util/Collection;)V

    new-instance v4, Lcom/google/gson/DisjunctionExclusionStrategy;

    move-object/from16 v0, v18

    invoke-direct {v4, v0}, Lcom/google/gson/DisjunctionExclusionStrategy;-><init>(Ljava/util/Collection;)V

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/google/gson/GsonBuilder;->fieldNamingPolicy:Lcom/google/gson/FieldNamingStrategy2;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/google/gson/GsonBuilder;->instanceCreators:Lcom/google/gson/internal/ParameterizedTypeHandlerMap;

    invoke-virtual {v6}, Lcom/google/gson/internal/ParameterizedTypeHandlerMap;->copyOf()Lcom/google/gson/internal/ParameterizedTypeHandlerMap;

    move-result-object v6

    invoke-virtual {v6}, Lcom/google/gson/internal/ParameterizedTypeHandlerMap;->makeUnmodifiable()Lcom/google/gson/internal/ParameterizedTypeHandlerMap;

    move-result-object v6

    move-object/from16 v0, p0

    iget-boolean v7, v0, Lcom/google/gson/GsonBuilder;->serializeNulls:Z

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/google/gson/GsonBuilder;->serializers:Lcom/google/gson/internal/ParameterizedTypeHandlerMap;

    invoke-virtual {v8}, Lcom/google/gson/internal/ParameterizedTypeHandlerMap;->copyOf()Lcom/google/gson/internal/ParameterizedTypeHandlerMap;

    move-result-object v8

    invoke-virtual {v8}, Lcom/google/gson/internal/ParameterizedTypeHandlerMap;->makeUnmodifiable()Lcom/google/gson/internal/ParameterizedTypeHandlerMap;

    move-result-object v8

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/google/gson/GsonBuilder;->deserializers:Lcom/google/gson/internal/ParameterizedTypeHandlerMap;

    invoke-virtual {v9}, Lcom/google/gson/internal/ParameterizedTypeHandlerMap;->copyOf()Lcom/google/gson/internal/ParameterizedTypeHandlerMap;

    move-result-object v9

    invoke-virtual {v9}, Lcom/google/gson/internal/ParameterizedTypeHandlerMap;->makeUnmodifiable()Lcom/google/gson/internal/ParameterizedTypeHandlerMap;

    move-result-object v9

    move-object/from16 v0, p0

    iget-boolean v10, v0, Lcom/google/gson/GsonBuilder;->complexMapKeySerialization:Z

    move-object/from16 v0, p0

    iget-boolean v11, v0, Lcom/google/gson/GsonBuilder;->generateNonExecutableJson:Z

    move-object/from16 v0, p0

    iget-boolean v12, v0, Lcom/google/gson/GsonBuilder;->escapeHtmlChars:Z

    move-object/from16 v0, p0

    iget-boolean v13, v0, Lcom/google/gson/GsonBuilder;->prettyPrinting:Z

    move-object/from16 v0, p0

    iget-boolean v14, v0, Lcom/google/gson/GsonBuilder;->serializeSpecialFloatingPointValues:Z

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/google/gson/GsonBuilder;->longSerializationPolicy:Lcom/google/gson/LongSerializationPolicy;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/gson/GsonBuilder;->typeAdapterFactories:Ljava/util/List;

    move-object/from16 v16, v0

    invoke-direct/range {v2 .. v16}, Lcom/google/gson/Gson;-><init>(Lcom/google/gson/ExclusionStrategy;Lcom/google/gson/ExclusionStrategy;Lcom/google/gson/FieldNamingStrategy2;Lcom/google/gson/internal/ParameterizedTypeHandlerMap;ZLcom/google/gson/internal/ParameterizedTypeHandlerMap;Lcom/google/gson/internal/ParameterizedTypeHandlerMap;ZZZZZLcom/google/gson/LongSerializationPolicy;Ljava/util/List;)V

    return-object v2
.end method

.method public disableHtmlEscaping()Lcom/google/gson/GsonBuilder;
    .locals 1

    .prologue
    .line 413
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/gson/GsonBuilder;->escapeHtmlChars:Z

    .line 414
    return-object p0
.end method

.method public disableInnerClassSerialization()Lcom/google/gson/GsonBuilder;
    .locals 1

    .prologue
    .line 289
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/gson/GsonBuilder;->serializeInnerClasses:Z

    .line 290
    return-object p0
.end method

.method public enableComplexMapKeySerialization()Lcom/google/gson/GsonBuilder;
    .locals 1

    .prologue
    .line 278
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/gson/GsonBuilder;->complexMapKeySerialization:Z

    .line 279
    return-object p0
.end method

.method public varargs excludeFieldsWithModifiers([I)Lcom/google/gson/GsonBuilder;
    .locals 1
    .parameter "modifiers"

    .prologue
    .line 160
    new-instance v0, Lcom/google/gson/ModifierBasedExclusionStrategy;

    invoke-direct {v0, p1}, Lcom/google/gson/ModifierBasedExclusionStrategy;-><init>([I)V

    iput-object v0, p0, Lcom/google/gson/GsonBuilder;->modifierBasedExclusionStrategy:Lcom/google/gson/ModifierBasedExclusionStrategy;

    .line 161
    return-object p0
.end method

.method public excludeFieldsWithoutExposeAnnotation()Lcom/google/gson/GsonBuilder;
    .locals 1

    .prologue
    .line 185
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/gson/GsonBuilder;->excludeFieldsWithoutExposeAnnotation:Z

    .line 186
    return-object p0
.end method

.method public generateNonExecutableJson()Lcom/google/gson/GsonBuilder;
    .locals 1

    .prologue
    .line 174
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/gson/GsonBuilder;->generateNonExecutableJson:Z

    .line 175
    return-object p0
.end method

.method public registerTypeAdapter(Ljava/lang/reflect/Type;Ljava/lang/Object;)Lcom/google/gson/GsonBuilder;
    .locals 1
    .parameter "type"
    .parameter "typeAdapter"

    .prologue
    .line 495
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/google/gson/GsonBuilder;->registerTypeAdapter(Ljava/lang/reflect/Type;Ljava/lang/Object;Z)Lcom/google/gson/GsonBuilder;

    move-result-object v0

    return-object v0
.end method

.method public registerTypeHierarchyAdapter(Ljava/lang/Class;Ljava/lang/Object;)Lcom/google/gson/GsonBuilder;
    .locals 1
    .parameter
    .parameter "typeAdapter"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/Object;",
            ")",
            "Lcom/google/gson/GsonBuilder;"
        }
    .end annotation

    .prologue
    .line 589
    .local p1, baseType:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/google/gson/GsonBuilder;->registerTypeHierarchyAdapter(Ljava/lang/Class;Ljava/lang/Object;Z)Lcom/google/gson/GsonBuilder;

    move-result-object v0

    return-object v0
.end method

.method public serializeNulls()Lcom/google/gson/GsonBuilder;
    .locals 1

    .prologue
    .line 197
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/gson/GsonBuilder;->serializeNulls:Z

    .line 198
    return-object p0
.end method

.method public serializeSpecialFloatingPointValues()Lcom/google/gson/GsonBuilder;
    .locals 1

    .prologue
    .line 648
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/gson/GsonBuilder;->serializeSpecialFloatingPointValues:Z

    .line 649
    return-object p0
.end method

.method public setDateFormat(I)Lcom/google/gson/GsonBuilder;
    .locals 1
    .parameter "style"

    .prologue
    .line 454
    iput p1, p0, Lcom/google/gson/GsonBuilder;->dateStyle:I

    .line 455
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/gson/GsonBuilder;->datePattern:Ljava/lang/String;

    .line 456
    return-object p0
.end method

.method public setDateFormat(II)Lcom/google/gson/GsonBuilder;
    .locals 1
    .parameter "dateStyle"
    .parameter "timeStyle"

    .prologue
    .line 475
    iput p1, p0, Lcom/google/gson/GsonBuilder;->dateStyle:I

    .line 476
    iput p2, p0, Lcom/google/gson/GsonBuilder;->timeStyle:I

    .line 477
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/gson/GsonBuilder;->datePattern:Ljava/lang/String;

    .line 478
    return-object p0
.end method

.method public setDateFormat(Ljava/lang/String;)Lcom/google/gson/GsonBuilder;
    .locals 0
    .parameter "pattern"

    .prologue
    .line 435
    iput-object p1, p0, Lcom/google/gson/GsonBuilder;->datePattern:Ljava/lang/String;

    .line 436
    return-object p0
.end method

.method public varargs setExclusionStrategies([Lcom/google/gson/ExclusionStrategy;)Lcom/google/gson/GsonBuilder;
    .locals 2
    .parameter "strategies"

    .prologue
    .line 354
    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    .line 355
    .local v0, strategyList:Ljava/util/List;,"Ljava/util/List<Lcom/google/gson/ExclusionStrategy;>;"
    iget-object v1, p0, Lcom/google/gson/GsonBuilder;->serializeExclusionStrategies:Ljava/util/Set;

    invoke-interface {v1, v0}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 356
    iget-object v1, p0, Lcom/google/gson/GsonBuilder;->deserializeExclusionStrategies:Ljava/util/Set;

    invoke-interface {v1, v0}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 357
    return-object p0
.end method

.method public setFieldNamingPolicy(Lcom/google/gson/FieldNamingPolicy;)Lcom/google/gson/GsonBuilder;
    .locals 1
    .parameter "namingConvention"

    .prologue
    .line 315
    invoke-virtual {p1}, Lcom/google/gson/FieldNamingPolicy;->getFieldNamingPolicy()Lcom/google/gson/FieldNamingStrategy2;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/gson/GsonBuilder;->setFieldNamingStrategy(Lcom/google/gson/FieldNamingStrategy2;)Lcom/google/gson/GsonBuilder;

    move-result-object v0

    return-object v0
.end method

.method setFieldNamingStrategy(Lcom/google/gson/FieldNamingStrategy2;)Lcom/google/gson/GsonBuilder;
    .locals 1
    .parameter "fieldNamingStrategy"

    .prologue
    .line 338
    new-instance v0, Lcom/google/gson/SerializedNameAnnotationInterceptingNamingPolicy;

    invoke-direct {v0, p1}, Lcom/google/gson/SerializedNameAnnotationInterceptingNamingPolicy;-><init>(Lcom/google/gson/FieldNamingStrategy2;)V

    iput-object v0, p0, Lcom/google/gson/GsonBuilder;->fieldNamingPolicy:Lcom/google/gson/FieldNamingStrategy2;

    .line 340
    return-object p0
.end method

.method public setFieldNamingStrategy(Lcom/google/gson/FieldNamingStrategy;)Lcom/google/gson/GsonBuilder;
    .locals 1
    .parameter "fieldNamingStrategy"

    .prologue
    .line 327
    new-instance v0, Lcom/google/gson/FieldNamingStrategy2Adapter;

    invoke-direct {v0, p1}, Lcom/google/gson/FieldNamingStrategy2Adapter;-><init>(Lcom/google/gson/FieldNamingStrategy;)V

    invoke-virtual {p0, v0}, Lcom/google/gson/GsonBuilder;->setFieldNamingStrategy(Lcom/google/gson/FieldNamingStrategy2;)Lcom/google/gson/GsonBuilder;

    move-result-object v0

    return-object v0
.end method

.method public setLongSerializationPolicy(Lcom/google/gson/LongSerializationPolicy;)Lcom/google/gson/GsonBuilder;
    .locals 0
    .parameter "serializationPolicy"

    .prologue
    .line 302
    iput-object p1, p0, Lcom/google/gson/GsonBuilder;->longSerializationPolicy:Lcom/google/gson/LongSerializationPolicy;

    .line 303
    return-object p0
.end method

.method public setPrettyPrinting()Lcom/google/gson/GsonBuilder;
    .locals 1

    .prologue
    .line 401
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/gson/GsonBuilder;->prettyPrinting:Z

    .line 402
    return-object p0
.end method

.method public setVersion(D)Lcom/google/gson/GsonBuilder;
    .locals 0
    .parameter "ignoreVersionsAfter"

    .prologue
    .line 144
    iput-wide p1, p0, Lcom/google/gson/GsonBuilder;->ignoreVersionsAfter:D

    .line 145
    return-object p0
.end method
