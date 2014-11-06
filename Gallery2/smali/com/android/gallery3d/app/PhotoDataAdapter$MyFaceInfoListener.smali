.class Lcom/android/gallery3d/app/PhotoDataAdapter$MyFaceInfoListener;
.super Ljava/lang/Object;
.source "PhotoDataAdapter.java"

# interfaces
.implements Lcom/android/gallery3d/data/FaceInfoProcess$FaceInfoListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/gallery3d/app/PhotoDataAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MyFaceInfoListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/gallery3d/app/PhotoDataAdapter;


# direct methods
.method private constructor <init>(Lcom/android/gallery3d/app/PhotoDataAdapter;)V
    .locals 0
    .parameter

    .prologue
    .line 1209
    iput-object p1, p0, Lcom/android/gallery3d/app/PhotoDataAdapter$MyFaceInfoListener;->this$0:Lcom/android/gallery3d/app/PhotoDataAdapter;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/gallery3d/app/PhotoDataAdapter;Lcom/android/gallery3d/app/PhotoDataAdapter$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1209
    invoke-direct {p0, p1}, Lcom/android/gallery3d/app/PhotoDataAdapter$MyFaceInfoListener;-><init>(Lcom/android/gallery3d/app/PhotoDataAdapter;)V

    return-void
.end method


# virtual methods
.method public onFaceInfoGet(I)V
    .locals 4
    .parameter "imageId"

    .prologue
    .line 1211
    iget-object v0, p0, Lcom/android/gallery3d/app/PhotoDataAdapter$MyFaceInfoListener;->this$0:Lcom/android/gallery3d/app/PhotoDataAdapter;

    #getter for: Lcom/android/gallery3d/app/PhotoDataAdapter;->mMainHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/gallery3d/app/PhotoDataAdapter;->access$900(Lcom/android/gallery3d/app/PhotoDataAdapter;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/android/gallery3d/app/PhotoDataAdapter$MyFaceInfoListener;->this$0:Lcom/android/gallery3d/app/PhotoDataAdapter;

    #getter for: Lcom/android/gallery3d/app/PhotoDataAdapter;->mMainHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/android/gallery3d/app/PhotoDataAdapter;->access$900(Lcom/android/gallery3d/app/PhotoDataAdapter;)Landroid/os/Handler;

    move-result-object v1

    const/16 v2, 0x11

    const/4 v3, 0x0

    invoke-virtual {v1, v2, p1, v3}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1212
    return-void
.end method
