.class Lcom/android/gallery3d/app/AlbumSetPage$5;
.super Ljava/lang/Object;
.source "AlbumSetPage.java"

# interfaces
.implements Lcom/android/gallery3d/app/LongTapManager$OnItemClickedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/gallery3d/app/AlbumSetPage;->onCreate(Landroid/os/Bundle;Landroid/os/Bundle;)V
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
    .line 563
    iput-object p1, p0, Lcom/android/gallery3d/app/AlbumSetPage$5;->this$0:Lcom/android/gallery3d/app/AlbumSetPage;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public OnItemClicked(II)Z
    .locals 12
    .parameter "resId"
    .parameter "slotIndex"

    .prologue
    const/16 v11, 0x1f4

    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 567
    const v4, 0x7f0d0279

    if-ne p1, v4, :cond_0

    .line 568
    iget-object v4, p0, Lcom/android/gallery3d/app/AlbumSetPage$5;->this$0:Lcom/android/gallery3d/app/AlbumSetPage;

    #calls: Lcom/android/gallery3d/app/AlbumSetPage;->showDetailWrapper()V
    invoke-static {v4}, Lcom/android/gallery3d/app/AlbumSetPage;->access$2300(Lcom/android/gallery3d/app/AlbumSetPage;)V

    move v4, v5

    .line 626
    :goto_0
    return v4

    .line 571
    :cond_0
    const v4, 0x7f0d026d

    if-ne p1, v4, :cond_8

    .line 573
    iget-object v4, p0, Lcom/android/gallery3d/app/AlbumSetPage$5;->this$0:Lcom/android/gallery3d/app/AlbumSetPage;

    iget-object v7, p0, Lcom/android/gallery3d/app/AlbumSetPage$5;->this$0:Lcom/android/gallery3d/app/AlbumSetPage;

    iget-object v7, v7, Lcom/android/gallery3d/app/ActivityState;->mActivity:Lcom/android/gallery3d/app/AbstractGalleryActivity;

    const v8, 0x7f0d047d

    invoke-virtual {v7, v8}, Lcom/android/gallery3d/app/AbstractGalleryActivity;->getString(I)Ljava/lang/String;

    move-result-object v7

    #setter for: Lcom/android/gallery3d/app/AlbumSetPage;->mLimitExceedTitle:Ljava/lang/String;
    invoke-static {v4, v7}, Lcom/android/gallery3d/app/AlbumSetPage;->access$2402(Lcom/android/gallery3d/app/AlbumSetPage;Ljava/lang/String;)Ljava/lang/String;

    .line 574
    iget-object v4, p0, Lcom/android/gallery3d/app/AlbumSetPage$5;->this$0:Lcom/android/gallery3d/app/AlbumSetPage;

    iget-object v7, p0, Lcom/android/gallery3d/app/AlbumSetPage$5;->this$0:Lcom/android/gallery3d/app/AlbumSetPage;

    iget-object v7, v7, Lcom/android/gallery3d/app/ActivityState;->mActivity:Lcom/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v7}, Lcom/android/gallery3d/app/AbstractGalleryActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f110011

    new-array v9, v5, [Ljava/lang/Object;

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v9, v6

    invoke-virtual {v7, v8, v11, v9}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    #setter for: Lcom/android/gallery3d/app/AlbumSetPage;->mLimitExceedMessage:Ljava/lang/String;
    invoke-static {v4, v7}, Lcom/android/gallery3d/app/AlbumSetPage;->access$2502(Lcom/android/gallery3d/app/AlbumSetPage;Ljava/lang/String;)Ljava/lang/String;

    .line 576
    iget-object v4, p0, Lcom/android/gallery3d/app/AlbumSetPage$5;->this$0:Lcom/android/gallery3d/app/AlbumSetPage;

    iget-object v7, p0, Lcom/android/gallery3d/app/AlbumSetPage$5;->this$0:Lcom/android/gallery3d/app/AlbumSetPage;

    iget-object v7, v7, Lcom/android/gallery3d/app/ActivityState;->mActivity:Lcom/android/gallery3d/app/AbstractGalleryActivity;

    const v8, 0x7f0d0251

    invoke-virtual {v7, v8}, Lcom/android/gallery3d/app/AbstractGalleryActivity;->getString(I)Ljava/lang/String;

    move-result-object v7

    #setter for: Lcom/android/gallery3d/app/AlbumSetPage;->mLimitExceedConifrm:Ljava/lang/String;
    invoke-static {v4, v7}, Lcom/android/gallery3d/app/AlbumSetPage;->access$2602(Lcom/android/gallery3d/app/AlbumSetPage;Ljava/lang/String;)Ljava/lang/String;

    .line 577
    iget-object v4, p0, Lcom/android/gallery3d/app/AlbumSetPage$5;->this$0:Lcom/android/gallery3d/app/AlbumSetPage;

    #getter for: Lcom/android/gallery3d/app/AlbumSetPage;->mShareFuture:Lcom/android/gallery3d/util/Future;
    invoke-static {v4}, Lcom/android/gallery3d/app/AlbumSetPage;->access$2700(Lcom/android/gallery3d/app/AlbumSetPage;)Lcom/android/gallery3d/util/Future;

    move-result-object v4

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/android/gallery3d/app/AlbumSetPage$5;->this$0:Lcom/android/gallery3d/app/AlbumSetPage;

    #getter for: Lcom/android/gallery3d/app/AlbumSetPage;->mShareFuture:Lcom/android/gallery3d/util/Future;
    invoke-static {v4}, Lcom/android/gallery3d/app/AlbumSetPage;->access$2700(Lcom/android/gallery3d/app/AlbumSetPage;)Lcom/android/gallery3d/util/Future;

    move-result-object v4

    invoke-interface {v4}, Lcom/android/gallery3d/util/Future;->get()Ljava/lang/Object;

    move-result-object v4

    if-nez v4, :cond_2

    :cond_1
    move v4, v5

    goto :goto_0

    .line 578
    :cond_2
    iget-object v4, p0, Lcom/android/gallery3d/app/AlbumSetPage$5;->this$0:Lcom/android/gallery3d/app/AlbumSetPage;

    #getter for: Lcom/android/gallery3d/app/AlbumSetPage;->mShareFuture:Lcom/android/gallery3d/util/Future;
    invoke-static {v4}, Lcom/android/gallery3d/app/AlbumSetPage;->access$2700(Lcom/android/gallery3d/app/AlbumSetPage;)Lcom/android/gallery3d/util/Future;

    move-result-object v4

    invoke-interface {v4}, Lcom/android/gallery3d/util/Future;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/gallery3d/app/AlbumSetPage$SmallShareItem;

    invoke-virtual {v4}, Lcom/android/gallery3d/app/AlbumSetPage$SmallShareItem;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 579
    .local v1, intent:Landroid/content/Intent;
    if-nez v1, :cond_3

    move v4, v5

    goto :goto_0

    .line 580
    :cond_3
    const-string v4, "limit-exceed"

    invoke-virtual {v1, v4, v6}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 581
    iget-object v4, p0, Lcom/android/gallery3d/app/AlbumSetPage$5;->this$0:Lcom/android/gallery3d/app/AlbumSetPage;

    iget-object v4, v4, Lcom/android/gallery3d/app/ActivityState;->mActivity:Lcom/android/gallery3d/app/AbstractGalleryActivity;

    iget-object v6, p0, Lcom/android/gallery3d/app/AlbumSetPage$5;->this$0:Lcom/android/gallery3d/app/AlbumSetPage;

    #getter for: Lcom/android/gallery3d/app/AlbumSetPage;->mLimitExceedTitle:Ljava/lang/String;
    invoke-static {v6}, Lcom/android/gallery3d/app/AlbumSetPage;->access$2400(Lcom/android/gallery3d/app/AlbumSetPage;)Ljava/lang/String;

    move-result-object v6

    iget-object v7, p0, Lcom/android/gallery3d/app/AlbumSetPage$5;->this$0:Lcom/android/gallery3d/app/AlbumSetPage;

    #getter for: Lcom/android/gallery3d/app/AlbumSetPage;->mLimitExceedMessage:Ljava/lang/String;
    invoke-static {v7}, Lcom/android/gallery3d/app/AlbumSetPage;->access$2500(Lcom/android/gallery3d/app/AlbumSetPage;)Ljava/lang/String;

    move-result-object v7

    iget-object v8, p0, Lcom/android/gallery3d/app/AlbumSetPage$5;->this$0:Lcom/android/gallery3d/app/AlbumSetPage;

    #getter for: Lcom/android/gallery3d/app/AlbumSetPage;->mLimitExceedConifrm:Ljava/lang/String;
    invoke-static {v8}, Lcom/android/gallery3d/app/AlbumSetPage;->access$2600(Lcom/android/gallery3d/app/AlbumSetPage;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v4, v6, v7, v8}, Lcom/android/gallery3d/util/GalleryUtils;->showLimitExceedDialog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move v4, v5

    .line 584
    goto/16 :goto_0

    .line 588
    :cond_4
    iget-object v4, p0, Lcom/android/gallery3d/app/AlbumSetPage$5;->this$0:Lcom/android/gallery3d/app/AlbumSetPage;

    #getter for: Lcom/android/gallery3d/app/AlbumSetPage;->mShareFuture:Lcom/android/gallery3d/util/Future;
    invoke-static {v4}, Lcom/android/gallery3d/app/AlbumSetPage;->access$2700(Lcom/android/gallery3d/app/AlbumSetPage;)Lcom/android/gallery3d/util/Future;

    move-result-object v4

    invoke-interface {v4}, Lcom/android/gallery3d/util/Future;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/gallery3d/app/AlbumSetPage$SmallShareItem;

    invoke-virtual {v4}, Lcom/android/gallery3d/app/AlbumSetPage$SmallShareItem;->getShareImagePathList()Ljava/util/ArrayList;

    move-result-object v3

    .line 589
    .local v3, shareItemList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    if-nez v3, :cond_5

    move v4, v5

    .line 590
    goto/16 :goto_0

    .line 592
    :cond_5
    iget-object v4, p0, Lcom/android/gallery3d/app/AlbumSetPage$5;->this$0:Lcom/android/gallery3d/app/AlbumSetPage;

    #getter for: Lcom/android/gallery3d/app/AlbumSetPage;->mPhotoShareItem:Lcom/android/gallery3d/app/PhotoShareItem;
    invoke-static {v4}, Lcom/android/gallery3d/app/AlbumSetPage;->access$2800(Lcom/android/gallery3d/app/AlbumSetPage;)Lcom/android/gallery3d/app/PhotoShareItem;

    move-result-object v4

    if-eqz v4, :cond_7

    .line 593
    iget-object v4, p0, Lcom/android/gallery3d/app/AlbumSetPage$5;->this$0:Lcom/android/gallery3d/app/AlbumSetPage;

    iget-object v4, v4, Lcom/android/gallery3d/app/ActivityState;->mActivity:Lcom/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v4}, Lcom/android/gallery3d/app/AbstractGalleryActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lcom/huawei/gallery3d/photoshare/utils/PhotoShareUtils;->isSupportPhotoShareFeature(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 594
    iget-object v4, p0, Lcom/android/gallery3d/app/AlbumSetPage$5;->this$0:Lcom/android/gallery3d/app/AlbumSetPage;

    #getter for: Lcom/android/gallery3d/app/AlbumSetPage;->mShareManager:Lcom/android/gallery3d/app/ShareManager;
    invoke-static {v4}, Lcom/android/gallery3d/app/AlbumSetPage;->access$2900(Lcom/android/gallery3d/app/AlbumSetPage;)Lcom/android/gallery3d/app/ShareManager;

    move-result-object v4

    iget-object v6, p0, Lcom/android/gallery3d/app/AlbumSetPage$5;->this$0:Lcom/android/gallery3d/app/AlbumSetPage;

    #getter for: Lcom/android/gallery3d/app/AlbumSetPage;->mPhotoShareItem:Lcom/android/gallery3d/app/PhotoShareItem;
    invoke-static {v6}, Lcom/android/gallery3d/app/AlbumSetPage;->access$2800(Lcom/android/gallery3d/app/AlbumSetPage;)Lcom/android/gallery3d/app/PhotoShareItem;

    move-result-object v6

    invoke-virtual {v4, v6}, Lcom/android/gallery3d/app/ShareManager;->addShareItem(Lcom/android/gallery3d/app/ShareManager$IShareItem;)Z

    .line 596
    :cond_6
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-nez v4, :cond_7

    .line 597
    iget-object v4, p0, Lcom/android/gallery3d/app/AlbumSetPage$5;->this$0:Lcom/android/gallery3d/app/AlbumSetPage;

    #getter for: Lcom/android/gallery3d/app/AlbumSetPage;->mShareManager:Lcom/android/gallery3d/app/ShareManager;
    invoke-static {v4}, Lcom/android/gallery3d/app/AlbumSetPage;->access$2900(Lcom/android/gallery3d/app/AlbumSetPage;)Lcom/android/gallery3d/app/ShareManager;

    move-result-object v4

    iget-object v6, p0, Lcom/android/gallery3d/app/AlbumSetPage$5;->this$0:Lcom/android/gallery3d/app/AlbumSetPage;

    #getter for: Lcom/android/gallery3d/app/AlbumSetPage;->mPhotoShareItem:Lcom/android/gallery3d/app/PhotoShareItem;
    invoke-static {v6}, Lcom/android/gallery3d/app/AlbumSetPage;->access$2800(Lcom/android/gallery3d/app/AlbumSetPage;)Lcom/android/gallery3d/app/PhotoShareItem;

    move-result-object v6

    invoke-virtual {v4, v6}, Lcom/android/gallery3d/app/ShareManager;->removeShareItem(Lcom/android/gallery3d/app/ShareManager$IShareItem;)V

    .line 604
    :cond_7
    iget-object v4, p0, Lcom/android/gallery3d/app/AlbumSetPage$5;->this$0:Lcom/android/gallery3d/app/AlbumSetPage;

    #getter for: Lcom/android/gallery3d/app/AlbumSetPage;->mShareManager:Lcom/android/gallery3d/app/ShareManager;
    invoke-static {v4}, Lcom/android/gallery3d/app/AlbumSetPage;->access$2900(Lcom/android/gallery3d/app/AlbumSetPage;)Lcom/android/gallery3d/app/ShareManager;

    move-result-object v4

    invoke-virtual {v4, v1}, Lcom/android/gallery3d/app/ShareManager;->setIntent(Landroid/content/Intent;)V

    .line 605
    iget-object v4, p0, Lcom/android/gallery3d/app/AlbumSetPage$5;->this$0:Lcom/android/gallery3d/app/AlbumSetPage;

    #getter for: Lcom/android/gallery3d/app/AlbumSetPage;->mShareManager:Lcom/android/gallery3d/app/ShareManager;
    invoke-static {v4}, Lcom/android/gallery3d/app/AlbumSetPage;->access$2900(Lcom/android/gallery3d/app/AlbumSetPage;)Lcom/android/gallery3d/app/ShareManager;

    move-result-object v4

    iget-object v6, p0, Lcom/android/gallery3d/app/AlbumSetPage$5;->this$0:Lcom/android/gallery3d/app/AlbumSetPage;

    #getter for: Lcom/android/gallery3d/app/AlbumSetPage;->mVoiceImageShareListener:Lcom/android/gallery3d/app/ShareManager$ShareProcessListener;
    invoke-static {v6}, Lcom/android/gallery3d/app/AlbumSetPage;->access$3000(Lcom/android/gallery3d/app/AlbumSetPage;)Lcom/android/gallery3d/app/ShareManager$ShareProcessListener;

    move-result-object v6

    invoke-virtual {v4, v6}, Lcom/android/gallery3d/app/ShareManager;->setSingleVoiceShareListener(Lcom/android/gallery3d/app/ShareManager$ShareProcessListener;)V

    .line 606
    iget-object v4, p0, Lcom/android/gallery3d/app/AlbumSetPage$5;->this$0:Lcom/android/gallery3d/app/AlbumSetPage;

    #getter for: Lcom/android/gallery3d/app/AlbumSetPage;->mShareManager:Lcom/android/gallery3d/app/ShareManager;
    invoke-static {v4}, Lcom/android/gallery3d/app/AlbumSetPage;->access$2900(Lcom/android/gallery3d/app/AlbumSetPage;)Lcom/android/gallery3d/app/ShareManager;

    move-result-object v4

    invoke-virtual {v4, v5}, Lcom/android/gallery3d/app/ShareManager;->setNeedReloadIntent(Z)V

    .line 607
    iget-object v4, p0, Lcom/android/gallery3d/app/AlbumSetPage$5;->this$0:Lcom/android/gallery3d/app/AlbumSetPage;

    #getter for: Lcom/android/gallery3d/app/AlbumSetPage;->mShareManager:Lcom/android/gallery3d/app/ShareManager;
    invoke-static {v4}, Lcom/android/gallery3d/app/AlbumSetPage;->access$2900(Lcom/android/gallery3d/app/AlbumSetPage;)Lcom/android/gallery3d/app/ShareManager;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/gallery3d/app/ShareManager;->show()V

    .line 608
    iget-object v4, p0, Lcom/android/gallery3d/app/AlbumSetPage$5;->this$0:Lcom/android/gallery3d/app/AlbumSetPage;

    #getter for: Lcom/android/gallery3d/app/AlbumSetPage;->mShareManager:Lcom/android/gallery3d/app/ShareManager;
    invoke-static {v4}, Lcom/android/gallery3d/app/AlbumSetPage;->access$2900(Lcom/android/gallery3d/app/AlbumSetPage;)Lcom/android/gallery3d/app/ShareManager;

    move-result-object v4

    iget-object v6, p0, Lcom/android/gallery3d/app/AlbumSetPage$5;->this$0:Lcom/android/gallery3d/app/AlbumSetPage;

    iget-object v6, v6, Lcom/android/gallery3d/app/ActivityState;->mActivity:Lcom/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v4, v6}, Lcom/android/gallery3d/app/ShareManager;->setGalleryActivity(Lcom/android/gallery3d/app/AbstractGalleryActivity;)V

    move v4, v5

    .line 609
    goto/16 :goto_0

    .line 611
    .end local v1           #intent:Landroid/content/Intent;
    .end local v3           #shareItemList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_8
    const v4, 0x7f0d027a

    if-ne p1, v4, :cond_9

    .line 612
    iget-object v4, p0, Lcom/android/gallery3d/app/AlbumSetPage$5;->this$0:Lcom/android/gallery3d/app/AlbumSetPage;

    #getter for: Lcom/android/gallery3d/app/AlbumSetPage;->mAlbumSetDataAdapter:Lcom/android/gallery3d/app/AlbumSetDataLoader;
    invoke-static {v4}, Lcom/android/gallery3d/app/AlbumSetPage;->access$3100(Lcom/android/gallery3d/app/AlbumSetPage;)Lcom/android/gallery3d/app/AlbumSetDataLoader;

    move-result-object v4

    invoke-virtual {v4, p2}, Lcom/android/gallery3d/app/AlbumSetDataLoader;->getMediaSet(I)Lcom/android/gallery3d/data/MediaSet;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/gallery3d/data/MediaSet;->getName()Ljava/lang/String;

    move-result-object v2

    .line 613
    .local v2, name:Ljava/lang/String;
    iget-object v4, p0, Lcom/android/gallery3d/app/AlbumSetPage$5;->this$0:Lcom/android/gallery3d/app/AlbumSetPage;

    iget-object v4, v4, Lcom/android/gallery3d/app/ActivityState;->mActivity:Lcom/android/gallery3d/app/AbstractGalleryActivity;

    const v7, 0x7f0d039e

    new-array v8, v5, [Ljava/lang/Object;

    aput-object v2, v8, v6

    invoke-virtual {v4, v7, v8}, Lcom/android/gallery3d/app/AbstractGalleryActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 614
    .local v0, confirmMsg:Ljava/lang/String;
    iget-object v4, p0, Lcom/android/gallery3d/app/AlbumSetPage$5;->this$0:Lcom/android/gallery3d/app/AlbumSetPage;

    iget-object v4, v4, Lcom/android/gallery3d/app/ActivityState;->mActivity:Lcom/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v4}, Lcom/android/gallery3d/app/AbstractGalleryActivity;->getAndroidContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4, v0, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    .line 616
    .end local v0           #confirmMsg:Ljava/lang/String;
    .end local v2           #name:Ljava/lang/String;
    :cond_9
    const v4, 0x7f0d027f

    if-ne p1, v4, :cond_a

    .line 617
    iget-object v4, p0, Lcom/android/gallery3d/app/AlbumSetPage$5;->this$0:Lcom/android/gallery3d/app/AlbumSetPage;

    #getter for: Lcom/android/gallery3d/app/AlbumSetPage;->mAlbumSetDataAdapter:Lcom/android/gallery3d/app/AlbumSetDataLoader;
    invoke-static {v4}, Lcom/android/gallery3d/app/AlbumSetPage;->access$3100(Lcom/android/gallery3d/app/AlbumSetPage;)Lcom/android/gallery3d/app/AlbumSetDataLoader;

    move-result-object v4

    invoke-virtual {v4, p2}, Lcom/android/gallery3d/app/AlbumSetDataLoader;->getMediaSet(I)Lcom/android/gallery3d/data/MediaSet;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/gallery3d/data/MediaSet;->getName()Ljava/lang/String;

    move-result-object v2

    .line 618
    .restart local v2       #name:Ljava/lang/String;
    iget-object v4, p0, Lcom/android/gallery3d/app/AlbumSetPage$5;->this$0:Lcom/android/gallery3d/app/AlbumSetPage;

    iget-object v4, v4, Lcom/android/gallery3d/app/ActivityState;->mActivity:Lcom/android/gallery3d/app/AbstractGalleryActivity;

    const v7, 0x7f0d0281

    new-array v8, v5, [Ljava/lang/Object;

    aput-object v2, v8, v6

    invoke-virtual {v4, v7, v8}, Lcom/android/gallery3d/app/AbstractGalleryActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 619
    .restart local v0       #confirmMsg:Ljava/lang/String;
    iget-object v4, p0, Lcom/android/gallery3d/app/AlbumSetPage$5;->this$0:Lcom/android/gallery3d/app/AlbumSetPage;

    iget-object v4, v4, Lcom/android/gallery3d/app/ActivityState;->mActivity:Lcom/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v4}, Lcom/android/gallery3d/app/AbstractGalleryActivity;->getAndroidContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4, v0, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    .line 621
    .end local v0           #confirmMsg:Ljava/lang/String;
    .end local v2           #name:Ljava/lang/String;
    :cond_a
    const v4, 0x7f0d0280

    if-ne p1, v4, :cond_b

    .line 622
    iget-object v4, p0, Lcom/android/gallery3d/app/AlbumSetPage$5;->this$0:Lcom/android/gallery3d/app/AlbumSetPage;

    #getter for: Lcom/android/gallery3d/app/AlbumSetPage;->mAlbumSetDataAdapter:Lcom/android/gallery3d/app/AlbumSetDataLoader;
    invoke-static {v4}, Lcom/android/gallery3d/app/AlbumSetPage;->access$3100(Lcom/android/gallery3d/app/AlbumSetPage;)Lcom/android/gallery3d/app/AlbumSetDataLoader;

    move-result-object v4

    invoke-virtual {v4, p2}, Lcom/android/gallery3d/app/AlbumSetDataLoader;->getMediaSet(I)Lcom/android/gallery3d/data/MediaSet;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/gallery3d/data/MediaSet;->getName()Ljava/lang/String;

    move-result-object v2

    .line 623
    .restart local v2       #name:Ljava/lang/String;
    iget-object v4, p0, Lcom/android/gallery3d/app/AlbumSetPage$5;->this$0:Lcom/android/gallery3d/app/AlbumSetPage;

    iget-object v4, v4, Lcom/android/gallery3d/app/ActivityState;->mActivity:Lcom/android/gallery3d/app/AbstractGalleryActivity;

    const v7, 0x7f0d0282

    new-array v8, v5, [Ljava/lang/Object;

    aput-object v2, v8, v6

    invoke-virtual {v4, v7, v8}, Lcom/android/gallery3d/app/AbstractGalleryActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 624
    .restart local v0       #confirmMsg:Ljava/lang/String;
    iget-object v4, p0, Lcom/android/gallery3d/app/AlbumSetPage$5;->this$0:Lcom/android/gallery3d/app/AlbumSetPage;

    iget-object v4, v4, Lcom/android/gallery3d/app/ActivityState;->mActivity:Lcom/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v4}, Lcom/android/gallery3d/app/AbstractGalleryActivity;->getAndroidContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4, v0, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    .end local v0           #confirmMsg:Ljava/lang/String;
    .end local v2           #name:Ljava/lang/String;
    :cond_b
    move v4, v6

    .line 626
    goto/16 :goto_0
.end method
