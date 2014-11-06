.class public Lcom/huawei/android/pushselfshow/richpush/PushJavaScript;
.super Ljava/lang/Object;


# static fields
.field public static final TAG:Ljava/lang/String; = "PushSelfShowLog"

.field private static mp:Landroid/media/MediaPlayer;


# instance fields
.field private context:Landroid/content/Context;

.field public dir:Ljava/lang/String;

.field private handler:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lcom/huawei/android/pushselfshow/richpush/PushJavaScript;->mp:Landroid/media/MediaPlayer;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Landroid/os/Handler;)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/huawei/android/pushselfshow/richpush/PushJavaScript;->dir:Ljava/lang/String;

    iput-object v1, p0, Lcom/huawei/android/pushselfshow/richpush/PushJavaScript;->handler:Landroid/os/Handler;

    iput-object v1, p0, Lcom/huawei/android/pushselfshow/richpush/PushJavaScript;->context:Landroid/content/Context;

    iput-object p1, p0, Lcom/huawei/android/pushselfshow/richpush/PushJavaScript;->context:Landroid/content/Context;

    iput-object p2, p0, Lcom/huawei/android/pushselfshow/richpush/PushJavaScript;->dir:Ljava/lang/String;

    iput-object p3, p0, Lcom/huawei/android/pushselfshow/richpush/PushJavaScript;->handler:Landroid/os/Handler;

    invoke-static {}, Lcom/huawei/android/pushselfshow/richpush/PushJavaScript;->stopMusic()V

    return-void
.end method

.method static synthetic a(Lcom/huawei/android/pushselfshow/richpush/PushJavaScript;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/huawei/android/pushselfshow/richpush/PushJavaScript;->context:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic a()Landroid/media/MediaPlayer;
    .locals 1

    sget-object v0, Lcom/huawei/android/pushselfshow/richpush/PushJavaScript;->mp:Landroid/media/MediaPlayer;

    return-object v0
.end method

.method static synthetic a(Landroid/media/MediaPlayer;)Landroid/media/MediaPlayer;
    .locals 0

    sput-object p0, Lcom/huawei/android/pushselfshow/richpush/PushJavaScript;->mp:Landroid/media/MediaPlayer;

    return-object p0
.end method

.method public static stopMusic()V
    .locals 4

    :try_start_0
    sget-object v0, Lcom/huawei/android/pushselfshow/richpush/PushJavaScript;->mp:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/huawei/android/pushselfshow/richpush/PushJavaScript;->mp:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/huawei/android/pushselfshow/richpush/PushJavaScript;->mp:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->stop()V

    const/4 v0, 0x0

    sput-object v0, Lcom/huawei/android/pushselfshow/richpush/PushJavaScript;->mp:Landroid/media/MediaPlayer;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v1, "PushSelfShowLog"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Stop Music error:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/huawei/android/pushselfshow/b/b;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method public addBackgroundMusic(Ljava/lang/String;ZI)V
    .locals 2

    iget-object v0, p0, Lcom/huawei/android/pushselfshow/richpush/PushJavaScript;->handler:Landroid/os/Handler;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/huawei/android/pushselfshow/richpush/PushJavaScript;->handler:Landroid/os/Handler;

    new-instance v1, Lcom/huawei/android/pushselfshow/richpush/n;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/huawei/android/pushselfshow/richpush/n;-><init>(Lcom/huawei/android/pushselfshow/richpush/PushJavaScript;Ljava/lang/String;ZI)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method
