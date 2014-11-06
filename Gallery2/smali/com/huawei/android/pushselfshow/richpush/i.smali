.class Lcom/huawei/android/pushselfshow/richpush/i;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# instance fields
.field final synthetic a:Lcom/huawei/android/pushselfshow/richpush/HtmlViewer;


# direct methods
.method constructor <init>(Lcom/huawei/android/pushselfshow/richpush/HtmlViewer;)V
    .locals 0

    iput-object p1, p0, Lcom/huawei/android/pushselfshow/richpush/i;->a:Lcom/huawei/android/pushselfshow/richpush/HtmlViewer;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 4

    iget-object v0, p0, Lcom/huawei/android/pushselfshow/richpush/i;->a:Lcom/huawei/android/pushselfshow/richpush/HtmlViewer;

    iget-object v0, v0, Lcom/huawei/android/pushselfshow/richpush/HtmlViewer;->dtl:Lcom/huawei/android/pushselfshow/b/d;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/huawei/android/pushselfshow/richpush/i;->a:Lcom/huawei/android/pushselfshow/richpush/HtmlViewer;

    iget-object v0, v0, Lcom/huawei/android/pushselfshow/richpush/HtmlViewer;->dtl:Lcom/huawei/android/pushselfshow/b/d;

    iget-boolean v0, v0, Lcom/huawei/android/pushselfshow/b/d;->e:Z

    if-eqz v0, :cond_0

    const-string v0, "PushSelfShowLog"

    const-string v1, "cancel ProgressDialog loading dialog when richpush file is downloading"

    invoke-static {v0, v1}, Lcom/huawei/android/pushselfshow/b/b;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/huawei/android/pushselfshow/richpush/i;->a:Lcom/huawei/android/pushselfshow/richpush/HtmlViewer;

    iget-object v0, v0, Lcom/huawei/android/pushselfshow/richpush/HtmlViewer;->dtl:Lcom/huawei/android/pushselfshow/b/d;

    invoke-virtual {v0}, Lcom/huawei/android/pushselfshow/b/d;->a()V

    iget-object v0, p0, Lcom/huawei/android/pushselfshow/richpush/i;->a:Lcom/huawei/android/pushselfshow/richpush/HtmlViewer;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/huawei/android/pushselfshow/richpush/HtmlViewer;->downloadHandler:Landroid/os/Handler;

    iget-object v0, p0, Lcom/huawei/android/pushselfshow/richpush/i;->a:Lcom/huawei/android/pushselfshow/richpush/HtmlViewer;

    iget-object v1, p0, Lcom/huawei/android/pushselfshow/richpush/i;->a:Lcom/huawei/android/pushselfshow/richpush/HtmlViewer;

    invoke-static {v1}, Lcom/huawei/android/pushselfshow/richpush/HtmlViewer;->a(Lcom/huawei/android/pushselfshow/richpush/HtmlViewer;)Landroid/app/Activity;

    move-result-object v1

    const-string v2, "\u5bcc\u5a92\u4f53\u6587\u4ef6\u4e0b\u8f7d\u5931\u8d25"

    const-string v3, "Failed to load the message."

    invoke-static {v1, v2, v3}, Lcom/huawei/android/pushselfshow/b/c;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/huawei/android/pushselfshow/richpush/HtmlViewer;->showErrorHtmlURI(Ljava/lang/String;)V

    :cond_0
    iget-object v0, p0, Lcom/huawei/android/pushselfshow/richpush/i;->a:Lcom/huawei/android/pushselfshow/richpush/HtmlViewer;

    invoke-static {v0}, Lcom/huawei/android/pushselfshow/richpush/HtmlViewer;->d(Lcom/huawei/android/pushselfshow/richpush/HtmlViewer;)Ljava/util/Timer;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/huawei/android/pushselfshow/richpush/i;->a:Lcom/huawei/android/pushselfshow/richpush/HtmlViewer;

    invoke-static {v0}, Lcom/huawei/android/pushselfshow/richpush/HtmlViewer;->e(Lcom/huawei/android/pushselfshow/richpush/HtmlViewer;)Lcom/huawei/android/pushselfshow/richpush/b;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/huawei/android/pushselfshow/richpush/i;->a:Lcom/huawei/android/pushselfshow/richpush/HtmlViewer;

    invoke-static {v0}, Lcom/huawei/android/pushselfshow/richpush/HtmlViewer;->e(Lcom/huawei/android/pushselfshow/richpush/HtmlViewer;)Lcom/huawei/android/pushselfshow/richpush/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/huawei/android/pushselfshow/richpush/b;->cancel()Z

    :cond_1
    return-void
.end method
