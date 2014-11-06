.class Lcom/android/gallery3d/app/AbstractGalleryActivity$2;
.super Landroid/content/BroadcastReceiver;
.source "AbstractGalleryActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/gallery3d/app/AbstractGalleryActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/gallery3d/app/AbstractGalleryActivity;


# direct methods
.method constructor <init>(Lcom/android/gallery3d/app/AbstractGalleryActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 85
    iput-object p1, p0, Lcom/android/gallery3d/app/AbstractGalleryActivity$2;->this$0:Lcom/android/gallery3d/app/AbstractGalleryActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .parameter "context"
    .parameter "intent"

    .prologue
    const/4 v0, 0x1

    .line 88
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    const-string v3, "android.media.RINGER_MODE_CHANGED"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 89
    iget-object v2, p0, Lcom/android/gallery3d/app/AbstractGalleryActivity$2;->this$0:Lcom/android/gallery3d/app/AbstractGalleryActivity;

    const-string v3, "audio"

    invoke-virtual {v2, v3}, Lcom/android/gallery3d/app/AbstractGalleryActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/media/AudioManager;

    invoke-virtual {v2}, Landroid/media/AudioManager;->getRingerMode()I

    move-result v1

    .line 90
    .local v1, value:I
    if-eq v1, v0, :cond_0

    if-nez v1, :cond_2

    .line 92
    .local v0, isSystemMute:Z
    :cond_0
    :goto_0
    iget-object v2, p0, Lcom/android/gallery3d/app/AbstractGalleryActivity$2;->this$0:Lcom/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v2, v0}, Lcom/android/gallery3d/app/AbstractGalleryActivity;->updateSystemMute(Z)V

    .line 94
    .end local v0           #isSystemMute:Z
    .end local v1           #value:I
    :cond_1
    return-void

    .line 90
    .restart local v1       #value:I
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method
