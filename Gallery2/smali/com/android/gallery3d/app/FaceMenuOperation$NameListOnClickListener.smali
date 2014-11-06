.class Lcom/android/gallery3d/app/FaceMenuOperation$NameListOnClickListener;
.super Ljava/lang/Object;
.source "FaceMenuOperation.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/gallery3d/app/FaceMenuOperation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "NameListOnClickListener"
.end annotation


# instance fields
.field private mFaceId:I

.field private mSimilarIndex:I

.field final synthetic this$0:Lcom/android/gallery3d/app/FaceMenuOperation;


# direct methods
.method public constructor <init>(Lcom/android/gallery3d/app/FaceMenuOperation;II)V
    .locals 0
    .parameter
    .parameter "Index"
    .parameter "faceId"

    .prologue
    .line 94
    iput-object p1, p0, Lcom/android/gallery3d/app/FaceMenuOperation$NameListOnClickListener;->this$0:Lcom/android/gallery3d/app/FaceMenuOperation;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 95
    iput p2, p0, Lcom/android/gallery3d/app/FaceMenuOperation$NameListOnClickListener;->mSimilarIndex:I

    .line 96
    iput p3, p0, Lcom/android/gallery3d/app/FaceMenuOperation$NameListOnClickListener;->mFaceId:I

    .line 97
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter "v"

    .prologue
    .line 100
    iget-object v0, p0, Lcom/android/gallery3d/app/FaceMenuOperation$NameListOnClickListener;->this$0:Lcom/android/gallery3d/app/FaceMenuOperation;

    #getter for: Lcom/android/gallery3d/app/FaceMenuOperation;->mAlertDialog:Landroid/app/AlertDialog;
    invoke-static {v0}, Lcom/android/gallery3d/app/FaceMenuOperation;->access$000(Lcom/android/gallery3d/app/FaceMenuOperation;)Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 101
    iget-object v0, p0, Lcom/android/gallery3d/app/FaceMenuOperation$NameListOnClickListener;->this$0:Lcom/android/gallery3d/app/FaceMenuOperation;

    iget v1, p0, Lcom/android/gallery3d/app/FaceMenuOperation$NameListOnClickListener;->mSimilarIndex:I

    iget v2, p0, Lcom/android/gallery3d/app/FaceMenuOperation$NameListOnClickListener;->mFaceId:I

    #calls: Lcom/android/gallery3d/app/FaceMenuOperation;->attachSimilarPerson(II)V
    invoke-static {v0, v1, v2}, Lcom/android/gallery3d/app/FaceMenuOperation;->access$100(Lcom/android/gallery3d/app/FaceMenuOperation;II)V

    .line 102
    iget-object v0, p0, Lcom/android/gallery3d/app/FaceMenuOperation$NameListOnClickListener;->this$0:Lcom/android/gallery3d/app/FaceMenuOperation;

    #getter for: Lcom/android/gallery3d/app/FaceMenuOperation;->mPhotoPage:Lcom/android/gallery3d/app/PhotoPage;
    invoke-static {v0}, Lcom/android/gallery3d/app/FaceMenuOperation;->access$200(Lcom/android/gallery3d/app/FaceMenuOperation;)Lcom/android/gallery3d/app/PhotoPage;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/gallery3d/app/PhotoPage;->onActionBarWanted()V

    .line 103
    return-void
.end method
