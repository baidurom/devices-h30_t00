.class Lcom/android/gallery3d/app/PhotoPage$15;
.super Ljava/lang/Object;
.source "PhotoPage.java"

# interfaces
.implements Lcom/android/gallery3d/ui/MenuExecutor$ProgressListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/gallery3d/app/PhotoPage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/gallery3d/app/PhotoPage;


# direct methods
.method constructor <init>(Lcom/android/gallery3d/app/PhotoPage;)V
    .locals 0
    .parameter

    .prologue
    .line 1735
    iput-object p1, p0, Lcom/android/gallery3d/app/PhotoPage$15;->this$0:Lcom/android/gallery3d/app/PhotoPage;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onConfirmDialogDismissed(Z)V
    .locals 1
    .parameter "confirmed"

    .prologue
    .line 1753
    iget-object v0, p0, Lcom/android/gallery3d/app/PhotoPage$15;->this$0:Lcom/android/gallery3d/app/PhotoPage;

    #calls: Lcom/android/gallery3d/app/PhotoPage;->refreshHidingMessage()V
    invoke-static {v0}, Lcom/android/gallery3d/app/PhotoPage;->access$600(Lcom/android/gallery3d/app/PhotoPage;)V

    .line 1754
    return-void
.end method

.method public onConfirmDialogShown()V
    .locals 2

    .prologue
    .line 1748
    iget-object v0, p0, Lcom/android/gallery3d/app/PhotoPage$15;->this$0:Lcom/android/gallery3d/app/PhotoPage;

    #getter for: Lcom/android/gallery3d/app/PhotoPage;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/gallery3d/app/PhotoPage;->access$200(Lcom/android/gallery3d/app/PhotoPage;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 1749
    return-void
.end method

.method public onProgressComplete(I)V
    .locals 5
    .parameter "result"

    .prologue
    .line 1741
    iget-object v0, p0, Lcom/android/gallery3d/app/PhotoPage$15;->this$0:Lcom/android/gallery3d/app/PhotoPage;

    #getter for: Lcom/android/gallery3d/app/PhotoPage;->mCurrentPhoto:Lcom/android/gallery3d/data/MediaItem;
    invoke-static {v0}, Lcom/android/gallery3d/app/PhotoPage;->access$100(Lcom/android/gallery3d/app/PhotoPage;)Lcom/android/gallery3d/data/MediaItem;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/gallery3d/app/PhotoPage$15;->this$0:Lcom/android/gallery3d/app/PhotoPage;

    #getter for: Lcom/android/gallery3d/app/PhotoPage;->mVoiceImageController:Lcom/huawei/gallery3d/voiceimage/VoiceImageController;
    invoke-static {v0}, Lcom/android/gallery3d/app/PhotoPage;->access$4700(Lcom/android/gallery3d/app/PhotoPage;)Lcom/huawei/gallery3d/voiceimage/VoiceImageController;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1742
    iget-object v0, p0, Lcom/android/gallery3d/app/PhotoPage$15;->this$0:Lcom/android/gallery3d/app/PhotoPage;

    #getter for: Lcom/android/gallery3d/app/PhotoPage;->mVoiceImageController:Lcom/huawei/gallery3d/voiceimage/VoiceImageController;
    invoke-static {v0}, Lcom/android/gallery3d/app/PhotoPage;->access$4700(Lcom/android/gallery3d/app/PhotoPage;)Lcom/huawei/gallery3d/voiceimage/VoiceImageController;

    move-result-object v0

    iget-object v1, p0, Lcom/android/gallery3d/app/PhotoPage$15;->this$0:Lcom/android/gallery3d/app/PhotoPage;

    #getter for: Lcom/android/gallery3d/app/PhotoPage;->mCurrentPhoto:Lcom/android/gallery3d/data/MediaItem;
    invoke-static {v1}, Lcom/android/gallery3d/app/PhotoPage;->access$100(Lcom/android/gallery3d/app/PhotoPage;)Lcom/android/gallery3d/data/MediaItem;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/gallery3d/data/MediaItem;->getFilePath()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/android/gallery3d/app/PhotoPage$15;->this$0:Lcom/android/gallery3d/app/PhotoPage;

    #getter for: Lcom/android/gallery3d/app/PhotoPage;->mCurrentPhoto:Lcom/android/gallery3d/data/MediaItem;
    invoke-static {v2}, Lcom/android/gallery3d/app/PhotoPage;->access$100(Lcom/android/gallery3d/app/PhotoPage;)Lcom/android/gallery3d/data/MediaItem;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/gallery3d/data/MediaItem;->getVoiceOffset()J

    move-result-wide v2

    const/4 v4, 0x1

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/huawei/gallery3d/voiceimage/VoiceImageController;->refresh(Ljava/lang/String;JZ)V

    .line 1744
    :cond_0
    return-void
.end method

.method public onProgressStart()V
    .locals 0

    .prologue
    .line 1757
    return-void
.end method

.method public onProgressUpdate(I)V
    .locals 0
    .parameter "index"

    .prologue
    .line 1737
    return-void
.end method
