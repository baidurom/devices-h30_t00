.class Lcom/huawei/android/pushselfshow/richpush/h;
.super Landroid/webkit/WebChromeClient;


# instance fields
.field final synthetic a:Ljava/lang/CharSequence;

.field final synthetic b:Lcom/huawei/android/pushselfshow/richpush/HtmlViewer;


# direct methods
.method constructor <init>(Lcom/huawei/android/pushselfshow/richpush/HtmlViewer;Ljava/lang/CharSequence;)V
    .locals 0

    iput-object p1, p0, Lcom/huawei/android/pushselfshow/richpush/h;->b:Lcom/huawei/android/pushselfshow/richpush/HtmlViewer;

    iput-object p2, p0, Lcom/huawei/android/pushselfshow/richpush/h;->a:Ljava/lang/CharSequence;

    invoke-direct {p0}, Landroid/webkit/WebChromeClient;-><init>()V

    return-void
.end method


# virtual methods
.method public onProgressChanged(Landroid/webkit/WebView;I)V
    .locals 2

    iget-object v0, p0, Lcom/huawei/android/pushselfshow/richpush/h;->b:Lcom/huawei/android/pushselfshow/richpush/HtmlViewer;

    invoke-static {v0}, Lcom/huawei/android/pushselfshow/richpush/HtmlViewer;->a(Lcom/huawei/android/pushselfshow/richpush/HtmlViewer;)Landroid/app/Activity;

    move-result-object v0

    const-string v1, "Loading..."

    invoke-virtual {v0, v1}, Landroid/app/Activity;->setTitle(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/huawei/android/pushselfshow/richpush/h;->b:Lcom/huawei/android/pushselfshow/richpush/HtmlViewer;

    invoke-static {v0}, Lcom/huawei/android/pushselfshow/richpush/HtmlViewer;->a(Lcom/huawei/android/pushselfshow/richpush/HtmlViewer;)Landroid/app/Activity;

    move-result-object v0

    mul-int/lit8 v1, p2, 0x64

    invoke-virtual {v0, v1}, Landroid/app/Activity;->setProgress(I)V

    const/16 v0, 0x64

    if-ne p2, v0, :cond_0

    iget-object v0, p0, Lcom/huawei/android/pushselfshow/richpush/h;->b:Lcom/huawei/android/pushselfshow/richpush/HtmlViewer;

    invoke-static {v0}, Lcom/huawei/android/pushselfshow/richpush/HtmlViewer;->b(Lcom/huawei/android/pushselfshow/richpush/HtmlViewer;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->cancel()V

    iget-object v0, p0, Lcom/huawei/android/pushselfshow/richpush/h;->b:Lcom/huawei/android/pushselfshow/richpush/HtmlViewer;

    invoke-static {v0}, Lcom/huawei/android/pushselfshow/richpush/HtmlViewer;->a(Lcom/huawei/android/pushselfshow/richpush/HtmlViewer;)Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/huawei/android/pushselfshow/richpush/h;->a:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->setTitle(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/huawei/android/pushselfshow/richpush/h;->b:Lcom/huawei/android/pushselfshow/richpush/HtmlViewer;

    invoke-virtual {v0}, Lcom/huawei/android/pushselfshow/richpush/HtmlViewer;->addBtnAfterLoadSucc()V

    :cond_0
    return-void
.end method
