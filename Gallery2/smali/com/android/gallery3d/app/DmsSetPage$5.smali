.class Lcom/android/gallery3d/app/DmsSetPage$5;
.super Ljava/lang/Object;
.source "DmsSetPage.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/gallery3d/app/DmsSetPage;->onSyncDone(Lcom/android/gallery3d/data/MediaSet;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/gallery3d/app/DmsSetPage;

.field final synthetic val$resultCode:I


# direct methods
.method constructor <init>(Lcom/android/gallery3d/app/DmsSetPage;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 408
    iput-object p1, p0, Lcom/android/gallery3d/app/DmsSetPage$5;->this$0:Lcom/android/gallery3d/app/DmsSetPage;

    iput p2, p0, Lcom/android/gallery3d/app/DmsSetPage$5;->val$resultCode:I

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    const/4 v3, 0x2

    .line 411
    iget-object v1, p0, Lcom/android/gallery3d/app/DmsSetPage$5;->this$0:Lcom/android/gallery3d/app/DmsSetPage;

    iget-object v1, v1, Lcom/android/gallery3d/app/ActivityState;->mActivity:Lcom/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v1}, Lcom/android/gallery3d/app/AbstractGalleryActivity;->getGLRoot()Lcom/android/gallery3d/ui/GLRoot;

    move-result-object v0

    .line 412
    .local v0, root:Lcom/android/gallery3d/ui/GLRoot;
    invoke-interface {v0}, Lcom/android/gallery3d/ui/GLRoot;->lockRenderThread()V

    .line 414
    :try_start_0
    iget v1, p0, Lcom/android/gallery3d/app/DmsSetPage$5;->val$resultCode:I

    if-nez v1, :cond_0

    .line 415
    iget-object v1, p0, Lcom/android/gallery3d/app/DmsSetPage$5;->this$0:Lcom/android/gallery3d/app/DmsSetPage;

    const/4 v2, 0x1

    #setter for: Lcom/android/gallery3d/app/DmsSetPage;->mInitialSynced:Z
    invoke-static {v1, v2}, Lcom/android/gallery3d/app/DmsSetPage;->access$1302(Lcom/android/gallery3d/app/DmsSetPage;Z)Z

    .line 417
    :cond_0
    iget-object v1, p0, Lcom/android/gallery3d/app/DmsSetPage$5;->this$0:Lcom/android/gallery3d/app/DmsSetPage;

    const/4 v2, 0x2

    #calls: Lcom/android/gallery3d/app/DmsSetPage;->clearLoadingBit(I)V
    invoke-static {v1, v2}, Lcom/android/gallery3d/app/DmsSetPage;->access$1400(Lcom/android/gallery3d/app/DmsSetPage;I)V

    .line 418
    iget v1, p0, Lcom/android/gallery3d/app/DmsSetPage$5;->val$resultCode:I

    if-ne v1, v3, :cond_1

    iget-object v1, p0, Lcom/android/gallery3d/app/DmsSetPage$5;->this$0:Lcom/android/gallery3d/app/DmsSetPage;

    #getter for: Lcom/android/gallery3d/app/DmsSetPage;->mIsActive:Z
    invoke-static {v1}, Lcom/android/gallery3d/app/DmsSetPage;->access$1500(Lcom/android/gallery3d/app/DmsSetPage;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 419
    const-string v1, "AirSharing_DmsSetPage"

    const-string v2, "failed to load album set"

    invoke-static {v1, v2}, Lcom/android/gallery3d/app/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 422
    :cond_1
    invoke-interface {v0}, Lcom/android/gallery3d/ui/GLRoot;->unlockRenderThread()V

    .line 424
    return-void

    .line 422
    :catchall_0
    move-exception v1

    invoke-interface {v0}, Lcom/android/gallery3d/ui/GLRoot;->unlockRenderThread()V

    throw v1
.end method
