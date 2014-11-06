.class Lcom/android/gallery3d/app/AlbumPage$12;
.super Ljava/lang/Object;
.source "AlbumPage.java"

# interfaces
.implements Lcom/android/gallery3d/app/ShareManager$ShareProcessListener;


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
    .line 1373
    iput-object p1, p0, Lcom/android/gallery3d/app/AlbumPage$12;->this$0:Lcom/android/gallery3d/app/AlbumPage;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getMenuExecutor()Lcom/android/gallery3d/ui/MenuExecutor;
    .locals 1

    .prologue
    .line 1384
    iget-object v0, p0, Lcom/android/gallery3d/app/AlbumPage$12;->this$0:Lcom/android/gallery3d/app/AlbumPage;

    #getter for: Lcom/android/gallery3d/app/AlbumPage;->mMenuExecutor:Lcom/android/gallery3d/ui/MenuExecutor;
    invoke-static {v0}, Lcom/android/gallery3d/app/AlbumPage;->access$4100(Lcom/android/gallery3d/app/AlbumPage;)Lcom/android/gallery3d/ui/MenuExecutor;

    move-result-object v0

    return-object v0
.end method

.method public onProcessDone()V
    .locals 0

    .prologue
    .line 1380
    return-void
.end method

.method public onProgress()V
    .locals 0

    .prologue
    .line 1376
    return-void
.end method
