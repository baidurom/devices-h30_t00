.class Lcom/android/gallery3d/util/WaterMarkMaker$1;
.super Ljava/lang/Object;
.source "WaterMarkMaker.java"

# interfaces
.implements Lcom/android/gallery3d/ui/DetailsAddressResolver$AddressResolvingListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/gallery3d/util/WaterMarkMaker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/gallery3d/util/WaterMarkMaker;


# direct methods
.method constructor <init>(Lcom/android/gallery3d/util/WaterMarkMaker;)V
    .locals 0
    .parameter

    .prologue
    .line 353
    iput-object p1, p0, Lcom/android/gallery3d/util/WaterMarkMaker$1;->this$0:Lcom/android/gallery3d/util/WaterMarkMaker;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAddressAvailable(Ljava/lang/String;)V
    .locals 3
    .parameter "address"

    .prologue
    .line 355
    iget-object v0, p0, Lcom/android/gallery3d/util/WaterMarkMaker$1;->this$0:Lcom/android/gallery3d/util/WaterMarkMaker;

    #setter for: Lcom/android/gallery3d/util/WaterMarkMaker;->location:Ljava/lang/String;
    invoke-static {v0, p1}, Lcom/android/gallery3d/util/WaterMarkMaker;->access$002(Lcom/android/gallery3d/util/WaterMarkMaker;Ljava/lang/String;)Ljava/lang/String;

    .line 356
    const-string v0, "WaterMarkMaker"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "get adress "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/gallery3d/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 357
    iget-object v0, p0, Lcom/android/gallery3d/util/WaterMarkMaker$1;->this$0:Lcom/android/gallery3d/util/WaterMarkMaker;

    #getter for: Lcom/android/gallery3d/util/WaterMarkMaker;->mLock:Lcom/android/gallery3d/util/SimpleLock;
    invoke-static {v0}, Lcom/android/gallery3d/util/WaterMarkMaker;->access$100(Lcom/android/gallery3d/util/WaterMarkMaker;)Lcom/android/gallery3d/util/SimpleLock;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/gallery3d/util/SimpleLock;->notifyAllWaitingLock()V

    .line 358
    return-void
.end method
