.class Lcom/android/gallery3d/data/DmsImage$1;
.super Ljava/lang/Object;
.source "DmsImage.java"

# interfaces
.implements Lcom/android/gallery3d/util/ThreadPool$CancelListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/gallery3d/data/DmsImage;->prepareInputFile(Lcom/android/gallery3d/util/ThreadPool$JobContext;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/gallery3d/data/DmsImage;


# direct methods
.method constructor <init>(Lcom/android/gallery3d/data/DmsImage;)V
    .locals 0
    .parameter

    .prologue
    .line 168
    iput-object p1, p0, Lcom/android/gallery3d/data/DmsImage$1;->this$0:Lcom/android/gallery3d/data/DmsImage;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel()V
    .locals 1

    .prologue
    .line 170
    monitor-enter p0

    .line 171
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 172
    monitor-exit p0

    .line 173
    return-void

    .line 172
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
