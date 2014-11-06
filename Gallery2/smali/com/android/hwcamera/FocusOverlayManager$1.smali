.class Lcom/android/hwcamera/FocusOverlayManager$1;
.super Ljava/lang/Object;
.source "FocusOverlayManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/hwcamera/FocusOverlayManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/hwcamera/FocusOverlayManager;


# direct methods
.method constructor <init>(Lcom/android/hwcamera/FocusOverlayManager;)V
    .locals 0
    .parameter

    .prologue
    .line 159
    iput-object p1, p0, Lcom/android/hwcamera/FocusOverlayManager$1;->this$0:Lcom/android/hwcamera/FocusOverlayManager;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 162
    iget-object v0, p0, Lcom/android/hwcamera/FocusOverlayManager$1;->this$0:Lcom/android/hwcamera/FocusOverlayManager;

    invoke-virtual {v0}, Lcom/android/hwcamera/FocusOverlayManager;->resetTouchFocus()V

    .line 163
    iget-object v0, p0, Lcom/android/hwcamera/FocusOverlayManager$1;->this$0:Lcom/android/hwcamera/FocusOverlayManager;

    invoke-virtual {v0}, Lcom/android/hwcamera/FocusOverlayManager;->updateFocusUI()V

    .line 164
    return-void
.end method
