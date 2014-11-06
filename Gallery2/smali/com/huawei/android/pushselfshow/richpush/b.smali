.class Lcom/huawei/android/pushselfshow/richpush/b;
.super Ljava/util/TimerTask;


# instance fields
.field final synthetic a:Lcom/huawei/android/pushselfshow/richpush/HtmlViewer;


# direct methods
.method constructor <init>(Lcom/huawei/android/pushselfshow/richpush/HtmlViewer;)V
    .locals 0

    iput-object p1, p0, Lcom/huawei/android/pushselfshow/richpush/b;->a:Lcom/huawei/android/pushselfshow/richpush/HtmlViewer;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    const-string v0, "PushSelfShowLog"

    const-string v1, "download time out "

    invoke-static {v0, v1}, Lcom/huawei/android/pushselfshow/b/b;->b(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    const/4 v1, 0x3

    iput v1, v0, Landroid/os/Message;->what:I

    iget-object v1, p0, Lcom/huawei/android/pushselfshow/richpush/b;->a:Lcom/huawei/android/pushselfshow/richpush/HtmlViewer;

    invoke-static {v1}, Lcom/huawei/android/pushselfshow/richpush/HtmlViewer;->a(Lcom/huawei/android/pushselfshow/richpush/HtmlViewer;)Landroid/app/Activity;

    move-result-object v1

    const-string v2, "\u7f51\u7edc\u901f\u5ea6\u6162\uff0c\u662f\u5426\u7ee7\u7eed\u52a0\u8f7d\u6d88\u606f\u5185\u5bb9\uff1f"

    const-string v3, "The network speed is slow. Continue loading this message?"

    invoke-static {v1, v2, v3}, Lcom/huawei/android/pushselfshow/b/c;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    const-string v1, "PushSelfShowLog"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mhandler = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/huawei/android/pushselfshow/richpush/b;->a:Lcom/huawei/android/pushselfshow/richpush/HtmlViewer;

    iget-object v3, v3, Lcom/huawei/android/pushselfshow/richpush/HtmlViewer;->downloadHandler:Landroid/os/Handler;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "and msg is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Landroid/os/Message;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/huawei/android/pushselfshow/b/b;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/huawei/android/pushselfshow/richpush/b;->a:Lcom/huawei/android/pushselfshow/richpush/HtmlViewer;

    iget-object v1, v1, Lcom/huawei/android/pushselfshow/richpush/HtmlViewer;->downloadHandler:Landroid/os/Handler;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/huawei/android/pushselfshow/richpush/b;->a:Lcom/huawei/android/pushselfshow/richpush/HtmlViewer;

    iget-object v1, v1, Lcom/huawei/android/pushselfshow/richpush/HtmlViewer;->downloadHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x1

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    :cond_0
    return-void
.end method
