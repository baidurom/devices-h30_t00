.class Lcom/android/gallery3d/app/AlbumPage$16;
.super Ljava/lang/Object;
.source "AlbumPage.java"

# interfaces
.implements Lcom/android/gallery3d/ui/ShareExecutor$ShareExecutorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/gallery3d/app/AlbumPage;->handleOperationShareDoneInternal(ZZLjava/util/ArrayList;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field shareIntent:Landroid/content/Intent;

.field final synthetic this$0:Lcom/android/gallery3d/app/AlbumPage;

.field private type:I

.field final synthetic val$shouldAddWaterMark:Z

.field final synthetic val$shouldTransToVideo:Z


# direct methods
.method constructor <init>(Lcom/android/gallery3d/app/AlbumPage;ZZ)V
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1498
    iput-object p1, p0, Lcom/android/gallery3d/app/AlbumPage$16;->this$0:Lcom/android/gallery3d/app/AlbumPage;

    iput-boolean p2, p0, Lcom/android/gallery3d/app/AlbumPage$16;->val$shouldTransToVideo:Z

    iput-boolean p3, p0, Lcom/android/gallery3d/app/AlbumPage$16;->val$shouldAddWaterMark:Z

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 1499
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/android/gallery3d/app/AlbumPage$16;->this$0:Lcom/android/gallery3d/app/AlbumPage;

    #getter for: Lcom/android/gallery3d/app/AlbumPage;->mChoosedShareIntent:Landroid/content/Intent;
    invoke-static {v1}, Lcom/android/gallery3d/app/AlbumPage;->access$3400(Lcom/android/gallery3d/app/AlbumPage;)Landroid/content/Intent;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    iput-object v0, p0, Lcom/android/gallery3d/app/AlbumPage$16;->shareIntent:Landroid/content/Intent;

    .line 1500
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/gallery3d/app/AlbumPage$16;->type:I

    return-void
.end method


# virtual methods
.method public getUIHandler()Landroid/os/Handler;
    .locals 1

    .prologue
    .line 1541
    iget-object v0, p0, Lcom/android/gallery3d/app/AlbumPage$16;->this$0:Lcom/android/gallery3d/app/AlbumPage;

    #getter for: Lcom/android/gallery3d/app/AlbumPage;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/gallery3d/app/AlbumPage;->access$2600(Lcom/android/gallery3d/app/AlbumPage;)Landroid/os/Handler;

    move-result-object v0

    return-object v0
.end method

.method public onProcessDone(Ljava/util/ArrayList;)V
    .locals 5
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/net/Uri;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1524
    .local p1, shareUris:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/net/Uri;>;"
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 1525
    .local v1, size:I
    if-nez v1, :cond_0

    .line 1538
    :goto_0
    return-void

    .line 1526
    :cond_0
    iget v2, p0, Lcom/android/gallery3d/app/AlbumPage$16;->type:I

    invoke-static {v2}, Lcom/android/gallery3d/ui/MenuExecutor;->getMimeType(I)Ljava/lang/String;

    move-result-object v0

    .line 1527
    .local v0, mimeType:Ljava/lang/String;
    iget-object v2, p0, Lcom/android/gallery3d/app/AlbumPage$16;->shareIntent:Landroid/content/Intent;

    const-string v3, "KEY_PATH_ARRAY"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->removeExtra(Ljava/lang/String;)V

    .line 1528
    const/4 v2, 0x1

    if-le v1, v2, :cond_1

    .line 1529
    iget-object v2, p0, Lcom/android/gallery3d/app/AlbumPage$16;->shareIntent:Landroid/content/Intent;

    const-string v3, "android.intent.action.SEND_MULTIPLE"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 1530
    iget-object v2, p0, Lcom/android/gallery3d/app/AlbumPage$16;->shareIntent:Landroid/content/Intent;

    const-string v3, "android.intent.extra.STREAM"

    invoke-virtual {v2, v3, p1}, Landroid/content/Intent;->putParcelableArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    .line 1537
    :goto_1
    iget-object v2, p0, Lcom/android/gallery3d/app/AlbumPage$16;->this$0:Lcom/android/gallery3d/app/AlbumPage;

    iget-object v2, v2, Lcom/android/gallery3d/app/ActivityState;->mActivity:Lcom/android/gallery3d/app/AbstractGalleryActivity;

    iget-object v3, p0, Lcom/android/gallery3d/app/AlbumPage$16;->shareIntent:Landroid/content/Intent;

    invoke-virtual {v2, v3}, Lcom/android/gallery3d/app/AbstractGalleryActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 1532
    :cond_1
    iget-object v2, p0, Lcom/android/gallery3d/app/AlbumPage$16;->shareIntent:Landroid/content/Intent;

    const-string v3, "android.intent.action.SEND"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 1533
    iget-object v3, p0, Lcom/android/gallery3d/app/AlbumPage$16;->shareIntent:Landroid/content/Intent;

    const-string v4, "android.intent.extra.STREAM"

    const/4 v2, 0x0

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/Parcelable;

    invoke-virtual {v3, v4, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 1534
    iget-object v2, p0, Lcom/android/gallery3d/app/AlbumPage$16;->this$0:Lcom/android/gallery3d/app/AlbumPage;

    iget-object v2, v2, Lcom/android/gallery3d/app/ActivityState;->mActivity:Lcom/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v2}, Lcom/android/gallery3d/app/AbstractGalleryActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/android/gallery3d/app/AlbumPage$16;->shareIntent:Landroid/content/Intent;

    invoke-static {v2, v3}, Lcom/android/gallery3d/util/SinaWeiboUtils;->processImageForSinaWeibo(Landroid/content/Context;Landroid/content/Intent;)Landroid/content/Intent;

    move-result-object v2

    iput-object v2, p0, Lcom/android/gallery3d/app/AlbumPage$16;->shareIntent:Landroid/content/Intent;

    goto :goto_1
.end method

.method public onProgress(Lcom/android/gallery3d/data/MediaObject;)V
    .locals 2
    .parameter "mediaObject"

    .prologue
    .line 1515
    iget-boolean v0, p0, Lcom/android/gallery3d/app/AlbumPage$16;->val$shouldTransToVideo:Z

    if-eqz v0, :cond_0

    invoke-static {p1}, Lcom/android/gallery3d/util/ImageVideoTranser;->isItemSupportTransVer(Lcom/android/gallery3d/data/MediaObject;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1516
    iget v0, p0, Lcom/android/gallery3d/app/AlbumPage$16;->type:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/android/gallery3d/app/AlbumPage$16;->type:I

    .line 1520
    :goto_0
    return-void

    .line 1518
    :cond_0
    iget v0, p0, Lcom/android/gallery3d/app/AlbumPage$16;->type:I

    invoke-virtual {p1}, Lcom/android/gallery3d/data/MediaObject;->getMediaType()I

    move-result v1

    or-int/2addr v0, v1

    iput v0, p0, Lcom/android/gallery3d/app/AlbumPage$16;->type:I

    goto :goto_0
.end method

.method public shouldAddWaterMark()Z
    .locals 1

    .prologue
    .line 1509
    iget-boolean v0, p0, Lcom/android/gallery3d/app/AlbumPage$16;->val$shouldAddWaterMark:Z

    return v0
.end method

.method public shouldConvertVI()Z
    .locals 1

    .prologue
    .line 1504
    iget-boolean v0, p0, Lcom/android/gallery3d/app/AlbumPage$16;->val$shouldTransToVideo:Z

    return v0
.end method
