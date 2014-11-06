.class Lcom/android/gallery3d/app/AlbumPage$11;
.super Ljava/lang/Object;
.source "AlbumPage.java"

# interfaces
.implements Lcom/android/gallery3d/app/ShareManager$OnItemClickedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/gallery3d/app/AlbumPage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/gallery3d/app/AlbumPage;


# direct methods
.method constructor <init>(Lcom/android/gallery3d/app/AlbumPage;)V
    .locals 0
    .parameter

    .prologue
    .line 1345
    iput-object p1, p0, Lcom/android/gallery3d/app/AlbumPage$11;->this$0:Lcom/android/gallery3d/app/AlbumPage;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClicked(Landroid/content/Intent;Ljava/lang/String;II)V
    .locals 5
    .parameter "shareIntent"
    .parameter "title"
    .parameter "action"
    .parameter "type"

    .prologue
    const/4 v4, 0x1

    .line 1350
    iget-object v0, p0, Lcom/android/gallery3d/app/AlbumPage$11;->this$0:Lcom/android/gallery3d/app/AlbumPage;

    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1, p1}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    #setter for: Lcom/android/gallery3d/app/AlbumPage;->mChoosedShareIntent:Landroid/content/Intent;
    invoke-static {v0, v1}, Lcom/android/gallery3d/app/AlbumPage;->access$3402(Lcom/android/gallery3d/app/AlbumPage;Landroid/content/Intent;)Landroid/content/Intent;

    .line 1351
    iget-object v0, p0, Lcom/android/gallery3d/app/AlbumPage$11;->this$0:Lcom/android/gallery3d/app/AlbumPage;

    const/4 v1, 0x0

    #calls: Lcom/android/gallery3d/app/AlbumPage;->enterSelectionMode(Z)V
    invoke-static {v0, v1}, Lcom/android/gallery3d/app/AlbumPage;->access$3500(Lcom/android/gallery3d/app/AlbumPage;Z)V

    .line 1352
    iget-object v0, p0, Lcom/android/gallery3d/app/AlbumPage$11;->this$0:Lcom/android/gallery3d/app/AlbumPage;

    iget-object v0, v0, Lcom/android/gallery3d/app/AlbumPage;->mSelectionManager:Lcom/android/gallery3d/ui/SelectionManager;

    const v1, 0x7f10022d

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/ui/SelectionManager;->setCheckOperatoin(I)V

    .line 1353
    iget-object v0, p0, Lcom/android/gallery3d/app/AlbumPage$11;->this$0:Lcom/android/gallery3d/app/AlbumPage;

    #getter for: Lcom/android/gallery3d/app/AlbumPage;->mActionModeHandler:Lcom/android/gallery3d/ui/ActionModeHandler;
    invoke-static {v0}, Lcom/android/gallery3d/app/AlbumPage;->access$3700(Lcom/android/gallery3d/app/AlbumPage;)Lcom/android/gallery3d/ui/ActionModeHandler;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/gallery3d/app/AlbumPage$11;->this$0:Lcom/android/gallery3d/app/AlbumPage;

    iget-object v2, v2, Lcom/android/gallery3d/app/ActivityState;->mActivity:Lcom/android/gallery3d/app/AbstractGalleryActivity;

    iget-object v3, p0, Lcom/android/gallery3d/app/AlbumPage$11;->this$0:Lcom/android/gallery3d/app/AlbumPage;

    #getter for: Lcom/android/gallery3d/app/AlbumPage;->mClickedItemTitle:I
    invoke-static {v3}, Lcom/android/gallery3d/app/AlbumPage;->access$3600(Lcom/android/gallery3d/app/AlbumPage;)I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/android/gallery3d/app/AbstractGalleryActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/ui/ActionModeHandler;->setTitle(Ljava/lang/String;)V

    .line 1354
    iget-object v0, p0, Lcom/android/gallery3d/app/AlbumPage$11;->this$0:Lcom/android/gallery3d/app/AlbumPage;

    #getter for: Lcom/android/gallery3d/app/AlbumPage;->mToolbarView:Lcom/android/gallery3d/ui/ToolbarView;
    invoke-static {v0}, Lcom/android/gallery3d/app/AlbumPage;->access$500(Lcom/android/gallery3d/app/AlbumPage;)Lcom/android/gallery3d/ui/ToolbarView;

    move-result-object v0

    iget-object v1, p0, Lcom/android/gallery3d/app/AlbumPage$11;->this$0:Lcom/android/gallery3d/app/AlbumPage;

    #getter for: Lcom/android/gallery3d/app/AlbumPage;->mClickedItemTitle:I
    invoke-static {v1}, Lcom/android/gallery3d/app/AlbumPage;->access$3600(Lcom/android/gallery3d/app/AlbumPage;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/ui/ToolbarView;->setDoneTitle(I)V

    .line 1356
    iget-object v0, p0, Lcom/android/gallery3d/app/AlbumPage$11;->this$0:Lcom/android/gallery3d/app/AlbumPage;

    iget-object v0, v0, Lcom/android/gallery3d/app/AlbumPage;->mSelectionManager:Lcom/android/gallery3d/ui/SelectionManager;

    const/16 v1, 0x1f4

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/ui/SelectionManager;->setLimitExceedNum(I)V

    .line 1358
    and-int/lit8 v0, p3, 0x2

    if-nez v0, :cond_0

    .line 1359
    iget-object v0, p0, Lcom/android/gallery3d/app/AlbumPage$11;->this$0:Lcom/android/gallery3d/app/AlbumPage;

    iget-object v0, v0, Lcom/android/gallery3d/app/AlbumPage;->mSelectionManager:Lcom/android/gallery3d/ui/SelectionManager;

    invoke-virtual {v0, v4}, Lcom/android/gallery3d/ui/SelectionManager;->setSingleMode(Z)V

    .line 1360
    iget-object v0, p0, Lcom/android/gallery3d/app/AlbumPage$11;->this$0:Lcom/android/gallery3d/app/AlbumPage;

    #getter for: Lcom/android/gallery3d/app/AlbumPage;->mSelectAllView:Lcom/android/gallery3d/ui/SelectAllView;
    invoke-static {v0}, Lcom/android/gallery3d/app/AlbumPage;->access$900(Lcom/android/gallery3d/app/AlbumPage;)Lcom/android/gallery3d/ui/SelectAllView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/gallery3d/ui/SelectAllView;->getVisibility()I

    move-result v0

    if-eq v0, v4, :cond_0

    .line 1361
    iget-object v0, p0, Lcom/android/gallery3d/app/AlbumPage$11;->this$0:Lcom/android/gallery3d/app/AlbumPage;

    #getter for: Lcom/android/gallery3d/app/AlbumPage;->mSelectAllView:Lcom/android/gallery3d/ui/SelectAllView;
    invoke-static {v0}, Lcom/android/gallery3d/app/AlbumPage;->access$900(Lcom/android/gallery3d/app/AlbumPage;)Lcom/android/gallery3d/ui/SelectAllView;

    move-result-object v0

    invoke-virtual {v0, v4}, Lcom/android/gallery3d/ui/SelectAllView;->setVisibility(I)V

    .line 1362
    iget-object v0, p0, Lcom/android/gallery3d/app/AlbumPage$11;->this$0:Lcom/android/gallery3d/app/AlbumPage;

    #getter for: Lcom/android/gallery3d/app/AlbumPage;->mRootPane:Lcom/android/gallery3d/ui/GLView;
    invoke-static {v0}, Lcom/android/gallery3d/app/AlbumPage;->access$3800(Lcom/android/gallery3d/app/AlbumPage;)Lcom/android/gallery3d/ui/GLView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/gallery3d/ui/GLView;->requestLayout()V

    .line 1365
    :cond_0
    iget-object v0, p0, Lcom/android/gallery3d/app/AlbumPage$11;->this$0:Lcom/android/gallery3d/app/AlbumPage;

    #getter for: Lcom/android/gallery3d/app/AlbumPage;->mType:I
    invoke-static {v0}, Lcom/android/gallery3d/app/AlbumPage;->access$3900(Lcom/android/gallery3d/app/AlbumPage;)I

    move-result v0

    and-int/2addr v0, p4

    iget-object v1, p0, Lcom/android/gallery3d/app/AlbumPage$11;->this$0:Lcom/android/gallery3d/app/AlbumPage;

    #getter for: Lcom/android/gallery3d/app/AlbumPage;->mType:I
    invoke-static {v1}, Lcom/android/gallery3d/app/AlbumPage;->access$3900(Lcom/android/gallery3d/app/AlbumPage;)I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 1366
    iget-object v0, p0, Lcom/android/gallery3d/app/AlbumPage$11;->this$0:Lcom/android/gallery3d/app/AlbumPage;

    #setter for: Lcom/android/gallery3d/app/AlbumPage;->mReload:Z
    invoke-static {v0, v4}, Lcom/android/gallery3d/app/AlbumPage;->access$4002(Lcom/android/gallery3d/app/AlbumPage;Z)Z

    .line 1367
    iget-object v0, p0, Lcom/android/gallery3d/app/AlbumPage$11;->this$0:Lcom/android/gallery3d/app/AlbumPage;

    iget-object v0, v0, Lcom/android/gallery3d/app/ActivityState;->mActivity:Lcom/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v0}, Lcom/android/gallery3d/app/AbstractGalleryActivity;->getDataManager()Lcom/android/gallery3d/data/DataManager;

    move-result-object v0

    sget-object v1, Lcom/android/gallery3d/app/Gallery;->RELOAD_URI_ALBUM:Landroid/net/Uri;

    invoke-virtual {v0, v1, p4}, Lcom/android/gallery3d/data/DataManager;->notifyReload(Landroid/net/Uri;I)V

    .line 1370
    :cond_1
    return-void
.end method
