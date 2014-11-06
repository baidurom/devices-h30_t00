.class Lcom/huawei/android/multiscreen/mirror/sdk/api/MRBaseLayoutActivity$2;
.super Ljava/lang/Object;
.source "MRBaseLayoutActivity.java"

# interfaces
.implements Landroid/view/SurfaceHolder$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/huawei/android/multiscreen/mirror/sdk/api/MRBaseLayoutActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/huawei/android/multiscreen/mirror/sdk/api/MRBaseLayoutActivity;


# direct methods
.method constructor <init>(Lcom/huawei/android/multiscreen/mirror/sdk/api/MRBaseLayoutActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/huawei/android/multiscreen/mirror/sdk/api/MRBaseLayoutActivity$2;->this$0:Lcom/huawei/android/multiscreen/mirror/sdk/api/MRBaseLayoutActivity;

    .line 52
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public surfaceChanged(Landroid/view/SurfaceHolder;III)V
    .locals 2
    .parameter "holder"
    .parameter "format"
    .parameter "width"
    .parameter "height"

    .prologue
    .line 69
    iget-object v0, p0, Lcom/huawei/android/multiscreen/mirror/sdk/api/MRBaseLayoutActivity$2;->this$0:Lcom/huawei/android/multiscreen/mirror/sdk/api/MRBaseLayoutActivity;

    #getter for: Lcom/huawei/android/multiscreen/mirror/sdk/api/MRBaseLayoutActivity;->TAG:Ljava/lang/String;
    invoke-static {v0}, Lcom/huawei/android/multiscreen/mirror/sdk/api/MRBaseLayoutActivity;->access$1(Lcom/huawei/android/multiscreen/mirror/sdk/api/MRBaseLayoutActivity;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "LayoutActivity surfaceChanged in"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 71
    iget-object v0, p0, Lcom/huawei/android/multiscreen/mirror/sdk/api/MRBaseLayoutActivity$2;->this$0:Lcom/huawei/android/multiscreen/mirror/sdk/api/MRBaseLayoutActivity;

    #getter for: Lcom/huawei/android/multiscreen/mirror/sdk/api/MRBaseLayoutActivity;->TAG:Ljava/lang/String;
    invoke-static {v0}, Lcom/huawei/android/multiscreen/mirror/sdk/api/MRBaseLayoutActivity;->access$1(Lcom/huawei/android/multiscreen/mirror/sdk/api/MRBaseLayoutActivity;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "LayoutActivity surfaceChanged out"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 72
    return-void
.end method

.method public surfaceCreated(Landroid/view/SurfaceHolder;)V
    .locals 4
    .parameter "holder"

    .prologue
    const/4 v3, 0x1

    .line 55
    iget-object v1, p0, Lcom/huawei/android/multiscreen/mirror/sdk/api/MRBaseLayoutActivity$2;->this$0:Lcom/huawei/android/multiscreen/mirror/sdk/api/MRBaseLayoutActivity;

    #getter for: Lcom/huawei/android/multiscreen/mirror/sdk/api/MRBaseLayoutActivity;->TAG:Ljava/lang/String;
    invoke-static {v1}, Lcom/huawei/android/multiscreen/mirror/sdk/api/MRBaseLayoutActivity;->access$1(Lcom/huawei/android/multiscreen/mirror/sdk/api/MRBaseLayoutActivity;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "LayoutActivity surfaceCreated in"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 56
    iget-object v1, p0, Lcom/huawei/android/multiscreen/mirror/sdk/api/MRBaseLayoutActivity$2;->this$0:Lcom/huawei/android/multiscreen/mirror/sdk/api/MRBaseLayoutActivity;

    #getter for: Lcom/huawei/android/multiscreen/mirror/sdk/api/MRBaseLayoutActivity;->isFirstSurfaceCreated:Z
    invoke-static {v1}, Lcom/huawei/android/multiscreen/mirror/sdk/api/MRBaseLayoutActivity;->access$7(Lcom/huawei/android/multiscreen/mirror/sdk/api/MRBaseLayoutActivity;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 58
    iget-object v1, p0, Lcom/huawei/android/multiscreen/mirror/sdk/api/MRBaseLayoutActivity$2;->this$0:Lcom/huawei/android/multiscreen/mirror/sdk/api/MRBaseLayoutActivity;

    #setter for: Lcom/huawei/android/multiscreen/mirror/sdk/api/MRBaseLayoutActivity;->isFirstSurfaceCreated:Z
    invoke-static {v1, v3}, Lcom/huawei/android/multiscreen/mirror/sdk/api/MRBaseLayoutActivity;->access$8(Lcom/huawei/android/multiscreen/mirror/sdk/api/MRBaseLayoutActivity;Z)V

    .line 59
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 60
    .local v0, intent:Landroid/content/Intent;
    iget-object v1, p0, Lcom/huawei/android/multiscreen/mirror/sdk/api/MRBaseLayoutActivity$2;->this$0:Lcom/huawei/android/multiscreen/mirror/sdk/api/MRBaseLayoutActivity;

    #getter for: Lcom/huawei/android/multiscreen/mirror/sdk/api/MRBaseLayoutActivity;->context:Lcom/huawei/android/multiscreen/mirror/sdk/api/MRBaseLayoutActivity;
    invoke-static {v1}, Lcom/huawei/android/multiscreen/mirror/sdk/api/MRBaseLayoutActivity;->access$3(Lcom/huawei/android/multiscreen/mirror/sdk/api/MRBaseLayoutActivity;)Lcom/huawei/android/multiscreen/mirror/sdk/api/MRBaseLayoutActivity;

    move-result-object v1

    iget-object v2, p0, Lcom/huawei/android/multiscreen/mirror/sdk/api/MRBaseLayoutActivity$2;->this$0:Lcom/huawei/android/multiscreen/mirror/sdk/api/MRBaseLayoutActivity;

    invoke-virtual {v2}, Lcom/huawei/android/multiscreen/mirror/sdk/api/MRBaseLayoutActivity;->getServiceClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 61
    iget-object v1, p0, Lcom/huawei/android/multiscreen/mirror/sdk/api/MRBaseLayoutActivity$2;->this$0:Lcom/huawei/android/multiscreen/mirror/sdk/api/MRBaseLayoutActivity;

    iget-object v2, p0, Lcom/huawei/android/multiscreen/mirror/sdk/api/MRBaseLayoutActivity$2;->this$0:Lcom/huawei/android/multiscreen/mirror/sdk/api/MRBaseLayoutActivity;

    #getter for: Lcom/huawei/android/multiscreen/mirror/sdk/api/MRBaseLayoutActivity;->conn:Landroid/content/ServiceConnection;
    invoke-static {v2}, Lcom/huawei/android/multiscreen/mirror/sdk/api/MRBaseLayoutActivity;->access$6(Lcom/huawei/android/multiscreen/mirror/sdk/api/MRBaseLayoutActivity;)Landroid/content/ServiceConnection;

    move-result-object v2

    invoke-virtual {v1, v0, v2, v3}, Lcom/huawei/android/multiscreen/mirror/sdk/api/MRBaseLayoutActivity;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    .line 63
    .end local v0           #intent:Landroid/content/Intent;
    :cond_0
    iget-object v1, p0, Lcom/huawei/android/multiscreen/mirror/sdk/api/MRBaseLayoutActivity$2;->this$0:Lcom/huawei/android/multiscreen/mirror/sdk/api/MRBaseLayoutActivity;

    #getter for: Lcom/huawei/android/multiscreen/mirror/sdk/api/MRBaseLayoutActivity;->TAG:Ljava/lang/String;
    invoke-static {v1}, Lcom/huawei/android/multiscreen/mirror/sdk/api/MRBaseLayoutActivity;->access$1(Lcom/huawei/android/multiscreen/mirror/sdk/api/MRBaseLayoutActivity;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "LayoutActivity surfaceCreated out"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 64
    return-void
.end method

.method public surfaceDestroyed(Landroid/view/SurfaceHolder;)V
    .locals 2
    .parameter "holder"

    .prologue
    .line 76
    iget-object v0, p0, Lcom/huawei/android/multiscreen/mirror/sdk/api/MRBaseLayoutActivity$2;->this$0:Lcom/huawei/android/multiscreen/mirror/sdk/api/MRBaseLayoutActivity;

    #getter for: Lcom/huawei/android/multiscreen/mirror/sdk/api/MRBaseLayoutActivity;->TAG:Ljava/lang/String;
    invoke-static {v0}, Lcom/huawei/android/multiscreen/mirror/sdk/api/MRBaseLayoutActivity;->access$1(Lcom/huawei/android/multiscreen/mirror/sdk/api/MRBaseLayoutActivity;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "LayoutActivity surfaceDestroyed in"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 77
    iget-object v0, p0, Lcom/huawei/android/multiscreen/mirror/sdk/api/MRBaseLayoutActivity$2;->this$0:Lcom/huawei/android/multiscreen/mirror/sdk/api/MRBaseLayoutActivity;

    #calls: Lcom/huawei/android/multiscreen/mirror/sdk/api/MRBaseLayoutActivity;->finishActivity()V
    invoke-static {v0}, Lcom/huawei/android/multiscreen/mirror/sdk/api/MRBaseLayoutActivity;->access$9(Lcom/huawei/android/multiscreen/mirror/sdk/api/MRBaseLayoutActivity;)V

    .line 78
    iget-object v0, p0, Lcom/huawei/android/multiscreen/mirror/sdk/api/MRBaseLayoutActivity$2;->this$0:Lcom/huawei/android/multiscreen/mirror/sdk/api/MRBaseLayoutActivity;

    #getter for: Lcom/huawei/android/multiscreen/mirror/sdk/api/MRBaseLayoutActivity;->TAG:Ljava/lang/String;
    invoke-static {v0}, Lcom/huawei/android/multiscreen/mirror/sdk/api/MRBaseLayoutActivity;->access$1(Lcom/huawei/android/multiscreen/mirror/sdk/api/MRBaseLayoutActivity;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "LayoutActivity surfaceDestroyed out"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 79
    return-void
.end method
