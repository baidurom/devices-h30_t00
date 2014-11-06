.class Lcom/android/gallery3d/ui/PasteExecutor$4;
.super Ljava/lang/Object;
.source "PasteExecutor.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/gallery3d/ui/PasteExecutor;->onFutureDone(Lcom/android/gallery3d/util/Future;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/gallery3d/ui/PasteExecutor;

.field final synthetic val$future:Lcom/android/gallery3d/util/Future;


# direct methods
.method constructor <init>(Lcom/android/gallery3d/ui/PasteExecutor;Lcom/android/gallery3d/util/Future;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 164
    iput-object p1, p0, Lcom/android/gallery3d/ui/PasteExecutor$4;->this$0:Lcom/android/gallery3d/ui/PasteExecutor;

    iput-object p2, p0, Lcom/android/gallery3d/ui/PasteExecutor$4;->val$future:Lcom/android/gallery3d/util/Future;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 167
    iget-object v1, p0, Lcom/android/gallery3d/ui/PasteExecutor$4;->val$future:Lcom/android/gallery3d/util/Future;

    invoke-interface {v1}, Lcom/android/gallery3d/util/Future;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    .line 168
    .local v0, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/gallery3d/data/MediaSet;>;"
    iget-object v1, p0, Lcom/android/gallery3d/ui/PasteExecutor$4;->this$0:Lcom/android/gallery3d/ui/PasteExecutor;

    #calls: Lcom/android/gallery3d/ui/PasteExecutor;->showDestinationList(Ljava/util/ArrayList;)V
    invoke-static {v1, v0}, Lcom/android/gallery3d/ui/PasteExecutor;->access$600(Lcom/android/gallery3d/ui/PasteExecutor;Ljava/util/ArrayList;)V

    .line 169
    return-void
.end method
