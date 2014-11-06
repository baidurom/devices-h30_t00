.class Lcom/android/hwcamera/PhotoModule$2;
.super Ljava/lang/Object;
.source "PhotoModule.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/hwcamera/PhotoModule;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/hwcamera/PhotoModule;


# direct methods
.method constructor <init>(Lcom/android/hwcamera/PhotoModule;)V
    .locals 0
    .parameter

    .prologue
    .line 365
    iput-object p1, p0, Lcom/android/hwcamera/PhotoModule$2;->this$0:Lcom/android/hwcamera/PhotoModule;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 369
    iget-object v0, p0, Lcom/android/hwcamera/PhotoModule$2;->this$0:Lcom/android/hwcamera/PhotoModule;

    const/4 v1, 0x0

    #setter for: Lcom/android/hwcamera/PhotoModule;->mIsNeedCount:Z
    invoke-static {v0, v1}, Lcom/android/hwcamera/PhotoModule;->access$102(Lcom/android/hwcamera/PhotoModule;Z)Z

    .line 371
    iget-object v0, p0, Lcom/android/hwcamera/PhotoModule$2;->this$0:Lcom/android/hwcamera/PhotoModule;

    invoke-virtual {v0}, Lcom/android/hwcamera/PhotoModule;->onShutterButtonClick()V

    .line 372
    return-void
.end method
