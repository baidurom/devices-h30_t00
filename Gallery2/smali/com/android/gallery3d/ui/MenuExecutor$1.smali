.class Lcom/android/gallery3d/ui/MenuExecutor$1;
.super Lcom/android/gallery3d/ui/SynchronizedHandler;
.source "MenuExecutor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/gallery3d/ui/MenuExecutor;-><init>(Lcom/android/gallery3d/app/AbstractGalleryActivity;Lcom/android/gallery3d/ui/SelectionManager;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/gallery3d/ui/MenuExecutor;


# direct methods
.method constructor <init>(Lcom/android/gallery3d/ui/MenuExecutor;Lcom/android/gallery3d/ui/GLRoot;)V
    .locals 0
    .parameter
    .parameter "x0"

    .prologue
    .line 118
    iput-object p1, p0, Lcom/android/gallery3d/ui/MenuExecutor$1;->this$0:Lcom/android/gallery3d/ui/MenuExecutor;

    invoke-direct {p0, p2}, Lcom/android/gallery3d/ui/SynchronizedHandler;-><init>(Lcom/android/gallery3d/ui/GLRoot;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4
    .parameter "message"

    .prologue
    const/4 v3, 0x0

    .line 121
    iget v1, p1, Landroid/os/Message;->what:I

    sparse-switch v1, :sswitch_data_0

    .line 180
    :cond_0
    :goto_0
    return-void

    .line 123
    :sswitch_0
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-eqz v1, :cond_0

    .line 124
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/gallery3d/ui/MenuExecutor$ProgressListener;

    .line 125
    .local v0, listener:Lcom/android/gallery3d/ui/MenuExecutor$ProgressListener;
    invoke-interface {v0}, Lcom/android/gallery3d/ui/MenuExecutor$ProgressListener;->onProgressStart()V

    goto :goto_0

    .line 130
    .end local v0           #listener:Lcom/android/gallery3d/ui/MenuExecutor$ProgressListener;
    :sswitch_1
    iget-object v1, p0, Lcom/android/gallery3d/ui/MenuExecutor$1;->this$0:Lcom/android/gallery3d/ui/MenuExecutor;

    #calls: Lcom/android/gallery3d/ui/MenuExecutor;->stopTaskAndDismissDialog()V
    invoke-static {v1}, Lcom/android/gallery3d/ui/MenuExecutor;->access$000(Lcom/android/gallery3d/ui/MenuExecutor;)V

    .line 131
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-eqz v1, :cond_1

    .line 132
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/gallery3d/ui/MenuExecutor$ProgressListener;

    .line 133
    .restart local v0       #listener:Lcom/android/gallery3d/ui/MenuExecutor$ProgressListener;
    iget v1, p1, Landroid/os/Message;->arg1:I

    invoke-interface {v0, v1}, Lcom/android/gallery3d/ui/MenuExecutor$ProgressListener;->onProgressComplete(I)V

    .line 135
    .end local v0           #listener:Lcom/android/gallery3d/ui/MenuExecutor$ProgressListener;
    :cond_1
    iget-object v1, p0, Lcom/android/gallery3d/ui/MenuExecutor$1;->this$0:Lcom/android/gallery3d/ui/MenuExecutor;

    #getter for: Lcom/android/gallery3d/ui/MenuExecutor;->mSelectionManager:Lcom/android/gallery3d/ui/SelectionManager;
    invoke-static {v1}, Lcom/android/gallery3d/ui/MenuExecutor;->access$100(Lcom/android/gallery3d/ui/MenuExecutor;)Lcom/android/gallery3d/ui/SelectionManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/gallery3d/ui/SelectionManager;->leaveSelectionMode()V

    goto :goto_0

    .line 139
    :sswitch_2
    iget-object v1, p0, Lcom/android/gallery3d/ui/MenuExecutor$1;->this$0:Lcom/android/gallery3d/ui/MenuExecutor;

    #getter for: Lcom/android/gallery3d/ui/MenuExecutor;->mDialog:Landroid/app/ProgressDialog;
    invoke-static {v1}, Lcom/android/gallery3d/ui/MenuExecutor;->access$200(Lcom/android/gallery3d/ui/MenuExecutor;)Landroid/app/ProgressDialog;

    move-result-object v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/gallery3d/ui/MenuExecutor$1;->this$0:Lcom/android/gallery3d/ui/MenuExecutor;

    #getter for: Lcom/android/gallery3d/ui/MenuExecutor;->mDialog:Landroid/app/ProgressDialog;
    invoke-static {v1}, Lcom/android/gallery3d/ui/MenuExecutor;->access$200(Lcom/android/gallery3d/ui/MenuExecutor;)Landroid/app/ProgressDialog;

    move-result-object v1

    iget v2, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v1, v2}, Landroid/app/ProgressDialog;->setProgress(I)V

    .line 140
    :cond_2
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-eqz v1, :cond_0

    .line 141
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/gallery3d/ui/MenuExecutor$ProgressListener;

    .line 142
    .restart local v0       #listener:Lcom/android/gallery3d/ui/MenuExecutor$ProgressListener;
    iget v1, p1, Landroid/os/Message;->arg1:I

    invoke-interface {v0, v1}, Lcom/android/gallery3d/ui/MenuExecutor$ProgressListener;->onProgressUpdate(I)V

    goto :goto_0

    .line 148
    .end local v0           #listener:Lcom/android/gallery3d/ui/MenuExecutor$ProgressListener;
    :sswitch_3
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-eqz v1, :cond_0

    .line 149
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/gallery3d/ui/MenuExecutor$ProgressListener;

    .line 150
    .restart local v0       #listener:Lcom/android/gallery3d/ui/MenuExecutor$ProgressListener;
    iget-object v1, p0, Lcom/android/gallery3d/ui/MenuExecutor$1;->this$0:Lcom/android/gallery3d/ui/MenuExecutor;

    iget v2, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v1, v2, v0, v3, v3}, Lcom/android/gallery3d/ui/MenuExecutor;->onMenuClicked(ILcom/android/gallery3d/ui/MenuExecutor$ProgressListener;ZZ)V

    goto :goto_0

    .line 156
    .end local v0           #listener:Lcom/android/gallery3d/ui/MenuExecutor$ProgressListener;
    :sswitch_4
    iget-object v1, p0, Lcom/android/gallery3d/ui/MenuExecutor$1;->this$0:Lcom/android/gallery3d/ui/MenuExecutor;

    #calls: Lcom/android/gallery3d/ui/MenuExecutor;->handlePasteInitEventUiThread(Landroid/os/Message;)V
    invoke-static {v1, p1}, Lcom/android/gallery3d/ui/MenuExecutor;->access$300(Lcom/android/gallery3d/ui/MenuExecutor;Landroid/os/Message;)V

    goto :goto_0

    .line 161
    :sswitch_5
    iget-object v1, p0, Lcom/android/gallery3d/ui/MenuExecutor$1;->this$0:Lcom/android/gallery3d/ui/MenuExecutor;

    #calls: Lcom/android/gallery3d/ui/MenuExecutor;->handlePasteEventUiThread(Landroid/os/Message;)V
    invoke-static {v1, p1}, Lcom/android/gallery3d/ui/MenuExecutor;->access$400(Lcom/android/gallery3d/ui/MenuExecutor;Landroid/os/Message;)V

    goto :goto_0

    .line 166
    :sswitch_6
    iget-object v1, p0, Lcom/android/gallery3d/ui/MenuExecutor$1;->this$0:Lcom/android/gallery3d/ui/MenuExecutor;

    #calls: Lcom/android/gallery3d/ui/MenuExecutor;->handlePasteCompleteEventUiThread(Landroid/os/Message;)V
    invoke-static {v1, p1}, Lcom/android/gallery3d/ui/MenuExecutor;->access$500(Lcom/android/gallery3d/ui/MenuExecutor;Landroid/os/Message;)V

    goto :goto_0

    .line 171
    :sswitch_7
    iget-object v1, p0, Lcom/android/gallery3d/ui/MenuExecutor$1;->this$0:Lcom/android/gallery3d/ui/MenuExecutor;

    #getter for: Lcom/android/gallery3d/ui/MenuExecutor;->mShareProcessor:Lcom/android/gallery3d/ui/MenuExecutor$ShareProgressListener;
    invoke-static {v1}, Lcom/android/gallery3d/ui/MenuExecutor;->access$600(Lcom/android/gallery3d/ui/MenuExecutor;)Lcom/android/gallery3d/ui/MenuExecutor$ShareProgressListener;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 172
    iget-object v1, p0, Lcom/android/gallery3d/ui/MenuExecutor$1;->this$0:Lcom/android/gallery3d/ui/MenuExecutor;

    #getter for: Lcom/android/gallery3d/ui/MenuExecutor;->mShareProcessor:Lcom/android/gallery3d/ui/MenuExecutor$ShareProgressListener;
    invoke-static {v1}, Lcom/android/gallery3d/ui/MenuExecutor;->access$600(Lcom/android/gallery3d/ui/MenuExecutor;)Lcom/android/gallery3d/ui/MenuExecutor$ShareProgressListener;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/gallery3d/ui/MenuExecutor$ShareProgressListener;->onProcessDone()V

    .line 173
    :cond_3
    iget-object v1, p0, Lcom/android/gallery3d/ui/MenuExecutor$1;->this$0:Lcom/android/gallery3d/ui/MenuExecutor;

    const/4 v2, 0x0

    #setter for: Lcom/android/gallery3d/ui/MenuExecutor;->mShareProcessor:Lcom/android/gallery3d/ui/MenuExecutor$ShareProgressListener;
    invoke-static {v1, v2}, Lcom/android/gallery3d/ui/MenuExecutor;->access$602(Lcom/android/gallery3d/ui/MenuExecutor;Lcom/android/gallery3d/ui/MenuExecutor$ShareProgressListener;)Lcom/android/gallery3d/ui/MenuExecutor$ShareProgressListener;

    goto/16 :goto_0

    .line 121
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x2 -> :sswitch_2
        0x3 -> :sswitch_0
        0xf -> :sswitch_4
        0x10 -> :sswitch_5
        0x11 -> :sswitch_6
        0x14 -> :sswitch_3
        0x1e -> :sswitch_7
    .end sparse-switch
.end method
