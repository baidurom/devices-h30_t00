.class Lcom/android/gallery3d/app/MoviePlayer$6;
.super Ljava/lang/Object;
.source "MoviePlayer.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/gallery3d/app/MoviePlayer;-><init>(Landroid/view/View;Lcom/android/gallery3d/app/MovieActivity;Landroid/net/Uri;Landroid/os/Bundle;ZI)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/gallery3d/app/MoviePlayer;


# direct methods
.method constructor <init>(Lcom/android/gallery3d/app/MoviePlayer;)V
    .locals 0
    .parameter

    .prologue
    .line 352
    iput-object p1, p0, Lcom/android/gallery3d/app/MoviePlayer$6;->this$0:Lcom/android/gallery3d/app/MoviePlayer;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 355
    iget-object v0, p0, Lcom/android/gallery3d/app/MoviePlayer$6;->this$0:Lcom/android/gallery3d/app/MoviePlayer;

    #getter for: Lcom/android/gallery3d/app/MoviePlayer;->mStartPause:Z
    invoke-static {v0}, Lcom/android/gallery3d/app/MoviePlayer;->access$1000(Lcom/android/gallery3d/app/MoviePlayer;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 356
    iget-object v0, p0, Lcom/android/gallery3d/app/MoviePlayer$6;->this$0:Lcom/android/gallery3d/app/MoviePlayer;

    const/4 v1, 0x0

    #setter for: Lcom/android/gallery3d/app/MoviePlayer;->mStartPause:Z
    invoke-static {v0, v1}, Lcom/android/gallery3d/app/MoviePlayer;->access$1002(Lcom/android/gallery3d/app/MoviePlayer;Z)Z

    .line 357
    iget-object v0, p0, Lcom/android/gallery3d/app/MoviePlayer$6;->this$0:Lcom/android/gallery3d/app/MoviePlayer;

    #calls: Lcom/android/gallery3d/app/MoviePlayer;->pauseVideo()V
    invoke-static {v0}, Lcom/android/gallery3d/app/MoviePlayer;->access$1100(Lcom/android/gallery3d/app/MoviePlayer;)V

    .line 359
    :cond_0
    return-void
.end method
