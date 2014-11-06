.class public Lcom/android/gallery3d/ui/AlbumSetSlidingWindow$AlbumLabelLoader;
.super Lcom/android/gallery3d/ui/BitmapLoader;
.source "AlbumSetSlidingWindow.java"

# interfaces
.implements Lcom/android/gallery3d/ui/AlbumSetSlidingWindow$EntryUpdater;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/gallery3d/ui/AlbumSetSlidingWindow;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "AlbumLabelLoader"
.end annotation


# instance fields
.field private final mSlotIndex:I

.field private final mSourceType:I

.field private final mStyleType:Lcom/android/gallery3d/ui/AlbumLabelMaker$StyleType;

.field private final mTitle:Ljava/lang/String;

.field private final mTotalCount:I

.field final synthetic this$0:Lcom/android/gallery3d/ui/AlbumSetSlidingWindow;


# direct methods
.method public constructor <init>(Lcom/android/gallery3d/ui/AlbumSetSlidingWindow;ILjava/lang/String;IILcom/android/gallery3d/ui/AlbumLabelMaker$StyleType;)V
    .locals 0
    .parameter
    .parameter "slotIndex"
    .parameter "title"
    .parameter "totalCount"
    .parameter "sourceType"
    .parameter "styleType"

    .prologue
    .line 595
    iput-object p1, p0, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow$AlbumLabelLoader;->this$0:Lcom/android/gallery3d/ui/AlbumSetSlidingWindow;

    invoke-direct {p0}, Lcom/android/gallery3d/ui/BitmapLoader;-><init>()V

    .line 596
    iput p2, p0, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow$AlbumLabelLoader;->mSlotIndex:I

    .line 597
    iput-object p3, p0, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow$AlbumLabelLoader;->mTitle:Ljava/lang/String;

    .line 598
    iput p4, p0, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow$AlbumLabelLoader;->mTotalCount:I

    .line 599
    iput p5, p0, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow$AlbumLabelLoader;->mSourceType:I

    .line 600
    iput-object p6, p0, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow$AlbumLabelLoader;->mStyleType:Lcom/android/gallery3d/ui/AlbumLabelMaker$StyleType;

    .line 601
    return-void
.end method


# virtual methods
.method protected onLoadComplete(Landroid/graphics/Bitmap;)V
    .locals 2
    .parameter "bitmap"

    .prologue
    .line 616
    iget-object v0, p0, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow$AlbumLabelLoader;->this$0:Lcom/android/gallery3d/ui/AlbumSetSlidingWindow;

    #getter for: Lcom/android/gallery3d/ui/AlbumSetSlidingWindow;->mHandler:Lcom/android/gallery3d/ui/SynchronizedHandler;
    invoke-static {v0}, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow;->access$600(Lcom/android/gallery3d/ui/AlbumSetSlidingWindow;)Lcom/android/gallery3d/ui/SynchronizedHandler;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1, p0}, Lcom/android/gallery3d/ui/SynchronizedHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 617
    return-void
.end method

.method protected recycleBitmap(Landroid/graphics/Bitmap;)V
    .locals 1
    .parameter "bitmap"

    .prologue
    .line 611
    iget-object v0, p0, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow$AlbumLabelLoader;->this$0:Lcom/android/gallery3d/ui/AlbumSetSlidingWindow;

    #getter for: Lcom/android/gallery3d/ui/AlbumSetSlidingWindow;->mLabelMaker:Lcom/android/gallery3d/ui/AlbumLabelMaker;
    invoke-static {v0}, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow;->access$1100(Lcom/android/gallery3d/ui/AlbumSetSlidingWindow;)Lcom/android/gallery3d/ui/AlbumLabelMaker;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/gallery3d/ui/AlbumLabelMaker;->recycleLabel(Landroid/graphics/Bitmap;)V

    .line 612
    return-void
.end method

.method protected submitBitmapTask(Lcom/android/gallery3d/util/FutureListener;)Lcom/android/gallery3d/util/Future;
    .locals 6
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/gallery3d/util/FutureListener",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;)",
            "Lcom/android/gallery3d/util/Future",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation

    .prologue
    .line 605
    .local p1, l:Lcom/android/gallery3d/util/FutureListener;,"Lcom/android/gallery3d/util/FutureListener<Landroid/graphics/Bitmap;>;"
    iget-object v0, p0, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow$AlbumLabelLoader;->this$0:Lcom/android/gallery3d/ui/AlbumSetSlidingWindow;

    #getter for: Lcom/android/gallery3d/ui/AlbumSetSlidingWindow;->mThreadPool:Lcom/android/gallery3d/util/ThreadPool;
    invoke-static {v0}, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow;->access$500(Lcom/android/gallery3d/ui/AlbumSetSlidingWindow;)Lcom/android/gallery3d/util/ThreadPool;

    move-result-object v0

    iget-object v1, p0, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow$AlbumLabelLoader;->this$0:Lcom/android/gallery3d/ui/AlbumSetSlidingWindow;

    #getter for: Lcom/android/gallery3d/ui/AlbumSetSlidingWindow;->mLabelMaker:Lcom/android/gallery3d/ui/AlbumLabelMaker;
    invoke-static {v1}, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow;->access$1100(Lcom/android/gallery3d/ui/AlbumSetSlidingWindow;)Lcom/android/gallery3d/ui/AlbumLabelMaker;

    move-result-object v1

    iget-object v2, p0, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow$AlbumLabelLoader;->mTitle:Ljava/lang/String;

    iget v3, p0, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow$AlbumLabelLoader;->mTotalCount:I

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    iget v4, p0, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow$AlbumLabelLoader;->mSourceType:I

    iget-object v5, p0, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow$AlbumLabelLoader;->mStyleType:Lcom/android/gallery3d/ui/AlbumLabelMaker$StyleType;

    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/android/gallery3d/ui/AlbumLabelMaker;->requestLabel(Ljava/lang/String;Ljava/lang/String;ILcom/android/gallery3d/ui/AlbumLabelMaker$StyleType;)Lcom/android/gallery3d/util/ThreadPool$Job;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Lcom/android/gallery3d/util/ThreadPool;->submit(Lcom/android/gallery3d/util/ThreadPool$Job;Lcom/android/gallery3d/util/FutureListener;)Lcom/android/gallery3d/util/Future;

    move-result-object v0

    return-object v0
.end method

.method public updateEntry()V
    .locals 6

    .prologue
    .line 621
    invoke-virtual {p0}, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow$AlbumLabelLoader;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 622
    .local v0, bitmap:Landroid/graphics/Bitmap;
    if-nez v0, :cond_1

    .line 645
    :cond_0
    :goto_0
    return-void

    .line 624
    :cond_1
    iget-object v3, p0, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow$AlbumLabelLoader;->this$0:Lcom/android/gallery3d/ui/AlbumSetSlidingWindow;

    #getter for: Lcom/android/gallery3d/ui/AlbumSetSlidingWindow;->mData:[Lcom/android/gallery3d/ui/AlbumSetSlidingWindow$AlbumSetEntry;
    invoke-static {v3}, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow;->access$400(Lcom/android/gallery3d/ui/AlbumSetSlidingWindow;)[Lcom/android/gallery3d/ui/AlbumSetSlidingWindow$AlbumSetEntry;

    move-result-object v3

    iget v4, p0, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow$AlbumLabelLoader;->mSlotIndex:I

    iget-object v5, p0, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow$AlbumLabelLoader;->this$0:Lcom/android/gallery3d/ui/AlbumSetSlidingWindow;

    #getter for: Lcom/android/gallery3d/ui/AlbumSetSlidingWindow;->mData:[Lcom/android/gallery3d/ui/AlbumSetSlidingWindow$AlbumSetEntry;
    invoke-static {v5}, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow;->access$400(Lcom/android/gallery3d/ui/AlbumSetSlidingWindow;)[Lcom/android/gallery3d/ui/AlbumSetSlidingWindow$AlbumSetEntry;

    move-result-object v5

    array-length v5, v5

    rem-int/2addr v4, v5

    aget-object v1, v3, v4

    .line 626
    .local v1, entry:Lcom/android/gallery3d/ui/AlbumSetSlidingWindow$AlbumSetEntry;
    if-eqz v1, :cond_0

    .line 628
    new-instance v2, Lcom/android/gallery3d/ui/BitmapTexture;

    invoke-direct {v2, v0}, Lcom/android/gallery3d/ui/BitmapTexture;-><init>(Landroid/graphics/Bitmap;)V

    .line 629
    .local v2, texture:Lcom/android/gallery3d/ui/BitmapTexture;
    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/android/gallery3d/ui/BitmapTexture;->setOpaque(Z)V

    .line 631
    iget-object v3, p0, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow$AlbumLabelLoader;->mStyleType:Lcom/android/gallery3d/ui/AlbumLabelMaker$StyleType;

    sget-object v4, Lcom/android/gallery3d/ui/AlbumLabelMaker$StyleType;->SELECT_STYLE:Lcom/android/gallery3d/ui/AlbumLabelMaker$StyleType;

    if-ne v3, v4, :cond_3

    .line 632
    iput-object v2, v1, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow$AlbumSetEntry;->selectLabelTexture:Lcom/android/gallery3d/ui/BitmapTexture;

    .line 637
    :goto_1
    iget-object v3, p0, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow$AlbumLabelLoader;->this$0:Lcom/android/gallery3d/ui/AlbumSetSlidingWindow;

    iget v4, p0, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow$AlbumLabelLoader;->mSlotIndex:I

    invoke-virtual {v3, v4}, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow;->isActiveSlot(I)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 638
    iget-object v3, p0, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow$AlbumLabelLoader;->this$0:Lcom/android/gallery3d/ui/AlbumSetSlidingWindow;

    #getter for: Lcom/android/gallery3d/ui/AlbumSetSlidingWindow;->mLabelUploader:Lcom/android/gallery3d/ui/TextureUploader;
    invoke-static {v3}, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow;->access$1200(Lcom/android/gallery3d/ui/AlbumSetSlidingWindow;)Lcom/android/gallery3d/ui/TextureUploader;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/android/gallery3d/ui/TextureUploader;->addFgTexture(Lcom/android/gallery3d/ui/UploadedTexture;)V

    .line 639
    iget-object v3, p0, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow$AlbumLabelLoader;->this$0:Lcom/android/gallery3d/ui/AlbumSetSlidingWindow;

    invoke-static {v3}, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow;->access$806(Lcom/android/gallery3d/ui/AlbumSetSlidingWindow;)I

    .line 640
    iget-object v3, p0, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow$AlbumLabelLoader;->this$0:Lcom/android/gallery3d/ui/AlbumSetSlidingWindow;

    #getter for: Lcom/android/gallery3d/ui/AlbumSetSlidingWindow;->mActiveRequestCount:I
    invoke-static {v3}, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow;->access$800(Lcom/android/gallery3d/ui/AlbumSetSlidingWindow;)I

    move-result v3

    if-nez v3, :cond_2

    iget-object v3, p0, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow$AlbumLabelLoader;->this$0:Lcom/android/gallery3d/ui/AlbumSetSlidingWindow;

    #calls: Lcom/android/gallery3d/ui/AlbumSetSlidingWindow;->requestNonactiveImages()V
    invoke-static {v3}, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow;->access$900(Lcom/android/gallery3d/ui/AlbumSetSlidingWindow;)V

    .line 641
    :cond_2
    iget-object v3, p0, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow$AlbumLabelLoader;->this$0:Lcom/android/gallery3d/ui/AlbumSetSlidingWindow;

    #getter for: Lcom/android/gallery3d/ui/AlbumSetSlidingWindow;->mListener:Lcom/android/gallery3d/ui/AlbumSetSlidingWindow$Listener;
    invoke-static {v3}, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow;->access$1000(Lcom/android/gallery3d/ui/AlbumSetSlidingWindow;)Lcom/android/gallery3d/ui/AlbumSetSlidingWindow$Listener;

    move-result-object v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow$AlbumLabelLoader;->this$0:Lcom/android/gallery3d/ui/AlbumSetSlidingWindow;

    #getter for: Lcom/android/gallery3d/ui/AlbumSetSlidingWindow;->mListener:Lcom/android/gallery3d/ui/AlbumSetSlidingWindow$Listener;
    invoke-static {v3}, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow;->access$1000(Lcom/android/gallery3d/ui/AlbumSetSlidingWindow;)Lcom/android/gallery3d/ui/AlbumSetSlidingWindow$Listener;

    move-result-object v3

    invoke-interface {v3}, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow$Listener;->onContentChanged()V

    goto :goto_0

    .line 634
    :cond_3
    iput-object v2, v1, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow$AlbumSetEntry;->labelTexture:Lcom/android/gallery3d/ui/BitmapTexture;

    goto :goto_1

    .line 643
    :cond_4
    iget-object v3, p0, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow$AlbumLabelLoader;->this$0:Lcom/android/gallery3d/ui/AlbumSetSlidingWindow;

    #getter for: Lcom/android/gallery3d/ui/AlbumSetSlidingWindow;->mLabelUploader:Lcom/android/gallery3d/ui/TextureUploader;
    invoke-static {v3}, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow;->access$1200(Lcom/android/gallery3d/ui/AlbumSetSlidingWindow;)Lcom/android/gallery3d/ui/TextureUploader;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/android/gallery3d/ui/TextureUploader;->addBgTexture(Lcom/android/gallery3d/ui/UploadedTexture;)V

    goto :goto_0
.end method
