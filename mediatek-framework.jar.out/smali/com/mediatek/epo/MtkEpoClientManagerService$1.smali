.class Lcom/mediatek/epo/MtkEpoClientManagerService$1;
.super Landroid/content/BroadcastReceiver;
.source "MtkEpoClientManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/epo/MtkEpoClientManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/epo/MtkEpoClientManagerService;


# direct methods
.method constructor <init>(Lcom/mediatek/epo/MtkEpoClientManagerService;)V
    .locals 0
    .parameter

    .prologue
    .line 179
    iput-object p1, p0, Lcom/mediatek/epo/MtkEpoClientManagerService$1;->this$0:Lcom/mediatek/epo/MtkEpoClientManagerService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 7
    .parameter "context"
    .parameter "intent"

    .prologue
    const/4 v6, 0x1

    .line 181
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 182
    .local v0, action:Ljava/lang/String;
    const-string v3, "MTK_EPO_TIMEOUT"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 183
    iget-object v3, p0, Lcom/mediatek/epo/MtkEpoClientManagerService$1;->this$0:Lcom/mediatek/epo/MtkEpoClientManagerService;

    const-string v4, "timeout"

    #calls: Lcom/mediatek/epo/MtkEpoClientManagerService;->log(Ljava/lang/String;)V
    invoke-static {v3, v4}, Lcom/mediatek/epo/MtkEpoClientManagerService;->access$000(Lcom/mediatek/epo/MtkEpoClientManagerService;Ljava/lang/String;)V

    .line 184
    iget-object v3, p0, Lcom/mediatek/epo/MtkEpoClientManagerService$1;->this$0:Lcom/mediatek/epo/MtkEpoClientManagerService;

    #setter for: Lcom/mediatek/epo/MtkEpoClientManagerService;->mFileExpired:Z
    invoke-static {v3, v6}, Lcom/mediatek/epo/MtkEpoClientManagerService;->access$102(Lcom/mediatek/epo/MtkEpoClientManagerService;Z)Z

    .line 185
    iget-object v3, p0, Lcom/mediatek/epo/MtkEpoClientManagerService$1;->this$0:Lcom/mediatek/epo/MtkEpoClientManagerService;

    #calls: Lcom/mediatek/epo/MtkEpoClientManagerService;->checkBeforeDownload()I
    invoke-static {v3}, Lcom/mediatek/epo/MtkEpoClientManagerService;->access$200(Lcom/mediatek/epo/MtkEpoClientManagerService;)I

    .line 207
    :cond_0
    :goto_0
    return-void

    .line 186
    :cond_1
    const-string v3, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 187
    iget-object v3, p0, Lcom/mediatek/epo/MtkEpoClientManagerService$1;->this$0:Lcom/mediatek/epo/MtkEpoClientManagerService;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "connectivity change mFileExpired="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/mediatek/epo/MtkEpoClientManagerService$1;->this$0:Lcom/mediatek/epo/MtkEpoClientManagerService;

    #getter for: Lcom/mediatek/epo/MtkEpoClientManagerService;->mFileExpired:Z
    invoke-static {v5}, Lcom/mediatek/epo/MtkEpoClientManagerService;->access$100(Lcom/mediatek/epo/MtkEpoClientManagerService;)Z

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ",mUpdateResult="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/mediatek/epo/MtkEpoClientManagerService$1;->this$0:Lcom/mediatek/epo/MtkEpoClientManagerService;

    #getter for: Lcom/mediatek/epo/MtkEpoClientManagerService;->mUpdateResult:I
    invoke-static {v5}, Lcom/mediatek/epo/MtkEpoClientManagerService;->access$300(Lcom/mediatek/epo/MtkEpoClientManagerService;)I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    #calls: Lcom/mediatek/epo/MtkEpoClientManagerService;->log(Ljava/lang/String;)V
    invoke-static {v3, v4}, Lcom/mediatek/epo/MtkEpoClientManagerService;->access$000(Lcom/mediatek/epo/MtkEpoClientManagerService;Ljava/lang/String;)V

    .line 188
    iget-object v3, p0, Lcom/mediatek/epo/MtkEpoClientManagerService$1;->this$0:Lcom/mediatek/epo/MtkEpoClientManagerService;

    #getter for: Lcom/mediatek/epo/MtkEpoClientManagerService;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/mediatek/epo/MtkEpoClientManagerService;->access$400(Lcom/mediatek/epo/MtkEpoClientManagerService;)Landroid/content/Context;

    move-result-object v3

    const-string v4, "connectivity"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/ConnectivityManager;

    .line 190
    .local v1, cm:Landroid/net/ConnectivityManager;
    invoke-virtual {v1}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v2

    .line 191
    .local v2, networkInfo:Landroid/net/NetworkInfo;
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 192
    iget-object v3, p0, Lcom/mediatek/epo/MtkEpoClientManagerService$1;->this$0:Lcom/mediatek/epo/MtkEpoClientManagerService;

    #getter for: Lcom/mediatek/epo/MtkEpoClientManagerService;->mAutoUpdate:Z
    invoke-static {v3}, Lcom/mediatek/epo/MtkEpoClientManagerService;->access$500(Lcom/mediatek/epo/MtkEpoClientManagerService;)Z

    move-result v3

    if-ne v3, v6, :cond_2

    iget-object v3, p0, Lcom/mediatek/epo/MtkEpoClientManagerService$1;->this$0:Lcom/mediatek/epo/MtkEpoClientManagerService;

    #getter for: Lcom/mediatek/epo/MtkEpoClientManagerService;->mFileExpired:Z
    invoke-static {v3}, Lcom/mediatek/epo/MtkEpoClientManagerService;->access$100(Lcom/mediatek/epo/MtkEpoClientManagerService;)Z

    move-result v3

    if-ne v3, v6, :cond_2

    .line 193
    iget-object v3, p0, Lcom/mediatek/epo/MtkEpoClientManagerService$1;->this$0:Lcom/mediatek/epo/MtkEpoClientManagerService;

    #calls: Lcom/mediatek/epo/MtkEpoClientManagerService;->checkBeforeDownload()I
    invoke-static {v3}, Lcom/mediatek/epo/MtkEpoClientManagerService;->access$200(Lcom/mediatek/epo/MtkEpoClientManagerService;)I

    goto :goto_0

    .line 194
    :cond_2
    invoke-virtual {v2}, Landroid/net/NetworkInfo;->getType()I

    move-result v3

    if-ne v3, v6, :cond_0

    .line 195
    iget-object v3, p0, Lcom/mediatek/epo/MtkEpoClientManagerService$1;->this$0:Lcom/mediatek/epo/MtkEpoClientManagerService;

    #getter for: Lcom/mediatek/epo/MtkEpoClientManagerService;->mUpdateResult:I
    invoke-static {v3}, Lcom/mediatek/epo/MtkEpoClientManagerService;->access$300(Lcom/mediatek/epo/MtkEpoClientManagerService;)I

    move-result v3

    if-ne v3, v6, :cond_0

    .line 196
    iget-object v3, p0, Lcom/mediatek/epo/MtkEpoClientManagerService$1;->this$0:Lcom/mediatek/epo/MtkEpoClientManagerService;

    #calls: Lcom/mediatek/epo/MtkEpoClientManagerService;->checkBeforeDownload()I
    invoke-static {v3}, Lcom/mediatek/epo/MtkEpoClientManagerService;->access$200(Lcom/mediatek/epo/MtkEpoClientManagerService;)I

    goto :goto_0

    .line 200
    .end local v1           #cm:Landroid/net/ConnectivityManager;
    .end local v2           #networkInfo:Landroid/net/NetworkInfo;
    :cond_3
    const-string v3, "GPS_EPO_DOWNLOAD_REQUEST"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 201
    iget-object v3, p0, Lcom/mediatek/epo/MtkEpoClientManagerService$1;->this$0:Lcom/mediatek/epo/MtkEpoClientManagerService;

    const-string v4, "EPO download request"

    #calls: Lcom/mediatek/epo/MtkEpoClientManagerService;->log(Ljava/lang/String;)V
    invoke-static {v3, v4}, Lcom/mediatek/epo/MtkEpoClientManagerService;->access$000(Lcom/mediatek/epo/MtkEpoClientManagerService;Ljava/lang/String;)V

    .line 202
    iget-object v3, p0, Lcom/mediatek/epo/MtkEpoClientManagerService$1;->this$0:Lcom/mediatek/epo/MtkEpoClientManagerService;

    #setter for: Lcom/mediatek/epo/MtkEpoClientManagerService;->mFileExpired:Z
    invoke-static {v3, v6}, Lcom/mediatek/epo/MtkEpoClientManagerService;->access$102(Lcom/mediatek/epo/MtkEpoClientManagerService;Z)Z

    .line 203
    iget-object v3, p0, Lcom/mediatek/epo/MtkEpoClientManagerService$1;->this$0:Lcom/mediatek/epo/MtkEpoClientManagerService;

    #getter for: Lcom/mediatek/epo/MtkEpoClientManagerService;->mAutoUpdate:Z
    invoke-static {v3}, Lcom/mediatek/epo/MtkEpoClientManagerService;->access$500(Lcom/mediatek/epo/MtkEpoClientManagerService;)Z

    move-result v3

    if-ne v3, v6, :cond_0

    .line 204
    iget-object v3, p0, Lcom/mediatek/epo/MtkEpoClientManagerService$1;->this$0:Lcom/mediatek/epo/MtkEpoClientManagerService;

    #calls: Lcom/mediatek/epo/MtkEpoClientManagerService;->checkBeforeDownload()I
    invoke-static {v3}, Lcom/mediatek/epo/MtkEpoClientManagerService;->access$200(Lcom/mediatek/epo/MtkEpoClientManagerService;)I

    goto/16 :goto_0
.end method
