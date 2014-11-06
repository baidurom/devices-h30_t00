.class Lcom/android/hwcamera/feature/shot/callback/BestPhotoService$7;
.super Ljava/lang/Object;
.source "BestPhotoService.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/hwcamera/feature/shot/callback/BestPhotoService;->prepareBestPhoto()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/hwcamera/feature/shot/callback/BestPhotoService;


# direct methods
.method constructor <init>(Lcom/android/hwcamera/feature/shot/callback/BestPhotoService;)V
    .locals 0
    .parameter

    .prologue
    .line 457
    iput-object p1, p0, Lcom/android/hwcamera/feature/shot/callback/BestPhotoService$7;->this$0:Lcom/android/hwcamera/feature/shot/callback/BestPhotoService;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "arg0"

    .prologue
    .line 460
    iget-object v0, p0, Lcom/android/hwcamera/feature/shot/callback/BestPhotoService$7;->this$0:Lcom/android/hwcamera/feature/shot/callback/BestPhotoService;

    #calls: Lcom/android/hwcamera/feature/shot/callback/BestPhotoService;->saveBestPhoto()V
    invoke-static {v0}, Lcom/android/hwcamera/feature/shot/callback/BestPhotoService;->access$2500(Lcom/android/hwcamera/feature/shot/callback/BestPhotoService;)V

    .line 461
    return-void
.end method
