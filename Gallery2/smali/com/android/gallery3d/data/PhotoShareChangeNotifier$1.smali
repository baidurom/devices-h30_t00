.class Lcom/android/gallery3d/data/PhotoShareChangeNotifier$1;
.super Lcom/huawei/gallery3d/photoshare/receiver/PhotoShareSdkBroadcastManager$SdkListener;
.source "PhotoShareChangeNotifier.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/gallery3d/data/PhotoShareChangeNotifier;-><init>(Lcom/android/gallery3d/data/MediaSet;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/gallery3d/data/PhotoShareChangeNotifier;


# direct methods
.method constructor <init>(Lcom/android/gallery3d/data/PhotoShareChangeNotifier;)V
    .locals 0
    .parameter

    .prologue
    .line 19
    iput-object p1, p0, Lcom/android/gallery3d/data/PhotoShareChangeNotifier$1;->this$0:Lcom/android/gallery3d/data/PhotoShareChangeNotifier;

    invoke-direct {p0}, Lcom/huawei/gallery3d/photoshare/receiver/PhotoShareSdkBroadcastManager$SdkListener;-><init>()V

    return-void
.end method


# virtual methods
.method public OnContentChange(Ljava/lang/String;)V
    .locals 5
    .parameter "path"

    .prologue
    .line 22
    if-eqz p1, :cond_1

    .line 24
    invoke-static {p1}, Lcom/huawei/gallery3d/photoshare/utils/PhotoShareUtils;->formatPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/gallery3d/data/Path;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 25
    .local v0, segments1:[Ljava/lang/String;
    iget-object v2, p0, Lcom/android/gallery3d/data/PhotoShareChangeNotifier$1;->this$0:Lcom/android/gallery3d/data/PhotoShareChangeNotifier;

    #getter for: Lcom/android/gallery3d/data/PhotoShareChangeNotifier;->mMediaSetPath:Ljava/lang/String;
    invoke-static {v2}, Lcom/android/gallery3d/data/PhotoShareChangeNotifier;->access$000(Lcom/android/gallery3d/data/PhotoShareChangeNotifier;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/huawei/gallery3d/photoshare/utils/PhotoShareUtils;->formatPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/gallery3d/data/Path;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 27
    .local v1, segments2:[Ljava/lang/String;
    iget-object v2, p0, Lcom/android/gallery3d/data/PhotoShareChangeNotifier$1;->this$0:Lcom/android/gallery3d/data/PhotoShareChangeNotifier;

    #getter for: Lcom/android/gallery3d/data/PhotoShareChangeNotifier;->mMediaSetPath:Ljava/lang/String;
    invoke-static {v2}, Lcom/android/gallery3d/data/PhotoShareChangeNotifier;->access$000(Lcom/android/gallery3d/data/PhotoShareChangeNotifier;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/android/gallery3d/data/PhotoShareChangeNotifier$1;->this$0:Lcom/android/gallery3d/data/PhotoShareChangeNotifier;

    #getter for: Lcom/android/gallery3d/data/PhotoShareChangeNotifier;->mPhotoShareRoot:Ljava/lang/String;
    invoke-static {v3}, Lcom/android/gallery3d/data/PhotoShareChangeNotifier;->access$100(Lcom/android/gallery3d/data/PhotoShareChangeNotifier;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    array-length v2, v0

    add-int/lit8 v2, v2, -0x1

    aget-object v2, v0, v2

    array-length v3, v1

    add-int/lit8 v3, v3, -0x1

    aget-object v3, v1, v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 28
    :cond_0
    iget-object v2, p0, Lcom/android/gallery3d/data/PhotoShareChangeNotifier$1;->this$0:Lcom/android/gallery3d/data/PhotoShareChangeNotifier;

    #getter for: Lcom/android/gallery3d/data/PhotoShareChangeNotifier;->mContentDirty:Ljava/util/concurrent/atomic/AtomicBoolean;
    invoke-static {v2}, Lcom/android/gallery3d/data/PhotoShareChangeNotifier;->access$200(Lcom/android/gallery3d/data/PhotoShareChangeNotifier;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v4}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 29
    const-string v2, "PhotoShareChangeNotifier"

    invoke-static {v2, p1}, Lcom/android/gallery3d/data/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 30
    iget-object v2, p0, Lcom/android/gallery3d/data/PhotoShareChangeNotifier$1;->this$0:Lcom/android/gallery3d/data/PhotoShareChangeNotifier;

    #getter for: Lcom/android/gallery3d/data/PhotoShareChangeNotifier;->mMediaSet:Lcom/android/gallery3d/data/MediaSet;
    invoke-static {v2}, Lcom/android/gallery3d/data/PhotoShareChangeNotifier;->access$300(Lcom/android/gallery3d/data/PhotoShareChangeNotifier;)Lcom/android/gallery3d/data/MediaSet;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/gallery3d/data/MediaSet;->notifyContentChanged()V

    .line 34
    .end local v0           #segments1:[Ljava/lang/String;
    .end local v1           #segments2:[Ljava/lang/String;
    :cond_1
    return-void
.end method

.method public OnCreateShareSuc()V
    .locals 3

    .prologue
    .line 43
    iget-object v0, p0, Lcom/android/gallery3d/data/PhotoShareChangeNotifier$1;->this$0:Lcom/android/gallery3d/data/PhotoShareChangeNotifier;

    #getter for: Lcom/android/gallery3d/data/PhotoShareChangeNotifier;->mContentDirty:Ljava/util/concurrent/atomic/AtomicBoolean;
    invoke-static {v0}, Lcom/android/gallery3d/data/PhotoShareChangeNotifier;->access$200(Lcom/android/gallery3d/data/PhotoShareChangeNotifier;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 44
    iget-object v0, p0, Lcom/android/gallery3d/data/PhotoShareChangeNotifier$1;->this$0:Lcom/android/gallery3d/data/PhotoShareChangeNotifier;

    #getter for: Lcom/android/gallery3d/data/PhotoShareChangeNotifier;->mMediaSet:Lcom/android/gallery3d/data/MediaSet;
    invoke-static {v0}, Lcom/android/gallery3d/data/PhotoShareChangeNotifier;->access$300(Lcom/android/gallery3d/data/PhotoShareChangeNotifier;)Lcom/android/gallery3d/data/MediaSet;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/gallery3d/data/MediaSet;->notifyContentChanged()V

    .line 46
    :cond_0
    return-void
.end method

.method public OnDeleteFolder()V
    .locals 3

    .prologue
    .line 49
    iget-object v0, p0, Lcom/android/gallery3d/data/PhotoShareChangeNotifier$1;->this$0:Lcom/android/gallery3d/data/PhotoShareChangeNotifier;

    #getter for: Lcom/android/gallery3d/data/PhotoShareChangeNotifier;->mContentDirty:Ljava/util/concurrent/atomic/AtomicBoolean;
    invoke-static {v0}, Lcom/android/gallery3d/data/PhotoShareChangeNotifier;->access$200(Lcom/android/gallery3d/data/PhotoShareChangeNotifier;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 50
    iget-object v0, p0, Lcom/android/gallery3d/data/PhotoShareChangeNotifier$1;->this$0:Lcom/android/gallery3d/data/PhotoShareChangeNotifier;

    #getter for: Lcom/android/gallery3d/data/PhotoShareChangeNotifier;->mMediaSet:Lcom/android/gallery3d/data/MediaSet;
    invoke-static {v0}, Lcom/android/gallery3d/data/PhotoShareChangeNotifier;->access$300(Lcom/android/gallery3d/data/PhotoShareChangeNotifier;)Lcom/android/gallery3d/data/MediaSet;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/gallery3d/data/MediaSet;->notifyContentChanged()V

    .line 52
    :cond_0
    return-void
.end method

.method public OnFolderChange()V
    .locals 3

    .prologue
    .line 37
    iget-object v0, p0, Lcom/android/gallery3d/data/PhotoShareChangeNotifier$1;->this$0:Lcom/android/gallery3d/data/PhotoShareChangeNotifier;

    #getter for: Lcom/android/gallery3d/data/PhotoShareChangeNotifier;->mContentDirty:Ljava/util/concurrent/atomic/AtomicBoolean;
    invoke-static {v0}, Lcom/android/gallery3d/data/PhotoShareChangeNotifier;->access$200(Lcom/android/gallery3d/data/PhotoShareChangeNotifier;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 38
    iget-object v0, p0, Lcom/android/gallery3d/data/PhotoShareChangeNotifier$1;->this$0:Lcom/android/gallery3d/data/PhotoShareChangeNotifier;

    #getter for: Lcom/android/gallery3d/data/PhotoShareChangeNotifier;->mMediaSet:Lcom/android/gallery3d/data/MediaSet;
    invoke-static {v0}, Lcom/android/gallery3d/data/PhotoShareChangeNotifier;->access$300(Lcom/android/gallery3d/data/PhotoShareChangeNotifier;)Lcom/android/gallery3d/data/MediaSet;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/gallery3d/data/MediaSet;->notifyContentChanged()V

    .line 40
    :cond_0
    return-void
.end method

.method public OnModifyFolderSuc()V
    .locals 3

    .prologue
    .line 55
    iget-object v0, p0, Lcom/android/gallery3d/data/PhotoShareChangeNotifier$1;->this$0:Lcom/android/gallery3d/data/PhotoShareChangeNotifier;

    #getter for: Lcom/android/gallery3d/data/PhotoShareChangeNotifier;->mContentDirty:Ljava/util/concurrent/atomic/AtomicBoolean;
    invoke-static {v0}, Lcom/android/gallery3d/data/PhotoShareChangeNotifier;->access$200(Lcom/android/gallery3d/data/PhotoShareChangeNotifier;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 56
    iget-object v0, p0, Lcom/android/gallery3d/data/PhotoShareChangeNotifier$1;->this$0:Lcom/android/gallery3d/data/PhotoShareChangeNotifier;

    #getter for: Lcom/android/gallery3d/data/PhotoShareChangeNotifier;->mMediaSet:Lcom/android/gallery3d/data/MediaSet;
    invoke-static {v0}, Lcom/android/gallery3d/data/PhotoShareChangeNotifier;->access$300(Lcom/android/gallery3d/data/PhotoShareChangeNotifier;)Lcom/android/gallery3d/data/MediaSet;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/gallery3d/data/MediaSet;->notifyContentChanged()V

    .line 58
    :cond_0
    return-void
.end method

.method public OnNotifyLogStateChange()V
    .locals 3

    .prologue
    .line 61
    iget-object v0, p0, Lcom/android/gallery3d/data/PhotoShareChangeNotifier$1;->this$0:Lcom/android/gallery3d/data/PhotoShareChangeNotifier;

    #getter for: Lcom/android/gallery3d/data/PhotoShareChangeNotifier;->mContentDirty:Ljava/util/concurrent/atomic/AtomicBoolean;
    invoke-static {v0}, Lcom/android/gallery3d/data/PhotoShareChangeNotifier;->access$200(Lcom/android/gallery3d/data/PhotoShareChangeNotifier;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 62
    iget-object v0, p0, Lcom/android/gallery3d/data/PhotoShareChangeNotifier$1;->this$0:Lcom/android/gallery3d/data/PhotoShareChangeNotifier;

    #getter for: Lcom/android/gallery3d/data/PhotoShareChangeNotifier;->mMediaSet:Lcom/android/gallery3d/data/MediaSet;
    invoke-static {v0}, Lcom/android/gallery3d/data/PhotoShareChangeNotifier;->access$300(Lcom/android/gallery3d/data/PhotoShareChangeNotifier;)Lcom/android/gallery3d/data/MediaSet;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/gallery3d/data/MediaSet;->notifyContentChanged()V

    .line 64
    :cond_0
    return-void
.end method
