.class Lcom/huawei/android/pushselfshow/click/a;
.super Ljava/lang/Thread;


# instance fields
.field final synthetic a:Landroid/content/Context;

.field final synthetic b:Lcom/huawei/android/pushselfshow/click/SelfShowType;


# direct methods
.method constructor <init>(Lcom/huawei/android/pushselfshow/click/SelfShowType;Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lcom/huawei/android/pushselfshow/click/a;->b:Lcom/huawei/android/pushselfshow/click/SelfShowType;

    iput-object p2, p0, Lcom/huawei/android/pushselfshow/click/a;->a:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    invoke-static {}, Landroid/os/Looper;->prepare()V

    iget-object v0, p0, Lcom/huawei/android/pushselfshow/click/a;->a:Landroid/content/Context;

    const-string v1, "\u624b\u673a\u4e0a\u6ca1\u6709\u5b89\u88c5\u5e94\u7528\u5e02\u573a\uff0c\u5efa\u8bae\u5b89\u88c5\u667a\u6c47\u4e91\u5e94\u7528\u5e02\u573a"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    invoke-static {}, Landroid/os/Looper;->loop()V

    return-void
.end method
