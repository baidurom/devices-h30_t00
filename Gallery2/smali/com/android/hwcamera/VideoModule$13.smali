.class Lcom/android/hwcamera/VideoModule$13;
.super Ljava/lang/Object;
.source "VideoModule.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/hwcamera/VideoModule;->initRestoreDailog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/hwcamera/VideoModule;


# direct methods
.method constructor <init>(Lcom/android/hwcamera/VideoModule;)V
    .locals 0
    .parameter

    .prologue
    .line 3375
    iput-object p1, p0, Lcom/android/hwcamera/VideoModule$13;->this$0:Lcom/android/hwcamera/VideoModule;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 3377
    iget-object v0, p0, Lcom/android/hwcamera/VideoModule$13;->this$0:Lcom/android/hwcamera/VideoModule;

    #calls: Lcom/android/hwcamera/VideoModule;->restoreDefaults()V
    invoke-static {v0}, Lcom/android/hwcamera/VideoModule;->access$4200(Lcom/android/hwcamera/VideoModule;)V

    .line 3378
    iget-object v0, p0, Lcom/android/hwcamera/VideoModule$13;->this$0:Lcom/android/hwcamera/VideoModule;

    const/4 v1, 0x0

    #setter for: Lcom/android/hwcamera/VideoModule;->mAlertDialog:Landroid/app/AlertDialog;
    invoke-static {v0, v1}, Lcom/android/hwcamera/VideoModule;->access$4102(Lcom/android/hwcamera/VideoModule;Landroid/app/AlertDialog;)Landroid/app/AlertDialog;

    .line 3379
    return-void
.end method
