.class Lcom/android/gallery3d/ui/FaceScanBar$1;
.super Landroid/os/Handler;
.source "FaceScanBar.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/gallery3d/ui/FaceScanBar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/gallery3d/ui/FaceScanBar;


# direct methods
.method constructor <init>(Lcom/android/gallery3d/ui/FaceScanBar;)V
    .locals 0
    .parameter

    .prologue
    .line 26
    iput-object p1, p0, Lcom/android/gallery3d/ui/FaceScanBar$1;->this$0:Lcom/android/gallery3d/ui/FaceScanBar;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3
    .parameter "msg"

    .prologue
    const/4 v2, 0x0

    .line 29
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    .line 50
    :cond_0
    :goto_0
    return-void

    .line 31
    :pswitch_0
    iget-object v1, p0, Lcom/android/gallery3d/ui/FaceScanBar$1;->this$0:Lcom/android/gallery3d/ui/FaceScanBar;

    #getter for: Lcom/android/gallery3d/ui/FaceScanBar;->mProgressView:Landroid/view/View;
    invoke-static {v1}, Lcom/android/gallery3d/ui/FaceScanBar;->access$000(Lcom/android/gallery3d/ui/FaceScanBar;)Landroid/view/View;

    move-result-object v1

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 34
    :pswitch_1
    iget-object v1, p0, Lcom/android/gallery3d/ui/FaceScanBar$1;->this$0:Lcom/android/gallery3d/ui/FaceScanBar;

    #getter for: Lcom/android/gallery3d/ui/FaceScanBar;->mPictureToScan:I
    invoke-static {v1}, Lcom/android/gallery3d/ui/FaceScanBar;->access$100(Lcom/android/gallery3d/ui/FaceScanBar;)I

    move-result v1

    if-lez v1, :cond_0

    .line 35
    iget-object v1, p0, Lcom/android/gallery3d/ui/FaceScanBar$1;->this$0:Lcom/android/gallery3d/ui/FaceScanBar;

    #getter for: Lcom/android/gallery3d/ui/FaceScanBar;->mProgressView:Landroid/view/View;
    invoke-static {v1}, Lcom/android/gallery3d/ui/FaceScanBar;->access$000(Lcom/android/gallery3d/ui/FaceScanBar;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 39
    :pswitch_2
    iget-object v1, p0, Lcom/android/gallery3d/ui/FaceScanBar$1;->this$0:Lcom/android/gallery3d/ui/FaceScanBar;

    #getter for: Lcom/android/gallery3d/ui/FaceScanBar;->mProgressView:Landroid/view/View;
    invoke-static {v1}, Lcom/android/gallery3d/ui/FaceScanBar;->access$000(Lcom/android/gallery3d/ui/FaceScanBar;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 40
    iget-object v1, p0, Lcom/android/gallery3d/ui/FaceScanBar$1;->this$0:Lcom/android/gallery3d/ui/FaceScanBar;

    #getter for: Lcom/android/gallery3d/ui/FaceScanBar;->mProgressBar:Landroid/widget/ProgressBar;
    invoke-static {v1}, Lcom/android/gallery3d/ui/FaceScanBar;->access$200(Lcom/android/gallery3d/ui/FaceScanBar;)Landroid/widget/ProgressBar;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/widget/ProgressBar;->setProgress(I)V

    goto :goto_0

    .line 43
    :pswitch_3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget v2, p1, Landroid/os/Message;->arg2:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/gallery3d/ui/FaceScanBar$1;->this$0:Lcom/android/gallery3d/ui/FaceScanBar;

    #getter for: Lcom/android/gallery3d/ui/FaceScanBar;->mPictureToScan:I
    invoke-static {v2}, Lcom/android/gallery3d/ui/FaceScanBar;->access$100(Lcom/android/gallery3d/ui/FaceScanBar;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 44
    .local v0, rightString:Ljava/lang/String;
    iget-object v1, p0, Lcom/android/gallery3d/ui/FaceScanBar$1;->this$0:Lcom/android/gallery3d/ui/FaceScanBar;

    #getter for: Lcom/android/gallery3d/ui/FaceScanBar;->mRightText:Landroid/widget/TextView;
    invoke-static {v1}, Lcom/android/gallery3d/ui/FaceScanBar;->access$300(Lcom/android/gallery3d/ui/FaceScanBar;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 45
    iget-object v1, p0, Lcom/android/gallery3d/ui/FaceScanBar$1;->this$0:Lcom/android/gallery3d/ui/FaceScanBar;

    #getter for: Lcom/android/gallery3d/ui/FaceScanBar;->mProgressBar:Landroid/widget/ProgressBar;
    invoke-static {v1}, Lcom/android/gallery3d/ui/FaceScanBar;->access$200(Lcom/android/gallery3d/ui/FaceScanBar;)Landroid/widget/ProgressBar;

    move-result-object v1

    iget v2, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v1, v2}, Landroid/widget/ProgressBar;->setProgress(I)V

    goto :goto_0

    .line 29
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
