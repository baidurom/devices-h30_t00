.class Lcn/real/device/HelixSubTitleManager$2;
.super Ljava/lang/Object;
.source "HelixSubTitleManager.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/real/device/HelixSubTitleManager;->showChooseSubtitleDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/widget/AdapterView$OnItemClickListener;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcn/real/device/HelixSubTitleManager;

.field private final synthetic val$dialog:Landroid/app/AlertDialog;


# direct methods
.method constructor <init>(Lcn/real/device/HelixSubTitleManager;Landroid/app/AlertDialog;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcn/real/device/HelixSubTitleManager$2;->this$0:Lcn/real/device/HelixSubTitleManager;

    iput-object p2, p0, Lcn/real/device/HelixSubTitleManager$2;->val$dialog:Landroid/app/AlertDialog;

    .line 348
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 2
    .parameter
    .parameter "arg1"
    .parameter "arg2"
    .parameter "arg3"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 353
    .local p1, arg0:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    iget-object v0, p0, Lcn/real/device/HelixSubTitleManager$2;->this$0:Lcn/real/device/HelixSubTitleManager;

    iget-object v1, p0, Lcn/real/device/HelixSubTitleManager$2;->this$0:Lcn/real/device/HelixSubTitleManager;

    #getter for: Lcn/real/device/HelixSubTitleManager;->mPlayer:Landroid/media/MediaPlayer;
    invoke-static {v1}, Lcn/real/device/HelixSubTitleManager;->access$2(Lcn/real/device/HelixSubTitleManager;)Landroid/media/MediaPlayer;

    move-result-object v1

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->getCurrentPosition()I

    move-result v1

    #setter for: Lcn/real/device/HelixSubTitleManager;->mCurrentPosition:I
    invoke-static {v0, v1}, Lcn/real/device/HelixSubTitleManager;->access$3(Lcn/real/device/HelixSubTitleManager;I)V

    .line 355
    iget-object v0, p0, Lcn/real/device/HelixSubTitleManager$2;->this$0:Lcn/real/device/HelixSubTitleManager;

    #calls: Lcn/real/device/HelixSubTitleManager;->switchSubtitle(I)V
    invoke-static {v0, p3}, Lcn/real/device/HelixSubTitleManager;->access$4(Lcn/real/device/HelixSubTitleManager;I)V

    .line 357
    iget-object v0, p0, Lcn/real/device/HelixSubTitleManager$2;->val$dialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 358
    return-void
.end method
