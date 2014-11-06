.class Lcom/android/gallery3d/ui/DetailsAddressResolver$ResolveAddressFromCacheTask;
.super Ljava/lang/Thread;
.source "DetailsAddressResolver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/gallery3d/ui/DetailsAddressResolver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ResolveAddressFromCacheTask"
.end annotation


# instance fields
.field private volatile mActive:Z

.field final synthetic this$0:Lcom/android/gallery3d/ui/DetailsAddressResolver;


# direct methods
.method private constructor <init>(Lcom/android/gallery3d/ui/DetailsAddressResolver;)V
    .locals 1
    .parameter

    .prologue
    .line 206
    iput-object p1, p0, Lcom/android/gallery3d/ui/DetailsAddressResolver$ResolveAddressFromCacheTask;->this$0:Lcom/android/gallery3d/ui/DetailsAddressResolver;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 207
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/gallery3d/ui/DetailsAddressResolver$ResolveAddressFromCacheTask;->mActive:Z

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/gallery3d/ui/DetailsAddressResolver;Lcom/android/gallery3d/ui/DetailsAddressResolver$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 206
    invoke-direct {p0, p1}, Lcom/android/gallery3d/ui/DetailsAddressResolver$ResolveAddressFromCacheTask;-><init>(Lcom/android/gallery3d/ui/DetailsAddressResolver;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 211
    const/16 v1, 0xa

    invoke-static {v1}, Landroid/os/Process;->setThreadPriority(I)V

    .line 212
    const-string v1, "ResolveAddressFromCacheTask"

    invoke-virtual {p0, v1}, Lcom/android/gallery3d/ui/DetailsAddressResolver$ResolveAddressFromCacheTask;->setName(Ljava/lang/String;)V

    .line 214
    :cond_0
    :goto_0
    iget-boolean v1, p0, Lcom/android/gallery3d/ui/DetailsAddressResolver$ResolveAddressFromCacheTask;->mActive:Z

    if-eqz v1, :cond_2

    .line 215
    const/4 v0, 0x0

    .line 216
    .local v0, address:Lcom/android/gallery3d/ui/DetailsAddressResolver$GalleryAddress;
    iget-object v2, p0, Lcom/android/gallery3d/ui/DetailsAddressResolver$ResolveAddressFromCacheTask;->this$0:Lcom/android/gallery3d/ui/DetailsAddressResolver;

    monitor-enter v2

    .line 217
    :try_start_0
    iget-object v1, p0, Lcom/android/gallery3d/ui/DetailsAddressResolver$ResolveAddressFromCacheTask;->this$0:Lcom/android/gallery3d/ui/DetailsAddressResolver;

    #getter for: Lcom/android/gallery3d/ui/DetailsAddressResolver;->mQueryFromCacheStack:Lcom/android/gallery3d/ui/DetailsAddressResolver$GalleryAddressStack;
    invoke-static {v1}, Lcom/android/gallery3d/ui/DetailsAddressResolver;->access$400(Lcom/android/gallery3d/ui/DetailsAddressResolver;)Lcom/android/gallery3d/ui/DetailsAddressResolver$GalleryAddressStack;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/gallery3d/ui/DetailsAddressResolver$GalleryAddressStack;->pop()Lcom/android/gallery3d/ui/DetailsAddressResolver$GalleryAddress;

    move-result-object v0

    .line 218
    if-nez v0, :cond_1

    .line 219
    iget-object v1, p0, Lcom/android/gallery3d/ui/DetailsAddressResolver$ResolveAddressFromCacheTask;->this$0:Lcom/android/gallery3d/ui/DetailsAddressResolver;

    invoke-static {v1}, Lcom/android/gallery3d/common/Utils;->waitWithoutInterrupt(Ljava/lang/Object;)V

    .line 221
    :cond_1
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 222
    if-eqz v0, :cond_0

    .line 223
    iget-object v1, p0, Lcom/android/gallery3d/ui/DetailsAddressResolver$ResolveAddressFromCacheTask;->this$0:Lcom/android/gallery3d/ui/DetailsAddressResolver;

    #calls: Lcom/android/gallery3d/ui/DetailsAddressResolver;->resolveAddressFromCache(Lcom/android/gallery3d/ui/DetailsAddressResolver$GalleryAddress;)Z
    invoke-static {v1, v0}, Lcom/android/gallery3d/ui/DetailsAddressResolver;->access$500(Lcom/android/gallery3d/ui/DetailsAddressResolver;Lcom/android/gallery3d/ui/DetailsAddressResolver$GalleryAddress;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 224
    iget-object v1, p0, Lcom/android/gallery3d/ui/DetailsAddressResolver$ResolveAddressFromCacheTask;->this$0:Lcom/android/gallery3d/ui/DetailsAddressResolver;

    #calls: Lcom/android/gallery3d/ui/DetailsAddressResolver;->queryFromNetWork(Lcom/android/gallery3d/ui/DetailsAddressResolver$GalleryAddress;)V
    invoke-static {v1, v0}, Lcom/android/gallery3d/ui/DetailsAddressResolver;->access$600(Lcom/android/gallery3d/ui/DetailsAddressResolver;Lcom/android/gallery3d/ui/DetailsAddressResolver$GalleryAddress;)V

    goto :goto_0

    .line 221
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1

    .line 227
    .end local v0           #address:Lcom/android/gallery3d/ui/DetailsAddressResolver$GalleryAddress;
    :cond_2
    return-void
.end method

.method public terminate()V
    .locals 1

    .prologue
    .line 230
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/gallery3d/ui/DetailsAddressResolver$ResolveAddressFromCacheTask;->mActive:Z

    .line 231
    return-void
.end method
