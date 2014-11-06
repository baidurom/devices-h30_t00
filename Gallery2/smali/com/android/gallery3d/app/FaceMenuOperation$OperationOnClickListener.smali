.class Lcom/android/gallery3d/app/FaceMenuOperation$OperationOnClickListener;
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
    name = "OperationOnClickListener"
.end annotation


# instance fields
.field private mFaceId:I

.field private mIndex:I

.field final synthetic this$0:Lcom/android/gallery3d/app/FaceMenuOperation;


# direct methods
.method public constructor <init>(Lcom/android/gallery3d/app/FaceMenuOperation;II)V
    .locals 0
    .parameter
    .parameter "Index"
    .parameter "faceId"

    .prologue
    .line 109
    iput-object p1, p0, Lcom/android/gallery3d/app/FaceMenuOperation$OperationOnClickListener;->this$0:Lcom/android/gallery3d/app/FaceMenuOperation;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 110
    iput p2, p0, Lcom/android/gallery3d/app/FaceMenuOperation$OperationOnClickListener;->mIndex:I

    .line 111
    iput p3, p0, Lcom/android/gallery3d/app/FaceMenuOperation$OperationOnClickListener;->mFaceId:I

    .line 112
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "v"

    .prologue
    .line 115
    iget-object v0, p0, Lcom/android/gallery3d/app/FaceMenuOperation$OperationOnClickListener;->this$0:Lcom/android/gallery3d/app/FaceMenuOperation;

    #getter for: Lcom/android/gallery3d/app/FaceMenuOperation;->mOperationDialog:Landroid/app/AlertDialog;
    invoke-static {v0}, Lcom/android/gallery3d/app/FaceMenuOperation;->access$300(Lcom/android/gallery3d/app/FaceMenuOperation;)Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 116
    iget v0, p0, Lcom/android/gallery3d/app/FaceMenuOperation$OperationOnClickListener;->mIndex:I

    packed-switch v0, :pswitch_data_0

    .line 145
    :goto_0
    return-void

    .line 119
    :pswitch_0
    iget-object v0, p0, Lcom/android/gallery3d/app/FaceMenuOperation$OperationOnClickListener;->this$0:Lcom/android/gallery3d/app/FaceMenuOperation;

    iget v1, p0, Lcom/android/gallery3d/app/FaceMenuOperation$OperationOnClickListener;->mFaceId:I

    #calls: Lcom/android/gallery3d/app/FaceMenuOperation;->setting(I)V
    invoke-static {v0, v1}, Lcom/android/gallery3d/app/FaceMenuOperation;->access$400(Lcom/android/gallery3d/app/FaceMenuOperation;I)V

    goto :goto_0

    .line 122
    :pswitch_1
    iget-object v0, p0, Lcom/android/gallery3d/app/FaceMenuOperation$OperationOnClickListener;->this$0:Lcom/android/gallery3d/app/FaceMenuOperation;

    iget v1, p0, Lcom/android/gallery3d/app/FaceMenuOperation$OperationOnClickListener;->mFaceId:I

    #calls: Lcom/android/gallery3d/app/FaceMenuOperation;->sendMMS(I)V
    invoke-static {v0, v1}, Lcom/android/gallery3d/app/FaceMenuOperation;->access$500(Lcom/android/gallery3d/app/FaceMenuOperation;I)V

    goto :goto_0

    .line 125
    :pswitch_2
    iget-object v0, p0, Lcom/android/gallery3d/app/FaceMenuOperation$OperationOnClickListener;->this$0:Lcom/android/gallery3d/app/FaceMenuOperation;

    iget v1, p0, Lcom/android/gallery3d/app/FaceMenuOperation$OperationOnClickListener;->mFaceId:I

    #calls: Lcom/android/gallery3d/app/FaceMenuOperation;->sendEmail(I)V
    invoke-static {v0, v1}, Lcom/android/gallery3d/app/FaceMenuOperation;->access$600(Lcom/android/gallery3d/app/FaceMenuOperation;I)V

    goto :goto_0

    .line 128
    :pswitch_3
    iget-object v0, p0, Lcom/android/gallery3d/app/FaceMenuOperation$OperationOnClickListener;->this$0:Lcom/android/gallery3d/app/FaceMenuOperation;

    iget v1, p0, Lcom/android/gallery3d/app/FaceMenuOperation$OperationOnClickListener;->mFaceId:I

    #calls: Lcom/android/gallery3d/app/FaceMenuOperation;->faceChangeName(I)V
    invoke-static {v0, v1}, Lcom/android/gallery3d/app/FaceMenuOperation;->access$700(Lcom/android/gallery3d/app/FaceMenuOperation;I)V

    goto :goto_0

    .line 131
    :pswitch_4
    iget-object v0, p0, Lcom/android/gallery3d/app/FaceMenuOperation$OperationOnClickListener;->this$0:Lcom/android/gallery3d/app/FaceMenuOperation;

    iget v1, p0, Lcom/android/gallery3d/app/FaceMenuOperation$OperationOnClickListener;->mFaceId:I

    #calls: Lcom/android/gallery3d/app/FaceMenuOperation;->faceRemoveName(I)V
    invoke-static {v0, v1}, Lcom/android/gallery3d/app/FaceMenuOperation;->access$800(Lcom/android/gallery3d/app/FaceMenuOperation;I)V

    goto :goto_0

    .line 134
    :pswitch_5
    iget-object v0, p0, Lcom/android/gallery3d/app/FaceMenuOperation$OperationOnClickListener;->this$0:Lcom/android/gallery3d/app/FaceMenuOperation;

    iget v1, p0, Lcom/android/gallery3d/app/FaceMenuOperation$OperationOnClickListener;->mFaceId:I

    #calls: Lcom/android/gallery3d/app/FaceMenuOperation;->showContactDetail(I)V
    invoke-static {v0, v1}, Lcom/android/gallery3d/app/FaceMenuOperation;->access$900(Lcom/android/gallery3d/app/FaceMenuOperation;I)V

    goto :goto_0

    .line 137
    :pswitch_6
    iget-object v0, p0, Lcom/android/gallery3d/app/FaceMenuOperation$OperationOnClickListener;->this$0:Lcom/android/gallery3d/app/FaceMenuOperation;

    iget v1, p0, Lcom/android/gallery3d/app/FaceMenuOperation$OperationOnClickListener;->mFaceId:I

    #calls: Lcom/android/gallery3d/app/FaceMenuOperation;->setContactPhoto(I)V
    invoke-static {v0, v1}, Lcom/android/gallery3d/app/FaceMenuOperation;->access$1000(Lcom/android/gallery3d/app/FaceMenuOperation;I)V

    goto :goto_0

    .line 140
    :pswitch_7
    iget-object v0, p0, Lcom/android/gallery3d/app/FaceMenuOperation$OperationOnClickListener;->this$0:Lcom/android/gallery3d/app/FaceMenuOperation;

    iget v1, p0, Lcom/android/gallery3d/app/FaceMenuOperation$OperationOnClickListener;->mFaceId:I

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/app/FaceMenuOperation;->showShareMenu(I)V

    goto :goto_0

    .line 116
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_6
        :pswitch_5
        :pswitch_7
    .end packed-switch
.end method
