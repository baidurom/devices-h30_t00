.class Lcom/android/gallery3d/filtershow/FilterShowActivity$3;
.super Ljava/lang/Object;
.source "FilterShowActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/gallery3d/filtershow/FilterShowActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field listBorders:Landroid/widget/LinearLayout;

.field final synthetic this$0:Lcom/android/gallery3d/filtershow/FilterShowActivity;


# direct methods
.method constructor <init>(Lcom/android/gallery3d/filtershow/FilterShowActivity;)V
    .locals 2
    .parameter

    .prologue
    .line 483
    iput-object p1, p0, Lcom/android/gallery3d/filtershow/FilterShowActivity$3;->this$0:Lcom/android/gallery3d/filtershow/FilterShowActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 484
    iget-object v0, p0, Lcom/android/gallery3d/filtershow/FilterShowActivity$3;->this$0:Lcom/android/gallery3d/filtershow/FilterShowActivity;

    const v1, 0x7f1000ad

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/filtershow/FilterShowActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/android/gallery3d/filtershow/FilterShowActivity$3;->listBorders:Landroid/widget/LinearLayout;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 488
    iget-object v0, p0, Lcom/android/gallery3d/filtershow/FilterShowActivity$3;->this$0:Lcom/android/gallery3d/filtershow/FilterShowActivity;

    iget-object v1, p0, Lcom/android/gallery3d/filtershow/FilterShowActivity$3;->listBorders:Landroid/widget/LinearLayout;

    #calls: Lcom/android/gallery3d/filtershow/FilterShowActivity;->fillListBorders(Landroid/widget/LinearLayout;)V
    invoke-static {v0, v1}, Lcom/android/gallery3d/filtershow/FilterShowActivity;->access$000(Lcom/android/gallery3d/filtershow/FilterShowActivity;Landroid/widget/LinearLayout;)V

    .line 489
    return-void
.end method
