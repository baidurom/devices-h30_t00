.class Lcom/huawei/gallery3d/freeshare/FreeShareView$2;
.super Ljava/lang/Object;
.source "FreeShareView.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/huawei/gallery3d/freeshare/FreeShareView;->initializeData()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/huawei/gallery3d/freeshare/FreeShareView;


# direct methods
.method constructor <init>(Lcom/huawei/gallery3d/freeshare/FreeShareView;)V
    .locals 0
    .parameter

    .prologue
    .line 208
    iput-object p1, p0, Lcom/huawei/gallery3d/freeshare/FreeShareView$2;->this$0:Lcom/huawei/gallery3d/freeshare/FreeShareView;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 10
    .parameter
    .parameter "arg1"
    .parameter "arg2"
    .parameter "arg3"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .local p1, arg0:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    const/4 v9, 0x0

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 213
    iget-object v4, p0, Lcom/huawei/gallery3d/freeshare/FreeShareView$2;->this$0:Lcom/huawei/gallery3d/freeshare/FreeShareView;

    #getter for: Lcom/huawei/gallery3d/freeshare/FreeShareView;->mDevices:Ljava/util/List;
    invoke-static {v4}, Lcom/huawei/gallery3d/freeshare/FreeShareView;->access$300(Lcom/huawei/gallery3d/freeshare/FreeShareView;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/huawei/android/freeshare/client/device/DeviceInfo;

    .line 214
    .local v1, deviceInfo:Lcom/huawei/android/freeshare/client/device/DeviceInfo;
    const-string v4, "FreeShare"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "onItemClick "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v1}, Lcom/huawei/android/freeshare/client/device/DeviceInfo;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/gallery3d/app/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 215
    iget-object v4, p0, Lcom/huawei/gallery3d/freeshare/FreeShareView$2;->this$0:Lcom/huawei/gallery3d/freeshare/FreeShareView;

    #getter for: Lcom/huawei/gallery3d/freeshare/FreeShareView;->mDeviceAdapter:Lcom/huawei/gallery3d/freeshare/FreeShareAdapter;
    invoke-static {v4}, Lcom/huawei/gallery3d/freeshare/FreeShareView;->access$400(Lcom/huawei/gallery3d/freeshare/FreeShareView;)Lcom/huawei/gallery3d/freeshare/FreeShareAdapter;

    move-result-object v4

    invoke-virtual {v4, v1}, Lcom/huawei/gallery3d/freeshare/FreeShareAdapter;->selectDevice(Lcom/huawei/android/freeshare/client/device/DeviceInfo;)V

    .line 216
    iget-object v4, p0, Lcom/huawei/gallery3d/freeshare/FreeShareView$2;->this$0:Lcom/huawei/gallery3d/freeshare/FreeShareView;

    #getter for: Lcom/huawei/gallery3d/freeshare/FreeShareView;->mModel:Lcom/android/gallery3d/app/PhotoPage$Model;
    invoke-static {v4}, Lcom/huawei/gallery3d/freeshare/FreeShareView;->access$500(Lcom/huawei/gallery3d/freeshare/FreeShareView;)Lcom/android/gallery3d/app/PhotoPage$Model;

    move-result-object v4

    invoke-interface {v4, v7}, Lcom/android/gallery3d/app/PhotoPage$Model;->getMediaItem(I)Lcom/android/gallery3d/data/MediaItem;

    move-result-object v2

    .line 217
    .local v2, mediaItem:Lcom/android/gallery3d/data/MediaItem;
    if-eqz v2, :cond_0

    .line 220
    invoke-virtual {v2}, Lcom/android/gallery3d/data/MediaItem;->getMediaType()I

    move-result v4

    if-ne v4, v8, :cond_1

    .line 221
    iget-object v4, p0, Lcom/huawei/gallery3d/freeshare/FreeShareView$2;->this$0:Lcom/huawei/gallery3d/freeshare/FreeShareView;

    #getter for: Lcom/huawei/gallery3d/freeshare/FreeShareView;->mSaveInfo:[Ljava/lang/String;
    invoke-static {v4}, Lcom/huawei/gallery3d/freeshare/FreeShareView;->access$600(Lcom/huawei/gallery3d/freeshare/FreeShareView;)[Ljava/lang/String;

    move-result-object v4

    aget-object v0, v4, v7

    .line 222
    .local v0, contentUri:Ljava/lang/String;
    iget-object v4, p0, Lcom/huawei/gallery3d/freeshare/FreeShareView$2;->this$0:Lcom/huawei/gallery3d/freeshare/FreeShareView;

    #getter for: Lcom/huawei/gallery3d/freeshare/FreeShareView;->mSaveInfo:[Ljava/lang/String;
    invoke-static {v4}, Lcom/huawei/gallery3d/freeshare/FreeShareView;->access$600(Lcom/huawei/gallery3d/freeshare/FreeShareView;)[Ljava/lang/String;

    move-result-object v4

    aget-object v3, v4, v8

    .line 227
    .local v3, mimeType:Ljava/lang/String;
    :goto_0
    if-eqz v0, :cond_0

    .line 228
    iget-object v4, p0, Lcom/huawei/gallery3d/freeshare/FreeShareView$2;->this$0:Lcom/huawei/gallery3d/freeshare/FreeShareView;

    #getter for: Lcom/huawei/gallery3d/freeshare/FreeShareView;->mDeviceAdapter:Lcom/huawei/gallery3d/freeshare/FreeShareAdapter;
    invoke-static {v4}, Lcom/huawei/gallery3d/freeshare/FreeShareView;->access$400(Lcom/huawei/gallery3d/freeshare/FreeShareView;)Lcom/huawei/gallery3d/freeshare/FreeShareAdapter;

    move-result-object v4

    invoke-virtual {v4, v0, v3}, Lcom/huawei/gallery3d/freeshare/FreeShareAdapter;->sendMedia(Ljava/lang/String;Ljava/lang/String;)Z

    .line 229
    iget-object v4, p0, Lcom/huawei/gallery3d/freeshare/FreeShareView$2;->this$0:Lcom/huawei/gallery3d/freeshare/FreeShareView;

    #getter for: Lcom/huawei/gallery3d/freeshare/FreeShareView;->mSaveInfo:[Ljava/lang/String;
    invoke-static {v4}, Lcom/huawei/gallery3d/freeshare/FreeShareView;->access$600(Lcom/huawei/gallery3d/freeshare/FreeShareView;)[Ljava/lang/String;

    move-result-object v4

    aput-object v9, v4, v7

    .line 230
    iget-object v4, p0, Lcom/huawei/gallery3d/freeshare/FreeShareView$2;->this$0:Lcom/huawei/gallery3d/freeshare/FreeShareView;

    #getter for: Lcom/huawei/gallery3d/freeshare/FreeShareView;->mSaveInfo:[Ljava/lang/String;
    invoke-static {v4}, Lcom/huawei/gallery3d/freeshare/FreeShareView;->access$600(Lcom/huawei/gallery3d/freeshare/FreeShareView;)[Ljava/lang/String;

    move-result-object v4

    aput-object v9, v4, v8

    .line 233
    .end local v0           #contentUri:Ljava/lang/String;
    .end local v3           #mimeType:Ljava/lang/String;
    :cond_0
    iget-object v4, p0, Lcom/huawei/gallery3d/freeshare/FreeShareView$2;->this$0:Lcom/huawei/gallery3d/freeshare/FreeShareView;

    #setter for: Lcom/huawei/gallery3d/freeshare/FreeShareView;->mIsMenuShow:Z
    invoke-static {v4, v7}, Lcom/huawei/gallery3d/freeshare/FreeShareView;->access$702(Lcom/huawei/gallery3d/freeshare/FreeShareView;Z)Z

    .line 234
    iget-object v4, p0, Lcom/huawei/gallery3d/freeshare/FreeShareView$2;->this$0:Lcom/huawei/gallery3d/freeshare/FreeShareView;

    #getter for: Lcom/huawei/gallery3d/freeshare/FreeShareView;->mImageView:Landroid/widget/ImageView;
    invoke-static {v4}, Lcom/huawei/gallery3d/freeshare/FreeShareView;->access$900(Lcom/huawei/gallery3d/freeshare/FreeShareView;)Landroid/widget/ImageView;

    move-result-object v4

    iget-object v5, p0, Lcom/huawei/gallery3d/freeshare/FreeShareView$2;->this$0:Lcom/huawei/gallery3d/freeshare/FreeShareView;

    #getter for: Lcom/huawei/gallery3d/freeshare/FreeShareView;->mFlyoutAnimation:Landroid/view/animation/Animation;
    invoke-static {v5}, Lcom/huawei/gallery3d/freeshare/FreeShareView;->access$800(Lcom/huawei/gallery3d/freeshare/FreeShareView;)Landroid/view/animation/Animation;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 235
    iget-object v4, p0, Lcom/huawei/gallery3d/freeshare/FreeShareView$2;->this$0:Lcom/huawei/gallery3d/freeshare/FreeShareView;

    #getter for: Lcom/huawei/gallery3d/freeshare/FreeShareView;->mImageView:Landroid/widget/ImageView;
    invoke-static {v4}, Lcom/huawei/gallery3d/freeshare/FreeShareView;->access$900(Lcom/huawei/gallery3d/freeshare/FreeShareView;)Landroid/widget/ImageView;

    move-result-object v4

    const/4 v5, 0x4

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 236
    iget-object v4, p0, Lcom/huawei/gallery3d/freeshare/FreeShareView$2;->this$0:Lcom/huawei/gallery3d/freeshare/FreeShareView;

    #getter for: Lcom/huawei/gallery3d/freeshare/FreeShareView;->mMenuView:Landroid/view/View;
    invoke-static {v4}, Lcom/huawei/gallery3d/freeshare/FreeShareView;->access$1100(Lcom/huawei/gallery3d/freeshare/FreeShareView;)Landroid/view/View;

    move-result-object v4

    iget-object v5, p0, Lcom/huawei/gallery3d/freeshare/FreeShareView$2;->this$0:Lcom/huawei/gallery3d/freeshare/FreeShareView;

    #getter for: Lcom/huawei/gallery3d/freeshare/FreeShareView;->mHideAnimation:Landroid/view/animation/Animation;
    invoke-static {v5}, Lcom/huawei/gallery3d/freeshare/FreeShareView;->access$1000(Lcom/huawei/gallery3d/freeshare/FreeShareView;)Landroid/view/animation/Animation;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 237
    return-void

    .line 224
    :cond_1
    invoke-virtual {v2}, Lcom/android/gallery3d/data/MediaItem;->getContentUri()Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v4}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    .line 225
    .restart local v0       #contentUri:Ljava/lang/String;
    invoke-virtual {v2}, Lcom/android/gallery3d/data/MediaItem;->getMimeType()Ljava/lang/String;

    move-result-object v3

    .restart local v3       #mimeType:Ljava/lang/String;
    goto :goto_0
.end method
