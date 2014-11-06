.class Lcom/android/gallery3d/app/AlbumPage$6;
.super Ljava/lang/Object;
.source "AlbumPage.java"

# interfaces
.implements Lcom/android/gallery3d/ui/ToolbarView$OnActListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/gallery3d/app/AlbumPage;->initializeViews()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/gallery3d/app/AlbumPage;


# direct methods
.method constructor <init>(Lcom/android/gallery3d/app/AlbumPage;)V
    .locals 0
    .parameter

    .prologue
    .line 770
    iput-object p1, p0, Lcom/android/gallery3d/app/AlbumPage$6;->this$0:Lcom/android/gallery3d/app/AlbumPage;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel()V
    .locals 1

    .prologue
    .line 774
    iget-object v0, p0, Lcom/android/gallery3d/app/AlbumPage$6;->this$0:Lcom/android/gallery3d/app/AlbumPage;

    iget-object v0, v0, Lcom/android/gallery3d/app/AlbumPage;->mSelectionManager:Lcom/android/gallery3d/ui/SelectionManager;

    invoke-virtual {v0}, Lcom/android/gallery3d/ui/SelectionManager;->leaveSelectionMode()V

    .line 775
    return-void
.end method

.method public onDone()V
    .locals 1

    .prologue
    .line 779
    iget-object v0, p0, Lcom/android/gallery3d/app/AlbumPage$6;->this$0:Lcom/android/gallery3d/app/AlbumPage;

    #calls: Lcom/android/gallery3d/app/AlbumPage;->onOperatedDone()V
    invoke-static {v0}, Lcom/android/gallery3d/app/AlbumPage;->access$2100(Lcom/android/gallery3d/app/AlbumPage;)V

    .line 780
    return-void
.end method
