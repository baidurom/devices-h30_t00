.class Lcom/android/hwcamera/ActivityBase$ScreenOffReceiver;
.super Landroid/content/BroadcastReceiver;
.source "ActivityBase.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/hwcamera/ActivityBase;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ScreenOffReceiver"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 317
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/hwcamera/ActivityBase$1;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 317
    invoke-direct {p0}, Lcom/android/hwcamera/ActivityBase$ScreenOffReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 320
    const/4 v0, 0x1

    invoke-static {v0}, Lcom/android/hwcamera/ActivityBase;->access$202(Z)Z

    .line 321
    return-void
.end method
