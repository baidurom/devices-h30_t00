.class Lcom/android/hwcamera/ui/ColorEffect$1;
.super Ljava/lang/Object;
.source "ColorEffect.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/hwcamera/ui/ColorEffect;-><init>(Lcom/android/hwcamera/CameraActivity;Ljava/util/List;I)V
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
    .line 91
    iput-object p1, p0, Lcom/android/hwcamera/ui/ColorEffect$1;->this$0:Lcom/android/hwcamera/ui/ColorEffect;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 94
    iget-object v0, p0, Lcom/android/hwcamera/ui/ColorEffect$1;->this$0:Lcom/android/hwcamera/ui/ColorEffect;

    #getter for: Lcom/android/hwcamera/ui/ColorEffect;->mActivity:Lcom/android/hwcamera/CameraActivity;
    invoke-static {v0}, Lcom/android/hwcamera/ui/ColorEffect;->access$100(Lcom/android/hwcamera/ui/ColorEffect;)Lcom/android/hwcamera/CameraActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/android/hwcamera/ui/ColorEffect$1;->this$0:Lcom/android/hwcamera/ui/ColorEffect;

    invoke-virtual {v1}, Lcom/android/hwcamera/ui/ColorEffect;->getCurrentColorEffect()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/hwcamera/CameraActivity;->updateColorEffect(Ljava/lang/String;)V

    .line 95
    return-void
.end method
