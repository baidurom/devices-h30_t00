.class Lcom/android/gallery3d/app/AlbumSetPage$9;
.super Ljava/lang/Object;
.source "AlbumSetPage.java"

# interfaces
.implements Lcom/android/gallery3d/ui/ToolbarView$OnActListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/gallery3d/app/AlbumSetPage;->initializeViews()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/gallery3d/app/AlbumSetPage;


# direct methods
.method constructor <init>(Lcom/android/gallery3d/app/AlbumSetPage;)V
    .locals 0
    .parameter

    .prologue
    .line 931
    iput-object p1, p0, Lcom/android/gallery3d/app/AlbumSetPage$9;->this$0:Lcom/android/gallery3d/app/AlbumSetPage;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel()V
    .locals 1

    .prologue
    .line 935
    iget-object v0, p0, Lcom/android/gallery3d/app/AlbumSetPage$9;->this$0:Lcom/android/gallery3d/app/AlbumSetPage;

    iget-object v0, v0, Lcom/android/gallery3d/app/AlbumSetPage;->mSelectionManager:Lcom/android/gallery3d/ui/SelectionManager;

    invoke-virtual {v0}, Lcom/android/gallery3d/ui/SelectionManager;->leaveSelectionMode()V

    .line 936
    return-void
.end method

.method public onDone()V
    .locals 1

    .prologue
    .line 940
    iget-object v0, p0, Lcom/android/gallery3d/app/AlbumSetPage$9;->this$0:Lcom/android/gallery3d/app/AlbumSetPage;

    #calls: Lcom/android/gallery3d/app/AlbumSetPage;->onOperatedDone()V
    invoke-static {v0}, Lcom/android/gallery3d/app/AlbumSetPage;->access$3800(Lcom/android/gallery3d/app/AlbumSetPage;)V

    .line 941
    return-void
.end method
