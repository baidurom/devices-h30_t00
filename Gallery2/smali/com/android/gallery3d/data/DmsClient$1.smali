.class Lcom/android/gallery3d/data/DmsClient$1;
.super Lcom/huawei/gallery3d/multiscreen/MultiScreen$MultiScreenListener;
.source "DmsClient.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/gallery3d/data/DmsClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/gallery3d/data/DmsClient;


# direct methods
.method constructor <init>(Lcom/android/gallery3d/data/DmsClient;)V
    .locals 0
    .parameter

    .prologue
    .line 43
    iput-object p1, p0, Lcom/android/gallery3d/data/DmsClient$1;->this$0:Lcom/android/gallery3d/data/DmsClient;

    invoke-direct {p0}, Lcom/huawei/gallery3d/multiscreen/MultiScreen$MultiScreenListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onDeviceChanged()V
    .locals 2

    .prologue
    .line 54
    const-string v0, "AirSharing_DmsClient"

    const-string v1, "Client getDeviceChange Info"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 55
    iget-object v0, p0, Lcom/android/gallery3d/data/DmsClient$1;->this$0:Lcom/android/gallery3d/data/DmsClient;

    #calls: Lcom/android/gallery3d/data/DmsClient;->updateDmsList()V
    invoke-static {v0}, Lcom/android/gallery3d/data/DmsClient;->access$100(Lcom/android/gallery3d/data/DmsClient;)V

    .line 56
    return-void
.end method

.method public onMediaChanged()V
    .locals 4

    .prologue
    .line 60
    const-string v2, "AirSharing_DmsClient"

    const-string v3, "Client getMediaChange Info"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 61
    iget-object v2, p0, Lcom/android/gallery3d/data/DmsClient$1;->this$0:Lcom/android/gallery3d/data/DmsClient;

    #getter for: Lcom/android/gallery3d/data/DmsClient;->mListeners:Ljava/util/ArrayList;
    invoke-static {v2}, Lcom/android/gallery3d/data/DmsClient;->access$000(Lcom/android/gallery3d/data/DmsClient;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/gallery3d/data/DmsClient$Listener;

    .line 62
    .local v1, l:Lcom/android/gallery3d/data/DmsClient$Listener;
    invoke-interface {v1}, Lcom/android/gallery3d/data/DmsClient$Listener;->dirtyChanged()V

    goto :goto_0

    .line 64
    .end local v1           #l:Lcom/android/gallery3d/data/DmsClient$Listener;
    :cond_0
    return-void
.end method

.method public onRefreshing()V
    .locals 4

    .prologue
    .line 46
    const-string v2, "AirSharing_DmsClient"

    const-string v3, "Clinet get Refreshing Info"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 47
    iget-object v2, p0, Lcom/android/gallery3d/data/DmsClient$1;->this$0:Lcom/android/gallery3d/data/DmsClient;

    #getter for: Lcom/android/gallery3d/data/DmsClient;->mListeners:Ljava/util/ArrayList;
    invoke-static {v2}, Lcom/android/gallery3d/data/DmsClient;->access$000(Lcom/android/gallery3d/data/DmsClient;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/gallery3d/data/DmsClient$Listener;

    .line 48
    .local v1, l:Lcom/android/gallery3d/data/DmsClient$Listener;
    invoke-interface {v1}, Lcom/android/gallery3d/data/DmsClient$Listener;->dirtyChanged()V

    goto :goto_0

    .line 50
    .end local v1           #l:Lcom/android/gallery3d/data/DmsClient$Listener;
    :cond_0
    return-void
.end method
