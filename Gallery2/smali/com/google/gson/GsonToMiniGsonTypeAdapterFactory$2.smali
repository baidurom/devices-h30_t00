.class Lcom/google/gson/GsonToMiniGsonTypeAdapterFactory$2;
.super Ljava/lang/Object;
.source "GsonToMiniGsonTypeAdapterFactory.java"

# interfaces
.implements Lcom/google/gson/JsonSerializationContext;


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
    .line 50
    iput-object p1, p0, Lcom/google/gson/GsonToMiniGsonTypeAdapterFactory$2;->this$0:Lcom/google/gson/GsonToMiniGsonTypeAdapterFactory;

    iput-object p2, p0, Lcom/google/gson/GsonToMiniGsonTypeAdapterFactory$2;->val$gson:Lcom/google/gson/Gson;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public serialize(Ljava/lang/Object;)Lcom/google/gson/JsonElement;
    .locals 1
    .parameter "src"

    .prologue
    .line 48
    iget-object v0, p0, Lcom/google/gson/GsonToMiniGsonTypeAdapterFactory$2;->val$gson:Lcom/google/gson/Gson;

    invoke-virtual {v0, p1}, Lcom/google/gson/Gson;->toJsonTree(Ljava/lang/Object;)Lcom/google/gson/JsonElement;

    move-result-object v0

    return-object v0
.end method

.method public serialize(Ljava/lang/Object;Ljava/lang/reflect/Type;)Lcom/google/gson/JsonElement;
    .locals 1
    .parameter "src"
    .parameter "typeOfSrc"

    .prologue
    .line 51
    iget-object v0, p0, Lcom/google/gson/GsonToMiniGsonTypeAdapterFactory$2;->val$gson:Lcom/google/gson/Gson;

    invoke-virtual {v0, p1, p2}, Lcom/google/gson/Gson;->toJsonTree(Ljava/lang/Object;Ljava/lang/reflect/Type;)Lcom/google/gson/JsonElement;

    move-result-object v0

    return-object v0
.end method
