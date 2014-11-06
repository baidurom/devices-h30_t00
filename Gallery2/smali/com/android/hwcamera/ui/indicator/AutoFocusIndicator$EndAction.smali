.class Lcom/android/hwcamera/ui/indicator/AutoFocusIndicator$EndAction;
.super Ljava/lang/Object;
.source "AutoFocusIndicator.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/hwcamera/ui/indicator/AutoFocusIndicator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "EndAction"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/hwcamera/ui/indicator/AutoFocusIndicator;


# direct methods
.method private constructor <init>(Lcom/android/hwcamera/ui/indicator/AutoFocusIndicator;)V
    .locals 0
    .parameter

    .prologue
    .line 158
    iput-object p1, p0, Lcom/android/hwcamera/ui/indicator/AutoFocusIndicator$EndAction;->this$0:Lcom/android/hwcamera/ui/indicator/AutoFocusIndicator;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/hwcamera/ui/indicator/AutoFocusIndicator;Lcom/android/hwcamera/ui/indicator/AutoFocusIndicator$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 158
    invoke-direct {p0, p1}, Lcom/android/hwcamera/ui/indicator/AutoFocusIndicator$EndAction;-><init>(Lcom/android/hwcamera/ui/indicator/AutoFocusIndicator;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 162
    iget-object v0, p0, Lcom/android/hwcamera/ui/indicator/AutoFocusIndicator$EndAction;->this$0:Lcom/android/hwcamera/ui/indicator/AutoFocusIndicator;

    iget-object v1, p0, Lcom/android/hwcamera/ui/indicator/AutoFocusIndicator$EndAction;->this$0:Lcom/android/hwcamera/ui/indicator/AutoFocusIndicator;

    #getter for: Lcom/android/hwcamera/ui/indicator/AutoFocusIndicator;->mDisappear:Ljava/lang/Runnable;
    invoke-static {v1}, Lcom/android/hwcamera/ui/indicator/AutoFocusIndicator;->access$400(Lcom/android/hwcamera/ui/indicator/AutoFocusIndicator;)Ljava/lang/Runnable;

    move-result-object v1

    const-wide/16 v2, 0xc8

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/hwcamera/ui/indicator/AutoFocusIndicator;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 163
    return-void
.end method
