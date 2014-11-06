.class Lcom/huawei/gallery3d/photoshare/ui/AbstractPhotoShareActivity$1;
.super Landroid/content/BroadcastReceiver;
.source "AbstractPhotoShareActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/huawei/gallery3d/photoshare/ui/AbstractPhotoShareActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/huawei/gallery3d/photoshare/ui/AbstractPhotoShareActivity;


# direct methods
.method constructor <init>(Lcom/huawei/gallery3d/photoshare/ui/AbstractPhotoShareActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 79
    iput-object p1, p0, Lcom/huawei/gallery3d/photoshare/ui/AbstractPhotoShareActivity$1;->this$0:Lcom/huawei/gallery3d/photoshare/ui/AbstractPhotoShareActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 82
    iget-object v0, p0, Lcom/huawei/gallery3d/photoshare/ui/AbstractPhotoShareActivity$1;->this$0:Lcom/huawei/gallery3d/photoshare/ui/AbstractPhotoShareActivity;

    invoke-virtual {v0, p2}, Lcom/huawei/gallery3d/photoshare/ui/AbstractPhotoShareActivity;->onReceiveBroadcast(Landroid/content/Intent;)V

    .line 83
    return-void
.end method
