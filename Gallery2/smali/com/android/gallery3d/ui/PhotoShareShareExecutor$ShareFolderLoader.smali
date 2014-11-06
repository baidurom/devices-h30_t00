.class Lcom/android/gallery3d/ui/PhotoShareShareExecutor$ShareFolderLoader;
.super Ljava/lang/Object;
.source "PhotoShareShareExecutor.java"

# interfaces
.implements Lcom/android/gallery3d/util/ThreadPool$Job;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/gallery3d/ui/PhotoShareShareExecutor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ShareFolderLoader"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/android/gallery3d/util/ThreadPool$Job",
        "<",
        "Ljava/util/ArrayList",
        "<",
        "Lcom/huawei/hicloud/photosharesdk/api/vo/ShareFolder;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/gallery3d/ui/PhotoShareShareExecutor;


# direct methods
.method private constructor <init>(Lcom/android/gallery3d/ui/PhotoShareShareExecutor;)V
    .locals 0
    .parameter

    .prologue
    .line 239
    iput-object p1, p0, Lcom/android/gallery3d/ui/PhotoShareShareExecutor$ShareFolderLoader;->this$0:Lcom/android/gallery3d/ui/PhotoShareShareExecutor;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/gallery3d/ui/PhotoShareShareExecutor;Lcom/android/gallery3d/ui/PhotoShareShareExecutor$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 239
    invoke-direct {p0, p1}, Lcom/android/gallery3d/ui/PhotoShareShareExecutor$ShareFolderLoader;-><init>(Lcom/android/gallery3d/ui/PhotoShareShareExecutor;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic run(Lcom/android/gallery3d/util/ThreadPool$JobContext;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 239
    invoke-virtual {p0, p1}, Lcom/android/gallery3d/ui/PhotoShareShareExecutor$ShareFolderLoader;->run(Lcom/android/gallery3d/util/ThreadPool$JobContext;)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method public run(Lcom/android/gallery3d/util/ThreadPool$JobContext;)Ljava/util/ArrayList;
    .locals 3
    .parameter "jc"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/gallery3d/util/ThreadPool$JobContext;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/huawei/hicloud/photosharesdk/api/vo/ShareFolder;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 241
    invoke-interface {p1}, Lcom/android/gallery3d/util/ThreadPool$JobContext;->isCancelled()Z

    move-result v2

    if-eqz v2, :cond_0

    move-object v0, v1

    .line 249
    :goto_0
    return-object v0

    .line 244
    :cond_0
    iget-object v2, p0, Lcom/android/gallery3d/ui/PhotoShareShareExecutor$ShareFolderLoader;->this$0:Lcom/android/gallery3d/ui/PhotoShareShareExecutor;

    #calls: Lcom/android/gallery3d/ui/PhotoShareShareExecutor;->getDestinationList(Lcom/android/gallery3d/util/ThreadPool$JobContext;)Ljava/util/ArrayList;
    invoke-static {v2, p1}, Lcom/android/gallery3d/ui/PhotoShareShareExecutor;->access$800(Lcom/android/gallery3d/ui/PhotoShareShareExecutor;Lcom/android/gallery3d/util/ThreadPool$JobContext;)Ljava/util/ArrayList;

    move-result-object v0

    .line 245
    .local v0, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/huawei/hicloud/photosharesdk/api/vo/ShareFolder;>;"
    invoke-interface {p1}, Lcom/android/gallery3d/util/ThreadPool$JobContext;->isCancelled()Z

    move-result v2

    if-eqz v2, :cond_1

    move-object v0, v1

    .line 246
    goto :goto_0

    .line 248
    :cond_1
    iget-object v1, p0, Lcom/android/gallery3d/ui/PhotoShareShareExecutor$ShareFolderLoader;->this$0:Lcom/android/gallery3d/ui/PhotoShareShareExecutor;

    #calls: Lcom/android/gallery3d/ui/PhotoShareShareExecutor;->sortDestinationList(Ljava/util/ArrayList;)V
    invoke-static {v1, v0}, Lcom/android/gallery3d/ui/PhotoShareShareExecutor;->access$900(Lcom/android/gallery3d/ui/PhotoShareShareExecutor;Ljava/util/ArrayList;)V

    goto :goto_0
.end method
