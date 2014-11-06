.class Lcom/android/hwcamera/feature/shot/callback/BestPhotoService$MainHandler;
.super Landroid/os/Handler;
.source "BestPhotoService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/hwcamera/feature/shot/callback/BestPhotoService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MainHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/hwcamera/feature/shot/callback/BestPhotoService;


# direct methods
.method public constructor <init>(Lcom/android/hwcamera/feature/shot/callback/BestPhotoService;Landroid/os/Looper;)V
    .locals 0
    .parameter
    .parameter "looper"

    .prologue
    .line 193
    iput-object p1, p0, Lcom/android/hwcamera/feature/shot/callback/BestPhotoService$MainHandler;->this$0:Lcom/android/hwcamera/feature/shot/callback/BestPhotoService;

    .line 194
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 195
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 6
    .parameter "msg"

    .prologue
    const v5, 0x7f100018

    const/4 v4, 0x0

    .line 199
    const-string v1, "BestPhotoService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "handleMessage:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p1, Landroid/os/Message;->what:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 200
    iget-object v1, p0, Lcom/android/hwcamera/feature/shot/callback/BestPhotoService$MainHandler;->this$0:Lcom/android/hwcamera/feature/shot/callback/BestPhotoService;

    #getter for: Lcom/android/hwcamera/feature/shot/callback/BestPhotoService;->mCancel:Z
    invoke-static {v1}, Lcom/android/hwcamera/feature/shot/callback/BestPhotoService;->access$000(Lcom/android/hwcamera/feature/shot/callback/BestPhotoService;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 254
    :cond_0
    :goto_0
    return-void

    .line 201
    :cond_1
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    goto :goto_0

    .line 208
    :pswitch_0
    iget-object v1, p0, Lcom/android/hwcamera/feature/shot/callback/BestPhotoService$MainHandler;->this$0:Lcom/android/hwcamera/feature/shot/callback/BestPhotoService;

    const/4 v2, 0x2

    #setter for: Lcom/android/hwcamera/feature/shot/callback/BestPhotoService;->mState:I
    invoke-static {v1, v2}, Lcom/android/hwcamera/feature/shot/callback/BestPhotoService;->access$502(Lcom/android/hwcamera/feature/shot/callback/BestPhotoService;I)I

    .line 209
    iget-object v1, p0, Lcom/android/hwcamera/feature/shot/callback/BestPhotoService$MainHandler;->this$0:Lcom/android/hwcamera/feature/shot/callback/BestPhotoService;

    #calls: Lcom/android/hwcamera/feature/shot/callback/BestPhotoService;->showLoadingPictureDialog()V
    invoke-static {v1}, Lcom/android/hwcamera/feature/shot/callback/BestPhotoService;->access$600(Lcom/android/hwcamera/feature/shot/callback/BestPhotoService;)V

    .line 210
    new-instance v1, Ljava/lang/Thread;

    iget-object v2, p0, Lcom/android/hwcamera/feature/shot/callback/BestPhotoService$MainHandler;->this$0:Lcom/android/hwcamera/feature/shot/callback/BestPhotoService;

    #getter for: Lcom/android/hwcamera/feature/shot/callback/BestPhotoService;->mPictureScanerRunnable:Ljava/lang/Runnable;
    invoke-static {v2}, Lcom/android/hwcamera/feature/shot/callback/BestPhotoService;->access$700(Lcom/android/hwcamera/feature/shot/callback/BestPhotoService;)Ljava/lang/Runnable;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    goto :goto_0

    .line 204
    :pswitch_1
    iget-object v1, p0, Lcom/android/hwcamera/feature/shot/callback/BestPhotoService$MainHandler;->this$0:Lcom/android/hwcamera/feature/shot/callback/BestPhotoService;

    #calls: Lcom/android/hwcamera/feature/shot/callback/BestPhotoService;->cancelBestPhoto()V
    invoke-static {v1}, Lcom/android/hwcamera/feature/shot/callback/BestPhotoService;->access$400(Lcom/android/hwcamera/feature/shot/callback/BestPhotoService;)V

    goto :goto_0

    .line 213
    :pswitch_2
    iget-object v1, p0, Lcom/android/hwcamera/feature/shot/callback/BestPhotoService$MainHandler;->this$0:Lcom/android/hwcamera/feature/shot/callback/BestPhotoService;

    const/4 v2, 0x3

    #setter for: Lcom/android/hwcamera/feature/shot/callback/BestPhotoService;->mState:I
    invoke-static {v1, v2}, Lcom/android/hwcamera/feature/shot/callback/BestPhotoService;->access$502(Lcom/android/hwcamera/feature/shot/callback/BestPhotoService;I)I

    .line 214
    iget-object v1, p0, Lcom/android/hwcamera/feature/shot/callback/BestPhotoService$MainHandler;->this$0:Lcom/android/hwcamera/feature/shot/callback/BestPhotoService;

    invoke-virtual {v1}, Lcom/android/hwcamera/feature/shot/callback/BestPhotoService;->showBestPhoto()V

    goto :goto_0

    .line 217
    :pswitch_3
    iget-object v2, p0, Lcom/android/hwcamera/feature/shot/callback/BestPhotoService$MainHandler;->this$0:Lcom/android/hwcamera/feature/shot/callback/BestPhotoService;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Lcom/android/hwcamera/feature/shot/callback/BestPhotoItem;

    #calls: Lcom/android/hwcamera/feature/shot/callback/BestPhotoService;->loadingPicture(Lcom/android/hwcamera/feature/shot/callback/BestPhotoItem;)V
    invoke-static {v2, v1}, Lcom/android/hwcamera/feature/shot/callback/BestPhotoService;->access$800(Lcom/android/hwcamera/feature/shot/callback/BestPhotoService;Lcom/android/hwcamera/feature/shot/callback/BestPhotoItem;)V

    goto :goto_0

    .line 220
    :pswitch_4
    iget-object v1, p0, Lcom/android/hwcamera/feature/shot/callback/BestPhotoService$MainHandler;->this$0:Lcom/android/hwcamera/feature/shot/callback/BestPhotoService;

    #calls: Lcom/android/hwcamera/feature/shot/callback/BestPhotoService;->showLoadingPictureDialog()V
    invoke-static {v1}, Lcom/android/hwcamera/feature/shot/callback/BestPhotoService;->access$600(Lcom/android/hwcamera/feature/shot/callback/BestPhotoService;)V

    goto :goto_0

    .line 223
    :pswitch_5
    iget-object v1, p0, Lcom/android/hwcamera/feature/shot/callback/BestPhotoService$MainHandler;->this$0:Lcom/android/hwcamera/feature/shot/callback/BestPhotoService;

    invoke-virtual {v1}, Lcom/android/hwcamera/feature/shot/callback/BestPhotoService;->cancelLoadingPictureDialog()V

    goto :goto_0

    .line 226
    :pswitch_6
    iget-object v1, p0, Lcom/android/hwcamera/feature/shot/callback/BestPhotoService$MainHandler;->this$0:Lcom/android/hwcamera/feature/shot/callback/BestPhotoService;

    #setter for: Lcom/android/hwcamera/feature/shot/callback/BestPhotoService;->mBestPhotoIndex:I
    invoke-static {v1, v4}, Lcom/android/hwcamera/feature/shot/callback/BestPhotoService;->access$902(Lcom/android/hwcamera/feature/shot/callback/BestPhotoService;I)I

    .line 227
    iget-object v1, p0, Lcom/android/hwcamera/feature/shot/callback/BestPhotoService$MainHandler;->this$0:Lcom/android/hwcamera/feature/shot/callback/BestPhotoService;

    invoke-virtual {v1}, Lcom/android/hwcamera/feature/shot/callback/BestPhotoService;->showBestPhoto()V

    goto :goto_0

    .line 230
    :pswitch_7
    iget-object v1, p0, Lcom/android/hwcamera/feature/shot/callback/BestPhotoService$MainHandler;->this$0:Lcom/android/hwcamera/feature/shot/callback/BestPhotoService;

    #getter for: Lcom/android/hwcamera/feature/shot/callback/BestPhotoService;->mScrollView:Landroid/widget/HorizontalScrollView;
    invoke-static {v1}, Lcom/android/hwcamera/feature/shot/callback/BestPhotoService;->access$1000(Lcom/android/hwcamera/feature/shot/callback/BestPhotoService;)Landroid/widget/HorizontalScrollView;

    move-result-object v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/hwcamera/feature/shot/callback/BestPhotoService$MainHandler;->this$0:Lcom/android/hwcamera/feature/shot/callback/BestPhotoService;

    #getter for: Lcom/android/hwcamera/feature/shot/callback/BestPhotoService;->mScrollView:Landroid/widget/HorizontalScrollView;
    invoke-static {v1}, Lcom/android/hwcamera/feature/shot/callback/BestPhotoService;->access$1000(Lcom/android/hwcamera/feature/shot/callback/BestPhotoService;)Landroid/widget/HorizontalScrollView;

    move-result-object v1

    invoke-static {v1}, Lcom/android/hwcamera/Util;->fadeIn(Landroid/view/View;)V

    .line 232
    :cond_2
    iget-object v1, p0, Lcom/android/hwcamera/feature/shot/callback/BestPhotoService$MainHandler;->this$0:Lcom/android/hwcamera/feature/shot/callback/BestPhotoService;

    #getter for: Lcom/android/hwcamera/feature/shot/callback/BestPhotoService;->mBurstPictureBg:Landroid/view/View;
    invoke-static {v1}, Lcom/android/hwcamera/feature/shot/callback/BestPhotoService;->access$1100(Lcom/android/hwcamera/feature/shot/callback/BestPhotoService;)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/hwcamera/feature/shot/callback/BestPhotoService$MainHandler;->this$0:Lcom/android/hwcamera/feature/shot/callback/BestPhotoService;

    #getter for: Lcom/android/hwcamera/feature/shot/callback/BestPhotoService;->mBurstPictureBg:Landroid/view/View;
    invoke-static {v1}, Lcom/android/hwcamera/feature/shot/callback/BestPhotoService;->access$1100(Lcom/android/hwcamera/feature/shot/callback/BestPhotoService;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 237
    :pswitch_8
    iget-object v1, p0, Lcom/android/hwcamera/feature/shot/callback/BestPhotoService$MainHandler;->this$0:Lcom/android/hwcamera/feature/shot/callback/BestPhotoService;

    #getter for: Lcom/android/hwcamera/feature/shot/callback/BestPhotoService;->mBurstPictureBg:Landroid/view/View;
    invoke-static {v1}, Lcom/android/hwcamera/feature/shot/callback/BestPhotoService;->access$1100(Lcom/android/hwcamera/feature/shot/callback/BestPhotoService;)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/android/hwcamera/feature/shot/callback/BestPhotoService$MainHandler;->this$0:Lcom/android/hwcamera/feature/shot/callback/BestPhotoService;

    #getter for: Lcom/android/hwcamera/feature/shot/callback/BestPhotoService;->mBurstPictureBg:Landroid/view/View;
    invoke-static {v1}, Lcom/android/hwcamera/feature/shot/callback/BestPhotoService;->access$1100(Lcom/android/hwcamera/feature/shot/callback/BestPhotoService;)Landroid/view/View;

    move-result-object v1

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 239
    :cond_3
    iget-object v1, p0, Lcom/android/hwcamera/feature/shot/callback/BestPhotoService$MainHandler;->this$0:Lcom/android/hwcamera/feature/shot/callback/BestPhotoService;

    #getter for: Lcom/android/hwcamera/feature/shot/callback/BestPhotoService;->mScrollView:Landroid/widget/HorizontalScrollView;
    invoke-static {v1}, Lcom/android/hwcamera/feature/shot/callback/BestPhotoService;->access$1000(Lcom/android/hwcamera/feature/shot/callback/BestPhotoService;)Landroid/widget/HorizontalScrollView;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/hwcamera/feature/shot/callback/BestPhotoService$MainHandler;->this$0:Lcom/android/hwcamera/feature/shot/callback/BestPhotoService;

    #getter for: Lcom/android/hwcamera/feature/shot/callback/BestPhotoService;->mScrollView:Landroid/widget/HorizontalScrollView;
    invoke-static {v1}, Lcom/android/hwcamera/feature/shot/callback/BestPhotoService;->access$1000(Lcom/android/hwcamera/feature/shot/callback/BestPhotoService;)Landroid/widget/HorizontalScrollView;

    move-result-object v1

    invoke-static {v1}, Lcom/android/hwcamera/Util;->fadeOut(Landroid/view/View;)V

    goto/16 :goto_0

    .line 242
    :pswitch_9
    iget-object v1, p0, Lcom/android/hwcamera/feature/shot/callback/BestPhotoService$MainHandler;->this$0:Lcom/android/hwcamera/feature/shot/callback/BestPhotoService;

    #getter for: Lcom/android/hwcamera/feature/shot/callback/BestPhotoService;->mPhotoModule:Lcom/android/hwcamera/PhotoModule;
    invoke-static {v1}, Lcom/android/hwcamera/feature/shot/callback/BestPhotoService;->access$1200(Lcom/android/hwcamera/feature/shot/callback/BestPhotoService;)Lcom/android/hwcamera/PhotoModule;

    move-result-object v1

    invoke-virtual {v1, v5}, Lcom/android/hwcamera/PhotoModule;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 243
    .local v0, tips:Landroid/view/View;
    invoke-static {v0}, Lcom/android/hwcamera/Util;->fadeIn(Landroid/view/View;)V

    .line 244
    iget-object v1, p0, Lcom/android/hwcamera/feature/shot/callback/BestPhotoService$MainHandler;->this$0:Lcom/android/hwcamera/feature/shot/callback/BestPhotoService;

    #getter for: Lcom/android/hwcamera/feature/shot/callback/BestPhotoService;->mHandler:Lcom/android/hwcamera/feature/shot/callback/BestPhotoService$MainHandler;
    invoke-static {v1}, Lcom/android/hwcamera/feature/shot/callback/BestPhotoService;->access$100(Lcom/android/hwcamera/feature/shot/callback/BestPhotoService;)Lcom/android/hwcamera/feature/shot/callback/BestPhotoService$MainHandler;

    move-result-object v1

    const/16 v2, 0xa

    const-wide/16 v3, 0x1388

    invoke-virtual {v1, v2, v3, v4}, Lcom/android/hwcamera/feature/shot/callback/BestPhotoService$MainHandler;->sendEmptyMessageDelayed(IJ)Z

    goto/16 :goto_0

    .line 248
    .end local v0           #tips:Landroid/view/View;
    :pswitch_a
    iget-object v1, p0, Lcom/android/hwcamera/feature/shot/callback/BestPhotoService$MainHandler;->this$0:Lcom/android/hwcamera/feature/shot/callback/BestPhotoService;

    #getter for: Lcom/android/hwcamera/feature/shot/callback/BestPhotoService;->mPhotoModule:Lcom/android/hwcamera/PhotoModule;
    invoke-static {v1}, Lcom/android/hwcamera/feature/shot/callback/BestPhotoService;->access$1200(Lcom/android/hwcamera/feature/shot/callback/BestPhotoService;)Lcom/android/hwcamera/PhotoModule;

    move-result-object v1

    invoke-virtual {v1, v5}, Lcom/android/hwcamera/PhotoModule;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 249
    .restart local v0       #tips:Landroid/view/View;
    invoke-static {v0}, Lcom/android/hwcamera/Util;->fadeOut(Landroid/view/View;)V

    goto/16 :goto_0

    .line 201
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_8
        :pswitch_7
        :pswitch_1
        :pswitch_9
        :pswitch_a
    .end packed-switch
.end method
