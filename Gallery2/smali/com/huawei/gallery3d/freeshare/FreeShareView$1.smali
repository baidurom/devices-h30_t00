.class Lcom/huawei/gallery3d/freeshare/FreeShareView$1;
.super Landroid/os/Handler;
.source "FreeShareView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/huawei/gallery3d/freeshare/FreeShareView;-><init>(Lcom/android/gallery3d/app/AbstractGalleryActivity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/huawei/gallery3d/freeshare/FreeShareView;


# direct methods
.method constructor <init>(Lcom/huawei/gallery3d/freeshare/FreeShareView;Landroid/os/Looper;)V
    .locals 0
    .parameter
    .parameter "x0"

    .prologue
    .line 127
    iput-object p1, p0, Lcom/huawei/gallery3d/freeshare/FreeShareView$1;->this$0:Lcom/huawei/gallery3d/freeshare/FreeShareView;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1
    .parameter "msg"

    .prologue
    .line 130
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 148
    :goto_0
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 149
    return-void

    .line 132
    :pswitch_0
    iget-object v0, p0, Lcom/huawei/gallery3d/freeshare/FreeShareView$1;->this$0:Lcom/huawei/gallery3d/freeshare/FreeShareView;

    #calls: Lcom/huawei/gallery3d/freeshare/FreeShareView;->updateDeviceInfo()V
    invoke-static {v0}, Lcom/huawei/gallery3d/freeshare/FreeShareView;->access$000(Lcom/huawei/gallery3d/freeshare/FreeShareView;)V

    goto :goto_0

    .line 137
    :pswitch_1
    iget-object v0, p0, Lcom/huawei/gallery3d/freeshare/FreeShareView$1;->this$0:Lcom/huawei/gallery3d/freeshare/FreeShareView;

    invoke-virtual {v0}, Lcom/huawei/gallery3d/freeshare/FreeShareView;->hide()V

    goto :goto_0

    .line 140
    :pswitch_2
    iget-object v0, p0, Lcom/huawei/gallery3d/freeshare/FreeShareView$1;->this$0:Lcom/huawei/gallery3d/freeshare/FreeShareView;

    #calls: Lcom/huawei/gallery3d/freeshare/FreeShareView;->startSearch()V
    invoke-static {v0}, Lcom/huawei/gallery3d/freeshare/FreeShareView;->access$100(Lcom/huawei/gallery3d/freeshare/FreeShareView;)V

    goto :goto_0

    .line 143
    :pswitch_3
    iget-object v0, p0, Lcom/huawei/gallery3d/freeshare/FreeShareView$1;->this$0:Lcom/huawei/gallery3d/freeshare/FreeShareView;

    #calls: Lcom/huawei/gallery3d/freeshare/FreeShareView;->cancelSearch()V
    invoke-static {v0}, Lcom/huawei/gallery3d/freeshare/FreeShareView;->access$200(Lcom/huawei/gallery3d/freeshare/FreeShareView;)V

    goto :goto_0

    .line 130
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
