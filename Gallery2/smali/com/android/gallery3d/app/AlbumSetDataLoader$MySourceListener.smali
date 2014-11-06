.class Lcom/android/gallery3d/app/AlbumSetDataLoader$MySourceListener;
.super Ljava/lang/Object;
.source "AlbumSetDataLoader.java"

# interfaces
.implements Lcom/android/gallery3d/data/ContentListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/gallery3d/app/AlbumSetDataLoader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MySourceListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/gallery3d/app/AlbumSetDataLoader;


# direct methods
.method private constructor <init>(Lcom/android/gallery3d/app/AlbumSetDataLoader;)V
    .locals 0
    .parameter

    .prologue
    .line 244
    iput-object p1, p0, Lcom/android/gallery3d/app/AlbumSetDataLoader$MySourceListener;->this$0:Lcom/android/gallery3d/app/AlbumSetDataLoader;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/gallery3d/app/AlbumSetDataLoader;Lcom/android/gallery3d/app/AlbumSetDataLoader$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 244
    invoke-direct {p0, p1}, Lcom/android/gallery3d/app/AlbumSetDataLoader$MySourceListener;-><init>(Lcom/android/gallery3d/app/AlbumSetDataLoader;)V

    return-void
.end method


# virtual methods
.method public onContentDirty()V
    .locals 1

    .prologue
    .line 247
    iget-object v0, p0, Lcom/android/gallery3d/app/AlbumSetDataLoader$MySourceListener;->this$0:Lcom/android/gallery3d/app/AlbumSetDataLoader;

    #getter for: Lcom/android/gallery3d/app/AlbumSetDataLoader;->mReloadTask:Lcom/android/gallery3d/app/AlbumSetDataLoader$ReloadTask;
    invoke-static {v0}, Lcom/android/gallery3d/app/AlbumSetDataLoader;->access$400(Lcom/android/gallery3d/app/AlbumSetDataLoader;)Lcom/android/gallery3d/app/AlbumSetDataLoader$ReloadTask;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 248
    iget-object v0, p0, Lcom/android/gallery3d/app/AlbumSetDataLoader$MySourceListener;->this$0:Lcom/android/gallery3d/app/AlbumSetDataLoader;

    #getter for: Lcom/android/gallery3d/app/AlbumSetDataLoader;->mReloadTask:Lcom/android/gallery3d/app/AlbumSetDataLoader$ReloadTask;
    invoke-static {v0}, Lcom/android/gallery3d/app/AlbumSetDataLoader;->access$400(Lcom/android/gallery3d/app/AlbumSetDataLoader;)Lcom/android/gallery3d/app/AlbumSetDataLoader$ReloadTask;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/gallery3d/app/AlbumSetDataLoader$ReloadTask;->notifyDirty()V

    .line 250
    :cond_0
    return-void
.end method
