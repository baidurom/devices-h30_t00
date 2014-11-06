.class Lcom/android/gallery3d/data/DmsVideo$BitmapJob;
.super Ljava/lang/Object;
.source "DmsVideo.java"

# interfaces
.implements Lcom/android/gallery3d/util/ThreadPool$Job;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/gallery3d/data/DmsVideo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "BitmapJob"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/android/gallery3d/util/ThreadPool$Job",
        "<",
        "Landroid/graphics/Bitmap;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/gallery3d/data/DmsVideo;


# direct methods
.method private constructor <init>(Lcom/android/gallery3d/data/DmsVideo;)V
    .locals 0
    .parameter

    .prologue
    .line 64
    iput-object p1, p0, Lcom/android/gallery3d/data/DmsVideo$BitmapJob;->this$0:Lcom/android/gallery3d/data/DmsVideo;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/gallery3d/data/DmsVideo;Lcom/android/gallery3d/data/DmsVideo$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 64
    invoke-direct {p0, p1}, Lcom/android/gallery3d/data/DmsVideo$BitmapJob;-><init>(Lcom/android/gallery3d/data/DmsVideo;)V

    return-void
.end method


# virtual methods
.method public run(Lcom/android/gallery3d/util/ThreadPool$JobContext;)Landroid/graphics/Bitmap;
    .locals 5
    .parameter "jc"

    .prologue
    .line 68
    const/4 v0, 0x0

    .line 69
    .local v0, bitmap:Landroid/graphics/Bitmap;
    iget-object v1, p0, Lcom/android/gallery3d/data/DmsVideo$BitmapJob;->this$0:Lcom/android/gallery3d/data/DmsVideo;

    #getter for: Lcom/android/gallery3d/data/DmsVideo;->mFilePath:Ljava/lang/String;
    invoke-static {v1}, Lcom/android/gallery3d/data/DmsVideo;->access$100(Lcom/android/gallery3d/data/DmsVideo;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_1

    .line 70
    const-string v1, "AirSharing_DmsVideo"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "begin["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]>>>"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/gallery3d/data/DmsVideo$BitmapJob;->this$0:Lcom/android/gallery3d/data/DmsVideo;

    #getter for: Lcom/android/gallery3d/data/DmsVideo;->mUri:Ljava/lang/String;
    invoke-static {v3}, Lcom/android/gallery3d/data/DmsVideo;->access$200(Lcom/android/gallery3d/data/DmsVideo;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/gallery3d/ui/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 71
    const/4 v1, 0x2

    invoke-interface {p1, v1}, Lcom/android/gallery3d/util/ThreadPool$JobContext;->setMode(I)Z

    .line 72
    iget-object v1, p0, Lcom/android/gallery3d/data/DmsVideo$BitmapJob;->this$0:Lcom/android/gallery3d/data/DmsVideo;

    #getter for: Lcom/android/gallery3d/data/DmsVideo;->mUri:Ljava/lang/String;
    invoke-static {v1}, Lcom/android/gallery3d/data/DmsVideo;->access$200(Lcom/android/gallery3d/data/DmsVideo;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Lcom/huawei/gallery3d/multiscreen/MultiScreenUtils;->getDmsThumbnail(Lcom/android/gallery3d/util/ThreadPool$JobContext;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 73
    const/4 v1, 0x1

    invoke-interface {p1, v1}, Lcom/android/gallery3d/util/ThreadPool$JobContext;->setMode(I)Z

    .line 74
    if-eqz v0, :cond_0

    .line 75
    const-string v1, "AirSharing_DmsVideo"

    const-string v2, "pending Save bitmap to Cache"

    invoke-static {v1, v2}, Lcom/android/gallery3d/ui/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 76
    iget-object v1, p0, Lcom/android/gallery3d/data/DmsVideo$BitmapJob;->this$0:Lcom/android/gallery3d/data/DmsVideo;

    invoke-static {v0}, Lcom/huawei/gallery3d/multiscreen/MultiScreenUtils;->cacheVideoThumbnail(Landroid/graphics/Bitmap;)Ljava/lang/String;

    move-result-object v2

    #setter for: Lcom/android/gallery3d/data/DmsVideo;->mFilePath:Ljava/lang/String;
    invoke-static {v1, v2}, Lcom/android/gallery3d/data/DmsVideo;->access$102(Lcom/android/gallery3d/data/DmsVideo;Ljava/lang/String;)Ljava/lang/String;

    :cond_0
    move-object v1, v0

    .line 81
    :goto_0
    return-object v1

    .line 80
    :cond_1
    const-string v1, "AirSharing_DmsVideo"

    const-string v2, "path is not null, decode from path"

    invoke-static {v1, v2}, Lcom/android/gallery3d/ui/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 81
    iget-object v1, p0, Lcom/android/gallery3d/data/DmsVideo$BitmapJob;->this$0:Lcom/android/gallery3d/data/DmsVideo;

    #getter for: Lcom/android/gallery3d/data/DmsVideo;->mFilePath:Ljava/lang/String;
    invoke-static {v1}, Lcom/android/gallery3d/data/DmsVideo;->access$100(Lcom/android/gallery3d/data/DmsVideo;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v1

    goto :goto_0
.end method

.method public bridge synthetic run(Lcom/android/gallery3d/util/ThreadPool$JobContext;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 64
    invoke-virtual {p0, p1}, Lcom/android/gallery3d/data/DmsVideo$BitmapJob;->run(Lcom/android/gallery3d/util/ThreadPool$JobContext;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method
