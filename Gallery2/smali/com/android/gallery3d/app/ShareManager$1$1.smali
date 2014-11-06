.class Lcom/android/gallery3d/app/ShareManager$1$1;
.super Ljava/lang/Object;
.source "ShareManager.java"

# interfaces
.implements Lcom/android/gallery3d/ui/ShareExecutor$UserVIListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/gallery3d/app/ShareManager$1;->onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/gallery3d/app/ShareManager$1;

.field final synthetic val$chosenName:Landroid/content/ComponentName;

.field final synthetic val$shouldAddWaterMark:Z


# direct methods
.method constructor <init>(Lcom/android/gallery3d/app/ShareManager$1;ZLandroid/content/ComponentName;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 250
    iput-object p1, p0, Lcom/android/gallery3d/app/ShareManager$1$1;->this$1:Lcom/android/gallery3d/app/ShareManager$1;

    iput-boolean p2, p0, Lcom/android/gallery3d/app/ShareManager$1$1;->val$shouldAddWaterMark:Z

    iput-object p3, p0, Lcom/android/gallery3d/app/ShareManager$1$1;->val$chosenName:Landroid/content/ComponentName;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onUserConfirm(Z)V
    .locals 3
    .parameter "shouldConvert"

    .prologue
    .line 253
    iget-object v0, p0, Lcom/android/gallery3d/app/ShareManager$1$1;->this$1:Lcom/android/gallery3d/app/ShareManager$1;

    iget-object v1, v0, Lcom/android/gallery3d/app/ShareManager$1;->this$0:Lcom/android/gallery3d/app/ShareManager;

    if-nez p1, :cond_0

    iget-boolean v0, p0, Lcom/android/gallery3d/app/ShareManager$1$1;->val$shouldAddWaterMark:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    iget-object v2, p0, Lcom/android/gallery3d/app/ShareManager$1$1;->val$chosenName:Landroid/content/ComponentName;

    #calls: Lcom/android/gallery3d/app/ShareManager;->handleSingleIntentShareInternal(ZZLandroid/content/ComponentName;)V
    invoke-static {v1, p1, v0, v2}, Lcom/android/gallery3d/app/ShareManager;->access$1300(Lcom/android/gallery3d/app/ShareManager;ZZLandroid/content/ComponentName;)V

    .line 254
    return-void

    .line 253
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
