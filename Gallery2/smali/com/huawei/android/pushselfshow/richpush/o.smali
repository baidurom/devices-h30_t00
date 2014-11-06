.class Lcom/huawei/android/pushselfshow/richpush/o;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/media/MediaPlayer$OnPreparedListener;


# instance fields
.field final synthetic a:Lcom/huawei/android/pushselfshow/richpush/n;


# direct methods
.method constructor <init>(Lcom/huawei/android/pushselfshow/richpush/n;)V
    .locals 0

    iput-object p1, p0, Lcom/huawei/android/pushselfshow/richpush/o;->a:Lcom/huawei/android/pushselfshow/richpush/n;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPrepared(Landroid/media/MediaPlayer;)V
    .locals 1

    iget-object v0, p0, Lcom/huawei/android/pushselfshow/richpush/o;->a:Lcom/huawei/android/pushselfshow/richpush/n;

    iget-boolean v0, v0, Lcom/huawei/android/pushselfshow/richpush/n;->b:Z

    invoke-virtual {p1, v0}, Landroid/media/MediaPlayer;->setLooping(Z)V

    iget-object v0, p0, Lcom/huawei/android/pushselfshow/richpush/o;->a:Lcom/huawei/android/pushselfshow/richpush/n;

    iget v0, v0, Lcom/huawei/android/pushselfshow/richpush/n;->c:I

    invoke-virtual {p1, v0}, Landroid/media/MediaPlayer;->seekTo(I)V

    invoke-virtual {p1}, Landroid/media/MediaPlayer;->start()V

    return-void
.end method
