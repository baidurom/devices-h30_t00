.class Lcom/android/gallery3d/app/AlbumPage$9;
.super Ljava/lang/Object;
.source "AlbumPage.java"

# interfaces
.implements Lcom/android/gallery3d/util/FutureListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/gallery3d/app/AlbumPage;->startCheckAllSelectedItem()V
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
        "Ljava/lang/Boolean;",
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
    .line 1181
    iput-object p1, p0, Lcom/android/gallery3d/app/AlbumPage$9;->this$0:Lcom/android/gallery3d/app/AlbumPage;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFutureDone(Lcom/android/gallery3d/util/Future;)V
    .locals 4
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/gallery3d/util/Future",
            "<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1183
    .local p1, future:Lcom/android/gallery3d/util/Future;,"Lcom/android/gallery3d/util/Future<Ljava/lang/Boolean;>;"
    move-object v1, p1

    .line 1184
    .local v1, task:Lcom/android/gallery3d/util/Future;,"Lcom/android/gallery3d/util/Future<Ljava/lang/Boolean;>;"
    if-eqz v1, :cond_0

    invoke-interface {v1}, Lcom/android/gallery3d/util/Future;->isCancelled()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-interface {v1}, Lcom/android/gallery3d/util/Future;->get()Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_1

    .line 1193
    :cond_0
    :goto_0
    return-void

    .line 1185
    :cond_1
    invoke-interface {v1}, Lcom/android/gallery3d/util/Future;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 1186
    .local v0, isValid:Z
    if-nez v0, :cond_0

    .line 1187
    iget-object v2, p0, Lcom/android/gallery3d/app/AlbumPage$9;->this$0:Lcom/android/gallery3d/app/AlbumPage;

    #getter for: Lcom/android/gallery3d/app/AlbumPage;->mHandler:Landroid/os/Handler;
    invoke-static {v2}, Lcom/android/gallery3d/app/AlbumPage;->access$2600(Lcom/android/gallery3d/app/AlbumPage;)Landroid/os/Handler;

    move-result-object v2

    new-instance v3, Lcom/android/gallery3d/app/AlbumPage$9$1;

    invoke-direct {v3, p0}, Lcom/android/gallery3d/app/AlbumPage$9$1;-><init>(Lcom/android/gallery3d/app/AlbumPage$9;)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method
