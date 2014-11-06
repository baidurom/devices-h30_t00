.class Lcom/android/gallery3d/app/AlbumSetPage$15;
.super Ljava/lang/Object;
.source "AlbumSetPage.java"

# interfaces
.implements Lcom/android/gallery3d/app/ShareManager$ShareProcessListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/gallery3d/app/AlbumSetPage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/gallery3d/app/AlbumSetPage;


# direct methods
.method constructor <init>(Lcom/android/gallery3d/app/AlbumSetPage;)V
    .locals 0
    .parameter

    .prologue
    .line 1759
    iput-object p1, p0, Lcom/android/gallery3d/app/AlbumSetPage$15;->this$0:Lcom/android/gallery3d/app/AlbumSetPage;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getMenuExecutor()Lcom/android/gallery3d/ui/MenuExecutor;
    .locals 1

    .prologue
    .line 1770
    iget-object v0, p0, Lcom/android/gallery3d/app/AlbumSetPage$15;->this$0:Lcom/android/gallery3d/app/AlbumSetPage;

    #getter for: Lcom/android/gallery3d/app/AlbumSetPage;->mMenuExecutor:Lcom/android/gallery3d/ui/MenuExecutor;
    invoke-static {v0}, Lcom/android/gallery3d/app/AlbumSetPage;->access$5500(Lcom/android/gallery3d/app/AlbumSetPage;)Lcom/android/gallery3d/ui/MenuExecutor;

    move-result-object v0

    return-object v0
.end method

.method public onProcessDone()V
    .locals 0

    .prologue
    .line 1766
    return-void
.end method

.method public onProgress()V
    .locals 0

    .prologue
    .line 1762
    return-void
.end method
