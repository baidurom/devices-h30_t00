.class Lcom/android/gallery3d/app/LongTapManager$Operation;
.super Ljava/lang/Object;
.source "LongTapManager.java"

# interfaces
.implements Lcom/android/gallery3d/util/ThreadPool$Job;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/gallery3d/app/LongTapManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Operation"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/android/gallery3d/util/ThreadPool$Job",
        "<",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field private final mOperation:I

.field private final mPath:Lcom/android/gallery3d/data/Path;

.field final synthetic this$0:Lcom/android/gallery3d/app/LongTapManager;


# direct methods
.method public constructor <init>(Lcom/android/gallery3d/app/LongTapManager;ILcom/android/gallery3d/data/Path;)V
    .locals 0
    .parameter
    .parameter "operation"
    .parameter "path"

    .prologue
    .line 285
    iput-object p1, p0, Lcom/android/gallery3d/app/LongTapManager$Operation;->this$0:Lcom/android/gallery3d/app/LongTapManager;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 286
    iput p2, p0, Lcom/android/gallery3d/app/LongTapManager$Operation;->mOperation:I

    .line 287
    iput-object p3, p0, Lcom/android/gallery3d/app/LongTapManager$Operation;->mPath:Lcom/android/gallery3d/data/Path;

    .line 288
    return-void
.end method


# virtual methods
.method public bridge synthetic run(Lcom/android/gallery3d/util/ThreadPool$JobContext;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 281
    invoke-virtual {p0, p1}, Lcom/android/gallery3d/app/LongTapManager$Operation;->run(Lcom/android/gallery3d/util/ThreadPool$JobContext;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method public run(Lcom/android/gallery3d/util/ThreadPool$JobContext;)Ljava/lang/Void;
    .locals 6
    .parameter "jc"

    .prologue
    const/4 v5, 0x0

    .line 292
    invoke-interface {p1}, Lcom/android/gallery3d/util/ThreadPool$JobContext;->isCancelled()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 368
    :goto_0
    return-object v5

    .line 293
    :cond_0
    iget-object v3, p0, Lcom/android/gallery3d/app/LongTapManager$Operation;->this$0:Lcom/android/gallery3d/app/LongTapManager;

    #getter for: Lcom/android/gallery3d/app/LongTapManager;->mActivity:Lcom/android/gallery3d/app/AbstractGalleryActivity;
    invoke-static {v3}, Lcom/android/gallery3d/app/LongTapManager;->access$600(Lcom/android/gallery3d/app/LongTapManager;)Lcom/android/gallery3d/app/AbstractGalleryActivity;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/gallery3d/app/AbstractGalleryActivity;->getDataManager()Lcom/android/gallery3d/data/DataManager;

    move-result-object v1

    .line 295
    .local v1, manager:Lcom/android/gallery3d/data/DataManager;
    new-instance v0, Landroid/os/Handler;

    iget-object v3, p0, Lcom/android/gallery3d/app/LongTapManager$Operation;->this$0:Lcom/android/gallery3d/app/LongTapManager;

    #getter for: Lcom/android/gallery3d/app/LongTapManager;->mActivity:Lcom/android/gallery3d/app/AbstractGalleryActivity;
    invoke-static {v3}, Lcom/android/gallery3d/app/LongTapManager;->access$600(Lcom/android/gallery3d/app/LongTapManager;)Lcom/android/gallery3d/app/AbstractGalleryActivity;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/gallery3d/app/AbstractGalleryActivity;->getMainLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-direct {v0, v3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 297
    .local v0, handler:Landroid/os/Handler;
    iget v3, p0, Lcom/android/gallery3d/app/LongTapManager$Operation;->mOperation:I

    sparse-switch v3, :sswitch_data_0

    .line 360
    :goto_1
    new-instance v3, Lcom/android/gallery3d/app/LongTapManager$Operation$2;

    invoke-direct {v3, p0}, Lcom/android/gallery3d/app/LongTapManager$Operation$2;-><init>(Lcom/android/gallery3d/app/LongTapManager$Operation;)V

    invoke-virtual {v0, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 301
    :sswitch_0
    iget-object v3, p0, Lcom/android/gallery3d/app/LongTapManager$Operation;->mPath:Lcom/android/gallery3d/data/Path;

    invoke-virtual {v1, v3}, Lcom/android/gallery3d/data/DataManager;->delete(Lcom/android/gallery3d/data/Path;)V

    goto :goto_1

    .line 305
    :sswitch_1
    iget-object v3, p0, Lcom/android/gallery3d/app/LongTapManager$Operation;->mPath:Lcom/android/gallery3d/data/Path;

    invoke-virtual {v1, v3}, Lcom/android/gallery3d/data/DataManager;->hide(Lcom/android/gallery3d/data/Path;)V

    goto :goto_1

    .line 309
    :sswitch_2
    iget-object v3, p0, Lcom/android/gallery3d/app/LongTapManager$Operation;->mPath:Lcom/android/gallery3d/data/Path;

    invoke-virtual {v1, v3}, Lcom/android/gallery3d/data/DataManager;->show(Lcom/android/gallery3d/data/Path;)V

    goto :goto_1

    .line 313
    :sswitch_3
    iget-object v3, p0, Lcom/android/gallery3d/app/LongTapManager$Operation;->mPath:Lcom/android/gallery3d/data/Path;

    const/16 v4, -0x5a

    invoke-virtual {v1, v3, v4}, Lcom/android/gallery3d/data/DataManager;->rotate(Lcom/android/gallery3d/data/Path;I)V

    goto :goto_1

    .line 317
    :sswitch_4
    iget-object v3, p0, Lcom/android/gallery3d/app/LongTapManager$Operation;->mPath:Lcom/android/gallery3d/data/Path;

    const/16 v4, 0x5a

    invoke-virtual {v1, v3, v4}, Lcom/android/gallery3d/data/DataManager;->rotate(Lcom/android/gallery3d/data/Path;I)V

    goto :goto_1

    .line 321
    :sswitch_5
    iget-object v3, p0, Lcom/android/gallery3d/app/LongTapManager$Operation;->mPath:Lcom/android/gallery3d/data/Path;

    invoke-virtual {v1, v3}, Lcom/android/gallery3d/data/DataManager;->setAsPrivate(Lcom/android/gallery3d/data/Path;)V

    goto :goto_1

    .line 325
    :sswitch_6
    iget-object v3, p0, Lcom/android/gallery3d/app/LongTapManager$Operation;->mPath:Lcom/android/gallery3d/data/Path;

    invoke-virtual {v1, v3}, Lcom/android/gallery3d/data/DataManager;->cancelPrivate(Lcom/android/gallery3d/data/Path;)V

    goto :goto_1

    .line 330
    :sswitch_7
    iget-object v3, p0, Lcom/android/gallery3d/app/LongTapManager$Operation;->this$0:Lcom/android/gallery3d/app/LongTapManager;

    #getter for: Lcom/android/gallery3d/app/LongTapManager;->mActivity:Lcom/android/gallery3d/app/AbstractGalleryActivity;
    invoke-static {v3}, Lcom/android/gallery3d/app/LongTapManager;->access$600(Lcom/android/gallery3d/app/LongTapManager;)Lcom/android/gallery3d/app/AbstractGalleryActivity;

    move-result-object v3

    iget-object v4, p0, Lcom/android/gallery3d/app/LongTapManager$Operation;->mPath:Lcom/android/gallery3d/data/Path;

    invoke-virtual {v1, v3, v4}, Lcom/android/gallery3d/data/DataManager;->editPhotoShare(Landroid/content/Context;Lcom/android/gallery3d/data/Path;)V

    goto :goto_1

    .line 334
    :sswitch_8
    iget-object v3, p0, Lcom/android/gallery3d/app/LongTapManager$Operation;->mPath:Lcom/android/gallery3d/data/Path;

    invoke-virtual {v1, v3}, Lcom/android/gallery3d/data/DataManager;->photoshareDownload(Lcom/android/gallery3d/data/Path;)Z

    move-result v2

    .line 336
    .local v2, result:Z
    new-instance v3, Lcom/android/gallery3d/app/LongTapManager$Operation$1;

    invoke-direct {v3, p0, v2}, Lcom/android/gallery3d/app/LongTapManager$Operation$1;-><init>(Lcom/android/gallery3d/app/LongTapManager$Operation;Z)V

    invoke-virtual {v0, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 297
    :sswitch_data_0
    .sparse-switch
        0x7f0d0269 -> :sswitch_0
        0x7f0d027a -> :sswitch_1
        0x7f0d027b -> :sswitch_2
        0x7f0d027f -> :sswitch_5
        0x7f0d0280 -> :sswitch_6
        0x7f0d0291 -> :sswitch_3
        0x7f0d0292 -> :sswitch_4
        0x7f0d03f8 -> :sswitch_8
        0x7f0d042c -> :sswitch_7
        0x7f0d0443 -> :sswitch_0
        0x7f0d0445 -> :sswitch_7
        0x7f0d0446 -> :sswitch_0
    .end sparse-switch
.end method
