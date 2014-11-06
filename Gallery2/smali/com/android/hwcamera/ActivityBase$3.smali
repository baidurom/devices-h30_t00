.class Lcom/android/hwcamera/ActivityBase$3;
.super Landroid/content/BroadcastReceiver;
.source "ActivityBase.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/hwcamera/ActivityBase;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/hwcamera/ActivityBase;


# direct methods
.method constructor <init>(Lcom/android/hwcamera/ActivityBase;)V
    .locals 0
    .parameter

    .prologue
    .line 176
    iput-object p1, p0, Lcom/android/hwcamera/ActivityBase$3;->this$0:Lcom/android/hwcamera/ActivityBase;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 179
    iget-object v0, p0, Lcom/android/hwcamera/ActivityBase$3;->this$0:Lcom/android/hwcamera/ActivityBase;

    invoke-virtual {v0}, Lcom/android/hwcamera/ActivityBase;->updateStorageSpace()V

    .line 180
    iget-object v0, p0, Lcom/android/hwcamera/ActivityBase$3;->this$0:Lcom/android/hwcamera/ActivityBase;

    invoke-virtual {v0}, Lcom/android/hwcamera/ActivityBase;->updateThumbnail()V

    .line 181
    return-void
.end method
