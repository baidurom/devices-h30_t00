.class Lcom/android/hwcamera/ActivityBase$8;
.super Ljava/lang/Object;
.source "ActivityBase.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/hwcamera/ActivityBase;->processIfCallingOnBatteryChanged(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/hwcamera/ActivityBase;


# direct methods
.method constructor <init>(Lcom/android/hwcamera/ActivityBase;)V
    .locals 0
    .parameter

    .prologue
    .line 279
    iput-object p1, p0, Lcom/android/hwcamera/ActivityBase$8;->this$0:Lcom/android/hwcamera/ActivityBase;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 281
    iget-object v0, p0, Lcom/android/hwcamera/ActivityBase$8;->this$0:Lcom/android/hwcamera/ActivityBase;

    const/4 v1, 0x0

    #setter for: Lcom/android/hwcamera/ActivityBase;->mLowBatteryDialog:Landroid/app/AlertDialog;
    invoke-static {v0, v1}, Lcom/android/hwcamera/ActivityBase;->access$102(Lcom/android/hwcamera/ActivityBase;Landroid/app/AlertDialog;)Landroid/app/AlertDialog;

    .line 282
    iget-object v0, p0, Lcom/android/hwcamera/ActivityBase$8;->this$0:Lcom/android/hwcamera/ActivityBase;

    invoke-virtual {v0}, Lcom/android/hwcamera/ActivityBase;->finish()V

    .line 283
    return-void
.end method
