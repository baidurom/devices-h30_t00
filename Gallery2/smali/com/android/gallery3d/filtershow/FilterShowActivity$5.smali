.class Lcom/android/gallery3d/filtershow/FilterShowActivity$5;
.super Ljava/lang/Object;
.source "FilterShowActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/gallery3d/filtershow/FilterShowActivity;->createUnsaveAndConfirmDialog()V
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
    .line 775
    iput-object p1, p0, Lcom/android/gallery3d/filtershow/FilterShowActivity$5;->this$0:Lcom/android/gallery3d/filtershow/FilterShowActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 778
    packed-switch p2, :pswitch_data_0

    .line 788
    :goto_0
    return-void

    .line 780
    :pswitch_0
    iget-object v0, p0, Lcom/android/gallery3d/filtershow/FilterShowActivity$5;->this$0:Lcom/android/gallery3d/filtershow/FilterShowActivity;

    invoke-virtual {v0}, Lcom/android/gallery3d/filtershow/FilterShowActivity;->saveImage()V

    goto :goto_0

    .line 783
    :pswitch_1
    iget-object v0, p0, Lcom/android/gallery3d/filtershow/FilterShowActivity$5;->this$0:Lcom/android/gallery3d/filtershow/FilterShowActivity;

    invoke-virtual {v0}, Lcom/android/gallery3d/filtershow/FilterShowActivity;->finish()V

    goto :goto_0

    .line 778
    :pswitch_data_0
    .packed-switch -0x2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
