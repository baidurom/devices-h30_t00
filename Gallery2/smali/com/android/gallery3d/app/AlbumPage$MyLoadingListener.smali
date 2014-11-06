.class Lcom/android/gallery3d/app/AlbumPage$MyLoadingListener;
.super Ljava/lang/Object;
.source "AlbumPage.java"

# interfaces
.implements Lcom/android/gallery3d/app/LoadingListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/gallery3d/app/AlbumPage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MyLoadingListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/gallery3d/app/AlbumPage;


# direct methods
.method private constructor <init>(Lcom/android/gallery3d/app/AlbumPage;)V
    .locals 0
    .parameter

    .prologue
    .line 1288
    iput-object p1, p0, Lcom/android/gallery3d/app/AlbumPage$MyLoadingListener;->this$0:Lcom/android/gallery3d/app/AlbumPage;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/gallery3d/app/AlbumPage;Lcom/android/gallery3d/app/AlbumPage$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1288
    invoke-direct {p0, p1}, Lcom/android/gallery3d/app/AlbumPage$MyLoadingListener;-><init>(Lcom/android/gallery3d/app/AlbumPage;)V

    return-void
.end method


# virtual methods
.method public onLoadingFinished(Z)V
    .locals 2
    .parameter "loadingFailed"

    .prologue
    .line 1297
    iget-object v0, p0, Lcom/android/gallery3d/app/AlbumPage$MyLoadingListener;->this$0:Lcom/android/gallery3d/app/AlbumPage;

    const/4 v1, 0x1

    #calls: Lcom/android/gallery3d/app/AlbumPage;->clearLoadingBit(I)V
    invoke-static {v0, v1}, Lcom/android/gallery3d/app/AlbumPage;->access$2900(Lcom/android/gallery3d/app/AlbumPage;I)V

    .line 1298
    iget-object v0, p0, Lcom/android/gallery3d/app/AlbumPage$MyLoadingListener;->this$0:Lcom/android/gallery3d/app/AlbumPage;

    #setter for: Lcom/android/gallery3d/app/AlbumPage;->mLoadingFailed:Z
    invoke-static {v0, p1}, Lcom/android/gallery3d/app/AlbumPage;->access$3002(Lcom/android/gallery3d/app/AlbumPage;Z)Z

    .line 1299
    iget-object v0, p0, Lcom/android/gallery3d/app/AlbumPage$MyLoadingListener;->this$0:Lcom/android/gallery3d/app/AlbumPage;

    #calls: Lcom/android/gallery3d/app/AlbumPage;->showSyncErrorIfNecessary(Z)V
    invoke-static {v0, p1}, Lcom/android/gallery3d/app/AlbumPage;->access$3100(Lcom/android/gallery3d/app/AlbumPage;Z)V

    .line 1300
    return-void
.end method

.method public onLoadingStarted()V
    .locals 2

    .prologue
    .line 1291
    iget-object v0, p0, Lcom/android/gallery3d/app/AlbumPage$MyLoadingListener;->this$0:Lcom/android/gallery3d/app/AlbumPage;

    const/4 v1, 0x1

    #calls: Lcom/android/gallery3d/app/AlbumPage;->setLoadingBit(I)V
    invoke-static {v0, v1}, Lcom/android/gallery3d/app/AlbumPage;->access$3200(Lcom/android/gallery3d/app/AlbumPage;I)V

    .line 1292
    iget-object v0, p0, Lcom/android/gallery3d/app/AlbumPage$MyLoadingListener;->this$0:Lcom/android/gallery3d/app/AlbumPage;

    const/4 v1, 0x0

    #setter for: Lcom/android/gallery3d/app/AlbumPage;->mLoadingFailed:Z
    invoke-static {v0, v1}, Lcom/android/gallery3d/app/AlbumPage;->access$3002(Lcom/android/gallery3d/app/AlbumPage;Z)Z

    .line 1293
    return-void
.end method
