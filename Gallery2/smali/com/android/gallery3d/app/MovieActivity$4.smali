.class Lcom/android/gallery3d/app/MovieActivity$4;
.super Ljava/lang/Object;
.source "MovieActivity.java"

# interfaces
.implements Lcom/android/gallery3d/app/DtsEffect$DtsEffectOnListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/gallery3d/app/MovieActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/gallery3d/app/MovieActivity;


# direct methods
.method constructor <init>(Lcom/android/gallery3d/app/MovieActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 351
    iput-object p1, p0, Lcom/android/gallery3d/app/MovieActivity$4;->this$0:Lcom/android/gallery3d/app/MovieActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onEffectOnChange(Z)V
    .locals 2
    .parameter "enable"

    .prologue
    .line 354
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieActivity$4;->this$0:Lcom/android/gallery3d/app/MovieActivity;

    #getter for: Lcom/android/gallery3d/app/MovieActivity;->mDtsItem:Landroid/view/MenuItem;
    invoke-static {v0}, Lcom/android/gallery3d/app/MovieActivity;->access$500(Lcom/android/gallery3d/app/MovieActivity;)Landroid/view/MenuItem;

    move-result-object v0

    if-nez v0, :cond_0

    .line 362
    :goto_0
    return-void

    .line 357
    :cond_0
    if-eqz p1, :cond_1

    .line 358
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieActivity$4;->this$0:Lcom/android/gallery3d/app/MovieActivity;

    #getter for: Lcom/android/gallery3d/app/MovieActivity;->mDtsItem:Landroid/view/MenuItem;
    invoke-static {v0}, Lcom/android/gallery3d/app/MovieActivity;->access$500(Lcom/android/gallery3d/app/MovieActivity;)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x7f02024e

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    goto :goto_0

    .line 360
    :cond_1
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieActivity$4;->this$0:Lcom/android/gallery3d/app/MovieActivity;

    #getter for: Lcom/android/gallery3d/app/MovieActivity;->mDtsItem:Landroid/view/MenuItem;
    invoke-static {v0}, Lcom/android/gallery3d/app/MovieActivity;->access$500(Lcom/android/gallery3d/app/MovieActivity;)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x7f02024d

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    goto :goto_0
.end method
