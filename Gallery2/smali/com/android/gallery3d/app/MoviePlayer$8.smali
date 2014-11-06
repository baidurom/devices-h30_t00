.class Lcom/android/gallery3d/app/MoviePlayer$8;
.super Landroid/os/Handler;
.source "MoviePlayer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/gallery3d/app/MoviePlayer;
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
    .line 436
    iput-object p1, p0, Lcom/android/gallery3d/app/MoviePlayer$8;->this$0:Lcom/android/gallery3d/app/MoviePlayer;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .parameter "msg"

    .prologue
    .line 440
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 447
    :goto_0
    return-void

    .line 442
    :pswitch_0
    iget-object v0, p0, Lcom/android/gallery3d/app/MoviePlayer$8;->this$0:Lcom/android/gallery3d/app/MoviePlayer;

    const/4 v1, 0x1

    #setter for: Lcom/android/gallery3d/app/MoviePlayer;->mSwitchVideoEnabled:Z
    invoke-static {v0, v1}, Lcom/android/gallery3d/app/MoviePlayer;->access$1602(Lcom/android/gallery3d/app/MoviePlayer;Z)Z

    goto :goto_0

    .line 440
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
