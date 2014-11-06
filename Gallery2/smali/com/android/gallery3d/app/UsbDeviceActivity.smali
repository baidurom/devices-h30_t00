.class public final Lcom/android/gallery3d/app/UsbDeviceActivity;
.super Landroid/app/Activity;
.source "UsbDeviceActivity.java"


# static fields
.field static final TAG:Ljava/lang/String; = "UsbDeviceActivity"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4
    .parameter "savedInstanceState"

    .prologue
    .line 35
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 38
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/android/gallery3d/app/Gallery;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 39
    .local v1, intent:Landroid/content/Intent;
    const/high16 v2, 0x1400

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 41
    :try_start_0
    invoke-virtual {p0, v1}, Lcom/android/gallery3d/app/UsbDeviceActivity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 45
    :goto_0
    invoke-virtual {p0}, Lcom/android/gallery3d/app/UsbDeviceActivity;->finish()V

    .line 46
    return-void

    .line 42
    :catch_0
    move-exception v0

    .line 43
    .local v0, e:Landroid/content/ActivityNotFoundException;
    const-string v2, "UsbDeviceActivity"

    const-string v3, "unable to start Gallery activity"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method
