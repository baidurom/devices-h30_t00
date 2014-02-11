.class Lcom/android/server/ServerThread;
.super Ljava/lang/Thread;
.source "SystemServer.java"


# static fields
.field private static final ENCRYPTED_STATE:Ljava/lang/String; = "1"

.field private static final ENCRYPTING_STATE:Ljava/lang/String; = "trigger_restart_min_framework"

#the value of this static final field might be set in the static constructor
.field private static final IS_USER_BUILD:Z = false

.field private static final TAG:Ljava/lang/String; = "SystemServer"

.field static mMTPROF_disable:Z


# instance fields
.field mContentResolver:Landroid/content/ContentResolver;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 145
    const-string v0, "user"

    sget-object v1, Landroid/os/Build;->TYPE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "userdebug"

    sget-object v1, Landroid/os/Build;->TYPE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/android/server/ServerThread;->IS_USER_BUILD:Z

    return-void

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method constructor <init>()V
    .locals 0

    .prologue
    .line 139
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method

.method public static addBootEvent(Ljava/lang/String;)V
    .locals 4
    .parameter "bootevent"

    .prologue
    .line 158
    :try_start_0
    sget-boolean v2, Lcom/android/server/ServerThread;->mMTPROF_disable:Z

    if-nez v2, :cond_0

    .line 159
    new-instance v1, Ljava/io/FileOutputStream;

    const-string v2, "/proc/bootprof"

    invoke-direct {v1, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    .line 160
    .local v1, fbp:Ljava/io/FileOutputStream;
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/FileOutputStream;->write([B)V

    .line 161
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->flush()V

    .line 162
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 169
    .end local v1           #fbp:Ljava/io/FileOutputStream;
    :cond_0
    :goto_0
    return-void

    .line 164
    :catch_0
    move-exception v0

    .line 165
    .local v0, e:Ljava/io/FileNotFoundException;
    const-string v2, "BOOTPROF"

    const-string v3, "Failure open /proc/bootprof, not found!"

    invoke-static {v2, v3, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 166
    .end local v0           #e:Ljava/io/FileNotFoundException;
    :catch_1
    move-exception v0

    .line 167
    .local v0, e:Ljava/io/IOException;
    const-string v2, "BOOTPROF"

    const-string v3, "Failure open /proc/bootprof entry"

    invoke-static {v2, v3, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method static final startSystemUi(Landroid/content/Context;)V
    .locals 4
    .parameter "context"

    .prologue
    .line 1373
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 1374
    .local v0, intent:Landroid/content/Intent;
    new-instance v1, Landroid/content/ComponentName;

    const-string v2, "com.android.systemui"

    const-string v3, "com.android.systemui.SystemUIService"

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 1377
    sget-object v1, Landroid/os/UserHandle;->OWNER:Landroid/os/UserHandle;

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->startServiceAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)Landroid/content/ComponentName;

    .line 1378
    return-void
.end method


# virtual methods
.method reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 3
    .parameter "msg"
    .parameter "e"

    .prologue
    .line 151
    const-string v0, "SystemServer"

    const-string v1, "***********************************************"

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 152
    const-string v0, "SystemServer"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "BOOT FAILURE "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p2}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 153
    return-void
.end method

.method public run()V
    .locals 173

    .prologue
    .line 174
    const/16 v7, 0xbc2

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v11

    invoke-static {v7, v11, v12}, Landroid/util/EventLog;->writeEvent(IJ)I

    .line 177
    const-string v7, "1"

    const-string v9, "ro.mtprof.disable"

    invoke-static {v9}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    sput-boolean v7, Lcom/android/server/ServerThread;->mMTPROF_disable:Z

    .line 178
    new-instance v7, Ljava/lang/String;

    const-string v9, "Android:SysServerInit_START"

    invoke-direct {v7, v9}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    invoke-static {v7}, Lcom/android/server/ServerThread;->addBootEvent(Ljava/lang/String;)V

    .line 180
    invoke-static {}, Landroid/os/Looper;->prepareMainLooper()V

    .line 182
    const/4 v7, -0x2

    invoke-static {v7}, Landroid/os/Process;->setThreadPriority(I)V

    .line 185
    const/4 v7, 0x1

    invoke-static {v7}, Lcom/android/internal/os/BinderInternal;->disableBackgroundScheduling(Z)V

    .line 186
    const/4 v7, 0x0

    invoke-static {v7}, Landroid/os/Process;->setCanSelfBackground(Z)V

    .line 190
    const-string v7, "sys.shutdown.requested"

    const-string v9, ""

    invoke-static {v7, v9}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v141

    .line 192
    .local v141, shutdownAction:Ljava/lang/String;
    if-eqz v141, :cond_0

    invoke-virtual/range {v141 .. v141}, Ljava/lang/String;->length()I

    move-result v7

    if-lez v7, :cond_0

    .line 193
    const/4 v7, 0x0

    move-object/from16 v0, v141

    invoke-virtual {v0, v7}, Ljava/lang/String;->charAt(I)C

    move-result v7

    const/16 v9, 0x31

    if-ne v7, v9, :cond_16

    const/16 v134, 0x1

    .line 196
    .local v134, reboot:Z
    :goto_0
    invoke-virtual/range {v141 .. v141}, Ljava/lang/String;->length()I

    move-result v7

    const/4 v9, 0x1

    if-le v7, v9, :cond_17

    .line 197
    const/4 v7, 0x1

    invoke-virtual/range {v141 .. v141}, Ljava/lang/String;->length()I

    move-result v9

    move-object/from16 v0, v141

    invoke-virtual {v0, v7, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v133

    .line 202
    .local v133, reason:Ljava/lang/String;
    :goto_1
    move/from16 v0, v134

    move-object/from16 v1, v133

    invoke-static {v0, v1}, Lcom/android/server/power/ShutdownThread;->rebootOrShutdown(ZLjava/lang/String;)V

    .line 206
    .end local v133           #reason:Ljava/lang/String;
    .end local v134           #reboot:Z
    :cond_0
    const-string v7, "ro.factorytest"

    invoke-static {v7}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v104

    .line 207
    .local v104, factoryTestStr:Ljava/lang/String;
    const-string v7, ""

    move-object/from16 v0, v104

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_18

    const/16 v103, 0x0

    .line 209
    .local v103, factoryTest:I
    :goto_2
    const-string v7, "1"

    const-string v9, "ro.config.headless"

    const-string v11, "0"

    invoke-static {v9, v11}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v33

    .line 211
    .local v33, headless:Z
    const/16 v111, 0x0

    .line 212
    .local v111, installer:Lcom/android/server/pm/Installer;
    const/16 v67, 0x0

    .line 213
    .local v67, accountManager:Landroid/accounts/AccountManagerService;
    const/16 v90, 0x0

    .line 214
    .local v90, contentService:Landroid/content/ContentService;
    const/16 v113, 0x0

    .line 215
    .local v113, lights:Lcom/android/server/LightsService;
    const/16 v132, 0x0

    .line 216
    .local v132, power:Lcom/android/server/power/PowerManagerService;
    const/16 v96, 0x0

    .line 217
    .local v96, display:Lcom/android/server/display/DisplayManagerService;
    const/16 v76, 0x0

    .line 218
    .local v76, battery:Lcom/android/server/BatteryService;
    const/16 v162, 0x0

    .line 219
    .local v162, vibrator:Lcom/android/server/VibratorService;
    const/16 v72, 0x0

    .line 220
    .local v72, alarm:Lcom/android/server/AlarmManagerService;
    const/16 v120, 0x0

    .line 221
    .local v120, mountService:Lcom/android/server/MountService;
    const/16 v30, 0x0

    .line 222
    .local v30, networkManagement:Lcom/android/server/NetworkManagementService;
    const/16 v29, 0x0

    .line 223
    .local v29, networkStats:Lcom/android/server/net/NetworkStatsService;
    const/16 v123, 0x0

    .line 224
    .local v123, networkPolicy:Lcom/android/server/net/NetworkPolicyManagerService;
    const/16 v88, 0x0

    .line 225
    .local v88, connectivity:Lcom/android/server/ConnectivityService;
    const/16 v169, 0x0

    .line 226
    .local v169, wifiP2p:Landroid/net/wifi/p2p/WifiP2pService;
    const/16 v167, 0x0

    .line 227
    .local v167, wifi:Lcom/android/server/WifiService;
    const/16 v140, 0x0

    .line 228
    .local v140, serviceDiscovery:Lcom/android/server/NsdService;
    const/16 v131, 0x0

    .line 229
    .local v131, pm:Landroid/content/pm/IPackageManager;
    const/4 v5, 0x0

    .line 230
    .local v5, context:Landroid/content/Context;
    const/16 v171, 0x0

    .line 232
    .local v171, wm:Lcom/android/server/wm/WindowManagerService;
    const/16 v78, 0x0

    .line 233
    .local v78, bluetooth:Landroid/server/BluetoothService;
    const/16 v80, 0x0

    .line 234
    .local v80, bluetoothA2dp:Landroid/server/BluetoothA2dpService;
    const/16 v83, 0x0

    .line 235
    .local v83, bluetoothSocket:Landroid/server/BluetoothSocketService;
    const/16 v64, 0x0

    .line 236
    .local v64, BluetoothProfileManager:Landroid/server/BluetoothProfileManagerService;
    const/16 v97, 0x0

    .line 237
    .local v97, dock:Lcom/android/server/DockObserver;
    const/16 v160, 0x0

    .line 238
    .local v160, usb:Lcom/android/server/usb/UsbService;
    const/16 v138, 0x0

    .line 239
    .local v138, serial:Lcom/android/server/SerialService;
    const/16 v155, 0x0

    .line 240
    .local v155, twilight:Lcom/android/server/TwilightService;
    const/16 v158, 0x0

    .line 241
    .local v158, uiMode:Lcom/android/server/UiModeManagerService;
    const/16 v135, 0x0

    .line 242
    .local v135, recognition:Lcom/android/server/RecognitionManagerService;
    const/16 v151, 0x0

    .line 243
    .local v151, throttle:Lcom/android/server/ThrottleService;
    const/16 v125, 0x0

    .line 244
    .local v125, networkTimeUpdater:Lcom/android/server/NetworkTimeUpdateService;
    const/16 v85, 0x0

    .line 245
    .local v85, commonTimeMgmtService:Lcom/android/server/CommonTimeManagementService;
    const/16 v110, 0x0

    .line 246
    .local v110, inputManager:Lcom/android/server/input/InputManagerService;
    const/16 v144, 0x0

    .line 248
    .local v144, telephonyRegistry:Lcom/android/server/TelephonyRegistry;
    const/16 v146, 0x0

    .line 249
    .local v146, telephonyRegistry2:Lcom/android/server/TelephonyRegistry;
    const/16 v148, 0x0

    .line 250
    .local v148, telephonyRegistry3:Lcom/android/server/TelephonyRegistry;
    const/16 v149, 0x0

    .line 252
    .local v149, telephonyRegistry4:Lcom/android/server/TelephonyRegistry;
    const/16 v66, 0x0

    .line 255
    .local v66, Ihdmi:Lcom/mediatek/common/hdmi/IHDMIObserver;
    const/16 v105, 0x0

    .line 258
    .local v105, fdm:Lcom/android/server/FrameworkDmService;
    invoke-static {}, Lcom/android/server/HWDataSpaceHolder;->activePlaceFile()V

    .line 266
    new-instance v157, Landroid/os/HandlerThread;

    const-string v7, "UI"

    move-object/from16 v0, v157

    invoke-direct {v0, v7}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 267
    .local v157, uiHandlerThread:Landroid/os/HandlerThread;
    invoke-virtual/range {v157 .. v157}, Landroid/os/HandlerThread;->start()V

    .line 268
    new-instance v20, Landroid/os/Handler;

    invoke-virtual/range {v157 .. v157}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v7

    move-object/from16 v0, v20

    invoke-direct {v0, v7}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 269
    .local v20, uiHandler:Landroid/os/Handler;
    new-instance v7, Lcom/android/server/ServerThread$1;

    move-object/from16 v0, p0

    invoke-direct {v7, v0}, Lcom/android/server/ServerThread$1;-><init>(Lcom/android/server/ServerThread;)V

    move-object/from16 v0, v20

    invoke-virtual {v0, v7}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 286
    new-instance v172, Landroid/os/HandlerThread;

    const-string v7, "WindowManager"

    move-object/from16 v0, v172

    invoke-direct {v0, v7}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 287
    .local v172, wmHandlerThread:Landroid/os/HandlerThread;
    invoke-virtual/range {v172 .. v172}, Landroid/os/HandlerThread;->start()V

    .line 288
    new-instance v21, Landroid/os/Handler;

    invoke-virtual/range {v172 .. v172}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v7

    move-object/from16 v0, v21

    invoke-direct {v0, v7}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 289
    .local v21, wmHandler:Landroid/os/Handler;
    new-instance v7, Lcom/android/server/ServerThread$2;

    move-object/from16 v0, p0

    invoke-direct {v7, v0}, Lcom/android/server/ServerThread$2;-><init>(Lcom/android/server/ServerThread;)V

    move-object/from16 v0, v21

    invoke-virtual {v0, v7}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 306
    const/16 v24, 0x0

    .line 311
    .local v24, onlyCore:Z
    :try_start_0
    const-string v7, "SystemServer"

    const-string v9, "Waiting for installd to be ready."

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 312
    new-instance v112, Lcom/android/server/pm/Installer;

    invoke-direct/range {v112 .. v112}, Lcom/android/server/pm/Installer;-><init>()V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_5f

    .line 313
    .end local v111           #installer:Lcom/android/server/pm/Installer;
    .local v112, installer:Lcom/android/server/pm/Installer;
    :try_start_1
    invoke-virtual/range {v112 .. v112}, Lcom/android/server/pm/Installer;->ping()Z

    .line 316
    sget-boolean v7, Lcom/android/server/ServerThread;->IS_USER_BUILD:Z
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_2

    if-nez v7, :cond_1

    .line 318
    const/16 v122, 0x0

    .line 321
    .local v122, msgMonitorService:Lcom/mediatek/common/msgmonitorservice/IMessageLogger;
    :try_start_2
    const-class v7, Lcom/mediatek/common/msgmonitorservice/IMessageLogger;

    const/4 v9, 0x0

    new-array v9, v9, [Ljava/lang/Object;

    invoke-static {v7, v9}, Lcom/mediatek/common/MediatekClassFactory;->createInstance(Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    move-object v0, v7

    check-cast v0, Lcom/mediatek/common/msgmonitorservice/IMessageLogger;

    move-object/from16 v122, v0

    .line 322
    const-string v7, "SystemServer"

    const-string v9, "Create message monitor service successfully ."

    invoke-static {v7, v9}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_2

    .line 327
    :goto_3
    :try_start_3
    const-string v7, "msgmonitorservice"

    invoke-interface/range {v122 .. v122}, Lcom/mediatek/common/msgmonitorservice/IMessageLogger;->asBinder()Landroid/os/IBinder;

    move-result-object v9

    invoke-static {v7, v9}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_3 .. :try_end_3} :catch_2

    .line 334
    .end local v122           #msgMonitorService:Lcom/mediatek/common/msgmonitorservice/IMessageLogger;
    :cond_1
    :goto_4
    :try_start_4
    const-string v7, "SystemServer"

    const-string v9, "Entropy Mixer"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 335
    const-string v7, "entropy"

    new-instance v9, Lcom/android/server/EntropyMixer;

    invoke-direct {v9}, Lcom/android/server/EntropyMixer;-><init>()V

    invoke-static {v7, v9}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 338
    invoke-static {}, Lcom/android/server/Watchdog;->getInstance()Lcom/android/server/Watchdog;

    .line 340
    const-string v7, "SystemServer"

    const-string v9, "Power Manager"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 341
    new-instance v4, Lcom/android/server/power/PowerManagerService;

    invoke-direct {v4}, Lcom/android/server/power/PowerManagerService;-><init>()V
    :try_end_4
    .catch Ljava/lang/RuntimeException; {:try_start_4 .. :try_end_4} :catch_2

    .line 342
    .end local v132           #power:Lcom/android/server/power/PowerManagerService;
    .local v4, power:Lcom/android/server/power/PowerManagerService;
    :try_start_5
    const-string v7, "power"

    invoke-static {v7, v4}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 344
    const-string v7, "SystemServer"

    const-string v9, "Activity Manager"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 345
    invoke-static/range {v103 .. v103}, Lcom/android/server/am/ActivityManagerService;->main(I)Landroid/content/Context;

    move-result-object v5

    .line 347
    const-string v7, "SystemServer"

    const-string v9, "Display Manager"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 348
    new-instance v10, Lcom/android/server/display/DisplayManagerService;

    move-object/from16 v0, v21

    move-object/from16 v1, v20

    invoke-direct {v10, v5, v0, v1}, Lcom/android/server/display/DisplayManagerService;-><init>(Landroid/content/Context;Landroid/os/Handler;Landroid/os/Handler;)V
    :try_end_5
    .catch Ljava/lang/RuntimeException; {:try_start_5 .. :try_end_5} :catch_60

    .line 349
    .end local v96           #display:Lcom/android/server/display/DisplayManagerService;
    .local v10, display:Lcom/android/server/display/DisplayManagerService;
    :try_start_6
    const-string v7, "display"

    const/4 v9, 0x1

    invoke-static {v7, v10, v9}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;Z)V

    .line 352
    const-string v7, "SystemServer"

    const-string v9, "Telephony Registry"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 354
    sget v7, Lcom/huawei/permission/StubController;->isPermissionManagerPropertyOn:I

    if-nez v7, :cond_19

    .line 355
    new-instance v145, Lcom/android/server/TelephonyRegistry;

    move-object/from16 v0, v145

    invoke-direct {v0, v5}, Lcom/android/server/TelephonyRegistry;-><init>(Landroid/content/Context;)V

    .end local v144           #telephonyRegistry:Lcom/android/server/TelephonyRegistry;
    .local v145, telephonyRegistry:Lcom/android/server/TelephonyRegistry;
    move-object/from16 v144, v145

    .line 362
    .end local v145           #telephonyRegistry:Lcom/android/server/TelephonyRegistry;
    .restart local v144       #telephonyRegistry:Lcom/android/server/TelephonyRegistry;
    :goto_5
    const-string v7, "telephony.registry"

    move-object/from16 v0, v144

    invoke-static {v7, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 363
    const-string v7, "SystemServer"

    const-string v9, "Telephony Registry Phone2"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 364
    new-instance v147, Lcom/android/server/TelephonyRegistry;

    const/4 v7, 0x1

    move-object/from16 v0, v147

    invoke-direct {v0, v5, v7}, Lcom/android/server/TelephonyRegistry;-><init>(Landroid/content/Context;I)V
    :try_end_6
    .catch Ljava/lang/RuntimeException; {:try_start_6 .. :try_end_6} :catch_61

    .line 365
    .end local v146           #telephonyRegistry2:Lcom/android/server/TelephonyRegistry;
    .local v147, telephonyRegistry2:Lcom/android/server/TelephonyRegistry;
    :try_start_7
    const-string v7, "telephony.registry2"

    move-object/from16 v0, v147

    invoke-static {v7, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 381
    const-string v7, "SystemServer"

    const-string v9, "Scheduling Policy"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 382
    const-string v7, "scheduling_policy"

    new-instance v9, Landroid/os/SchedulingPolicyService;

    invoke-direct {v9}, Landroid/os/SchedulingPolicyService;-><init>()V

    invoke-static {v7, v9}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 385
    invoke-static {v5}, Lcom/android/server/AttributeCache;->init(Landroid/content/Context;)V

    .line 387
    invoke-virtual {v10}, Lcom/android/server/display/DisplayManagerService;->waitForDefaultDisplay()Z

    move-result v7

    if-nez v7, :cond_2

    .line 388
    const-string v7, "Timeout waiting for default display to be initialized."

    new-instance v9, Ljava/lang/Throwable;

    invoke-direct {v9}, Ljava/lang/Throwable;-><init>()V

    move-object/from16 v0, p0

    invoke-virtual {v0, v7, v9}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 392
    :cond_2
    const-string v7, "SystemServer"

    const-string v9, "Package Manager"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 394
    const-string v7, "vold.decrypt"

    invoke-static {v7}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v93

    .line 395
    .local v93, cryptState:Ljava/lang/String;
    const-string v7, "trigger_restart_min_framework"

    move-object/from16 v0, v93

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1a

    .line 396
    const-string v7, "SystemServer"

    const-string v9, "Detected encryption in progress - only parsing core apps"

    invoke-static {v7, v9}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 397
    const/16 v24, 0x1

    .line 403
    :cond_3
    :goto_6
    if-eqz v103, :cond_1b

    const/4 v7, 0x1

    :goto_7
    move-object/from16 v0, v112

    move/from16 v1, v24

    invoke-static {v5, v0, v7, v1}, Lcom/android/server/pm/PackageManagerService;->main(Landroid/content/Context;Lcom/android/server/pm/Installer;ZZ)Landroid/content/pm/IPackageManager;
    :try_end_7
    .catch Ljava/lang/RuntimeException; {:try_start_7 .. :try_end_7} :catch_4

    move-result-object v131

    .line 406
    const/16 v107, 0x0

    .line 408
    .local v107, firstBoot:Z
    :try_start_8
    invoke-interface/range {v131 .. v131}, Landroid/content/pm/IPackageManager;->isFirstBoot()Z
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_8 .. :try_end_8} :catch_46
    .catch Ljava/lang/RuntimeException; {:try_start_8 .. :try_end_8} :catch_4

    move-result v107

    .line 412
    :goto_8
    :try_start_9
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->setSystemProcess()V

    .line 414
    const-string v7, "SystemServer"

    const-string v9, "User Service"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 415
    const-string v7, "user"

    invoke-static {}, Lcom/android/server/pm/UserManagerService;->getInstance()Lcom/android/server/pm/UserManagerService;

    move-result-object v9

    invoke-static {v7, v9}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 419
    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    move-object/from16 v0, p0

    iput-object v7, v0, Lcom/android/server/ServerThread;->mContentResolver:Landroid/content/ContentResolver;
    :try_end_9
    .catch Ljava/lang/RuntimeException; {:try_start_9 .. :try_end_9} :catch_4

    .line 423
    :try_start_a
    const-string v7, "SystemServer"

    const-string v9, "Account Manager"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 424
    new-instance v68, Landroid/accounts/AccountManagerService;

    move-object/from16 v0, v68

    invoke-direct {v0, v5}, Landroid/accounts/AccountManagerService;-><init>(Landroid/content/Context;)V
    :try_end_a
    .catch Ljava/lang/Throwable; {:try_start_a .. :try_end_a} :catch_3
    .catch Ljava/lang/RuntimeException; {:try_start_a .. :try_end_a} :catch_4

    .line 425
    .end local v67           #accountManager:Landroid/accounts/AccountManagerService;
    .local v68, accountManager:Landroid/accounts/AccountManagerService;
    :try_start_b
    const-string v7, "account"

    move-object/from16 v0, v68

    invoke-static {v7, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_b
    .catch Ljava/lang/Throwable; {:try_start_b .. :try_end_b} :catch_6b
    .catch Ljava/lang/RuntimeException; {:try_start_b .. :try_end_b} :catch_62

    move-object/from16 v67, v68

    .line 430
    .end local v68           #accountManager:Landroid/accounts/AccountManagerService;
    .restart local v67       #accountManager:Landroid/accounts/AccountManagerService;
    :goto_9
    :try_start_c
    const-string v7, "SystemServer"

    const-string v9, "Content Manager"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 431
    const/4 v7, 0x1

    move/from16 v0, v103

    if-ne v0, v7, :cond_1c

    const/4 v7, 0x1

    :goto_a
    invoke-static {v5, v7}, Landroid/content/ContentService;->main(Landroid/content/Context;Z)Landroid/content/ContentService;

    move-result-object v90

    .line 434
    const-string v7, "SystemServer"

    const-string v9, "System Content Providers"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 435
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->installSystemProviders()V

    .line 437
    const-string v7, "SystemServer"

    const-string v9, "Lights Service"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 438
    new-instance v6, Lcom/android/server/LightsService;

    invoke-direct {v6, v5}, Lcom/android/server/LightsService;-><init>(Landroid/content/Context;)V
    :try_end_c
    .catch Ljava/lang/RuntimeException; {:try_start_c .. :try_end_c} :catch_4

    .line 440
    .end local v113           #lights:Lcom/android/server/LightsService;
    .local v6, lights:Lcom/android/server/LightsService;
    :try_start_d
    const-string v7, "SystemServer"

    const-string v9, "Battery Service"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 441
    new-instance v8, Lcom/android/server/BatteryService;

    invoke-direct {v8, v5, v6}, Lcom/android/server/BatteryService;-><init>(Landroid/content/Context;Lcom/android/server/LightsService;)V
    :try_end_d
    .catch Ljava/lang/RuntimeException; {:try_start_d .. :try_end_d} :catch_63

    .line 442
    .end local v76           #battery:Lcom/android/server/BatteryService;
    .local v8, battery:Lcom/android/server/BatteryService;
    :try_start_e
    const-string v7, "battery"

    invoke-static {v7, v8}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 444
    const-string v7, "SystemServer"

    const-string v9, "Vibrator Service"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 445
    new-instance v163, Lcom/android/server/VibratorService;

    move-object/from16 v0, v163

    invoke-direct {v0, v5}, Lcom/android/server/VibratorService;-><init>(Landroid/content/Context;)V
    :try_end_e
    .catch Ljava/lang/RuntimeException; {:try_start_e .. :try_end_e} :catch_64

    .line 446
    .end local v162           #vibrator:Lcom/android/server/VibratorService;
    .local v163, vibrator:Lcom/android/server/VibratorService;
    :try_start_f
    const-string v7, "vibrator"

    move-object/from16 v0, v163

    invoke-static {v7, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 450
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->self()Lcom/android/server/am/ActivityManagerService;

    move-result-object v7

    invoke-static {}, Lcom/android/server/am/BatteryStatsService;->getService()Lcom/android/internal/app/IBatteryStats;

    move-result-object v9

    invoke-virtual/range {v4 .. v10}, Lcom/android/server/power/PowerManagerService;->init(Landroid/content/Context;Lcom/android/server/LightsService;Lcom/android/server/am/ActivityManagerService;Lcom/android/server/BatteryService;Lcom/android/internal/app/IBatteryStats;Lcom/android/server/display/DisplayManagerService;)V

    .line 453
    const-string v7, "SystemServer"

    const-string v9, "Alarm Manager"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 454
    new-instance v15, Lcom/android/server/AlarmManagerService;

    invoke-direct {v15, v5}, Lcom/android/server/AlarmManagerService;-><init>(Landroid/content/Context;)V
    :try_end_f
    .catch Ljava/lang/RuntimeException; {:try_start_f .. :try_end_f} :catch_65

    .line 455
    .end local v72           #alarm:Lcom/android/server/AlarmManagerService;
    .local v15, alarm:Lcom/android/server/AlarmManagerService;
    :try_start_10
    const-string v7, "alarm"

    invoke-static {v7, v15}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 457
    invoke-static {}, Lcom/android/server/SMCSAMSHelper;->getInstance()Lcom/android/server/SMCSAMSHelper;

    move-result-object v7

    invoke-virtual {v7, v15}, Lcom/android/server/SMCSAMSHelper;->setAlarmService(Lcom/android/server/AlarmManagerService;)V

    .line 460
    const-string v7, "SystemServer"

    const-string v9, "Init Watchdog"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 461
    invoke-static {}, Lcom/android/server/Watchdog;->getInstance()Lcom/android/server/Watchdog;

    move-result-object v11

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->self()Lcom/android/server/am/ActivityManagerService;

    move-result-object v16

    move-object v12, v5

    move-object v13, v8

    move-object v14, v4

    invoke-virtual/range {v11 .. v16}, Lcom/android/server/Watchdog;->init(Landroid/content/Context;Lcom/android/server/BatteryService;Lcom/android/server/power/PowerManagerService;Lcom/android/server/AlarmManagerService;Lcom/android/server/am/ActivityManagerService;)V

    .line 464
    const-string v7, "SystemServer"

    const-string v9, "Input Manager"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 465
    new-instance v19, Lcom/android/server/input/InputManagerService;

    move-object/from16 v0, v19

    move-object/from16 v1, v21

    invoke-direct {v0, v5, v1}, Lcom/android/server/input/InputManagerService;-><init>(Landroid/content/Context;Landroid/os/Handler;)V
    :try_end_10
    .catch Ljava/lang/RuntimeException; {:try_start_10 .. :try_end_10} :catch_66

    .line 467
    .end local v110           #inputManager:Lcom/android/server/input/InputManagerService;
    .local v19, inputManager:Lcom/android/server/input/InputManagerService;
    :try_start_11
    const-string v7, "SystemServer"

    const-string v9, "Window Manager"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 468
    const/4 v7, 0x1

    move/from16 v0, v103

    if-eq v0, v7, :cond_1d

    const/16 v22, 0x1

    :goto_b
    if-nez v107, :cond_1e

    const/16 v23, 0x1

    :goto_c
    move-object/from16 v16, v5

    move-object/from16 v17, v4

    move-object/from16 v18, v10

    invoke-static/range {v16 .. v24}, Lcom/android/server/wm/WindowManagerService;->main(Landroid/content/Context;Lcom/android/server/power/PowerManagerService;Lcom/android/server/display/DisplayManagerService;Lcom/android/server/input/InputManagerService;Landroid/os/Handler;Landroid/os/Handler;ZZZ)Lcom/android/server/wm/WindowManagerService;

    move-result-object v171

    .line 472
    const-string v7, "window"

    move-object/from16 v0, v171

    invoke-static {v7, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 473
    const-string v7, "input"

    move-object/from16 v0, v19

    invoke-static {v7, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 475
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->self()Lcom/android/server/am/ActivityManagerService;

    move-result-object v7

    move-object/from16 v0, v171

    invoke-virtual {v7, v0}, Lcom/android/server/am/ActivityManagerService;->setWindowManager(Lcom/android/server/wm/WindowManagerService;)V

    .line 477
    invoke-virtual/range {v171 .. v171}, Lcom/android/server/wm/WindowManagerService;->getInputMonitor()Lcom/android/server/wm/InputMonitor;

    move-result-object v7

    move-object/from16 v0, v19

    invoke-virtual {v0, v7}, Lcom/android/server/input/InputManagerService;->setWindowManagerCallbacks(Lcom/android/server/input/InputManagerService$WindowManagerCallbacks;)V

    .line 478
    invoke-virtual/range {v19 .. v19}, Lcom/android/server/input/InputManagerService;->start()V

    .line 480
    move-object/from16 v0, v171

    invoke-virtual {v10, v0}, Lcom/android/server/display/DisplayManagerService;->setWindowManager(Lcom/android/server/display/DisplayManagerService$WindowManagerFuncs;)V

    .line 481
    move-object/from16 v0, v19

    invoke-virtual {v10, v0}, Lcom/android/server/display/DisplayManagerService;->setInputManager(Lcom/android/server/display/DisplayManagerService$InputManagerFuncs;)V

    .line 486
    const-string v7, "ro.kernel.qemu"

    invoke-static {v7}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string v9, "1"

    invoke-virtual {v7, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1f

    .line 487
    const-string v7, "SystemServer"

    const-string v9, "No Bluetooh Service (emulator)"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_11
    .catch Ljava/lang/RuntimeException; {:try_start_11 .. :try_end_11} :catch_5

    :goto_d
    invoke-static {v5}, Lcom/baidu/service/YiServiceLoader;->main(Landroid/content/Context;)V
    move-object/from16 v146, v147

    .end local v147           #telephonyRegistry2:Lcom/android/server/TelephonyRegistry;
    .restart local v146       #telephonyRegistry2:Lcom/android/server/TelephonyRegistry;
    move-object/from16 v162, v163

    .end local v163           #vibrator:Lcom/android/server/VibratorService;
    .restart local v162       #vibrator:Lcom/android/server/VibratorService;
    move-object/from16 v111, v112

    .line 540
    .end local v93           #cryptState:Ljava/lang/String;
    .end local v107           #firstBoot:Z
    .end local v112           #installer:Lcom/android/server/pm/Installer;
    .restart local v111       #installer:Lcom/android/server/pm/Installer;
    :goto_e
    const/16 v94, 0x0

    .line 541
    .local v94, devicePolicy:Lcom/android/server/DevicePolicyManagerService;
    const/16 v142, 0x0

    .line 542
    .local v142, statusBar:Lcom/android/server/StatusBarManagerService;
    const/16 v108, 0x0

    .line 543
    .local v108, imm:Lcom/android/server/InputMethodManagerService;
    const/16 v73, 0x0

    .line 544
    .local v73, appWidget:Lcom/android/server/AppWidgetService;
    const/16 v127, 0x0

    .line 545
    .local v127, notification:Lcom/android/server/NotificationManagerService;
    const/16 v165, 0x0

    .line 546
    .local v165, wallpaper:Lcom/android/server/WallpaperManagerService;
    const/16 v114, 0x0

    .line 547
    .local v114, location:Lcom/android/server/LocationManagerService;
    const/16 v91, 0x0

    .line 548
    .local v91, countryDetector:Lcom/android/server/CountryDetectorService;
    const/16 v153, 0x0

    .line 549
    .local v153, tsms:Lcom/android/server/TextServicesManagerService;
    const/16 v116, 0x0

    .line 550
    .local v116, lockSettings:Lcom/android/internal/widget/LockSettingsService;
    const/16 v99, 0x0

    .line 551
    .local v99, dreamy:Lcom/android/server/dreams/DreamManagerService;
    const/16 v150, 0x0

    .line 552
    .local v150, thermalMgr:Lcom/mediatek/common/thermal/MtkThermalSwitchManager;
    const/16 v129, 0x0

    .line 555
    .local v129, perfMgrNotifier:Lcom/android/server/PerfMgrStateNotifier;
    const/4 v7, 0x1

    move/from16 v0, v103

    if-eq v0, v7, :cond_4

    .line 557
    :try_start_12
    const-string v7, "SystemServer"

    const-string v9, "Input Method Service"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 558
    new-instance v109, Lcom/android/server/InputMethodManagerService;

    move-object/from16 v0, v109

    move-object/from16 v1, v171

    invoke-direct {v0, v5, v1}, Lcom/android/server/InputMethodManagerService;-><init>(Landroid/content/Context;Lcom/android/server/wm/WindowManagerService;)V
    :try_end_12
    .catch Ljava/lang/Throwable; {:try_start_12 .. :try_end_12} :catch_6

    .line 559
    .end local v108           #imm:Lcom/android/server/InputMethodManagerService;
    .local v109, imm:Lcom/android/server/InputMethodManagerService;
    :try_start_13
    const-string v7, "input_method"

    move-object/from16 v0, v109

    invoke-static {v7, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_13
    .catch Ljava/lang/Throwable; {:try_start_13 .. :try_end_13} :catch_5e

    move-object/from16 v108, v109

    .line 565
    .end local v109           #imm:Lcom/android/server/InputMethodManagerService;
    .restart local v108       #imm:Lcom/android/server/InputMethodManagerService;
    :goto_f
    :try_start_14
    const-string v7, "SystemServer"

    const-string v9, "Accessibility Manager"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 566
    const-string v7, "accessibility"

    new-instance v9, Lcom/android/server/accessibility/AccessibilityManagerService;

    invoke-direct {v9, v5}, Lcom/android/server/accessibility/AccessibilityManagerService;-><init>(Landroid/content/Context;)V

    invoke-static {v7, v9}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_14
    .catch Ljava/lang/Throwable; {:try_start_14 .. :try_end_14} :catch_7

    .line 574
    :cond_4
    :goto_10
    :try_start_15
    invoke-virtual/range {v171 .. v171}, Lcom/android/server/wm/WindowManagerService;->displayReady()V
    :try_end_15
    .catch Ljava/lang/Throwable; {:try_start_15 .. :try_end_15} :catch_8

    .line 580
    :goto_11
    :try_start_16
    invoke-interface/range {v131 .. v131}, Landroid/content/pm/IPackageManager;->performBootDexOpt()V
    :try_end_16
    .catch Ljava/lang/Throwable; {:try_start_16 .. :try_end_16} :catch_9

    .line 586
    :goto_12
    :try_start_17
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v7

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v11, 0x10403e9

    invoke-virtual {v9, v11}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v9

    const/4 v11, 0x0

    invoke-interface {v7, v9, v11}, Landroid/app/IActivityManager;->showBootMessage(Ljava/lang/CharSequence;Z)V
    :try_end_17
    .catch Landroid/os/RemoteException; {:try_start_17 .. :try_end_17} :catch_5d

    .line 593
    :goto_13
    const/4 v7, 0x1

    move/from16 v0, v103

    if-eq v0, v7, :cond_27

    .line 594
    const-string v7, "0"

    const-string v9, "system_init.startmountservice"

    invoke-static {v9}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_5

    .line 600
    :try_start_18
    const-string v7, "SystemServer"

    const-string v9, "Mount Service"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 601
    new-instance v121, Lcom/android/server/MountService;

    move-object/from16 v0, v121

    invoke-direct {v0, v5}, Lcom/android/server/MountService;-><init>(Landroid/content/Context;)V
    :try_end_18
    .catch Ljava/lang/Throwable; {:try_start_18 .. :try_end_18} :catch_a

    .line 602
    .end local v120           #mountService:Lcom/android/server/MountService;
    .local v121, mountService:Lcom/android/server/MountService;
    :try_start_19
    const-string v7, "mount"

    move-object/from16 v0, v121

    invoke-static {v7, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_19
    .catch Ljava/lang/Throwable; {:try_start_19 .. :try_end_19} :catch_5c

    move-object/from16 v120, v121

    .line 609
    .end local v121           #mountService:Lcom/android/server/MountService;
    .restart local v120       #mountService:Lcom/android/server/MountService;
    :cond_5
    :goto_14
    :try_start_1a
    const-string v7, "SystemServer"

    const-string v9, "LockSettingsService"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 610
    new-instance v117, Lcom/android/internal/widget/LockSettingsService;

    move-object/from16 v0, v117

    invoke-direct {v0, v5}, Lcom/android/internal/widget/LockSettingsService;-><init>(Landroid/content/Context;)V
    :try_end_1a
    .catch Ljava/lang/Throwable; {:try_start_1a .. :try_end_1a} :catch_b

    .line 611
    .end local v116           #lockSettings:Lcom/android/internal/widget/LockSettingsService;
    .local v117, lockSettings:Lcom/android/internal/widget/LockSettingsService;
    :try_start_1b
    const-string v7, "lock_settings"

    move-object/from16 v0, v117

    invoke-static {v7, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_1b
    .catch Ljava/lang/Throwable; {:try_start_1b .. :try_end_1b} :catch_5b

    move-object/from16 v116, v117

    .line 617
    .end local v117           #lockSettings:Lcom/android/internal/widget/LockSettingsService;
    .restart local v116       #lockSettings:Lcom/android/internal/widget/LockSettingsService;
    :goto_15
    :try_start_1c
    const-string v7, "SystemServer"

    const-string v9, "Device Policy"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 618
    new-instance v95, Lcom/android/server/DevicePolicyManagerService;

    move-object/from16 v0, v95

    invoke-direct {v0, v5}, Lcom/android/server/DevicePolicyManagerService;-><init>(Landroid/content/Context;)V
    :try_end_1c
    .catch Ljava/lang/Throwable; {:try_start_1c .. :try_end_1c} :catch_c

    .line 619
    .end local v94           #devicePolicy:Lcom/android/server/DevicePolicyManagerService;
    .local v95, devicePolicy:Lcom/android/server/DevicePolicyManagerService;
    :try_start_1d
    const-string v7, "device_policy"

    move-object/from16 v0, v95

    invoke-static {v7, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_1d
    .catch Ljava/lang/Throwable; {:try_start_1d .. :try_end_1d} :catch_5a

    move-object/from16 v94, v95

    .line 625
    .end local v95           #devicePolicy:Lcom/android/server/DevicePolicyManagerService;
    .restart local v94       #devicePolicy:Lcom/android/server/DevicePolicyManagerService;
    :goto_16
    :try_start_1e
    const-string v7, "SystemServer"

    const-string v9, "Status Bar"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 626
    new-instance v143, Lcom/android/server/StatusBarManagerService;

    move-object/from16 v0, v143

    move-object/from16 v1, v171

    invoke-direct {v0, v5, v1}, Lcom/android/server/StatusBarManagerService;-><init>(Landroid/content/Context;Lcom/android/server/wm/WindowManagerService;)V
    :try_end_1e
    .catch Ljava/lang/Throwable; {:try_start_1e .. :try_end_1e} :catch_d

    .line 627
    .end local v142           #statusBar:Lcom/android/server/StatusBarManagerService;
    .local v143, statusBar:Lcom/android/server/StatusBarManagerService;
    :try_start_1f
    const-string v7, "statusbar"

    move-object/from16 v0, v143

    invoke-static {v7, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_1f
    .catch Ljava/lang/Throwable; {:try_start_1f .. :try_end_1f} :catch_59

    move-object/from16 v142, v143

    .line 633
    .end local v143           #statusBar:Lcom/android/server/StatusBarManagerService;
    .restart local v142       #statusBar:Lcom/android/server/StatusBarManagerService;
    :goto_17
    :try_start_20
    const-string v7, "SystemServer"

    const-string v9, "Clipboard Service"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 634
    const-string v7, "clipboard"

    new-instance v9, Lcom/android/server/ClipboardService;

    invoke-direct {v9, v5}, Lcom/android/server/ClipboardService;-><init>(Landroid/content/Context;)V

    invoke-static {v7, v9}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_20
    .catch Ljava/lang/Throwable; {:try_start_20 .. :try_end_20} :catch_e

    .line 641
    :goto_18
    :try_start_21
    const-string v7, "SystemServer"

    const-string v9, "NetworkManagement Service"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 642
    invoke-static {v5}, Lcom/android/server/NetworkManagementService;->create(Landroid/content/Context;)Lcom/android/server/NetworkManagementService;

    move-result-object v30

    .line 643
    const-string v7, "network_management"

    move-object/from16 v0, v30

    invoke-static {v7, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_21
    .catch Ljava/lang/Throwable; {:try_start_21 .. :try_end_21} :catch_f

    .line 649
    :goto_19
    :try_start_22
    const-string v7, "SystemServer"

    const-string v9, "Text Service Manager Service"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 650
    new-instance v154, Lcom/android/server/TextServicesManagerService;

    move-object/from16 v0, v154

    invoke-direct {v0, v5}, Lcom/android/server/TextServicesManagerService;-><init>(Landroid/content/Context;)V
    :try_end_22
    .catch Ljava/lang/Throwable; {:try_start_22 .. :try_end_22} :catch_10

    .line 651
    .end local v153           #tsms:Lcom/android/server/TextServicesManagerService;
    .local v154, tsms:Lcom/android/server/TextServicesManagerService;
    :try_start_23
    const-string v7, "textservices"

    move-object/from16 v0, v154

    invoke-static {v7, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_23
    .catch Ljava/lang/Throwable; {:try_start_23 .. :try_end_23} :catch_58

    move-object/from16 v153, v154

    .line 657
    .end local v154           #tsms:Lcom/android/server/TextServicesManagerService;
    .restart local v153       #tsms:Lcom/android/server/TextServicesManagerService;
    :goto_1a
    :try_start_24
    const-string v7, "SystemServer"

    const-string v9, "NetworkStats Service"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 658
    new-instance v124, Lcom/android/server/net/NetworkStatsService;

    move-object/from16 v0, v124

    move-object/from16 v1, v30

    invoke-direct {v0, v5, v1, v15}, Lcom/android/server/net/NetworkStatsService;-><init>(Landroid/content/Context;Landroid/os/INetworkManagementService;Landroid/app/IAlarmManager;)V
    :try_end_24
    .catch Ljava/lang/Throwable; {:try_start_24 .. :try_end_24} :catch_11

    .line 659
    .end local v29           #networkStats:Lcom/android/server/net/NetworkStatsService;
    .local v124, networkStats:Lcom/android/server/net/NetworkStatsService;
    :try_start_25
    const-string v7, "netstats"

    move-object/from16 v0, v124

    invoke-static {v7, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_25
    .catch Ljava/lang/Throwable; {:try_start_25 .. :try_end_25} :catch_57

    move-object/from16 v29, v124

    .line 665
    .end local v124           #networkStats:Lcom/android/server/net/NetworkStatsService;
    .restart local v29       #networkStats:Lcom/android/server/net/NetworkStatsService;
    :goto_1b
    :try_start_26
    const-string v7, "SystemServer"

    const-string v9, "NetworkPolicy Service"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 666
    new-instance v25, Lcom/android/server/net/NetworkPolicyManagerService;

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->self()Lcom/android/server/am/ActivityManagerService;

    move-result-object v27

    move-object/from16 v26, v5

    move-object/from16 v28, v4

    invoke-direct/range {v25 .. v30}, Lcom/android/server/net/NetworkPolicyManagerService;-><init>(Landroid/content/Context;Landroid/app/IActivityManager;Landroid/os/IPowerManager;Landroid/net/INetworkStatsService;Landroid/os/INetworkManagementService;)V
    :try_end_26
    .catch Ljava/lang/Throwable; {:try_start_26 .. :try_end_26} :catch_12

    .line 669
    .end local v123           #networkPolicy:Lcom/android/server/net/NetworkPolicyManagerService;
    .local v25, networkPolicy:Lcom/android/server/net/NetworkPolicyManagerService;
    :try_start_27
    const-string v7, "netpolicy"

    move-object/from16 v0, v25

    invoke-static {v7, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_27
    .catch Ljava/lang/Throwable; {:try_start_27 .. :try_end_27} :catch_56

    .line 675
    :goto_1c
    :try_start_28
    const-string v7, "SystemServer"

    const-string v9, "Wi-Fi P2pService"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 676
    new-instance v170, Landroid/net/wifi/p2p/WifiP2pService;

    move-object/from16 v0, v170

    invoke-direct {v0, v5}, Landroid/net/wifi/p2p/WifiP2pService;-><init>(Landroid/content/Context;)V
    :try_end_28
    .catch Ljava/lang/Throwable; {:try_start_28 .. :try_end_28} :catch_13

    .line 677
    .end local v169           #wifiP2p:Landroid/net/wifi/p2p/WifiP2pService;
    .local v170, wifiP2p:Landroid/net/wifi/p2p/WifiP2pService;
    :try_start_29
    const-string v7, "wifip2p"

    move-object/from16 v0, v170

    invoke-static {v7, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_29
    .catch Ljava/lang/Throwable; {:try_start_29 .. :try_end_29} :catch_55

    move-object/from16 v169, v170

    .line 683
    .end local v170           #wifiP2p:Landroid/net/wifi/p2p/WifiP2pService;
    .restart local v169       #wifiP2p:Landroid/net/wifi/p2p/WifiP2pService;
    :goto_1d
    :try_start_2a
    const-string v7, "SystemServer"

    const-string v9, "Wi-Fi Service"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 684
    new-instance v168, Lcom/android/server/WifiService;

    move-object/from16 v0, v168

    invoke-direct {v0, v5}, Lcom/android/server/WifiService;-><init>(Landroid/content/Context;)V
    :try_end_2a
    .catch Ljava/lang/Throwable; {:try_start_2a .. :try_end_2a} :catch_14

    .line 685
    .end local v167           #wifi:Lcom/android/server/WifiService;
    .local v168, wifi:Lcom/android/server/WifiService;
    :try_start_2b
    const-string v7, "wifi"

    move-object/from16 v0, v168

    invoke-static {v7, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_2b
    .catch Ljava/lang/Throwable; {:try_start_2b .. :try_end_2b} :catch_54

    move-object/from16 v167, v168

    .line 691
    .end local v168           #wifi:Lcom/android/server/WifiService;
    .restart local v167       #wifi:Lcom/android/server/WifiService;
    :goto_1e
    :try_start_2c
    const-string v7, "SystemServer"

    const-string v9, "Connectivity Service"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 692
    new-instance v89, Lcom/android/server/ConnectivityService;

    move-object/from16 v0, v89

    move-object/from16 v1, v30

    move-object/from16 v2, v29

    move-object/from16 v3, v25

    invoke-direct {v0, v5, v1, v2, v3}, Lcom/android/server/ConnectivityService;-><init>(Landroid/content/Context;Landroid/os/INetworkManagementService;Landroid/net/INetworkStatsService;Landroid/net/INetworkPolicyManager;)V
    :try_end_2c
    .catch Ljava/lang/Throwable; {:try_start_2c .. :try_end_2c} :catch_15

    .line 694
    .end local v88           #connectivity:Lcom/android/server/ConnectivityService;
    .local v89, connectivity:Lcom/android/server/ConnectivityService;
    :try_start_2d
    const-string v7, "connectivity"

    move-object/from16 v0, v89

    invoke-static {v7, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 695
    move-object/from16 v0, v29

    move-object/from16 v1, v89

    invoke-virtual {v0, v1}, Lcom/android/server/net/NetworkStatsService;->bindConnectivityManager(Landroid/net/IConnectivityManager;)V

    .line 696
    move-object/from16 v0, v25

    move-object/from16 v1, v89

    invoke-virtual {v0, v1}, Lcom/android/server/net/NetworkPolicyManagerService;->bindConnectivityManager(Landroid/net/IConnectivityManager;)V

    .line 697
    invoke-virtual/range {v167 .. v167}, Lcom/android/server/WifiService;->checkAndStartWifi()V

    .line 698
    invoke-virtual/range {v169 .. v169}, Landroid/net/wifi/p2p/WifiP2pService;->connectivityServiceReady()V
    :try_end_2d
    .catch Ljava/lang/Throwable; {:try_start_2d .. :try_end_2d} :catch_53

    move-object/from16 v88, v89

    .line 704
    .end local v89           #connectivity:Lcom/android/server/ConnectivityService;
    .restart local v88       #connectivity:Lcom/android/server/ConnectivityService;
    :goto_1f
    :try_start_2e
    const-string v7, "SystemServer"

    const-string v9, "Network Service Discovery Service"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 705
    invoke-static {v5}, Lcom/android/server/NsdService;->create(Landroid/content/Context;)Lcom/android/server/NsdService;

    move-result-object v140

    .line 706
    const-string v7, "servicediscovery"

    move-object/from16 v0, v140

    invoke-static {v7, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_2e
    .catch Ljava/lang/Throwable; {:try_start_2e .. :try_end_2e} :catch_16

    .line 713
    :goto_20
    :try_start_2f
    const-string v7, "SystemServer"

    const-string v9, "Throttle Service"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 714
    new-instance v152, Lcom/android/server/ThrottleService;

    move-object/from16 v0, v152

    invoke-direct {v0, v5}, Lcom/android/server/ThrottleService;-><init>(Landroid/content/Context;)V
    :try_end_2f
    .catch Ljava/lang/Throwable; {:try_start_2f .. :try_end_2f} :catch_17

    .line 715
    .end local v151           #throttle:Lcom/android/server/ThrottleService;
    .local v152, throttle:Lcom/android/server/ThrottleService;
    :try_start_30
    const-string v7, "throttle"

    move-object/from16 v0, v152

    invoke-static {v7, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_30
    .catch Ljava/lang/Throwable; {:try_start_30 .. :try_end_30} :catch_52

    move-object/from16 v151, v152

    .line 722
    .end local v152           #throttle:Lcom/android/server/ThrottleService;
    .restart local v151       #throttle:Lcom/android/server/ThrottleService;
    :goto_21
    :try_start_31
    const-string v7, "SystemServer"

    const-string v9, "UpdateLock Service"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 723
    const-string v7, "updatelock"

    new-instance v9, Lcom/android/server/UpdateLockService;

    invoke-direct {v9, v5}, Lcom/android/server/UpdateLockService;-><init>(Landroid/content/Context;)V

    invoke-static {v7, v9}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_31
    .catch Ljava/lang/Throwable; {:try_start_31 .. :try_end_31} :catch_18

    .line 734
    :goto_22
    if-eqz v120, :cond_6

    .line 735
    invoke-virtual/range {v120 .. v120}, Lcom/android/server/MountService;->waitForAsecScan()V

    .line 739
    :cond_6
    if-eqz v67, :cond_7

    .line 740
    :try_start_32
    invoke-virtual/range {v67 .. v67}, Landroid/accounts/AccountManagerService;->systemReady()V
    :try_end_32
    .catch Ljava/lang/Throwable; {:try_start_32 .. :try_end_32} :catch_19

    .line 746
    :cond_7
    :goto_23
    if-eqz v90, :cond_8

    .line 747
    :try_start_33
    invoke-virtual/range {v90 .. v90}, Landroid/content/ContentService;->systemReady()V
    :try_end_33
    .catch Ljava/lang/Throwable; {:try_start_33 .. :try_end_33} :catch_1a

    .line 753
    :cond_8
    :goto_24
    :try_start_34
    const-string v7, "SystemServer"

    const-string v9, "Notification Manager"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 754
    new-instance v128, Lcom/android/server/NotificationManagerService;

    move-object/from16 v0, v128

    move-object/from16 v1, v142

    invoke-direct {v0, v5, v1, v6}, Lcom/android/server/NotificationManagerService;-><init>(Landroid/content/Context;Lcom/android/server/StatusBarManagerService;Lcom/android/server/LightsService;)V
    :try_end_34
    .catch Ljava/lang/Throwable; {:try_start_34 .. :try_end_34} :catch_1b

    .line 755
    .end local v127           #notification:Lcom/android/server/NotificationManagerService;
    .local v128, notification:Lcom/android/server/NotificationManagerService;
    :try_start_35
    const-string v7, "notification"

    move-object/from16 v0, v128

    invoke-static {v7, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 756
    move-object/from16 v0, v25

    move-object/from16 v1, v128

    invoke-virtual {v0, v1}, Lcom/android/server/net/NetworkPolicyManagerService;->bindNotificationManager(Landroid/app/INotificationManager;)V
    :try_end_35
    .catch Ljava/lang/Throwable; {:try_start_35 .. :try_end_35} :catch_51

    move-object/from16 v127, v128

    .line 762
    .end local v128           #notification:Lcom/android/server/NotificationManagerService;
    .restart local v127       #notification:Lcom/android/server/NotificationManagerService;
    :goto_25
    :try_start_36
    const-string v7, "SystemServer"

    const-string v9, "Device Storage Monitor"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 763
    const-string v7, "devicestoragemonitor"

    new-instance v9, Lcom/android/server/DeviceStorageMonitorService;

    invoke-direct {v9, v5}, Lcom/android/server/DeviceStorageMonitorService;-><init>(Landroid/content/Context;)V

    invoke-static {v7, v9}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_36
    .catch Ljava/lang/Throwable; {:try_start_36 .. :try_end_36} :catch_1c

    .line 770
    :goto_26
    :try_start_37
    const-string v7, "SystemServer"

    const-string v9, "Location Manager"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 771
    new-instance v115, Lcom/android/server/LocationManagerService;

    move-object/from16 v0, v115

    invoke-direct {v0, v5}, Lcom/android/server/LocationManagerService;-><init>(Landroid/content/Context;)V
    :try_end_37
    .catch Ljava/lang/Throwable; {:try_start_37 .. :try_end_37} :catch_1d

    .line 772
    .end local v114           #location:Lcom/android/server/LocationManagerService;
    .local v115, location:Lcom/android/server/LocationManagerService;
    :try_start_38
    const-string v7, "location"

    move-object/from16 v0, v115

    invoke-static {v7, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_38
    .catch Ljava/lang/Throwable; {:try_start_38 .. :try_end_38} :catch_50

    move-object/from16 v114, v115

    .line 778
    .end local v115           #location:Lcom/android/server/LocationManagerService;
    .restart local v114       #location:Lcom/android/server/LocationManagerService;
    :goto_27
    :try_start_39
    const-string v7, "SystemServer"

    const-string v9, "Country Detector"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 779
    new-instance v92, Lcom/android/server/CountryDetectorService;

    move-object/from16 v0, v92

    invoke-direct {v0, v5}, Lcom/android/server/CountryDetectorService;-><init>(Landroid/content/Context;)V
    :try_end_39
    .catch Ljava/lang/Throwable; {:try_start_39 .. :try_end_39} :catch_1e

    .line 780
    .end local v91           #countryDetector:Lcom/android/server/CountryDetectorService;
    .local v92, countryDetector:Lcom/android/server/CountryDetectorService;
    :try_start_3a
    const-string v7, "country_detector"

    move-object/from16 v0, v92

    invoke-static {v7, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_3a
    .catch Ljava/lang/Throwable; {:try_start_3a .. :try_end_3a} :catch_4f

    move-object/from16 v91, v92

    .line 786
    .end local v92           #countryDetector:Lcom/android/server/CountryDetectorService;
    .restart local v91       #countryDetector:Lcom/android/server/CountryDetectorService;
    :goto_28
    :try_start_3b
    const-string v7, "SystemServer"

    const-string v9, "Search Service"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 787
    const-string v7, "search"

    new-instance v9, Landroid/server/search/SearchManagerService;

    invoke-direct {v9, v5}, Landroid/server/search/SearchManagerService;-><init>(Landroid/content/Context;)V

    invoke-static {v7, v9}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_3b
    .catch Ljava/lang/Throwable; {:try_start_3b .. :try_end_3b} :catch_1f

    .line 795
    :goto_29
    :try_start_3c
    const-string v7, "SystemServer"

    const-string v9, "Search Engine Service"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3c
    .catch Ljava/lang/Throwable; {:try_start_3c .. :try_end_3c} :catch_21

    .line 796
    const/16 v137, 0x0

    .line 798
    .local v137, searchEngineService:Lcom/mediatek/common/search/ISearchEngineManagerService;
    :try_start_3d
    const-class v7, Lcom/mediatek/common/search/ISearchEngineManagerService;

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v11, 0x0

    aput-object v5, v9, v11

    invoke-static {v7, v9}, Lcom/mediatek/common/MediatekClassFactory;->createInstance(Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    move-object v0, v7

    check-cast v0, Lcom/mediatek/common/search/ISearchEngineManagerService;

    move-object/from16 v137, v0
    :try_end_3d
    .catch Ljava/lang/Exception; {:try_start_3d .. :try_end_3d} :catch_20
    .catch Ljava/lang/Throwable; {:try_start_3d .. :try_end_3d} :catch_21

    .line 804
    :goto_2a
    if-eqz v137, :cond_9

    .line 805
    :try_start_3e
    const-string v7, "search_engine"

    invoke-interface/range {v137 .. v137}, Lcom/mediatek/common/search/ISearchEngineManagerService;->asBinder()Landroid/os/IBinder;

    move-result-object v9

    invoke-static {v7, v9}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_3e
    .catch Ljava/lang/Throwable; {:try_start_3e .. :try_end_3e} :catch_21

    .line 814
    .end local v137           #searchEngineService:Lcom/mediatek/common/search/ISearchEngineManagerService;
    :cond_9
    :goto_2b
    :try_start_3f
    const-string v7, "SystemServer"

    const-string v9, "DropBox Service"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 815
    const-string v7, "dropbox"

    new-instance v9, Lcom/android/server/DropBoxManagerService;

    new-instance v11, Ljava/io/File;

    const-string v12, "/data/system/dropbox"

    invoke-direct {v11, v12}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v9, v5, v11}, Lcom/android/server/DropBoxManagerService;-><init>(Landroid/content/Context;Ljava/io/File;)V

    invoke-static {v7, v9}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_3f
    .catch Ljava/lang/Throwable; {:try_start_3f .. :try_end_3f} :catch_22

    .line 821
    :goto_2c
    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v9, 0x111002b

    invoke-virtual {v7, v9}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v7

    if-eqz v7, :cond_a

    .line 824
    :try_start_40
    const-string v7, "SystemServer"

    const-string v9, "Wallpaper Service"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 825
    if-nez v33, :cond_a

    .line 826
    new-instance v166, Lcom/android/server/WallpaperManagerService;

    move-object/from16 v0, v166

    invoke-direct {v0, v5}, Lcom/android/server/WallpaperManagerService;-><init>(Landroid/content/Context;)V
    :try_end_40
    .catch Ljava/lang/Throwable; {:try_start_40 .. :try_end_40} :catch_23

    .line 827
    .end local v165           #wallpaper:Lcom/android/server/WallpaperManagerService;
    .local v166, wallpaper:Lcom/android/server/WallpaperManagerService;
    :try_start_41
    const-string v7, "wallpaper"

    move-object/from16 v0, v166

    invoke-static {v7, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_41
    .catch Ljava/lang/Throwable; {:try_start_41 .. :try_end_41} :catch_4e

    move-object/from16 v165, v166

    .line 834
    .end local v166           #wallpaper:Lcom/android/server/WallpaperManagerService;
    .restart local v165       #wallpaper:Lcom/android/server/WallpaperManagerService;
    :cond_a
    :goto_2d
    const-string v7, "0"

    const-string v9, "system_init.startaudioservice"

    invoke-static {v9}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_b

    .line 836
    :try_start_42
    const-string v7, "SystemServer"

    const-string v9, "Audio Service"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 837
    const-string v7, "audio"

    new-instance v9, Landroid/media/AudioService;

    invoke-direct {v9, v5}, Landroid/media/AudioService;-><init>(Landroid/content/Context;)V

    invoke-static {v7, v9}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_42
    .catch Ljava/lang/Throwable; {:try_start_42 .. :try_end_42} :catch_24

    .line 847
    :cond_b
    :goto_2e
    const/16 v75, 0x0

    .line 849
    .local v75, audioProfileService:Lcom/mediatek/common/audioprofile/IAudioProfileService;
    :try_start_43
    const-string v7, "SystemServer"

    const-string v9, "AudioProfile Service"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 850
    const-class v7, Lcom/mediatek/common/audioprofile/IAudioProfileService;

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v11, 0x0

    aput-object v5, v9, v11

    invoke-static {v7, v9}, Lcom/mediatek/common/MediatekClassFactory;->createInstance(Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    move-object v0, v7

    check-cast v0, Lcom/mediatek/common/audioprofile/IAudioProfileService;

    move-object/from16 v75, v0
    :try_end_43
    .catch Ljava/lang/Exception; {:try_start_43 .. :try_end_43} :catch_25
    .catch Ljava/lang/Throwable; {:try_start_43 .. :try_end_43} :catch_26

    .line 854
    :goto_2f
    :try_start_44
    const-string v7, "SystemServer"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "audioProfileService = "

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    move-object/from16 v0, v75

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v7, v9}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 855
    if-eqz v75, :cond_c

    .line 856
    const-string v7, "audioprofile"

    invoke-interface/range {v75 .. v75}, Lcom/mediatek/common/audioprofile/IAudioProfileService;->asBinder()Landroid/os/IBinder;

    move-result-object v9

    invoke-static {v7, v9}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_44
    .catch Ljava/lang/Throwable; {:try_start_44 .. :try_end_44} :catch_26

    .line 866
    :cond_c
    :goto_30
    :try_start_45
    const-string v7, "SystemServer"

    const-string v9, "Dock Observer"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 868
    new-instance v98, Lcom/android/server/DockObserver;

    move-object/from16 v0, v98

    invoke-direct {v0, v5}, Lcom/android/server/DockObserver;-><init>(Landroid/content/Context;)V
    :try_end_45
    .catch Ljava/lang/Throwable; {:try_start_45 .. :try_end_45} :catch_27

    .end local v97           #dock:Lcom/android/server/DockObserver;
    .local v98, dock:Lcom/android/server/DockObserver;
    move-object/from16 v97, v98

    .line 874
    .end local v98           #dock:Lcom/android/server/DockObserver;
    .restart local v97       #dock:Lcom/android/server/DockObserver;
    :goto_31
    :try_start_46
    const-string v7, "SystemServer"

    const-string v9, "Wired Accessory Manager"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 876
    new-instance v7, Lcom/android/server/WiredAccessoryManager;

    move-object/from16 v0, v19

    invoke-direct {v7, v5, v0}, Lcom/android/server/WiredAccessoryManager;-><init>(Landroid/content/Context;Lcom/android/server/input/InputManagerService;)V

    move-object/from16 v0, v19

    invoke-virtual {v0, v7}, Lcom/android/server/input/InputManagerService;->setWiredAccessoryCallbacks(Lcom/android/server/input/InputManagerService$WiredAccessoryCallbacks;)V
    :try_end_46
    .catch Ljava/lang/Throwable; {:try_start_46 .. :try_end_46} :catch_28

    .line 883
    :goto_32
    :try_start_47
    const-string v7, "SystemServer"

    const-string v9, "USB Service"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 885
    new-instance v161, Lcom/android/server/usb/UsbService;

    move-object/from16 v0, v161

    invoke-direct {v0, v5}, Lcom/android/server/usb/UsbService;-><init>(Landroid/content/Context;)V
    :try_end_47
    .catch Ljava/lang/Throwable; {:try_start_47 .. :try_end_47} :catch_29

    .line 886
    .end local v160           #usb:Lcom/android/server/usb/UsbService;
    .local v161, usb:Lcom/android/server/usb/UsbService;
    :try_start_48
    const-string v7, "usb"

    move-object/from16 v0, v161

    invoke-static {v7, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_48
    .catch Ljava/lang/Throwable; {:try_start_48 .. :try_end_48} :catch_4d

    move-object/from16 v160, v161

    .line 892
    .end local v161           #usb:Lcom/android/server/usb/UsbService;
    .restart local v160       #usb:Lcom/android/server/usb/UsbService;
    :goto_33
    :try_start_49
    const-string v7, "SystemServer"

    const-string v9, "Serial Service"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 894
    new-instance v139, Lcom/android/server/SerialService;

    move-object/from16 v0, v139

    invoke-direct {v0, v5}, Lcom/android/server/SerialService;-><init>(Landroid/content/Context;)V
    :try_end_49
    .catch Ljava/lang/Throwable; {:try_start_49 .. :try_end_49} :catch_2a

    .line 895
    .end local v138           #serial:Lcom/android/server/SerialService;
    .local v139, serial:Lcom/android/server/SerialService;
    :try_start_4a
    const-string v7, "serial"

    move-object/from16 v0, v139

    invoke-static {v7, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_4a
    .catch Ljava/lang/Throwable; {:try_start_4a .. :try_end_4a} :catch_4c

    move-object/from16 v138, v139

    .line 901
    .end local v139           #serial:Lcom/android/server/SerialService;
    .restart local v138       #serial:Lcom/android/server/SerialService;
    :goto_34
    :try_start_4b
    const-string v7, "SystemServer"

    const-string v9, "Twilight Service"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 902
    new-instance v156, Lcom/android/server/TwilightService;

    move-object/from16 v0, v156

    invoke-direct {v0, v5}, Lcom/android/server/TwilightService;-><init>(Landroid/content/Context;)V
    :try_end_4b
    .catch Ljava/lang/Throwable; {:try_start_4b .. :try_end_4b} :catch_2b

    .end local v155           #twilight:Lcom/android/server/TwilightService;
    .local v156, twilight:Lcom/android/server/TwilightService;
    move-object/from16 v155, v156

    .line 908
    .end local v156           #twilight:Lcom/android/server/TwilightService;
    .restart local v155       #twilight:Lcom/android/server/TwilightService;
    :goto_35
    :try_start_4c
    const-string v7, "SystemServer"

    const-string v9, "UI Mode Manager Service"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 910
    new-instance v159, Lcom/android/server/UiModeManagerService;

    move-object/from16 v0, v159

    move-object/from16 v1, v155

    invoke-direct {v0, v5, v1}, Lcom/android/server/UiModeManagerService;-><init>(Landroid/content/Context;Lcom/android/server/TwilightService;)V
    :try_end_4c
    .catch Ljava/lang/Throwable; {:try_start_4c .. :try_end_4c} :catch_2c

    .end local v158           #uiMode:Lcom/android/server/UiModeManagerService;
    .local v159, uiMode:Lcom/android/server/UiModeManagerService;
    move-object/from16 v158, v159

    .line 916
    .end local v159           #uiMode:Lcom/android/server/UiModeManagerService;
    .restart local v158       #uiMode:Lcom/android/server/UiModeManagerService;
    :goto_36
    :try_start_4d
    const-string v7, "SystemServer"

    const-string v9, "Backup Service"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 917
    const-string v7, "backup"

    new-instance v9, Lcom/android/server/BackupManagerService;

    invoke-direct {v9, v5}, Lcom/android/server/BackupManagerService;-><init>(Landroid/content/Context;)V

    invoke-static {v7, v9}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_4d
    .catch Ljava/lang/Throwable; {:try_start_4d .. :try_end_4d} :catch_2d

    .line 924
    :goto_37
    :try_start_4e
    const-string v7, "SystemServer"

    const-string v9, "AppWidget Service"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 925
    new-instance v74, Lcom/android/server/AppWidgetService;

    move-object/from16 v0, v74

    invoke-direct {v0, v5}, Lcom/android/server/AppWidgetService;-><init>(Landroid/content/Context;)V
    :try_end_4e
    .catch Ljava/lang/Throwable; {:try_start_4e .. :try_end_4e} :catch_2e

    .line 926
    .end local v73           #appWidget:Lcom/android/server/AppWidgetService;
    .local v74, appWidget:Lcom/android/server/AppWidgetService;
    :try_start_4f
    const-string v7, "appwidget"

    move-object/from16 v0, v74

    invoke-static {v7, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_4f
    .catch Ljava/lang/Throwable; {:try_start_4f .. :try_end_4f} :catch_4b

    move-object/from16 v73, v74

    .line 932
    .end local v74           #appWidget:Lcom/android/server/AppWidgetService;
    .restart local v73       #appWidget:Lcom/android/server/AppWidgetService;
    :goto_38
    :try_start_50
    const-string v7, "SystemServer"

    const-string v9, "Recognition Service"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 933
    new-instance v136, Lcom/android/server/RecognitionManagerService;

    move-object/from16 v0, v136

    invoke-direct {v0, v5}, Lcom/android/server/RecognitionManagerService;-><init>(Landroid/content/Context;)V
    :try_end_50
    .catch Ljava/lang/Throwable; {:try_start_50 .. :try_end_50} :catch_2f

    .end local v135           #recognition:Lcom/android/server/RecognitionManagerService;
    .local v136, recognition:Lcom/android/server/RecognitionManagerService;
    move-object/from16 v135, v136

    .line 942
    .end local v136           #recognition:Lcom/android/server/RecognitionManagerService;
    .restart local v135       #recognition:Lcom/android/server/RecognitionManagerService;
    :goto_39
    const/16 v70, 0x0

    .line 944
    .local v70, agpsMgr:Lcom/mediatek/common/agps/IMtkAgpsManager;
    :try_start_51
    const-class v7, Lcom/mediatek/common/agps/IMtkAgpsManager;

    const/4 v9, 0x4

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v11, 0x0

    aput-object v5, v9, v11

    const/4 v11, 0x1

    const/4 v12, 0x1

    invoke-static {v12}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v12

    aput-object v12, v9, v11

    const/4 v11, 0x2

    const/4 v12, 0x1

    invoke-static {v12}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v12

    aput-object v12, v9, v11

    const/4 v11, 0x3

    const/4 v12, 0x1

    invoke-static {v12}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v12

    aput-object v12, v9, v11

    invoke-static {v7, v9}, Lcom/mediatek/common/MediatekClassFactory;->createInstance(Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    move-object v0, v7

    check-cast v0, Lcom/mediatek/common/agps/IMtkAgpsManager;

    move-object/from16 v70, v0
    :try_end_51
    .catch Ljava/lang/Exception; {:try_start_51 .. :try_end_51} :catch_30
    .catch Ljava/lang/Throwable; {:try_start_51 .. :try_end_51} :catch_31

    .line 949
    :goto_3a
    :try_start_52
    const-string v7, "hugo_app"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "agpsMgr="

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    move-object/from16 v0, v70

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v7, v9}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 950
    if-eqz v70, :cond_d

    .line 951
    const-string v7, "mtk-agps"

    invoke-interface/range {v70 .. v70}, Lcom/mediatek/common/agps/IMtkAgpsManager;->asBinder()Landroid/os/IBinder;

    move-result-object v9

    invoke-static {v7, v9}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_52
    .catch Ljava/lang/Throwable; {:try_start_52 .. :try_end_52} :catch_31

    .line 960
    :cond_d
    :goto_3b
    const/16 v102, 0x0

    .line 962
    .local v102, epoMgr:Lcom/mediatek/common/epo/IMtkEpoClientManager;
    :try_start_53
    const-class v7, Lcom/mediatek/common/epo/IMtkEpoClientManager;

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v11, 0x0

    aput-object v5, v9, v11

    invoke-static {v7, v9}, Lcom/mediatek/common/MediatekClassFactory;->createInstance(Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    move-object v0, v7

    check-cast v0, Lcom/mediatek/common/epo/IMtkEpoClientManager;

    move-object/from16 v102, v0
    :try_end_53
    .catch Ljava/lang/Exception; {:try_start_53 .. :try_end_53} :catch_32
    .catch Ljava/lang/Throwable; {:try_start_53 .. :try_end_53} :catch_33

    .line 966
    :goto_3c
    :try_start_54
    const-string v7, "hugo_app"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "epoMgr="

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    move-object/from16 v0, v102

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v7, v9}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 967
    if-eqz v102, :cond_e

    .line 968
    const-string v7, "mtk-epo-client"

    invoke-interface/range {v102 .. v102}, Lcom/mediatek/common/epo/IMtkEpoClientManager;->asBinder()Landroid/os/IBinder;

    move-result-object v9

    invoke-static {v7, v9}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_54
    .catch Ljava/lang/Throwable; {:try_start_54 .. :try_end_54} :catch_33

    .line 977
    :cond_e
    :goto_3d
    const-string v7, "true"

    const-string v9, "ro.config.hw_eapsim"

    const-string v11, "false"

    invoke-static {v9, v11}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_f

    .line 979
    :try_start_55
    const-string v7, "SystemServer"

    const-string v9, "Smartcard System Service"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 980
    const-string v7, "smartcardservice"

    new-instance v9, Lcom/android/server/SmartcardSystemService;

    invoke-direct {v9, v5}, Lcom/android/server/SmartcardSystemService;-><init>(Landroid/content/Context;)V

    invoke-static {v7, v9}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_55
    .catch Ljava/lang/Throwable; {:try_start_55 .. :try_end_55} :catch_34

    .line 989
    :cond_f
    :goto_3e
    :try_start_56
    const-string v7, "SystemServer"

    const-string v9, "DiskStats Service"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 990
    const-string v7, "diskstats"

    new-instance v9, Lcom/android/server/DiskStatsService;

    invoke-direct {v9, v5}, Lcom/android/server/DiskStatsService;-><init>(Landroid/content/Context;)V

    invoke-static {v7, v9}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_56
    .catch Ljava/lang/Throwable; {:try_start_56 .. :try_end_56} :catch_35

    .line 1000
    :goto_3f
    :try_start_57
    const-string v7, "SystemServer"

    const-string v9, "SamplingProfiler Service"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1001
    const-string v7, "samplingprofiler"

    new-instance v9, Lcom/android/server/SamplingProfilerService;

    invoke-direct {v9, v5}, Lcom/android/server/SamplingProfilerService;-><init>(Landroid/content/Context;)V

    invoke-static {v7, v9}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_57
    .catch Ljava/lang/Throwable; {:try_start_57 .. :try_end_57} :catch_36

    .line 1008
    :goto_40
    :try_start_58
    const-string v7, "SystemServer"

    const-string v9, "HDMI Observer"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1010
    const-class v7, Lcom/mediatek/common/hdmi/IHDMIObserver;

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v11, 0x0

    aput-object v5, v9, v11

    invoke-static {v7, v9}, Lcom/mediatek/common/MediatekClassFactory;->createInstance(Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    move-object v0, v7

    check-cast v0, Lcom/mediatek/common/hdmi/IHDMIObserver;

    move-object/from16 v66, v0
    :try_end_58
    .catch Ljava/lang/Throwable; {:try_start_58 .. :try_end_58} :catch_37

    .line 1017
    :goto_41
    :try_start_59
    const-string v7, "SystemServer"

    const-string v9, "NetworkTimeUpdateService"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1018
    new-instance v126, Lcom/android/server/NetworkTimeUpdateService;

    move-object/from16 v0, v126

    invoke-direct {v0, v5}, Lcom/android/server/NetworkTimeUpdateService;-><init>(Landroid/content/Context;)V
    :try_end_59
    .catch Ljava/lang/Throwable; {:try_start_59 .. :try_end_59} :catch_38

    .end local v125           #networkTimeUpdater:Lcom/android/server/NetworkTimeUpdateService;
    .local v126, networkTimeUpdater:Lcom/android/server/NetworkTimeUpdateService;
    move-object/from16 v125, v126

    .line 1024
    .end local v126           #networkTimeUpdater:Lcom/android/server/NetworkTimeUpdateService;
    .restart local v125       #networkTimeUpdater:Lcom/android/server/NetworkTimeUpdateService;
    :goto_42
    :try_start_5a
    const-string v7, "SystemServer"

    const-string v9, "CommonTimeManagementService"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1025
    new-instance v86, Lcom/android/server/CommonTimeManagementService;

    move-object/from16 v0, v86

    invoke-direct {v0, v5}, Lcom/android/server/CommonTimeManagementService;-><init>(Landroid/content/Context;)V
    :try_end_5a
    .catch Ljava/lang/Throwable; {:try_start_5a .. :try_end_5a} :catch_39

    .line 1026
    .end local v85           #commonTimeMgmtService:Lcom/android/server/CommonTimeManagementService;
    .local v86, commonTimeMgmtService:Lcom/android/server/CommonTimeManagementService;
    :try_start_5b
    const-string v7, "commontime_management"

    move-object/from16 v0, v86

    invoke-static {v7, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_5b
    .catch Ljava/lang/Throwable; {:try_start_5b .. :try_end_5b} :catch_4a

    move-object/from16 v85, v86

    .line 1032
    .end local v86           #commonTimeMgmtService:Lcom/android/server/CommonTimeManagementService;
    .restart local v85       #commonTimeMgmtService:Lcom/android/server/CommonTimeManagementService;
    :goto_43
    :try_start_5c
    const-string v7, "SystemServer"

    const-string v9, "CertBlacklister"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1033
    new-instance v7, Lcom/android/server/CertBlacklister;

    invoke-direct {v7, v5}, Lcom/android/server/CertBlacklister;-><init>(Landroid/content/Context;)V
    :try_end_5c
    .catch Ljava/lang/Throwable; {:try_start_5c .. :try_end_5c} :catch_3a

    .line 1038
    :goto_44
    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v9, 0x111003f

    invoke-virtual {v7, v9}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v7

    if-eqz v7, :cond_10

    .line 1041
    :try_start_5d
    const-string v7, "SystemServer"

    const-string v9, "Dreams Service"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1043
    new-instance v100, Lcom/android/server/dreams/DreamManagerService;

    move-object/from16 v0, v100

    move-object/from16 v1, v21

    invoke-direct {v0, v5, v1}, Lcom/android/server/dreams/DreamManagerService;-><init>(Landroid/content/Context;Landroid/os/Handler;)V
    :try_end_5d
    .catch Ljava/lang/Throwable; {:try_start_5d .. :try_end_5d} :catch_3b

    .line 1044
    .end local v99           #dreamy:Lcom/android/server/dreams/DreamManagerService;
    .local v100, dreamy:Lcom/android/server/dreams/DreamManagerService;
    :try_start_5e
    const-string v7, "dreams"

    move-object/from16 v0, v100

    invoke-static {v7, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_5e
    .catch Ljava/lang/Throwable; {:try_start_5e .. :try_end_5e} :catch_49

    move-object/from16 v99, v100

    .line 1063
    .end local v100           #dreamy:Lcom/android/server/dreams/DreamManagerService;
    .restart local v99       #dreamy:Lcom/android/server/dreams/DreamManagerService;
    :cond_10
    :goto_45
    :try_start_5f
    const-string v7, "SystemServer"

    const-string v9, "PerfMgr state notifier"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1064
    new-instance v130, Lcom/android/server/PerfMgrStateNotifier;

    invoke-direct/range {v130 .. v130}, Lcom/android/server/PerfMgrStateNotifier;-><init>()V
    :try_end_5f
    .catch Ljava/lang/Throwable; {:try_start_5f .. :try_end_5f} :catch_3c

    .line 1065
    .end local v129           #perfMgrNotifier:Lcom/android/server/PerfMgrStateNotifier;
    .local v130, perfMgrNotifier:Lcom/android/server/PerfMgrStateNotifier;
    :try_start_60
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->self()Lcom/android/server/am/ActivityManagerService;

    move-result-object v7

    move-object/from16 v0, v130

    invoke-virtual {v7, v0}, Lcom/android/server/am/ActivityManagerService;->registerActivityStateNotifier(Lcom/android/server/am/IActivityStateNotifier;)V
    :try_end_60
    .catch Ljava/lang/Throwable; {:try_start_60 .. :try_end_60} :catch_48

    move-object/from16 v129, v130

    .line 1074
    .end local v70           #agpsMgr:Lcom/mediatek/common/agps/IMtkAgpsManager;
    .end local v75           #audioProfileService:Lcom/mediatek/common/audioprofile/IAudioProfileService;
    .end local v102           #epoMgr:Lcom/mediatek/common/epo/IMtkEpoClientManager;
    .end local v130           #perfMgrNotifier:Lcom/android/server/PerfMgrStateNotifier;
    .restart local v129       #perfMgrNotifier:Lcom/android/server/PerfMgrStateNotifier;
    :goto_46
    invoke-virtual/range {v171 .. v171}, Lcom/android/server/wm/WindowManagerService;->detectSafeMode()Z

    move-result v47

    .line 1075
    .local v47, safeMode:Z
    if-eqz v47, :cond_23

    .line 1076
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->self()Lcom/android/server/am/ActivityManagerService;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/server/am/ActivityManagerService;->enterSafeMode()V

    .line 1078
    const/4 v7, 0x1

    sput-boolean v7, Ldalvik/system/Zygote;->systemInSafeMode:Z

    .line 1080
    invoke-static {}, Ldalvik/system/VMRuntime;->getRuntime()Ldalvik/system/VMRuntime;

    move-result-object v7

    invoke-virtual {v7}, Ldalvik/system/VMRuntime;->disableJitCompilation()V

    .line 1091
    :goto_47
    if-eqz v162, :cond_11

    .line 1092
    :try_start_61
    invoke-virtual/range {v162 .. v162}, Lcom/android/server/VibratorService;->systemReady()V
    :try_end_61
    .catch Ljava/lang/Throwable; {:try_start_61 .. :try_end_61} :catch_3d

    .line 1100
    :cond_11
    :goto_48
    :try_start_62
    invoke-virtual/range {v116 .. v116}, Lcom/android/internal/widget/LockSettingsService;->systemReady()V
    :try_end_62
    .catch Ljava/lang/Throwable; {:try_start_62 .. :try_end_62} :catch_3e

    .line 1105
    :goto_49
    if-eqz v94, :cond_12

    .line 1107
    :try_start_63
    invoke-virtual/range {v94 .. v94}, Lcom/android/server/DevicePolicyManagerService;->systemReady()V
    :try_end_63
    .catch Ljava/lang/Throwable; {:try_start_63 .. :try_end_63} :catch_3f

    .line 1113
    :cond_12
    :goto_4a
    if-eqz v127, :cond_13

    .line 1115
    :try_start_64
    invoke-virtual/range {v127 .. v127}, Lcom/android/server/NotificationManagerService;->systemReady()V
    :try_end_64
    .catch Ljava/lang/Throwable; {:try_start_64 .. :try_end_64} :catch_40

    .line 1122
    :cond_13
    :goto_4b
    :try_start_65
    invoke-virtual/range {v171 .. v171}, Lcom/android/server/wm/WindowManagerService;->systemReady()V
    :try_end_65
    .catch Ljava/lang/Throwable; {:try_start_65 .. :try_end_65} :catch_41

    .line 1127
    :goto_4c
    if-eqz v47, :cond_14

    .line 1128
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->self()Lcom/android/server/am/ActivityManagerService;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/server/am/ActivityManagerService;->showSafeModeOverlay()V

    .line 1134
    :cond_14
    invoke-virtual/range {v171 .. v171}, Lcom/android/server/wm/WindowManagerService;->computeNewConfiguration()Landroid/content/res/Configuration;

    move-result-object v87

    .line 1135
    .local v87, config:Landroid/content/res/Configuration;
    new-instance v119, Landroid/util/DisplayMetrics;

    invoke-direct/range {v119 .. v119}, Landroid/util/DisplayMetrics;-><init>()V

    .line 1136
    .local v119, metrics:Landroid/util/DisplayMetrics;
    const-string v7, "window"

    invoke-virtual {v5, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v164

    check-cast v164, Landroid/view/WindowManager;

    .line 1137
    .local v164, w:Landroid/view/WindowManager;
    invoke-interface/range {v164 .. v164}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v7

    move-object/from16 v0, v119

    invoke-virtual {v7, v0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 1138
    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    move-object/from16 v0, v87

    move-object/from16 v1, v119

    invoke-virtual {v7, v0, v1}, Landroid/content/res/Resources;->updateConfiguration(Landroid/content/res/Configuration;Landroid/util/DisplayMetrics;)V

    .line 1141
    :try_start_66
    move-object/from16 v0, v155

    move-object/from16 v1, v99

    invoke-virtual {v4, v0, v1}, Lcom/android/server/power/PowerManagerService;->systemReady(Lcom/android/server/TwilightService;Lcom/android/server/dreams/DreamManagerService;)V
    :try_end_66
    .catch Ljava/lang/Throwable; {:try_start_66 .. :try_end_66} :catch_42

    .line 1147
    :goto_4d
    :try_start_67
    invoke-interface/range {v131 .. v131}, Landroid/content/pm/IPackageManager;->systemReady()V
    :try_end_67
    .catch Ljava/lang/Throwable; {:try_start_67 .. :try_end_67} :catch_43

    .line 1153
    :goto_4e
    :try_start_68
    move/from16 v0, v47

    move/from16 v1, v24

    invoke-virtual {v10, v0, v1}, Lcom/android/server/display/DisplayManagerService;->systemReady(ZZ)V
    :try_end_68
    .catch Ljava/lang/Throwable; {:try_start_68 .. :try_end_68} :catch_44

    .line 1159
    :goto_4f
    move-object/from16 v34, v5

    .line 1160
    .local v34, contextF:Landroid/content/Context;
    move-object/from16 v35, v120

    .line 1161
    .local v35, mountServiceF:Lcom/android/server/MountService;
    move-object/from16 v36, v8

    .line 1162
    .local v36, batteryF:Lcom/android/server/BatteryService;
    move-object/from16 v37, v30

    .line 1163
    .local v37, networkManagementF:Lcom/android/server/NetworkManagementService;
    move-object/from16 v38, v29

    .line 1164
    .local v38, networkStatsF:Lcom/android/server/net/NetworkStatsService;
    move-object/from16 v39, v25

    .line 1165
    .local v39, networkPolicyF:Lcom/android/server/net/NetworkPolicyManagerService;
    move-object/from16 v40, v88

    .line 1166
    .local v40, connectivityF:Lcom/android/server/ConnectivityService;
    move-object/from16 v41, v97

    .line 1167
    .local v41, dockF:Lcom/android/server/DockObserver;
    move-object/from16 v42, v160

    .line 1168
    .local v42, usbF:Lcom/android/server/usb/UsbService;
    move-object/from16 v53, v151

    .line 1169
    .local v53, throttleF:Lcom/android/server/ThrottleService;
    move-object/from16 v43, v155

    .line 1170
    .local v43, twilightF:Lcom/android/server/TwilightService;
    move-object/from16 v44, v158

    .line 1171
    .local v44, uiModeF:Lcom/android/server/UiModeManagerService;
    move-object/from16 v46, v73

    .line 1172
    .local v46, appWidgetF:Lcom/android/server/AppWidgetService;
    move-object/from16 v48, v165

    .line 1173
    .local v48, wallpaperF:Lcom/android/server/WallpaperManagerService;
    move-object/from16 v49, v108

    .line 1174
    .local v49, immF:Lcom/android/server/InputMethodManagerService;
    move-object/from16 v45, v135

    .line 1175
    .local v45, recognitionF:Lcom/android/server/RecognitionManagerService;
    move-object/from16 v51, v114

    .line 1176
    .local v51, locationF:Lcom/android/server/LocationManagerService;
    move-object/from16 v52, v91

    .line 1177
    .local v52, countryDetectorF:Lcom/android/server/CountryDetectorService;
    move-object/from16 v54, v125

    .line 1178
    .local v54, networkTimeUpdaterF:Lcom/android/server/NetworkTimeUpdateService;
    move-object/from16 v55, v85

    .line 1179
    .local v55, commonTimeMgmtServiceF:Lcom/android/server/CommonTimeManagementService;
    move-object/from16 v56, v153

    .line 1180
    .local v56, textServiceManagerServiceF:Lcom/android/server/TextServicesManagerService;
    move-object/from16 v50, v142

    .line 1181
    .local v50, statusBarF:Lcom/android/server/StatusBarManagerService;
    move-object/from16 v57, v99

    .line 1182
    .local v57, dreamyF:Lcom/android/server/dreams/DreamManagerService;
    move-object/from16 v58, v19

    .line 1183
    .local v58, inputManagerF:Lcom/android/server/input/InputManagerService;
    move-object/from16 v59, v144

    .line 1185
    .local v59, telephonyRegistryF:Lcom/android/server/TelephonyRegistry;
    move-object/from16 v60, v146

    .line 1186
    .local v60, telephonyRegistryF2:Lcom/android/server/TelephonyRegistry;
    move-object/from16 v61, v148

    .line 1187
    .local v61, telephonyRegistryF3:Ljava/lang/Object;
    move-object/from16 v62, v149

    .line 1189
    .local v62, telephonyRegistryF4:Ljava/lang/Object;
    move-object/from16 v63, v150

    .line 1196
    .local v63, thermalF:Ljava/lang/Object;
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->self()Lcom/android/server/am/ActivityManagerService;

    move-result-object v7

    new-instance v31, Lcom/android/server/ServerThread$3;

    move-object/from16 v32, p0

    invoke-direct/range {v31 .. v63}, Lcom/android/server/ServerThread$3;-><init>(Lcom/android/server/ServerThread;ZLandroid/content/Context;Lcom/android/server/MountService;Lcom/android/server/BatteryService;Lcom/android/server/NetworkManagementService;Lcom/android/server/net/NetworkStatsService;Lcom/android/server/net/NetworkPolicyManagerService;Lcom/android/server/ConnectivityService;Lcom/android/server/DockObserver;Lcom/android/server/usb/UsbService;Lcom/android/server/TwilightService;Lcom/android/server/UiModeManagerService;Lcom/android/server/RecognitionManagerService;Lcom/android/server/AppWidgetService;ZLcom/android/server/WallpaperManagerService;Lcom/android/server/InputMethodManagerService;Lcom/android/server/StatusBarManagerService;Lcom/android/server/LocationManagerService;Lcom/android/server/CountryDetectorService;Lcom/android/server/ThrottleService;Lcom/android/server/NetworkTimeUpdateService;Lcom/android/server/CommonTimeManagementService;Lcom/android/server/TextServicesManagerService;Lcom/android/server/dreams/DreamManagerService;Lcom/android/server/input/InputManagerService;Lcom/android/server/TelephonyRegistry;Lcom/android/server/TelephonyRegistry;Lcom/android/server/TelephonyRegistry;Lcom/android/server/TelephonyRegistry;Lcom/mediatek/common/thermal/MtkThermalSwitchManager;)V

    move-object/from16 v0, v31

    invoke-virtual {v7, v0}, Lcom/android/server/am/ActivityManagerService;->systemReady(Ljava/lang/Runnable;)V

    .line 1340
    :try_start_69
    const-string v7, "DmAgent"

    invoke-static {v7}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v77

    .line 1341
    .local v77, binder:Landroid/os/IBinder;
    if-eqz v77, :cond_26

    .line 1342
    invoke-static/range {v77 .. v77}, Lcom/mediatek/common/dm/DmAgent$Stub;->asInterface(Landroid/os/IBinder;)Lcom/mediatek/common/dm/DmAgent;

    move-result-object v69

    .line 1343
    .local v69, agent:Lcom/mediatek/common/dm/DmAgent;
    invoke-interface/range {v69 .. v69}, Lcom/mediatek/common/dm/DmAgent;->isLockFlagSet()Z

    move-result v118

    .line 1344
    .local v118, locked:Z
    if-eqz v142, :cond_25

    if-eqz v127, :cond_25

    if-eqz v15, :cond_25

    .line 1345
    new-instance v106, Lcom/android/server/FrameworkDmService;

    move-object/from16 v0, v106

    move-object/from16 v1, v142

    move-object/from16 v2, v127

    invoke-direct {v0, v5, v15, v1, v2}, Lcom/android/server/FrameworkDmService;-><init>(Landroid/content/Context;Lcom/android/server/AlarmManagerService;Lcom/android/server/StatusBarManagerService;Lcom/android/server/NotificationManagerService;)V
    :try_end_69
    .catch Ljava/lang/Exception; {:try_start_69 .. :try_end_69} :catch_45

    .line 1346
    .end local v105           #fdm:Lcom/android/server/FrameworkDmService;
    .local v106, fdm:Lcom/android/server/FrameworkDmService;
    :try_start_6a
    const-string v7, "SystemServer"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "dm state lock is "

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    move/from16 v0, v118

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1347
    if-nez v118, :cond_24

    const/4 v7, 0x1

    :goto_50
    move-object/from16 v0, v106

    invoke-virtual {v0, v7}, Lcom/android/server/FrameworkDmService;->dmEnable(Z)I
    :try_end_6a
    .catch Ljava/lang/Exception; {:try_start_6a .. :try_end_6a} :catch_47

    move-object/from16 v105, v106

    .line 1359
    .end local v69           #agent:Lcom/mediatek/common/dm/DmAgent;
    .end local v77           #binder:Landroid/os/IBinder;
    .end local v106           #fdm:Lcom/android/server/FrameworkDmService;
    .end local v118           #locked:Z
    .restart local v105       #fdm:Lcom/android/server/FrameworkDmService;
    :goto_51
    invoke-static {}, Landroid/os/StrictMode;->conditionallyEnableDebugLogging()Z

    move-result v7

    if-eqz v7, :cond_15

    .line 1360
    const-string v7, "SystemServer"

    const-string v9, "Enabled StrictMode for system server main thread."

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1363
    :cond_15
    new-instance v7, Ljava/lang/String;

    const-string v9, "Android:SysServerInit_END"

    invoke-direct {v7, v9}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    invoke-static {v7}, Lcom/android/server/ServerThread;->addBootEvent(Ljava/lang/String;)V

    .line 1366
    invoke-static {}, Lcom/android/server/ServerHangDetectThread;->getInstance()Lcom/android/server/ServerHangDetectThread;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/server/ServerHangDetectThread;->start()V

    .line 1368
    invoke-static {}, Landroid/os/Looper;->loop()V

    .line 1369
    const-string v7, "SystemServer"

    const-string v9, "System ServerThread is exiting!"

    invoke-static {v7, v9}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1370
    return-void

    .line 193
    .end local v4           #power:Lcom/android/server/power/PowerManagerService;
    .end local v5           #context:Landroid/content/Context;
    .end local v6           #lights:Lcom/android/server/LightsService;
    .end local v8           #battery:Lcom/android/server/BatteryService;
    .end local v10           #display:Lcom/android/server/display/DisplayManagerService;
    .end local v15           #alarm:Lcom/android/server/AlarmManagerService;
    .end local v19           #inputManager:Lcom/android/server/input/InputManagerService;
    .end local v20           #uiHandler:Landroid/os/Handler;
    .end local v21           #wmHandler:Landroid/os/Handler;
    .end local v24           #onlyCore:Z
    .end local v25           #networkPolicy:Lcom/android/server/net/NetworkPolicyManagerService;
    .end local v29           #networkStats:Lcom/android/server/net/NetworkStatsService;
    .end local v30           #networkManagement:Lcom/android/server/NetworkManagementService;
    .end local v33           #headless:Z
    .end local v34           #contextF:Landroid/content/Context;
    .end local v35           #mountServiceF:Lcom/android/server/MountService;
    .end local v36           #batteryF:Lcom/android/server/BatteryService;
    .end local v37           #networkManagementF:Lcom/android/server/NetworkManagementService;
    .end local v38           #networkStatsF:Lcom/android/server/net/NetworkStatsService;
    .end local v39           #networkPolicyF:Lcom/android/server/net/NetworkPolicyManagerService;
    .end local v40           #connectivityF:Lcom/android/server/ConnectivityService;
    .end local v41           #dockF:Lcom/android/server/DockObserver;
    .end local v42           #usbF:Lcom/android/server/usb/UsbService;
    .end local v43           #twilightF:Lcom/android/server/TwilightService;
    .end local v44           #uiModeF:Lcom/android/server/UiModeManagerService;
    .end local v45           #recognitionF:Lcom/android/server/RecognitionManagerService;
    .end local v46           #appWidgetF:Lcom/android/server/AppWidgetService;
    .end local v47           #safeMode:Z
    .end local v48           #wallpaperF:Lcom/android/server/WallpaperManagerService;
    .end local v49           #immF:Lcom/android/server/InputMethodManagerService;
    .end local v50           #statusBarF:Lcom/android/server/StatusBarManagerService;
    .end local v51           #locationF:Lcom/android/server/LocationManagerService;
    .end local v52           #countryDetectorF:Lcom/android/server/CountryDetectorService;
    .end local v53           #throttleF:Lcom/android/server/ThrottleService;
    .end local v54           #networkTimeUpdaterF:Lcom/android/server/NetworkTimeUpdateService;
    .end local v55           #commonTimeMgmtServiceF:Lcom/android/server/CommonTimeManagementService;
    .end local v56           #textServiceManagerServiceF:Lcom/android/server/TextServicesManagerService;
    .end local v57           #dreamyF:Lcom/android/server/dreams/DreamManagerService;
    .end local v58           #inputManagerF:Lcom/android/server/input/InputManagerService;
    .end local v59           #telephonyRegistryF:Lcom/android/server/TelephonyRegistry;
    .end local v60           #telephonyRegistryF2:Lcom/android/server/TelephonyRegistry;
    .end local v61           #telephonyRegistryF3:Ljava/lang/Object;
    .end local v62           #telephonyRegistryF4:Ljava/lang/Object;
    .end local v63           #thermalF:Ljava/lang/Object;
    .end local v64           #BluetoothProfileManager:Landroid/server/BluetoothProfileManagerService;
    .end local v66           #Ihdmi:Lcom/mediatek/common/hdmi/IHDMIObserver;
    .end local v67           #accountManager:Landroid/accounts/AccountManagerService;
    .end local v73           #appWidget:Lcom/android/server/AppWidgetService;
    .end local v78           #bluetooth:Landroid/server/BluetoothService;
    .end local v80           #bluetoothA2dp:Landroid/server/BluetoothA2dpService;
    .end local v83           #bluetoothSocket:Landroid/server/BluetoothSocketService;
    .end local v85           #commonTimeMgmtService:Lcom/android/server/CommonTimeManagementService;
    .end local v87           #config:Landroid/content/res/Configuration;
    .end local v88           #connectivity:Lcom/android/server/ConnectivityService;
    .end local v90           #contentService:Landroid/content/ContentService;
    .end local v91           #countryDetector:Lcom/android/server/CountryDetectorService;
    .end local v94           #devicePolicy:Lcom/android/server/DevicePolicyManagerService;
    .end local v97           #dock:Lcom/android/server/DockObserver;
    .end local v99           #dreamy:Lcom/android/server/dreams/DreamManagerService;
    .end local v103           #factoryTest:I
    .end local v104           #factoryTestStr:Ljava/lang/String;
    .end local v105           #fdm:Lcom/android/server/FrameworkDmService;
    .end local v108           #imm:Lcom/android/server/InputMethodManagerService;
    .end local v111           #installer:Lcom/android/server/pm/Installer;
    .end local v114           #location:Lcom/android/server/LocationManagerService;
    .end local v116           #lockSettings:Lcom/android/internal/widget/LockSettingsService;
    .end local v119           #metrics:Landroid/util/DisplayMetrics;
    .end local v120           #mountService:Lcom/android/server/MountService;
    .end local v125           #networkTimeUpdater:Lcom/android/server/NetworkTimeUpdateService;
    .end local v127           #notification:Lcom/android/server/NotificationManagerService;
    .end local v129           #perfMgrNotifier:Lcom/android/server/PerfMgrStateNotifier;
    .end local v131           #pm:Landroid/content/pm/IPackageManager;
    .end local v135           #recognition:Lcom/android/server/RecognitionManagerService;
    .end local v138           #serial:Lcom/android/server/SerialService;
    .end local v140           #serviceDiscovery:Lcom/android/server/NsdService;
    .end local v142           #statusBar:Lcom/android/server/StatusBarManagerService;
    .end local v144           #telephonyRegistry:Lcom/android/server/TelephonyRegistry;
    .end local v146           #telephonyRegistry2:Lcom/android/server/TelephonyRegistry;
    .end local v148           #telephonyRegistry3:Lcom/android/server/TelephonyRegistry;
    .end local v149           #telephonyRegistry4:Lcom/android/server/TelephonyRegistry;
    .end local v150           #thermalMgr:Lcom/mediatek/common/thermal/MtkThermalSwitchManager;
    .end local v151           #throttle:Lcom/android/server/ThrottleService;
    .end local v153           #tsms:Lcom/android/server/TextServicesManagerService;
    .end local v155           #twilight:Lcom/android/server/TwilightService;
    .end local v157           #uiHandlerThread:Landroid/os/HandlerThread;
    .end local v158           #uiMode:Lcom/android/server/UiModeManagerService;
    .end local v160           #usb:Lcom/android/server/usb/UsbService;
    .end local v162           #vibrator:Lcom/android/server/VibratorService;
    .end local v164           #w:Landroid/view/WindowManager;
    .end local v165           #wallpaper:Lcom/android/server/WallpaperManagerService;
    .end local v167           #wifi:Lcom/android/server/WifiService;
    .end local v169           #wifiP2p:Landroid/net/wifi/p2p/WifiP2pService;
    .end local v171           #wm:Lcom/android/server/wm/WindowManagerService;
    .end local v172           #wmHandlerThread:Landroid/os/HandlerThread;
    :cond_16
    const/16 v134, 0x0

    goto/16 :goto_0

    .line 199
    .restart local v134       #reboot:Z
    :cond_17
    const/16 v133, 0x0

    .restart local v133       #reason:Ljava/lang/String;
    goto/16 :goto_1

    .line 207
    .end local v133           #reason:Ljava/lang/String;
    .end local v134           #reboot:Z
    .restart local v104       #factoryTestStr:Ljava/lang/String;
    :cond_18
    invoke-static/range {v104 .. v104}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v103

    goto/16 :goto_2

    .line 323
    .restart local v5       #context:Landroid/content/Context;
    .restart local v20       #uiHandler:Landroid/os/Handler;
    .restart local v21       #wmHandler:Landroid/os/Handler;
    .restart local v24       #onlyCore:Z
    .restart local v29       #networkStats:Lcom/android/server/net/NetworkStatsService;
    .restart local v30       #networkManagement:Lcom/android/server/NetworkManagementService;
    .restart local v33       #headless:Z
    .restart local v64       #BluetoothProfileManager:Landroid/server/BluetoothProfileManagerService;
    .restart local v66       #Ihdmi:Lcom/mediatek/common/hdmi/IHDMIObserver;
    .restart local v67       #accountManager:Landroid/accounts/AccountManagerService;
    .restart local v72       #alarm:Lcom/android/server/AlarmManagerService;
    .restart local v76       #battery:Lcom/android/server/BatteryService;
    .restart local v78       #bluetooth:Landroid/server/BluetoothService;
    .restart local v80       #bluetoothA2dp:Landroid/server/BluetoothA2dpService;
    .restart local v83       #bluetoothSocket:Landroid/server/BluetoothSocketService;
    .restart local v85       #commonTimeMgmtService:Lcom/android/server/CommonTimeManagementService;
    .restart local v88       #connectivity:Lcom/android/server/ConnectivityService;
    .restart local v90       #contentService:Landroid/content/ContentService;
    .restart local v96       #display:Lcom/android/server/display/DisplayManagerService;
    .restart local v97       #dock:Lcom/android/server/DockObserver;
    .restart local v103       #factoryTest:I
    .restart local v105       #fdm:Lcom/android/server/FrameworkDmService;
    .restart local v110       #inputManager:Lcom/android/server/input/InputManagerService;
    .restart local v112       #installer:Lcom/android/server/pm/Installer;
    .restart local v113       #lights:Lcom/android/server/LightsService;
    .restart local v120       #mountService:Lcom/android/server/MountService;
    .restart local v122       #msgMonitorService:Lcom/mediatek/common/msgmonitorservice/IMessageLogger;
    .restart local v123       #networkPolicy:Lcom/android/server/net/NetworkPolicyManagerService;
    .restart local v125       #networkTimeUpdater:Lcom/android/server/NetworkTimeUpdateService;
    .restart local v131       #pm:Landroid/content/pm/IPackageManager;
    .restart local v132       #power:Lcom/android/server/power/PowerManagerService;
    .restart local v135       #recognition:Lcom/android/server/RecognitionManagerService;
    .restart local v138       #serial:Lcom/android/server/SerialService;
    .restart local v140       #serviceDiscovery:Lcom/android/server/NsdService;
    .restart local v144       #telephonyRegistry:Lcom/android/server/TelephonyRegistry;
    .restart local v146       #telephonyRegistry2:Lcom/android/server/TelephonyRegistry;
    .restart local v148       #telephonyRegistry3:Lcom/android/server/TelephonyRegistry;
    .restart local v149       #telephonyRegistry4:Lcom/android/server/TelephonyRegistry;
    .restart local v151       #throttle:Lcom/android/server/ThrottleService;
    .restart local v155       #twilight:Lcom/android/server/TwilightService;
    .restart local v157       #uiHandlerThread:Landroid/os/HandlerThread;
    .restart local v158       #uiMode:Lcom/android/server/UiModeManagerService;
    .restart local v160       #usb:Lcom/android/server/usb/UsbService;
    .restart local v162       #vibrator:Lcom/android/server/VibratorService;
    .restart local v167       #wifi:Lcom/android/server/WifiService;
    .restart local v169       #wifiP2p:Landroid/net/wifi/p2p/WifiP2pService;
    .restart local v171       #wm:Lcom/android/server/wm/WindowManagerService;
    .restart local v172       #wmHandlerThread:Landroid/os/HandlerThread;
    :catch_0
    move-exception v101

    .line 324
    .local v101, e:Ljava/lang/Exception;
    :try_start_6b
    const-string v7, "SystemServer"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Create message monitor service Exception="

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual/range {v101 .. v101}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v7, v9}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6b
    .catch Ljava/lang/Throwable; {:try_start_6b .. :try_end_6b} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_6b .. :try_end_6b} :catch_2

    goto/16 :goto_3

    .line 328
    .end local v101           #e:Ljava/lang/Exception;
    :catch_1
    move-exception v101

    .line 329
    .local v101, e:Ljava/lang/Throwable;
    :try_start_6c
    const-string v7, "SystemServer"

    const-string v9, "Starting message monitor service exception "

    move-object/from16 v0, v101

    invoke-static {v7, v9, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_6c
    .catch Ljava/lang/RuntimeException; {:try_start_6c .. :try_end_6c} :catch_2

    goto/16 :goto_4

    .line 535
    .end local v101           #e:Ljava/lang/Throwable;
    .end local v122           #msgMonitorService:Lcom/mediatek/common/msgmonitorservice/IMessageLogger;
    :catch_2
    move-exception v101

    move-object/from16 v19, v110

    .end local v110           #inputManager:Lcom/android/server/input/InputManagerService;
    .restart local v19       #inputManager:Lcom/android/server/input/InputManagerService;
    move-object/from16 v15, v72

    .end local v72           #alarm:Lcom/android/server/AlarmManagerService;
    .restart local v15       #alarm:Lcom/android/server/AlarmManagerService;
    move-object/from16 v8, v76

    .end local v76           #battery:Lcom/android/server/BatteryService;
    .restart local v8       #battery:Lcom/android/server/BatteryService;
    move-object/from16 v10, v96

    .end local v96           #display:Lcom/android/server/display/DisplayManagerService;
    .restart local v10       #display:Lcom/android/server/display/DisplayManagerService;
    move-object/from16 v4, v132

    .end local v132           #power:Lcom/android/server/power/PowerManagerService;
    .restart local v4       #power:Lcom/android/server/power/PowerManagerService;
    move-object/from16 v6, v113

    .end local v113           #lights:Lcom/android/server/LightsService;
    .restart local v6       #lights:Lcom/android/server/LightsService;
    move-object/from16 v111, v112

    .line 536
    .end local v112           #installer:Lcom/android/server/pm/Installer;
    .local v101, e:Ljava/lang/RuntimeException;
    .restart local v111       #installer:Lcom/android/server/pm/Installer;
    :goto_52
    const-string v7, "System"

    const-string v9, "******************************************"

    invoke-static {v7, v9}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 537
    const-string v7, "System"

    const-string v9, "************ Failure starting core service"

    move-object/from16 v0, v101

    invoke-static {v7, v9, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_e

    .line 357
    .end local v6           #lights:Lcom/android/server/LightsService;
    .end local v8           #battery:Lcom/android/server/BatteryService;
    .end local v15           #alarm:Lcom/android/server/AlarmManagerService;
    .end local v19           #inputManager:Lcom/android/server/input/InputManagerService;
    .end local v101           #e:Ljava/lang/RuntimeException;
    .end local v111           #installer:Lcom/android/server/pm/Installer;
    .restart local v72       #alarm:Lcom/android/server/AlarmManagerService;
    .restart local v76       #battery:Lcom/android/server/BatteryService;
    .restart local v110       #inputManager:Lcom/android/server/input/InputManagerService;
    .restart local v112       #installer:Lcom/android/server/pm/Installer;
    .restart local v113       #lights:Lcom/android/server/LightsService;
    :cond_19
    :try_start_6d
    new-instance v145, Lcom/android/server/StubTelephonyRegistry;

    move-object/from16 v0, v145

    invoke-direct {v0, v5}, Lcom/android/server/StubTelephonyRegistry;-><init>(Landroid/content/Context;)V
    :try_end_6d
    .catch Ljava/lang/RuntimeException; {:try_start_6d .. :try_end_6d} :catch_61

    .end local v144           #telephonyRegistry:Lcom/android/server/TelephonyRegistry;
    .restart local v145       #telephonyRegistry:Lcom/android/server/TelephonyRegistry;
    move-object/from16 v144, v145

    .end local v145           #telephonyRegistry:Lcom/android/server/TelephonyRegistry;
    .restart local v144       #telephonyRegistry:Lcom/android/server/TelephonyRegistry;
    goto/16 :goto_5

    .line 398
    .end local v146           #telephonyRegistry2:Lcom/android/server/TelephonyRegistry;
    .restart local v93       #cryptState:Ljava/lang/String;
    .restart local v147       #telephonyRegistry2:Lcom/android/server/TelephonyRegistry;
    :cond_1a
    :try_start_6e
    const-string v7, "1"

    move-object/from16 v0, v93

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 399
    const-string v7, "SystemServer"

    const-string v9, "Device encrypted - only parsing core apps"

    invoke-static {v7, v9}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 400
    const/16 v24, 0x1

    goto/16 :goto_6

    .line 403
    :cond_1b
    const/4 v7, 0x0

    goto/16 :goto_7

    .line 426
    .restart local v107       #firstBoot:Z
    :catch_3
    move-exception v101

    .line 427
    .local v101, e:Ljava/lang/Throwable;
    :goto_53
    const-string v7, "SystemServer"

    const-string v9, "Failure starting Account Manager"

    move-object/from16 v0, v101

    invoke-static {v7, v9, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_6e
    .catch Ljava/lang/RuntimeException; {:try_start_6e .. :try_end_6e} :catch_4

    goto/16 :goto_9

    .line 535
    .end local v93           #cryptState:Ljava/lang/String;
    .end local v101           #e:Ljava/lang/Throwable;
    .end local v107           #firstBoot:Z
    :catch_4
    move-exception v101

    move-object/from16 v146, v147

    .end local v147           #telephonyRegistry2:Lcom/android/server/TelephonyRegistry;
    .restart local v146       #telephonyRegistry2:Lcom/android/server/TelephonyRegistry;
    move-object/from16 v19, v110

    .end local v110           #inputManager:Lcom/android/server/input/InputManagerService;
    .restart local v19       #inputManager:Lcom/android/server/input/InputManagerService;
    move-object/from16 v15, v72

    .end local v72           #alarm:Lcom/android/server/AlarmManagerService;
    .restart local v15       #alarm:Lcom/android/server/AlarmManagerService;
    move-object/from16 v8, v76

    .end local v76           #battery:Lcom/android/server/BatteryService;
    .restart local v8       #battery:Lcom/android/server/BatteryService;
    move-object/from16 v6, v113

    .end local v113           #lights:Lcom/android/server/LightsService;
    .restart local v6       #lights:Lcom/android/server/LightsService;
    move-object/from16 v111, v112

    .end local v112           #installer:Lcom/android/server/pm/Installer;
    .restart local v111       #installer:Lcom/android/server/pm/Installer;
    goto :goto_52

    .line 431
    .end local v6           #lights:Lcom/android/server/LightsService;
    .end local v8           #battery:Lcom/android/server/BatteryService;
    .end local v15           #alarm:Lcom/android/server/AlarmManagerService;
    .end local v19           #inputManager:Lcom/android/server/input/InputManagerService;
    .end local v111           #installer:Lcom/android/server/pm/Installer;
    .end local v146           #telephonyRegistry2:Lcom/android/server/TelephonyRegistry;
    .restart local v72       #alarm:Lcom/android/server/AlarmManagerService;
    .restart local v76       #battery:Lcom/android/server/BatteryService;
    .restart local v93       #cryptState:Ljava/lang/String;
    .restart local v107       #firstBoot:Z
    .restart local v110       #inputManager:Lcom/android/server/input/InputManagerService;
    .restart local v112       #installer:Lcom/android/server/pm/Installer;
    .restart local v113       #lights:Lcom/android/server/LightsService;
    .restart local v147       #telephonyRegistry2:Lcom/android/server/TelephonyRegistry;
    :cond_1c
    const/4 v7, 0x0

    goto/16 :goto_a

    .line 468
    .end local v72           #alarm:Lcom/android/server/AlarmManagerService;
    .end local v76           #battery:Lcom/android/server/BatteryService;
    .end local v110           #inputManager:Lcom/android/server/input/InputManagerService;
    .end local v113           #lights:Lcom/android/server/LightsService;
    .end local v162           #vibrator:Lcom/android/server/VibratorService;
    .restart local v6       #lights:Lcom/android/server/LightsService;
    .restart local v8       #battery:Lcom/android/server/BatteryService;
    .restart local v15       #alarm:Lcom/android/server/AlarmManagerService;
    .restart local v19       #inputManager:Lcom/android/server/input/InputManagerService;
    .restart local v163       #vibrator:Lcom/android/server/VibratorService;
    :cond_1d
    const/16 v22, 0x0

    goto/16 :goto_b

    :cond_1e
    const/16 v23, 0x0

    goto/16 :goto_c

    .line 488
    :cond_1f
    const/4 v7, 0x1

    move/from16 v0, v103

    if-ne v0, v7, :cond_20

    .line 489
    :try_start_6f
    const-string v7, "SystemServer"

    const-string v9, "No Bluetooth Service (factory test)"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_d

    .line 535
    :catch_5
    move-exception v101

    move-object/from16 v146, v147

    .end local v147           #telephonyRegistry2:Lcom/android/server/TelephonyRegistry;
    .restart local v146       #telephonyRegistry2:Lcom/android/server/TelephonyRegistry;
    move-object/from16 v162, v163

    .end local v163           #vibrator:Lcom/android/server/VibratorService;
    .restart local v162       #vibrator:Lcom/android/server/VibratorService;
    move-object/from16 v111, v112

    .end local v112           #installer:Lcom/android/server/pm/Installer;
    .restart local v111       #installer:Lcom/android/server/pm/Installer;
    goto :goto_52

    .line 497
    .end local v111           #installer:Lcom/android/server/pm/Installer;
    .end local v146           #telephonyRegistry2:Lcom/android/server/TelephonyRegistry;
    .end local v162           #vibrator:Lcom/android/server/VibratorService;
    .restart local v112       #installer:Lcom/android/server/pm/Installer;
    .restart local v147       #telephonyRegistry2:Lcom/android/server/TelephonyRegistry;
    .restart local v163       #vibrator:Lcom/android/server/VibratorService;
    :cond_20
    const-string v7, "SystemServer"

    const-string v9, "Bluetooth Service"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 498
    new-instance v79, Landroid/server/BluetoothService;

    move-object/from16 v0, v79

    invoke-direct {v0, v5}, Landroid/server/BluetoothService;-><init>(Landroid/content/Context;)V
    :try_end_6f
    .catch Ljava/lang/RuntimeException; {:try_start_6f .. :try_end_6f} :catch_5

    .line 499
    .end local v78           #bluetooth:Landroid/server/BluetoothService;
    .local v79, bluetooth:Landroid/server/BluetoothService;
    :try_start_70
    const-string v7, "bluetooth"

    move-object/from16 v0, v79

    invoke-static {v7, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 500
    invoke-virtual/range {v79 .. v79}, Landroid/server/BluetoothService;->initAfterRegistration()V

    .line 502
    const-string v7, "0"

    const-string v9, "system_init.startaudioservice"

    invoke-static {v9}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_21

    .line 503
    new-instance v81, Landroid/server/BluetoothA2dpService;

    move-object/from16 v0, v81

    move-object/from16 v1, v79

    invoke-direct {v0, v5, v1}, Landroid/server/BluetoothA2dpService;-><init>(Landroid/content/Context;Landroid/server/BluetoothService;)V
    :try_end_70
    .catch Ljava/lang/RuntimeException; {:try_start_70 .. :try_end_70} :catch_67

    .line 504
    .end local v80           #bluetoothA2dp:Landroid/server/BluetoothA2dpService;
    .local v81, bluetoothA2dp:Landroid/server/BluetoothA2dpService;
    :try_start_71
    const-string v7, "bluetooth_a2dp"

    move-object/from16 v0, v81

    invoke-static {v7, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 506
    invoke-virtual/range {v79 .. v79}, Landroid/server/BluetoothService;->initAfterA2dpRegistration()V
    :try_end_71
    .catch Ljava/lang/RuntimeException; {:try_start_71 .. :try_end_71} :catch_68

    move-object/from16 v80, v81

    .line 510
    .end local v81           #bluetoothA2dp:Landroid/server/BluetoothA2dpService;
    .restart local v80       #bluetoothA2dp:Landroid/server/BluetoothA2dpService;
    :cond_21
    :try_start_72
    new-instance v84, Landroid/server/BluetoothSocketService;

    move-object/from16 v0, v84

    move-object/from16 v1, v79

    invoke-direct {v0, v5, v1}, Landroid/server/BluetoothSocketService;-><init>(Landroid/content/Context;Landroid/server/BluetoothService;)V
    :try_end_72
    .catch Ljava/lang/RuntimeException; {:try_start_72 .. :try_end_72} :catch_67

    .line 511
    .end local v83           #bluetoothSocket:Landroid/server/BluetoothSocketService;
    .local v84, bluetoothSocket:Landroid/server/BluetoothSocketService;
    :try_start_73
    const-string v7, "bluetooth_socket"

    move-object/from16 v0, v84

    invoke-static {v7, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 516
    new-instance v65, Landroid/server/BluetoothProfileManagerService;

    move-object/from16 v0, v65

    invoke-direct {v0, v5}, Landroid/server/BluetoothProfileManagerService;-><init>(Landroid/content/Context;)V
    :try_end_73
    .catch Ljava/lang/RuntimeException; {:try_start_73 .. :try_end_73} :catch_69

    .line 517
    .end local v64           #BluetoothProfileManager:Landroid/server/BluetoothProfileManagerService;
    .local v65, BluetoothProfileManager:Landroid/server/BluetoothProfileManagerService;
    :try_start_74
    const-string v7, "bluetooth_profile_manager"

    move-object/from16 v0, v65

    invoke-static {v7, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 523
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/server/ServerThread;->mContentResolver:Landroid/content/ContentResolver;

    const-string v9, "airplane_mode_on"

    const/4 v11, 0x0

    invoke-static {v7, v9, v11}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v71

    .line 525
    .local v71, airplaneModeOn:I
    invoke-virtual/range {v79 .. v79}, Landroid/server/BluetoothService;->getRebootBluetoothState()Z

    move-result v82

    .line 526
    .local v82, bluetoothOn:Z
    const-string v7, "SystemServer"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "bluetoothOn = "

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    move/from16 v0, v82

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 527
    if-nez v71, :cond_22

    if-eqz v82, :cond_22

    .line 528
    invoke-virtual/range {v79 .. v79}, Landroid/server/BluetoothService;->enable()Z
    :try_end_74
    .catch Ljava/lang/RuntimeException; {:try_start_74 .. :try_end_74} :catch_6a

    :cond_22
    move-object/from16 v64, v65

    .end local v65           #BluetoothProfileManager:Landroid/server/BluetoothProfileManagerService;
    .restart local v64       #BluetoothProfileManager:Landroid/server/BluetoothProfileManagerService;
    move-object/from16 v83, v84

    .end local v84           #bluetoothSocket:Landroid/server/BluetoothSocketService;
    .restart local v83       #bluetoothSocket:Landroid/server/BluetoothSocketService;
    move-object/from16 v78, v79

    .end local v79           #bluetooth:Landroid/server/BluetoothService;
    .restart local v78       #bluetooth:Landroid/server/BluetoothService;
    goto/16 :goto_d

    .line 560
    .end local v71           #airplaneModeOn:I
    .end local v82           #bluetoothOn:Z
    .end local v93           #cryptState:Ljava/lang/String;
    .end local v107           #firstBoot:Z
    .end local v112           #installer:Lcom/android/server/pm/Installer;
    .end local v147           #telephonyRegistry2:Lcom/android/server/TelephonyRegistry;
    .end local v163           #vibrator:Lcom/android/server/VibratorService;
    .restart local v73       #appWidget:Lcom/android/server/AppWidgetService;
    .restart local v91       #countryDetector:Lcom/android/server/CountryDetectorService;
    .restart local v94       #devicePolicy:Lcom/android/server/DevicePolicyManagerService;
    .restart local v99       #dreamy:Lcom/android/server/dreams/DreamManagerService;
    .restart local v108       #imm:Lcom/android/server/InputMethodManagerService;
    .restart local v111       #installer:Lcom/android/server/pm/Installer;
    .restart local v114       #location:Lcom/android/server/LocationManagerService;
    .restart local v116       #lockSettings:Lcom/android/internal/widget/LockSettingsService;
    .restart local v127       #notification:Lcom/android/server/NotificationManagerService;
    .restart local v129       #perfMgrNotifier:Lcom/android/server/PerfMgrStateNotifier;
    .restart local v142       #statusBar:Lcom/android/server/StatusBarManagerService;
    .restart local v146       #telephonyRegistry2:Lcom/android/server/TelephonyRegistry;
    .restart local v150       #thermalMgr:Lcom/mediatek/common/thermal/MtkThermalSwitchManager;
    .restart local v153       #tsms:Lcom/android/server/TextServicesManagerService;
    .restart local v162       #vibrator:Lcom/android/server/VibratorService;
    .restart local v165       #wallpaper:Lcom/android/server/WallpaperManagerService;
    :catch_6
    move-exception v101

    .line 561
    .restart local v101       #e:Ljava/lang/Throwable;
    :goto_54
    const-string v7, "starting Input Manager Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v101

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_f

    .line 568
    .end local v101           #e:Ljava/lang/Throwable;
    :catch_7
    move-exception v101

    .line 569
    .restart local v101       #e:Ljava/lang/Throwable;
    const-string v7, "starting Accessibility Manager"

    move-object/from16 v0, p0

    move-object/from16 v1, v101

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_10

    .line 575
    .end local v101           #e:Ljava/lang/Throwable;
    :catch_8
    move-exception v101

    .line 576
    .restart local v101       #e:Ljava/lang/Throwable;
    const-string v7, "making display ready"

    move-object/from16 v0, p0

    move-object/from16 v1, v101

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_11

    .line 581
    .end local v101           #e:Ljava/lang/Throwable;
    :catch_9
    move-exception v101

    .line 582
    .restart local v101       #e:Ljava/lang/Throwable;
    const-string v7, "performing boot dexopt"

    move-object/from16 v0, p0

    move-object/from16 v1, v101

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_12

    .line 603
    .end local v101           #e:Ljava/lang/Throwable;
    :catch_a
    move-exception v101

    .line 604
    .restart local v101       #e:Ljava/lang/Throwable;
    :goto_55
    const-string v7, "starting Mount Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v101

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_14

    .line 612
    .end local v101           #e:Ljava/lang/Throwable;
    :catch_b
    move-exception v101

    .line 613
    .restart local v101       #e:Ljava/lang/Throwable;
    :goto_56
    const-string v7, "starting LockSettingsService service"

    move-object/from16 v0, p0

    move-object/from16 v1, v101

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_15

    .line 620
    .end local v101           #e:Ljava/lang/Throwable;
    :catch_c
    move-exception v101

    .line 621
    .restart local v101       #e:Ljava/lang/Throwable;
    :goto_57
    const-string v7, "starting DevicePolicyService"

    move-object/from16 v0, p0

    move-object/from16 v1, v101

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_16

    .line 628
    .end local v101           #e:Ljava/lang/Throwable;
    :catch_d
    move-exception v101

    .line 629
    .restart local v101       #e:Ljava/lang/Throwable;
    :goto_58
    const-string v7, "starting StatusBarManagerService"

    move-object/from16 v0, p0

    move-object/from16 v1, v101

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_17

    .line 636
    .end local v101           #e:Ljava/lang/Throwable;
    :catch_e
    move-exception v101

    .line 637
    .restart local v101       #e:Ljava/lang/Throwable;
    const-string v7, "starting Clipboard Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v101

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_18

    .line 644
    .end local v101           #e:Ljava/lang/Throwable;
    :catch_f
    move-exception v101

    .line 645
    .restart local v101       #e:Ljava/lang/Throwable;
    const-string v7, "starting NetworkManagement Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v101

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_19

    .line 652
    .end local v101           #e:Ljava/lang/Throwable;
    :catch_10
    move-exception v101

    .line 653
    .restart local v101       #e:Ljava/lang/Throwable;
    :goto_59
    const-string v7, "starting Text Service Manager Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v101

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_1a

    .line 660
    .end local v101           #e:Ljava/lang/Throwable;
    :catch_11
    move-exception v101

    .line 661
    .restart local v101       #e:Ljava/lang/Throwable;
    :goto_5a
    const-string v7, "starting NetworkStats Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v101

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_1b

    .line 670
    .end local v101           #e:Ljava/lang/Throwable;
    :catch_12
    move-exception v101

    move-object/from16 v25, v123

    .line 671
    .end local v123           #networkPolicy:Lcom/android/server/net/NetworkPolicyManagerService;
    .restart local v25       #networkPolicy:Lcom/android/server/net/NetworkPolicyManagerService;
    .restart local v101       #e:Ljava/lang/Throwable;
    :goto_5b
    const-string v7, "starting NetworkPolicy Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v101

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_1c

    .line 678
    .end local v101           #e:Ljava/lang/Throwable;
    :catch_13
    move-exception v101

    .line 679
    .restart local v101       #e:Ljava/lang/Throwable;
    :goto_5c
    const-string v7, "starting Wi-Fi P2pService"

    move-object/from16 v0, p0

    move-object/from16 v1, v101

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_1d

    .line 686
    .end local v101           #e:Ljava/lang/Throwable;
    :catch_14
    move-exception v101

    .line 687
    .restart local v101       #e:Ljava/lang/Throwable;
    :goto_5d
    const-string v7, "starting Wi-Fi Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v101

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_1e

    .line 699
    .end local v101           #e:Ljava/lang/Throwable;
    :catch_15
    move-exception v101

    .line 700
    .restart local v101       #e:Ljava/lang/Throwable;
    :goto_5e
    const-string v7, "starting Connectivity Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v101

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_1f

    .line 708
    .end local v101           #e:Ljava/lang/Throwable;
    :catch_16
    move-exception v101

    .line 709
    .restart local v101       #e:Ljava/lang/Throwable;
    const-string v7, "starting Service Discovery Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v101

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_20

    .line 717
    .end local v101           #e:Ljava/lang/Throwable;
    :catch_17
    move-exception v101

    .line 718
    .restart local v101       #e:Ljava/lang/Throwable;
    :goto_5f
    const-string v7, "starting ThrottleService"

    move-object/from16 v0, p0

    move-object/from16 v1, v101

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_21

    .line 725
    .end local v101           #e:Ljava/lang/Throwable;
    :catch_18
    move-exception v101

    .line 726
    .restart local v101       #e:Ljava/lang/Throwable;
    const-string v7, "starting UpdateLockService"

    move-object/from16 v0, p0

    move-object/from16 v1, v101

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_22

    .line 741
    .end local v101           #e:Ljava/lang/Throwable;
    :catch_19
    move-exception v101

    .line 742
    .restart local v101       #e:Ljava/lang/Throwable;
    const-string v7, "making Account Manager Service ready"

    move-object/from16 v0, p0

    move-object/from16 v1, v101

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_23

    .line 748
    .end local v101           #e:Ljava/lang/Throwable;
    :catch_1a
    move-exception v101

    .line 749
    .restart local v101       #e:Ljava/lang/Throwable;
    const-string v7, "making Content Service ready"

    move-object/from16 v0, p0

    move-object/from16 v1, v101

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_24

    .line 757
    .end local v101           #e:Ljava/lang/Throwable;
    :catch_1b
    move-exception v101

    .line 758
    .restart local v101       #e:Ljava/lang/Throwable;
    :goto_60
    const-string v7, "starting Notification Manager"

    move-object/from16 v0, p0

    move-object/from16 v1, v101

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_25

    .line 765
    .end local v101           #e:Ljava/lang/Throwable;
    :catch_1c
    move-exception v101

    .line 766
    .restart local v101       #e:Ljava/lang/Throwable;
    const-string v7, "starting DeviceStorageMonitor service"

    move-object/from16 v0, p0

    move-object/from16 v1, v101

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_26

    .line 773
    .end local v101           #e:Ljava/lang/Throwable;
    :catch_1d
    move-exception v101

    .line 774
    .restart local v101       #e:Ljava/lang/Throwable;
    :goto_61
    const-string v7, "starting Location Manager"

    move-object/from16 v0, p0

    move-object/from16 v1, v101

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_27

    .line 781
    .end local v101           #e:Ljava/lang/Throwable;
    :catch_1e
    move-exception v101

    .line 782
    .restart local v101       #e:Ljava/lang/Throwable;
    :goto_62
    const-string v7, "starting Country Detector"

    move-object/from16 v0, p0

    move-object/from16 v1, v101

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_28

    .line 789
    .end local v101           #e:Ljava/lang/Throwable;
    :catch_1f
    move-exception v101

    .line 790
    .restart local v101       #e:Ljava/lang/Throwable;
    const-string v7, "starting Search Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v101

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_29

    .line 800
    .end local v101           #e:Ljava/lang/Throwable;
    .restart local v137       #searchEngineService:Lcom/mediatek/common/search/ISearchEngineManagerService;
    :catch_20
    move-exception v101

    .line 801
    .local v101, e:Ljava/lang/Exception;
    :try_start_75
    const-string v7, "SystemServer"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "ISearchEngineManagerService systemServer Exception="

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual/range {v101 .. v101}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v7, v9}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_75
    .catch Ljava/lang/Throwable; {:try_start_75 .. :try_end_75} :catch_21

    goto/16 :goto_2a

    .line 808
    .end local v101           #e:Ljava/lang/Exception;
    .end local v137           #searchEngineService:Lcom/mediatek/common/search/ISearchEngineManagerService;
    :catch_21
    move-exception v101

    .line 809
    .local v101, e:Ljava/lang/Throwable;
    const-string v7, "starting Search Engine Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v101

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_2b

    .line 817
    .end local v101           #e:Ljava/lang/Throwable;
    :catch_22
    move-exception v101

    .line 818
    .restart local v101       #e:Ljava/lang/Throwable;
    const-string v7, "starting DropBoxManagerService"

    move-object/from16 v0, p0

    move-object/from16 v1, v101

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_2c

    .line 829
    .end local v101           #e:Ljava/lang/Throwable;
    :catch_23
    move-exception v101

    .line 830
    .restart local v101       #e:Ljava/lang/Throwable;
    :goto_63
    const-string v7, "starting Wallpaper Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v101

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_2d

    .line 838
    .end local v101           #e:Ljava/lang/Throwable;
    :catch_24
    move-exception v101

    .line 839
    .restart local v101       #e:Ljava/lang/Throwable;
    const-string v7, "starting Audio Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v101

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_2e

    .line 851
    .end local v101           #e:Ljava/lang/Throwable;
    .restart local v75       #audioProfileService:Lcom/mediatek/common/audioprofile/IAudioProfileService;
    :catch_25
    move-exception v101

    .line 852
    .local v101, e:Ljava/lang/Exception;
    :try_start_76
    const-string v7, "SystemServer"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "hugo_app systemServer Exception="

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual/range {v101 .. v101}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v7, v9}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_76
    .catch Ljava/lang/Throwable; {:try_start_76 .. :try_end_76} :catch_26

    goto/16 :goto_2f

    .line 859
    .end local v101           #e:Ljava/lang/Exception;
    :catch_26
    move-exception v101

    .line 860
    .local v101, e:Ljava/lang/Throwable;
    const-string v7, "SystemServer"

    const-string v9, "starting AudioProfile Service"

    move-object/from16 v0, v101

    invoke-static {v7, v9, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_30

    .line 869
    .end local v101           #e:Ljava/lang/Throwable;
    :catch_27
    move-exception v101

    .line 870
    .restart local v101       #e:Ljava/lang/Throwable;
    const-string v7, "starting DockObserver"

    move-object/from16 v0, p0

    move-object/from16 v1, v101

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_31

    .line 878
    .end local v101           #e:Ljava/lang/Throwable;
    :catch_28
    move-exception v101

    .line 879
    .restart local v101       #e:Ljava/lang/Throwable;
    const-string v7, "starting WiredAccessoryManager"

    move-object/from16 v0, p0

    move-object/from16 v1, v101

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_32

    .line 887
    .end local v101           #e:Ljava/lang/Throwable;
    :catch_29
    move-exception v101

    .line 888
    .restart local v101       #e:Ljava/lang/Throwable;
    :goto_64
    const-string v7, "starting UsbService"

    move-object/from16 v0, p0

    move-object/from16 v1, v101

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_33

    .line 896
    .end local v101           #e:Ljava/lang/Throwable;
    :catch_2a
    move-exception v101

    .line 897
    .restart local v101       #e:Ljava/lang/Throwable;
    :goto_65
    const-string v7, "SystemServer"

    const-string v9, "Failure starting SerialService"

    move-object/from16 v0, v101

    invoke-static {v7, v9, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_34

    .line 903
    .end local v101           #e:Ljava/lang/Throwable;
    :catch_2b
    move-exception v101

    .line 904
    .restart local v101       #e:Ljava/lang/Throwable;
    const-string v7, "starting TwilightService"

    move-object/from16 v0, p0

    move-object/from16 v1, v101

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_35

    .line 911
    .end local v101           #e:Ljava/lang/Throwable;
    :catch_2c
    move-exception v101

    .line 912
    .restart local v101       #e:Ljava/lang/Throwable;
    const-string v7, "starting UiModeManagerService"

    move-object/from16 v0, p0

    move-object/from16 v1, v101

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_36

    .line 919
    .end local v101           #e:Ljava/lang/Throwable;
    :catch_2d
    move-exception v101

    .line 920
    .restart local v101       #e:Ljava/lang/Throwable;
    const-string v7, "SystemServer"

    const-string v9, "Failure starting Backup Service"

    move-object/from16 v0, v101

    invoke-static {v7, v9, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_37

    .line 927
    .end local v101           #e:Ljava/lang/Throwable;
    :catch_2e
    move-exception v101

    .line 928
    .restart local v101       #e:Ljava/lang/Throwable;
    :goto_66
    const-string v7, "starting AppWidget Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v101

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_38

    .line 934
    .end local v101           #e:Ljava/lang/Throwable;
    :catch_2f
    move-exception v101

    .line 935
    .restart local v101       #e:Ljava/lang/Throwable;
    const-string v7, "starting Recognition Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v101

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_39

    .line 946
    .end local v101           #e:Ljava/lang/Throwable;
    .restart local v70       #agpsMgr:Lcom/mediatek/common/agps/IMtkAgpsManager;
    :catch_30
    move-exception v101

    .line 947
    .local v101, e:Ljava/lang/Exception;
    :try_start_77
    const-string v7, "SystemServer"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "hugo_app systemServer Exception="

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual/range {v101 .. v101}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v7, v9}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_77
    .catch Ljava/lang/Throwable; {:try_start_77 .. :try_end_77} :catch_31

    goto/16 :goto_3a

    .line 954
    .end local v101           #e:Ljava/lang/Exception;
    :catch_31
    move-exception v101

    .line 955
    .local v101, e:Ljava/lang/Throwable;
    const-string v7, "SystemServer"

    const-string v9, "hugo_app Failure starting Mtk Agps Manager"

    move-object/from16 v0, v101

    invoke-static {v7, v9, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_3b

    .line 963
    .end local v101           #e:Ljava/lang/Throwable;
    .restart local v102       #epoMgr:Lcom/mediatek/common/epo/IMtkEpoClientManager;
    :catch_32
    move-exception v101

    .line 964
    .local v101, e:Ljava/lang/Exception;
    :try_start_78
    const-string v7, "SystemServer"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "hugo_app systemServer Exception="

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual/range {v101 .. v101}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v7, v9}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_78
    .catch Ljava/lang/Throwable; {:try_start_78 .. :try_end_78} :catch_33

    goto/16 :goto_3c

    .line 971
    .end local v101           #e:Ljava/lang/Exception;
    :catch_33
    move-exception v101

    .line 972
    .local v101, e:Ljava/lang/Throwable;
    const-string v7, "SystemServer"

    const-string v9, "Failure starting Mtk EPO client manager"

    move-object/from16 v0, v101

    invoke-static {v7, v9, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_3d

    .line 981
    .end local v101           #e:Ljava/lang/Throwable;
    :catch_34
    move-exception v101

    .line 982
    .restart local v101       #e:Ljava/lang/Throwable;
    const-string v7, "SystemServer"

    const-string v9, "Failure starting Smartcard System Service"

    move-object/from16 v0, v101

    invoke-static {v7, v9, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_3e

    .line 991
    .end local v101           #e:Ljava/lang/Throwable;
    :catch_35
    move-exception v101

    .line 992
    .restart local v101       #e:Ljava/lang/Throwable;
    const-string v7, "starting DiskStats Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v101

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_3f

    .line 1003
    .end local v101           #e:Ljava/lang/Throwable;
    :catch_36
    move-exception v101

    .line 1004
    .restart local v101       #e:Ljava/lang/Throwable;
    const-string v7, "starting SamplingProfiler Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v101

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_40

    .line 1011
    .end local v101           #e:Ljava/lang/Throwable;
    :catch_37
    move-exception v101

    .line 1012
    .restart local v101       #e:Ljava/lang/Throwable;
    const-string v7, "SystemServer"

    const-string v9, "Failure starting HDMIObserver"

    move-object/from16 v0, v101

    invoke-static {v7, v9, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_41

    .line 1019
    .end local v101           #e:Ljava/lang/Throwable;
    :catch_38
    move-exception v101

    .line 1020
    .restart local v101       #e:Ljava/lang/Throwable;
    const-string v7, "starting NetworkTimeUpdate service"

    move-object/from16 v0, p0

    move-object/from16 v1, v101

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_42

    .line 1027
    .end local v101           #e:Ljava/lang/Throwable;
    :catch_39
    move-exception v101

    .line 1028
    .restart local v101       #e:Ljava/lang/Throwable;
    :goto_67
    const-string v7, "starting CommonTimeManagementService service"

    move-object/from16 v0, p0

    move-object/from16 v1, v101

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_43

    .line 1034
    .end local v101           #e:Ljava/lang/Throwable;
    :catch_3a
    move-exception v101

    .line 1035
    .restart local v101       #e:Ljava/lang/Throwable;
    const-string v7, "starting CertBlacklister"

    move-object/from16 v0, p0

    move-object/from16 v1, v101

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_44

    .line 1045
    .end local v101           #e:Ljava/lang/Throwable;
    :catch_3b
    move-exception v101

    .line 1046
    .restart local v101       #e:Ljava/lang/Throwable;
    :goto_68
    const-string v7, "starting DreamManagerService"

    move-object/from16 v0, p0

    move-object/from16 v1, v101

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_45

    .line 1066
    .end local v101           #e:Ljava/lang/Throwable;
    :catch_3c
    move-exception v101

    .line 1067
    .restart local v101       #e:Ljava/lang/Throwable;
    :goto_69
    const-string v7, "SystemServer"

    const-string v9, "FAIL starting PerfMgrStateNotifier"

    move-object/from16 v0, v101

    invoke-static {v7, v9, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_46

    .line 1083
    .end local v70           #agpsMgr:Lcom/mediatek/common/agps/IMtkAgpsManager;
    .end local v75           #audioProfileService:Lcom/mediatek/common/audioprofile/IAudioProfileService;
    .end local v101           #e:Ljava/lang/Throwable;
    .end local v102           #epoMgr:Lcom/mediatek/common/epo/IMtkEpoClientManager;
    .restart local v47       #safeMode:Z
    :cond_23
    invoke-static {}, Ldalvik/system/VMRuntime;->getRuntime()Ldalvik/system/VMRuntime;

    move-result-object v7

    invoke-virtual {v7}, Ldalvik/system/VMRuntime;->startJitCompilation()V

    goto/16 :goto_47

    .line 1095
    :catch_3d
    move-exception v101

    .line 1096
    .restart local v101       #e:Ljava/lang/Throwable;
    const-string v7, "making Vibrator Service ready"

    move-object/from16 v0, p0

    move-object/from16 v1, v101

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_48

    .line 1101
    .end local v101           #e:Ljava/lang/Throwable;
    :catch_3e
    move-exception v101

    .line 1102
    .restart local v101       #e:Ljava/lang/Throwable;
    const-string v7, "making Lock Settings Service ready"

    move-object/from16 v0, p0

    move-object/from16 v1, v101

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_49

    .line 1108
    .end local v101           #e:Ljava/lang/Throwable;
    :catch_3f
    move-exception v101

    .line 1109
    .restart local v101       #e:Ljava/lang/Throwable;
    const-string v7, "making Device Policy Service ready"

    move-object/from16 v0, p0

    move-object/from16 v1, v101

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_4a

    .line 1116
    .end local v101           #e:Ljava/lang/Throwable;
    :catch_40
    move-exception v101

    .line 1117
    .restart local v101       #e:Ljava/lang/Throwable;
    const-string v7, "making Notification Service ready"

    move-object/from16 v0, p0

    move-object/from16 v1, v101

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_4b

    .line 1123
    .end local v101           #e:Ljava/lang/Throwable;
    :catch_41
    move-exception v101

    .line 1124
    .restart local v101       #e:Ljava/lang/Throwable;
    const-string v7, "making Window Manager Service ready"

    move-object/from16 v0, p0

    move-object/from16 v1, v101

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_4c

    .line 1142
    .end local v101           #e:Ljava/lang/Throwable;
    .restart local v87       #config:Landroid/content/res/Configuration;
    .restart local v119       #metrics:Landroid/util/DisplayMetrics;
    .restart local v164       #w:Landroid/view/WindowManager;
    :catch_42
    move-exception v101

    .line 1143
    .restart local v101       #e:Ljava/lang/Throwable;
    const-string v7, "making Power Manager Service ready"

    move-object/from16 v0, p0

    move-object/from16 v1, v101

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_4d

    .line 1148
    .end local v101           #e:Ljava/lang/Throwable;
    :catch_43
    move-exception v101

    .line 1149
    .restart local v101       #e:Ljava/lang/Throwable;
    const-string v7, "making Package Manager Service ready"

    move-object/from16 v0, p0

    move-object/from16 v1, v101

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_4e

    .line 1154
    .end local v101           #e:Ljava/lang/Throwable;
    :catch_44
    move-exception v101

    .line 1155
    .restart local v101       #e:Ljava/lang/Throwable;
    const-string v7, "making Display Manager Service ready"

    move-object/from16 v0, p0

    move-object/from16 v1, v101

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_4f

    .line 1347
    .end local v101           #e:Ljava/lang/Throwable;
    .end local v105           #fdm:Lcom/android/server/FrameworkDmService;
    .restart local v34       #contextF:Landroid/content/Context;
    .restart local v35       #mountServiceF:Lcom/android/server/MountService;
    .restart local v36       #batteryF:Lcom/android/server/BatteryService;
    .restart local v37       #networkManagementF:Lcom/android/server/NetworkManagementService;
    .restart local v38       #networkStatsF:Lcom/android/server/net/NetworkStatsService;
    .restart local v39       #networkPolicyF:Lcom/android/server/net/NetworkPolicyManagerService;
    .restart local v40       #connectivityF:Lcom/android/server/ConnectivityService;
    .restart local v41       #dockF:Lcom/android/server/DockObserver;
    .restart local v42       #usbF:Lcom/android/server/usb/UsbService;
    .restart local v43       #twilightF:Lcom/android/server/TwilightService;
    .restart local v44       #uiModeF:Lcom/android/server/UiModeManagerService;
    .restart local v45       #recognitionF:Lcom/android/server/RecognitionManagerService;
    .restart local v46       #appWidgetF:Lcom/android/server/AppWidgetService;
    .restart local v48       #wallpaperF:Lcom/android/server/WallpaperManagerService;
    .restart local v49       #immF:Lcom/android/server/InputMethodManagerService;
    .restart local v50       #statusBarF:Lcom/android/server/StatusBarManagerService;
    .restart local v51       #locationF:Lcom/android/server/LocationManagerService;
    .restart local v52       #countryDetectorF:Lcom/android/server/CountryDetectorService;
    .restart local v53       #throttleF:Lcom/android/server/ThrottleService;
    .restart local v54       #networkTimeUpdaterF:Lcom/android/server/NetworkTimeUpdateService;
    .restart local v55       #commonTimeMgmtServiceF:Lcom/android/server/CommonTimeManagementService;
    .restart local v56       #textServiceManagerServiceF:Lcom/android/server/TextServicesManagerService;
    .restart local v57       #dreamyF:Lcom/android/server/dreams/DreamManagerService;
    .restart local v58       #inputManagerF:Lcom/android/server/input/InputManagerService;
    .restart local v59       #telephonyRegistryF:Lcom/android/server/TelephonyRegistry;
    .restart local v60       #telephonyRegistryF2:Lcom/android/server/TelephonyRegistry;
    .restart local v61       #telephonyRegistryF3:Ljava/lang/Object;
    .restart local v62       #telephonyRegistryF4:Ljava/lang/Object;
    .restart local v63       #thermalF:Ljava/lang/Object;
    .restart local v69       #agent:Lcom/mediatek/common/dm/DmAgent;
    .restart local v77       #binder:Landroid/os/IBinder;
    .restart local v106       #fdm:Lcom/android/server/FrameworkDmService;
    .restart local v118       #locked:Z
    :cond_24
    const/4 v7, 0x0

    goto/16 :goto_50

    .line 1349
    .end local v106           #fdm:Lcom/android/server/FrameworkDmService;
    .restart local v105       #fdm:Lcom/android/server/FrameworkDmService;
    :cond_25
    :try_start_79
    const-string v7, "SystemServer"

    const-string v9, "status bar | notification | alarm is not initialized!"

    invoke-static {v7, v9}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_79
    .catch Ljava/lang/Exception; {:try_start_79 .. :try_end_79} :catch_45

    goto/16 :goto_51

    .line 1354
    .end local v69           #agent:Lcom/mediatek/common/dm/DmAgent;
    .end local v77           #binder:Landroid/os/IBinder;
    .end local v118           #locked:Z
    :catch_45
    move-exception v101

    .line 1355
    .local v101, e:Ljava/lang/Exception;
    :goto_6a
    const-string v7, "SystemServer"

    const-string v9, "status bar | notification | alarm is not initialized!"

    invoke-static {v7, v9}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_51

    .line 1352
    .end local v101           #e:Ljava/lang/Exception;
    .restart local v77       #binder:Landroid/os/IBinder;
    :cond_26
    :try_start_7a
    const-string v7, "SystemServer"

    const-string v9, "dm binder is null!"

    invoke-static {v7, v9}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_7a
    .catch Ljava/lang/Exception; {:try_start_7a .. :try_end_7a} :catch_45

    goto/16 :goto_51

    .line 409
    .end local v6           #lights:Lcom/android/server/LightsService;
    .end local v8           #battery:Lcom/android/server/BatteryService;
    .end local v15           #alarm:Lcom/android/server/AlarmManagerService;
    .end local v19           #inputManager:Lcom/android/server/input/InputManagerService;
    .end local v25           #networkPolicy:Lcom/android/server/net/NetworkPolicyManagerService;
    .end local v34           #contextF:Landroid/content/Context;
    .end local v35           #mountServiceF:Lcom/android/server/MountService;
    .end local v36           #batteryF:Lcom/android/server/BatteryService;
    .end local v37           #networkManagementF:Lcom/android/server/NetworkManagementService;
    .end local v38           #networkStatsF:Lcom/android/server/net/NetworkStatsService;
    .end local v39           #networkPolicyF:Lcom/android/server/net/NetworkPolicyManagerService;
    .end local v40           #connectivityF:Lcom/android/server/ConnectivityService;
    .end local v41           #dockF:Lcom/android/server/DockObserver;
    .end local v42           #usbF:Lcom/android/server/usb/UsbService;
    .end local v43           #twilightF:Lcom/android/server/TwilightService;
    .end local v44           #uiModeF:Lcom/android/server/UiModeManagerService;
    .end local v45           #recognitionF:Lcom/android/server/RecognitionManagerService;
    .end local v46           #appWidgetF:Lcom/android/server/AppWidgetService;
    .end local v47           #safeMode:Z
    .end local v48           #wallpaperF:Lcom/android/server/WallpaperManagerService;
    .end local v49           #immF:Lcom/android/server/InputMethodManagerService;
    .end local v50           #statusBarF:Lcom/android/server/StatusBarManagerService;
    .end local v51           #locationF:Lcom/android/server/LocationManagerService;
    .end local v52           #countryDetectorF:Lcom/android/server/CountryDetectorService;
    .end local v53           #throttleF:Lcom/android/server/ThrottleService;
    .end local v54           #networkTimeUpdaterF:Lcom/android/server/NetworkTimeUpdateService;
    .end local v55           #commonTimeMgmtServiceF:Lcom/android/server/CommonTimeManagementService;
    .end local v56           #textServiceManagerServiceF:Lcom/android/server/TextServicesManagerService;
    .end local v57           #dreamyF:Lcom/android/server/dreams/DreamManagerService;
    .end local v58           #inputManagerF:Lcom/android/server/input/InputManagerService;
    .end local v59           #telephonyRegistryF:Lcom/android/server/TelephonyRegistry;
    .end local v60           #telephonyRegistryF2:Lcom/android/server/TelephonyRegistry;
    .end local v61           #telephonyRegistryF3:Ljava/lang/Object;
    .end local v62           #telephonyRegistryF4:Ljava/lang/Object;
    .end local v63           #thermalF:Ljava/lang/Object;
    .end local v73           #appWidget:Lcom/android/server/AppWidgetService;
    .end local v77           #binder:Landroid/os/IBinder;
    .end local v87           #config:Landroid/content/res/Configuration;
    .end local v91           #countryDetector:Lcom/android/server/CountryDetectorService;
    .end local v94           #devicePolicy:Lcom/android/server/DevicePolicyManagerService;
    .end local v99           #dreamy:Lcom/android/server/dreams/DreamManagerService;
    .end local v108           #imm:Lcom/android/server/InputMethodManagerService;
    .end local v111           #installer:Lcom/android/server/pm/Installer;
    .end local v114           #location:Lcom/android/server/LocationManagerService;
    .end local v116           #lockSettings:Lcom/android/internal/widget/LockSettingsService;
    .end local v119           #metrics:Landroid/util/DisplayMetrics;
    .end local v127           #notification:Lcom/android/server/NotificationManagerService;
    .end local v129           #perfMgrNotifier:Lcom/android/server/PerfMgrStateNotifier;
    .end local v142           #statusBar:Lcom/android/server/StatusBarManagerService;
    .end local v146           #telephonyRegistry2:Lcom/android/server/TelephonyRegistry;
    .end local v150           #thermalMgr:Lcom/mediatek/common/thermal/MtkThermalSwitchManager;
    .end local v153           #tsms:Lcom/android/server/TextServicesManagerService;
    .end local v164           #w:Landroid/view/WindowManager;
    .end local v165           #wallpaper:Lcom/android/server/WallpaperManagerService;
    .restart local v72       #alarm:Lcom/android/server/AlarmManagerService;
    .restart local v76       #battery:Lcom/android/server/BatteryService;
    .restart local v93       #cryptState:Ljava/lang/String;
    .restart local v107       #firstBoot:Z
    .restart local v110       #inputManager:Lcom/android/server/input/InputManagerService;
    .restart local v112       #installer:Lcom/android/server/pm/Installer;
    .restart local v113       #lights:Lcom/android/server/LightsService;
    .restart local v123       #networkPolicy:Lcom/android/server/net/NetworkPolicyManagerService;
    .restart local v147       #telephonyRegistry2:Lcom/android/server/TelephonyRegistry;
    :catch_46
    move-exception v7

    goto/16 :goto_8

    .line 1354
    .end local v72           #alarm:Lcom/android/server/AlarmManagerService;
    .end local v76           #battery:Lcom/android/server/BatteryService;
    .end local v93           #cryptState:Ljava/lang/String;
    .end local v105           #fdm:Lcom/android/server/FrameworkDmService;
    .end local v107           #firstBoot:Z
    .end local v110           #inputManager:Lcom/android/server/input/InputManagerService;
    .end local v112           #installer:Lcom/android/server/pm/Installer;
    .end local v113           #lights:Lcom/android/server/LightsService;
    .end local v123           #networkPolicy:Lcom/android/server/net/NetworkPolicyManagerService;
    .end local v147           #telephonyRegistry2:Lcom/android/server/TelephonyRegistry;
    .restart local v6       #lights:Lcom/android/server/LightsService;
    .restart local v8       #battery:Lcom/android/server/BatteryService;
    .restart local v15       #alarm:Lcom/android/server/AlarmManagerService;
    .restart local v19       #inputManager:Lcom/android/server/input/InputManagerService;
    .restart local v25       #networkPolicy:Lcom/android/server/net/NetworkPolicyManagerService;
    .restart local v34       #contextF:Landroid/content/Context;
    .restart local v35       #mountServiceF:Lcom/android/server/MountService;
    .restart local v36       #batteryF:Lcom/android/server/BatteryService;
    .restart local v37       #networkManagementF:Lcom/android/server/NetworkManagementService;
    .restart local v38       #networkStatsF:Lcom/android/server/net/NetworkStatsService;
    .restart local v39       #networkPolicyF:Lcom/android/server/net/NetworkPolicyManagerService;
    .restart local v40       #connectivityF:Lcom/android/server/ConnectivityService;
    .restart local v41       #dockF:Lcom/android/server/DockObserver;
    .restart local v42       #usbF:Lcom/android/server/usb/UsbService;
    .restart local v43       #twilightF:Lcom/android/server/TwilightService;
    .restart local v44       #uiModeF:Lcom/android/server/UiModeManagerService;
    .restart local v45       #recognitionF:Lcom/android/server/RecognitionManagerService;
    .restart local v46       #appWidgetF:Lcom/android/server/AppWidgetService;
    .restart local v47       #safeMode:Z
    .restart local v48       #wallpaperF:Lcom/android/server/WallpaperManagerService;
    .restart local v49       #immF:Lcom/android/server/InputMethodManagerService;
    .restart local v50       #statusBarF:Lcom/android/server/StatusBarManagerService;
    .restart local v51       #locationF:Lcom/android/server/LocationManagerService;
    .restart local v52       #countryDetectorF:Lcom/android/server/CountryDetectorService;
    .restart local v53       #throttleF:Lcom/android/server/ThrottleService;
    .restart local v54       #networkTimeUpdaterF:Lcom/android/server/NetworkTimeUpdateService;
    .restart local v55       #commonTimeMgmtServiceF:Lcom/android/server/CommonTimeManagementService;
    .restart local v56       #textServiceManagerServiceF:Lcom/android/server/TextServicesManagerService;
    .restart local v57       #dreamyF:Lcom/android/server/dreams/DreamManagerService;
    .restart local v58       #inputManagerF:Lcom/android/server/input/InputManagerService;
    .restart local v59       #telephonyRegistryF:Lcom/android/server/TelephonyRegistry;
    .restart local v60       #telephonyRegistryF2:Lcom/android/server/TelephonyRegistry;
    .restart local v61       #telephonyRegistryF3:Ljava/lang/Object;
    .restart local v62       #telephonyRegistryF4:Ljava/lang/Object;
    .restart local v63       #thermalF:Ljava/lang/Object;
    .restart local v69       #agent:Lcom/mediatek/common/dm/DmAgent;
    .restart local v73       #appWidget:Lcom/android/server/AppWidgetService;
    .restart local v77       #binder:Landroid/os/IBinder;
    .restart local v87       #config:Landroid/content/res/Configuration;
    .restart local v91       #countryDetector:Lcom/android/server/CountryDetectorService;
    .restart local v94       #devicePolicy:Lcom/android/server/DevicePolicyManagerService;
    .restart local v99       #dreamy:Lcom/android/server/dreams/DreamManagerService;
    .restart local v106       #fdm:Lcom/android/server/FrameworkDmService;
    .restart local v108       #imm:Lcom/android/server/InputMethodManagerService;
    .restart local v111       #installer:Lcom/android/server/pm/Installer;
    .restart local v114       #location:Lcom/android/server/LocationManagerService;
    .restart local v116       #lockSettings:Lcom/android/internal/widget/LockSettingsService;
    .restart local v118       #locked:Z
    .restart local v119       #metrics:Landroid/util/DisplayMetrics;
    .restart local v127       #notification:Lcom/android/server/NotificationManagerService;
    .restart local v129       #perfMgrNotifier:Lcom/android/server/PerfMgrStateNotifier;
    .restart local v142       #statusBar:Lcom/android/server/StatusBarManagerService;
    .restart local v146       #telephonyRegistry2:Lcom/android/server/TelephonyRegistry;
    .restart local v150       #thermalMgr:Lcom/mediatek/common/thermal/MtkThermalSwitchManager;
    .restart local v153       #tsms:Lcom/android/server/TextServicesManagerService;
    .restart local v164       #w:Landroid/view/WindowManager;
    .restart local v165       #wallpaper:Lcom/android/server/WallpaperManagerService;
    :catch_47
    move-exception v101

    move-object/from16 v105, v106

    .end local v106           #fdm:Lcom/android/server/FrameworkDmService;
    .restart local v105       #fdm:Lcom/android/server/FrameworkDmService;
    goto :goto_6a

    .line 1066
    .end local v34           #contextF:Landroid/content/Context;
    .end local v35           #mountServiceF:Lcom/android/server/MountService;
    .end local v36           #batteryF:Lcom/android/server/BatteryService;
    .end local v37           #networkManagementF:Lcom/android/server/NetworkManagementService;
    .end local v38           #networkStatsF:Lcom/android/server/net/NetworkStatsService;
    .end local v39           #networkPolicyF:Lcom/android/server/net/NetworkPolicyManagerService;
    .end local v40           #connectivityF:Lcom/android/server/ConnectivityService;
    .end local v41           #dockF:Lcom/android/server/DockObserver;
    .end local v42           #usbF:Lcom/android/server/usb/UsbService;
    .end local v43           #twilightF:Lcom/android/server/TwilightService;
    .end local v44           #uiModeF:Lcom/android/server/UiModeManagerService;
    .end local v45           #recognitionF:Lcom/android/server/RecognitionManagerService;
    .end local v46           #appWidgetF:Lcom/android/server/AppWidgetService;
    .end local v47           #safeMode:Z
    .end local v48           #wallpaperF:Lcom/android/server/WallpaperManagerService;
    .end local v49           #immF:Lcom/android/server/InputMethodManagerService;
    .end local v50           #statusBarF:Lcom/android/server/StatusBarManagerService;
    .end local v51           #locationF:Lcom/android/server/LocationManagerService;
    .end local v52           #countryDetectorF:Lcom/android/server/CountryDetectorService;
    .end local v53           #throttleF:Lcom/android/server/ThrottleService;
    .end local v54           #networkTimeUpdaterF:Lcom/android/server/NetworkTimeUpdateService;
    .end local v55           #commonTimeMgmtServiceF:Lcom/android/server/CommonTimeManagementService;
    .end local v56           #textServiceManagerServiceF:Lcom/android/server/TextServicesManagerService;
    .end local v57           #dreamyF:Lcom/android/server/dreams/DreamManagerService;
    .end local v58           #inputManagerF:Lcom/android/server/input/InputManagerService;
    .end local v59           #telephonyRegistryF:Lcom/android/server/TelephonyRegistry;
    .end local v60           #telephonyRegistryF2:Lcom/android/server/TelephonyRegistry;
    .end local v61           #telephonyRegistryF3:Ljava/lang/Object;
    .end local v62           #telephonyRegistryF4:Ljava/lang/Object;
    .end local v63           #thermalF:Ljava/lang/Object;
    .end local v69           #agent:Lcom/mediatek/common/dm/DmAgent;
    .end local v77           #binder:Landroid/os/IBinder;
    .end local v87           #config:Landroid/content/res/Configuration;
    .end local v118           #locked:Z
    .end local v119           #metrics:Landroid/util/DisplayMetrics;
    .end local v129           #perfMgrNotifier:Lcom/android/server/PerfMgrStateNotifier;
    .end local v164           #w:Landroid/view/WindowManager;
    .restart local v70       #agpsMgr:Lcom/mediatek/common/agps/IMtkAgpsManager;
    .restart local v75       #audioProfileService:Lcom/mediatek/common/audioprofile/IAudioProfileService;
    .restart local v102       #epoMgr:Lcom/mediatek/common/epo/IMtkEpoClientManager;
    .restart local v130       #perfMgrNotifier:Lcom/android/server/PerfMgrStateNotifier;
    :catch_48
    move-exception v101

    move-object/from16 v129, v130

    .end local v130           #perfMgrNotifier:Lcom/android/server/PerfMgrStateNotifier;
    .restart local v129       #perfMgrNotifier:Lcom/android/server/PerfMgrStateNotifier;
    goto/16 :goto_69

    .line 1045
    .end local v99           #dreamy:Lcom/android/server/dreams/DreamManagerService;
    .restart local v100       #dreamy:Lcom/android/server/dreams/DreamManagerService;
    :catch_49
    move-exception v101

    move-object/from16 v99, v100

    .end local v100           #dreamy:Lcom/android/server/dreams/DreamManagerService;
    .restart local v99       #dreamy:Lcom/android/server/dreams/DreamManagerService;
    goto/16 :goto_68

    .line 1027
    .end local v85           #commonTimeMgmtService:Lcom/android/server/CommonTimeManagementService;
    .restart local v86       #commonTimeMgmtService:Lcom/android/server/CommonTimeManagementService;
    :catch_4a
    move-exception v101

    move-object/from16 v85, v86

    .end local v86           #commonTimeMgmtService:Lcom/android/server/CommonTimeManagementService;
    .restart local v85       #commonTimeMgmtService:Lcom/android/server/CommonTimeManagementService;
    goto/16 :goto_67

    .line 927
    .end local v70           #agpsMgr:Lcom/mediatek/common/agps/IMtkAgpsManager;
    .end local v73           #appWidget:Lcom/android/server/AppWidgetService;
    .end local v102           #epoMgr:Lcom/mediatek/common/epo/IMtkEpoClientManager;
    .restart local v74       #appWidget:Lcom/android/server/AppWidgetService;
    :catch_4b
    move-exception v101

    move-object/from16 v73, v74

    .end local v74           #appWidget:Lcom/android/server/AppWidgetService;
    .restart local v73       #appWidget:Lcom/android/server/AppWidgetService;
    goto/16 :goto_66

    .line 896
    .end local v138           #serial:Lcom/android/server/SerialService;
    .restart local v139       #serial:Lcom/android/server/SerialService;
    :catch_4c
    move-exception v101

    move-object/from16 v138, v139

    .end local v139           #serial:Lcom/android/server/SerialService;
    .restart local v138       #serial:Lcom/android/server/SerialService;
    goto/16 :goto_65

    .line 887
    .end local v160           #usb:Lcom/android/server/usb/UsbService;
    .restart local v161       #usb:Lcom/android/server/usb/UsbService;
    :catch_4d
    move-exception v101

    move-object/from16 v160, v161

    .end local v161           #usb:Lcom/android/server/usb/UsbService;
    .restart local v160       #usb:Lcom/android/server/usb/UsbService;
    goto/16 :goto_64

    .line 829
    .end local v75           #audioProfileService:Lcom/mediatek/common/audioprofile/IAudioProfileService;
    .end local v165           #wallpaper:Lcom/android/server/WallpaperManagerService;
    .restart local v166       #wallpaper:Lcom/android/server/WallpaperManagerService;
    :catch_4e
    move-exception v101

    move-object/from16 v165, v166

    .end local v166           #wallpaper:Lcom/android/server/WallpaperManagerService;
    .restart local v165       #wallpaper:Lcom/android/server/WallpaperManagerService;
    goto/16 :goto_63

    .line 781
    .end local v91           #countryDetector:Lcom/android/server/CountryDetectorService;
    .restart local v92       #countryDetector:Lcom/android/server/CountryDetectorService;
    :catch_4f
    move-exception v101

    move-object/from16 v91, v92

    .end local v92           #countryDetector:Lcom/android/server/CountryDetectorService;
    .restart local v91       #countryDetector:Lcom/android/server/CountryDetectorService;
    goto/16 :goto_62

    .line 773
    .end local v114           #location:Lcom/android/server/LocationManagerService;
    .restart local v115       #location:Lcom/android/server/LocationManagerService;
    :catch_50
    move-exception v101

    move-object/from16 v114, v115

    .end local v115           #location:Lcom/android/server/LocationManagerService;
    .restart local v114       #location:Lcom/android/server/LocationManagerService;
    goto/16 :goto_61

    .line 757
    .end local v127           #notification:Lcom/android/server/NotificationManagerService;
    .restart local v128       #notification:Lcom/android/server/NotificationManagerService;
    :catch_51
    move-exception v101

    move-object/from16 v127, v128

    .end local v128           #notification:Lcom/android/server/NotificationManagerService;
    .restart local v127       #notification:Lcom/android/server/NotificationManagerService;
    goto/16 :goto_60

    .line 717
    .end local v151           #throttle:Lcom/android/server/ThrottleService;
    .restart local v152       #throttle:Lcom/android/server/ThrottleService;
    :catch_52
    move-exception v101

    move-object/from16 v151, v152

    .end local v152           #throttle:Lcom/android/server/ThrottleService;
    .restart local v151       #throttle:Lcom/android/server/ThrottleService;
    goto/16 :goto_5f

    .line 699
    .end local v88           #connectivity:Lcom/android/server/ConnectivityService;
    .restart local v89       #connectivity:Lcom/android/server/ConnectivityService;
    :catch_53
    move-exception v101

    move-object/from16 v88, v89

    .end local v89           #connectivity:Lcom/android/server/ConnectivityService;
    .restart local v88       #connectivity:Lcom/android/server/ConnectivityService;
    goto/16 :goto_5e

    .line 686
    .end local v167           #wifi:Lcom/android/server/WifiService;
    .restart local v168       #wifi:Lcom/android/server/WifiService;
    :catch_54
    move-exception v101

    move-object/from16 v167, v168

    .end local v168           #wifi:Lcom/android/server/WifiService;
    .restart local v167       #wifi:Lcom/android/server/WifiService;
    goto/16 :goto_5d

    .line 678
    .end local v169           #wifiP2p:Landroid/net/wifi/p2p/WifiP2pService;
    .restart local v170       #wifiP2p:Landroid/net/wifi/p2p/WifiP2pService;
    :catch_55
    move-exception v101

    move-object/from16 v169, v170

    .end local v170           #wifiP2p:Landroid/net/wifi/p2p/WifiP2pService;
    .restart local v169       #wifiP2p:Landroid/net/wifi/p2p/WifiP2pService;
    goto/16 :goto_5c

    .line 670
    :catch_56
    move-exception v101

    goto/16 :goto_5b

    .line 660
    .end local v25           #networkPolicy:Lcom/android/server/net/NetworkPolicyManagerService;
    .end local v29           #networkStats:Lcom/android/server/net/NetworkStatsService;
    .restart local v123       #networkPolicy:Lcom/android/server/net/NetworkPolicyManagerService;
    .restart local v124       #networkStats:Lcom/android/server/net/NetworkStatsService;
    :catch_57
    move-exception v101

    move-object/from16 v29, v124

    .end local v124           #networkStats:Lcom/android/server/net/NetworkStatsService;
    .restart local v29       #networkStats:Lcom/android/server/net/NetworkStatsService;
    goto/16 :goto_5a

    .line 652
    .end local v153           #tsms:Lcom/android/server/TextServicesManagerService;
    .restart local v154       #tsms:Lcom/android/server/TextServicesManagerService;
    :catch_58
    move-exception v101

    move-object/from16 v153, v154

    .end local v154           #tsms:Lcom/android/server/TextServicesManagerService;
    .restart local v153       #tsms:Lcom/android/server/TextServicesManagerService;
    goto/16 :goto_59

    .line 628
    .end local v142           #statusBar:Lcom/android/server/StatusBarManagerService;
    .restart local v143       #statusBar:Lcom/android/server/StatusBarManagerService;
    :catch_59
    move-exception v101

    move-object/from16 v142, v143

    .end local v143           #statusBar:Lcom/android/server/StatusBarManagerService;
    .restart local v142       #statusBar:Lcom/android/server/StatusBarManagerService;
    goto/16 :goto_58

    .line 620
    .end local v94           #devicePolicy:Lcom/android/server/DevicePolicyManagerService;
    .restart local v95       #devicePolicy:Lcom/android/server/DevicePolicyManagerService;
    :catch_5a
    move-exception v101

    move-object/from16 v94, v95

    .end local v95           #devicePolicy:Lcom/android/server/DevicePolicyManagerService;
    .restart local v94       #devicePolicy:Lcom/android/server/DevicePolicyManagerService;
    goto/16 :goto_57

    .line 612
    .end local v116           #lockSettings:Lcom/android/internal/widget/LockSettingsService;
    .restart local v117       #lockSettings:Lcom/android/internal/widget/LockSettingsService;
    :catch_5b
    move-exception v101

    move-object/from16 v116, v117

    .end local v117           #lockSettings:Lcom/android/internal/widget/LockSettingsService;
    .restart local v116       #lockSettings:Lcom/android/internal/widget/LockSettingsService;
    goto/16 :goto_56

    .line 603
    .end local v120           #mountService:Lcom/android/server/MountService;
    .restart local v121       #mountService:Lcom/android/server/MountService;
    :catch_5c
    move-exception v101

    move-object/from16 v120, v121

    .end local v121           #mountService:Lcom/android/server/MountService;
    .restart local v120       #mountService:Lcom/android/server/MountService;
    goto/16 :goto_55

    .line 590
    :catch_5d
    move-exception v7

    goto/16 :goto_13

    .line 560
    .end local v108           #imm:Lcom/android/server/InputMethodManagerService;
    .restart local v109       #imm:Lcom/android/server/InputMethodManagerService;
    :catch_5e
    move-exception v101

    move-object/from16 v108, v109

    .end local v109           #imm:Lcom/android/server/InputMethodManagerService;
    .restart local v108       #imm:Lcom/android/server/InputMethodManagerService;
    goto/16 :goto_54

    .line 535
    .end local v4           #power:Lcom/android/server/power/PowerManagerService;
    .end local v6           #lights:Lcom/android/server/LightsService;
    .end local v8           #battery:Lcom/android/server/BatteryService;
    .end local v10           #display:Lcom/android/server/display/DisplayManagerService;
    .end local v15           #alarm:Lcom/android/server/AlarmManagerService;
    .end local v19           #inputManager:Lcom/android/server/input/InputManagerService;
    .end local v73           #appWidget:Lcom/android/server/AppWidgetService;
    .end local v91           #countryDetector:Lcom/android/server/CountryDetectorService;
    .end local v94           #devicePolicy:Lcom/android/server/DevicePolicyManagerService;
    .end local v99           #dreamy:Lcom/android/server/dreams/DreamManagerService;
    .end local v108           #imm:Lcom/android/server/InputMethodManagerService;
    .end local v114           #location:Lcom/android/server/LocationManagerService;
    .end local v116           #lockSettings:Lcom/android/internal/widget/LockSettingsService;
    .end local v127           #notification:Lcom/android/server/NotificationManagerService;
    .end local v129           #perfMgrNotifier:Lcom/android/server/PerfMgrStateNotifier;
    .end local v142           #statusBar:Lcom/android/server/StatusBarManagerService;
    .end local v150           #thermalMgr:Lcom/mediatek/common/thermal/MtkThermalSwitchManager;
    .end local v153           #tsms:Lcom/android/server/TextServicesManagerService;
    .end local v165           #wallpaper:Lcom/android/server/WallpaperManagerService;
    .restart local v72       #alarm:Lcom/android/server/AlarmManagerService;
    .restart local v76       #battery:Lcom/android/server/BatteryService;
    .restart local v96       #display:Lcom/android/server/display/DisplayManagerService;
    .restart local v110       #inputManager:Lcom/android/server/input/InputManagerService;
    .restart local v113       #lights:Lcom/android/server/LightsService;
    .restart local v132       #power:Lcom/android/server/power/PowerManagerService;
    :catch_5f
    move-exception v101

    move-object/from16 v19, v110

    .end local v110           #inputManager:Lcom/android/server/input/InputManagerService;
    .restart local v19       #inputManager:Lcom/android/server/input/InputManagerService;
    move-object/from16 v15, v72

    .end local v72           #alarm:Lcom/android/server/AlarmManagerService;
    .restart local v15       #alarm:Lcom/android/server/AlarmManagerService;
    move-object/from16 v8, v76

    .end local v76           #battery:Lcom/android/server/BatteryService;
    .restart local v8       #battery:Lcom/android/server/BatteryService;
    move-object/from16 v10, v96

    .end local v96           #display:Lcom/android/server/display/DisplayManagerService;
    .restart local v10       #display:Lcom/android/server/display/DisplayManagerService;
    move-object/from16 v4, v132

    .end local v132           #power:Lcom/android/server/power/PowerManagerService;
    .restart local v4       #power:Lcom/android/server/power/PowerManagerService;
    move-object/from16 v6, v113

    .end local v113           #lights:Lcom/android/server/LightsService;
    .restart local v6       #lights:Lcom/android/server/LightsService;
    goto/16 :goto_52

    .end local v6           #lights:Lcom/android/server/LightsService;
    .end local v8           #battery:Lcom/android/server/BatteryService;
    .end local v10           #display:Lcom/android/server/display/DisplayManagerService;
    .end local v15           #alarm:Lcom/android/server/AlarmManagerService;
    .end local v19           #inputManager:Lcom/android/server/input/InputManagerService;
    .end local v111           #installer:Lcom/android/server/pm/Installer;
    .restart local v72       #alarm:Lcom/android/server/AlarmManagerService;
    .restart local v76       #battery:Lcom/android/server/BatteryService;
    .restart local v96       #display:Lcom/android/server/display/DisplayManagerService;
    .restart local v110       #inputManager:Lcom/android/server/input/InputManagerService;
    .restart local v112       #installer:Lcom/android/server/pm/Installer;
    .restart local v113       #lights:Lcom/android/server/LightsService;
    :catch_60
    move-exception v101

    move-object/from16 v19, v110

    .end local v110           #inputManager:Lcom/android/server/input/InputManagerService;
    .restart local v19       #inputManager:Lcom/android/server/input/InputManagerService;
    move-object/from16 v15, v72

    .end local v72           #alarm:Lcom/android/server/AlarmManagerService;
    .restart local v15       #alarm:Lcom/android/server/AlarmManagerService;
    move-object/from16 v8, v76

    .end local v76           #battery:Lcom/android/server/BatteryService;
    .restart local v8       #battery:Lcom/android/server/BatteryService;
    move-object/from16 v10, v96

    .end local v96           #display:Lcom/android/server/display/DisplayManagerService;
    .restart local v10       #display:Lcom/android/server/display/DisplayManagerService;
    move-object/from16 v6, v113

    .end local v113           #lights:Lcom/android/server/LightsService;
    .restart local v6       #lights:Lcom/android/server/LightsService;
    move-object/from16 v111, v112

    .end local v112           #installer:Lcom/android/server/pm/Installer;
    .restart local v111       #installer:Lcom/android/server/pm/Installer;
    goto/16 :goto_52

    .end local v6           #lights:Lcom/android/server/LightsService;
    .end local v8           #battery:Lcom/android/server/BatteryService;
    .end local v15           #alarm:Lcom/android/server/AlarmManagerService;
    .end local v19           #inputManager:Lcom/android/server/input/InputManagerService;
    .end local v111           #installer:Lcom/android/server/pm/Installer;
    .restart local v72       #alarm:Lcom/android/server/AlarmManagerService;
    .restart local v76       #battery:Lcom/android/server/BatteryService;
    .restart local v110       #inputManager:Lcom/android/server/input/InputManagerService;
    .restart local v112       #installer:Lcom/android/server/pm/Installer;
    .restart local v113       #lights:Lcom/android/server/LightsService;
    :catch_61
    move-exception v101

    move-object/from16 v19, v110

    .end local v110           #inputManager:Lcom/android/server/input/InputManagerService;
    .restart local v19       #inputManager:Lcom/android/server/input/InputManagerService;
    move-object/from16 v15, v72

    .end local v72           #alarm:Lcom/android/server/AlarmManagerService;
    .restart local v15       #alarm:Lcom/android/server/AlarmManagerService;
    move-object/from16 v8, v76

    .end local v76           #battery:Lcom/android/server/BatteryService;
    .restart local v8       #battery:Lcom/android/server/BatteryService;
    move-object/from16 v6, v113

    .end local v113           #lights:Lcom/android/server/LightsService;
    .restart local v6       #lights:Lcom/android/server/LightsService;
    move-object/from16 v111, v112

    .end local v112           #installer:Lcom/android/server/pm/Installer;
    .restart local v111       #installer:Lcom/android/server/pm/Installer;
    goto/16 :goto_52

    .end local v6           #lights:Lcom/android/server/LightsService;
    .end local v8           #battery:Lcom/android/server/BatteryService;
    .end local v15           #alarm:Lcom/android/server/AlarmManagerService;
    .end local v19           #inputManager:Lcom/android/server/input/InputManagerService;
    .end local v67           #accountManager:Landroid/accounts/AccountManagerService;
    .end local v111           #installer:Lcom/android/server/pm/Installer;
    .end local v146           #telephonyRegistry2:Lcom/android/server/TelephonyRegistry;
    .restart local v68       #accountManager:Landroid/accounts/AccountManagerService;
    .restart local v72       #alarm:Lcom/android/server/AlarmManagerService;
    .restart local v76       #battery:Lcom/android/server/BatteryService;
    .restart local v93       #cryptState:Ljava/lang/String;
    .restart local v107       #firstBoot:Z
    .restart local v110       #inputManager:Lcom/android/server/input/InputManagerService;
    .restart local v112       #installer:Lcom/android/server/pm/Installer;
    .restart local v113       #lights:Lcom/android/server/LightsService;
    .restart local v147       #telephonyRegistry2:Lcom/android/server/TelephonyRegistry;
    :catch_62
    move-exception v101

    move-object/from16 v146, v147

    .end local v147           #telephonyRegistry2:Lcom/android/server/TelephonyRegistry;
    .restart local v146       #telephonyRegistry2:Lcom/android/server/TelephonyRegistry;
    move-object/from16 v19, v110

    .end local v110           #inputManager:Lcom/android/server/input/InputManagerService;
    .restart local v19       #inputManager:Lcom/android/server/input/InputManagerService;
    move-object/from16 v15, v72

    .end local v72           #alarm:Lcom/android/server/AlarmManagerService;
    .restart local v15       #alarm:Lcom/android/server/AlarmManagerService;
    move-object/from16 v8, v76

    .end local v76           #battery:Lcom/android/server/BatteryService;
    .restart local v8       #battery:Lcom/android/server/BatteryService;
    move-object/from16 v6, v113

    .end local v113           #lights:Lcom/android/server/LightsService;
    .restart local v6       #lights:Lcom/android/server/LightsService;
    move-object/from16 v67, v68

    .end local v68           #accountManager:Landroid/accounts/AccountManagerService;
    .restart local v67       #accountManager:Landroid/accounts/AccountManagerService;
    move-object/from16 v111, v112

    .end local v112           #installer:Lcom/android/server/pm/Installer;
    .restart local v111       #installer:Lcom/android/server/pm/Installer;
    goto/16 :goto_52

    .end local v8           #battery:Lcom/android/server/BatteryService;
    .end local v15           #alarm:Lcom/android/server/AlarmManagerService;
    .end local v19           #inputManager:Lcom/android/server/input/InputManagerService;
    .end local v111           #installer:Lcom/android/server/pm/Installer;
    .end local v146           #telephonyRegistry2:Lcom/android/server/TelephonyRegistry;
    .restart local v72       #alarm:Lcom/android/server/AlarmManagerService;
    .restart local v76       #battery:Lcom/android/server/BatteryService;
    .restart local v110       #inputManager:Lcom/android/server/input/InputManagerService;
    .restart local v112       #installer:Lcom/android/server/pm/Installer;
    .restart local v147       #telephonyRegistry2:Lcom/android/server/TelephonyRegistry;
    :catch_63
    move-exception v101

    move-object/from16 v146, v147

    .end local v147           #telephonyRegistry2:Lcom/android/server/TelephonyRegistry;
    .restart local v146       #telephonyRegistry2:Lcom/android/server/TelephonyRegistry;
    move-object/from16 v19, v110

    .end local v110           #inputManager:Lcom/android/server/input/InputManagerService;
    .restart local v19       #inputManager:Lcom/android/server/input/InputManagerService;
    move-object/from16 v15, v72

    .end local v72           #alarm:Lcom/android/server/AlarmManagerService;
    .restart local v15       #alarm:Lcom/android/server/AlarmManagerService;
    move-object/from16 v8, v76

    .end local v76           #battery:Lcom/android/server/BatteryService;
    .restart local v8       #battery:Lcom/android/server/BatteryService;
    move-object/from16 v111, v112

    .end local v112           #installer:Lcom/android/server/pm/Installer;
    .restart local v111       #installer:Lcom/android/server/pm/Installer;
    goto/16 :goto_52

    .end local v15           #alarm:Lcom/android/server/AlarmManagerService;
    .end local v19           #inputManager:Lcom/android/server/input/InputManagerService;
    .end local v111           #installer:Lcom/android/server/pm/Installer;
    .end local v146           #telephonyRegistry2:Lcom/android/server/TelephonyRegistry;
    .restart local v72       #alarm:Lcom/android/server/AlarmManagerService;
    .restart local v110       #inputManager:Lcom/android/server/input/InputManagerService;
    .restart local v112       #installer:Lcom/android/server/pm/Installer;
    .restart local v147       #telephonyRegistry2:Lcom/android/server/TelephonyRegistry;
    :catch_64
    move-exception v101

    move-object/from16 v146, v147

    .end local v147           #telephonyRegistry2:Lcom/android/server/TelephonyRegistry;
    .restart local v146       #telephonyRegistry2:Lcom/android/server/TelephonyRegistry;
    move-object/from16 v19, v110

    .end local v110           #inputManager:Lcom/android/server/input/InputManagerService;
    .restart local v19       #inputManager:Lcom/android/server/input/InputManagerService;
    move-object/from16 v15, v72

    .end local v72           #alarm:Lcom/android/server/AlarmManagerService;
    .restart local v15       #alarm:Lcom/android/server/AlarmManagerService;
    move-object/from16 v111, v112

    .end local v112           #installer:Lcom/android/server/pm/Installer;
    .restart local v111       #installer:Lcom/android/server/pm/Installer;
    goto/16 :goto_52

    .end local v15           #alarm:Lcom/android/server/AlarmManagerService;
    .end local v19           #inputManager:Lcom/android/server/input/InputManagerService;
    .end local v111           #installer:Lcom/android/server/pm/Installer;
    .end local v146           #telephonyRegistry2:Lcom/android/server/TelephonyRegistry;
    .end local v162           #vibrator:Lcom/android/server/VibratorService;
    .restart local v72       #alarm:Lcom/android/server/AlarmManagerService;
    .restart local v110       #inputManager:Lcom/android/server/input/InputManagerService;
    .restart local v112       #installer:Lcom/android/server/pm/Installer;
    .restart local v147       #telephonyRegistry2:Lcom/android/server/TelephonyRegistry;
    .restart local v163       #vibrator:Lcom/android/server/VibratorService;
    :catch_65
    move-exception v101

    move-object/from16 v146, v147

    .end local v147           #telephonyRegistry2:Lcom/android/server/TelephonyRegistry;
    .restart local v146       #telephonyRegistry2:Lcom/android/server/TelephonyRegistry;
    move-object/from16 v19, v110

    .end local v110           #inputManager:Lcom/android/server/input/InputManagerService;
    .restart local v19       #inputManager:Lcom/android/server/input/InputManagerService;
    move-object/from16 v15, v72

    .end local v72           #alarm:Lcom/android/server/AlarmManagerService;
    .restart local v15       #alarm:Lcom/android/server/AlarmManagerService;
    move-object/from16 v162, v163

    .end local v163           #vibrator:Lcom/android/server/VibratorService;
    .restart local v162       #vibrator:Lcom/android/server/VibratorService;
    move-object/from16 v111, v112

    .end local v112           #installer:Lcom/android/server/pm/Installer;
    .restart local v111       #installer:Lcom/android/server/pm/Installer;
    goto/16 :goto_52

    .end local v19           #inputManager:Lcom/android/server/input/InputManagerService;
    .end local v111           #installer:Lcom/android/server/pm/Installer;
    .end local v146           #telephonyRegistry2:Lcom/android/server/TelephonyRegistry;
    .end local v162           #vibrator:Lcom/android/server/VibratorService;
    .restart local v110       #inputManager:Lcom/android/server/input/InputManagerService;
    .restart local v112       #installer:Lcom/android/server/pm/Installer;
    .restart local v147       #telephonyRegistry2:Lcom/android/server/TelephonyRegistry;
    .restart local v163       #vibrator:Lcom/android/server/VibratorService;
    :catch_66
    move-exception v101

    move-object/from16 v146, v147

    .end local v147           #telephonyRegistry2:Lcom/android/server/TelephonyRegistry;
    .restart local v146       #telephonyRegistry2:Lcom/android/server/TelephonyRegistry;
    move-object/from16 v19, v110

    .end local v110           #inputManager:Lcom/android/server/input/InputManagerService;
    .restart local v19       #inputManager:Lcom/android/server/input/InputManagerService;
    move-object/from16 v162, v163

    .end local v163           #vibrator:Lcom/android/server/VibratorService;
    .restart local v162       #vibrator:Lcom/android/server/VibratorService;
    move-object/from16 v111, v112

    .end local v112           #installer:Lcom/android/server/pm/Installer;
    .restart local v111       #installer:Lcom/android/server/pm/Installer;
    goto/16 :goto_52

    .end local v78           #bluetooth:Landroid/server/BluetoothService;
    .end local v111           #installer:Lcom/android/server/pm/Installer;
    .end local v146           #telephonyRegistry2:Lcom/android/server/TelephonyRegistry;
    .end local v162           #vibrator:Lcom/android/server/VibratorService;
    .restart local v79       #bluetooth:Landroid/server/BluetoothService;
    .restart local v112       #installer:Lcom/android/server/pm/Installer;
    .restart local v147       #telephonyRegistry2:Lcom/android/server/TelephonyRegistry;
    .restart local v163       #vibrator:Lcom/android/server/VibratorService;
    :catch_67
    move-exception v101

    move-object/from16 v146, v147

    .end local v147           #telephonyRegistry2:Lcom/android/server/TelephonyRegistry;
    .restart local v146       #telephonyRegistry2:Lcom/android/server/TelephonyRegistry;
    move-object/from16 v78, v79

    .end local v79           #bluetooth:Landroid/server/BluetoothService;
    .restart local v78       #bluetooth:Landroid/server/BluetoothService;
    move-object/from16 v162, v163

    .end local v163           #vibrator:Lcom/android/server/VibratorService;
    .restart local v162       #vibrator:Lcom/android/server/VibratorService;
    move-object/from16 v111, v112

    .end local v112           #installer:Lcom/android/server/pm/Installer;
    .restart local v111       #installer:Lcom/android/server/pm/Installer;
    goto/16 :goto_52

    .end local v78           #bluetooth:Landroid/server/BluetoothService;
    .end local v80           #bluetoothA2dp:Landroid/server/BluetoothA2dpService;
    .end local v111           #installer:Lcom/android/server/pm/Installer;
    .end local v146           #telephonyRegistry2:Lcom/android/server/TelephonyRegistry;
    .end local v162           #vibrator:Lcom/android/server/VibratorService;
    .restart local v79       #bluetooth:Landroid/server/BluetoothService;
    .restart local v81       #bluetoothA2dp:Landroid/server/BluetoothA2dpService;
    .restart local v112       #installer:Lcom/android/server/pm/Installer;
    .restart local v147       #telephonyRegistry2:Lcom/android/server/TelephonyRegistry;
    .restart local v163       #vibrator:Lcom/android/server/VibratorService;
    :catch_68
    move-exception v101

    move-object/from16 v146, v147

    .end local v147           #telephonyRegistry2:Lcom/android/server/TelephonyRegistry;
    .restart local v146       #telephonyRegistry2:Lcom/android/server/TelephonyRegistry;
    move-object/from16 v80, v81

    .end local v81           #bluetoothA2dp:Landroid/server/BluetoothA2dpService;
    .restart local v80       #bluetoothA2dp:Landroid/server/BluetoothA2dpService;
    move-object/from16 v78, v79

    .end local v79           #bluetooth:Landroid/server/BluetoothService;
    .restart local v78       #bluetooth:Landroid/server/BluetoothService;
    move-object/from16 v162, v163

    .end local v163           #vibrator:Lcom/android/server/VibratorService;
    .restart local v162       #vibrator:Lcom/android/server/VibratorService;
    move-object/from16 v111, v112

    .end local v112           #installer:Lcom/android/server/pm/Installer;
    .restart local v111       #installer:Lcom/android/server/pm/Installer;
    goto/16 :goto_52

    .end local v78           #bluetooth:Landroid/server/BluetoothService;
    .end local v83           #bluetoothSocket:Landroid/server/BluetoothSocketService;
    .end local v111           #installer:Lcom/android/server/pm/Installer;
    .end local v146           #telephonyRegistry2:Lcom/android/server/TelephonyRegistry;
    .end local v162           #vibrator:Lcom/android/server/VibratorService;
    .restart local v79       #bluetooth:Landroid/server/BluetoothService;
    .restart local v84       #bluetoothSocket:Landroid/server/BluetoothSocketService;
    .restart local v112       #installer:Lcom/android/server/pm/Installer;
    .restart local v147       #telephonyRegistry2:Lcom/android/server/TelephonyRegistry;
    .restart local v163       #vibrator:Lcom/android/server/VibratorService;
    :catch_69
    move-exception v101

    move-object/from16 v146, v147

    .end local v147           #telephonyRegistry2:Lcom/android/server/TelephonyRegistry;
    .restart local v146       #telephonyRegistry2:Lcom/android/server/TelephonyRegistry;
    move-object/from16 v83, v84

    .end local v84           #bluetoothSocket:Landroid/server/BluetoothSocketService;
    .restart local v83       #bluetoothSocket:Landroid/server/BluetoothSocketService;
    move-object/from16 v78, v79

    .end local v79           #bluetooth:Landroid/server/BluetoothService;
    .restart local v78       #bluetooth:Landroid/server/BluetoothService;
    move-object/from16 v162, v163

    .end local v163           #vibrator:Lcom/android/server/VibratorService;
    .restart local v162       #vibrator:Lcom/android/server/VibratorService;
    move-object/from16 v111, v112

    .end local v112           #installer:Lcom/android/server/pm/Installer;
    .restart local v111       #installer:Lcom/android/server/pm/Installer;
    goto/16 :goto_52

    .end local v64           #BluetoothProfileManager:Landroid/server/BluetoothProfileManagerService;
    .end local v78           #bluetooth:Landroid/server/BluetoothService;
    .end local v83           #bluetoothSocket:Landroid/server/BluetoothSocketService;
    .end local v111           #installer:Lcom/android/server/pm/Installer;
    .end local v146           #telephonyRegistry2:Lcom/android/server/TelephonyRegistry;
    .end local v162           #vibrator:Lcom/android/server/VibratorService;
    .restart local v65       #BluetoothProfileManager:Landroid/server/BluetoothProfileManagerService;
    .restart local v79       #bluetooth:Landroid/server/BluetoothService;
    .restart local v84       #bluetoothSocket:Landroid/server/BluetoothSocketService;
    .restart local v112       #installer:Lcom/android/server/pm/Installer;
    .restart local v147       #telephonyRegistry2:Lcom/android/server/TelephonyRegistry;
    .restart local v163       #vibrator:Lcom/android/server/VibratorService;
    :catch_6a
    move-exception v101

    move-object/from16 v146, v147

    .end local v147           #telephonyRegistry2:Lcom/android/server/TelephonyRegistry;
    .restart local v146       #telephonyRegistry2:Lcom/android/server/TelephonyRegistry;
    move-object/from16 v64, v65

    .end local v65           #BluetoothProfileManager:Landroid/server/BluetoothProfileManagerService;
    .restart local v64       #BluetoothProfileManager:Landroid/server/BluetoothProfileManagerService;
    move-object/from16 v83, v84

    .end local v84           #bluetoothSocket:Landroid/server/BluetoothSocketService;
    .restart local v83       #bluetoothSocket:Landroid/server/BluetoothSocketService;
    move-object/from16 v78, v79

    .end local v79           #bluetooth:Landroid/server/BluetoothService;
    .restart local v78       #bluetooth:Landroid/server/BluetoothService;
    move-object/from16 v162, v163

    .end local v163           #vibrator:Lcom/android/server/VibratorService;
    .restart local v162       #vibrator:Lcom/android/server/VibratorService;
    move-object/from16 v111, v112

    .end local v112           #installer:Lcom/android/server/pm/Installer;
    .restart local v111       #installer:Lcom/android/server/pm/Installer;
    goto/16 :goto_52

    .line 426
    .end local v6           #lights:Lcom/android/server/LightsService;
    .end local v8           #battery:Lcom/android/server/BatteryService;
    .end local v15           #alarm:Lcom/android/server/AlarmManagerService;
    .end local v19           #inputManager:Lcom/android/server/input/InputManagerService;
    .end local v67           #accountManager:Landroid/accounts/AccountManagerService;
    .end local v111           #installer:Lcom/android/server/pm/Installer;
    .end local v146           #telephonyRegistry2:Lcom/android/server/TelephonyRegistry;
    .restart local v68       #accountManager:Landroid/accounts/AccountManagerService;
    .restart local v72       #alarm:Lcom/android/server/AlarmManagerService;
    .restart local v76       #battery:Lcom/android/server/BatteryService;
    .restart local v110       #inputManager:Lcom/android/server/input/InputManagerService;
    .restart local v112       #installer:Lcom/android/server/pm/Installer;
    .restart local v113       #lights:Lcom/android/server/LightsService;
    .restart local v147       #telephonyRegistry2:Lcom/android/server/TelephonyRegistry;
    :catch_6b
    move-exception v101

    move-object/from16 v67, v68

    .end local v68           #accountManager:Landroid/accounts/AccountManagerService;
    .restart local v67       #accountManager:Landroid/accounts/AccountManagerService;
    goto/16 :goto_53

    .end local v72           #alarm:Lcom/android/server/AlarmManagerService;
    .end local v76           #battery:Lcom/android/server/BatteryService;
    .end local v93           #cryptState:Ljava/lang/String;
    .end local v107           #firstBoot:Z
    .end local v110           #inputManager:Lcom/android/server/input/InputManagerService;
    .end local v112           #installer:Lcom/android/server/pm/Installer;
    .end local v113           #lights:Lcom/android/server/LightsService;
    .end local v147           #telephonyRegistry2:Lcom/android/server/TelephonyRegistry;
    .restart local v6       #lights:Lcom/android/server/LightsService;
    .restart local v8       #battery:Lcom/android/server/BatteryService;
    .restart local v15       #alarm:Lcom/android/server/AlarmManagerService;
    .restart local v19       #inputManager:Lcom/android/server/input/InputManagerService;
    .restart local v73       #appWidget:Lcom/android/server/AppWidgetService;
    .restart local v91       #countryDetector:Lcom/android/server/CountryDetectorService;
    .restart local v94       #devicePolicy:Lcom/android/server/DevicePolicyManagerService;
    .restart local v99       #dreamy:Lcom/android/server/dreams/DreamManagerService;
    .restart local v108       #imm:Lcom/android/server/InputMethodManagerService;
    .restart local v111       #installer:Lcom/android/server/pm/Installer;
    .restart local v114       #location:Lcom/android/server/LocationManagerService;
    .restart local v116       #lockSettings:Lcom/android/internal/widget/LockSettingsService;
    .restart local v127       #notification:Lcom/android/server/NotificationManagerService;
    .restart local v129       #perfMgrNotifier:Lcom/android/server/PerfMgrStateNotifier;
    .restart local v142       #statusBar:Lcom/android/server/StatusBarManagerService;
    .restart local v146       #telephonyRegistry2:Lcom/android/server/TelephonyRegistry;
    .restart local v150       #thermalMgr:Lcom/mediatek/common/thermal/MtkThermalSwitchManager;
    .restart local v153       #tsms:Lcom/android/server/TextServicesManagerService;
    .restart local v165       #wallpaper:Lcom/android/server/WallpaperManagerService;
    :cond_27
    move-object/from16 v25, v123

    .end local v123           #networkPolicy:Lcom/android/server/net/NetworkPolicyManagerService;
    .restart local v25       #networkPolicy:Lcom/android/server/net/NetworkPolicyManagerService;
    goto/16 :goto_46
.end method
