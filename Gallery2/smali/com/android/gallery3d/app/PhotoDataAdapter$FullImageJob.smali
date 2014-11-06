.class Lcom/android/gallery3d/app/PhotoDataAdapter$FullImageJob;
.super Ljava/lang/Object;
.source "PhotoDataAdapter.java"

# interfaces
.implements Lcom/android/gallery3d/util/ThreadPool$Job;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/gallery3d/app/PhotoDataAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "FullImageJob"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/android/gallery3d/util/ThreadPool$Job",
        "<",
        "Landroid/graphics/BitmapRegionDecoder;",
        ">;"
    }
.end annotation


# instance fields
.field private mItem:Lcom/android/gallery3d/data/MediaItem;

.field final synthetic this$0:Lcom/android/gallery3d/app/PhotoDataAdapter;


# direct methods
.method public constructor <init>(Lcom/android/gallery3d/app/PhotoDataAdapter;Lcom/android/gallery3d/data/MediaItem;)V
    .locals 0
    .parameter
    .parameter "item"

    .prologue
    .line 862
    iput-object p1, p0, Lcom/android/gallery3d/app/PhotoDataAdapter$FullImageJob;->this$0:Lcom/android/gallery3d/app/PhotoDataAdapter;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 863
    iput-object p2, p0, Lcom/android/gallery3d/app/PhotoDataAdapter$FullImageJob;->mItem:Lcom/android/gallery3d/data/MediaItem;

    .line 864
    return-void
.end method


# virtual methods
.method public run(Lcom/android/gallery3d/util/ThreadPool$JobContext;)Landroid/graphics/BitmapRegionDecoder;
    .locals 4
    .parameter "jc"

    .prologue
    const/4 v1, 0x0

    .line 868
    iget-object v2, p0, Lcom/android/gallery3d/app/PhotoDataAdapter$FullImageJob;->this$0:Lcom/android/gallery3d/app/PhotoDataAdapter;

    iget-object v3, p0, Lcom/android/gallery3d/app/PhotoDataAdapter$FullImageJob;->mItem:Lcom/android/gallery3d/data/MediaItem;

    #calls: Lcom/android/gallery3d/app/PhotoDataAdapter;->isTemporaryItem(Lcom/android/gallery3d/data/MediaItem;)Z
    invoke-static {v2, v3}, Lcom/android/gallery3d/app/PhotoDataAdapter;->access$600(Lcom/android/gallery3d/app/PhotoDataAdapter;Lcom/android/gallery3d/data/MediaItem;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 877
    :cond_0
    :goto_0
    return-object v1

    .line 873
    :cond_1
    iget-object v2, p0, Lcom/android/gallery3d/app/PhotoDataAdapter$FullImageJob;->mItem:Lcom/android/gallery3d/data/MediaItem;

    invoke-virtual {v2}, Lcom/android/gallery3d/data/MediaItem;->requestLargeImage()Lcom/android/gallery3d/util/ThreadPool$Job;

    move-result-object v0

    .line 874
    .local v0, job:Lcom/android/gallery3d/util/ThreadPool$Job;,"Lcom/android/gallery3d/util/ThreadPool$Job<Landroid/graphics/BitmapRegionDecoder;>;"
    if-eqz v0, :cond_0

    .line 877
    invoke-interface {v0, p1}, Lcom/android/gallery3d/util/ThreadPool$Job;->run(Lcom/android/gallery3d/util/ThreadPool$JobContext;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/BitmapRegionDecoder;

    goto :goto_0
.end method

.method public bridge synthetic run(Lcom/android/gallery3d/util/ThreadPool$JobContext;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 859
    invoke-virtual {p0, p1}, Lcom/android/gallery3d/app/PhotoDataAdapter$FullImageJob;->run(Lcom/android/gallery3d/util/ThreadPool$JobContext;)Landroid/graphics/BitmapRegionDecoder;

    move-result-object v0

    return-object v0
.end method
