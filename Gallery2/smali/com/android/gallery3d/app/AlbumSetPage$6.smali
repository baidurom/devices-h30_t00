.class Lcom/android/gallery3d/app/AlbumSetPage$6;
.super Lcom/android/gallery3d/ui/SynchronizedHandler;
.source "AlbumSetPage.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/gallery3d/app/AlbumSetPage;->onCreate(Landroid/os/Bundle;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/gallery3d/app/AlbumSetPage;


# direct methods
.method constructor <init>(Lcom/android/gallery3d/app/AlbumSetPage;Lcom/android/gallery3d/ui/GLRoot;)V
    .locals 0
    .parameter
    .parameter "x0"

    .prologue
    .line 629
    iput-object p1, p0, Lcom/android/gallery3d/app/AlbumSetPage$6;->this$0:Lcom/android/gallery3d/app/AlbumSetPage;

    invoke-direct {p0, p2}, Lcom/android/gallery3d/ui/SynchronizedHandler;-><init>(Lcom/android/gallery3d/ui/GLRoot;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .parameter "message"

    .prologue
    .line 632
    iget v0, p1, Landroid/os/Message;->what:I

    sparse-switch v0, :sswitch_data_0

    .line 650
    new-instance v0, Ljava/lang/AssertionError;

    iget v1, p1, Landroid/os/Message;->what:I

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(I)V

    throw v0

    .line 634
    :sswitch_0
    iget-object v0, p0, Lcom/android/gallery3d/app/AlbumSetPage$6;->this$0:Lcom/android/gallery3d/app/AlbumSetPage;

    iget v1, p1, Landroid/os/Message;->arg1:I

    #calls: Lcom/android/gallery3d/app/AlbumSetPage;->pickAlbum(I)V
    invoke-static {v0, v1}, Lcom/android/gallery3d/app/AlbumSetPage;->access$3200(Lcom/android/gallery3d/app/AlbumSetPage;I)V

    .line 652
    :goto_0
    return-void

    .line 638
    :sswitch_1
    iget-object v0, p0, Lcom/android/gallery3d/app/AlbumSetPage$6;->this$0:Lcom/android/gallery3d/app/AlbumSetPage;

    iget v1, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/app/AlbumSetPage;->doCluster(I)V

    goto :goto_0

    .line 642
    :sswitch_2
    iget-object v0, p0, Lcom/android/gallery3d/app/AlbumSetPage$6;->this$0:Lcom/android/gallery3d/app/AlbumSetPage;

    #calls: Lcom/android/gallery3d/app/AlbumSetPage;->switchStateToPhotoShareFromGallery()V
    invoke-static {v0}, Lcom/android/gallery3d/app/AlbumSetPage;->access$3300(Lcom/android/gallery3d/app/AlbumSetPage;)V

    goto :goto_0

    .line 646
    :sswitch_3
    iget-object v0, p0, Lcom/android/gallery3d/app/AlbumSetPage$6;->this$0:Lcom/android/gallery3d/app/AlbumSetPage;

    #calls: Lcom/android/gallery3d/app/AlbumSetPage;->switchStateToGalleryFromPhotoShare()V
    invoke-static {v0}, Lcom/android/gallery3d/app/AlbumSetPage;->access$3400(Lcom/android/gallery3d/app/AlbumSetPage;)V

    goto :goto_0

    .line 632
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x2 -> :sswitch_1
        0xe -> :sswitch_2
        0xf -> :sswitch_3
    .end sparse-switch
.end method
