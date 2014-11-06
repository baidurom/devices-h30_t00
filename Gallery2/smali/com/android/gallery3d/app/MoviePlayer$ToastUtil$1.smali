.class final Lcom/android/gallery3d/app/MoviePlayer$ToastUtil$1;
.super Ljava/lang/Object;
.source "MoviePlayer.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/gallery3d/app/MoviePlayer$ToastUtil;->showMessage(Landroid/content/Context;II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$act:Landroid/content/Context;

.field final synthetic val$len:I

.field final synthetic val$msg:I


# direct methods
.method constructor <init>(Landroid/content/Context;II)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 645
    iput-object p1, p0, Lcom/android/gallery3d/app/MoviePlayer$ToastUtil$1;->val$act:Landroid/content/Context;

    iput p2, p0, Lcom/android/gallery3d/app/MoviePlayer$ToastUtil$1;->val$msg:I

    iput p3, p0, Lcom/android/gallery3d/app/MoviePlayer$ToastUtil$1;->val$len:I

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 647
    invoke-static {}, Landroid/os/Looper;->prepare()V

    .line 648
    invoke-static {}, Lcom/android/gallery3d/app/MoviePlayer$ToastUtil;->access$1700()Landroid/widget/Toast;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 649
    invoke-static {}, Lcom/android/gallery3d/app/MoviePlayer$ToastUtil;->access$1700()Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->cancel()V

    .line 653
    :goto_0
    invoke-static {}, Lcom/android/gallery3d/app/MoviePlayer$ToastUtil;->access$1700()Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 654
    invoke-static {}, Landroid/os/Looper;->loop()V

    .line 655
    return-void

    .line 651
    :cond_0
    iget-object v0, p0, Lcom/android/gallery3d/app/MoviePlayer$ToastUtil$1;->val$act:Landroid/content/Context;

    iget v1, p0, Lcom/android/gallery3d/app/MoviePlayer$ToastUtil$1;->val$msg:I

    iget v2, p0, Lcom/android/gallery3d/app/MoviePlayer$ToastUtil$1;->val$len:I

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-static {v0}, Lcom/android/gallery3d/app/MoviePlayer$ToastUtil;->access$1702(Landroid/widget/Toast;)Landroid/widget/Toast;

    goto :goto_0
.end method
