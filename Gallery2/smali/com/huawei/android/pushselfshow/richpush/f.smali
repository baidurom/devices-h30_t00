.class Lcom/huawei/android/pushselfshow/richpush/f;
.super Landroid/os/Handler;


# instance fields
.field final synthetic a:Lcom/huawei/android/pushselfshow/richpush/HtmlViewer;


# direct methods
.method constructor <init>(Lcom/huawei/android/pushselfshow/richpush/HtmlViewer;)V
    .locals 0

    iput-object p1, p0, Lcom/huawei/android/pushselfshow/richpush/f;->a:Lcom/huawei/android/pushselfshow/richpush/HtmlViewer;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3

    const-string v0, "PushSelfShowLog"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleMessage "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Landroid/os/Message;->what:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Landroid/os/Message;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/huawei/android/pushselfshow/b/b;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    iget-object v1, p0, Lcom/huawei/android/pushselfshow/richpush/f;->a:Lcom/huawei/android/pushselfshow/richpush/HtmlViewer;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v0}, Lcom/huawei/android/pushselfshow/richpush/HtmlViewer;->downLoadSuccess(Ljava/lang/String;)V

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Lcom/huawei/android/pushselfshow/richpush/f;->a:Lcom/huawei/android/pushselfshow/richpush/HtmlViewer;

    invoke-virtual {v0}, Lcom/huawei/android/pushselfshow/richpush/HtmlViewer;->downLoadFailed()V

    goto :goto_0

    :pswitch_2
    iget-object v1, p0, Lcom/huawei/android/pushselfshow/richpush/f;->a:Lcom/huawei/android/pushselfshow/richpush/HtmlViewer;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v0}, Lcom/huawei/android/pushselfshow/richpush/HtmlViewer;->downLoadTimeOut(Ljava/lang/String;)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
