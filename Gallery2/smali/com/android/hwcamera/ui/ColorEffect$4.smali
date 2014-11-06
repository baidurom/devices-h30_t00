.class Lcom/android/hwcamera/ui/ColorEffect$4;
.super Ljava/lang/Object;
.source "ColorEffect.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/hwcamera/ui/ColorEffect;->initHideAndExtendLayout()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/hwcamera/ui/ColorEffect;


# direct methods
.method constructor <init>(Lcom/android/hwcamera/ui/ColorEffect;)V
    .locals 0
    .parameter

    .prologue
    .line 275
    iput-object p1, p0, Lcom/android/hwcamera/ui/ColorEffect$4;->this$0:Lcom/android/hwcamera/ui/ColorEffect;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "v"

    .prologue
    .line 278
    iget-object v0, p0, Lcom/android/hwcamera/ui/ColorEffect$4;->this$0:Lcom/android/hwcamera/ui/ColorEffect;

    #getter for: Lcom/android/hwcamera/ui/ColorEffect;->mColorEffectContent:Landroid/view/View;
    invoke-static {v0}, Lcom/android/hwcamera/ui/ColorEffect;->access$1000(Lcom/android/hwcamera/ui/ColorEffect;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    const/16 v1, 0x8

    if-ne v0, v1, :cond_0

    .line 279
    iget-object v0, p0, Lcom/android/hwcamera/ui/ColorEffect$4;->this$0:Lcom/android/hwcamera/ui/ColorEffect;

    #calls: Lcom/android/hwcamera/ui/ColorEffect;->extendColorEffectContent()V
    invoke-static {v0}, Lcom/android/hwcamera/ui/ColorEffect;->access$1100(Lcom/android/hwcamera/ui/ColorEffect;)V

    .line 283
    :goto_0
    return-void

    .line 281
    :cond_0
    iget-object v0, p0, Lcom/android/hwcamera/ui/ColorEffect$4;->this$0:Lcom/android/hwcamera/ui/ColorEffect;

    #calls: Lcom/android/hwcamera/ui/ColorEffect;->hideColorEffectContent()V
    invoke-static {v0}, Lcom/android/hwcamera/ui/ColorEffect;->access$900(Lcom/android/hwcamera/ui/ColorEffect;)V

    goto :goto_0
.end method
