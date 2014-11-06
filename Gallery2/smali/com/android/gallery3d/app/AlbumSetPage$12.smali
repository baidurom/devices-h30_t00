.class Lcom/android/gallery3d/app/AlbumSetPage$12;
.super Ljava/lang/Object;
.source "AlbumSetPage.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/gallery3d/app/AlbumSetPage;->onSyncDone(Lcom/android/gallery3d/data/MediaSet;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/gallery3d/app/AlbumSetPage;

.field final synthetic val$resultCode:I


# direct methods
.method constructor <init>(Lcom/android/gallery3d/app/AlbumSetPage;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1434
    iput-object p1, p0, Lcom/android/gallery3d/app/AlbumSetPage$12;->this$0:Lcom/android/gallery3d/app/AlbumSetPage;

    iput p2, p0, Lcom/android/gallery3d/app/AlbumSetPage$12;->val$resultCode:I

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    const/4 v3, 0x2

    .line 1437
    iget-object v1, p0, Lcom/android/gallery3d/app/AlbumSetPage$12;->this$0:Lcom/android/gallery3d/app/AlbumSetPage;

    iget-object v1, v1, Lcom/android/gallery3d/app/ActivityState;->mActivity:Lcom/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v1}, Lcom/android/gallery3d/app/AbstractGalleryActivity;->getGLRoot()Lcom/android/gallery3d/ui/GLRoot;

    move-result-object v0

    .line 1438
    .local v0, root:Lcom/android/gallery3d/ui/GLRoot;
    invoke-interface {v0}, Lcom/android/gallery3d/ui/GLRoot;->lockRenderThread()V

    .line 1440
    :try_start_0
    iget v1, p0, Lcom/android/gallery3d/app/AlbumSetPage$12;->val$resultCode:I

    if-nez v1, :cond_0

    .line 1441
    iget-object v1, p0, Lcom/android/gallery3d/app/AlbumSetPage$12;->this$0:Lcom/android/gallery3d/app/AlbumSetPage;

    const/4 v2, 0x1

    #setter for: Lcom/android/gallery3d/app/AlbumSetPage;->mInitialSynced:Z
    invoke-static {v1, v2}, Lcom/android/gallery3d/app/AlbumSetPage;->access$4002(Lcom/android/gallery3d/app/AlbumSetPage;Z)Z

    .line 1443
    :cond_0
    iget-object v1, p0, Lcom/android/gallery3d/app/AlbumSetPage$12;->this$0:Lcom/android/gallery3d/app/AlbumSetPage;

    const/4 v2, 0x2

    #calls: Lcom/android/gallery3d/app/AlbumSetPage;->clearLoadingBit(I)V
    invoke-static {v1, v2}, Lcom/android/gallery3d/app/AlbumSetPage;->access$4100(Lcom/android/gallery3d/app/AlbumSetPage;I)V

    .line 1444
    iget v1, p0, Lcom/android/gallery3d/app/AlbumSetPage$12;->val$resultCode:I

    if-ne v1, v3, :cond_1

    iget-object v1, p0, Lcom/android/gallery3d/app/AlbumSetPage$12;->this$0:Lcom/android/gallery3d/app/AlbumSetPage;

    #getter for: Lcom/android/gallery3d/app/AlbumSetPage;->mIsActive:Z
    invoke-static {v1}, Lcom/android/gallery3d/app/AlbumSetPage;->access$4200(Lcom/android/gallery3d/app/AlbumSetPage;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1445
    const-string v1, "AlbumSetPage"

    const-string v2, "failed to load album set"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1448
    :cond_1
    invoke-interface {v0}, Lcom/android/gallery3d/ui/GLRoot;->unlockRenderThread()V

    .line 1450
    return-void

    .line 1448
    :catchall_0
    move-exception v1

    invoke-interface {v0}, Lcom/android/gallery3d/ui/GLRoot;->unlockRenderThread()V

    throw v1
.end method
