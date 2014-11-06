.class Lcom/huawei/gallery3d/photoshare/PhotoShareCreateNewShareActivity$1;
.super Ljava/lang/Object;
.source "PhotoShareCreateNewShareActivity.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/huawei/gallery3d/photoshare/PhotoShareCreateNewShareActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/huawei/gallery3d/photoshare/PhotoShareCreateNewShareActivity;


# direct methods
.method constructor <init>(Lcom/huawei/gallery3d/photoshare/PhotoShareCreateNewShareActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 45
    iput-object p1, p0, Lcom/huawei/gallery3d/photoshare/PhotoShareCreateNewShareActivity$1;->this$0:Lcom/huawei/gallery3d/photoshare/PhotoShareCreateNewShareActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 0
    .parameter "s"

    .prologue
    .line 65
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .parameter "s"
    .parameter "start"
    .parameter "count"
    .parameter "after"

    .prologue
    .line 62
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 2
    .parameter "s"
    .parameter "start"
    .parameter "before"
    .parameter "count"

    .prologue
    .line 49
    iget-object v0, p0, Lcom/huawei/gallery3d/photoshare/PhotoShareCreateNewShareActivity$1;->this$0:Lcom/huawei/gallery3d/photoshare/PhotoShareCreateNewShareActivity;

    #getter for: Lcom/huawei/gallery3d/photoshare/PhotoShareCreateNewShareActivity;->mNewShareCreateButton:Landroid/widget/Button;
    invoke-static {v0}, Lcom/huawei/gallery3d/photoshare/PhotoShareCreateNewShareActivity;->access$000(Lcom/huawei/gallery3d/photoshare/PhotoShareCreateNewShareActivity;)Landroid/widget/Button;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 50
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-nez v0, :cond_1

    .line 51
    iget-object v0, p0, Lcom/huawei/gallery3d/photoshare/PhotoShareCreateNewShareActivity$1;->this$0:Lcom/huawei/gallery3d/photoshare/PhotoShareCreateNewShareActivity;

    #getter for: Lcom/huawei/gallery3d/photoshare/PhotoShareCreateNewShareActivity;->mNewShareCreateButton:Landroid/widget/Button;
    invoke-static {v0}, Lcom/huawei/gallery3d/photoshare/PhotoShareCreateNewShareActivity;->access$000(Lcom/huawei/gallery3d/photoshare/PhotoShareCreateNewShareActivity;)Landroid/widget/Button;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 52
    iget-object v0, p0, Lcom/huawei/gallery3d/photoshare/PhotoShareCreateNewShareActivity$1;->this$0:Lcom/huawei/gallery3d/photoshare/PhotoShareCreateNewShareActivity;

    #getter for: Lcom/huawei/gallery3d/photoshare/PhotoShareCreateNewShareActivity;->mNewShareCreateButton:Landroid/widget/Button;
    invoke-static {v0}, Lcom/huawei/gallery3d/photoshare/PhotoShareCreateNewShareActivity;->access$000(Lcom/huawei/gallery3d/photoshare/PhotoShareCreateNewShareActivity;)Landroid/widget/Button;

    move-result-object v0

    const v1, 0x3e4ccccd

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setAlpha(F)V

    .line 58
    :cond_0
    :goto_0
    return-void

    .line 54
    :cond_1
    iget-object v0, p0, Lcom/huawei/gallery3d/photoshare/PhotoShareCreateNewShareActivity$1;->this$0:Lcom/huawei/gallery3d/photoshare/PhotoShareCreateNewShareActivity;

    #getter for: Lcom/huawei/gallery3d/photoshare/PhotoShareCreateNewShareActivity;->mNewShareCreateButton:Landroid/widget/Button;
    invoke-static {v0}, Lcom/huawei/gallery3d/photoshare/PhotoShareCreateNewShareActivity;->access$000(Lcom/huawei/gallery3d/photoshare/PhotoShareCreateNewShareActivity;)Landroid/widget/Button;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 55
    iget-object v0, p0, Lcom/huawei/gallery3d/photoshare/PhotoShareCreateNewShareActivity$1;->this$0:Lcom/huawei/gallery3d/photoshare/PhotoShareCreateNewShareActivity;

    #getter for: Lcom/huawei/gallery3d/photoshare/PhotoShareCreateNewShareActivity;->mNewShareCreateButton:Landroid/widget/Button;
    invoke-static {v0}, Lcom/huawei/gallery3d/photoshare/PhotoShareCreateNewShareActivity;->access$000(Lcom/huawei/gallery3d/photoshare/PhotoShareCreateNewShareActivity;)Landroid/widget/Button;

    move-result-object v0

    const/high16 v1, 0x3f80

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setAlpha(F)V

    goto :goto_0
.end method
