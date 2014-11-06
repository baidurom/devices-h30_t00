.class Lcom/android/hwcamera/ui/indicator/AutoFocusIndicator$Disappear;
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
    name = "Disappear"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/hwcamera/ui/indicator/AutoFocusIndicator;


# direct methods
.method private constructor <init>(Lcom/android/hwcamera/ui/indicator/AutoFocusIndicator;)V
    .locals 0
    .parameter

    .prologue
    .line 166
    iput-object p1, p0, Lcom/android/hwcamera/ui/indicator/AutoFocusIndicator$Disappear;->this$0:Lcom/android/hwcamera/ui/indicator/AutoFocusIndicator;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/hwcamera/ui/indicator/AutoFocusIndicator;Lcom/android/hwcamera/ui/indicator/AutoFocusIndicator$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 166
    invoke-direct {p0, p1}, Lcom/android/hwcamera/ui/indicator/AutoFocusIndicator$Disappear;-><init>(Lcom/android/hwcamera/ui/indicator/AutoFocusIndicator;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 169
    iget-object v0, p0, Lcom/android/hwcamera/ui/indicator/AutoFocusIndicator$Disappear;->this$0:Lcom/android/hwcamera/ui/indicator/AutoFocusIndicator;

    #getter for: Lcom/android/hwcamera/ui/RotateLayout;->mChild:Landroid/view/View;
    invoke-static {v0}, Lcom/android/hwcamera/ui/indicator/AutoFocusIndicator;->access$500(Lcom/android/hwcamera/ui/indicator/AutoFocusIndicator;)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 170
    iget-object v0, p0, Lcom/android/hwcamera/ui/indicator/AutoFocusIndicator$Disappear;->this$0:Lcom/android/hwcamera/ui/indicator/AutoFocusIndicator;

    const/4 v1, 0x0

    #setter for: Lcom/android/hwcamera/ui/indicator/AutoFocusIndicator;->mState:I
    invoke-static {v0, v1}, Lcom/android/hwcamera/ui/indicator/AutoFocusIndicator;->access$602(Lcom/android/hwcamera/ui/indicator/AutoFocusIndicator;I)I

    .line 171
    return-void
.end method
