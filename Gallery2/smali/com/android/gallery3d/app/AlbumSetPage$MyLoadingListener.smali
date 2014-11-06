.class Lcom/android/gallery3d/app/AlbumSetPage$MyLoadingListener;
.super Ljava/lang/Object;
.source "AlbumSetPage.java"

# interfaces
.implements Lcom/android/gallery3d/app/LoadingListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/gallery3d/app/AlbumSetPage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MyLoadingListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/gallery3d/app/AlbumSetPage;


# direct methods
.method private constructor <init>(Lcom/android/gallery3d/app/AlbumSetPage;)V
    .locals 0
    .parameter

    .prologue
    .line 1454
    iput-object p1, p0, Lcom/android/gallery3d/app/AlbumSetPage$MyLoadingListener;->this$0:Lcom/android/gallery3d/app/AlbumSetPage;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/gallery3d/app/AlbumSetPage;Lcom/android/gallery3d/app/AlbumSetPage$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1454
    invoke-direct {p0, p1}, Lcom/android/gallery3d/app/AlbumSetPage$MyLoadingListener;-><init>(Lcom/android/gallery3d/app/AlbumSetPage;)V

    return-void
.end method


# virtual methods
.method public onLoadingFinished(Z)V
    .locals 2
    .parameter "loadingFailed"

    .prologue
    .line 1462
    iget-object v0, p0, Lcom/android/gallery3d/app/AlbumSetPage$MyLoadingListener;->this$0:Lcom/android/gallery3d/app/AlbumSetPage;

    #getter for: Lcom/android/gallery3d/app/AlbumSetPage;->mHiddenReload:Z
    invoke-static {v0}, Lcom/android/gallery3d/app/AlbumSetPage;->access$4400(Lcom/android/gallery3d/app/AlbumSetPage;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1463
    iget-object v0, p0, Lcom/android/gallery3d/app/AlbumSetPage$MyLoadingListener;->this$0:Lcom/android/gallery3d/app/AlbumSetPage;

    #calls: Lcom/android/gallery3d/app/AlbumSetPage;->initHiddenSet()V
    invoke-static {v0}, Lcom/android/gallery3d/app/AlbumSetPage;->access$4500(Lcom/android/gallery3d/app/AlbumSetPage;)V

    .line 1466
    :cond_0
    iget-object v0, p0, Lcom/android/gallery3d/app/AlbumSetPage$MyLoadingListener;->this$0:Lcom/android/gallery3d/app/AlbumSetPage;

    #getter for: Lcom/android/gallery3d/app/AlbumSetPage;->mPrivateReload:Z
    invoke-static {v0}, Lcom/android/gallery3d/app/AlbumSetPage;->access$4600(Lcom/android/gallery3d/app/AlbumSetPage;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1467
    iget-object v0, p0, Lcom/android/gallery3d/app/AlbumSetPage$MyLoadingListener;->this$0:Lcom/android/gallery3d/app/AlbumSetPage;

    #calls: Lcom/android/gallery3d/app/AlbumSetPage;->initPrivateSet()V
    invoke-static {v0}, Lcom/android/gallery3d/app/AlbumSetPage;->access$4700(Lcom/android/gallery3d/app/AlbumSetPage;)V

    .line 1470
    :cond_1
    iget-object v0, p0, Lcom/android/gallery3d/app/AlbumSetPage$MyLoadingListener;->this$0:Lcom/android/gallery3d/app/AlbumSetPage;

    const/4 v1, 0x1

    #calls: Lcom/android/gallery3d/app/AlbumSetPage;->clearLoadingBit(I)V
    invoke-static {v0, v1}, Lcom/android/gallery3d/app/AlbumSetPage;->access$4100(Lcom/android/gallery3d/app/AlbumSetPage;I)V

    .line 1471
    return-void
.end method

.method public onLoadingStarted()V
    .locals 2

    .prologue
    .line 1457
    iget-object v0, p0, Lcom/android/gallery3d/app/AlbumSetPage$MyLoadingListener;->this$0:Lcom/android/gallery3d/app/AlbumSetPage;

    const/4 v1, 0x1

    #calls: Lcom/android/gallery3d/app/AlbumSetPage;->setLoadingBit(I)V
    invoke-static {v0, v1}, Lcom/android/gallery3d/app/AlbumSetPage;->access$4300(Lcom/android/gallery3d/app/AlbumSetPage;I)V

    .line 1458
    return-void
.end method
