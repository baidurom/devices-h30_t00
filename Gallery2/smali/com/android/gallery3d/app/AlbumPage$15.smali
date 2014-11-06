.class Lcom/android/gallery3d/app/AlbumPage$15;
.super Ljava/lang/Object;
.source "AlbumPage.java"

# interfaces
.implements Lcom/android/gallery3d/ui/ShareExecutor$UserVIListener;


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

.field final synthetic val$items:Ljava/util/ArrayList;

.field final synthetic val$shouldAddWaterMark:Z


# direct methods
.method constructor <init>(Lcom/android/gallery3d/app/AlbumPage;ZLjava/util/ArrayList;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1485
    iput-object p1, p0, Lcom/android/gallery3d/app/AlbumPage$15;->this$0:Lcom/android/gallery3d/app/AlbumPage;

    iput-boolean p2, p0, Lcom/android/gallery3d/app/AlbumPage$15;->val$shouldAddWaterMark:Z

    iput-object p3, p0, Lcom/android/gallery3d/app/AlbumPage$15;->val$items:Ljava/util/ArrayList;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onUserConfirm(Z)V
    .locals 3
    .parameter "shouldConvert"

    .prologue
    .line 1488
    iget-object v1, p0, Lcom/android/gallery3d/app/AlbumPage$15;->this$0:Lcom/android/gallery3d/app/AlbumPage;

    if-nez p1, :cond_0

    iget-boolean v0, p0, Lcom/android/gallery3d/app/AlbumPage$15;->val$shouldAddWaterMark:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    iget-object v2, p0, Lcom/android/gallery3d/app/AlbumPage$15;->val$items:Ljava/util/ArrayList;

    #calls: Lcom/android/gallery3d/app/AlbumPage;->handleOperationShareDoneInternal(ZZLjava/util/ArrayList;)V
    invoke-static {v1, p1, v0, v2}, Lcom/android/gallery3d/app/AlbumPage;->access$4400(Lcom/android/gallery3d/app/AlbumPage;ZZLjava/util/ArrayList;)V

    .line 1489
    return-void

    .line 1488
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
