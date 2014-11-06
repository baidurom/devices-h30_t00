.class Lcom/android/gallery3d/app/PhotoPage$18;
.super Ljava/lang/Object;
.source "PhotoPage.java"

# interfaces
.implements Lcom/android/gallery3d/app/ShareManager$ShareProcessListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/gallery3d/app/PhotoPage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/gallery3d/app/PhotoPage;


# direct methods
.method constructor <init>(Lcom/android/gallery3d/app/PhotoPage;)V
    .locals 0
    .parameter

    .prologue
    .line 3310
    iput-object p1, p0, Lcom/android/gallery3d/app/PhotoPage$18;->this$0:Lcom/android/gallery3d/app/PhotoPage;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getMenuExecutor()Lcom/android/gallery3d/ui/MenuExecutor;
    .locals 1

    .prologue
    .line 3323
    iget-object v0, p0, Lcom/android/gallery3d/app/PhotoPage$18;->this$0:Lcom/android/gallery3d/app/PhotoPage;

    #getter for: Lcom/android/gallery3d/app/PhotoPage;->mMenuExecutor:Lcom/android/gallery3d/ui/MenuExecutor;
    invoke-static {v0}, Lcom/android/gallery3d/app/PhotoPage;->access$6000(Lcom/android/gallery3d/app/PhotoPage;)Lcom/android/gallery3d/ui/MenuExecutor;

    move-result-object v0

    return-object v0
.end method

.method public onProcessDone()V
    .locals 2

    .prologue
    .line 3318
    iget-object v0, p0, Lcom/android/gallery3d/app/PhotoPage$18;->this$0:Lcom/android/gallery3d/app/PhotoPage;

    const/4 v1, 0x1

    #setter for: Lcom/android/gallery3d/app/PhotoPage;->canPauseMenuExecutor:Z
    invoke-static {v0, v1}, Lcom/android/gallery3d/app/PhotoPage;->access$6602(Lcom/android/gallery3d/app/PhotoPage;Z)Z

    .line 3319
    return-void
.end method

.method public onProgress()V
    .locals 2

    .prologue
    .line 3313
    iget-object v0, p0, Lcom/android/gallery3d/app/PhotoPage$18;->this$0:Lcom/android/gallery3d/app/PhotoPage;

    const/4 v1, 0x0

    #setter for: Lcom/android/gallery3d/app/PhotoPage;->canPauseMenuExecutor:Z
    invoke-static {v0, v1}, Lcom/android/gallery3d/app/PhotoPage;->access$6602(Lcom/android/gallery3d/app/PhotoPage;Z)Z

    .line 3314
    return-void
.end method
