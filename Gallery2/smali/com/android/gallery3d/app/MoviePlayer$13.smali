.class Lcom/android/gallery3d/app/MoviePlayer$13;
.super Ljava/lang/Object;
.source "MoviePlayer.java"

# interfaces
.implements Lcom/huawei/android/widget/VideoViewEx$STCallbackEx;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/gallery3d/app/MoviePlayer;->initSubTitleView(Landroid/net/Uri;)V
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
    .line 1035
    iput-object p1, p0, Lcom/android/gallery3d/app/MoviePlayer$13;->this$0:Lcom/android/gallery3d/app/MoviePlayer;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public pause()V
    .locals 1

    .prologue
    .line 1038
    iget-object v0, p0, Lcom/android/gallery3d/app/MoviePlayer$13;->this$0:Lcom/android/gallery3d/app/MoviePlayer;

    #getter for: Lcom/android/gallery3d/app/MoviePlayer;->mSubtitleService:Lcn/real/device/HelixSubtitleService;
    invoke-static {v0}, Lcom/android/gallery3d/app/MoviePlayer;->access$1900(Lcom/android/gallery3d/app/MoviePlayer;)Lcn/real/device/HelixSubtitleService;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1039
    iget-object v0, p0, Lcom/android/gallery3d/app/MoviePlayer$13;->this$0:Lcom/android/gallery3d/app/MoviePlayer;

    #getter for: Lcom/android/gallery3d/app/MoviePlayer;->mSubtitleService:Lcn/real/device/HelixSubtitleService;
    invoke-static {v0}, Lcom/android/gallery3d/app/MoviePlayer;->access$1900(Lcom/android/gallery3d/app/MoviePlayer;)Lcn/real/device/HelixSubtitleService;

    move-result-object v0

    invoke-virtual {v0}, Lcn/real/device/HelixSubtitleService;->OnPause()V

    .line 1041
    :cond_0
    return-void
.end method

.method public seekTo(I)V
    .locals 3
    .parameter "msec"

    .prologue
    .line 1050
    iget-object v0, p0, Lcom/android/gallery3d/app/MoviePlayer$13;->this$0:Lcom/android/gallery3d/app/MoviePlayer;

    #getter for: Lcom/android/gallery3d/app/MoviePlayer;->mSubtitleService:Lcn/real/device/HelixSubtitleService;
    invoke-static {v0}, Lcom/android/gallery3d/app/MoviePlayer;->access$1900(Lcom/android/gallery3d/app/MoviePlayer;)Lcn/real/device/HelixSubtitleService;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1051
    iget-object v0, p0, Lcom/android/gallery3d/app/MoviePlayer$13;->this$0:Lcom/android/gallery3d/app/MoviePlayer;

    #getter for: Lcom/android/gallery3d/app/MoviePlayer;->mSubtitleService:Lcn/real/device/HelixSubtitleService;
    invoke-static {v0}, Lcom/android/gallery3d/app/MoviePlayer;->access$1900(Lcom/android/gallery3d/app/MoviePlayer;)Lcn/real/device/HelixSubtitleService;

    move-result-object v0

    int-to-long v1, p1

    invoke-virtual {v0, v1, v2}, Lcn/real/device/HelixSubtitleService;->OnTimeSync(J)V

    .line 1053
    :cond_0
    return-void
.end method

.method public setPlayer(Landroid/media/MediaPlayer;)V
    .locals 1
    .parameter "player"

    .prologue
    .line 1056
    iget-object v0, p0, Lcom/android/gallery3d/app/MoviePlayer$13;->this$0:Lcom/android/gallery3d/app/MoviePlayer;

    #getter for: Lcom/android/gallery3d/app/MoviePlayer;->mSubtitleService:Lcn/real/device/HelixSubtitleService;
    invoke-static {v0}, Lcom/android/gallery3d/app/MoviePlayer;->access$1900(Lcom/android/gallery3d/app/MoviePlayer;)Lcn/real/device/HelixSubtitleService;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1057
    iget-object v0, p0, Lcom/android/gallery3d/app/MoviePlayer$13;->this$0:Lcom/android/gallery3d/app/MoviePlayer;

    #getter for: Lcom/android/gallery3d/app/MoviePlayer;->mSubtitleService:Lcn/real/device/HelixSubtitleService;
    invoke-static {v0}, Lcom/android/gallery3d/app/MoviePlayer;->access$1900(Lcom/android/gallery3d/app/MoviePlayer;)Lcn/real/device/HelixSubtitleService;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcn/real/device/HelixSubtitleService;->SetPlayer(Landroid/media/MediaPlayer;)V

    .line 1059
    :cond_0
    return-void
.end method

.method public start()V
    .locals 1

    .prologue
    .line 1044
    iget-object v0, p0, Lcom/android/gallery3d/app/MoviePlayer$13;->this$0:Lcom/android/gallery3d/app/MoviePlayer;

    #getter for: Lcom/android/gallery3d/app/MoviePlayer;->mSubtitleService:Lcn/real/device/HelixSubtitleService;
    invoke-static {v0}, Lcom/android/gallery3d/app/MoviePlayer;->access$1900(Lcom/android/gallery3d/app/MoviePlayer;)Lcn/real/device/HelixSubtitleService;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1045
    iget-object v0, p0, Lcom/android/gallery3d/app/MoviePlayer$13;->this$0:Lcom/android/gallery3d/app/MoviePlayer;

    #getter for: Lcom/android/gallery3d/app/MoviePlayer;->mSubtitleService:Lcn/real/device/HelixSubtitleService;
    invoke-static {v0}, Lcom/android/gallery3d/app/MoviePlayer;->access$1900(Lcom/android/gallery3d/app/MoviePlayer;)Lcn/real/device/HelixSubtitleService;

    move-result-object v0

    invoke-virtual {v0}, Lcn/real/device/HelixSubtitleService;->OnPlay()V

    .line 1047
    :cond_0
    return-void
.end method
