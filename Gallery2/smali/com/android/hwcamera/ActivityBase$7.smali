.class Lcom/android/hwcamera/ActivityBase$7;
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
    .line 259
    iput-object p1, p0, Lcom/android/hwcamera/ActivityBase$7;->this$0:Lcom/android/hwcamera/ActivityBase;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 263
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v3

    const-string v4, "level"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    .line 264
    .local v0, current:I
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v3

    const-string v4, "scale"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    .line 265
    .local v2, total:I
    mul-int/lit8 v3, v0, 0x64

    div-int v1, v3, v2

    .line 266
    .local v1, percent:I
    iget-object v3, p0, Lcom/android/hwcamera/ActivityBase$7;->this$0:Lcom/android/hwcamera/ActivityBase;

    #calls: Lcom/android/hwcamera/ActivityBase;->onBatteryChanged(I)V
    invoke-static {v3, v1}, Lcom/android/hwcamera/ActivityBase;->access$000(Lcom/android/hwcamera/ActivityBase;I)V

    .line 267
    return-void
.end method
