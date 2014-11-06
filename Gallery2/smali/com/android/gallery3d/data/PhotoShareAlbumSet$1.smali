.class Lcom/android/gallery3d/data/PhotoShareAlbumSet$1;
.super Ljava/lang/Object;
.source "PhotoShareAlbumSet.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/gallery3d/data/PhotoShareAlbumSet;->onFutureDone(Lcom/android/gallery3d/util/Future;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/gallery3d/data/PhotoShareAlbumSet;


# direct methods
.method constructor <init>(Lcom/android/gallery3d/data/PhotoShareAlbumSet;)V
    .locals 0
    .parameter

    .prologue
    .line 118
    iput-object p1, p0, Lcom/android/gallery3d/data/PhotoShareAlbumSet$1;->this$0:Lcom/android/gallery3d/data/PhotoShareAlbumSet;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 121
    iget-object v0, p0, Lcom/android/gallery3d/data/PhotoShareAlbumSet$1;->this$0:Lcom/android/gallery3d/data/PhotoShareAlbumSet;

    invoke-virtual {v0}, Lcom/android/gallery3d/data/PhotoShareAlbumSet;->notifyContentChanged()V

    .line 122
    return-void
.end method
