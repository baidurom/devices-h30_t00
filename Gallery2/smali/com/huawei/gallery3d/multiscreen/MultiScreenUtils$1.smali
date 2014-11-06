.class final Lcom/huawei/gallery3d/multiscreen/MultiScreenUtils$1;
.super Ljava/lang/Object;
.source "MultiScreenUtils.java"

# interfaces
.implements Lcom/android/gallery3d/util/ThreadPool$CancelListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/huawei/gallery3d/multiscreen/MultiScreenUtils;->getDmsThumbnail(Lcom/android/gallery3d/util/ThreadPool$JobContext;Ljava/lang/String;)Landroid/graphics/Bitmap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$thread:Ljava/lang/Thread;


# direct methods
.method constructor <init>(Ljava/lang/Thread;)V
    .locals 0
    .parameter

    .prologue
    .line 274
    iput-object p1, p0, Lcom/huawei/gallery3d/multiscreen/MultiScreenUtils$1;->val$thread:Ljava/lang/Thread;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel()V
    .locals 1

    .prologue
    .line 278
    iget-object v0, p0, Lcom/huawei/gallery3d/multiscreen/MultiScreenUtils$1;->val$thread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    .line 279
    return-void
.end method
