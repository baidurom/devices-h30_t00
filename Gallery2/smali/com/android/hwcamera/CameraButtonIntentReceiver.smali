.class public Lcom/android/hwcamera/CameraButtonIntentReceiver;
.super Landroid/content/BroadcastReceiver;
.source "CameraButtonIntentReceiver.java"


# static fields
.field private static final EXTRA_FAST_CAPTURE:Ljava/lang/String; = "android.intent.extra.fastCapture"

.field private static final INSECURE_CAMERA_INTENT:Landroid/content/Intent;

.field private static final SECURE_CAMERA_INTENT:Landroid/content/Intent;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 40
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.media.action.STILL_IMAGE_CAMERA_SECURE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v1, 0x80

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object v0

    sput-object v0, Lcom/android/hwcamera/CameraButtonIntentReceiver;->SECURE_CAMERA_INTENT:Landroid/content/Intent;

    .line 43
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.media.action.STILL_IMAGE_CAMERA"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/hwcamera/CameraButtonIntentReceiver;->INSECURE_CAMERA_INTENT:Landroid/content/Intent;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 38
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 13
    .parameter "context"
    .parameter "intent"

    .prologue
    const/4 v3, 0x1

    const/4 v10, 0x0

    .line 53
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 98
    :cond_0
    :goto_0
    return-void

    .line 54
    :cond_1
    const-string v11, "Camera"

    const-string v12, "we get an intent, and will start camera"

    invoke-static {v11, v12}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 55
    const-string v11, "power"

    invoke-virtual {p1, v11}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/os/PowerManager;

    .line 56
    .local v7, pm:Landroid/os/PowerManager;
    invoke-virtual {v7}, Landroid/os/PowerManager;->isScreenOn()Z

    move-result v11

    if-eqz v11, :cond_0

    .line 57
    const-string v11, "android.intent.extra.fastCapture"

    invoke-virtual {p2, v11, v10}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v11

    if-ne v11, v3, :cond_2

    .line 59
    .local v3, isFastcapture:Z
    :goto_1
    const-string v11, "android.intent.action.START_CAMERA"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_3

    if-nez v3, :cond_3

    .line 60
    const-string v10, "Camera"

    const-string v11, "forbidden under water in emui2.0"

    invoke-static {v10, v11}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .end local v3           #isFastcapture:Z
    :cond_2
    move v3, v10

    .line 57
    goto :goto_1

    .line 64
    .restart local v3       #isFastcapture:Z
    :cond_3
    invoke-static {}, Lcom/android/hwcamera/CameraHolder;->instance()Lcom/android/hwcamera/CameraHolder;

    move-result-object v1

    .line 65
    .local v1, holder:Lcom/android/hwcamera/CameraHolder;
    new-instance v8, Lcom/android/hwcamera/ComboPreferences;

    invoke-direct {v8, p1}, Lcom/android/hwcamera/ComboPreferences;-><init>(Landroid/content/Context;)V

    .line 66
    .local v8, pref:Lcom/android/hwcamera/ComboPreferences;
    if-eqz v3, :cond_4

    move v0, v10

    .line 67
    .local v0, cameraId:I
    :goto_2
    invoke-virtual {v1, v0}, Lcom/android/hwcamera/CameraHolder;->tryOpen(I)Lcom/android/hwcamera/CameraManager$CameraProxy;

    move-result-object v10

    if-nez v10, :cond_5

    .line 68
    const-string v10, "Camera"

    const-string v11, "open camera failed, return"

    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 66
    .end local v0           #cameraId:I
    :cond_4
    invoke-static {v8}, Lcom/android/hwcamera/CameraSettings;->readPreferredCameraId(Landroid/content/SharedPreferences;)I

    move-result v0

    goto :goto_2

    .line 73
    .restart local v0       #cameraId:I
    :cond_5
    invoke-virtual {v1}, Lcom/android/hwcamera/CameraHolder;->keep()V

    .line 74
    invoke-virtual {v1}, Lcom/android/hwcamera/CameraHolder;->release()V

    .line 76
    const-string v10, "vibrator"

    invoke-virtual {p1, v10}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/os/Vibrator;

    .line 77
    .local v9, v:Landroid/os/Vibrator;
    const-wide/16 v10, 0x64

    invoke-virtual {v9, v10, v11}, Landroid/os/Vibrator;->vibrate(J)V

    .line 79
    const-string v10, "keyguard"

    invoke-virtual {p1, v10}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/app/KeyguardManager;

    .line 80
    .local v6, km:Landroid/app/KeyguardManager;
    invoke-virtual {v6}, Landroid/app/KeyguardManager;->inKeyguardRestrictedInputMode()Z

    move-result v4

    .line 81
    .local v4, isKeyguard:Z
    invoke-virtual {v6}, Landroid/app/KeyguardManager;->isKeyguardSecure()Z

    move-result v5

    .line 83
    .local v5, isSecure:Z
    const/4 v2, 0x0

    .line 84
    .local v2, i:Landroid/content/Intent;
    if-eqz v4, :cond_6

    if-eqz v5, :cond_6

    .line 85
    sget-object v2, Lcom/android/hwcamera/CameraButtonIntentReceiver;->SECURE_CAMERA_INTENT:Landroid/content/Intent;

    .line 90
    :goto_3
    const-string v10, "start_by_hardkey_chord"

    const-string v11, "android.intent.action.START_CAMERA"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    invoke-virtual {v2, v10, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 91
    const-string v10, "android.intent.extra.fastCapture"

    invoke-virtual {v2, v10, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 92
    const-string v10, "com.android.gallery3d"

    const-string v11, "com.android.hwcamera"

    invoke-virtual {v2, v10, v11}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 93
    const v10, 0x50808000

    invoke-virtual {v2, v10}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 97
    invoke-virtual {p1, v2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 87
    :cond_6
    sget-object v2, Lcom/android/hwcamera/CameraButtonIntentReceiver;->INSECURE_CAMERA_INTENT:Landroid/content/Intent;

    goto :goto_3
.end method
