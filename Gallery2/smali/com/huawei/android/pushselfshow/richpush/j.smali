.class Lcom/huawei/android/pushselfshow/richpush/j;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Lcom/huawei/android/pushselfshow/richpush/HtmlViewer;


# direct methods
.method constructor <init>(Lcom/huawei/android/pushselfshow/richpush/HtmlViewer;)V
    .locals 0

    iput-object p1, p0, Lcom/huawei/android/pushselfshow/richpush/j;->a:Lcom/huawei/android/pushselfshow/richpush/HtmlViewer;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4

    invoke-interface {p1}, Landroid/content/DialogInterface;->cancel()V

    iget-object v0, p0, Lcom/huawei/android/pushselfshow/richpush/j;->a:Lcom/huawei/android/pushselfshow/richpush/HtmlViewer;

    iget-object v1, p0, Lcom/huawei/android/pushselfshow/richpush/j;->a:Lcom/huawei/android/pushselfshow/richpush/HtmlViewer;

    invoke-static {v1}, Lcom/huawei/android/pushselfshow/richpush/HtmlViewer;->a(Lcom/huawei/android/pushselfshow/richpush/HtmlViewer;)Landroid/app/Activity;

    move-result-object v1

    const-string v2, "\u5bcc\u5a92\u4f53\u6587\u4ef6\u4e0b\u8f7d\u5931\u8d25"

    const-string v3, "Failed to load the message."

    invoke-static {v1, v2, v3}, Lcom/huawei/android/pushselfshow/b/c;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/huawei/android/pushselfshow/richpush/HtmlViewer;->showErrorHtmlURI(Ljava/lang/String;)V

    return-void
.end method
