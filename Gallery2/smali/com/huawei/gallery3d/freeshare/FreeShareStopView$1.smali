.class Lcom/huawei/gallery3d/freeshare/FreeShareStopView$1;
.super Landroid/os/Handler;
.source "FreeShareStopView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/huawei/gallery3d/freeshare/FreeShareStopView;-><init>(Lcom/android/gallery3d/app/AbstractGalleryActivity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/huawei/gallery3d/freeshare/FreeShareStopView;


# direct methods
.method constructor <init>(Lcom/huawei/gallery3d/freeshare/FreeShareStopView;Landroid/os/Looper;)V
    .locals 0
    .parameter
    .parameter "x0"

    .prologue
    .line 56
    iput-object p1, p0, Lcom/huawei/gallery3d/freeshare/FreeShareStopView$1;->this$0:Lcom/huawei/gallery3d/freeshare/FreeShareStopView;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .parameter "msg"

    .prologue
    .line 59
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 66
    :goto_0
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 67
    return-void

    .line 61
    :pswitch_0
    iget-object v0, p0, Lcom/huawei/gallery3d/freeshare/FreeShareStopView$1;->this$0:Lcom/huawei/gallery3d/freeshare/FreeShareStopView;

    const/4 v1, 0x1

    #calls: Lcom/huawei/gallery3d/freeshare/FreeShareStopView;->updateView(Z)V
    invoke-static {v0, v1}, Lcom/huawei/gallery3d/freeshare/FreeShareStopView;->access$000(Lcom/huawei/gallery3d/freeshare/FreeShareStopView;Z)V

    goto :goto_0

    .line 59
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
