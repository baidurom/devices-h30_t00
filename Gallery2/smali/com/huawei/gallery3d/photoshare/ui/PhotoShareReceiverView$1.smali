.class Lcom/huawei/gallery3d/photoshare/ui/PhotoShareReceiverView$1;
.super Ljava/lang/Object;
.source "PhotoShareReceiverView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/huawei/gallery3d/photoshare/ui/PhotoShareReceiverView;->setOnItemClickListener(Lcom/huawei/gallery3d/photoshare/ui/PhotoShareReceiverView$OnItemListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/huawei/gallery3d/photoshare/ui/PhotoShareReceiverView;


# direct methods
.method constructor <init>(Lcom/huawei/gallery3d/photoshare/ui/PhotoShareReceiverView;)V
    .locals 0
    .parameter

    .prologue
    .line 38
    iput-object p1, p0, Lcom/huawei/gallery3d/photoshare/ui/PhotoShareReceiverView$1;->this$0:Lcom/huawei/gallery3d/photoshare/ui/PhotoShareReceiverView;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 41
    iget-object v0, p0, Lcom/huawei/gallery3d/photoshare/ui/PhotoShareReceiverView$1;->this$0:Lcom/huawei/gallery3d/photoshare/ui/PhotoShareReceiverView;

    #getter for: Lcom/huawei/gallery3d/photoshare/ui/PhotoShareReceiverView;->listener:Lcom/huawei/gallery3d/photoshare/ui/PhotoShareReceiverView$OnItemListener;
    invoke-static {v0}, Lcom/huawei/gallery3d/photoshare/ui/PhotoShareReceiverView;->access$000(Lcom/huawei/gallery3d/photoshare/ui/PhotoShareReceiverView;)Lcom/huawei/gallery3d/photoshare/ui/PhotoShareReceiverView$OnItemListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 42
    iget-object v0, p0, Lcom/huawei/gallery3d/photoshare/ui/PhotoShareReceiverView$1;->this$0:Lcom/huawei/gallery3d/photoshare/ui/PhotoShareReceiverView;

    #getter for: Lcom/huawei/gallery3d/photoshare/ui/PhotoShareReceiverView;->listener:Lcom/huawei/gallery3d/photoshare/ui/PhotoShareReceiverView$OnItemListener;
    invoke-static {v0}, Lcom/huawei/gallery3d/photoshare/ui/PhotoShareReceiverView;->access$000(Lcom/huawei/gallery3d/photoshare/ui/PhotoShareReceiverView;)Lcom/huawei/gallery3d/photoshare/ui/PhotoShareReceiverView$OnItemListener;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/huawei/gallery3d/photoshare/ui/PhotoShareReceiverView$OnItemListener;->onDelete(Landroid/view/View;)V

    .line 44
    :cond_0
    return-void
.end method
