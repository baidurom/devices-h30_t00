.class Lcom/android/gallery3d/app/CropImage$2;
.super Ljava/lang/Object;
.source "CropImage.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/gallery3d/app/CropImage;->initButton()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/gallery3d/app/CropImage;


# direct methods
.method constructor <init>(Lcom/android/gallery3d/app/CropImage;)V
    .locals 0
    .parameter

    .prologue
    .line 258
    iput-object p1, p0, Lcom/android/gallery3d/app/CropImage$2;->this$0:Lcom/android/gallery3d/app/CropImage;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "arg0"

    .prologue
    .line 261
    iget-object v0, p0, Lcom/android/gallery3d/app/CropImage$2;->this$0:Lcom/android/gallery3d/app/CropImage;

    #calls: Lcom/android/gallery3d/app/CropImage;->onSaveClicked()V
    invoke-static {v0}, Lcom/android/gallery3d/app/CropImage;->access$400(Lcom/android/gallery3d/app/CropImage;)V

    .line 262
    return-void
.end method
