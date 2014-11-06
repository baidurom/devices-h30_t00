.class Lcom/android/gallery3d/app/AlbumPage$9$1;
.super Ljava/lang/Object;
.source "AlbumPage.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/gallery3d/app/AlbumPage$9;->onFutureDone(Lcom/android/gallery3d/util/Future;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/gallery3d/app/AlbumPage$9;


# direct methods
.method constructor <init>(Lcom/android/gallery3d/app/AlbumPage$9;)V
    .locals 0
    .parameter

    .prologue
    .line 1187
    iput-object p1, p0, Lcom/android/gallery3d/app/AlbumPage$9$1;->this$1:Lcom/android/gallery3d/app/AlbumPage$9;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 1189
    iget-object v0, p0, Lcom/android/gallery3d/app/AlbumPage$9$1;->this$1:Lcom/android/gallery3d/app/AlbumPage$9;

    iget-object v0, v0, Lcom/android/gallery3d/app/AlbumPage$9;->this$0:Lcom/android/gallery3d/app/AlbumPage;

    #getter for: Lcom/android/gallery3d/app/AlbumPage;->mToastStringCache:Ljava/lang/String;
    invoke-static {v0}, Lcom/android/gallery3d/app/AlbumPage;->access$2400(Lcom/android/gallery3d/app/AlbumPage;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1190
    iget-object v0, p0, Lcom/android/gallery3d/app/AlbumPage$9$1;->this$1:Lcom/android/gallery3d/app/AlbumPage$9;

    iget-object v0, v0, Lcom/android/gallery3d/app/AlbumPage$9;->this$0:Lcom/android/gallery3d/app/AlbumPage;

    iget-object v1, p0, Lcom/android/gallery3d/app/AlbumPage$9$1;->this$1:Lcom/android/gallery3d/app/AlbumPage$9;

    iget-object v1, v1, Lcom/android/gallery3d/app/AlbumPage$9;->this$0:Lcom/android/gallery3d/app/AlbumPage;

    #getter for: Lcom/android/gallery3d/app/AlbumPage;->mToastStringCache:Ljava/lang/String;
    invoke-static {v1}, Lcom/android/gallery3d/app/AlbumPage;->access$2400(Lcom/android/gallery3d/app/AlbumPage;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    #calls: Lcom/android/gallery3d/app/AlbumPage;->showToast(Ljava/lang/String;I)V
    invoke-static {v0, v1, v2}, Lcom/android/gallery3d/app/AlbumPage;->access$2500(Lcom/android/gallery3d/app/AlbumPage;Ljava/lang/String;I)V

    .line 1191
    :cond_0
    return-void
.end method
