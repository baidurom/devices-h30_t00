.class Lcom/android/gallery3d/app/MovieActivity$3;
.super Lcom/android/gallery3d/app/MoviePlayer;
.source "MovieActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/gallery3d/app/MovieActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/gallery3d/app/MovieActivity;


# direct methods
.method constructor <init>(Lcom/android/gallery3d/app/MovieActivity;Landroid/view/View;Lcom/android/gallery3d/app/MovieActivity;Landroid/net/Uri;Landroid/os/Bundle;ZI)V
    .locals 7
    .parameter
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"
    .parameter "x4"
    .parameter "x5"

    .prologue
    .line 297
    iput-object p1, p0, Lcom/android/gallery3d/app/MovieActivity$3;->this$0:Lcom/android/gallery3d/app/MovieActivity;

    move-object v0, p0

    move-object v1, p2

    move-object v2, p3

    move-object v3, p4

    move-object v4, p5

    move v5, p6

    move v6, p7

    invoke-direct/range {v0 .. v6}, Lcom/android/gallery3d/app/MoviePlayer;-><init>(Landroid/view/View;Lcom/android/gallery3d/app/MovieActivity;Landroid/net/Uri;Landroid/os/Bundle;ZI)V

    return-void
.end method


# virtual methods
.method public onCompletion()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 312
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieActivity$3;->this$0:Lcom/android/gallery3d/app/MovieActivity;

    #getter for: Lcom/android/gallery3d/app/MovieActivity;->mFinishOnCompletion:Z
    invoke-static {v0}, Lcom/android/gallery3d/app/MovieActivity;->access$400(Lcom/android/gallery3d/app/MovieActivity;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 313
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieActivity$3;->this$0:Lcom/android/gallery3d/app/MovieActivity;

    invoke-virtual {v0}, Lcom/android/gallery3d/app/MovieActivity;->finish()V

    .line 315
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieActivity$3;->this$0:Lcom/android/gallery3d/app/MovieActivity;

    invoke-virtual {v0, v1, v1}, Lcom/android/gallery3d/app/MovieActivity;->overridePendingTransition(II)V

    .line 318
    :cond_0
    return-void
.end method

.method public onStop(I)V
    .locals 4
    .parameter "offset"

    .prologue
    const/4 v3, 0x0

    .line 300
    if-nez p1, :cond_0

    .line 309
    :goto_0
    return-void

    .line 301
    :cond_0
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 302
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "return-offset-hint"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 303
    iget-object v1, p0, Lcom/android/gallery3d/app/MovieActivity$3;->this$0:Lcom/android/gallery3d/app/MovieActivity;

    const/4 v2, -0x1

    invoke-virtual {v1, v2, v0}, Lcom/android/gallery3d/app/MovieActivity;->setResult(ILandroid/content/Intent;)V

    .line 304
    invoke-super {p0, p1}, Lcom/android/gallery3d/app/MoviePlayer;->onStop(I)V

    .line 305
    iget-object v1, p0, Lcom/android/gallery3d/app/MovieActivity$3;->this$0:Lcom/android/gallery3d/app/MovieActivity;

    invoke-virtual {v1}, Lcom/android/gallery3d/app/MovieActivity;->finish()V

    .line 307
    iget-object v1, p0, Lcom/android/gallery3d/app/MovieActivity$3;->this$0:Lcom/android/gallery3d/app/MovieActivity;

    invoke-virtual {v1, v3, v3}, Lcom/android/gallery3d/app/MovieActivity;->overridePendingTransition(II)V

    goto :goto_0
.end method
