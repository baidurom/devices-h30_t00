.class Lcom/android/gallery3d/app/PhotoDataAdapter$FullImageListener;
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
    name = "FullImageListener"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Runnable;",
        "Lcom/android/gallery3d/util/FutureListener",
        "<",
        "Landroid/graphics/BitmapRegionDecoder;",
        ">;"
    }
.end annotation


# instance fields
.field private mFuture:Lcom/android/gallery3d/util/Future;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/gallery3d/util/Future",
            "<",
            "Landroid/graphics/BitmapRegionDecoder;",
            ">;"
        }
    .end annotation
.end field

.field private mHeight:I

.field private final mPath:Lcom/android/gallery3d/data/Path;

.field private mWidth:I

.field final synthetic this$0:Lcom/android/gallery3d/app/PhotoDataAdapter;


# direct methods
.method public constructor <init>(Lcom/android/gallery3d/app/PhotoDataAdapter;Lcom/android/gallery3d/data/MediaItem;)V
    .locals 1
    .parameter
    .parameter "item"

    .prologue
    .line 1129
    iput-object p1, p0, Lcom/android/gallery3d/app/PhotoDataAdapter$FullImageListener;->this$0:Lcom/android/gallery3d/app/PhotoDataAdapter;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 1130
    invoke-virtual {p2}, Lcom/android/gallery3d/data/MediaItem;->getPath()Lcom/android/gallery3d/data/Path;

    move-result-object v0

    iput-object v0, p0, Lcom/android/gallery3d/app/PhotoDataAdapter$FullImageListener;->mPath:Lcom/android/gallery3d/data/Path;

    .line 1131
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
            "Landroid/graphics/BitmapRegionDecoder;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1135
    .local p1, future:Lcom/android/gallery3d/util/Future;,"Lcom/android/gallery3d/util/Future<Landroid/graphics/BitmapRegionDecoder;>;"
    iput-object p1, p0, Lcom/android/gallery3d/app/PhotoDataAdapter$FullImageListener;->mFuture:Lcom/android/gallery3d/util/Future;

    .line 1136
    invoke-interface {p1}, Lcom/android/gallery3d/util/Future;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/BitmapRegionDecoder;

    .line 1137
    .local v0, fullImage:Landroid/graphics/BitmapRegionDecoder;
    if-eqz v0, :cond_0

    .line 1138
    invoke-virtual {v0}, Landroid/graphics/BitmapRegionDecoder;->getWidth()I

    move-result v1

    iput v1, p0, Lcom/android/gallery3d/app/PhotoDataAdapter$FullImageListener;->mWidth:I

    .line 1139
    invoke-virtual {v0}, Landroid/graphics/BitmapRegionDecoder;->getHeight()I

    move-result v1

    iput v1, p0, Lcom/android/gallery3d/app/PhotoDataAdapter$FullImageListener;->mHeight:I

    .line 1141
    :cond_0
    iget-object v1, p0, Lcom/android/gallery3d/app/PhotoDataAdapter$FullImageListener;->this$0:Lcom/android/gallery3d/app/PhotoDataAdapter;

    #getter for: Lcom/android/gallery3d/app/PhotoDataAdapter;->mMainHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/android/gallery3d/app/PhotoDataAdapter;->access$900(Lcom/android/gallery3d/app/PhotoDataAdapter;)Landroid/os/Handler;

    move-result-object v1

    iget-object v2, p0, Lcom/android/gallery3d/app/PhotoDataAdapter$FullImageListener;->this$0:Lcom/android/gallery3d/app/PhotoDataAdapter;

    #getter for: Lcom/android/gallery3d/app/PhotoDataAdapter;->mMainHandler:Landroid/os/Handler;
    invoke-static {v2}, Lcom/android/gallery3d/app/PhotoDataAdapter;->access$900(Lcom/android/gallery3d/app/PhotoDataAdapter;)Landroid/os/Handler;

    move-result-object v2

    const/4 v3, 0x3

    invoke-virtual {v2, v3, p0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1143
    return-void
.end method

.method public run()V
    .locals 5

    .prologue
    .line 1147
    iget-object v0, p0, Lcom/android/gallery3d/app/PhotoDataAdapter$FullImageListener;->this$0:Lcom/android/gallery3d/app/PhotoDataAdapter;

    iget-object v1, p0, Lcom/android/gallery3d/app/PhotoDataAdapter$FullImageListener;->mPath:Lcom/android/gallery3d/data/Path;

    iget-object v2, p0, Lcom/android/gallery3d/app/PhotoDataAdapter$FullImageListener;->mFuture:Lcom/android/gallery3d/util/Future;

    iget v3, p0, Lcom/android/gallery3d/app/PhotoDataAdapter$FullImageListener;->mWidth:I

    iget v4, p0, Lcom/android/gallery3d/app/PhotoDataAdapter$FullImageListener;->mHeight:I

    #calls: Lcom/android/gallery3d/app/PhotoDataAdapter;->updateFullImage(Lcom/android/gallery3d/data/Path;Lcom/android/gallery3d/util/Future;II)V
    invoke-static {v0, v1, v2, v3, v4}, Lcom/android/gallery3d/app/PhotoDataAdapter;->access$1000(Lcom/android/gallery3d/app/PhotoDataAdapter;Lcom/android/gallery3d/data/Path;Lcom/android/gallery3d/util/Future;II)V

    .line 1148
    return-void
.end method
