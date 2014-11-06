.class Lcom/android/gallery3d/app/PhotoPage$9;
.super Ljava/lang/Object;
.source "PhotoPage.java"

# interfaces
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/gallery3d/app/PhotoPage;->onCreate(Landroid/os/Bundle;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/gallery3d/app/PhotoPage;


# direct methods
.method constructor <init>(Lcom/android/gallery3d/app/PhotoPage;)V
    .locals 0
    .parameter

    .prologue
    .line 818
    iput-object p1, p0, Lcom/android/gallery3d/app/PhotoPage$9;->this$0:Lcom/android/gallery3d/app/PhotoPage;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .locals 3
    .parameter "seekBar"
    .parameter "progress"
    .parameter "fromUser"

    .prologue
    .line 832
    iget-object v0, p0, Lcom/android/gallery3d/app/PhotoPage$9;->this$0:Lcom/android/gallery3d/app/PhotoPage;

    #getter for: Lcom/android/gallery3d/app/PhotoPage;->mMavSeekBar:Lcom/android/gallery3d/ui/MavSeekBar;
    invoke-static {v0}, Lcom/android/gallery3d/app/PhotoPage;->access$4900(Lcom/android/gallery3d/app/PhotoPage;)Lcom/android/gallery3d/ui/MavSeekBar;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/gallery3d/ui/MavSeekBar;->getState()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    if-eqz p3, :cond_0

    .line 833
    const-string v0, "PhotoPage"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "show frame, [NO. "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/gallery3d/app/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 834
    iget-object v0, p0, Lcom/android/gallery3d/app/PhotoPage$9;->this$0:Lcom/android/gallery3d/app/PhotoPage;

    #getter for: Lcom/android/gallery3d/app/PhotoPage;->mModel:Lcom/android/gallery3d/app/PhotoPage$Model;
    invoke-static {v0}, Lcom/android/gallery3d/app/PhotoPage;->access$3500(Lcom/android/gallery3d/app/PhotoPage;)Lcom/android/gallery3d/app/PhotoPage$Model;

    move-result-object v0

    invoke-interface {v0, p2}, Lcom/android/gallery3d/app/PhotoPage$Model;->setImageBitmap(I)V

    .line 836
    :cond_0
    return-void
.end method

.method public onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 2
    .parameter "seekBar"

    .prologue
    .line 825
    const-string v0, "mavseekbar"

    const-string v1, "onStartTrackingTouch"

    invoke-static {v0, v1}, Lcom/android/gallery3d/app/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 826
    return-void
.end method

.method public onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 2
    .parameter "seekBar"

    .prologue
    .line 821
    const-string v0, "mavseekbar"

    const-string v1, "onStopTrackingTouch"

    invoke-static {v0, v1}, Lcom/android/gallery3d/app/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 822
    return-void
.end method
