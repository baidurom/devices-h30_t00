.class Lcom/android/gallery3d/app/AlbumPage$14;
.super Ljava/lang/Thread;
.source "AlbumPage.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/gallery3d/app/AlbumPage;->handleOperationShareDone()V
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
    .line 1464
    iput-object p1, p0, Lcom/android/gallery3d/app/AlbumPage$14;->this$0:Lcom/android/gallery3d/app/AlbumPage;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 1467
    iget-object v0, p0, Lcom/android/gallery3d/app/AlbumPage$14;->this$0:Lcom/android/gallery3d/app/AlbumPage;

    #calls: Lcom/android/gallery3d/app/AlbumPage;->handlePhotoShareActionShare()V
    invoke-static {v0}, Lcom/android/gallery3d/app/AlbumPage;->access$4300(Lcom/android/gallery3d/app/AlbumPage;)V

    .line 1468
    iget-object v0, p0, Lcom/android/gallery3d/app/AlbumPage$14;->this$0:Lcom/android/gallery3d/app/AlbumPage;

    #getter for: Lcom/android/gallery3d/app/AlbumPage;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/gallery3d/app/AlbumPage;->access$2600(Lcom/android/gallery3d/app/AlbumPage;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/android/gallery3d/app/AlbumPage$14$1;

    invoke-direct {v1, p0}, Lcom/android/gallery3d/app/AlbumPage$14$1;-><init>(Lcom/android/gallery3d/app/AlbumPage$14;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1473
    return-void
.end method
