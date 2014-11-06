.class Lcom/android/gallery3d/ui/DetailsAddressResolver$ResolveAddressFromNetworkTask;
.super Ljava/lang/Thread;
.source "DetailsAddressResolver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/gallery3d/ui/DetailsAddressResolver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ResolveAddressFromNetworkTask"
.end annotation


# instance fields
.field private volatile mActive:Z

.field final synthetic this$0:Lcom/android/gallery3d/ui/DetailsAddressResolver;


# direct methods
.method private constructor <init>(Lcom/android/gallery3d/ui/DetailsAddressResolver;)V
    .locals 1
    .parameter

    .prologue
    .line 234
    iput-object p1, p0, Lcom/android/gallery3d/ui/DetailsAddressResolver$ResolveAddressFromNetworkTask;->this$0:Lcom/android/gallery3d/ui/DetailsAddressResolver;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 235
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/gallery3d/ui/DetailsAddressResolver$ResolveAddressFromNetworkTask;->mActive:Z

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/gallery3d/ui/DetailsAddressResolver;Lcom/android/gallery3d/ui/DetailsAddressResolver$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 234
    invoke-direct {p0, p1}, Lcom/android/gallery3d/ui/DetailsAddressResolver$ResolveAddressFromNetworkTask;-><init>(Lcom/android/gallery3d/ui/DetailsAddressResolver;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 239
    const/16 v1, 0xa

    invoke-static {v1}, Landroid/os/Process;->setThreadPriority(I)V

    .line 240
    const-string v1, "ResolveAddressFromNetworkTask"

    invoke-virtual {p0, v1}, Lcom/android/gallery3d/ui/DetailsAddressResolver$ResolveAddressFromNetworkTask;->setName(Ljava/lang/String;)V

    .line 242
    :cond_0
    :goto_0
    iget-boolean v1, p0, Lcom/android/gallery3d/ui/DetailsAddressResolver$ResolveAddressFromNetworkTask;->mActive:Z

    if-eqz v1, :cond_2

    .line 243
    const/4 v0, 0x0

    .line 244
    .local v0, address:Lcom/android/gallery3d/ui/DetailsAddressResolver$GalleryAddress;
    iget-object v2, p0, Lcom/android/gallery3d/ui/DetailsAddressResolver$ResolveAddressFromNetworkTask;->this$0:Lcom/android/gallery3d/ui/DetailsAddressResolver;

    monitor-enter v2

    .line 245
    :try_start_0
    iget-object v1, p0, Lcom/android/gallery3d/ui/DetailsAddressResolver$ResolveAddressFromNetworkTask;->this$0:Lcom/android/gallery3d/ui/DetailsAddressResolver;

    #getter for: Lcom/android/gallery3d/ui/DetailsAddressResolver;->mQueryFromNetworkStack:Lcom/android/gallery3d/ui/DetailsAddressResolver$GalleryAddressStack;
    invoke-static {v1}, Lcom/android/gallery3d/ui/DetailsAddressResolver;->access$700(Lcom/android/gallery3d/ui/DetailsAddressResolver;)Lcom/android/gallery3d/ui/DetailsAddressResolver$GalleryAddressStack;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/gallery3d/ui/DetailsAddressResolver$GalleryAddressStack;->pop()Lcom/android/gallery3d/ui/DetailsAddressResolver$GalleryAddress;

    move-result-object v0

    .line 246
    if-nez v0, :cond_1

    .line 247
    iget-object v1, p0, Lcom/android/gallery3d/ui/DetailsAddressResolver$ResolveAddressFromNetworkTask;->this$0:Lcom/android/gallery3d/ui/DetailsAddressResolver;

    invoke-static {v1}, Lcom/android/gallery3d/common/Utils;->waitWithoutInterrupt(Ljava/lang/Object;)V

    .line 249
    :cond_1
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 250
    if-eqz v0, :cond_0

    .line 251
    iget-object v1, p0, Lcom/android/gallery3d/ui/DetailsAddressResolver$ResolveAddressFromNetworkTask;->this$0:Lcom/android/gallery3d/ui/DetailsAddressResolver;

    #calls: Lcom/android/gallery3d/ui/DetailsAddressResolver;->resolveAddressFromNetwork(Lcom/android/gallery3d/ui/DetailsAddressResolver$GalleryAddress;)V
    invoke-static {v1, v0}, Lcom/android/gallery3d/ui/DetailsAddressResolver;->access$800(Lcom/android/gallery3d/ui/DetailsAddressResolver;Lcom/android/gallery3d/ui/DetailsAddressResolver$GalleryAddress;)V

    goto :goto_0

    .line 249
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1

    .line 253
    .end local v0           #address:Lcom/android/gallery3d/ui/DetailsAddressResolver$GalleryAddress;
    :cond_2
    return-void
.end method

.method public terminate()V
    .locals 1

    .prologue
    .line 256
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/gallery3d/ui/DetailsAddressResolver$ResolveAddressFromNetworkTask;->mActive:Z

    .line 257
    return-void
.end method
