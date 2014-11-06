.class Lcom/android/gallery3d/app/AlbumDataLoader$MyFaceInfoListener;
.super Ljava/lang/Object;
.source "AlbumDataLoader.java"

# interfaces
.implements Lcom/android/gallery3d/data/FaceInfoProcess$FaceInfoListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/gallery3d/app/AlbumDataLoader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MyFaceInfoListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/gallery3d/app/AlbumDataLoader;


# direct methods
.method private constructor <init>(Lcom/android/gallery3d/app/AlbumDataLoader;)V
    .locals 0
    .parameter

    .prologue
    .line 221
    iput-object p1, p0, Lcom/android/gallery3d/app/AlbumDataLoader$MyFaceInfoListener;->this$0:Lcom/android/gallery3d/app/AlbumDataLoader;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/gallery3d/app/AlbumDataLoader;Lcom/android/gallery3d/app/AlbumDataLoader$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 221
    invoke-direct {p0, p1}, Lcom/android/gallery3d/app/AlbumDataLoader$MyFaceInfoListener;-><init>(Lcom/android/gallery3d/app/AlbumDataLoader;)V

    return-void
.end method


# virtual methods
.method public onFaceInfoGet(I)V
    .locals 1
    .parameter "imageId"

    .prologue
    .line 223
    iget-object v0, p0, Lcom/android/gallery3d/app/AlbumDataLoader$MyFaceInfoListener;->this$0:Lcom/android/gallery3d/app/AlbumDataLoader;

    #getter for: Lcom/android/gallery3d/app/AlbumDataLoader;->mReloadTask:Lcom/android/gallery3d/app/AlbumDataLoader$ReloadTask;
    invoke-static {v0}, Lcom/android/gallery3d/app/AlbumDataLoader;->access$500(Lcom/android/gallery3d/app/AlbumDataLoader;)Lcom/android/gallery3d/app/AlbumDataLoader$ReloadTask;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/gallery3d/app/AlbumDataLoader$MyFaceInfoListener;->this$0:Lcom/android/gallery3d/app/AlbumDataLoader;

    #getter for: Lcom/android/gallery3d/app/AlbumDataLoader;->mReloadTask:Lcom/android/gallery3d/app/AlbumDataLoader$ReloadTask;
    invoke-static {v0}, Lcom/android/gallery3d/app/AlbumDataLoader;->access$500(Lcom/android/gallery3d/app/AlbumDataLoader;)Lcom/android/gallery3d/app/AlbumDataLoader$ReloadTask;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/gallery3d/app/AlbumDataLoader$ReloadTask;->notifyDirty()V

    .line 224
    :cond_0
    return-void
.end method
