.class Lcom/android/gallery3d/app/AlbumSetPage$MyScanFaceListener;
.super Ljava/lang/Object;
.source "AlbumSetPage.java"

# interfaces
.implements Lcom/android/gallery3d/data/FaceInfoProcess$ScanProgressListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/gallery3d/app/AlbumSetPage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MyScanFaceListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/gallery3d/app/AlbumSetPage;


# direct methods
.method private constructor <init>(Lcom/android/gallery3d/app/AlbumSetPage;)V
    .locals 0
    .parameter

    .prologue
    .line 1507
    iput-object p1, p0, Lcom/android/gallery3d/app/AlbumSetPage$MyScanFaceListener;->this$0:Lcom/android/gallery3d/app/AlbumSetPage;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/gallery3d/app/AlbumSetPage;Lcom/android/gallery3d/app/AlbumSetPage$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1507
    invoke-direct {p0, p1}, Lcom/android/gallery3d/app/AlbumSetPage$MyScanFaceListener;-><init>(Lcom/android/gallery3d/app/AlbumSetPage;)V

    return-void
.end method


# virtual methods
.method public onProgress(I)V
    .locals 1
    .parameter "num"

    .prologue
    .line 1513
    iget-object v0, p0, Lcom/android/gallery3d/app/AlbumSetPage$MyScanFaceListener;->this$0:Lcom/android/gallery3d/app/AlbumSetPage;

    #getter for: Lcom/android/gallery3d/app/AlbumSetPage;->mFaceScanBar:Lcom/android/gallery3d/ui/FaceScanBar;
    invoke-static {v0}, Lcom/android/gallery3d/app/AlbumSetPage;->access$5000(Lcom/android/gallery3d/app/AlbumSetPage;)Lcom/android/gallery3d/ui/FaceScanBar;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/gallery3d/ui/FaceScanBar;->updateProgess(I)V

    .line 1514
    return-void
.end method

.method public onScanBegin(I)V
    .locals 1
    .parameter "num"

    .prologue
    .line 1509
    iget-object v0, p0, Lcom/android/gallery3d/app/AlbumSetPage$MyScanFaceListener;->this$0:Lcom/android/gallery3d/app/AlbumSetPage;

    #getter for: Lcom/android/gallery3d/app/AlbumSetPage;->mFaceScanBar:Lcom/android/gallery3d/ui/FaceScanBar;
    invoke-static {v0}, Lcom/android/gallery3d/app/AlbumSetPage;->access$5000(Lcom/android/gallery3d/app/AlbumSetPage;)Lcom/android/gallery3d/ui/FaceScanBar;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/gallery3d/ui/FaceScanBar;->initProgress(I)V

    .line 1510
    return-void
.end method

.method public onScanFinish()V
    .locals 2

    .prologue
    .line 1517
    iget-object v0, p0, Lcom/android/gallery3d/app/AlbumSetPage$MyScanFaceListener;->this$0:Lcom/android/gallery3d/app/AlbumSetPage;

    #getter for: Lcom/android/gallery3d/app/AlbumSetPage;->mFaceScanBar:Lcom/android/gallery3d/ui/FaceScanBar;
    invoke-static {v0}, Lcom/android/gallery3d/app/AlbumSetPage;->access$5000(Lcom/android/gallery3d/app/AlbumSetPage;)Lcom/android/gallery3d/ui/FaceScanBar;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/gallery3d/ui/FaceScanBar;->finishProgress()V

    .line 1519
    iget-object v0, p0, Lcom/android/gallery3d/app/AlbumSetPage$MyScanFaceListener;->this$0:Lcom/android/gallery3d/app/AlbumSetPage;

    const/4 v1, 0x1

    #setter for: Lcom/android/gallery3d/app/AlbumSetPage;->mFaceScanFinish:Z
    invoke-static {v0, v1}, Lcom/android/gallery3d/app/AlbumSetPage;->access$5102(Lcom/android/gallery3d/app/AlbumSetPage;Z)Z

    .line 1521
    return-void
.end method
