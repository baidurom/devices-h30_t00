.class public Lcom/android/server/ServiceWatcher;
.super Ljava/lang/Object;
.source "ServiceWatcher.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# static fields
.field private static final D:Z = false

.field public static final EXTRA_SERVICE_VERSION:Ljava/lang/String; = "serviceVersion"

.field private static final GEOCODER_SERVICE_ACTION:Ljava/lang/String; = "com.android.location.service.GeocodeProvider"

.field private static final NETWORK_LOCATION_SERVICE_ACTION:Ljava/lang/String; = "com.android.location.service.v2.NetworkLocationProvider"


# instance fields
.field private am:Landroid/app/ActivityManager;

.field private final mAction:Ljava/lang/String;

.field private mBinder:Landroid/os/IBinder;

.field private final mContext:Landroid/content/Context;

.field private mCurrentUserId:I

.field private final mHandler:Landroid/os/Handler;

.field private mLock:Ljava/lang/Object;

.field private final mNewServiceWork:Ljava/lang/Runnable;

.field private final mPackageMonitor:Lcom/android/internal/content/PackageMonitor;

.field private mPackageName:Ljava/lang/String;

.field private final mPm:Landroid/content/pm/PackageManager;

.field private final mSignatureSets:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/util/HashSet",
            "<",
            "Landroid/content/pm/Signature;",
            ">;>;"
        }
    .end annotation
.end field

.field private final mTag:Ljava/lang/String;

.field private mVersion:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/lang/Runnable;Landroid/os/Handler;I)V
    .locals 2
    .parameter "context"
    .parameter "logTag"
    .parameter "action"
    .parameter
    .parameter "newServiceWork"
    .parameter "handler"
    .parameter "userId"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/Runnable;",
            "Landroid/os/Handler;",
            "I)V"
        }
    .end annotation

    .prologue
    .line 103
    .local p4, initialPackageNames:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 67
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/ServiceWatcher;->mLock:Ljava/lang/Object;

    .line 72
    const/high16 v0, -0x8000

    iput v0, p0, Lcom/android/server/ServiceWatcher;->mVersion:I

    .line 80
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/ServiceWatcher;->am:Landroid/app/ActivityManager;

    .line 310
    new-instance v0, Lcom/android/server/ServiceWatcher$1;

    invoke-direct {v0, p0}, Lcom/android/server/ServiceWatcher$1;-><init>(Lcom/android/server/ServiceWatcher;)V

    iput-object v0, p0, Lcom/android/server/ServiceWatcher;->mPackageMonitor:Lcom/android/internal/content/PackageMonitor;

    .line 104
    iput-object p1, p0, Lcom/android/server/ServiceWatcher;->mContext:Landroid/content/Context;

    .line 105
    iput-object p2, p0, Lcom/android/server/ServiceWatcher;->mTag:Ljava/lang/String;

    .line 106
    iput-object p3, p0, Lcom/android/server/ServiceWatcher;->mAction:Ljava/lang/String;

    .line 107
    iget-object v0, p0, Lcom/android/server/ServiceWatcher;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/ServiceWatcher;->mPm:Landroid/content/pm/PackageManager;

    .line 108
    iput-object p5, p0, Lcom/android/server/ServiceWatcher;->mNewServiceWork:Ljava/lang/Runnable;

    .line 109
    iput-object p6, p0, Lcom/android/server/ServiceWatcher;->mHandler:Landroid/os/Handler;

    .line 110
    iput p7, p0, Lcom/android/server/ServiceWatcher;->mCurrentUserId:I

    .line 113
    iget-object v0, p0, Lcom/android/server/ServiceWatcher;->mContext:Landroid/content/Context;

    const-string v1, "activity"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    iput-object v0, p0, Lcom/android/server/ServiceWatcher;->am:Landroid/app/ActivityManager;

    .line 117
    invoke-static {p1, p4}, Lcom/android/server/ServiceWatcher;->getSignatureSets(Landroid/content/Context;Ljava/util/List;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/ServiceWatcher;->mSignatureSets:Ljava/util/List;

    .line 118
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/ServiceWatcher;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 55
    iget-object v0, p0, Lcom/android/server/ServiceWatcher;->mLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/server/ServiceWatcher;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 55
    iget-object v0, p0, Lcom/android/server/ServiceWatcher;->mPackageName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/server/ServiceWatcher;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 55
    invoke-direct {p0}, Lcom/android/server/ServiceWatcher;->unbindLocked()V

    return-void
.end method

.method static synthetic access$300(Lcom/android/server/ServiceWatcher;Ljava/lang/String;)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 55
    invoke-direct {p0, p1}, Lcom/android/server/ServiceWatcher;->bindBestPackageLocked(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private bindBestPackageLocked(Ljava/lang/String;)Z
    .locals 21
    .parameter "justCheckThisPackage"

    .prologue
    .line 165
    new-instance v8, Landroid/content/Intent;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/ServiceWatcher;->mAction:Ljava/lang/String;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-direct {v8, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 166
    .local v8, intent:Landroid/content/Intent;
    if-eqz p1, :cond_0

    .line 167
    move-object/from16 v0, p1

    invoke-virtual {v8, v0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 169
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/ServiceWatcher;->mPm:Landroid/content/pm/PackageManager;

    move-object/from16 v17, v0

    new-instance v18, Landroid/content/Intent;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/ServiceWatcher;->mAction:Ljava/lang/String;

    move-object/from16 v19, v0

    invoke-direct/range {v18 .. v19}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/16 v19, 0x80

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/ServiceWatcher;->mCurrentUserId:I

    move/from16 v20, v0

    invoke-virtual/range {v17 .. v20}, Landroid/content/pm/PackageManager;->queryIntentServicesAsUser(Landroid/content/Intent;II)Ljava/util/List;

    move-result-object v14

    .line 171
    .local v14, rInfos:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    const/high16 v3, -0x8000

    .line 172
    .local v3, bestVersion:I
    const/4 v2, 0x0

    .line 176
    .local v2, bestPackage:Ljava/lang/String;
    const/4 v6, 0x0

    .line 177
    .local v6, foreignPackage:Landroid/content/pm/PackageInfo;
    const/4 v4, 0x0

    .line 178
    .local v4, civilPackage:Landroid/content/pm/PackageInfo;
    const/4 v10, 0x0

    .line 179
    .local v10, nlpCivil:Ljava/lang/String;
    const/4 v15, 0x0

    .line 180
    .local v15, useMultiNlp:Z
    const-string v17, "CN"

    const-string v18, "ro.product.locale.region"

    const-string v19, ""

    invoke-static/range {v18 .. v19}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v9

    .line 181
    .local v9, isChinaVersion:Z
    if-eqz v9, :cond_2

    .line 182
    const-string v17, "com.android.location.service.v2.NetworkLocationProvider"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/ServiceWatcher;->mAction:Ljava/lang/String;

    move-object/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-nez v17, :cond_1

    const-string v17, "com.android.location.service.GeocodeProvider"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/ServiceWatcher;->mAction:Ljava/lang/String;

    move-object/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_2

    .line 185
    :cond_1
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/ServiceWatcher;->mPm:Landroid/content/pm/PackageManager;

    move-object/from16 v17, v0

    const-string v18, "com.google.android.location"

    const/16 v19, 0x4

    invoke-virtual/range {v17 .. v19}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    move-result-object v6

    .line 191
    :goto_0
    const-string v17, "ro.config.hw_nlp"

    const-string v18, "com.baidu.map.location"

    invoke-static/range {v17 .. v18}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 193
    :try_start_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/ServiceWatcher;->mPm:Landroid/content/pm/PackageManager;

    move-object/from16 v17, v0

    const/16 v18, 0x4

    move-object/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v0, v10, v1}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_4

    move-result-object v4

    .line 199
    :goto_1
    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v17

    if-nez v17, :cond_2

    if-eqz v6, :cond_2

    if-eqz v4, :cond_2

    .line 200
    const/4 v15, 0x1

    .line 207
    :cond_2
    invoke-interface {v14}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .local v7, i$:Ljava/util/Iterator;
    :cond_3
    :goto_2
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v17

    if-eqz v17, :cond_7

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/content/pm/ResolveInfo;

    .line 208
    .local v13, rInfo:Landroid/content/pm/ResolveInfo;
    iget-object v0, v13, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v12, v0, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    .line 213
    .local v12, packageName:Ljava/lang/String;
    :try_start_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/ServiceWatcher;->mPm:Landroid/content/pm/PackageManager;

    move-object/from16 v17, v0

    const/16 v18, 0x40

    move-object/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v0, v12, v1}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v11

    .line 214
    .local v11, pInfo:Landroid/content/pm/PackageInfo;
    iget-object v0, v11, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v1}, Lcom/android/server/ServiceWatcher;->isSignatureMatch([Landroid/content/pm/Signature;)Z

    move-result v17

    if-nez v17, :cond_4

    .line 215
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/ServiceWatcher;->mTag:Ljava/lang/String;

    move-object/from16 v17, v0

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v18

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, " resolves service "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/ServiceWatcher;->mAction:Ljava/lang/String;

    move-object/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, ", but has wrong signature, ignoring"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_2

    .line 219
    .end local v11           #pInfo:Landroid/content/pm/PackageInfo;
    :catch_0
    move-exception v5

    .line 220
    .local v5, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/ServiceWatcher;->mTag:Ljava/lang/String;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-static {v0, v5}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2

    .line 186
    .end local v5           #e:Landroid/content/pm/PackageManager$NameNotFoundException;
    .end local v7           #i$:Ljava/util/Iterator;
    .end local v12           #packageName:Ljava/lang/String;
    .end local v13           #rInfo:Landroid/content/pm/ResolveInfo;
    :catch_1
    move-exception v5

    .line 187
    .restart local v5       #e:Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v17, "ServiceWatcher"

    const-string v18, "missing foreignPackage: com.google.android.location"

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 188
    .end local v5           #e:Landroid/content/pm/PackageManager$NameNotFoundException;
    :catch_2
    move-exception v5

    .line 189
    .local v5, e:Ljava/lang/Exception;
    invoke-virtual {v5}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_0

    .line 194
    .end local v5           #e:Ljava/lang/Exception;
    :catch_3
    move-exception v5

    .line 195
    .local v5, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v17, "ServiceWatcher"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "missing mNLPcivil: "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 196
    .end local v5           #e:Landroid/content/pm/PackageManager$NameNotFoundException;
    :catch_4
    move-exception v5

    .line 197
    .local v5, e:Ljava/lang/Exception;
    invoke-virtual {v5}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_1

    .line 225
    .end local v5           #e:Ljava/lang/Exception;
    .restart local v7       #i$:Ljava/util/Iterator;
    .restart local v11       #pInfo:Landroid/content/pm/PackageInfo;
    .restart local v12       #packageName:Ljava/lang/String;
    .restart local v13       #rInfo:Landroid/content/pm/ResolveInfo;
    :cond_4
    const/16 v16, 0x0

    .line 226
    .local v16, version:I
    iget-object v0, v13, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Landroid/content/pm/ServiceInfo;->metaData:Landroid/os/Bundle;

    move-object/from16 v17, v0

    if-eqz v17, :cond_5

    .line 227
    iget-object v0, v13, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Landroid/content/pm/ServiceInfo;->metaData:Landroid/os/Bundle;

    move-object/from16 v17, v0

    const-string v18, "serviceVersion"

    const/16 v19, 0x0

    invoke-virtual/range {v17 .. v19}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v16

    .line 232
    :cond_5
    const-string v17, "com.android.location.service.v2.NetworkLocationProvider"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/ServiceWatcher;->mAction:Ljava/lang/String;

    move-object/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-nez v17, :cond_6

    const-string v17, "com.android.location.service.GeocodeProvider"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/ServiceWatcher;->mAction:Ljava/lang/String;

    move-object/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_8

    .line 236
    :cond_6
    if-eqz v15, :cond_8

    if-eqz v10, :cond_8

    invoke-virtual {v10, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_8

    .line 239
    move/from16 v3, v16

    .line 240
    move-object v2, v12

    .line 258
    .end local v11           #pInfo:Landroid/content/pm/PackageInfo;
    .end local v12           #packageName:Ljava/lang/String;
    .end local v13           #rInfo:Landroid/content/pm/ResolveInfo;
    .end local v16           #version:I
    :cond_7
    if-eqz v2, :cond_9

    .line 259
    move-object/from16 v0, p0

    invoke-direct {v0, v2, v3}, Lcom/android/server/ServiceWatcher;->bindToPackageLocked(Ljava/lang/String;I)V

    .line 260
    const/16 v17, 0x1

    .line 262
    :goto_3
    return v17

    .line 247
    .restart local v11       #pInfo:Landroid/content/pm/PackageInfo;
    .restart local v12       #packageName:Ljava/lang/String;
    .restart local v13       #rInfo:Landroid/content/pm/ResolveInfo;
    .restart local v16       #version:I
    :cond_8
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/ServiceWatcher;->mVersion:I

    move/from16 v17, v0

    move/from16 v0, v16

    move/from16 v1, v17

    if-le v0, v1, :cond_3

    .line 248
    move/from16 v3, v16

    .line 249
    move-object v2, v12

    goto/16 :goto_2

    .line 262
    .end local v11           #pInfo:Landroid/content/pm/PackageInfo;
    .end local v12           #packageName:Ljava/lang/String;
    .end local v13           #rInfo:Landroid/content/pm/ResolveInfo;
    .end local v16           #version:I
    :cond_9
    const/16 v17, 0x0

    goto :goto_3
.end method

.method private bindToPackageLocked(Ljava/lang/String;I)V
    .locals 4
    .parameter "packageName"
    .parameter "version"

    .prologue
    .line 277
    invoke-direct {p0}, Lcom/android/server/ServiceWatcher;->unbindLocked()V

    .line 278
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/android/server/ServiceWatcher;->mAction:Ljava/lang/String;

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 279
    .local v0, intent:Landroid/content/Intent;
    invoke-virtual {v0, p1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 280
    iput-object p1, p0, Lcom/android/server/ServiceWatcher;->mPackageName:Ljava/lang/String;

    .line 281
    iput p2, p0, Lcom/android/server/ServiceWatcher;->mVersion:I

    .line 283
    iget-object v1, p0, Lcom/android/server/ServiceWatcher;->mContext:Landroid/content/Context;

    const v2, 0x40000005

    iget v3, p0, Lcom/android/server/ServiceWatcher;->mCurrentUserId:I

    invoke-virtual {v1, v0, p0, v2, v3}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;II)Z

    .line 285
    return-void
.end method

.method public static getSignatureSets(Landroid/content/Context;Ljava/util/List;)Ljava/util/ArrayList;
    .locals 11
    .parameter "context"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/util/HashSet",
            "<",
            "Landroid/content/pm/Signature;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 86
    .local p1, initialPackageNames:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    .line 87
    .local v3, pm:Landroid/content/pm/PackageManager;
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 88
    .local v5, sigSets:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/util/HashSet<Landroid/content/pm/Signature;>;>;"
    const/4 v1, 0x0

    .local v1, i:I
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v7

    .local v7, size:I
    :goto_0
    if-ge v1, v7, :cond_0

    .line 89
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 91
    .local v2, pkg:Ljava/lang/String;
    :try_start_0
    new-instance v4, Ljava/util/HashSet;

    invoke-direct {v4}, Ljava/util/HashSet;-><init>()V

    .line 92
    .local v4, set:Ljava/util/HashSet;,"Ljava/util/HashSet<Landroid/content/pm/Signature;>;"
    const/16 v8, 0x40

    invoke-virtual {v3, v2, v8}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v8

    iget-object v6, v8, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    .line 93
    .local v6, sigs:[Landroid/content/pm/Signature;
    invoke-static {v6}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v8

    invoke-virtual {v4, v8}, Ljava/util/HashSet;->addAll(Ljava/util/Collection;)Z

    .line 94
    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 88
    .end local v4           #set:Ljava/util/HashSet;,"Ljava/util/HashSet<Landroid/content/pm/Signature;>;"
    .end local v6           #sigs:[Landroid/content/pm/Signature;
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 95
    :catch_0
    move-exception v0

    .line 96
    .local v0, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v8, "ServiceWatcher"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " not found"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 99
    .end local v0           #e:Landroid/content/pm/PackageManager$NameNotFoundException;
    .end local v2           #pkg:Ljava/lang/String;
    :cond_0
    return-object v5
.end method

.method private isSignatureMatch([Landroid/content/pm/Signature;)Z
    .locals 1
    .parameter "signatures"

    .prologue
    .line 307
    iget-object v0, p0, Lcom/android/server/ServiceWatcher;->mSignatureSets:Ljava/util/List;

    invoke-static {p1, v0}, Lcom/android/server/ServiceWatcher;->isSignatureMatch([Landroid/content/pm/Signature;Ljava/util/List;)Z

    move-result v0

    return v0
.end method

.method public static isSignatureMatch([Landroid/content/pm/Signature;Ljava/util/List;)Z
    .locals 8
    .parameter "signatures"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Landroid/content/pm/Signature;",
            "Ljava/util/List",
            "<",
            "Ljava/util/HashSet",
            "<",
            "Landroid/content/pm/Signature;",
            ">;>;)Z"
        }
    .end annotation

    .prologue
    .local p1, sigSets:Ljava/util/List;,"Ljava/util/List<Ljava/util/HashSet<Landroid/content/pm/Signature;>;>;"
    const/4 v6, 0x0

    .line 289
    if-nez p0, :cond_1

    .line 303
    :cond_0
    :goto_0
    return v6

    .line 292
    :cond_1
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    .line 293
    .local v2, inputSet:Ljava/util/HashSet;,"Ljava/util/HashSet<Landroid/content/pm/Signature;>;"
    move-object v0, p0

    .local v0, arr$:[Landroid/content/pm/Signature;
    array-length v3, v0

    .local v3, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_1
    if-ge v1, v3, :cond_2

    aget-object v5, v0, v1

    .line 294
    .local v5, s:Landroid/content/pm/Signature;
    invoke-virtual {v2, v5}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 293
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 298
    .end local v5           #s:Landroid/content/pm/Signature;
    :cond_2
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/HashSet;

    .line 299
    .local v4, referenceSet:Ljava/util/HashSet;,"Ljava/util/HashSet<Landroid/content/pm/Signature;>;"
    invoke-virtual {v4, v2}, Ljava/util/HashSet;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 300
    const/4 v6, 0x1

    goto :goto_0
.end method

.method private unbindLocked()V
    .locals 2

    .prologue
    .line 267
    iget-object v0, p0, Lcom/android/server/ServiceWatcher;->mPackageName:Ljava/lang/String;

    .line 268
    .local v0, pkg:Ljava/lang/String;
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/server/ServiceWatcher;->mPackageName:Ljava/lang/String;

    .line 269
    const/high16 v1, -0x8000

    iput v1, p0, Lcom/android/server/ServiceWatcher;->mVersion:I

    .line 270
    if-eqz v0, :cond_0

    .line 272
    iget-object v1, p0, Lcom/android/server/ServiceWatcher;->mContext:Landroid/content/Context;

    invoke-virtual {v1, p0}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 274
    :cond_0
    return-void
.end method


# virtual methods
.method public bindSpecificService(Ljava/lang/String;I)V
    .locals 4
    .parameter "packageName"
    .parameter "version"

    .prologue
    .line 135
    iget-object v1, p0, Lcom/android/server/ServiceWatcher;->mPackageName:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 153
    :goto_0
    return-void

    .line 137
    :cond_0
    iget-object v0, p0, Lcom/android/server/ServiceWatcher;->mPackageName:Ljava/lang/String;

    .line 140
    .local v0, pkg:Ljava/lang/String;
    const-string v1, "ServiceWatcher"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "bindSpecificService old mPackageName = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/ServiceWatcher;->mPackageName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 143
    if-eqz v0, :cond_1

    .line 144
    iget-object v1, p0, Lcom/android/server/ServiceWatcher;->am:Landroid/app/ActivityManager;

    invoke-virtual {v1, v0}, Landroid/app/ActivityManager;->forceStopPackage(Ljava/lang/String;)V

    .line 145
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/server/ServiceWatcher;->mPackageName:Ljava/lang/String;

    .line 149
    :cond_1
    const-string v1, "ServiceWatcher"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "bindSpecificService new packageName = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 152
    invoke-direct {p0, p1, p2}, Lcom/android/server/ServiceWatcher;->bindToPackageLocked(Ljava/lang/String;I)V

    goto :goto_0
.end method

.method public getBestPackageName()Ljava/lang/String;
    .locals 2

    .prologue
    .line 380
    iget-object v1, p0, Lcom/android/server/ServiceWatcher;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 381
    :try_start_0
    iget-object v0, p0, Lcom/android/server/ServiceWatcher;->mPackageName:Ljava/lang/String;

    monitor-exit v1

    return-object v0

    .line 382
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getBestVersion()I
    .locals 2

    .prologue
    .line 386
    iget-object v1, p0, Lcom/android/server/ServiceWatcher;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 387
    :try_start_0
    iget v0, p0, Lcom/android/server/ServiceWatcher;->mVersion:I

    monitor-exit v1

    return v0

    .line 388
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getBinder()Landroid/os/IBinder;
    .locals 2

    .prologue
    .line 392
    iget-object v1, p0, Lcom/android/server/ServiceWatcher;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 393
    :try_start_0
    iget-object v0, p0, Lcom/android/server/ServiceWatcher;->mBinder:Landroid/os/IBinder;

    monitor-exit v1

    return-object v0

    .line 394
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 5
    .parameter "name"
    .parameter "binder"

    .prologue
    .line 353
    iget-object v2, p0, Lcom/android/server/ServiceWatcher;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 354
    :try_start_0
    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 355
    .local v0, packageName:Ljava/lang/String;
    iget-object v1, p0, Lcom/android/server/ServiceWatcher;->mPackageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 357
    iput-object p2, p0, Lcom/android/server/ServiceWatcher;->mBinder:Landroid/os/IBinder;

    .line 358
    iget-object v1, p0, Lcom/android/server/ServiceWatcher;->mHandler:Landroid/os/Handler;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/server/ServiceWatcher;->mNewServiceWork:Ljava/lang/Runnable;

    if-eqz v1, :cond_0

    .line 359
    iget-object v1, p0, Lcom/android/server/ServiceWatcher;->mHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/android/server/ServiceWatcher;->mNewServiceWork:Ljava/lang/Runnable;

    invoke-virtual {v1, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 364
    :cond_0
    :goto_0
    monitor-exit v2

    .line 365
    return-void

    .line 362
    :cond_1
    iget-object v1, p0, Lcom/android/server/ServiceWatcher;->mTag:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "unexpected onServiceConnected: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 364
    .end local v0           #packageName:Ljava/lang/String;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 3
    .parameter "name"

    .prologue
    .line 369
    iget-object v2, p0, Lcom/android/server/ServiceWatcher;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 370
    :try_start_0
    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 373
    .local v0, packageName:Ljava/lang/String;
    iget-object v1, p0, Lcom/android/server/ServiceWatcher;->mPackageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 374
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/server/ServiceWatcher;->mBinder:Landroid/os/IBinder;

    .line 376
    :cond_0
    monitor-exit v2

    .line 377
    return-void

    .line 376
    .end local v0           #packageName:Ljava/lang/String;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public start()Z
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v0, 0x1

    .line 121
    iget-object v1, p0, Lcom/android/server/ServiceWatcher;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 122
    const/4 v2, 0x0

    :try_start_0
    invoke-direct {p0, v2}, Lcom/android/server/ServiceWatcher;->bindBestPackageLocked(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    const/4 v0, 0x0

    monitor-exit v1

    .line 126
    :goto_0
    return v0

    .line 123
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 125
    iget-object v1, p0, Lcom/android/server/ServiceWatcher;->mPackageMonitor:Lcom/android/internal/content/PackageMonitor;

    iget-object v2, p0, Lcom/android/server/ServiceWatcher;->mContext:Landroid/content/Context;

    sget-object v3, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v1, v2, v4, v3, v0}, Lcom/android/internal/content/PackageMonitor;->register(Landroid/content/Context;Landroid/os/Looper;Landroid/os/UserHandle;Z)V

    goto :goto_0

    .line 123
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public stop()V
    .locals 0

    .prologue
    .line 130
    invoke-direct {p0}, Lcom/android/server/ServiceWatcher;->unbindLocked()V

    .line 131
    return-void
.end method

.method public switchUser(I)V
    .locals 2
    .parameter "userId"

    .prologue
    .line 398
    iget-object v1, p0, Lcom/android/server/ServiceWatcher;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 399
    :try_start_0
    invoke-direct {p0}, Lcom/android/server/ServiceWatcher;->unbindLocked()V

    .line 400
    iput p1, p0, Lcom/android/server/ServiceWatcher;->mCurrentUserId:I

    .line 401
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/server/ServiceWatcher;->bindBestPackageLocked(Ljava/lang/String;)Z

    .line 402
    monitor-exit v1

    .line 403
    return-void

    .line 402
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
