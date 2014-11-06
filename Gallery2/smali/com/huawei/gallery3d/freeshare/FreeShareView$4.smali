.class Lcom/huawei/gallery3d/freeshare/FreeShareView$4;
.super Ljava/lang/Object;
.source "FreeShareView.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


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
    .line 278
    iput-object p1, p0, Lcom/huawei/gallery3d/freeshare/FreeShareView$4;->this$0:Lcom/huawei/gallery3d/freeshare/FreeShareView;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 7
    .parameter "arg0"

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 287
    iget-object v3, p0, Lcom/huawei/gallery3d/freeshare/FreeShareView$4;->this$0:Lcom/huawei/gallery3d/freeshare/FreeShareView;

    #getter for: Lcom/huawei/gallery3d/freeshare/FreeShareView;->mModel:Lcom/android/gallery3d/app/PhotoPage$Model;
    invoke-static {v3}, Lcom/huawei/gallery3d/freeshare/FreeShareView;->access$500(Lcom/huawei/gallery3d/freeshare/FreeShareView;)Lcom/android/gallery3d/app/PhotoPage$Model;

    move-result-object v3

    invoke-interface {v3, v4}, Lcom/android/gallery3d/app/PhotoPage$Model;->getMediaItem(I)Lcom/android/gallery3d/data/MediaItem;

    move-result-object v1

    .line 288
    .local v1, mediaItem:Lcom/android/gallery3d/data/MediaItem;
    if-eqz v1, :cond_0

    .line 291
    invoke-virtual {v1}, Lcom/android/gallery3d/data/MediaItem;->getMediaType()I

    move-result v3

    if-ne v3, v5, :cond_1

    .line 292
    iget-object v3, p0, Lcom/huawei/gallery3d/freeshare/FreeShareView$4;->this$0:Lcom/huawei/gallery3d/freeshare/FreeShareView;

    #getter for: Lcom/huawei/gallery3d/freeshare/FreeShareView;->mSaveInfo:[Ljava/lang/String;
    invoke-static {v3}, Lcom/huawei/gallery3d/freeshare/FreeShareView;->access$600(Lcom/huawei/gallery3d/freeshare/FreeShareView;)[Ljava/lang/String;

    move-result-object v3

    aget-object v0, v3, v4

    .line 293
    .local v0, contentUri:Ljava/lang/String;
    iget-object v3, p0, Lcom/huawei/gallery3d/freeshare/FreeShareView$4;->this$0:Lcom/huawei/gallery3d/freeshare/FreeShareView;

    #getter for: Lcom/huawei/gallery3d/freeshare/FreeShareView;->mSaveInfo:[Ljava/lang/String;
    invoke-static {v3}, Lcom/huawei/gallery3d/freeshare/FreeShareView;->access$600(Lcom/huawei/gallery3d/freeshare/FreeShareView;)[Ljava/lang/String;

    move-result-object v3

    aget-object v2, v3, v5

    .line 298
    .local v2, mimeType:Ljava/lang/String;
    :goto_0
    if-eqz v0, :cond_0

    .line 299
    iget-object v3, p0, Lcom/huawei/gallery3d/freeshare/FreeShareView$4;->this$0:Lcom/huawei/gallery3d/freeshare/FreeShareView;

    #getter for: Lcom/huawei/gallery3d/freeshare/FreeShareView;->mDeviceAdapter:Lcom/huawei/gallery3d/freeshare/FreeShareAdapter;
    invoke-static {v3}, Lcom/huawei/gallery3d/freeshare/FreeShareView;->access$400(Lcom/huawei/gallery3d/freeshare/FreeShareView;)Lcom/huawei/gallery3d/freeshare/FreeShareAdapter;

    move-result-object v3

    invoke-virtual {v3, v0, v2}, Lcom/huawei/gallery3d/freeshare/FreeShareAdapter;->sendMedia(Ljava/lang/String;Ljava/lang/String;)Z

    .line 300
    iget-object v3, p0, Lcom/huawei/gallery3d/freeshare/FreeShareView$4;->this$0:Lcom/huawei/gallery3d/freeshare/FreeShareView;

    #getter for: Lcom/huawei/gallery3d/freeshare/FreeShareView;->mSaveInfo:[Ljava/lang/String;
    invoke-static {v3}, Lcom/huawei/gallery3d/freeshare/FreeShareView;->access$600(Lcom/huawei/gallery3d/freeshare/FreeShareView;)[Ljava/lang/String;

    move-result-object v3

    aput-object v6, v3, v4

    .line 301
    iget-object v3, p0, Lcom/huawei/gallery3d/freeshare/FreeShareView$4;->this$0:Lcom/huawei/gallery3d/freeshare/FreeShareView;

    #getter for: Lcom/huawei/gallery3d/freeshare/FreeShareView;->mSaveInfo:[Ljava/lang/String;
    invoke-static {v3}, Lcom/huawei/gallery3d/freeshare/FreeShareView;->access$600(Lcom/huawei/gallery3d/freeshare/FreeShareView;)[Ljava/lang/String;

    move-result-object v3

    aput-object v6, v3, v5

    .line 304
    .end local v0           #contentUri:Ljava/lang/String;
    .end local v2           #mimeType:Ljava/lang/String;
    :cond_0
    iget-object v3, p0, Lcom/huawei/gallery3d/freeshare/FreeShareView$4;->this$0:Lcom/huawei/gallery3d/freeshare/FreeShareView;

    #getter for: Lcom/huawei/gallery3d/freeshare/FreeShareView;->mMainView:Landroid/view/View;
    invoke-static {v3}, Lcom/huawei/gallery3d/freeshare/FreeShareView;->access$1400(Lcom/huawei/gallery3d/freeshare/FreeShareView;)Landroid/view/View;

    move-result-object v3

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    .line 305
    return-void

    .line 295
    :cond_1
    invoke-virtual {v1}, Lcom/android/gallery3d/data/MediaItem;->getContentUri()Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v3}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    .line 296
    .restart local v0       #contentUri:Ljava/lang/String;
    invoke-virtual {v1}, Lcom/android/gallery3d/data/MediaItem;->getMimeType()Ljava/lang/String;

    move-result-object v2

    .restart local v2       #mimeType:Ljava/lang/String;
    goto :goto_0
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0
    .parameter "arg0"

    .prologue
    .line 283
    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0
    .parameter "arg0"

    .prologue
    .line 280
    return-void
.end method
