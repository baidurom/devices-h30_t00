.class Lcom/android/gallery3d/app/MovieActivity$2;
.super Lcom/huawei/gallery3d/multiscreen/MultiScreen$MultiScreenListener;
.source "MovieActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/gallery3d/app/MovieActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/gallery3d/app/MovieActivity;


# direct methods
.method constructor <init>(Lcom/android/gallery3d/app/MovieActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 209
    iput-object p1, p0, Lcom/android/gallery3d/app/MovieActivity$2;->this$0:Lcom/android/gallery3d/app/MovieActivity;

    invoke-direct {p0}, Lcom/huawei/gallery3d/multiscreen/MultiScreen$MultiScreenListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onControllerLaunched()V
    .locals 1

    .prologue
    .line 212
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieActivity$2;->this$0:Lcom/android/gallery3d/app/MovieActivity;

    #getter for: Lcom/android/gallery3d/app/MovieActivity;->mPlayer:Lcom/android/gallery3d/app/MoviePlayer;
    invoke-static {v0}, Lcom/android/gallery3d/app/MovieActivity;->access$200(Lcom/android/gallery3d/app/MovieActivity;)Lcom/android/gallery3d/app/MoviePlayer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/gallery3d/app/MoviePlayer;->resetBookmark()V

    .line 213
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieActivity$2;->this$0:Lcom/android/gallery3d/app/MovieActivity;

    invoke-virtual {v0}, Lcom/android/gallery3d/app/MovieActivity;->finish()V

    .line 214
    return-void
.end method

.method public updateAirSaringItem(ZZ)V
    .locals 2
    .parameter "isVisible"
    .parameter "isConnected"

    .prologue
    .line 218
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieActivity$2;->this$0:Lcom/android/gallery3d/app/MovieActivity;

    #getter for: Lcom/android/gallery3d/app/MovieActivity;->mAirSharingItem:Landroid/view/MenuItem;
    invoke-static {v0}, Lcom/android/gallery3d/app/MovieActivity;->access$300(Lcom/android/gallery3d/app/MovieActivity;)Landroid/view/MenuItem;

    move-result-object v0

    if-nez v0, :cond_0

    .line 223
    :goto_0
    return-void

    .line 219
    :cond_0
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieActivity$2;->this$0:Lcom/android/gallery3d/app/MovieActivity;

    #getter for: Lcom/android/gallery3d/app/MovieActivity;->mAirSharingItem:Landroid/view/MenuItem;
    invoke-static {v0}, Lcom/android/gallery3d/app/MovieActivity;->access$300(Lcom/android/gallery3d/app/MovieActivity;)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 220
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieActivity$2;->this$0:Lcom/android/gallery3d/app/MovieActivity;

    #getter for: Lcom/android/gallery3d/app/MovieActivity;->mAirSharingItem:Landroid/view/MenuItem;
    invoke-static {v0}, Lcom/android/gallery3d/app/MovieActivity;->access$300(Lcom/android/gallery3d/app/MovieActivity;)Landroid/view/MenuItem;

    move-result-object v1

    if-eqz p2, :cond_1

    const v0, 0x7f020199

    :goto_1
    invoke-interface {v1, v0}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    goto :goto_0

    :cond_1
    const v0, 0x7f02019a

    goto :goto_1
.end method
