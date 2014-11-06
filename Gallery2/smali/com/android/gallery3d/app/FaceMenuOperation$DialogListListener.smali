.class Lcom/android/gallery3d/app/FaceMenuOperation$DialogListListener;
.super Ljava/lang/Object;
.source "FaceMenuOperation.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/gallery3d/app/FaceMenuOperation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DialogListListener"
.end annotation


# static fields
.field public static final FUNCTION_LIST:I = 0x3

.field public static final MAKE_CALL:I = 0x0

.field public static final NAME_LIST:I = 0x4

.field public static final SEND_EMAIL:I = 0x1

.field public static final SEND_MMS:I = 0x2


# instance fields
.field private mCommandList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mFaceId:I

.field private mShowNameList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mType:I

.field final synthetic this$0:Lcom/android/gallery3d/app/FaceMenuOperation;


# direct methods
.method public constructor <init>(Lcom/android/gallery3d/app/FaceMenuOperation;Ljava/util/ArrayList;Ljava/util/ArrayList;II)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter "type"
    .parameter "faceId"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;II)V"
        }
    .end annotation

    .prologue
    .line 882
    .local p2, showNames:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .local p3, commands:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    iput-object p1, p0, Lcom/android/gallery3d/app/FaceMenuOperation$DialogListListener;->this$0:Lcom/android/gallery3d/app/FaceMenuOperation;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 883
    iput-object p2, p0, Lcom/android/gallery3d/app/FaceMenuOperation$DialogListListener;->mShowNameList:Ljava/util/ArrayList;

    .line 884
    iput-object p3, p0, Lcom/android/gallery3d/app/FaceMenuOperation$DialogListListener;->mCommandList:Ljava/util/ArrayList;

    .line 885
    iput p4, p0, Lcom/android/gallery3d/app/FaceMenuOperation$DialogListListener;->mType:I

    .line 886
    iput p5, p0, Lcom/android/gallery3d/app/FaceMenuOperation$DialogListListener;->mFaceId:I

    .line 887
    return-void
.end method

.method private functionList(I)V
    .locals 2
    .parameter "commandId"

    .prologue
    .line 848
    sparse-switch p1, :sswitch_data_0

    .line 864
    :goto_0
    return-void

    .line 850
    :sswitch_0
    iget-object v0, p0, Lcom/android/gallery3d/app/FaceMenuOperation$DialogListListener;->this$0:Lcom/android/gallery3d/app/FaceMenuOperation;

    iget v1, p0, Lcom/android/gallery3d/app/FaceMenuOperation$DialogListListener;->mFaceId:I

    #calls: Lcom/android/gallery3d/app/FaceMenuOperation;->faceChangeName(I)V
    invoke-static {v0, v1}, Lcom/android/gallery3d/app/FaceMenuOperation;->access$700(Lcom/android/gallery3d/app/FaceMenuOperation;I)V

    goto :goto_0

    .line 853
    :sswitch_1
    iget-object v0, p0, Lcom/android/gallery3d/app/FaceMenuOperation$DialogListListener;->this$0:Lcom/android/gallery3d/app/FaceMenuOperation;

    iget v1, p0, Lcom/android/gallery3d/app/FaceMenuOperation$DialogListListener;->mFaceId:I

    #calls: Lcom/android/gallery3d/app/FaceMenuOperation;->faceRemoveName(I)V
    invoke-static {v0, v1}, Lcom/android/gallery3d/app/FaceMenuOperation;->access$800(Lcom/android/gallery3d/app/FaceMenuOperation;I)V

    goto :goto_0

    .line 856
    :sswitch_2
    iget-object v0, p0, Lcom/android/gallery3d/app/FaceMenuOperation$DialogListListener;->this$0:Lcom/android/gallery3d/app/FaceMenuOperation;

    iget v1, p0, Lcom/android/gallery3d/app/FaceMenuOperation$DialogListListener;->mFaceId:I

    #calls: Lcom/android/gallery3d/app/FaceMenuOperation;->setContactPhoto(I)V
    invoke-static {v0, v1}, Lcom/android/gallery3d/app/FaceMenuOperation;->access$1000(Lcom/android/gallery3d/app/FaceMenuOperation;I)V

    goto :goto_0

    .line 859
    :sswitch_3
    iget-object v0, p0, Lcom/android/gallery3d/app/FaceMenuOperation$DialogListListener;->this$0:Lcom/android/gallery3d/app/FaceMenuOperation;

    iget v1, p0, Lcom/android/gallery3d/app/FaceMenuOperation$DialogListListener;->mFaceId:I

    #calls: Lcom/android/gallery3d/app/FaceMenuOperation;->showContactDetail(I)V
    invoke-static {v0, v1}, Lcom/android/gallery3d/app/FaceMenuOperation;->access$900(Lcom/android/gallery3d/app/FaceMenuOperation;I)V

    goto :goto_0

    .line 848
    :sswitch_data_0
    .sparse-switch
        0x7f0d0392 -> :sswitch_0
        0x7f0d0393 -> :sswitch_1
        0x7f0d0394 -> :sswitch_3
        0x7f0d046f -> :sswitch_2
    .end sparse-switch
.end method

.method private nameList(I)V
    .locals 4
    .parameter "index"

    .prologue
    .line 868
    iget-object v1, p0, Lcom/android/gallery3d/app/FaceMenuOperation$DialogListListener;->mCommandList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 869
    .local v0, nSize:I
    if-ltz p1, :cond_0

    if-lt p1, v0, :cond_1

    .line 879
    :cond_0
    :goto_0
    return-void

    .line 871
    :cond_1
    add-int/lit8 v1, v0, -0x1

    if-ne p1, v1, :cond_2

    .line 872
    iget-object v1, p0, Lcom/android/gallery3d/app/FaceMenuOperation$DialogListListener;->this$0:Lcom/android/gallery3d/app/FaceMenuOperation;

    iget v2, p0, Lcom/android/gallery3d/app/FaceMenuOperation$DialogListListener;->mFaceId:I

    #calls: Lcom/android/gallery3d/app/FaceMenuOperation;->faceRemoveName(I)V
    invoke-static {v1, v2}, Lcom/android/gallery3d/app/FaceMenuOperation;->access$800(Lcom/android/gallery3d/app/FaceMenuOperation;I)V

    goto :goto_0

    .line 873
    :cond_2
    add-int/lit8 v1, v0, -0x2

    if-ne p1, v1, :cond_3

    .line 874
    iget-object v1, p0, Lcom/android/gallery3d/app/FaceMenuOperation$DialogListListener;->this$0:Lcom/android/gallery3d/app/FaceMenuOperation;

    iget v2, p0, Lcom/android/gallery3d/app/FaceMenuOperation$DialogListListener;->mFaceId:I

    invoke-virtual {v1, v2}, Lcom/android/gallery3d/app/FaceMenuOperation;->startContactActivity(I)V

    goto :goto_0

    .line 876
    :cond_3
    iget-object v2, p0, Lcom/android/gallery3d/app/FaceMenuOperation$DialogListListener;->this$0:Lcom/android/gallery3d/app/FaceMenuOperation;

    iget-object v1, p0, Lcom/android/gallery3d/app/FaceMenuOperation$DialogListListener;->mCommandList:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iget v3, p0, Lcom/android/gallery3d/app/FaceMenuOperation$DialogListListener;->mFaceId:I

    #calls: Lcom/android/gallery3d/app/FaceMenuOperation;->attachSimilarPerson(II)V
    invoke-static {v2, v1, v3}, Lcom/android/gallery3d/app/FaceMenuOperation;->access$100(Lcom/android/gallery3d/app/FaceMenuOperation;II)V

    .line 877
    iget-object v1, p0, Lcom/android/gallery3d/app/FaceMenuOperation$DialogListListener;->this$0:Lcom/android/gallery3d/app/FaceMenuOperation;

    #getter for: Lcom/android/gallery3d/app/FaceMenuOperation;->mPhotoPage:Lcom/android/gallery3d/app/PhotoPage;
    invoke-static {v1}, Lcom/android/gallery3d/app/FaceMenuOperation;->access$200(Lcom/android/gallery3d/app/FaceMenuOperation;)Lcom/android/gallery3d/app/PhotoPage;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/gallery3d/app/PhotoPage;->onActionBarWanted()V

    goto :goto_0
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 815
    packed-switch p2, :pswitch_data_0

    .line 822
    iget-object v1, p0, Lcom/android/gallery3d/app/FaceMenuOperation$DialogListListener;->mShowNameList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 823
    .local v0, size:I
    if-ltz p2, :cond_0

    if-lt p2, v0, :cond_1

    .line 844
    .end local v0           #size:I
    :cond_0
    :goto_0
    :pswitch_0
    return-void

    .line 825
    .restart local v0       #size:I
    :cond_1
    iget v1, p0, Lcom/android/gallery3d/app/FaceMenuOperation$DialogListListener;->mType:I

    packed-switch v1, :pswitch_data_1

    goto :goto_0

    .line 827
    :pswitch_1
    iget-object v2, p0, Lcom/android/gallery3d/app/FaceMenuOperation$DialogListListener;->this$0:Lcom/android/gallery3d/app/FaceMenuOperation;

    iget-object v1, p0, Lcom/android/gallery3d/app/FaceMenuOperation$DialogListListener;->mShowNameList:Ljava/util/ArrayList;

    invoke-virtual {v1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    #calls: Lcom/android/gallery3d/app/FaceMenuOperation;->makeCall(Ljava/lang/String;)V
    invoke-static {v2, v1}, Lcom/android/gallery3d/app/FaceMenuOperation;->access$1100(Lcom/android/gallery3d/app/FaceMenuOperation;Ljava/lang/String;)V

    goto :goto_0

    .line 830
    :pswitch_2
    iget-object v2, p0, Lcom/android/gallery3d/app/FaceMenuOperation$DialogListListener;->this$0:Lcom/android/gallery3d/app/FaceMenuOperation;

    iget-object v1, p0, Lcom/android/gallery3d/app/FaceMenuOperation$DialogListListener;->mShowNameList:Ljava/util/ArrayList;

    invoke-virtual {v1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    #calls: Lcom/android/gallery3d/app/FaceMenuOperation;->sendEmail(Ljava/lang/String;)V
    invoke-static {v2, v1}, Lcom/android/gallery3d/app/FaceMenuOperation;->access$1200(Lcom/android/gallery3d/app/FaceMenuOperation;Ljava/lang/String;)V

    goto :goto_0

    .line 833
    :pswitch_3
    iget-object v2, p0, Lcom/android/gallery3d/app/FaceMenuOperation$DialogListListener;->this$0:Lcom/android/gallery3d/app/FaceMenuOperation;

    iget-object v1, p0, Lcom/android/gallery3d/app/FaceMenuOperation$DialogListListener;->mShowNameList:Ljava/util/ArrayList;

    invoke-virtual {v1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    #calls: Lcom/android/gallery3d/app/FaceMenuOperation;->sendMMS(Ljava/lang/String;)V
    invoke-static {v2, v1}, Lcom/android/gallery3d/app/FaceMenuOperation;->access$1300(Lcom/android/gallery3d/app/FaceMenuOperation;Ljava/lang/String;)V

    goto :goto_0

    .line 836
    :pswitch_4
    iget-object v1, p0, Lcom/android/gallery3d/app/FaceMenuOperation$DialogListListener;->mCommandList:Ljava/util/ArrayList;

    invoke-virtual {v1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-direct {p0, v1}, Lcom/android/gallery3d/app/FaceMenuOperation$DialogListListener;->functionList(I)V

    goto :goto_0

    .line 839
    :pswitch_5
    invoke-direct {p0, p2}, Lcom/android/gallery3d/app/FaceMenuOperation$DialogListListener;->nameList(I)V

    goto :goto_0

    .line 815
    :pswitch_data_0
    .packed-switch -0x2
        :pswitch_0
    .end packed-switch

    .line 825
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method
