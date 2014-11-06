.class Lcom/android/gallery3d/app/ShareManager$2;
.super Ljava/lang/Object;
.source "ShareManager.java"

# interfaces
.implements Lcom/android/gallery3d/ui/ShareExecutor$ShareExecutorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/gallery3d/app/ShareManager;->handleSingleIntentShareInternal(ZZLandroid/content/ComponentName;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private mType:I

.field final synthetic this$0:Lcom/android/gallery3d/app/ShareManager;

.field final synthetic val$chosenName:Landroid/content/ComponentName;

.field final synthetic val$isMultiple:Z

.field final synthetic val$sendIntent:Landroid/content/Intent;

.field final synthetic val$shouldAddWaterMark:Z

.field final synthetic val$shouldTransToVideo:Z


# direct methods
.method constructor <init>(Lcom/android/gallery3d/app/ShareManager;ZZLandroid/content/Intent;ZLandroid/content/ComponentName;)V
    .locals 1
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 318
    iput-object p1, p0, Lcom/android/gallery3d/app/ShareManager$2;->this$0:Lcom/android/gallery3d/app/ShareManager;

    iput-boolean p2, p0, Lcom/android/gallery3d/app/ShareManager$2;->val$shouldTransToVideo:Z

    iput-boolean p3, p0, Lcom/android/gallery3d/app/ShareManager$2;->val$shouldAddWaterMark:Z

    iput-object p4, p0, Lcom/android/gallery3d/app/ShareManager$2;->val$sendIntent:Landroid/content/Intent;

    iput-boolean p5, p0, Lcom/android/gallery3d/app/ShareManager$2;->val$isMultiple:Z

    iput-object p6, p0, Lcom/android/gallery3d/app/ShareManager$2;->val$chosenName:Landroid/content/ComponentName;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 319
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/gallery3d/app/ShareManager$2;->mType:I

    return-void
.end method


# virtual methods
.method public getUIHandler()Landroid/os/Handler;
    .locals 1

    .prologue
    .line 362
    iget-object v0, p0, Lcom/android/gallery3d/app/ShareManager$2;->this$0:Lcom/android/gallery3d/app/ShareManager;

    #getter for: Lcom/android/gallery3d/app/ShareManager;->mUIHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/gallery3d/app/ShareManager;->access$1400(Lcom/android/gallery3d/app/ShareManager;)Landroid/os/Handler;

    move-result-object v0

    return-object v0
.end method

.method public onProcessDone(Ljava/util/ArrayList;)V
    .locals 3
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
    .line 344
    .local p1, shareUris:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/net/Uri;>;"
    iget-object v0, p0, Lcom/android/gallery3d/app/ShareManager$2;->val$sendIntent:Landroid/content/Intent;

    iget v1, p0, Lcom/android/gallery3d/app/ShareManager$2;->mType:I

    invoke-static {v1}, Lcom/android/gallery3d/ui/MenuExecutor;->getMimeType(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 345
    iget-object v0, p0, Lcom/android/gallery3d/app/ShareManager$2;->val$sendIntent:Landroid/content/Intent;

    const-string v1, "KEY_PATH_ARRAY"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->removeExtra(Ljava/lang/String;)V

    .line 347
    if-eqz p1, :cond_2

    iget-boolean v0, p0, Lcom/android/gallery3d/app/ShareManager$2;->val$isMultiple:Z

    if-eqz v0, :cond_2

    .line 348
    iget-object v0, p0, Lcom/android/gallery3d/app/ShareManager$2;->val$sendIntent:Landroid/content/Intent;

    const-string v1, "android.intent.extra.STREAM"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->removeExtra(Ljava/lang/String;)V

    .line 349
    iget-object v0, p0, Lcom/android/gallery3d/app/ShareManager$2;->val$sendIntent:Landroid/content/Intent;

    const-string v1, "android.intent.extra.STREAM"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putParcelableArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    .line 354
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/android/gallery3d/app/ShareManager$2;->this$0:Lcom/android/gallery3d/app/ShareManager;

    iget-object v1, p0, Lcom/android/gallery3d/app/ShareManager$2;->val$chosenName:Landroid/content/ComponentName;

    iget-object v2, p0, Lcom/android/gallery3d/app/ShareManager$2;->val$sendIntent:Landroid/content/Intent;

    invoke-virtual {v0, v1, v2}, Lcom/android/gallery3d/app/ShareManager;->startShareIntent(Landroid/content/ComponentName;Landroid/content/Intent;)V

    .line 356
    iget-object v0, p0, Lcom/android/gallery3d/app/ShareManager$2;->this$0:Lcom/android/gallery3d/app/ShareManager;

    #getter for: Lcom/android/gallery3d/app/ShareManager;->mShareProcessListener:Lcom/android/gallery3d/app/ShareManager$ShareProcessListener;
    invoke-static {v0}, Lcom/android/gallery3d/app/ShareManager;->access$1000(Lcom/android/gallery3d/app/ShareManager;)Lcom/android/gallery3d/app/ShareManager$ShareProcessListener;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 357
    iget-object v0, p0, Lcom/android/gallery3d/app/ShareManager$2;->this$0:Lcom/android/gallery3d/app/ShareManager;

    #getter for: Lcom/android/gallery3d/app/ShareManager;->mShareProcessListener:Lcom/android/gallery3d/app/ShareManager$ShareProcessListener;
    invoke-static {v0}, Lcom/android/gallery3d/app/ShareManager;->access$1000(Lcom/android/gallery3d/app/ShareManager;)Lcom/android/gallery3d/app/ShareManager$ShareProcessListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/gallery3d/app/ShareManager$ShareProcessListener;->onProcessDone()V

    .line 358
    :cond_1
    return-void

    .line 350
    :cond_2
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 351
    iget-object v0, p0, Lcom/android/gallery3d/app/ShareManager$2;->val$sendIntent:Landroid/content/Intent;

    const-string v1, "android.intent.extra.STREAM"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->removeExtra(Ljava/lang/String;)V

    .line 352
    iget-object v1, p0, Lcom/android/gallery3d/app/ShareManager$2;->val$sendIntent:Landroid/content/Intent;

    const-string v2, "android.intent.extra.STREAM"

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Parcelable;

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    goto :goto_0
.end method

.method public onProgress(Lcom/android/gallery3d/data/MediaObject;)V
    .locals 2
    .parameter "mediaObject"

    .prologue
    .line 333
    iget-object v0, p0, Lcom/android/gallery3d/app/ShareManager$2;->this$0:Lcom/android/gallery3d/app/ShareManager;

    #getter for: Lcom/android/gallery3d/app/ShareManager;->mShareProcessListener:Lcom/android/gallery3d/app/ShareManager$ShareProcessListener;
    invoke-static {v0}, Lcom/android/gallery3d/app/ShareManager;->access$1000(Lcom/android/gallery3d/app/ShareManager;)Lcom/android/gallery3d/app/ShareManager$ShareProcessListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 334
    iget-object v0, p0, Lcom/android/gallery3d/app/ShareManager$2;->this$0:Lcom/android/gallery3d/app/ShareManager;

    #getter for: Lcom/android/gallery3d/app/ShareManager;->mShareProcessListener:Lcom/android/gallery3d/app/ShareManager$ShareProcessListener;
    invoke-static {v0}, Lcom/android/gallery3d/app/ShareManager;->access$1000(Lcom/android/gallery3d/app/ShareManager;)Lcom/android/gallery3d/app/ShareManager$ShareProcessListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/gallery3d/app/ShareManager$ShareProcessListener;->onProgress()V

    .line 336
    :cond_0
    iget-boolean v0, p0, Lcom/android/gallery3d/app/ShareManager$2;->val$shouldTransToVideo:Z

    if-eqz v0, :cond_1

    invoke-static {p1}, Lcom/android/gallery3d/util/ImageVideoTranser;->isItemSupportTransVer(Lcom/android/gallery3d/data/MediaObject;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 337
    iget v0, p0, Lcom/android/gallery3d/app/ShareManager$2;->mType:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/android/gallery3d/app/ShareManager$2;->mType:I

    .line 340
    :goto_0
    return-void

    .line 339
    :cond_1
    iget v0, p0, Lcom/android/gallery3d/app/ShareManager$2;->mType:I

    invoke-virtual {p1}, Lcom/android/gallery3d/data/MediaObject;->getMediaType()I

    move-result v1

    or-int/2addr v0, v1

    iput v0, p0, Lcom/android/gallery3d/app/ShareManager$2;->mType:I

    goto :goto_0
.end method

.method public shouldAddWaterMark()Z
    .locals 1

    .prologue
    .line 328
    iget-boolean v0, p0, Lcom/android/gallery3d/app/ShareManager$2;->val$shouldAddWaterMark:Z

    return v0
.end method

.method public shouldConvertVI()Z
    .locals 1

    .prologue
    .line 323
    iget-boolean v0, p0, Lcom/android/gallery3d/app/ShareManager$2;->val$shouldTransToVideo:Z

    return v0
.end method
