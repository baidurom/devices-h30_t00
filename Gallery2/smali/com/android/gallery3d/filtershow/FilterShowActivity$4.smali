.class Lcom/android/gallery3d/filtershow/FilterShowActivity$4;
.super Ljava/lang/Object;
.source "FilterShowActivity.java"

# interfaces
.implements Lcom/android/gallery3d/app/ShareManager$OnShareTargetSelectedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/gallery3d/filtershow/FilterShowActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/gallery3d/filtershow/FilterShowActivity;


# direct methods
.method constructor <init>(Lcom/android/gallery3d/filtershow/FilterShowActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 525
    iput-object p1, p0, Lcom/android/gallery3d/filtershow/FilterShowActivity$4;->this$0:Lcom/android/gallery3d/filtershow/FilterShowActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onShareTargetSelected(Landroid/content/Intent;)Z
    .locals 2
    .parameter "intent"

    .prologue
    .line 529
    iget-object v0, p0, Lcom/android/gallery3d/filtershow/FilterShowActivity$4;->this$0:Lcom/android/gallery3d/filtershow/FilterShowActivity;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1}, Lcom/android/gallery3d/filtershow/FilterShowActivity;->onShareTargetSelected(Landroid/widget/ShareActionProvider;Landroid/content/Intent;)Z

    .line 530
    const/4 v0, 0x1

    return v0
.end method
