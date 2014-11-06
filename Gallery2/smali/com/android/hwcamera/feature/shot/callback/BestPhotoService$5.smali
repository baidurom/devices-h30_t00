.class Lcom/android/hwcamera/feature/shot/callback/BestPhotoService$5;
.super Ljava/lang/Object;
.source "BestPhotoService.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


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
    .line 431
    iput-object p1, p0, Lcom/android/hwcamera/feature/shot/callback/BestPhotoService$5;->this$0:Lcom/android/hwcamera/feature/shot/callback/BestPhotoService;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 2
    .parameter "arg0"
    .parameter "arg1"

    .prologue
    const/4 v1, 0x0

    .line 434
    iget-object v0, p0, Lcom/android/hwcamera/feature/shot/callback/BestPhotoService$5;->this$0:Lcom/android/hwcamera/feature/shot/callback/BestPhotoService;

    #calls: Lcom/android/hwcamera/feature/shot/callback/BestPhotoService;->hideSelectPictureLayoutIfImmediately(Z)V
    invoke-static {v0, v1}, Lcom/android/hwcamera/feature/shot/callback/BestPhotoService;->access$1300(Lcom/android/hwcamera/feature/shot/callback/BestPhotoService;Z)V

    .line 435
    return v1
.end method
