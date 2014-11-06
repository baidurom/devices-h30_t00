.class Lcom/android/gallery3d/app/CropImage$3;
.super Lcom/android/gallery3d/ui/SynchronizedHandler;
.source "CropImage.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/gallery3d/app/CropImage;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/gallery3d/app/CropImage;


# direct methods
.method constructor <init>(Lcom/android/gallery3d/app/CropImage;Lcom/android/gallery3d/ui/GLRoot;)V
    .locals 0
    .parameter
    .parameter "x0"

    .prologue
    .line 304
    iput-object p1, p0, Lcom/android/gallery3d/app/CropImage$3;->this$0:Lcom/android/gallery3d/app/CropImage;

    invoke-direct {p0, p2}, Lcom/android/gallery3d/ui/SynchronizedHandler;-><init>(Lcom/android/gallery3d/ui/GLRoot;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3
    .parameter "message"

    .prologue
    const/4 v1, 0x0

    .line 307
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 341
    :goto_0
    return-void

    .line 309
    :pswitch_0
    iget-object v0, p0, Lcom/android/gallery3d/app/CropImage$3;->this$0:Lcom/android/gallery3d/app/CropImage;

    #calls: Lcom/android/gallery3d/app/CropImage;->dismissProgressDialogIfShown()V
    invoke-static {v0}, Lcom/android/gallery3d/app/CropImage;->access$500(Lcom/android/gallery3d/app/CropImage;)V

    .line 310
    iget-object v1, p0, Lcom/android/gallery3d/app/CropImage$3;->this$0:Lcom/android/gallery3d/app/CropImage;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/graphics/BitmapRegionDecoder;

    #calls: Lcom/android/gallery3d/app/CropImage;->onBitmapRegionDecoderAvailable(Landroid/graphics/BitmapRegionDecoder;)V
    invoke-static {v1, v0}, Lcom/android/gallery3d/app/CropImage;->access$600(Lcom/android/gallery3d/app/CropImage;Landroid/graphics/BitmapRegionDecoder;)V

    goto :goto_0

    .line 314
    :pswitch_1
    iget-object v0, p0, Lcom/android/gallery3d/app/CropImage$3;->this$0:Lcom/android/gallery3d/app/CropImage;

    #calls: Lcom/android/gallery3d/app/CropImage;->dismissProgressDialogIfShown()V
    invoke-static {v0}, Lcom/android/gallery3d/app/CropImage;->access$500(Lcom/android/gallery3d/app/CropImage;)V

    .line 315
    iget-object v1, p0, Lcom/android/gallery3d/app/CropImage$3;->this$0:Lcom/android/gallery3d/app/CropImage;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/graphics/Bitmap;

    #calls: Lcom/android/gallery3d/app/CropImage;->onBitmapAvailable(Landroid/graphics/Bitmap;)V
    invoke-static {v1, v0}, Lcom/android/gallery3d/app/CropImage;->access$700(Lcom/android/gallery3d/app/CropImage;Landroid/graphics/Bitmap;)V

    goto :goto_0

    .line 319
    :pswitch_2
    iget-object v0, p0, Lcom/android/gallery3d/app/CropImage$3;->this$0:Lcom/android/gallery3d/app/CropImage;

    #calls: Lcom/android/gallery3d/app/CropImage;->dismissProgressDialogIfShown()V
    invoke-static {v0}, Lcom/android/gallery3d/app/CropImage;->access$500(Lcom/android/gallery3d/app/CropImage;)V

    .line 320
    iget-object v0, p0, Lcom/android/gallery3d/app/CropImage$3;->this$0:Lcom/android/gallery3d/app/CropImage;

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/app/CropImage;->setResult(I)V

    .line 321
    iget-object v0, p0, Lcom/android/gallery3d/app/CropImage$3;->this$0:Lcom/android/gallery3d/app/CropImage;

    iget-object v1, p0, Lcom/android/gallery3d/app/CropImage$3;->this$0:Lcom/android/gallery3d/app/CropImage;

    const v2, 0x7f0d0256

    invoke-virtual {v1, v2}, Lcom/android/gallery3d/app/CropImage;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 324
    iget-object v0, p0, Lcom/android/gallery3d/app/CropImage$3;->this$0:Lcom/android/gallery3d/app/CropImage;

    invoke-virtual {v0}, Lcom/android/gallery3d/app/CropImage;->finish()V

    goto :goto_0

    .line 328
    :pswitch_3
    iget-object v0, p0, Lcom/android/gallery3d/app/CropImage$3;->this$0:Lcom/android/gallery3d/app/CropImage;

    #calls: Lcom/android/gallery3d/app/CropImage;->dismissProgressDialogIfShown()V
    invoke-static {v0}, Lcom/android/gallery3d/app/CropImage;->access$500(Lcom/android/gallery3d/app/CropImage;)V

    .line 329
    iget-object v1, p0, Lcom/android/gallery3d/app/CropImage$3;->this$0:Lcom/android/gallery3d/app/CropImage;

    const/4 v2, -0x1

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/content/Intent;

    invoke-virtual {v1, v2, v0}, Lcom/android/gallery3d/app/CropImage;->setResult(ILandroid/content/Intent;)V

    .line 330
    iget-object v0, p0, Lcom/android/gallery3d/app/CropImage$3;->this$0:Lcom/android/gallery3d/app/CropImage;

    invoke-virtual {v0}, Lcom/android/gallery3d/app/CropImage;->finish()V

    goto :goto_0

    .line 334
    :pswitch_4
    iget-object v0, p0, Lcom/android/gallery3d/app/CropImage$3;->this$0:Lcom/android/gallery3d/app/CropImage;

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/app/CropImage;->setResult(I)V

    .line 335
    iget-object v0, p0, Lcom/android/gallery3d/app/CropImage$3;->this$0:Lcom/android/gallery3d/app/CropImage;

    invoke-virtual {v0}, Lcom/android/gallery3d/app/CropImage;->finish()V

    goto :goto_0

    .line 307
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_3
        :pswitch_2
        :pswitch_4
    .end packed-switch
.end method
