.class Lcom/android/hwcamera/feature/shot/callback/BestPhotoService$10;
.super Ljava/lang/Object;
.source "BestPhotoService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/hwcamera/feature/shot/callback/BestPhotoService;->initAlertDailog()V
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
    .line 623
    iput-object p1, p0, Lcom/android/hwcamera/feature/shot/callback/BestPhotoService$10;->this$0:Lcom/android/hwcamera/feature/shot/callback/BestPhotoService;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 625
    iget-object v0, p0, Lcom/android/hwcamera/feature/shot/callback/BestPhotoService$10;->this$0:Lcom/android/hwcamera/feature/shot/callback/BestPhotoService;

    const/4 v1, 0x0

    #setter for: Lcom/android/hwcamera/feature/shot/callback/BestPhotoService;->mAlertDialog:Landroid/app/AlertDialog;
    invoke-static {v0, v1}, Lcom/android/hwcamera/feature/shot/callback/BestPhotoService;->access$2702(Lcom/android/hwcamera/feature/shot/callback/BestPhotoService;Landroid/app/AlertDialog;)Landroid/app/AlertDialog;

    .line 626
    return-void
.end method
