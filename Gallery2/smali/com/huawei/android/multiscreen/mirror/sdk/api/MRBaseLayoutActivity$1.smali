.class Lcom/huawei/android/multiscreen/mirror/sdk/api/MRBaseLayoutActivity$1;
.super Ljava/lang/Object;
.source "MRBaseLayoutActivity.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/huawei/android/multiscreen/mirror/sdk/api/MRBaseLayoutActivity;
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
    iput-object p1, p0, Lcom/huawei/android/multiscreen/mirror/sdk/api/MRBaseLayoutActivity$1;->this$0:Lcom/huawei/android/multiscreen/mirror/sdk/api/MRBaseLayoutActivity;

    .line 145
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 3
    .parameter "name"
    .parameter "service"

    .prologue
    .line 154
    iget-object v1, p0, Lcom/huawei/android/multiscreen/mirror/sdk/api/MRBaseLayoutActivity$1;->this$0:Lcom/huawei/android/multiscreen/mirror/sdk/api/MRBaseLayoutActivity;

    #getter for: Lcom/huawei/android/multiscreen/mirror/sdk/api/MRBaseLayoutActivity;->TAG:Ljava/lang/String;
    invoke-static {v1}, Lcom/huawei/android/multiscreen/mirror/sdk/api/MRBaseLayoutActivity;->access$1(Lcom/huawei/android/multiscreen/mirror/sdk/api/MRBaseLayoutActivity;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "LayoutActivity onServiceConnected()"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 156
    iget-object v1, p0, Lcom/huawei/android/multiscreen/mirror/sdk/api/MRBaseLayoutActivity$1;->this$0:Lcom/huawei/android/multiscreen/mirror/sdk/api/MRBaseLayoutActivity;

    check-cast p2, Lcom/huawei/android/multiscreen/mirror/sdk/api/MRSinkServiceHelper$SerivceBinder;

    .end local p2
    #setter for: Lcom/huawei/android/multiscreen/mirror/sdk/api/MRBaseLayoutActivity;->mBinder:Lcom/huawei/android/multiscreen/mirror/sdk/api/MRSinkServiceHelper$SerivceBinder;
    invoke-static {v1, p2}, Lcom/huawei/android/multiscreen/mirror/sdk/api/MRBaseLayoutActivity;->access$0(Lcom/huawei/android/multiscreen/mirror/sdk/api/MRBaseLayoutActivity;Lcom/huawei/android/multiscreen/mirror/sdk/api/MRSinkServiceHelper$SerivceBinder;)V

    .line 157
    iget-object v1, p0, Lcom/huawei/android/multiscreen/mirror/sdk/api/MRBaseLayoutActivity$1;->this$0:Lcom/huawei/android/multiscreen/mirror/sdk/api/MRBaseLayoutActivity;

    #getter for: Lcom/huawei/android/multiscreen/mirror/sdk/api/MRBaseLayoutActivity;->mBinder:Lcom/huawei/android/multiscreen/mirror/sdk/api/MRSinkServiceHelper$SerivceBinder;
    invoke-static {v1}, Lcom/huawei/android/multiscreen/mirror/sdk/api/MRBaseLayoutActivity;->access$2(Lcom/huawei/android/multiscreen/mirror/sdk/api/MRBaseLayoutActivity;)Lcom/huawei/android/multiscreen/mirror/sdk/api/MRSinkServiceHelper$SerivceBinder;

    move-result-object v1

    iget-object v2, p0, Lcom/huawei/android/multiscreen/mirror/sdk/api/MRBaseLayoutActivity$1;->this$0:Lcom/huawei/android/multiscreen/mirror/sdk/api/MRBaseLayoutActivity;

    #getter for: Lcom/huawei/android/multiscreen/mirror/sdk/api/MRBaseLayoutActivity;->context:Lcom/huawei/android/multiscreen/mirror/sdk/api/MRBaseLayoutActivity;
    invoke-static {v2}, Lcom/huawei/android/multiscreen/mirror/sdk/api/MRBaseLayoutActivity;->access$3(Lcom/huawei/android/multiscreen/mirror/sdk/api/MRBaseLayoutActivity;)Lcom/huawei/android/multiscreen/mirror/sdk/api/MRBaseLayoutActivity;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/huawei/android/multiscreen/mirror/sdk/api/MRSinkServiceHelper$SerivceBinder;->setCallback(Lcom/huawei/android/multiscreen/mirror/sdk/api/MRSinkServiceHelper$ILayoutSinkCallback;)V

    .line 159
    iget-object v1, p0, Lcom/huawei/android/multiscreen/mirror/sdk/api/MRBaseLayoutActivity$1;->this$0:Lcom/huawei/android/multiscreen/mirror/sdk/api/MRBaseLayoutActivity;

    #getter for: Lcom/huawei/android/multiscreen/mirror/sdk/api/MRBaseLayoutActivity;->isActivityAlive:Z
    invoke-static {v1}, Lcom/huawei/android/multiscreen/mirror/sdk/api/MRBaseLayoutActivity;->access$4(Lcom/huawei/android/multiscreen/mirror/sdk/api/MRBaseLayoutActivity;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 160
    iget-object v1, p0, Lcom/huawei/android/multiscreen/mirror/sdk/api/MRBaseLayoutActivity$1;->this$0:Lcom/huawei/android/multiscreen/mirror/sdk/api/MRBaseLayoutActivity;

    #getter for: Lcom/huawei/android/multiscreen/mirror/sdk/api/MRBaseLayoutActivity;->mBinder:Lcom/huawei/android/multiscreen/mirror/sdk/api/MRSinkServiceHelper$SerivceBinder;
    invoke-static {v1}, Lcom/huawei/android/multiscreen/mirror/sdk/api/MRBaseLayoutActivity;->access$2(Lcom/huawei/android/multiscreen/mirror/sdk/api/MRBaseLayoutActivity;)Lcom/huawei/android/multiscreen/mirror/sdk/api/MRSinkServiceHelper$SerivceBinder;

    move-result-object v1

    iget-object v2, p0, Lcom/huawei/android/multiscreen/mirror/sdk/api/MRBaseLayoutActivity$1;->this$0:Lcom/huawei/android/multiscreen/mirror/sdk/api/MRBaseLayoutActivity;

    #getter for: Lcom/huawei/android/multiscreen/mirror/sdk/api/MRBaseLayoutActivity;->surface:Landroid/view/Surface;
    invoke-static {v2}, Lcom/huawei/android/multiscreen/mirror/sdk/api/MRBaseLayoutActivity;->access$5(Lcom/huawei/android/multiscreen/mirror/sdk/api/MRBaseLayoutActivity;)Landroid/view/Surface;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/huawei/android/multiscreen/mirror/sdk/api/MRSinkServiceHelper$SerivceBinder;->acceptSurface(Landroid/view/Surface;)Z

    move-result v0

    .line 161
    .local v0, acceptResult:Z
    if-eqz v0, :cond_0

    .line 162
    iget-object v1, p0, Lcom/huawei/android/multiscreen/mirror/sdk/api/MRBaseLayoutActivity$1;->this$0:Lcom/huawei/android/multiscreen/mirror/sdk/api/MRBaseLayoutActivity;

    #getter for: Lcom/huawei/android/multiscreen/mirror/sdk/api/MRBaseLayoutActivity;->mBinder:Lcom/huawei/android/multiscreen/mirror/sdk/api/MRSinkServiceHelper$SerivceBinder;
    invoke-static {v1}, Lcom/huawei/android/multiscreen/mirror/sdk/api/MRBaseLayoutActivity;->access$2(Lcom/huawei/android/multiscreen/mirror/sdk/api/MRBaseLayoutActivity;)Lcom/huawei/android/multiscreen/mirror/sdk/api/MRSinkServiceHelper$SerivceBinder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/huawei/android/multiscreen/mirror/sdk/api/MRSinkServiceHelper$SerivceBinder;->waitForConnected()V

    .line 172
    .end local v0           #acceptResult:Z
    :goto_0
    return-void

    .line 165
    .restart local v0       #acceptResult:Z
    :cond_0
    iget-object v1, p0, Lcom/huawei/android/multiscreen/mirror/sdk/api/MRBaseLayoutActivity$1;->this$0:Lcom/huawei/android/multiscreen/mirror/sdk/api/MRBaseLayoutActivity;

    #getter for: Lcom/huawei/android/multiscreen/mirror/sdk/api/MRBaseLayoutActivity;->context:Lcom/huawei/android/multiscreen/mirror/sdk/api/MRBaseLayoutActivity;
    invoke-static {v1}, Lcom/huawei/android/multiscreen/mirror/sdk/api/MRBaseLayoutActivity;->access$3(Lcom/huawei/android/multiscreen/mirror/sdk/api/MRBaseLayoutActivity;)Lcom/huawei/android/multiscreen/mirror/sdk/api/MRBaseLayoutActivity;

    move-result-object v1

    invoke-virtual {v1}, Lcom/huawei/android/multiscreen/mirror/sdk/api/MRBaseLayoutActivity;->finish()V

    goto :goto_0

    .line 168
    .end local v0           #acceptResult:Z
    :cond_1
    iget-object v1, p0, Lcom/huawei/android/multiscreen/mirror/sdk/api/MRBaseLayoutActivity$1;->this$0:Lcom/huawei/android/multiscreen/mirror/sdk/api/MRBaseLayoutActivity;

    #getter for: Lcom/huawei/android/multiscreen/mirror/sdk/api/MRBaseLayoutActivity;->mBinder:Lcom/huawei/android/multiscreen/mirror/sdk/api/MRSinkServiceHelper$SerivceBinder;
    invoke-static {v1}, Lcom/huawei/android/multiscreen/mirror/sdk/api/MRBaseLayoutActivity;->access$2(Lcom/huawei/android/multiscreen/mirror/sdk/api/MRBaseLayoutActivity;)Lcom/huawei/android/multiscreen/mirror/sdk/api/MRSinkServiceHelper$SerivceBinder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/huawei/android/multiscreen/mirror/sdk/api/MRSinkServiceHelper$SerivceBinder;->refuseMirror()V

    .line 169
    iget-object v1, p0, Lcom/huawei/android/multiscreen/mirror/sdk/api/MRBaseLayoutActivity$1;->this$0:Lcom/huawei/android/multiscreen/mirror/sdk/api/MRBaseLayoutActivity;

    iget-object v2, p0, Lcom/huawei/android/multiscreen/mirror/sdk/api/MRBaseLayoutActivity$1;->this$0:Lcom/huawei/android/multiscreen/mirror/sdk/api/MRBaseLayoutActivity;

    #getter for: Lcom/huawei/android/multiscreen/mirror/sdk/api/MRBaseLayoutActivity;->conn:Landroid/content/ServiceConnection;
    invoke-static {v2}, Lcom/huawei/android/multiscreen/mirror/sdk/api/MRBaseLayoutActivity;->access$6(Lcom/huawei/android/multiscreen/mirror/sdk/api/MRBaseLayoutActivity;)Landroid/content/ServiceConnection;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/huawei/android/multiscreen/mirror/sdk/api/MRBaseLayoutActivity;->unbindService(Landroid/content/ServiceConnection;)V

    goto :goto_0
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 2
    .parameter "name"

    .prologue
    .line 149
    iget-object v0, p0, Lcom/huawei/android/multiscreen/mirror/sdk/api/MRBaseLayoutActivity$1;->this$0:Lcom/huawei/android/multiscreen/mirror/sdk/api/MRBaseLayoutActivity;

    const/4 v1, 0x0

    #setter for: Lcom/huawei/android/multiscreen/mirror/sdk/api/MRBaseLayoutActivity;->mBinder:Lcom/huawei/android/multiscreen/mirror/sdk/api/MRSinkServiceHelper$SerivceBinder;
    invoke-static {v0, v1}, Lcom/huawei/android/multiscreen/mirror/sdk/api/MRBaseLayoutActivity;->access$0(Lcom/huawei/android/multiscreen/mirror/sdk/api/MRBaseLayoutActivity;Lcom/huawei/android/multiscreen/mirror/sdk/api/MRSinkServiceHelper$SerivceBinder;)V

    .line 150
    return-void
.end method
