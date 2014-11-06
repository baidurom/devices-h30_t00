.class Lcom/android/gallery3d/app/FaceMenuOperation$1;
.super Ljava/lang/Object;
.source "FaceMenuOperation.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/gallery3d/app/FaceMenuOperation;->showSelectNameMenu(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/gallery3d/app/FaceMenuOperation;

.field final synthetic val$faceId:I


# direct methods
.method constructor <init>(Lcom/android/gallery3d/app/FaceMenuOperation;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 616
    iput-object p1, p0, Lcom/android/gallery3d/app/FaceMenuOperation$1;->this$0:Lcom/android/gallery3d/app/FaceMenuOperation;

    iput p2, p0, Lcom/android/gallery3d/app/FaceMenuOperation$1;->val$faceId:I

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "v"

    .prologue
    .line 618
    iget-object v0, p0, Lcom/android/gallery3d/app/FaceMenuOperation$1;->this$0:Lcom/android/gallery3d/app/FaceMenuOperation;

    #getter for: Lcom/android/gallery3d/app/FaceMenuOperation;->mAlertDialog:Landroid/app/AlertDialog;
    invoke-static {v0}, Lcom/android/gallery3d/app/FaceMenuOperation;->access$000(Lcom/android/gallery3d/app/FaceMenuOperation;)Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 619
    iget-object v0, p0, Lcom/android/gallery3d/app/FaceMenuOperation$1;->this$0:Lcom/android/gallery3d/app/FaceMenuOperation;

    iget v1, p0, Lcom/android/gallery3d/app/FaceMenuOperation$1;->val$faceId:I

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/app/FaceMenuOperation;->startContactActivity(I)V

    .line 620
    return-void
.end method
