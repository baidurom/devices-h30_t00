.class Lcom/android/gallery3d/ui/PasteExecutor$BaseSetLoader;
.super Ljava/lang/Object;
.source "PasteExecutor.java"

# interfaces
.implements Lcom/android/gallery3d/util/ThreadPool$Job;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/gallery3d/ui/PasteExecutor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "BaseSetLoader"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/android/gallery3d/util/ThreadPool$Job",
        "<",
        "Ljava/util/ArrayList",
        "<",
        "Lcom/android/gallery3d/data/MediaSet;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/gallery3d/ui/PasteExecutor;


# direct methods
.method private constructor <init>(Lcom/android/gallery3d/ui/PasteExecutor;)V
    .locals 0
    .parameter

    .prologue
    .line 398
    iput-object p1, p0, Lcom/android/gallery3d/ui/PasteExecutor$BaseSetLoader;->this$0:Lcom/android/gallery3d/ui/PasteExecutor;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/gallery3d/ui/PasteExecutor;Lcom/android/gallery3d/ui/PasteExecutor$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 398
    invoke-direct {p0, p1}, Lcom/android/gallery3d/ui/PasteExecutor$BaseSetLoader;-><init>(Lcom/android/gallery3d/ui/PasteExecutor;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic run(Lcom/android/gallery3d/util/ThreadPool$JobContext;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 398
    invoke-virtual {p0, p1}, Lcom/android/gallery3d/ui/PasteExecutor$BaseSetLoader;->run(Lcom/android/gallery3d/util/ThreadPool$JobContext;)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method public run(Lcom/android/gallery3d/util/ThreadPool$JobContext;)Ljava/util/ArrayList;
    .locals 2
    .parameter "jc"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/gallery3d/util/ThreadPool$JobContext;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/gallery3d/data/MediaSet;",
            ">;"
        }
    .end annotation

    .prologue
    .line 400
    iget-object v1, p0, Lcom/android/gallery3d/ui/PasteExecutor$BaseSetLoader;->this$0:Lcom/android/gallery3d/ui/PasteExecutor;

    #calls: Lcom/android/gallery3d/ui/PasteExecutor;->getDestinationList(Lcom/android/gallery3d/util/ThreadPool$JobContext;)Ljava/util/ArrayList;
    invoke-static {v1, p1}, Lcom/android/gallery3d/ui/PasteExecutor;->access$900(Lcom/android/gallery3d/ui/PasteExecutor;Lcom/android/gallery3d/util/ThreadPool$JobContext;)Ljava/util/ArrayList;

    move-result-object v0

    .line 401
    .local v0, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/gallery3d/data/MediaSet;>;"
    iget-object v1, p0, Lcom/android/gallery3d/ui/PasteExecutor$BaseSetLoader;->this$0:Lcom/android/gallery3d/ui/PasteExecutor;

    #calls: Lcom/android/gallery3d/ui/PasteExecutor;->sortDestinationList(Ljava/util/ArrayList;)V
    invoke-static {v1, v0}, Lcom/android/gallery3d/ui/PasteExecutor;->access$1000(Lcom/android/gallery3d/ui/PasteExecutor;Ljava/util/ArrayList;)V

    .line 402
    return-object v0
.end method
