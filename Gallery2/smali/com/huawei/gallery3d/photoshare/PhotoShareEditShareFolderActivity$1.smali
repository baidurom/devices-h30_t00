.class Lcom/huawei/gallery3d/photoshare/PhotoShareEditShareFolderActivity$1;
.super Ljava/lang/Object;
.source "PhotoShareEditShareFolderActivity.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/huawei/gallery3d/photoshare/PhotoShareEditShareFolderActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/huawei/gallery3d/photoshare/PhotoShareEditShareFolderActivity;


# direct methods
.method constructor <init>(Lcom/huawei/gallery3d/photoshare/PhotoShareEditShareFolderActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 61
    iput-object p1, p0, Lcom/huawei/gallery3d/photoshare/PhotoShareEditShareFolderActivity$1;->this$0:Lcom/huawei/gallery3d/photoshare/PhotoShareEditShareFolderActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 0
    .parameter "s"

    .prologue
    .line 81
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .parameter "s"
    .parameter "start"
    .parameter "count"
    .parameter "after"

    .prologue
    .line 78
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 2
    .parameter "s"
    .parameter "start"
    .parameter "before"
    .parameter "count"

    .prologue
    .line 65
    iget-object v0, p0, Lcom/huawei/gallery3d/photoshare/PhotoShareEditShareFolderActivity$1;->this$0:Lcom/huawei/gallery3d/photoshare/PhotoShareEditShareFolderActivity;

    #getter for: Lcom/huawei/gallery3d/photoshare/PhotoShareEditShareFolderActivity;->mEditShareConfirmButton:Landroid/widget/Button;
    invoke-static {v0}, Lcom/huawei/gallery3d/photoshare/PhotoShareEditShareFolderActivity;->access$000(Lcom/huawei/gallery3d/photoshare/PhotoShareEditShareFolderActivity;)Landroid/widget/Button;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 66
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-nez v0, :cond_1

    .line 67
    iget-object v0, p0, Lcom/huawei/gallery3d/photoshare/PhotoShareEditShareFolderActivity$1;->this$0:Lcom/huawei/gallery3d/photoshare/PhotoShareEditShareFolderActivity;

    #getter for: Lcom/huawei/gallery3d/photoshare/PhotoShareEditShareFolderActivity;->mEditShareConfirmButton:Landroid/widget/Button;
    invoke-static {v0}, Lcom/huawei/gallery3d/photoshare/PhotoShareEditShareFolderActivity;->access$000(Lcom/huawei/gallery3d/photoshare/PhotoShareEditShareFolderActivity;)Landroid/widget/Button;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 68
    iget-object v0, p0, Lcom/huawei/gallery3d/photoshare/PhotoShareEditShareFolderActivity$1;->this$0:Lcom/huawei/gallery3d/photoshare/PhotoShareEditShareFolderActivity;

    #getter for: Lcom/huawei/gallery3d/photoshare/PhotoShareEditShareFolderActivity;->mEditShareConfirmButton:Landroid/widget/Button;
    invoke-static {v0}, Lcom/huawei/gallery3d/photoshare/PhotoShareEditShareFolderActivity;->access$000(Lcom/huawei/gallery3d/photoshare/PhotoShareEditShareFolderActivity;)Landroid/widget/Button;

    move-result-object v0

    const v1, 0x3e4ccccd

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setAlpha(F)V

    .line 74
    :cond_0
    :goto_0
    return-void

    .line 70
    :cond_1
    iget-object v0, p0, Lcom/huawei/gallery3d/photoshare/PhotoShareEditShareFolderActivity$1;->this$0:Lcom/huawei/gallery3d/photoshare/PhotoShareEditShareFolderActivity;

    #getter for: Lcom/huawei/gallery3d/photoshare/PhotoShareEditShareFolderActivity;->mEditShareConfirmButton:Landroid/widget/Button;
    invoke-static {v0}, Lcom/huawei/gallery3d/photoshare/PhotoShareEditShareFolderActivity;->access$000(Lcom/huawei/gallery3d/photoshare/PhotoShareEditShareFolderActivity;)Landroid/widget/Button;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 71
    iget-object v0, p0, Lcom/huawei/gallery3d/photoshare/PhotoShareEditShareFolderActivity$1;->this$0:Lcom/huawei/gallery3d/photoshare/PhotoShareEditShareFolderActivity;

    #getter for: Lcom/huawei/gallery3d/photoshare/PhotoShareEditShareFolderActivity;->mEditShareConfirmButton:Landroid/widget/Button;
    invoke-static {v0}, Lcom/huawei/gallery3d/photoshare/PhotoShareEditShareFolderActivity;->access$000(Lcom/huawei/gallery3d/photoshare/PhotoShareEditShareFolderActivity;)Landroid/widget/Button;

    move-result-object v0

    const/high16 v1, 0x3f80

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setAlpha(F)V

    goto :goto_0
.end method
