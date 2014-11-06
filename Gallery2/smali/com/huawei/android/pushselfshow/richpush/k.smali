.class Lcom/huawei/android/pushselfshow/richpush/k;
.super Landroid/webkit/WebViewClient;


# instance fields
.field final synthetic a:Z

.field final synthetic b:Lcom/huawei/android/pushselfshow/richpush/HtmlViewer;


# direct methods
.method constructor <init>(Lcom/huawei/android/pushselfshow/richpush/HtmlViewer;Z)V
    .locals 0

    iput-object p1, p0, Lcom/huawei/android/pushselfshow/richpush/k;->b:Lcom/huawei/android/pushselfshow/richpush/HtmlViewer;

    iput-boolean p2, p0, Lcom/huawei/android/pushselfshow/richpush/k;->a:Z

    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/huawei/android/pushselfshow/richpush/k;->a:Z

    if-eqz v0, :cond_0

    invoke-virtual {p1, p2}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
