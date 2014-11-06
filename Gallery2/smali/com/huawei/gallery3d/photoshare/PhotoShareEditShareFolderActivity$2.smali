.class Lcom/huawei/gallery3d/photoshare/PhotoShareEditShareFolderActivity$2;
.super Landroid/os/Handler;
.source "PhotoShareEditShareFolderActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/huawei/gallery3d/photoshare/PhotoShareEditShareFolderActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/huawei/gallery3d/photoshare/PhotoShareEditShareFolderActivity;


# direct methods
.method constructor <init>(Lcom/huawei/gallery3d/photoshare/PhotoShareEditShareFolderActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 87
    iput-object p1, p0, Lcom/huawei/gallery3d/photoshare/PhotoShareEditShareFolderActivity$2;->this$0:Lcom/huawei/gallery3d/photoshare/PhotoShareEditShareFolderActivity;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .parameter "msg"

    .prologue
    .line 90
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 102
    :goto_0
    return-void

    .line 92
    :pswitch_0
    iget-object v0, p0, Lcom/huawei/gallery3d/photoshare/PhotoShareEditShareFolderActivity$2;->this$0:Lcom/huawei/gallery3d/photoshare/PhotoShareEditShareFolderActivity;

    const/4 v1, 0x0

    #calls: Lcom/huawei/gallery3d/photoshare/PhotoShareEditShareFolderActivity;->refresh(I)V
    invoke-static {v0, v1}, Lcom/huawei/gallery3d/photoshare/PhotoShareEditShareFolderActivity;->access$100(Lcom/huawei/gallery3d/photoshare/PhotoShareEditShareFolderActivity;I)V

    goto :goto_0

    .line 96
    :pswitch_1
    iget-object v0, p0, Lcom/huawei/gallery3d/photoshare/PhotoShareEditShareFolderActivity$2;->this$0:Lcom/huawei/gallery3d/photoshare/PhotoShareEditShareFolderActivity;

    const/4 v1, 0x1

    #calls: Lcom/huawei/gallery3d/photoshare/PhotoShareEditShareFolderActivity;->refresh(I)V
    invoke-static {v0, v1}, Lcom/huawei/gallery3d/photoshare/PhotoShareEditShareFolderActivity;->access$100(Lcom/huawei/gallery3d/photoshare/PhotoShareEditShareFolderActivity;I)V

    goto :goto_0

    .line 90
    :pswitch_data_0
    .packed-switch 0x70
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
