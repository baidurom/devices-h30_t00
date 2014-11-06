.class Lcom/huawei/android/multiscreen/dlna/sdk/xml/SaxHandler/Res;
.super Ljava/lang/Object;
.source "ItemHandler.java"


# instance fields
.field public attributes:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public tagName:Ljava/lang/String;

.field public tagText:Ljava/lang/String;


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    .line 772
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 782
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/huawei/android/multiscreen/dlna/sdk/xml/SaxHandler/Res;->attributes:Ljava/util/Map;

    .line 772
    return-void
.end method
