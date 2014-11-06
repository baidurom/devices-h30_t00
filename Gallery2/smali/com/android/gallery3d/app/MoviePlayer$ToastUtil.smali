.class public Lcom/android/gallery3d/app/MoviePlayer$ToastUtil;
.super Ljava/lang/Object;
.source "MoviePlayer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/gallery3d/app/MoviePlayer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ToastUtil"
.end annotation


# static fields
.field private static mToast:Landroid/widget/Toast;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 639
    const/4 v0, 0x0

    sput-object v0, Lcom/android/gallery3d/app/MoviePlayer$ToastUtil;->mToast:Landroid/widget/Toast;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 638
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$1700()Landroid/widget/Toast;
    .locals 1

    .prologue
    .line 638
    sget-object v0, Lcom/android/gallery3d/app/MoviePlayer$ToastUtil;->mToast:Landroid/widget/Toast;

    return-object v0
.end method

.method static synthetic access$1702(Landroid/widget/Toast;)Landroid/widget/Toast;
    .locals 0
    .parameter "x0"

    .prologue
    .line 638
    sput-object p0, Lcom/android/gallery3d/app/MoviePlayer$ToastUtil;->mToast:Landroid/widget/Toast;

    return-object p0
.end method

.method public static showMessage(Landroid/content/Context;I)V
    .locals 1
    .parameter "act"
    .parameter "msg"

    .prologue
    .line 641
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/android/gallery3d/app/MoviePlayer$ToastUtil;->showMessage(Landroid/content/Context;II)V

    .line 642
    return-void
.end method

.method public static showMessage(Landroid/content/Context;II)V
    .locals 2
    .parameter "act"
    .parameter "msg"
    .parameter "len"

    .prologue
    .line 645
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/android/gallery3d/app/MoviePlayer$ToastUtil$1;

    invoke-direct {v1, p0, p1, p2}, Lcom/android/gallery3d/app/MoviePlayer$ToastUtil$1;-><init>(Landroid/content/Context;II)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 657
    return-void
.end method
