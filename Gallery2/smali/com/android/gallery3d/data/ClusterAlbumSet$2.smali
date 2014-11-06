.class Lcom/android/gallery3d/data/ClusterAlbumSet$2;
.super Landroid/content/BroadcastReceiver;
.source "ClusterAlbumSet.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/gallery3d/data/ClusterAlbumSet;-><init>(Lcom/android/gallery3d/data/Path;Lcom/android/gallery3d/app/GalleryApp;Lcom/android/gallery3d/data/MediaSet;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/gallery3d/data/ClusterAlbumSet;


# direct methods
.method constructor <init>(Lcom/android/gallery3d/data/ClusterAlbumSet;)V
    .locals 0
    .parameter

    .prologue
    .line 188
    iput-object p1, p0, Lcom/android/gallery3d/data/ClusterAlbumSet$2;->this$0:Lcom/android/gallery3d/data/ClusterAlbumSet;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 191
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 192
    .local v0, action:Ljava/lang/String;
    const-string v1, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 193
    iget-object v1, p0, Lcom/android/gallery3d/data/ClusterAlbumSet$2;->this$0:Lcom/android/gallery3d/data/ClusterAlbumSet;

    iget-object v2, p0, Lcom/android/gallery3d/data/ClusterAlbumSet$2;->this$0:Lcom/android/gallery3d/data/ClusterAlbumSet;

    #getter for: Lcom/android/gallery3d/data/ClusterAlbumSet;->mConnectivityManager:Landroid/net/ConnectivityManager;
    invoke-static {v2}, Lcom/android/gallery3d/data/ClusterAlbumSet;->access$400(Lcom/android/gallery3d/data/ClusterAlbumSet;)Landroid/net/ConnectivityManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v2

    #setter for: Lcom/android/gallery3d/data/ClusterAlbumSet;->mNetworkInfo:Landroid/net/NetworkInfo;
    invoke-static {v1, v2}, Lcom/android/gallery3d/data/ClusterAlbumSet;->access$302(Lcom/android/gallery3d/data/ClusterAlbumSet;Landroid/net/NetworkInfo;)Landroid/net/NetworkInfo;

    .line 194
    iget-object v1, p0, Lcom/android/gallery3d/data/ClusterAlbumSet$2;->this$0:Lcom/android/gallery3d/data/ClusterAlbumSet;

    #getter for: Lcom/android/gallery3d/data/ClusterAlbumSet;->mNetworkInfo:Landroid/net/NetworkInfo;
    invoke-static {v1}, Lcom/android/gallery3d/data/ClusterAlbumSet;->access$300(Lcom/android/gallery3d/data/ClusterAlbumSet;)Landroid/net/NetworkInfo;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 195
    iget-object v1, p0, Lcom/android/gallery3d/data/ClusterAlbumSet$2;->this$0:Lcom/android/gallery3d/data/ClusterAlbumSet;

    #getter for: Lcom/android/gallery3d/data/ClusterAlbumSet;->mNetworkInfo:Landroid/net/NetworkInfo;
    invoke-static {v1}, Lcom/android/gallery3d/data/ClusterAlbumSet;->access$300(Lcom/android/gallery3d/data/ClusterAlbumSet;)Landroid/net/NetworkInfo;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->isAvailable()Z

    move-result v1

    iget-object v2, p0, Lcom/android/gallery3d/data/ClusterAlbumSet$2;->this$0:Lcom/android/gallery3d/data/ClusterAlbumSet;

    #getter for: Lcom/android/gallery3d/data/ClusterAlbumSet;->mNetworkConnnect:Z
    invoke-static {v2}, Lcom/android/gallery3d/data/ClusterAlbumSet;->access$500(Lcom/android/gallery3d/data/ClusterAlbumSet;)Z

    move-result v2

    if-eq v1, v2, :cond_1

    .line 196
    iget-object v1, p0, Lcom/android/gallery3d/data/ClusterAlbumSet$2;->this$0:Lcom/android/gallery3d/data/ClusterAlbumSet;

    #getter for: Lcom/android/gallery3d/data/ClusterAlbumSet;->mNetworkConnnect:Z
    invoke-static {v1}, Lcom/android/gallery3d/data/ClusterAlbumSet;->access$500(Lcom/android/gallery3d/data/ClusterAlbumSet;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 197
    iget-object v1, p0, Lcom/android/gallery3d/data/ClusterAlbumSet$2;->this$0:Lcom/android/gallery3d/data/ClusterAlbumSet;

    const/4 v2, 0x1

    #setter for: Lcom/android/gallery3d/data/ClusterAlbumSet;->mNetworkChangeReload:Z
    invoke-static {v1, v2}, Lcom/android/gallery3d/data/ClusterAlbumSet;->access$602(Lcom/android/gallery3d/data/ClusterAlbumSet;Z)Z

    .line 198
    iget-object v1, p0, Lcom/android/gallery3d/data/ClusterAlbumSet$2;->this$0:Lcom/android/gallery3d/data/ClusterAlbumSet;

    invoke-virtual {v1}, Lcom/android/gallery3d/data/ClusterAlbumSet;->notifyContentChanged()V

    .line 200
    :cond_0
    iget-object v1, p0, Lcom/android/gallery3d/data/ClusterAlbumSet$2;->this$0:Lcom/android/gallery3d/data/ClusterAlbumSet;

    iget-object v2, p0, Lcom/android/gallery3d/data/ClusterAlbumSet$2;->this$0:Lcom/android/gallery3d/data/ClusterAlbumSet;

    #getter for: Lcom/android/gallery3d/data/ClusterAlbumSet;->mNetworkInfo:Landroid/net/NetworkInfo;
    invoke-static {v2}, Lcom/android/gallery3d/data/ClusterAlbumSet;->access$300(Lcom/android/gallery3d/data/ClusterAlbumSet;)Landroid/net/NetworkInfo;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/NetworkInfo;->isAvailable()Z

    move-result v2

    #setter for: Lcom/android/gallery3d/data/ClusterAlbumSet;->mNetworkConnnect:Z
    invoke-static {v1, v2}, Lcom/android/gallery3d/data/ClusterAlbumSet;->access$502(Lcom/android/gallery3d/data/ClusterAlbumSet;Z)Z

    .line 204
    :cond_1
    return-void
.end method
