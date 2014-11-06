.class Lcom/android/gallery3d/app/AlbumPage$18;
.super Ljava/lang/Object;
.source "AlbumPage.java"

# interfaces
.implements Lcom/android/gallery3d/util/FutureListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/gallery3d/app/AlbumPage;->runShareTask()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/android/gallery3d/util/FutureListener",
        "<",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/gallery3d/app/AlbumPage;


# direct methods
.method constructor <init>(Lcom/android/gallery3d/app/AlbumPage;)V
    .locals 0
    .parameter

    .prologue
    .line 1602
    iput-object p1, p0, Lcom/android/gallery3d/app/AlbumPage$18;->this$0:Lcom/android/gallery3d/app/AlbumPage;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFutureDone(Lcom/android/gallery3d/util/Future;)V
    .locals 8
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/gallery3d/util/Future",
            "<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, future:Lcom/android/gallery3d/util/Future;,"Lcom/android/gallery3d/util/Future<Ljava/lang/Integer;>;"
    const/4 v7, 0x0

    .line 1606
    move-object v1, p1

    .line 1607
    .local v1, task:Lcom/android/gallery3d/util/Future;,"Lcom/android/gallery3d/util/Future<Ljava/lang/Integer;>;"
    if-nez v1, :cond_1

    .line 1614
    :cond_0
    :goto_0
    return-void

    .line 1608
    :cond_1
    invoke-interface {v1}, Lcom/android/gallery3d/util/Future;->isCancelled()Z

    move-result v2

    if-nez v2, :cond_0

    .line 1609
    iget-object v3, p0, Lcom/android/gallery3d/app/AlbumPage$18;->this$0:Lcom/android/gallery3d/app/AlbumPage;

    invoke-interface {v1}, Lcom/android/gallery3d/util/Future;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    #setter for: Lcom/android/gallery3d/app/AlbumPage;->mType:I
    invoke-static {v3, v2}, Lcom/android/gallery3d/app/AlbumPage;->access$3902(Lcom/android/gallery3d/app/AlbumPage;I)I

    .line 1610
    iget-object v2, p0, Lcom/android/gallery3d/app/AlbumPage$18;->this$0:Lcom/android/gallery3d/app/AlbumPage;

    #getter for: Lcom/android/gallery3d/app/AlbumPage;->mType:I
    invoke-static {v2}, Lcom/android/gallery3d/app/AlbumPage;->access$3900(Lcom/android/gallery3d/app/AlbumPage;)I

    move-result v2

    invoke-static {v2}, Lcom/android/gallery3d/ui/MenuExecutor;->getMimeType(I)Ljava/lang/String;

    move-result-object v0

    .line 1611
    .local v0, mimeType:Ljava/lang/String;
    iget-object v2, p0, Lcom/android/gallery3d/app/AlbumPage$18;->this$0:Lcom/android/gallery3d/app/AlbumPage;

    const/4 v3, 0x2

    new-array v3, v3, [Landroid/content/Intent;

    new-instance v4, Landroid/content/Intent;

    const-string v5, "android.intent.action.SEND_MULTIPLE"

    invoke-direct {v4, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v4

    aput-object v4, v3, v7

    const/4 v4, 0x1

    new-instance v5, Landroid/content/Intent;

    const-string v6, "android.intent.action.SEND"

    invoke-direct {v5, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v0}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v5

    aput-object v5, v3, v4

    #setter for: Lcom/android/gallery3d/app/AlbumPage;->mShareIntents:[Landroid/content/Intent;
    invoke-static {v2, v3}, Lcom/android/gallery3d/app/AlbumPage;->access$4702(Lcom/android/gallery3d/app/AlbumPage;[Landroid/content/Intent;)[Landroid/content/Intent;

    .line 1613
    iget-object v2, p0, Lcom/android/gallery3d/app/AlbumPage$18;->this$0:Lcom/android/gallery3d/app/AlbumPage;

    #getter for: Lcom/android/gallery3d/app/AlbumPage;->mShareIntents:[Landroid/content/Intent;
    invoke-static {v2}, Lcom/android/gallery3d/app/AlbumPage;->access$4700(Lcom/android/gallery3d/app/AlbumPage;)[Landroid/content/Intent;

    move-result-object v2

    aget-object v2, v2, v7

    const-string v3, "KEY_VI_NOT_WANT_VIDEO_ONLY"

    iget-object v4, p0, Lcom/android/gallery3d/app/AlbumPage$18;->this$0:Lcom/android/gallery3d/app/AlbumPage;

    #getter for: Lcom/android/gallery3d/app/AlbumPage;->notWantVideoOnly:Z
    invoke-static {v4}, Lcom/android/gallery3d/app/AlbumPage;->access$4600(Lcom/android/gallery3d/app/AlbumPage;)Z

    move-result v4

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    goto :goto_0
.end method
