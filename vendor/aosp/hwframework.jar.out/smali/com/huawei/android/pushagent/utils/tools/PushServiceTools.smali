.class public Lcom/huawei/android/pushagent/utils/tools/PushServiceTools;
.super Ljava/lang/Object;
.source "PushServiceTools.java"


# static fields
.field static final TAG:Ljava/lang/String; = "PushLog2510"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 20
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static closeMyService(Landroid/content/Context;)V
    .locals 3
    .parameter "cx"

    .prologue
    .line 25
    :try_start_0
    invoke-static {}, Lcom/huawei/android/pushagent/PushService;->getInstance()Lcom/huawei/android/pushagent/PushService;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 26
    invoke-static {}, Lcom/huawei/android/pushagent/PushService;->exitProcess()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 31
    :cond_0
    :goto_0
    return-void

    .line 28
    :catch_0
    move-exception v0

    .line 29
    .local v0, e:Ljava/lang/Exception;
    const-string v1, "PushLog2510"

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Lcom/huawei/android/pushagent/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public static getApkVersion(Landroid/content/Context;)J
    .locals 10
    .parameter "context"

    .prologue
    .line 91
    const-wide/16 v3, -0x3e8

    .line 93
    .local v3, version:J
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v7

    new-instance v8, Landroid/content/Intent;

    const-string v9, "com.huawei.android.push.intent.REGISTER"

    invoke-direct {v8, v9}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v9, "com.huawei.android.pushagent"

    invoke-virtual {v8, v9}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v8

    const/16 v9, 0x80

    invoke-virtual {v7, v8, v9}, Landroid/content/pm/PackageManager;->queryBroadcastReceivers(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v2

    .line 96
    .local v2, resolveInfoList:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    if-eqz v2, :cond_0

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v7

    if-nez v7, :cond_1

    :cond_0
    move-wide v5, v3

    .line 113
    .end local v2           #resolveInfoList:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .end local v3           #version:J
    .local v5, version:J
    :goto_0
    return-wide v5

    .line 100
    .end local v5           #version:J
    .restart local v2       #resolveInfoList:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .restart local v3       #version:J
    :cond_1
    const-wide/16 v3, 0xe4

    .line 102
    const/4 v7, 0x0

    invoke-interface {v2, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/content/pm/ResolveInfo;

    iget-object v7, v7, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    if-eqz v7, :cond_3

    const/4 v7, 0x0

    invoke-interface {v2, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/content/pm/ResolveInfo;

    iget-object v7, v7, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v0, v7, Landroid/content/pm/ComponentInfo;->packageName:Ljava/lang/String;

    .line 104
    .local v0, PkgName:Ljava/lang/String;
    :goto_1
    if-eqz v0, :cond_2

    const-string v7, "com.huawei.android.pushagent"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 105
    const/4 v7, 0x0

    invoke-interface {v2, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/content/pm/ResolveInfo;

    const-string v8, "CS_cloud_version"

    invoke-static {v7, v8}, Lcom/huawei/android/pushagent/utils/tools/PushServiceTools;->getIntMetaValue(Landroid/content/pm/ResolveInfo;Ljava/lang/String;)J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v3

    .line 112
    .end local v0           #PkgName:Ljava/lang/String;
    .end local v2           #resolveInfoList:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    :cond_2
    :goto_2
    const-string v7, "PushLog2510"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "start to get Apk version , the APK version is :"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/huawei/android/pushagent/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    move-wide v5, v3

    .line 113
    .end local v3           #version:J
    .restart local v5       #version:J
    goto :goto_0

    .line 102
    .end local v5           #version:J
    .restart local v2       #resolveInfoList:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .restart local v3       #version:J
    :cond_3
    const/4 v7, 0x0

    :try_start_1
    invoke-interface {v2, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/content/pm/ResolveInfo;

    iget-object v7, v7, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v0, v7, Landroid/content/pm/ComponentInfo;->packageName:Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 109
    .end local v2           #resolveInfoList:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    :catch_0
    move-exception v1

    .line 110
    .local v1, e:Ljava/lang/Exception;
    const-string v7, "PushLog2510"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "get Apk version faild ,Exception e= "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/huawei/android/pushagent/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2
.end method

.method private static getHighMetaSDK(Ljava/util/List;Ljava/lang/String;)Landroid/content/pm/ResolveInfo;
    .locals 7
    .parameter
    .parameter "metaName"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/ResolveInfo;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Landroid/content/pm/ResolveInfo;"
        }
    .end annotation

    .prologue
    .line 306
    .local p0, resolveInfoList:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    if-eqz p0, :cond_0

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v4

    if-nez v4, :cond_2

    .line 307
    :cond_0
    const/4 v1, 0x0

    .line 321
    :cond_1
    :goto_0
    return-object v1

    .line 310
    :cond_2
    const/4 v1, 0x0

    .line 311
    .local v1, hightVersionSDK:Landroid/content/pm/ResolveInfo;
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :cond_3
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/ResolveInfo;

    .line 312
    .local v3, ri:Landroid/content/pm/ResolveInfo;
    invoke-static {v3, v1, p1}, Lcom/huawei/android/pushagent/utils/tools/PushServiceTools;->isHightVersionSDK(Landroid/content/pm/ResolveInfo;Landroid/content/pm/ResolveInfo;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 313
    move-object v1, v3

    goto :goto_1

    .line 316
    .end local v3           #ri:Landroid/content/pm/ResolveInfo;
    :cond_4
    if-eqz v1, :cond_1

    .line 317
    iget-object v4, v1, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    if-eqz v4, :cond_5

    iget-object v4, v1, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v0, v4, Landroid/content/pm/ComponentInfo;->packageName:Ljava/lang/String;

    .line 319
    .local v0, hightPkgName:Ljava/lang/String;
    :goto_2
    const-string v4, "PushLog2510"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "after getHighVersion pushService pkgName="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/huawei/android/pushagent/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 317
    .end local v0           #hightPkgName:Ljava/lang/String;
    :cond_5
    iget-object v4, v1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v0, v4, Landroid/content/pm/ComponentInfo;->packageName:Ljava/lang/String;

    goto :goto_2
.end method

.method public static getHightMetaPackageName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Landroid/content/pm/ResolveInfo;
    .locals 6
    .parameter "context"
    .parameter "action"
    .parameter "metaName"

    .prologue
    const/4 v2, 0x0

    .line 284
    invoke-static {p0, p1}, Lcom/huawei/android/pushagent/utils/CommFun;->getClientAppByAction(Landroid/content/Context;Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    .line 285
    .local v1, resolveInfoList:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    if-eqz v1, :cond_0

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    if-nez v3, :cond_2

    .line 286
    :cond_0
    const-string v3, "PushLog2510"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "no push service install, may be system Err!! pkgName:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/huawei/android/pushagent/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    move-object v0, v2

    .line 302
    :cond_1
    :goto_0
    return-object v0

    .line 291
    :cond_2
    const-string v3, "PushLog2510"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "begin to get the hight Version package, have action:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/huawei/android/pushagent/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 292
    invoke-static {v1, p2}, Lcom/huawei/android/pushagent/utils/tools/PushServiceTools;->getHighMetaSDK(Ljava/util/List;Ljava/lang/String;)Landroid/content/pm/ResolveInfo;

    move-result-object v0

    .line 293
    .local v0, hightMetaSDK:Landroid/content/pm/ResolveInfo;
    if-nez v0, :cond_1

    .line 294
    const-string v3, "PushLog2510"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "there is no hightVersion PushService, maybe system Err!! pkgName:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/huawei/android/pushagent/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    move-object v0, v2

    .line 295
    goto :goto_0
.end method

.method public static getIntMetaValue(Landroid/content/pm/ResolveInfo;Ljava/lang/String;)J
    .locals 9
    .parameter "res"
    .parameter "metaName"

    .prologue
    .line 251
    const-wide/16 v2, -0x1

    .line 252
    .local v2, lValue:J
    if-nez p0, :cond_0

    move-wide v4, v2

    .line 261
    .end local v2           #lValue:J
    .local v4, lValue:J
    :goto_0
    return-wide v4

    .line 256
    .end local v4           #lValue:J
    .restart local v2       #lValue:J
    :cond_0
    :try_start_0
    invoke-static {p0, p1}, Lcom/huawei/android/pushagent/utils/tools/PushServiceTools;->getStringMetaValue(Landroid/content/pm/ResolveInfo;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 257
    .local v0, curMetaValue:Ljava/lang/String;
    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v2

    .end local v0           #curMetaValue:Ljava/lang/String;
    :goto_1
    move-wide v4, v2

    .line 261
    .end local v2           #lValue:J
    .restart local v4       #lValue:J
    goto :goto_0

    .line 258
    .end local v4           #lValue:J
    .restart local v2       #lValue:J
    :catch_0
    move-exception v1

    .line 259
    .local v1, e:Ljava/lang/NumberFormatException;
    const-string v6, "PushLog2510"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " is not set in "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-static {p0}, Lcom/huawei/android/pushagent/utils/tools/PushServiceTools;->getPkgName(Landroid/content/pm/ResolveInfo;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/huawei/android/pushagent/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method public static getPkgInfo(Landroid/content/Context;Ljava/lang/String;)Landroid/content/pm/PackageInfo;
    .locals 4
    .parameter "context"
    .parameter "pkgName"

    .prologue
    .line 220
    const-string v1, "PushLog2510"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getPkgVersion(pkgName:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " context:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/huawei/android/pushagent/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 222
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, p1, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 224
    :goto_0
    return-object v1

    .line 223
    :catch_0
    move-exception v0

    .line 224
    .local v0, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static getPkgName(Landroid/content/pm/ResolveInfo;)Ljava/lang/String;
    .locals 2
    .parameter "res"

    .prologue
    .line 266
    if-nez p0, :cond_0

    .line 267
    const-string v0, "PushLog2510"

    const-string v1, "ResolveInfo is null , cannot get packageName"

    invoke-static {v0, v1}, Lcom/huawei/android/pushagent/utils/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 268
    const/4 v0, 0x0

    .line 270
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v0, v0, Landroid/content/pm/ComponentInfo;->packageName:Ljava/lang/String;

    goto :goto_0

    :cond_1
    iget-object v0, p0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v0, v0, Landroid/content/pm/ComponentInfo;->packageName:Ljava/lang/String;

    goto :goto_0
.end method

.method private static getStringMetaValue(Landroid/content/pm/ResolveInfo;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "res"
    .parameter "metaName"

    .prologue
    .line 275
    iget-object v1, p0, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v0, v1, Landroid/content/pm/ServiceInfo;->metaData:Landroid/os/Bundle;

    .line 276
    .local v0, metaData:Landroid/os/Bundle;
    :goto_0
    if-nez v0, :cond_1

    .line 277
    const/4 v1, 0x0

    .line 279
    :goto_1
    return-object v1

    .line 275
    .end local v0           #metaData:Landroid/os/Bundle;
    :cond_0
    iget-object v1, p0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v0, v1, Landroid/content/pm/ActivityInfo;->metaData:Landroid/os/Bundle;

    goto :goto_0

    .line 279
    .restart local v0       #metaData:Landroid/os/Bundle;
    :cond_1
    invoke-virtual {v0, p1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_1
.end method

.method private static getVotedPackageName(Landroid/content/Context;)Ljava/lang/String;
    .locals 9
    .parameter "context"

    .prologue
    .line 63
    const-string v6, "PushLog2510"

    const-string v7, " choose the high version for push service"

    invoke-static {v6, v7}, Lcom/huawei/android/pushagent/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 65
    invoke-static {p0}, Lcom/huawei/android/pushagent/utils/CommFun;->isFrameworkPushExist(Landroid/content/Context;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 66
    const-string v2, "android"

    .line 87
    :goto_0
    return-object v2

    .line 69
    :cond_0
    const/4 v2, 0x0

    .line 70
    .local v2, highPkgName:Ljava/lang/String;
    invoke-static {p0}, Lcom/huawei/android/pushagent/utils/tools/PushServiceTools;->getApkVersion(Landroid/content/Context;)J

    move-result-wide v0

    .line 71
    .local v0, apkVersion:J
    const-wide/16 v6, 0xe4

    cmp-long v6, v6, v0

    if-gtz v6, :cond_1

    invoke-static {}, Lcom/huawei/android/pushagent/utils/tools/PushServiceTools;->isSupportCtrlSocket()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 72
    const-string v6, "PushLog2510"

    const-string v7, "support ctrlsocket."

    invoke-static {v6, v7}, Lcom/huawei/android/pushagent/utils/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 73
    const-string v2, "com.huawei.android.pushagent"

    goto :goto_0

    .line 75
    :cond_1
    const-string v6, "com.huawei.android.push.intent.REGISTER"

    const-string v7, "CS_cloud_version"

    invoke-static {p0, v6, v7}, Lcom/huawei/android/pushagent/utils/tools/PushServiceTools;->getHightMetaPackageName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Landroid/content/pm/ResolveInfo;

    move-result-object v5

    .line 77
    .local v5, hightVersionInfo:Landroid/content/pm/ResolveInfo;
    const-string v6, "CS_cloud_version"

    invoke-static {v5, v6}, Lcom/huawei/android/pushagent/utils/tools/PushServiceTools;->getIntMetaValue(Landroid/content/pm/ResolveInfo;Ljava/lang/String;)J

    move-result-wide v3

    .line 78
    .local v3, hightVersion:J
    const-string v6, "PushLog2510"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "the getHightMetaPackageName return version is :"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " curApkVersion:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/huawei/android/pushagent/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 79
    cmp-long v6, v0, v3

    if-ltz v6, :cond_2

    .line 80
    const-string v2, "com.huawei.android.pushagent"

    .line 81
    const-string v6, "PushLog2510"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "the push APK version ("

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ")is hight,use APK for push service"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/huawei/android/pushagent/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 83
    :cond_2
    invoke-static {v5}, Lcom/huawei/android/pushagent/utils/tools/PushServiceTools;->getPkgName(Landroid/content/pm/ResolveInfo;)Ljava/lang/String;

    move-result-object v2

    .line 84
    const-string v6, "PushLog2510"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "use the hight version("

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " )for push service, highPkgName is :"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/huawei/android/pushagent/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method public static isHightVersionSDK(Landroid/content/pm/ResolveInfo;Landroid/content/pm/ResolveInfo;Ljava/lang/String;)Z
    .locals 11
    .parameter "curRes"
    .parameter "oldRes"
    .parameter "metaName"

    .prologue
    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 229
    if-nez p1, :cond_1

    .line 245
    :cond_0
    :goto_0
    return v6

    .line 231
    :cond_1
    if-nez p0, :cond_2

    move v6, v7

    .line 232
    goto :goto_0

    .line 234
    :cond_2
    invoke-static {p0}, Lcom/huawei/android/pushagent/utils/tools/PushServiceTools;->getPkgName(Landroid/content/pm/ResolveInfo;)Ljava/lang/String;

    move-result-object v2

    .line 235
    .local v2, curPkgName:Ljava/lang/String;
    invoke-static {p0, p2}, Lcom/huawei/android/pushagent/utils/tools/PushServiceTools;->getIntMetaValue(Landroid/content/pm/ResolveInfo;Ljava/lang/String;)J

    move-result-wide v0

    .line 236
    .local v0, curMetaValue:J
    invoke-static {p1, p2}, Lcom/huawei/android/pushagent/utils/tools/PushServiceTools;->getIntMetaValue(Landroid/content/pm/ResolveInfo;Ljava/lang/String;)J

    move-result-wide v3

    .line 237
    .local v3, oldMetaValue:J
    iget-object v8, p1, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    if-eqz v8, :cond_4

    iget-object v8, p1, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v5, v8, Landroid/content/pm/ComponentInfo;->packageName:Ljava/lang/String;

    .line 238
    .local v5, oldPkgName:Ljava/lang/String;
    :goto_1
    const-string v8, "PushLog2510"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "the curPkgName("

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ")version is:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "the oldPkgName ("

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ")version is:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/huawei/android/pushagent/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 240
    cmp-long v8, v0, v3

    if-gtz v8, :cond_0

    .line 242
    cmp-long v8, v0, v3

    if-nez v8, :cond_5

    .line 243
    if-eqz v2, :cond_3

    invoke-virtual {v2, v5}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v8

    if-gtz v8, :cond_0

    :cond_3
    move v6, v7

    goto :goto_0

    .line 237
    .end local v5           #oldPkgName:Ljava/lang/String;
    :cond_4
    iget-object v8, p1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v5, v8, Landroid/content/pm/ComponentInfo;->packageName:Ljava/lang/String;

    goto :goto_1

    .restart local v5       #oldPkgName:Ljava/lang/String;
    :cond_5
    move v6, v7

    .line 245
    goto :goto_0
.end method

.method public static isPkgIncludeServiceStart(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 10
    .parameter "context"
    .parameter "packageName"

    .prologue
    .line 153
    const-string v7, "PushLog2510"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "enter CommFun.isServiceStarted(FindPkgName:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " curPkgName:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/huawei/android/pushagent/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 154
    if-nez p1, :cond_0

    .line 155
    const/4 v4, 0x0

    .line 174
    :goto_0
    return v4

    .line 158
    :cond_0
    const/4 v4, 0x0

    .line 160
    .local v4, isStarted:Z
    :try_start_0
    const-string v7, "activity"

    invoke-virtual {p0, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/app/ActivityManager;

    .line 161
    .local v5, mActivityManager:Landroid/app/ActivityManager;
    const/16 v3, 0x3e8

    .line 162
    .local v3, intGetTastCounter:I
    invoke-virtual {v5, v3}, Landroid/app/ActivityManager;->getRunningServices(I)Ljava/util/List;

    move-result-object v6

    .line 163
    .local v6, mRunningServiceList:Ljava/util/List;,"Ljava/util/List<Landroid/app/ActivityManager$RunningServiceInfo;>;"
    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager$RunningServiceInfo;

    .line 164
    .local v0, amService:Landroid/app/ActivityManager$RunningServiceInfo;
    iget-object v7, v0, Landroid/app/ActivityManager$RunningServiceInfo;->service:Landroid/content/ComponentName;

    invoke-virtual {v7}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v7

    if-eqz v7, :cond_2

    .line 165
    const/4 v4, 0x1

    .line 173
    .end local v0           #amService:Landroid/app/ActivityManager$RunningServiceInfo;
    .end local v2           #i$:Ljava/util/Iterator;
    .end local v3           #intGetTastCounter:I
    .end local v5           #mActivityManager:Landroid/app/ActivityManager;
    .end local v6           #mRunningServiceList:Ljava/util/List;,"Ljava/util/List<Landroid/app/ActivityManager$RunningServiceInfo;>;"
    :cond_1
    :goto_2
    const-string v7, "PushLog2510"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " isRunning:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/huawei/android/pushagent/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 168
    .restart local v0       #amService:Landroid/app/ActivityManager$RunningServiceInfo;
    .restart local v2       #i$:Ljava/util/Iterator;
    .restart local v3       #intGetTastCounter:I
    .restart local v5       #mActivityManager:Landroid/app/ActivityManager;
    .restart local v6       #mRunningServiceList:Ljava/util/List;,"Ljava/util/List<Landroid/app/ActivityManager$RunningServiceInfo;>;"
    :cond_2
    :try_start_1
    const-string v7, "PushLog2510"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v9, v0, Landroid/app/ActivityManager$RunningServiceInfo;->service:Landroid/content/ComponentName;

    invoke-virtual {v9}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ":"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, v0, Landroid/app/ActivityManager$RunningServiceInfo;->service:Landroid/content/ComponentName;

    invoke-virtual {v9}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " is running service"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/huawei/android/pushagent/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 170
    .end local v0           #amService:Landroid/app/ActivityManager$RunningServiceInfo;
    .end local v2           #i$:Ljava/util/Iterator;
    .end local v3           #intGetTastCounter:I
    .end local v5           #mActivityManager:Landroid/app/ActivityManager;
    .end local v6           #mRunningServiceList:Ljava/util/List;,"Ljava/util/List<Landroid/app/ActivityManager$RunningServiceInfo;>;"
    :catch_0
    move-exception v1

    .line 171
    .local v1, e:Ljava/lang/SecurityException;
    invoke-virtual {v1}, Ljava/lang/SecurityException;->printStackTrace()V

    goto :goto_2
.end method

.method public static isPkgInstall(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 3
    .parameter "context"
    .parameter "pkgName"

    .prologue
    .line 207
    const-string v0, "PushLog2510"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isPkgInstall(pkgName:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " context:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/huawei/android/pushagent/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 208
    invoke-static {p0, p1}, Lcom/huawei/android/pushagent/utils/tools/PushServiceTools;->getPkgInfo(Landroid/content/Context;Ljava/lang/String;)Landroid/content/pm/PackageInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isServiceStarted(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 10
    .parameter "context"
    .parameter "className"
    .parameter "packageName"

    .prologue
    .line 117
    const-string v7, "PushLog2510"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "enter CommFun.isServiceStarted(FindPkgName:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " FindClassName:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " curPkgName:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/huawei/android/pushagent/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 120
    if-nez p2, :cond_0

    .line 121
    const/4 v4, 0x0

    .line 142
    :goto_0
    return v4

    .line 124
    :cond_0
    const/4 v4, 0x0

    .line 126
    .local v4, isStarted:Z
    :try_start_0
    const-string v7, "activity"

    invoke-virtual {p0, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/app/ActivityManager;

    .line 127
    .local v5, mActivityManager:Landroid/app/ActivityManager;
    const/16 v3, 0x3e8

    .line 128
    .local v3, intGetTastCounter:I
    invoke-virtual {v5, v3}, Landroid/app/ActivityManager;->getRunningServices(I)Ljava/util/List;

    move-result-object v6

    .line 129
    .local v6, mRunningServiceList:Ljava/util/List;,"Ljava/util/List<Landroid/app/ActivityManager$RunningServiceInfo;>;"
    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager$RunningServiceInfo;

    .line 130
    .local v0, amService:Landroid/app/ActivityManager$RunningServiceInfo;
    iget-object v7, v0, Landroid/app/ActivityManager$RunningServiceInfo;->service:Landroid/content/ComponentName;

    invoke-virtual {v7}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 131
    iget-object v7, v0, Landroid/app/ActivityManager$RunningServiceInfo;->service:Landroid/content/ComponentName;

    invoke-virtual {v7}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v7

    if-eqz v7, :cond_2

    .line 132
    const/4 v4, 0x1

    .line 141
    .end local v0           #amService:Landroid/app/ActivityManager$RunningServiceInfo;
    .end local v2           #i$:Ljava/util/Iterator;
    .end local v3           #intGetTastCounter:I
    .end local v5           #mActivityManager:Landroid/app/ActivityManager;
    .end local v6           #mRunningServiceList:Ljava/util/List;,"Ljava/util/List<Landroid/app/ActivityManager$RunningServiceInfo;>;"
    :cond_1
    :goto_2
    const-string v7, "PushLog2510"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ":"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " isRunning:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/huawei/android/pushagent/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 136
    .restart local v0       #amService:Landroid/app/ActivityManager$RunningServiceInfo;
    .restart local v2       #i$:Ljava/util/Iterator;
    .restart local v3       #intGetTastCounter:I
    .restart local v5       #mActivityManager:Landroid/app/ActivityManager;
    .restart local v6       #mRunningServiceList:Ljava/util/List;,"Ljava/util/List<Landroid/app/ActivityManager$RunningServiceInfo;>;"
    :cond_2
    :try_start_1
    const-string v7, "PushLog2510"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v9, v0, Landroid/app/ActivityManager$RunningServiceInfo;->service:Landroid/content/ComponentName;

    invoke-virtual {v9}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ":"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, v0, Landroid/app/ActivityManager$RunningServiceInfo;->service:Landroid/content/ComponentName;

    invoke-virtual {v9}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " is running service"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/huawei/android/pushagent/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 138
    .end local v0           #amService:Landroid/app/ActivityManager$RunningServiceInfo;
    .end local v2           #i$:Ljava/util/Iterator;
    .end local v3           #intGetTastCounter:I
    .end local v5           #mActivityManager:Landroid/app/ActivityManager;
    .end local v6           #mRunningServiceList:Ljava/util/List;,"Ljava/util/List<Landroid/app/ActivityManager$RunningServiceInfo;>;"
    :catch_0
    move-exception v1

    .line 139
    .local v1, e:Ljava/lang/SecurityException;
    invoke-virtual {v1}, Ljava/lang/SecurityException;->printStackTrace()V

    goto :goto_2
.end method

.method public static isSupportCtrlSocket()Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 212
    const/4 v1, -0x2

    const/4 v2, 0x3

    invoke-static {v0, v2}, Lcom/huawei/android/pushagent/utils/CommFun;->ctrlSockets(II)I

    move-result v2

    if-ne v1, v2, :cond_0

    .line 213
    const-string v0, "PushLog2510"

    const-string v1, "not support ctrlsocket."

    invoke-static {v0, v1}, Lcom/huawei/android/pushagent/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 214
    const/4 v0, 0x0

    .line 216
    :cond_0
    return v0
.end method

.method public static setHightSDKStart(Landroid/content/Context;)Z
    .locals 6
    .parameter "context"

    .prologue
    .line 41
    :try_start_0
    invoke-static {p0}, Lcom/huawei/android/pushagent/utils/tools/PushServiceTools;->getVotedPackageName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 43
    .local v1, highPkgName:Ljava/lang/String;
    const-string v3, "PushLog2510"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "start push service ,the highPkgName is :"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/huawei/android/pushagent/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 44
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    if-eqz v1, :cond_0

    .line 45
    const-string v3, "android"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 46
    new-instance v3, Landroid/content/Intent;

    const-string v4, "com.huawei.intent.action.PUSH"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v4, "EXTRA_INTENT_TYPE"

    const-string v5, "com.huawei.intent.action.PUSH_ON"

    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v3

    const-string v4, "Remote_Package_Name"

    invoke-virtual {v3, v4, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v3

    const/16 v4, 0x20

    invoke-virtual {v3, v4}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v2

    .line 50
    .local v2, intentStart:Landroid/content/Intent;
    invoke-virtual {p0, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 55
    .end local v2           #intentStart:Landroid/content/Intent;
    :cond_0
    :goto_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    .line 59
    .end local v1           #highPkgName:Ljava/lang/String;
    :goto_1
    return v3

    .line 52
    .restart local v1       #highPkgName:Ljava/lang/String;
    :cond_1
    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    const-string v4, "android"

    const-string v5, "com.huawei.android.pushagentproxy.PushService"

    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v3

    invoke-virtual {p0, v3}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 56
    .end local v1           #highPkgName:Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 57
    .local v0, e:Ljava/lang/Throwable;
    const-string v3, "PushLog2510"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "SetPushServiceStartIfMyHightVersion:SetHightSDKStart() exception "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v0}, Lcom/huawei/android/pushagent/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 59
    const/4 v3, 0x1

    goto :goto_1
.end method

.method public static waitServiceStart(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 9
    .parameter "context"
    .parameter "pkgName"
    .parameter "serviceClsName"

    .prologue
    const/4 v5, 0x0

    .line 179
    const/4 v3, 0x0

    .line 180
    .local v3, isStartPushService:Z
    const/4 v0, 0x2

    .line 181
    .local v0, MaxStartTime:I
    const/16 v4, 0x1388

    .line 183
    .local v4, sleepTime:I
    const/4 v2, 0x0

    .line 186
    .local v2, iWaitTime:I
    :cond_0
    int-to-long v6, v4

    :try_start_0
    invoke-static {v6, v7}, Ljava/lang/Thread;->sleep(J)V

    .line 187
    invoke-static {p0, p2, p1}, Lcom/huawei/android/pushagent/utils/tools/PushServiceTools;->isServiceStarted(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    .line 188
    if-nez v3, :cond_1

    .line 189
    const-string v6, "PushLog2510"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "my PushService is not start, wait "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const/4 v8, 0x5

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " sec, times:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/huawei/android/pushagent/utils/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 193
    if-nez v3, :cond_1

    add-int/lit8 v2, v2, 0x1

    if-le v2, v0, :cond_0

    .line 195
    :cond_1
    if-nez v3, :cond_2

    .line 196
    const-string v6, "PushLog2510"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "after wait "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const/16 v8, 0x2710

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " secs, push service is not start"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/huawei/android/pushagent/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 203
    :goto_0
    return v5

    .line 199
    :catch_0
    move-exception v1

    .line 200
    .local v1, e:Ljava/lang/InterruptedException;
    const-string v6, "PushLog2510"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "call waitMyPushServiceStart case InterruptedException:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v1}, Ljava/lang/InterruptedException;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7, v1}, Lcom/huawei/android/pushagent/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 203
    .end local v1           #e:Ljava/lang/InterruptedException;
    :cond_2
    const/4 v5, 0x1

    goto :goto_0
.end method
