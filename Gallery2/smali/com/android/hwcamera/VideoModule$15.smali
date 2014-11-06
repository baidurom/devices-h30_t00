.class Lcom/android/hwcamera/VideoModule$15;
.super Ljava/lang/Object;
.source "VideoModule.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/hwcamera/VideoModule;->updateFlashUI(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/hwcamera/VideoModule;

.field final synthetic val$enable:Z


# direct methods
.method constructor <init>(Lcom/android/hwcamera/VideoModule;Z)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 4121
    iput-object p1, p0, Lcom/android/hwcamera/VideoModule$15;->this$0:Lcom/android/hwcamera/VideoModule;

    iput-boolean p2, p0, Lcom/android/hwcamera/VideoModule$15;->val$enable:Z

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 4124
    iget-boolean v0, p0, Lcom/android/hwcamera/VideoModule$15;->val$enable:Z

    if-eqz v0, :cond_0

    .line 4125
    iget-object v0, p0, Lcom/android/hwcamera/VideoModule$15;->this$0:Lcom/android/hwcamera/VideoModule;

    #getter for: Lcom/android/hwcamera/VideoModule;->mMenuController:Lcom/android/hwcamera/settings/MenuController;
    invoke-static {v0}, Lcom/android/hwcamera/VideoModule;->access$4000(Lcom/android/hwcamera/VideoModule;)Lcom/android/hwcamera/settings/MenuController;

    move-result-object v0

    new-array v1, v5, [Ljava/lang/String;

    const-string v2, "pref_camera_flashmode_key"

    aput-object v2, v1, v4

    invoke-virtual {v0, v1}, Lcom/android/hwcamera/settings/MenuController;->clearOverrideSettings([Ljava/lang/String;)V

    .line 4129
    :goto_0
    return-void

    .line 4127
    :cond_0
    iget-object v0, p0, Lcom/android/hwcamera/VideoModule$15;->this$0:Lcom/android/hwcamera/VideoModule;

    #getter for: Lcom/android/hwcamera/VideoModule;->mMenuController:Lcom/android/hwcamera/settings/MenuController;
    invoke-static {v0}, Lcom/android/hwcamera/VideoModule;->access$4000(Lcom/android/hwcamera/VideoModule;)Lcom/android/hwcamera/settings/MenuController;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/hwcamera/VideoModule$15;->val$enable:Z

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    const-string v3, "pref_camera_flashmode_key"

    aput-object v3, v2, v4

    const-string v3, "off"

    aput-object v3, v2, v5

    invoke-virtual {v0, v1, v2}, Lcom/android/hwcamera/settings/MenuController;->overrideSettings(Z[Ljava/lang/String;)V

    goto :goto_0
.end method
