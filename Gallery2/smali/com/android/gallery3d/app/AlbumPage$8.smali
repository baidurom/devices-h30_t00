.class Lcom/android/gallery3d/app/AlbumPage$8;
.super Ljava/lang/Object;
.source "AlbumPage.java"

# interfaces
.implements Lcom/android/gallery3d/util/ThreadPool$Job;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/gallery3d/app/AlbumPage;->startCheckAllSelectedItem()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/android/gallery3d/util/ThreadPool$Job",
        "<",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/gallery3d/app/AlbumPage;


# direct methods
.method constructor <init>(Lcom/android/gallery3d/app/AlbumPage;)V
    .locals 0
    .parameter

    .prologue
    .line 1175
    iput-object p1, p0, Lcom/android/gallery3d/app/AlbumPage$8;->this$0:Lcom/android/gallery3d/app/AlbumPage;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run(Lcom/android/gallery3d/util/ThreadPool$JobContext;)Ljava/lang/Boolean;
    .locals 1
    .parameter "jc"

    .prologue
    .line 1177
    if-eqz p1, :cond_0

    invoke-interface {p1}, Lcom/android/gallery3d/util/ThreadPool$JobContext;->isCancelled()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 1178
    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p0, Lcom/android/gallery3d/app/AlbumPage$8;->this$0:Lcom/android/gallery3d/app/AlbumPage;

    invoke-virtual {v0}, Lcom/android/gallery3d/app/AlbumPage;->checkAllSelectedItem()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_0
.end method

.method public bridge synthetic run(Lcom/android/gallery3d/util/ThreadPool$JobContext;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 1175
    invoke-virtual {p0, p1}, Lcom/android/gallery3d/app/AlbumPage$8;->run(Lcom/android/gallery3d/util/ThreadPool$JobContext;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method
