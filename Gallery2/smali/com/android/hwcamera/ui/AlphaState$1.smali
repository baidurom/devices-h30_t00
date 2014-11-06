.class Lcom/android/hwcamera/ui/AlphaState$1;
.super Ljava/lang/Object;
.source "AlphaState.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/hwcamera/ui/AlphaState;->onStateChanged()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/hwcamera/ui/AlphaState;


# direct methods
.method constructor <init>(Lcom/android/hwcamera/ui/AlphaState;)V
    .locals 0
    .parameter

    .prologue
    .line 57
    iput-object p1, p0, Lcom/android/hwcamera/ui/AlphaState$1;->this$0:Lcom/android/hwcamera/ui/AlphaState;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 60
    iget-object v0, p0, Lcom/android/hwcamera/ui/AlphaState$1;->this$0:Lcom/android/hwcamera/ui/AlphaState;

    #getter for: Lcom/android/hwcamera/ui/AlphaState;->mView:Landroid/view/View;
    invoke-static {v0}, Lcom/android/hwcamera/ui/AlphaState;->access$000(Lcom/android/hwcamera/ui/AlphaState;)Landroid/view/View;

    move-result-object v0

    const/high16 v1, 0x3f80

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    .line 61
    return-void
.end method
