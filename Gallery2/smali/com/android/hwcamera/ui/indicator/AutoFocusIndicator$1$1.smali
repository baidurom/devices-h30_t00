.class Lcom/android/hwcamera/ui/indicator/AutoFocusIndicator$1$1;
.super Ljava/lang/Object;
.source "AutoFocusIndicator.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/hwcamera/ui/indicator/AutoFocusIndicator$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/hwcamera/ui/indicator/AutoFocusIndicator$1;


# direct methods
.method constructor <init>(Lcom/android/hwcamera/ui/indicator/AutoFocusIndicator$1;)V
    .locals 0
    .parameter

    .prologue
    .line 57
    iput-object p1, p0, Lcom/android/hwcamera/ui/indicator/AutoFocusIndicator$1$1;->this$1:Lcom/android/hwcamera/ui/indicator/AutoFocusIndicator$1;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 60
    iget-object v0, p0, Lcom/android/hwcamera/ui/indicator/AutoFocusIndicator$1$1;->this$1:Lcom/android/hwcamera/ui/indicator/AutoFocusIndicator$1;

    iget-object v0, v0, Lcom/android/hwcamera/ui/indicator/AutoFocusIndicator$1;->this$0:Lcom/android/hwcamera/ui/indicator/AutoFocusIndicator;

    #getter for: Lcom/android/hwcamera/ui/indicator/AutoFocusIndicator;->mFocusingAnimation:Lcom/android/hwcamera/ui/indicator/AutoFocusIndicator$FocusingValueAnimator;
    invoke-static {v0}, Lcom/android/hwcamera/ui/indicator/AutoFocusIndicator;->access$200(Lcom/android/hwcamera/ui/indicator/AutoFocusIndicator;)Lcom/android/hwcamera/ui/indicator/AutoFocusIndicator$FocusingValueAnimator;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/hwcamera/ui/indicator/AutoFocusIndicator$FocusingValueAnimator;->start()V

    .line 61
    return-void
.end method
