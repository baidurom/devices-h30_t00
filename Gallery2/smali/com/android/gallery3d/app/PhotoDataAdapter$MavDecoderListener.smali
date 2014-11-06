.class Lcom/android/gallery3d/app/PhotoDataAdapter$MavDecoderListener;
.super Ljava/lang/Object;
.source "PhotoDataAdapter.java"

# interfaces
.implements Ljava/lang/Runnable;
.implements Lcom/android/gallery3d/util/FutureListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/gallery3d/app/PhotoDataAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MavDecoderListener"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Runnable;",
        "Lcom/android/gallery3d/util/FutureListener",
        "<",
        "Lcom/android/gallery3d/util/GalleryUtils$DataBundle;",
        ">;"
    }
.end annotation


# instance fields
.field private mFuture:Lcom/android/gallery3d/util/Future;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/gallery3d/util/Future",
            "<",
            "Lcom/android/gallery3d/util/GalleryUtils$DataBundle;",
            ">;"
        }
    .end annotation
.end field

.field private mItem:Lcom/android/gallery3d/data/MediaItem;

.field private final mPath:Lcom/android/gallery3d/data/Path;

.field private mType:I

.field final synthetic this$0:Lcom/android/gallery3d/app/PhotoDataAdapter;


# direct methods
.method public constructor <init>(Lcom/android/gallery3d/app/PhotoDataAdapter;Lcom/android/gallery3d/data/Path;Lcom/android/gallery3d/data/MediaItem;I)V
    .locals 0
    .parameter
    .parameter "path"
    .parameter "item"
    .parameter "type"

    .prologue
    .line 1513
    iput-object p1, p0, Lcom/android/gallery3d/app/PhotoDataAdapter$MavDecoderListener;->this$0:Lcom/android/gallery3d/app/PhotoDataAdapter;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 1514
    iput-object p2, p0, Lcom/android/gallery3d/app/PhotoDataAdapter$MavDecoderListener;->mPath:Lcom/android/gallery3d/data/Path;

    .line 1515
    iput p4, p0, Lcom/android/gallery3d/app/PhotoDataAdapter$MavDecoderListener;->mType:I

    .line 1516
    iput-object p3, p0, Lcom/android/gallery3d/app/PhotoDataAdapter$MavDecoderListener;->mItem:Lcom/android/gallery3d/data/MediaItem;

    .line 1517
    return-void
.end method


# virtual methods
.method public onFutureDone(Lcom/android/gallery3d/util/Future;)V
    .locals 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/gallery3d/util/Future",
            "<",
            "Lcom/android/gallery3d/util/GalleryUtils$DataBundle;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1521
    .local p1, future:Lcom/android/gallery3d/util/Future;,"Lcom/android/gallery3d/util/Future<Lcom/android/gallery3d/util/GalleryUtils$DataBundle;>;"
    const-string v0, "PhotoDataAdapter"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "MavDecoderListener.onFutureDone: future="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {p1}, Lcom/android/gallery3d/util/Future;->get()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/gallery3d/app/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1522
    iput-object p1, p0, Lcom/android/gallery3d/app/PhotoDataAdapter$MavDecoderListener;->mFuture:Lcom/android/gallery3d/util/Future;

    .line 1523
    invoke-static {}, Lcom/android/gallery3d/app/PhotoDataAdapter;->access$3300()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/gallery3d/app/PhotoDataAdapter$MavDecoderListener;->mFuture:Lcom/android/gallery3d/util/Future;

    invoke-interface {v0}, Lcom/android/gallery3d/util/Future;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1524
    iget-object v0, p0, Lcom/android/gallery3d/app/PhotoDataAdapter$MavDecoderListener;->this$0:Lcom/android/gallery3d/app/PhotoDataAdapter;

    #getter for: Lcom/android/gallery3d/app/PhotoDataAdapter;->mMainHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/gallery3d/app/PhotoDataAdapter;->access$900(Lcom/android/gallery3d/app/PhotoDataAdapter;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/android/gallery3d/app/PhotoDataAdapter$MavDecoderListener;->this$0:Lcom/android/gallery3d/app/PhotoDataAdapter;

    #getter for: Lcom/android/gallery3d/app/PhotoDataAdapter;->mMainHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/android/gallery3d/app/PhotoDataAdapter;->access$900(Lcom/android/gallery3d/app/PhotoDataAdapter;)Landroid/os/Handler;

    move-result-object v1

    const/4 v2, 0x3

    invoke-virtual {v1, v2, p0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1527
    :cond_0
    return-void
.end method

.method public run()V
    .locals 5

    .prologue
    .line 1531
    iget-object v0, p0, Lcom/android/gallery3d/app/PhotoDataAdapter$MavDecoderListener;->this$0:Lcom/android/gallery3d/app/PhotoDataAdapter;

    iget-object v1, p0, Lcom/android/gallery3d/app/PhotoDataAdapter$MavDecoderListener;->mPath:Lcom/android/gallery3d/data/Path;

    iget-object v2, p0, Lcom/android/gallery3d/app/PhotoDataAdapter$MavDecoderListener;->mFuture:Lcom/android/gallery3d/util/Future;

    iget-object v3, p0, Lcom/android/gallery3d/app/PhotoDataAdapter$MavDecoderListener;->mItem:Lcom/android/gallery3d/data/MediaItem;

    iget v4, p0, Lcom/android/gallery3d/app/PhotoDataAdapter$MavDecoderListener;->mType:I

    #calls: Lcom/android/gallery3d/app/PhotoDataAdapter;->updateMavDecoder(Lcom/android/gallery3d/data/Path;Lcom/android/gallery3d/util/Future;Lcom/android/gallery3d/data/MediaItem;I)V
    invoke-static {v0, v1, v2, v3, v4}, Lcom/android/gallery3d/app/PhotoDataAdapter;->access$3400(Lcom/android/gallery3d/app/PhotoDataAdapter;Lcom/android/gallery3d/data/Path;Lcom/android/gallery3d/util/Future;Lcom/android/gallery3d/data/MediaItem;I)V

    .line 1532
    return-void
.end method
