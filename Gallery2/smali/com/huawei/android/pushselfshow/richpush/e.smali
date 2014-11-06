.class Lcom/huawei/android/pushselfshow/richpush/e;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Lcom/huawei/android/pushselfshow/richpush/HtmlViewer;


# direct methods
.method constructor <init>(Lcom/huawei/android/pushselfshow/richpush/HtmlViewer;)V
    .locals 0

    iput-object p1, p0, Lcom/huawei/android/pushselfshow/richpush/e;->a:Lcom/huawei/android/pushselfshow/richpush/HtmlViewer;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 6

    const/4 v0, -0x1

    iget-object v1, p0, Lcom/huawei/android/pushselfshow/richpush/e;->a:Lcom/huawei/android/pushselfshow/richpush/HtmlViewer;

    invoke-static {v1}, Lcom/huawei/android/pushselfshow/richpush/HtmlViewer;->a(Lcom/huawei/android/pushselfshow/richpush/HtmlViewer;)Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Lcom/huawei/android/pushselfshow/b/c;->a(Landroid/content/Context;)I

    move-result v1

    if-ne v0, v1, :cond_1

    if-eqz p1, :cond_0

    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    iget-object v0, p0, Lcom/huawei/android/pushselfshow/richpush/e;->a:Lcom/huawei/android/pushselfshow/richpush/HtmlViewer;

    invoke-virtual {v0}, Lcom/huawei/android/pushselfshow/richpush/HtmlViewer;->createNoNetWorkDialog()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/huawei/android/pushselfshow/richpush/e;->a:Lcom/huawei/android/pushselfshow/richpush/HtmlViewer;

    invoke-static {v0}, Lcom/huawei/android/pushselfshow/richpush/HtmlViewer;->b(Lcom/huawei/android/pushselfshow/richpush/HtmlViewer;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    iget-object v0, p0, Lcom/huawei/android/pushselfshow/richpush/e;->a:Lcom/huawei/android/pushselfshow/richpush/HtmlViewer;

    new-instance v1, Lcom/huawei/android/pushselfshow/b/d;

    iget-object v2, p0, Lcom/huawei/android/pushselfshow/richpush/e;->a:Lcom/huawei/android/pushselfshow/richpush/HtmlViewer;

    iget-object v2, v2, Lcom/huawei/android/pushselfshow/richpush/HtmlViewer;->downloadHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/huawei/android/pushselfshow/richpush/e;->a:Lcom/huawei/android/pushselfshow/richpush/HtmlViewer;

    invoke-static {v3}, Lcom/huawei/android/pushselfshow/richpush/HtmlViewer;->a(Lcom/huawei/android/pushselfshow/richpush/HtmlViewer;)Landroid/app/Activity;

    move-result-object v3

    iget-object v4, p0, Lcom/huawei/android/pushselfshow/richpush/e;->a:Lcom/huawei/android/pushselfshow/richpush/HtmlViewer;

    invoke-static {v4}, Lcom/huawei/android/pushselfshow/richpush/HtmlViewer;->c(Lcom/huawei/android/pushselfshow/richpush/HtmlViewer;)Lcom/huawei/android/pushselfshow/a/a;

    move-result-object v4

    iget-object v4, v4, Lcom/huawei/android/pushselfshow/a/a;->A:Ljava/lang/String;

    const-string v5, "application/zip"

    invoke-static {v5}, Lcom/huawei/android/pushselfshow/richpush/a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/huawei/android/pushselfshow/b/d;-><init>(Landroid/os/Handler;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v1, v0, Lcom/huawei/android/pushselfshow/richpush/HtmlViewer;->dtl:Lcom/huawei/android/pushselfshow/b/d;

    iget-object v0, p0, Lcom/huawei/android/pushselfshow/richpush/e;->a:Lcom/huawei/android/pushselfshow/richpush/HtmlViewer;

    iget-object v0, v0, Lcom/huawei/android/pushselfshow/richpush/HtmlViewer;->dtl:Lcom/huawei/android/pushselfshow/b/d;

    invoke-virtual {v0}, Lcom/huawei/android/pushselfshow/b/d;->b()V

    goto :goto_0
.end method
