.class Lcom/android/gallery3d/app/FaceMenuOperation$ConfirmDialogListener;
.super Ljava/lang/Object;
.source "FaceMenuOperation.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;
.implements Landroid/content/DialogInterface$OnCancelListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/gallery3d/app/FaceMenuOperation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ConfirmDialogListener"
.end annotation


# instance fields
.field private mFaceId:I

.field private mItem:Lcom/android/gallery3d/data/MediaItem;

.field final synthetic this$0:Lcom/android/gallery3d/app/FaceMenuOperation;


# direct methods
.method public constructor <init>(Lcom/android/gallery3d/app/FaceMenuOperation;ILcom/android/gallery3d/data/MediaItem;)V
    .locals 0
    .parameter
    .parameter "faceId"
    .parameter "item"

    .prologue
    .line 894
    iput-object p1, p0, Lcom/android/gallery3d/app/FaceMenuOperation$ConfirmDialogListener;->this$0:Lcom/android/gallery3d/app/FaceMenuOperation;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 895
    iput p2, p0, Lcom/android/gallery3d/app/FaceMenuOperation$ConfirmDialogListener;->mFaceId:I

    .line 896
    iput-object p3, p0, Lcom/android/gallery3d/app/FaceMenuOperation$ConfirmDialogListener;->mItem:Lcom/android/gallery3d/data/MediaItem;

    .line 897
    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 0
    .parameter "dialog"

    .prologue
    .line 913
    return-void
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 901
    packed-switch p2, :pswitch_data_0

    .line 908
    :goto_0
    return-void

    .line 903
    :pswitch_0
    iget-object v0, p0, Lcom/android/gallery3d/app/FaceMenuOperation$ConfirmDialogListener;->this$0:Lcom/android/gallery3d/app/FaceMenuOperation;

    iget v1, p0, Lcom/android/gallery3d/app/FaceMenuOperation$ConfirmDialogListener;->mFaceId:I

    iget-object v2, p0, Lcom/android/gallery3d/app/FaceMenuOperation$ConfirmDialogListener;->mItem:Lcom/android/gallery3d/data/MediaItem;

    #calls: Lcom/android/gallery3d/app/FaceMenuOperation;->setContactPhoto(ILcom/android/gallery3d/data/MediaItem;)V
    invoke-static {v0, v1, v2}, Lcom/android/gallery3d/app/FaceMenuOperation;->access$1400(Lcom/android/gallery3d/app/FaceMenuOperation;ILcom/android/gallery3d/data/MediaItem;)V

    goto :goto_0

    .line 901
    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_0
    .end packed-switch
.end method
