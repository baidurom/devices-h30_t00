.class Lcom/google/gson/GsonToMiniGsonTypeAdapterFactory$1;
.super Ljava/lang/Object;
.source "GsonToMiniGsonTypeAdapterFactory.java"

# interfaces
.implements Lcom/google/gson/JsonDeserializationContext;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/gson/GsonToMiniGsonTypeAdapterFactory;-><init>(Lcom/google/gson/Gson;Lcom/google/gson/internal/ParameterizedTypeHandlerMap;Lcom/google/gson/internal/ParameterizedTypeHandlerMap;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/gson/GsonToMiniGsonTypeAdapterFactory;

.field final synthetic val$gson:Lcom/google/gson/Gson;


# direct methods
.method constructor <init>(Lcom/google/gson/GsonToMiniGsonTypeAdapterFactory;Lcom/google/gson/Gson;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 41
    iput-object p1, p0, Lcom/google/gson/GsonToMiniGsonTypeAdapterFactory$1;->this$0:Lcom/google/gson/GsonToMiniGsonTypeAdapterFactory;

    iput-object p2, p0, Lcom/google/gson/GsonToMiniGsonTypeAdapterFactory$1;->val$gson:Lcom/google/gson/Gson;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public deserialize(Lcom/google/gson/JsonElement;Ljava/lang/reflect/Type;)Ljava/lang/Object;
    .locals 1
    .parameter "json"
    .parameter "typeOfT"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/gson/JsonElement;",
            "Ljava/lang/reflect/Type;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/gson/JsonParseException;
        }
    .end annotation

    .prologue
    .line 42
    iget-object v0, p0, Lcom/google/gson/GsonToMiniGsonTypeAdapterFactory$1;->val$gson:Lcom/google/gson/Gson;

    invoke-virtual {v0, p1, p2}, Lcom/google/gson/Gson;->fromJson(Lcom/google/gson/JsonElement;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
