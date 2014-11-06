.class Lcom/android/gallery3d/ui/MenuExecutor$MediaOperation;
.super Ljava/lang/Object;
.source "MenuExecutor.java"

# interfaces
.implements Lcom/android/gallery3d/util/ThreadPool$Job;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/gallery3d/ui/MenuExecutor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MediaOperation"
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
.field private final mData:Landroid/os/Bundle;

.field private final mItems:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/gallery3d/data/Path;",
            ">;"
        }
    .end annotation
.end field

.field private final mListener:Lcom/android/gallery3d/ui/MenuExecutor$ProgressListener;

.field private final mOperation:I

.field private final mUseCustomProgress:Z

.field final synthetic this$0:Lcom/android/gallery3d/ui/MenuExecutor;


# direct methods
.method public constructor <init>(Lcom/android/gallery3d/ui/MenuExecutor;ILjava/util/ArrayList;Lcom/android/gallery3d/ui/MenuExecutor$ProgressListener;Landroid/os/Bundle;)V
    .locals 2
    .parameter
    .parameter "operation"
    .parameter
    .parameter "listener"
    .parameter "data"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/gallery3d/data/Path;",
            ">;",
            "Lcom/android/gallery3d/ui/MenuExecutor$ProgressListener;",
            "Landroid/os/Bundle;",
            ")V"
        }
    .end annotation

    .prologue
    .local p3, items:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/gallery3d/data/Path;>;"
    const/4 v0, 0x0

    .line 1068
    iput-object p1, p0, Lcom/android/gallery3d/ui/MenuExecutor$MediaOperation;->this$0:Lcom/android/gallery3d/ui/MenuExecutor;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 1069
    iput p2, p0, Lcom/android/gallery3d/ui/MenuExecutor$MediaOperation;->mOperation:I

    .line 1070
    iput-object p3, p0, Lcom/android/gallery3d/ui/MenuExecutor$MediaOperation;->mItems:Ljava/util/ArrayList;

    .line 1071
    iput-object p4, p0, Lcom/android/gallery3d/ui/MenuExecutor$MediaOperation;->mListener:Lcom/android/gallery3d/ui/MenuExecutor$ProgressListener;

    .line 1072
    iput-object p5, p0, Lcom/android/gallery3d/ui/MenuExecutor$MediaOperation;->mData:Landroid/os/Bundle;

    .line 1073
    if-eqz p5, :cond_0

    const-string v1, "key-customprogress"

    invoke-virtual {p5, v1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    :cond_0
    iput-boolean v0, p0, Lcom/android/gallery3d/ui/MenuExecutor$MediaOperation;->mUseCustomProgress:Z

    .line 1076
    return-void
.end method


# virtual methods
.method public bridge synthetic run(Lcom/android/gallery3d/util/ThreadPool$JobContext;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 1060
    invoke-virtual {p0, p1}, Lcom/android/gallery3d/ui/MenuExecutor$MediaOperation;->run(Lcom/android/gallery3d/util/ThreadPool$JobContext;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method public run(Lcom/android/gallery3d/util/ThreadPool$JobContext;)Ljava/lang/Void;
    .locals 11
    .parameter "jc"

    .prologue
    .line 1080
    const/4 v7, 0x0

    .line 1081
    .local v7, index:I
    iget-object v0, p0, Lcom/android/gallery3d/ui/MenuExecutor$MediaOperation;->this$0:Lcom/android/gallery3d/ui/MenuExecutor;

    iget-object v0, v0, Lcom/android/gallery3d/ui/MenuExecutor;->mActivity:Lcom/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v0}, Lcom/android/gallery3d/app/AbstractGalleryActivity;->getDataManager()Lcom/android/gallery3d/data/DataManager;

    move-result-object v1

    .line 1082
    .local v1, manager:Lcom/android/gallery3d/data/DataManager;
    const/4 v8, 0x1

    .line 1084
    .local v8, result:I
    :try_start_0
    iget-object v0, p0, Lcom/android/gallery3d/ui/MenuExecutor$MediaOperation;->this$0:Lcom/android/gallery3d/ui/MenuExecutor;

    iget-object v2, p0, Lcom/android/gallery3d/ui/MenuExecutor$MediaOperation;->mListener:Lcom/android/gallery3d/ui/MenuExecutor$ProgressListener;

    iget v3, p0, Lcom/android/gallery3d/ui/MenuExecutor$MediaOperation;->mOperation:I

    iget-object v5, p0, Lcom/android/gallery3d/ui/MenuExecutor$MediaOperation;->mData:Landroid/os/Bundle;

    iget-object v10, p0, Lcom/android/gallery3d/ui/MenuExecutor$MediaOperation;->mItems:Ljava/util/ArrayList;

    #calls: Lcom/android/gallery3d/ui/MenuExecutor;->onProgressStart(Lcom/android/gallery3d/ui/MenuExecutor$ProgressListener;ILandroid/os/Bundle;Ljava/util/ArrayList;)V
    invoke-static {v0, v2, v3, v5, v10}, Lcom/android/gallery3d/ui/MenuExecutor;->access$2000(Lcom/android/gallery3d/ui/MenuExecutor;Lcom/android/gallery3d/ui/MenuExecutor$ProgressListener;ILandroid/os/Bundle;Ljava/util/ArrayList;)V

    .line 1085
    const/4 v6, 0x0

    .local v6, i:I
    :goto_0
    iget-object v0, p0, Lcom/android/gallery3d/ui/MenuExecutor$MediaOperation;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v6, v0, :cond_0

    iget-object v0, p0, Lcom/android/gallery3d/ui/MenuExecutor$MediaOperation;->this$0:Lcom/android/gallery3d/ui/MenuExecutor;

    #getter for: Lcom/android/gallery3d/ui/MenuExecutor;->mIsWholeProcessValid:Z
    invoke-static {v0}, Lcom/android/gallery3d/ui/MenuExecutor;->access$1700(Lcom/android/gallery3d/ui/MenuExecutor;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1086
    iget-object v0, p0, Lcom/android/gallery3d/ui/MenuExecutor$MediaOperation;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/gallery3d/data/Path;

    .line 1087
    .local v4, id:Lcom/android/gallery3d/data/Path;
    invoke-interface {p1}, Lcom/android/gallery3d/util/ThreadPool$JobContext;->isCancelled()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    if-eqz v0, :cond_1

    .line 1088
    const/4 v8, 0x3

    .line 1102
    .end local v4           #id:Lcom/android/gallery3d/data/Path;
    :cond_0
    iget-object v0, p0, Lcom/android/gallery3d/ui/MenuExecutor$MediaOperation;->this$0:Lcom/android/gallery3d/ui/MenuExecutor;

    iget-object v2, p0, Lcom/android/gallery3d/ui/MenuExecutor$MediaOperation;->mListener:Lcom/android/gallery3d/ui/MenuExecutor$ProgressListener;

    iget v3, p0, Lcom/android/gallery3d/ui/MenuExecutor$MediaOperation;->mOperation:I

    #calls: Lcom/android/gallery3d/ui/MenuExecutor;->onProgressComplete(ILcom/android/gallery3d/ui/MenuExecutor$ProgressListener;I)V
    invoke-static {v0, v8, v2, v3}, Lcom/android/gallery3d/ui/MenuExecutor;->access$2200(Lcom/android/gallery3d/ui/MenuExecutor;ILcom/android/gallery3d/ui/MenuExecutor$ProgressListener;I)V

    .line 1104
    .end local v6           #i:I
    :goto_1
    const/4 v0, 0x0

    return-object v0

    .line 1091
    .restart local v4       #id:Lcom/android/gallery3d/data/Path;
    .restart local v6       #i:I
    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/android/gallery3d/ui/MenuExecutor$MediaOperation;->this$0:Lcom/android/gallery3d/ui/MenuExecutor;

    iget v3, p0, Lcom/android/gallery3d/ui/MenuExecutor$MediaOperation;->mOperation:I

    iget-object v5, p0, Lcom/android/gallery3d/ui/MenuExecutor$MediaOperation;->mData:Landroid/os/Bundle;

    move-object v2, p1

    #calls: Lcom/android/gallery3d/ui/MenuExecutor;->execute(Lcom/android/gallery3d/data/DataManager;Lcom/android/gallery3d/util/ThreadPool$JobContext;ILcom/android/gallery3d/data/Path;Landroid/os/Bundle;)Z
    invoke-static/range {v0 .. v5}, Lcom/android/gallery3d/ui/MenuExecutor;->access$2100(Lcom/android/gallery3d/ui/MenuExecutor;Lcom/android/gallery3d/data/DataManager;Lcom/android/gallery3d/util/ThreadPool$JobContext;ILcom/android/gallery3d/data/Path;Landroid/os/Bundle;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 1092
    const/4 v8, 0x2

    .line 1094
    :cond_2
    add-int/lit8 v7, v7, 0x1

    .line 1095
    iget-boolean v0, p0, Lcom/android/gallery3d/ui/MenuExecutor$MediaOperation;->mUseCustomProgress:Z

    if-nez v0, :cond_3

    .line 1096
    iget-object v0, p0, Lcom/android/gallery3d/ui/MenuExecutor$MediaOperation;->this$0:Lcom/android/gallery3d/ui/MenuExecutor;

    iget-object v2, p0, Lcom/android/gallery3d/ui/MenuExecutor$MediaOperation;->mListener:Lcom/android/gallery3d/ui/MenuExecutor$ProgressListener;

    invoke-virtual {v0, v7, v2}, Lcom/android/gallery3d/ui/MenuExecutor;->updateProgress(ILcom/android/gallery3d/ui/MenuExecutor$ProgressListener;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    .line 1085
    :cond_3
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 1098
    .end local v4           #id:Lcom/android/gallery3d/data/Path;
    .end local v6           #i:I
    :catch_0
    move-exception v9

    .line 1099
    .local v9, th:Ljava/lang/Throwable;
    :try_start_2
    const-string v0, "MenuExecutor"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "failed to execute operation "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/gallery3d/ui/MenuExecutor$MediaOperation;->mOperation:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2, v9}, Lcom/android/gallery3d/ui/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1102
    iget-object v0, p0, Lcom/android/gallery3d/ui/MenuExecutor$MediaOperation;->this$0:Lcom/android/gallery3d/ui/MenuExecutor;

    iget-object v2, p0, Lcom/android/gallery3d/ui/MenuExecutor$MediaOperation;->mListener:Lcom/android/gallery3d/ui/MenuExecutor$ProgressListener;

    iget v3, p0, Lcom/android/gallery3d/ui/MenuExecutor$MediaOperation;->mOperation:I

    #calls: Lcom/android/gallery3d/ui/MenuExecutor;->onProgressComplete(ILcom/android/gallery3d/ui/MenuExecutor$ProgressListener;I)V
    invoke-static {v0, v8, v2, v3}, Lcom/android/gallery3d/ui/MenuExecutor;->access$2200(Lcom/android/gallery3d/ui/MenuExecutor;ILcom/android/gallery3d/ui/MenuExecutor$ProgressListener;I)V

    goto :goto_1

    .end local v9           #th:Ljava/lang/Throwable;
    :catchall_0
    move-exception v0

    iget-object v2, p0, Lcom/android/gallery3d/ui/MenuExecutor$MediaOperation;->this$0:Lcom/android/gallery3d/ui/MenuExecutor;

    iget-object v3, p0, Lcom/android/gallery3d/ui/MenuExecutor$MediaOperation;->mListener:Lcom/android/gallery3d/ui/MenuExecutor$ProgressListener;

    iget v5, p0, Lcom/android/gallery3d/ui/MenuExecutor$MediaOperation;->mOperation:I

    #calls: Lcom/android/gallery3d/ui/MenuExecutor;->onProgressComplete(ILcom/android/gallery3d/ui/MenuExecutor$ProgressListener;I)V
    invoke-static {v2, v8, v3, v5}, Lcom/android/gallery3d/ui/MenuExecutor;->access$2200(Lcom/android/gallery3d/ui/MenuExecutor;ILcom/android/gallery3d/ui/MenuExecutor$ProgressListener;I)V

    throw v0
.end method
