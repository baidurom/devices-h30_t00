.class Lcom/huawei/android/pushselfshow/richpush/g;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/huawei/android/pushselfshow/richpush/HtmlViewer;


# direct methods
.method constructor <init>(Lcom/huawei/android/pushselfshow/richpush/HtmlViewer;)V
    .locals 0

    iput-object p1, p0, Lcom/huawei/android/pushselfshow/richpush/g;->a:Lcom/huawei/android/pushselfshow/richpush/HtmlViewer;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    :try_start_0
    invoke-static {}, Lcom/huawei/android/pushselfshow/richpush/PushJavaScript;->stopMusic()V

    iget-object v0, p0, Lcom/huawei/android/pushselfshow/richpush/g;->a:Lcom/huawei/android/pushselfshow/richpush/HtmlViewer;

    invoke-static {v0}, Lcom/huawei/android/pushselfshow/richpush/HtmlViewer;->a(Lcom/huawei/android/pushselfshow/richpush/HtmlViewer;)Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    iget-object v0, p0, Lcom/huawei/android/pushselfshow/richpush/g;->a:Lcom/huawei/android/pushselfshow/richpush/HtmlViewer;

    invoke-static {v0}, Lcom/huawei/android/pushselfshow/richpush/HtmlViewer;->f(Lcom/huawei/android/pushselfshow/richpush/HtmlViewer;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/huawei/android/pushselfshow/richpush/g;->a:Lcom/huawei/android/pushselfshow/richpush/HtmlViewer;

    invoke-static {v0}, Lcom/huawei/android/pushselfshow/richpush/HtmlViewer;->f(Lcom/huawei/android/pushselfshow/richpush/HtmlViewer;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/huawei/android/pushselfshow/richpush/g;->a:Lcom/huawei/android/pushselfshow/richpush/HtmlViewer;

    invoke-static {v2}, Lcom/huawei/android/pushselfshow/richpush/HtmlViewer;->f(Lcom/huawei/android/pushselfshow/richpush/HtmlViewer;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    const-string v1, "PushSelfShowLog"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "try to remove dir "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/huawei/android/pushselfshow/b/b;->a(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v1}, Lcom/huawei/android/pushselfshow/b/c;->a(Ljava/io/File;)V

    :cond_0
    return-void

    :catch_0
    move-exception v0

    const-string v0, "PushSelfShowLog"

    const-string v1, "Activity error"

    invoke-static {v0, v1}, Lcom/huawei/android/pushselfshow/b/b;->c(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
