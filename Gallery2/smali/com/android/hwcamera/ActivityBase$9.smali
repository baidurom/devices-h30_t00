.class Lcom/android/hwcamera/ActivityBase$9;
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
    .line 309
    iput-object p1, p0, Lcom/android/hwcamera/ActivityBase$9;->this$0:Lcom/android/hwcamera/ActivityBase;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 312
    iget-object v0, p0, Lcom/android/hwcamera/ActivityBase$9;->this$0:Lcom/android/hwcamera/ActivityBase;

    invoke-virtual {v0}, Lcom/android/hwcamera/ActivityBase;->finish()V

    .line 313
    return-void
.end method