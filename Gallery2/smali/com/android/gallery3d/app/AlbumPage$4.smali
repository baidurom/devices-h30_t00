.class Lcom/android/gallery3d/app/AlbumPage$4;
.super Lcom/android/gallery3d/ui/SynchronizedHandler;
.source "AlbumPage.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/gallery3d/app/AlbumPage;->onCreate(Landroid/os/Bundle;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/gallery3d/app/AlbumPage;


# direct methods
.method constructor <init>(Lcom/android/gallery3d/app/AlbumPage;Lcom/android/gallery3d/ui/GLRoot;)V
    .locals 0
    .parameter
    .parameter "x0"

    .prologue
    .line 582
    iput-object p1, p0, Lcom/android/gallery3d/app/AlbumPage$4;->this$0:Lcom/android/gallery3d/app/AlbumPage;

    invoke-direct {p0, p2}, Lcom/android/gallery3d/ui/SynchronizedHandler;-><init>(Lcom/android/gallery3d/ui/GLRoot;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .parameter "message"

    .prologue
    .line 585
    iget v0, p1, Landroid/os/Message;->what:I

    sparse-switch v0, :sswitch_data_0

    .line 608
    new-instance v0, Ljava/lang/AssertionError;

    iget v1, p1, Landroid/os/Message;->what:I

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(I)V

    throw v0

    .line 587
    :sswitch_0
    iget-object v0, p0, Lcom/android/gallery3d/app/AlbumPage$4;->this$0:Lcom/android/gallery3d/app/AlbumPage;

    iget v1, p1, Landroid/os/Message;->arg1:I

    #calls: Lcom/android/gallery3d/app/AlbumPage;->pickPhoto(I)V
    invoke-static {v0, v1}, Lcom/android/gallery3d/app/AlbumPage;->access$1600(Lcom/android/gallery3d/app/AlbumPage;I)V

    .line 610
    :goto_0
    return-void

    .line 592
    :sswitch_1
    iget-object v0, p0, Lcom/android/gallery3d/app/AlbumPage$4;->this$0:Lcom/android/gallery3d/app/AlbumPage;

    #calls: Lcom/android/gallery3d/app/AlbumPage;->runShareTask()V
    invoke-static {v0}, Lcom/android/gallery3d/app/AlbumPage;->access$1700(Lcom/android/gallery3d/app/AlbumPage;)V

    goto :goto_0

    .line 598
    :sswitch_2
    iget-object v0, p0, Lcom/android/gallery3d/app/AlbumPage$4;->this$0:Lcom/android/gallery3d/app/AlbumPage;

    invoke-virtual {v0}, Lcom/android/gallery3d/app/AlbumPage;->onBackPressed()V

    goto :goto_0

    .line 603
    :sswitch_3
    iget-object v0, p0, Lcom/android/gallery3d/app/AlbumPage$4;->this$0:Lcom/android/gallery3d/app/AlbumPage;

    iget-object v0, v0, Lcom/android/gallery3d/app/ActivityState;->mActivity:Lcom/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v0}, Lcom/android/gallery3d/app/AbstractGalleryActivity;->getStateManager()Lcom/android/gallery3d/app/StateManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/gallery3d/app/AlbumPage$4;->this$0:Lcom/android/gallery3d/app/AlbumPage;

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/app/StateManager;->finishState(Lcom/android/gallery3d/app/ActivityState;)V

    goto :goto_0

    .line 585
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x1 -> :sswitch_1
        0xc -> :sswitch_2
        0xf -> :sswitch_3
    .end sparse-switch
.end method
