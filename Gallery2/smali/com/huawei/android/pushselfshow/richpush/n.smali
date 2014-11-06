.class Lcom/huawei/android/pushselfshow/richpush/n;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Z

.field final synthetic c:I

.field final synthetic d:Lcom/huawei/android/pushselfshow/richpush/PushJavaScript;


# direct methods
.method constructor <init>(Lcom/huawei/android/pushselfshow/richpush/PushJavaScript;Ljava/lang/String;ZI)V
    .locals 0

    iput-object p1, p0, Lcom/huawei/android/pushselfshow/richpush/n;->d:Lcom/huawei/android/pushselfshow/richpush/PushJavaScript;

    iput-object p2, p0, Lcom/huawei/android/pushselfshow/richpush/n;->a:Ljava/lang/String;

    iput-boolean p3, p0, Lcom/huawei/android/pushselfshow/richpush/n;->b:Z

    iput p4, p0, Lcom/huawei/android/pushselfshow/richpush/n;->c:I

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    :try_start_0
    invoke-static {}, Lcom/huawei/android/pushselfshow/richpush/PushJavaScript;->a()Landroid/media/MediaPlayer;

    move-result-object v0

    if-nez v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/huawei/android/pushselfshow/richpush/n;->d:Lcom/huawei/android/pushselfshow/richpush/PushJavaScript;

    iget-object v1, v1, Lcom/huawei/android/pushselfshow/richpush/PushJavaScript;->dir:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/huawei/android/pushselfshow/richpush/n;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "PushSelfShowLog"

    invoke-static {v1, v0}, Lcom/huawei/android/pushselfshow/b/b;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/huawei/android/pushselfshow/richpush/n;->d:Lcom/huawei/android/pushselfshow/richpush/PushJavaScript;

    invoke-static {v1}, Lcom/huawei/android/pushselfshow/richpush/PushJavaScript;->a(Lcom/huawei/android/pushselfshow/richpush/PushJavaScript;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/media/MediaPlayer;->create(Landroid/content/Context;Landroid/net/Uri;)Landroid/media/MediaPlayer;

    move-result-object v0

    invoke-static {v0}, Lcom/huawei/android/pushselfshow/richpush/PushJavaScript;->a(Landroid/media/MediaPlayer;)Landroid/media/MediaPlayer;

    invoke-static {}, Lcom/huawei/android/pushselfshow/richpush/PushJavaScript;->a()Landroid/media/MediaPlayer;

    move-result-object v0

    new-instance v1, Lcom/huawei/android/pushselfshow/richpush/o;

    invoke-direct {v1, p0}, Lcom/huawei/android/pushselfshow/richpush/o;-><init>(Lcom/huawei/android/pushselfshow/richpush/n;)V

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setOnPreparedListener(Landroid/media/MediaPlayer$OnPreparedListener;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-static {}, Lcom/huawei/android/pushselfshow/richpush/PushJavaScript;->a()Landroid/media/MediaPlayer;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/huawei/android/pushselfshow/richpush/PushJavaScript;->a()Landroid/media/MediaPlayer;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->start()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "PushSelfShowLog"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "play music error:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/huawei/android/pushselfshow/b/b;->c(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
