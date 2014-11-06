.class Lcom/android/gallery3d/app/LongTapManager$1;
.super Ljava/lang/Object;
.source "LongTapManager.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/gallery3d/app/LongTapManager;->showDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/gallery3d/app/LongTapManager;


# direct methods
.method constructor <init>(Lcom/android/gallery3d/app/LongTapManager;)V
    .locals 0
    .parameter

    .prologue
    .line 103
    iput-object p1, p0, Lcom/android/gallery3d/app/LongTapManager$1;->this$0:Lcom/android/gallery3d/app/LongTapManager;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 106
    iget-object v1, p0, Lcom/android/gallery3d/app/LongTapManager$1;->this$0:Lcom/android/gallery3d/app/LongTapManager;

    #getter for: Lcom/android/gallery3d/app/LongTapManager;->mListener:Lcom/android/gallery3d/app/LongTapManager$OnItemClickedListener;
    invoke-static {v1}, Lcom/android/gallery3d/app/LongTapManager;->access$000(Lcom/android/gallery3d/app/LongTapManager;)Lcom/android/gallery3d/app/LongTapManager$OnItemClickedListener;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 107
    iget-object v1, p0, Lcom/android/gallery3d/app/LongTapManager$1;->this$0:Lcom/android/gallery3d/app/LongTapManager;

    #getter for: Lcom/android/gallery3d/app/LongTapManager;->mListener:Lcom/android/gallery3d/app/LongTapManager$OnItemClickedListener;
    invoke-static {v1}, Lcom/android/gallery3d/app/LongTapManager;->access$000(Lcom/android/gallery3d/app/LongTapManager;)Lcom/android/gallery3d/app/LongTapManager$OnItemClickedListener;

    move-result-object v1

    iget-object v2, p0, Lcom/android/gallery3d/app/LongTapManager$1;->this$0:Lcom/android/gallery3d/app/LongTapManager;

    #getter for: Lcom/android/gallery3d/app/LongTapManager;->mItemIds:[I
    invoke-static {v2}, Lcom/android/gallery3d/app/LongTapManager;->access$100(Lcom/android/gallery3d/app/LongTapManager;)[I

    move-result-object v2

    aget v2, v2, p2

    iget-object v3, p0, Lcom/android/gallery3d/app/LongTapManager$1;->this$0:Lcom/android/gallery3d/app/LongTapManager;

    #getter for: Lcom/android/gallery3d/app/LongTapManager;->mSlotIndex:I
    invoke-static {v3}, Lcom/android/gallery3d/app/LongTapManager;->access$200(Lcom/android/gallery3d/app/LongTapManager;)I

    move-result v3

    invoke-interface {v1, v2, v3}, Lcom/android/gallery3d/app/LongTapManager$OnItemClickedListener;->OnItemClicked(II)Z

    move-result v0

    .line 108
    .local v0, result:Z
    if-eqz v0, :cond_1

    .line 111
    .end local v0           #result:Z
    :cond_0
    :goto_0
    return-void

    .line 109
    .restart local v0       #result:Z
    :cond_1
    iget-object v1, p0, Lcom/android/gallery3d/app/LongTapManager$1;->this$0:Lcom/android/gallery3d/app/LongTapManager;

    iget-object v2, p0, Lcom/android/gallery3d/app/LongTapManager$1;->this$0:Lcom/android/gallery3d/app/LongTapManager;

    #getter for: Lcom/android/gallery3d/app/LongTapManager;->mItemIds:[I
    invoke-static {v2}, Lcom/android/gallery3d/app/LongTapManager;->access$100(Lcom/android/gallery3d/app/LongTapManager;)[I

    move-result-object v2

    aget v2, v2, p2

    iget-object v3, p0, Lcom/android/gallery3d/app/LongTapManager$1;->this$0:Lcom/android/gallery3d/app/LongTapManager;

    #getter for: Lcom/android/gallery3d/app/LongTapManager;->mMediaPath:Lcom/android/gallery3d/data/Path;
    invoke-static {v3}, Lcom/android/gallery3d/app/LongTapManager;->access$300(Lcom/android/gallery3d/app/LongTapManager;)Lcom/android/gallery3d/data/Path;

    move-result-object v3

    #calls: Lcom/android/gallery3d/app/LongTapManager;->doAfterItemClicked(ILcom/android/gallery3d/data/Path;)V
    invoke-static {v1, v2, v3}, Lcom/android/gallery3d/app/LongTapManager;->access$400(Lcom/android/gallery3d/app/LongTapManager;ILcom/android/gallery3d/data/Path;)V

    goto :goto_0
.end method
