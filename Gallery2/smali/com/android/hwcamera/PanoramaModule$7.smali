.class Lcom/android/hwcamera/PanoramaModule$7;
.super Ljava/lang/Object;
.source "PanoramaModule.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/hwcamera/PanoramaModule;->setViews(Landroid/content/res/Resources;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/hwcamera/PanoramaModule;


# direct methods
.method constructor <init>(Lcom/android/hwcamera/PanoramaModule;)V
    .locals 0
    .parameter

    .prologue
    .line 713
    iput-object p1, p0, Lcom/android/hwcamera/PanoramaModule$7;->this$0:Lcom/android/hwcamera/PanoramaModule;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 716
    iget-object v0, p0, Lcom/android/hwcamera/PanoramaModule$7;->this$0:Lcom/android/hwcamera/PanoramaModule;

    #calls: Lcom/android/hwcamera/PanoramaModule;->switchToCameraMode()Z
    invoke-static {v0}, Lcom/android/hwcamera/PanoramaModule;->access$2200(Lcom/android/hwcamera/PanoramaModule;)Z

    .line 717
    return-void
.end method
