.class public Lcom/huawei/android/pushagent/model/pushcommand/PushCommandProcessor;
.super Lcom/huawei/android/pushagent/model/PushVirtualReceiver;
.source "PushCommandProcessor.java"


# static fields
.field public static final DISP_PKG_NAME:Ljava/lang/String; = "dispPkgName"

.field public static final MSG_CONTENT:Ljava/lang/String; = "msgContent"

.field public static final PUSH_CLIENT_REQUEST_INFO:Ljava/lang/String; = "pclient_request_info"

.field public static final PUSH_CLIENT_UNRIST_INFO:Ljava/lang/String; = "pclient_unRegist_info"

.field private static final TAG:Ljava/lang/String; = "PushLog2510"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter "context"

    .prologue
    .line 55
    invoke-direct {p0}, Lcom/huawei/android/pushagent/model/PushVirtualReceiver;-><init>()V

    .line 57
    return-void
.end method

.method private dealwithAddPackage(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 6
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 807
    const-string v1, ""

    .line 809
    .local v1, pkgName:Ljava/lang/String;
    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v2

    .line 810
    .local v2, uri:Landroid/net/Uri;
    if-eqz v2, :cond_0

    .line 811
    invoke-virtual {v2}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v1

    .line 813
    :cond_0
    const-string v3, "PushLog2510"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "responseAddPackage pkgName= "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/huawei/android/pushagent/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 814
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 815
    const-string v3, "PushLog2510"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "responseAddPackage,isRegistered:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {p1, v1}, Lcom/huawei/android/pushagent/model/pushcommand/DeviceTokenMgr;->isRegistered(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/huawei/android/pushagent/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 817
    invoke-static {p1, v1}, Lcom/huawei/android/pushagent/model/pushcommand/DeviceTokenMgr;->isRegistered(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 818
    invoke-static {p1, v1}, Lcom/huawei/android/pushagent/utils/CommFun;->isPushClient(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 819
    invoke-direct {p0, p1, v1}, Lcom/huawei/android/pushagent/model/pushcommand/PushCommandProcessor;->sendRegisterToken(Landroid/content/Context;Ljava/lang/String;)V

    .line 842
    :cond_1
    :goto_0
    return-void

    .line 821
    :cond_2
    new-instance v3, Landroid/content/Intent;

    const-string v4, "com.huawei.android.push.intent.UNREGISTER"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v4, "pkg_name"

    invoke-virtual {v3, v4, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v3

    invoke-virtual {p0, p1, v3}, Lcom/huawei/android/pushagent/model/pushcommand/PushCommandProcessor;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V

    goto :goto_0

    .line 824
    :cond_3
    invoke-static {p1, v1}, Lcom/huawei/android/pushagent/utils/CommFun;->isPushClient(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    .line 825
    .local v0, isPushClient:Z
    if-eqz v0, :cond_1

    .line 826
    const-string v3, "com.huawei.android.pushagent"

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    const-string v3, "android"

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 828
    invoke-direct {p0, p1, v1}, Lcom/huawei/android/pushagent/model/pushcommand/PushCommandProcessor;->sendRegisterToken(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private dealwithRemovePackage(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 6
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 845
    const-string v1, ""

    .line 847
    .local v1, pkgName:Ljava/lang/String;
    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v2

    .line 848
    .local v2, uri:Landroid/net/Uri;
    if-eqz v2, :cond_0

    .line 849
    invoke-virtual {v2}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v1

    .line 854
    :cond_0
    const-string v3, "android.intent.extra.DATA_REMOVED"

    const/4 v4, 0x1

    invoke-virtual {p2, v3, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    .line 855
    .local v0, isRemoveData:Z
    const-string v3, "PushLog2510"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "ACTION_PACKAGE_REMOVED : isRemoveData="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " remove pkgName:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/huawei/android/pushagent/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 858
    if-nez v0, :cond_2

    .line 892
    :cond_1
    :goto_0
    return-void

    .line 864
    :cond_2
    const-string v3, "PushLog2510"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "responseRemovePackage pkgName= "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/huawei/android/pushagent/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 867
    invoke-static {p1, v1}, Lcom/huawei/android/pushagent/utils/CommFun;->isPushClient(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 868
    const-string v3, "PushLog2510"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "received pkgRemove action, but pkg:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " is exist and have "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "com.huawei.android.push.intent.REGISTRATION"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", register again"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/huawei/android/pushagent/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 872
    invoke-static {p1, v1}, Lcom/huawei/android/pushagent/model/pushcommand/DeviceTokenMgr;->isRegistered(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 873
    invoke-direct {p0, p1, v1}, Lcom/huawei/android/pushagent/model/pushcommand/PushCommandProcessor;->sendRegisterToken(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    .line 890
    :cond_3
    invoke-direct {p0, p1, p2}, Lcom/huawei/android/pushagent/model/pushcommand/PushCommandProcessor;->responseClientUnRegistration(Landroid/content/Context;Landroid/content/Intent;)V

    goto :goto_0
.end method

.method private deposeMessageBySelf(Landroid/content/Context;Lcom/huawei/android/pushagent/datatype/pushmessage/PushDataReqMessage;)V
    .locals 7
    .parameter "context"
    .parameter "msg"

    .prologue
    .line 641
    :try_start_0
    const-string v4, "PushLog2510"

    const-string v5, "enter deposeMessageBySelf"

    invoke-static {v4, v5}, Lcom/huawei/android/pushagent/utils/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 642
    if-eqz p2, :cond_0

    invoke-virtual {p2}, Lcom/huawei/android/pushagent/datatype/pushmessage/PushDataReqMessage;->getMsgData()[B

    move-result-object v4

    if-nez v4, :cond_1

    .line 643
    :cond_0
    const-string v4, "PushLog2510"

    const-string v5, "enter deposeMessageBySelf msg is null!"

    invoke-static {v4, v5}, Lcom/huawei/android/pushagent/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 684
    :goto_0
    return-void

    .line 647
    :cond_1
    new-instance v3, Ljava/lang/String;

    invoke-virtual {p2}, Lcom/huawei/android/pushagent/datatype/pushmessage/PushDataReqMessage;->getMsgData()[B

    move-result-object v4

    const-string v5, "UTF-8"

    invoke-direct {v3, v4, v5}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    .line 648
    .local v3, jsonStr:Ljava/lang/String;
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 649
    const-string v4, "PushLog2510"

    const-string v5, "enter deposeMessageBySelf jsonStr is null!"

    invoke-static {v4, v5}, Lcom/huawei/android/pushagent/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 681
    .end local v3           #jsonStr:Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 682
    .local v1, e:Ljava/lang/Exception;
    const-string v4, "PushLog2510"

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, v1}, Lcom/huawei/android/pushagent/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 652
    .end local v1           #e:Ljava/lang/Exception;
    .restart local v3       #jsonStr:Ljava/lang/String;
    :cond_2
    :try_start_1
    const-string v4, "PushLog2510"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "jsonStr is: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/huawei/android/pushagent/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 654
    :try_start_2
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, v3}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 655
    .local v2, jsonObj:Lorg/json/JSONObject;
    const-string v4, "app"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 656
    const-string v4, "PushLog2510"

    const-string v5, "jsonStr has a mapping for app"

    invoke-static {v4, v5}, Lcom/huawei/android/pushagent/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 658
    :try_start_3
    const-string v4, "app"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    .line 659
    .local v0, appValue:I
    const/4 v4, 0x1

    if-ne v4, v0, :cond_3

    .line 660
    invoke-static {p1, v3}, Lcom/huawei/android/pushagent/model/pushcommand/ModifyConfigs;->modify(Landroid/content/Context;Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_0

    .line 665
    .end local v0           #appValue:I
    :catch_1
    move-exception v1

    .line 666
    .restart local v1       #e:Ljava/lang/Exception;
    :try_start_4
    const-string v4, "PushLog2510"

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, v1}, Lcom/huawei/android/pushagent/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    .line 677
    .end local v1           #e:Ljava/lang/Exception;
    .end local v2           #jsonObj:Lorg/json/JSONObject;
    :goto_1
    :try_start_5
    const-string v4, "PushLog2510"

    const-string v5, "get selfShow message, send broadcast!!!"

    invoke-static {v4, v5}, Lcom/huawei/android/pushagent/utils/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 678
    const-string v4, "PushLog2510"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "selfShow message is:,"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/huawei/android/pushagent/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 679
    invoke-virtual {p0, p1, p2}, Lcom/huawei/android/pushagent/model/pushcommand/PushCommandProcessor;->deposeSelfShowMsg(Landroid/content/Context;Lcom/huawei/android/pushagent/datatype/pushmessage/PushDataReqMessage;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0

    goto/16 :goto_0

    .line 663
    .restart local v0       #appValue:I
    .restart local v2       #jsonObj:Lorg/json/JSONObject;
    :cond_3
    :try_start_6
    const-string v4, "PushLog2510"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "the app value is not 1! it is "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/huawei/android/pushagent/utils/Log;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_1

    goto :goto_1

    .line 669
    .end local v0           #appValue:I
    :cond_4
    :try_start_7
    const-string v4, "PushLog2510"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "jsonStr:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " does not  have a mapping for app"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/huawei/android/pushagent/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_2

    goto :goto_1

    .line 672
    .end local v2           #jsonObj:Lorg/json/JSONObject;
    :catch_2
    move-exception v1

    .line 673
    .restart local v1       #e:Ljava/lang/Exception;
    :try_start_8
    const-string v4, "PushLog2510"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " depose failed, maybe old selfShow message"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/huawei/android/pushagent/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_0

    goto :goto_1
.end method

.method private getDeviceRegisterReqMessage(Landroid/content/Context;Ljava/lang/String;)Lcom/huawei/android/pushagent/datatype/pushmessage/NewDeviceRegisterReqMessage;
    .locals 22
    .parameter "context"
    .parameter "imei"

    .prologue
    .line 522
    const-string v1, "pushConfig"

    const/4 v2, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v17

    .line 524
    .local v17, preference:Landroid/content/SharedPreferences;
    invoke-static/range {p1 .. p1}, Lcom/huawei/android/pushagent/utils/CommFun;->getVersion(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    .line 525
    .local v4, agentVersion:I
    const-string v1, "cloudpush_off"

    const-wide/16 v2, 0x0

    move-object/from16 v0, v17

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v5

    .line 527
    .local v5, lastDisconnectTime:J
    const-string v1, "cloudpush_on"

    const-wide/16 v2, 0x0

    move-object/from16 v0, v17

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v7

    .line 529
    .local v7, currentConnectTime:J
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v9

    .line 531
    .local v9, currentTime:J
    const/4 v11, 0x0

    .line 533
    .local v11, netEventAccount:I
    const/4 v12, 0x0

    .line 536
    .local v12, netEventInfoList:[Lcom/huawei/android/pushagent/datatype/pushmessage/NetEventInfo;
    :try_start_0
    const-string v1, "cloudpush_arrayOfNetEventTime"

    const-string v2, ""

    move-object/from16 v0, v17

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    .line 538
    .local v20, strNetEventTime:Ljava/lang/String;
    invoke-static/range {v20 .. v20}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "null"

    move-object/from16 v0, v20

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 541
    :cond_0
    const-string v1, "\\,"

    move-object/from16 v0, v20

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v18

    .line 542
    .local v18, strNetEventList:[Ljava/lang/String;
    move-object/from16 v0, v18

    array-length v11, v0

    .line 545
    .end local v18           #strNetEventList:[Ljava/lang/String;
    :cond_1
    const-string v1, "PushLog2510"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mDeviceTokenMgr.tokenMap.size:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static/range {p1 .. p1}, Lcom/huawei/android/pushagent/model/pushcommand/DeviceTokenMgr;->getInstance(Landroid/content/Context;)Lcom/huawei/android/pushagent/model/pushcommand/DeviceTokenMgr;

    move-result-object v3

    iget-object v3, v3, Lcom/huawei/android/pushagent/model/pushcommand/DeviceTokenMgr;->tokenMap:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/huawei/android/pushagent/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 546
    invoke-static/range {p1 .. p1}, Lcom/huawei/android/pushagent/model/pushcommand/DeviceTokenMgr;->getInstance(Landroid/content/Context;)Lcom/huawei/android/pushagent/model/pushcommand/DeviceTokenMgr;

    move-result-object v1

    iget-object v1, v1, Lcom/huawei/android/pushagent/model/pushcommand/DeviceTokenMgr;->tokenMap:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->size()I

    move-result v1

    if-nez v1, :cond_2

    .line 547
    add-int/lit8 v11, v11, 0x1

    .line 550
    :cond_2
    const/16 v1, 0x10

    if-le v11, v1, :cond_3

    .line 551
    const/16 v11, 0x10

    .line 553
    :cond_3
    const-string v1, "PushLog2510"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "netEventAccount is: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/huawei/android/pushagent/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 554
    new-array v12, v11, [Lcom/huawei/android/pushagent/datatype/pushmessage/NetEventInfo;

    .line 556
    invoke-static/range {v20 .. v20}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_4

    const-string v1, "null"

    move-object/from16 v0, v20

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 559
    :cond_4
    const-string v1, "\\,"

    move-object/from16 v0, v20

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v18

    .line 561
    .restart local v18       #strNetEventList:[Ljava/lang/String;
    const/4 v14, 0x0

    .local v14, i:I
    :goto_0
    move-object/from16 v0, v18

    array-length v1, v0

    if-ge v14, v1, :cond_5

    .line 562
    aget-object v1, v18, v14

    const-string v2, "\\-"

    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v19

    .line 563
    .local v19, strNetEventSplit:[Ljava/lang/String;
    new-instance v1, Lcom/huawei/android/pushagent/datatype/pushmessage/NetEventInfo;

    invoke-direct {v1}, Lcom/huawei/android/pushagent/datatype/pushmessage/NetEventInfo;-><init>()V

    aput-object v1, v12, v14

    .line 564
    aget-object v1, v12, v14

    const/4 v2, 0x0

    aget-object v2, v19, v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    int-to-byte v2, v2

    invoke-virtual {v1, v2}, Lcom/huawei/android/pushagent/datatype/pushmessage/NetEventInfo;->setNetType(B)V

    .line 566
    aget-object v1, v12, v14

    const/4 v2, 0x1

    aget-object v2, v19, v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    int-to-byte v2, v2

    invoke-virtual {v1, v2}, Lcom/huawei/android/pushagent/datatype/pushmessage/NetEventInfo;->setNetEvent(B)V

    .line 568
    aget-object v1, v12, v14

    const/4 v2, 0x2

    aget-object v2, v19, v2

    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/huawei/android/pushagent/datatype/pushmessage/NetEventInfo;->setNetEventTime(J)V

    .line 561
    add-int/lit8 v14, v14, 0x1

    goto :goto_0

    .line 573
    .end local v14           #i:I
    .end local v18           #strNetEventList:[Ljava/lang/String;
    .end local v19           #strNetEventSplit:[Ljava/lang/String;
    :cond_5
    invoke-static/range {p1 .. p1}, Lcom/huawei/android/pushagent/model/pushcommand/DeviceTokenMgr;->getInstance(Landroid/content/Context;)Lcom/huawei/android/pushagent/model/pushcommand/DeviceTokenMgr;

    move-result-object v1

    iget-object v1, v1, Lcom/huawei/android/pushagent/model/pushcommand/DeviceTokenMgr;->tokenMap:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->size()I

    move-result v1

    if-nez v1, :cond_7

    .line 574
    add-int/lit8 v21, v11, -0x1

    .line 575
    .local v21, syncPos:I
    const-string v1, "PushLog2510"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "syncPos is: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move/from16 v0, v21

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/huawei/android/pushagent/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 576
    aget-object v1, v12, v21

    if-nez v1, :cond_6

    .line 577
    new-instance v1, Lcom/huawei/android/pushagent/datatype/pushmessage/NetEventInfo;

    invoke-direct {v1}, Lcom/huawei/android/pushagent/datatype/pushmessage/NetEventInfo;-><init>()V

    aput-object v1, v12, v21

    .line 579
    :cond_6
    aget-object v1, v12, v21

    const/4 v2, -0x1

    invoke-virtual {v1, v2}, Lcom/huawei/android/pushagent/datatype/pushmessage/NetEventInfo;->setNetType(B)V

    .line 580
    aget-object v1, v12, v21

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/huawei/android/pushagent/datatype/pushmessage/NetEventInfo;->setNetEvent(B)V

    .line 581
    aget-object v1, v12, v21

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/huawei/android/pushagent/datatype/pushmessage/NetEventInfo;->setNetEventTime(J)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 596
    .end local v21           #syncPos:I
    :cond_7
    new-instance v1, Lcom/huawei/android/pushagent/datatype/pushmessage/NewDeviceRegisterReqMessage;

    invoke-static/range {p1 .. p1}, Lcom/huawei/android/pushagent/utils/CommFun;->getAvailableNetwork(Landroid/content/Context;)I

    move-result v2

    int-to-byte v3, v2

    move-object/from16 v2, p2

    invoke-direct/range {v1 .. v12}, Lcom/huawei/android/pushagent/datatype/pushmessage/NewDeviceRegisterReqMessage;-><init>(Ljava/lang/String;BIJJJI[Lcom/huawei/android/pushagent/datatype/pushmessage/NetEventInfo;)V

    .end local v20           #strNetEventTime:Ljava/lang/String;
    :goto_1
    return-object v1

    .line 583
    :catch_0
    move-exception v13

    move-object/from16 v16, v12

    .end local v12           #netEventInfoList:[Lcom/huawei/android/pushagent/datatype/pushmessage/NetEventInfo;
    .local v16, netEventInfoList:[Lcom/huawei/android/pushagent/datatype/pushmessage/NetEventInfo;
    move v15, v11

    .line 584
    .end local v11           #netEventAccount:I
    .local v13, e:Ljava/lang/NumberFormatException;
    .local v15, netEventAccount:I
    new-instance v1, Lcom/huawei/android/pushagent/datatype/pushmessage/NewDeviceRegisterReqMessage;

    invoke-static/range {p1 .. p1}, Lcom/huawei/android/pushagent/utils/CommFun;->getAvailableNetwork(Landroid/content/Context;)I

    move-result v2

    int-to-byte v3, v2

    const/4 v11, 0x0

    const/4 v12, 0x0

    move-object/from16 v2, p2

    invoke-direct/range {v1 .. v12}, Lcom/huawei/android/pushagent/datatype/pushmessage/NewDeviceRegisterReqMessage;-><init>(Ljava/lang/String;BIJJJI[Lcom/huawei/android/pushagent/datatype/pushmessage/NetEventInfo;)V

    move-object/from16 v12, v16

    .end local v16           #netEventInfoList:[Lcom/huawei/android/pushagent/datatype/pushmessage/NetEventInfo;
    .restart local v12       #netEventInfoList:[Lcom/huawei/android/pushagent/datatype/pushmessage/NetEventInfo;
    move v11, v15

    .end local v15           #netEventAccount:I
    .restart local v11       #netEventAccount:I
    goto :goto_1

    .line 588
    .end local v13           #e:Ljava/lang/NumberFormatException;
    :catch_1
    move-exception v13

    move-object/from16 v16, v12

    .end local v12           #netEventInfoList:[Lcom/huawei/android/pushagent/datatype/pushmessage/NetEventInfo;
    .restart local v16       #netEventInfoList:[Lcom/huawei/android/pushagent/datatype/pushmessage/NetEventInfo;
    move v15, v11

    .line 589
    .end local v11           #netEventAccount:I
    .local v13, e:Ljava/lang/Exception;
    .restart local v15       #netEventAccount:I
    new-instance v1, Lcom/huawei/android/pushagent/datatype/pushmessage/NewDeviceRegisterReqMessage;

    invoke-static/range {p1 .. p1}, Lcom/huawei/android/pushagent/utils/CommFun;->getAvailableNetwork(Landroid/content/Context;)I

    move-result v2

    int-to-byte v3, v2

    const/4 v11, 0x0

    const/4 v12, 0x0

    move-object/from16 v2, p2

    invoke-direct/range {v1 .. v12}, Lcom/huawei/android/pushagent/datatype/pushmessage/NewDeviceRegisterReqMessage;-><init>(Ljava/lang/String;BIJJJI[Lcom/huawei/android/pushagent/datatype/pushmessage/NetEventInfo;)V

    move-object/from16 v12, v16

    .end local v16           #netEventInfoList:[Lcom/huawei/android/pushagent/datatype/pushmessage/NetEventInfo;
    .restart local v12       #netEventInfoList:[Lcom/huawei/android/pushagent/datatype/pushmessage/NetEventInfo;
    move v11, v15

    .end local v15           #netEventAccount:I
    .restart local v11       #netEventAccount:I
    goto :goto_1
.end method

.method private static netEventStatistics(Landroid/content/SharedPreferences;Landroid/net/NetworkInfo;)V
    .locals 11
    .parameter "preference"
    .parameter "networkInfo"

    .prologue
    const/16 v10, 0x10

    .line 609
    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    .line 610
    .local v2, editor:Landroid/content/SharedPreferences$Editor;
    const-string v8, "cloudpush_arrayOfNetEventTime"

    const-string v9, ""

    invoke-interface {p0, v8, v9}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 612
    .local v7, strNetEventTime:Ljava/lang/String;
    const-string v1, ""

    .line 613
    .local v1, editStrNetEventTime:Ljava/lang/String;
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_0

    const-string v8, "null"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 615
    :cond_0
    const-string v8, "\\,"

    invoke-virtual {v7, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    .line 616
    .local v6, strNetEventList:[Ljava/lang/String;
    array-length v8, v6

    add-int/lit8 v5, v8, -0x1

    .line 617
    .local v5, netEventAccount:I
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 618
    .local v0, buf:Ljava/lang/StringBuffer;
    if-ne v5, v10, :cond_4

    .line 619
    const/4 v3, 0x0

    .local v3, i:I
    :goto_0
    const/16 v8, 0xf

    if-ge v3, v8, :cond_1

    .line 620
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    add-int/lit8 v9, v3, 0x1

    aget-object v9, v6, v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ","

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 619
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 622
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    .line 627
    .end local v0           #buf:Ljava/lang/StringBuffer;
    .end local v3           #i:I
    .end local v5           #netEventAccount:I
    .end local v6           #strNetEventList:[Ljava/lang/String;
    :cond_2
    :goto_1
    const/4 v4, 0x0

    .line 628
    .local v4, netEvent:Ljava/lang/String;
    invoke-virtual {p1}, Landroid/net/NetworkInfo;->getType()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    .line 629
    invoke-virtual {p1}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v8

    if-nez v8, :cond_3

    invoke-virtual {p1}, Landroid/net/NetworkInfo;->isConnectedOrConnecting()Z

    move-result v8

    if-eqz v8, :cond_5

    .line 630
    :cond_3
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "-1-"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v9

    invoke-static {v9, v10}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 634
    :goto_2
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 635
    const-string v8, "cloudpush_arrayOfNetEventTime"

    invoke-interface {v2, v8, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v8

    invoke-interface {v8}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 637
    return-void

    .line 623
    .end local v4           #netEvent:Ljava/lang/String;
    .restart local v0       #buf:Ljava/lang/StringBuffer;
    .restart local v5       #netEventAccount:I
    .restart local v6       #strNetEventList:[Ljava/lang/String;
    :cond_4
    if-ge v5, v10, :cond_2

    .line 624
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ","

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    .line 632
    .end local v0           #buf:Ljava/lang/StringBuffer;
    .end local v5           #netEventAccount:I
    .end local v6           #strNetEventList:[Ljava/lang/String;
    .restart local v4       #netEvent:Ljava/lang/String;
    :cond_5
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "-0-"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v9

    invoke-static {v9, v10}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_2
.end method

.method private responseClientRegistration(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 370
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.huawei.intent.action.PUSH_OFF"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    const-string v2, "Remote_Package_Name"

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    invoke-static {p1, v1}, Lcom/huawei/android/pushagent/utils/tools/AlarmTools;->cancelAlarm(Landroid/content/Context;Landroid/content/Intent;)V

    .line 375
    const-string v1, "pkg_name"

    invoke-virtual {p2, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 376
    .local v0, pkgname:Ljava/lang/String;
    const-string v1, "PushLog2510"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "PushCommandProcessor: get the packageName: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/huawei/android/pushagent/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 377
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 378
    invoke-static {p1, v0}, Lcom/huawei/android/pushagent/utils/tools/PushServiceTools;->isPkgInstall(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 379
    const-string v1, "PushLog2510"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "rec register toke request , but the packageName:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " was not install !!"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/huawei/android/pushagent/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 393
    :goto_0
    return-void

    .line 383
    :cond_0
    invoke-static {p1, v0}, Lcom/huawei/android/pushagent/model/pushcommand/DeviceTokenMgr;->isRegistered(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 384
    const-string v1, "PushLog2510"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "PushCommandProcessor: this package:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " have already registered "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/huawei/android/pushagent/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 386
    invoke-static {p1, v0}, Lcom/huawei/android/pushagent/model/pushcommand/DeviceTokenMgr;->getTokenByPackageName(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v0, v1}, Lcom/huawei/android/pushagent/model/pushcommand/PushCommandProcessor;->sendBroadcast2PClient(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 388
    :cond_1
    invoke-direct {p0, p1, v0}, Lcom/huawei/android/pushagent/model/pushcommand/PushCommandProcessor;->sendRegisterToken(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    .line 391
    :cond_2
    const-string v1, "PushLog2510"

    const-string v2, "PushCommandProcessor: get the wrong package name from the Client!"

    invoke-static {v1, v2}, Lcom/huawei/android/pushagent/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private responseClientUnRegistration(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 7
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 782
    const-string v4, "pkg_name"

    invoke-virtual {p2, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 783
    .local v0, pkgName:Ljava/lang/String;
    if-nez v0, :cond_0

    .line 785
    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v3

    .line 786
    .local v3, uri:Landroid/net/Uri;
    if-eqz v3, :cond_0

    .line 787
    invoke-virtual {v3}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v0

    .line 790
    .end local v3           #uri:Landroid/net/Uri;
    :cond_0
    const-string v4, "PushLog2510"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "responseClientUnRegistration: packagename = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/huawei/android/pushagent/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 792
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 793
    new-instance v1, Lcom/huawei/android/pushagent/utils/tools/PushPreferences;

    const-string v4, "pclient_request_info"

    invoke-direct {v1, p1, v4}, Lcom/huawei/android/pushagent/utils/tools/PushPreferences;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 794
    .local v1, pushRef:Lcom/huawei/android/pushagent/utils/tools/PushPreferences;
    invoke-virtual {v1, v0}, Lcom/huawei/android/pushagent/utils/tools/PushPreferences;->removeKey(Ljava/lang/String;)Z

    .line 796
    invoke-static {p1, v0}, Lcom/huawei/android/pushagent/model/pushcommand/DeviceTokenMgr;->isRegistered(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 797
    new-instance v2, Lcom/huawei/android/pushagent/utils/tools/PushPreferences;

    const-string v4, "pclient_unRegist_info"

    invoke-direct {v2, p1, v4}, Lcom/huawei/android/pushagent/utils/tools/PushPreferences;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 798
    .local v2, pushUnRegist:Lcom/huawei/android/pushagent/utils/tools/PushPreferences;
    invoke-static {p1, v0}, Lcom/huawei/android/pushagent/model/pushcommand/DeviceTokenMgr;->getTokenByPackageName(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4, v0}, Lcom/huawei/android/pushagent/utils/tools/PushPreferences;->saveString(Ljava/lang/String;Ljava/lang/String;)Z

    .line 799
    invoke-direct {p0, p1, v0}, Lcom/huawei/android/pushagent/model/pushcommand/PushCommandProcessor;->sendUnregisterToken(Landroid/content/Context;Ljava/lang/String;)V

    .line 801
    .end local v2           #pushUnRegist:Lcom/huawei/android/pushagent/utils/tools/PushPreferences;
    :cond_1
    invoke-static {p1, v0}, Lcom/huawei/android/pushagent/model/pushcommand/DeviceTokenMgr;->removeClientInfo(Landroid/content/Context;Ljava/lang/String;)V

    .line 804
    .end local v1           #pushRef:Lcom/huawei/android/pushagent/utils/tools/PushPreferences;
    :cond_2
    return-void
.end method

.method private responseMsgData(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 7
    .parameter "context"
    .parameter "intent"

    .prologue
    const-wide/16 v5, 0x64

    .line 171
    const-string v4, "push_msg"

    invoke-virtual {p2, v4}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v2

    check-cast v2, Lcom/huawei/android/pushagent/datatype/pushmessage/basic/PushMessage;

    .line 172
    .local v2, msg:Lcom/huawei/android/pushagent/datatype/pushmessage/basic/PushMessage;
    invoke-virtual {v2}, Lcom/huawei/android/pushagent/datatype/pushmessage/basic/PushMessage;->getCmdID()B

    move-result v0

    .line 174
    .local v0, cmdId:B
    sparse-switch v0, :sswitch_data_0

    .line 214
    .end local v2           #msg:Lcom/huawei/android/pushagent/datatype/pushmessage/basic/PushMessage;
    :goto_0
    :sswitch_0
    return-void

    .restart local v2       #msg:Lcom/huawei/android/pushagent/datatype/pushmessage/basic/PushMessage;
    :sswitch_1
    move-object v1, v2

    .line 178
    check-cast v1, Lcom/huawei/android/pushagent/datatype/pushmessage/DeviceRegisterRspMessage;

    .line 179
    .local v1, message:Lcom/huawei/android/pushagent/datatype/pushmessage/DeviceRegisterRspMessage;
    invoke-virtual {v1}, Lcom/huawei/android/pushagent/datatype/pushmessage/DeviceRegisterRspMessage;->getResult()B

    move-result v4

    if-nez v4, :cond_0

    .line 181
    const-string v4, "PushLog2510"

    const-string v5, "PushCommandProcessor device register success"

    invoke-static {v4, v5}, Lcom/huawei/android/pushagent/utils/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 182
    invoke-direct {p0, p1}, Lcom/huawei/android/pushagent/model/pushcommand/PushCommandProcessor;->sendAllMessagetoServer(Landroid/content/Context;)V

    goto :goto_0

    .line 184
    :cond_0
    const-string v4, "PushLog2510"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "PushCommandProcessor device register fail:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v1}, Lcom/huawei/android/pushagent/datatype/pushmessage/DeviceRegisterRspMessage;->getResult()B

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/huawei/android/pushagent/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .end local v1           #message:Lcom/huawei/android/pushagent/datatype/pushmessage/DeviceRegisterRspMessage;
    :sswitch_2
    move-object v3, v2

    .line 189
    check-cast v3, Lcom/huawei/android/pushagent/datatype/pushmessage/NewDeviceRegisterRspMessage;

    .line 190
    .local v3, newRegRsp:Lcom/huawei/android/pushagent/datatype/pushmessage/NewDeviceRegisterRspMessage;
    invoke-virtual {v3}, Lcom/huawei/android/pushagent/datatype/pushmessage/NewDeviceRegisterRspMessage;->getResult()B

    move-result v4

    if-nez v4, :cond_1

    .line 192
    const-string v4, "PushLog2510"

    const-string v5, "PushCommandProcessor device register success"

    invoke-static {v4, v5}, Lcom/huawei/android/pushagent/utils/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 193
    invoke-direct {p0, p1}, Lcom/huawei/android/pushagent/model/pushcommand/PushCommandProcessor;->sendAllMessagetoServer(Landroid/content/Context;)V

    goto :goto_0

    .line 195
    :cond_1
    const-string v4, "PushLog2510"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "PushCommandProcessor device register fail:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v3}, Lcom/huawei/android/pushagent/datatype/pushmessage/NewDeviceRegisterRspMessage;->getResult()B

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/huawei/android/pushagent/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 201
    .end local v3           #newRegRsp:Lcom/huawei/android/pushagent/datatype/pushmessage/NewDeviceRegisterRspMessage;
    :sswitch_3
    check-cast v2, Lcom/huawei/android/pushagent/datatype/pushmessage/RegisterTokenRspMessage;

    .end local v2           #msg:Lcom/huawei/android/pushagent/datatype/pushmessage/basic/PushMessage;
    invoke-direct {p0, p1, v2}, Lcom/huawei/android/pushagent/model/pushcommand/PushCommandProcessor;->responseRegisterToken(Landroid/content/Context;Lcom/huawei/android/pushagent/datatype/pushmessage/RegisterTokenRspMessage;)V

    .line 202
    invoke-static {p1, v5, v6}, Lcom/huawei/android/pushagent/utils/CommFun;->wakeSystem(Landroid/content/Context;J)V

    goto :goto_0

    .line 205
    .restart local v2       #msg:Lcom/huawei/android/pushagent/datatype/pushmessage/basic/PushMessage;
    :sswitch_4
    check-cast v2, Lcom/huawei/android/pushagent/datatype/pushmessage/UnRegisterRspMessage;

    .end local v2           #msg:Lcom/huawei/android/pushagent/datatype/pushmessage/basic/PushMessage;
    invoke-direct {p0, p1, v2}, Lcom/huawei/android/pushagent/model/pushcommand/PushCommandProcessor;->responseUnregisterToken(Landroid/content/Context;Lcom/huawei/android/pushagent/datatype/pushmessage/UnRegisterRspMessage;)V

    goto :goto_0

    .line 208
    .restart local v2       #msg:Lcom/huawei/android/pushagent/datatype/pushmessage/basic/PushMessage;
    :sswitch_5
    check-cast v2, Lcom/huawei/android/pushagent/datatype/pushmessage/PushDataReqMessage;

    .end local v2           #msg:Lcom/huawei/android/pushagent/datatype/pushmessage/basic/PushMessage;
    invoke-direct {p0, p1, v2}, Lcom/huawei/android/pushagent/model/pushcommand/PushCommandProcessor;->rspPushMessage(Landroid/content/Context;Lcom/huawei/android/pushagent/datatype/pushmessage/PushDataReqMessage;)V

    .line 209
    invoke-static {p1, v5, v6}, Lcom/huawei/android/pushagent/utils/CommFun;->wakeSystem(Landroid/content/Context;J)V

    goto :goto_0

    .line 174
    :sswitch_data_0
    .sparse-switch
        -0x60 -> :sswitch_5
        -0x2d -> :sswitch_1
        -0x29 -> :sswitch_4
        -0x25 -> :sswitch_0
        -0x23 -> :sswitch_3
        -0x21 -> :sswitch_2
    .end sparse-switch
.end method

.method private responseRegisterToken(Landroid/content/Context;Lcom/huawei/android/pushagent/datatype/pushmessage/RegisterTokenRspMessage;)V
    .locals 6
    .parameter "context"
    .parameter "message"

    .prologue
    .line 438
    if-nez p2, :cond_0

    .line 439
    const-string v3, "PushLog2510"

    const-string v4, "responseRegisterToken have a wrong parm"

    invoke-static {v3, v4}, Lcom/huawei/android/pushagent/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 473
    :goto_0
    return-void

    .line 443
    :cond_0
    new-instance v1, Lcom/huawei/android/pushagent/utils/tools/PushPreferences;

    const-string v3, "pclient_request_info"

    invoke-direct {v1, p1, v3}, Lcom/huawei/android/pushagent/utils/tools/PushPreferences;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 444
    .local v1, pushRef:Lcom/huawei/android/pushagent/utils/tools/PushPreferences;
    invoke-virtual {p2}, Lcom/huawei/android/pushagent/datatype/pushmessage/RegisterTokenRspMessage;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 445
    invoke-virtual {p2}, Lcom/huawei/android/pushagent/datatype/pushmessage/RegisterTokenRspMessage;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/huawei/android/pushagent/utils/tools/PushPreferences;->removeKey(Ljava/lang/String;)Z

    .line 447
    :cond_1
    invoke-virtual {p2}, Lcom/huawei/android/pushagent/datatype/pushmessage/RegisterTokenRspMessage;->getResult()B

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_2

    .line 448
    const-string v3, "PushLog2510"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "responseRegisterToken FAILED:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p2}, Lcom/huawei/android/pushagent/datatype/pushmessage/RegisterTokenRspMessage;->getResult()B

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/huawei/android/pushagent/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 452
    :cond_2
    invoke-virtual {p2}, Lcom/huawei/android/pushagent/datatype/pushmessage/RegisterTokenRspMessage;->getToken()Ljava/lang/String;

    move-result-object v2

    .line 453
    .local v2, token:Ljava/lang/String;
    invoke-virtual {p2}, Lcom/huawei/android/pushagent/datatype/pushmessage/RegisterTokenRspMessage;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 456
    .local v0, pkgname:Ljava/lang/String;
    const-string v3, "PushLog2510"

    const-string v4, "get a token from pushSrv"

    invoke-static {v3, v4}, Lcom/huawei/android/pushagent/utils/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 457
    const-string v3, "PushLog2510"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "responseRegisterToken token:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", pkgname:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/huawei/android/pushagent/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 458
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_3

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 459
    :cond_3
    const-string v3, "PushLog2510"

    const-string v4, "responseRegisterToken get the invalid message!!! "

    invoke-static {v3, v4}, Lcom/huawei/android/pushagent/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 464
    :cond_4
    invoke-static {p1, v2, v0}, Lcom/huawei/android/pushagent/model/pushcommand/DeviceTokenMgr;->saveClientInfo(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 465
    invoke-virtual {v1}, Lcom/huawei/android/pushagent/utils/tools/PushPreferences;->getAll()Ljava/util/Map;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Map;->size()I

    move-result v3

    if-nez v3, :cond_5

    .line 466
    new-instance v3, Landroid/content/Intent;

    const-string v4, "com.huawei.action.CONNECT_PUSHSRV_POLLINGSRV"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v3

    invoke-static {p1, v3}, Lcom/huawei/android/pushagent/utils/tools/AlarmTools;->cancelAlarm(Landroid/content/Context;Landroid/content/Intent;)V

    .line 469
    new-instance v3, Landroid/content/Intent;

    const-string v4, "com.huawei.action.CONNECT_PUSHSRV_POLLINGSRV"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-static {v3}, Lcom/huawei/android/pushagent/PushService;->broadcast(Landroid/content/Intent;)V

    .line 472
    :cond_5
    invoke-static {p1, v0, v2}, Lcom/huawei/android/pushagent/model/pushcommand/PushCommandProcessor;->sendBroadcast2PClient(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method private responseUnregisterToken(Landroid/content/Context;Lcom/huawei/android/pushagent/datatype/pushmessage/UnRegisterRspMessage;)V
    .locals 4
    .parameter "context"
    .parameter "msg"

    .prologue
    .line 477
    const-string v2, "PushLog2510"

    const-string v3, "unregister token from pushsrv success"

    invoke-static {v2, v3}, Lcom/huawei/android/pushagent/utils/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 478
    if-nez p2, :cond_0

    .line 479
    const-string v2, "PushLog2510"

    const-string v3, "responseUnregisterToken have an wrong param"

    invoke-static {v2, v3}, Lcom/huawei/android/pushagent/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 492
    :goto_0
    return-void

    .line 483
    :cond_0
    invoke-virtual {p2}, Lcom/huawei/android/pushagent/datatype/pushmessage/UnRegisterRspMessage;->getToken()Ljava/lang/String;

    move-result-object v1

    .line 485
    .local v1, token:Ljava/lang/String;
    invoke-static {p1, v1}, Lcom/huawei/android/pushagent/model/pushcommand/DeviceTokenMgr;->delClientInfo(Landroid/content/Context;Ljava/lang/String;)V

    .line 487
    new-instance v0, Lcom/huawei/android/pushagent/utils/tools/PushPreferences;

    const-string v2, "pclient_unRegist_info"

    invoke-direct {v0, p1, v2}, Lcom/huawei/android/pushagent/utils/tools/PushPreferences;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 488
    .local v0, pushUnRegist:Lcom/huawei/android/pushagent/utils/tools/PushPreferences;
    invoke-virtual {v0, v1}, Lcom/huawei/android/pushagent/utils/tools/PushPreferences;->removeKey(Ljava/lang/String;)Z

    .line 491
    new-instance v2, Landroid/content/Intent;

    const-string v3, "com.huawei.action.CONNECT_PUSHSRV_POLLINGSRV"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-static {v2}, Lcom/huawei/android/pushagent/PushService;->broadcast(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method private rspPushMessage(Landroid/content/Context;Lcom/huawei/android/pushagent/datatype/pushmessage/PushDataReqMessage;)V
    .locals 17
    .parameter "context"
    .parameter "msg"

    .prologue
    .line 286
    const-string v14, "PushLog2510"

    const-string v15, "enter rspPushMessage"

    invoke-static {v14, v15}, Lcom/huawei/android/pushagent/utils/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 287
    invoke-virtual/range {p2 .. p2}, Lcom/huawei/android/pushagent/datatype/pushmessage/PushDataReqMessage;->getToken()[B

    move-result-object v11

    .line 288
    .local v11, token:[B
    const-string v12, ""

    .line 289
    .local v12, tokenStr:Ljava/lang/String;
    if-eqz v11, :cond_0

    .line 291
    :try_start_0
    new-instance v13, Ljava/lang/String;

    const-string v14, "UTF-8"

    invoke-direct {v13, v11, v14}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .end local v12           #tokenStr:Ljava/lang/String;
    .local v13, tokenStr:Ljava/lang/String;
    move-object v12, v13

    .line 296
    .end local v13           #tokenStr:Ljava/lang/String;
    .restart local v12       #tokenStr:Ljava/lang/String;
    :cond_0
    :goto_0
    const-string v6, ""

    .line 297
    .local v6, pkgname:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Lcom/huawei/android/pushagent/datatype/pushmessage/PushDataReqMessage;->getMsgId()[B

    move-result-object v2

    .line 299
    .local v2, msgId:[B
    invoke-virtual/range {p2 .. p2}, Lcom/huawei/android/pushagent/datatype/pushmessage/PushDataReqMessage;->getPackageName()[B

    move-result-object v4

    .line 300
    .local v4, packageName:[B
    if-eqz v4, :cond_4

    array-length v14, v4

    if-lez v14, :cond_4

    .line 301
    invoke-virtual/range {p2 .. p2}, Lcom/huawei/android/pushagent/datatype/pushmessage/PushDataReqMessage;->getPackageNameLen()I

    move-result v5

    .line 302
    .local v5, packageNameLen:I
    array-length v14, v4

    if-ne v14, v5, :cond_1

    .line 304
    :try_start_1
    new-instance v7, Ljava/lang/String;

    const-string v14, "UTF-8"

    invoke-direct {v7, v4, v14}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_1

    .end local v6           #pkgname:Ljava/lang/String;
    .local v7, pkgname:Ljava/lang/String;
    move-object v6, v7

    .line 308
    .end local v7           #pkgname:Ljava/lang/String;
    .restart local v6       #pkgname:Ljava/lang/String;
    :goto_1
    const-string v14, "PushLog2510"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "rspPushMessage from srv response pkgname is :"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Lcom/huawei/android/pushagent/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 313
    .end local v5           #packageNameLen:I
    :cond_1
    :goto_2
    const-string v14, "PushLog2510"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "rspPushMessage token ="

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, " pkgname="

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, " msgId="

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-static {v2}, Lcom/huawei/android/pushagent/utils/CommFun;->byte2HexString([B)Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Lcom/huawei/android/pushagent/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 316
    const/4 v9, 0x0

    .line 317
    .local v9, rspMsg:Lcom/huawei/android/pushagent/datatype/pushmessage/PushDataRspMessage;
    if-eqz v6, :cond_6

    move-object/from16 v0, p1

    invoke-static {v0, v6}, Lcom/huawei/android/pushagent/utils/tools/PushServiceTools;->isPkgInstall(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_6

    .line 318
    const/4 v8, 0x1

    .line 319
    .local v8, pushisopened:Z
    new-instance v9, Lcom/huawei/android/pushagent/datatype/pushmessage/PushDataRspMessage;

    .end local v9           #rspMsg:Lcom/huawei/android/pushagent/datatype/pushmessage/PushDataRspMessage;
    const/4 v14, 0x0

    invoke-direct {v9, v2, v14}, Lcom/huawei/android/pushagent/datatype/pushmessage/PushDataRspMessage;-><init>([BB)V

    .line 320
    .restart local v9       #rspMsg:Lcom/huawei/android/pushagent/datatype/pushmessage/PushDataRspMessage;
    const/4 v14, 0x2

    const/16 v15, 0xb4

    invoke-static {v14, v15}, Lcom/huawei/android/pushagent/utils/CommFun;->ctrlSockets(II)I

    .line 322
    const-string v14, "com.huawei.android.pushagent"

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_2

    const-string v14, "android"

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_3

    .line 324
    :cond_2
    const-string v14, "PushAppNotifiCfg"

    const/4 v15, 0x4

    move-object/from16 v0, p1

    invoke-virtual {v0, v14, v15}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v10

    .line 325
    .local v10, sp:Landroid/content/SharedPreferences;
    const/4 v14, 0x1

    invoke-interface {v10, v6, v14}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v8

    .line 327
    .end local v10           #sp:Landroid/content/SharedPreferences;
    :cond_3
    if-eqz v8, :cond_5

    .line 328
    const/4 v14, 0x2

    const/16 v15, 0xb4

    invoke-static {v14, v15}, Lcom/huawei/android/pushagent/utils/CommFun;->ctrlSockets(II)I

    .line 330
    new-instance v3, Landroid/content/Intent;

    const-string v14, "com.huawei.android.push.intent.RECEIVE"

    invoke-direct {v3, v14}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 331
    .local v3, newIntent:Landroid/content/Intent;
    invoke-virtual {v3, v6}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v14

    const-string v15, "msg_data"

    invoke-virtual/range {p2 .. p2}, Lcom/huawei/android/pushagent/datatype/pushmessage/PushDataReqMessage;->getMsgData()[B

    move-result-object v16

    invoke-virtual/range {v14 .. v16}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    move-result-object v14

    const-string v15, "device_token"

    invoke-virtual {v14, v15, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    move-result-object v14

    const/16 v15, 0x20

    invoke-virtual {v14, v15}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 335
    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 337
    new-instance v14, Landroid/content/Intent;

    const-string v15, "com.huawei.android.push.intent.MSG_BROAD_TO_APP"

    invoke-direct {v14, v15}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v15, "appName"

    invoke-virtual {v14, v15, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v14

    invoke-static {v14}, Lcom/huawei/android/pushagent/PushService;->broadcast(Landroid/content/Intent;)V

    .line 341
    const-string v14, "PushLog2510"

    const-string v15, "broadcast msg to other package"

    invoke-static {v14, v15}, Lcom/huawei/android/pushagent/utils/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 342
    const-string v14, "PushLog2510"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "broadcast to "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, " intent:"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, " over"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Lcom/huawei/android/pushagent/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 358
    .end local v3           #newIntent:Landroid/content/Intent;
    .end local v8           #pushisopened:Z
    :goto_3
    :try_start_2
    invoke-static {}, Lcom/huawei/android/pushagent/model/channel/ChannelMgr;->getPushChannel()Lcom/huawei/android/pushagent/model/channel/entity/ConnectEntity;

    move-result-object v14

    invoke-virtual {v14, v9}, Lcom/huawei/android/pushagent/model/channel/entity/ConnectEntity;->send(Lcom/huawei/android/pushagent/datatype/IPushMessage;)Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 362
    :goto_4
    const-string v14, "PushLog2510"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "rspPushMessage the response msg is :"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Lcom/huawei/android/pushagent/utils/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 364
    return-void

    .line 292
    .end local v2           #msgId:[B
    .end local v4           #packageName:[B
    .end local v6           #pkgname:Ljava/lang/String;
    .end local v9           #rspMsg:Lcom/huawei/android/pushagent/datatype/pushmessage/PushDataRspMessage;
    :catch_0
    move-exception v1

    .line 293
    .local v1, e:Ljava/lang/Exception;
    const-string v14, "PushLog2510"

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15, v1}, Lcom/huawei/android/pushagent/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_0

    .line 305
    .end local v1           #e:Ljava/lang/Exception;
    .restart local v2       #msgId:[B
    .restart local v4       #packageName:[B
    .restart local v5       #packageNameLen:I
    .restart local v6       #pkgname:Ljava/lang/String;
    :catch_1
    move-exception v1

    .line 306
    .local v1, e:Ljava/io/UnsupportedEncodingException;
    const-string v14, "PushLog2510"

    const-string v15, "UnsupportedEncodingException occur"

    invoke-static {v14, v15}, Lcom/huawei/android/pushagent/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 310
    .end local v1           #e:Ljava/io/UnsupportedEncodingException;
    .end local v5           #packageNameLen:I
    :cond_4
    invoke-static/range {p1 .. p1}, Lcom/huawei/android/pushagent/model/pushcommand/DeviceTokenMgr;->getInstance(Landroid/content/Context;)Lcom/huawei/android/pushagent/model/pushcommand/DeviceTokenMgr;

    move-result-object v14

    iget-object v14, v14, Lcom/huawei/android/pushagent/model/pushcommand/DeviceTokenMgr;->tokenMap:Ljava/util/HashMap;

    if-eqz v14, :cond_1

    .line 311
    invoke-static/range {p1 .. p1}, Lcom/huawei/android/pushagent/model/pushcommand/DeviceTokenMgr;->getInstance(Landroid/content/Context;)Lcom/huawei/android/pushagent/model/pushcommand/DeviceTokenMgr;

    move-result-object v14

    iget-object v14, v14, Lcom/huawei/android/pushagent/model/pushcommand/DeviceTokenMgr;->tokenMap:Ljava/util/HashMap;

    invoke-virtual {v14, v12}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    .end local v6           #pkgname:Ljava/lang/String;
    check-cast v6, Ljava/lang/String;

    .restart local v6       #pkgname:Ljava/lang/String;
    goto/16 :goto_2

    .line 344
    .restart local v8       #pushisopened:Z
    .restart local v9       #rspMsg:Lcom/huawei/android/pushagent/datatype/pushmessage/PushDataRspMessage;
    :cond_5
    const-string v14, "PushLog2510"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "The push is closed for "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Lcom/huawei/android/pushagent/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    .line 346
    .end local v8           #pushisopened:Z
    :cond_6
    invoke-static/range {p1 .. p1}, Lcom/huawei/android/pushagent/utils/CommFun;->getPushSelfToken(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v14, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_7

    .line 347
    new-instance v9, Lcom/huawei/android/pushagent/datatype/pushmessage/PushDataRspMessage;

    .end local v9           #rspMsg:Lcom/huawei/android/pushagent/datatype/pushmessage/PushDataRspMessage;
    const/4 v14, 0x0

    invoke-direct {v9, v2, v14}, Lcom/huawei/android/pushagent/datatype/pushmessage/PushDataRspMessage;-><init>([BB)V

    .line 350
    .restart local v9       #rspMsg:Lcom/huawei/android/pushagent/datatype/pushmessage/PushDataRspMessage;
    invoke-direct/range {p0 .. p2}, Lcom/huawei/android/pushagent/model/pushcommand/PushCommandProcessor;->deposeMessageBySelf(Landroid/content/Context;Lcom/huawei/android/pushagent/datatype/pushmessage/PushDataReqMessage;)V

    goto :goto_3

    .line 353
    :cond_7
    const-string v14, "PushLog2510"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "pkgName"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, " is null or not exist in local"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Lcom/huawei/android/pushagent/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 354
    new-instance v9, Lcom/huawei/android/pushagent/datatype/pushmessage/PushDataRspMessage;

    .end local v9           #rspMsg:Lcom/huawei/android/pushagent/datatype/pushmessage/PushDataRspMessage;
    const/4 v14, 0x2

    invoke-direct {v9, v2, v14}, Lcom/huawei/android/pushagent/datatype/pushmessage/PushDataRspMessage;-><init>([BB)V

    .restart local v9       #rspMsg:Lcom/huawei/android/pushagent/datatype/pushmessage/PushDataRspMessage;
    goto/16 :goto_3

    .line 359
    :catch_2
    move-exception v1

    .line 360
    .local v1, e:Ljava/lang/Exception;
    const-string v14, "PushLog2510"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "call ChannelMgr.getPushChannel().send cause:"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15, v1}, Lcom/huawei/android/pushagent/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_4
.end method

.method private declared-synchronized saveConnectInfo(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Boolean;)V
    .locals 4
    .parameter "context"
    .parameter "connectType"
    .parameter "status"

    .prologue
    .line 513
    monitor-enter p0

    :try_start_0
    const-string v2, "pushConfig"

    const/4 v3, 0x4

    invoke-virtual {p1, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 515
    .local v1, preference:Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 516
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    const-string v2, "cloudpush_ConnectStatus"

    invoke-virtual {p3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 518
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-interface {v0, p2, v2, v3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 519
    monitor-exit p0

    return-void

    .line 513
    .end local v0           #editor:Landroid/content/SharedPreferences$Editor;
    .end local v1           #preference:Landroid/content/SharedPreferences;
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method private sendAllMessagetoServer(Landroid/content/Context;)V
    .locals 10
    .parameter "context"

    .prologue
    .line 224
    const/4 v7, -0x1

    invoke-static {p1}, Lcom/huawei/android/pushagent/utils/CommFun;->getAvailableNetwork(Landroid/content/Context;)I

    move-result v8

    if-ne v7, v8, :cond_1

    .line 225
    const-string v7, "PushLog2510"

    const-string v8, "sendAllMessagetoServer have no net work"

    invoke-static {v7, v8}, Lcom/huawei/android/pushagent/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 284
    :cond_0
    :goto_0
    return-void

    .line 229
    :cond_1
    invoke-static {}, Lcom/huawei/android/pushagent/model/channel/ChannelMgr;->getPushChannel()Lcom/huawei/android/pushagent/model/channel/entity/ConnectEntity;

    move-result-object v7

    invoke-virtual {v7}, Lcom/huawei/android/pushagent/model/channel/entity/ConnectEntity;->hasConnection()Z

    move-result v7

    if-nez v7, :cond_2

    .line 230
    const-string v7, "PushLog2510"

    const-string v8, "sendAllMessagetoServer have no channel or no connection"

    invoke-static {v7, v8}, Lcom/huawei/android/pushagent/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 235
    :cond_2
    const-string v7, "PushLog2510"

    const-string v8, "sendAllMessagetoServer get the client"

    invoke-static {v7, v8}, Lcom/huawei/android/pushagent/utils/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 237
    invoke-static {p1}, Lcom/huawei/android/pushagent/model/pushcommand/DeviceTokenMgr;->queryAllClientRequest(Landroid/content/Context;)Ljava/util/ArrayList;

    move-result-object v2

    .line 239
    .local v2, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/huawei/android/pushagent/datatype/pushmessage/basic/PushMessage;>;"
    new-instance v4, Lcom/huawei/android/pushagent/utils/tools/PushPreferences;

    const-string v7, "pclient_unRegist_info"

    invoke-direct {v4, p1, v7}, Lcom/huawei/android/pushagent/utils/tools/PushPreferences;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 241
    .local v4, pf:Lcom/huawei/android/pushagent/utils/tools/PushPreferences;
    invoke-virtual {v4}, Lcom/huawei/android/pushagent/utils/tools/PushPreferences;->getAll()Ljava/util/Map;

    move-result-object v6

    .line 242
    .local v6, unRegListSet:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {v6}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map$Entry;

    .line 244
    .local v5, token_pkgNameMap:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {v5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-static {p1, v7}, Lcom/huawei/android/pushagent/utils/CommFun;->isPushClient(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 245
    const-string v8, "PushLog2510"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {v5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v9, " in "

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v9, "pclient_unRegist_info"

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v9, " but pkg exist and have "

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v9, "com.huawei.android.push.intent.REGISTRATION"

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v9, ", do nothing"

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v8, v7}, Lcom/huawei/android/pushagent/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 248
    invoke-interface {v5}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-virtual {v4, v7}, Lcom/huawei/android/pushagent/utils/tools/PushPreferences;->removeKey(Ljava/lang/String;)Z

    goto :goto_1

    .line 250
    :cond_3
    new-instance v8, Lcom/huawei/android/pushagent/datatype/pushmessage/UnRegisterReqMessage;

    invoke-interface {v5}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-direct {v8, v7}, Lcom/huawei/android/pushagent/datatype/pushmessage/UnRegisterReqMessage;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 254
    .end local v5           #token_pkgNameMap:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_4
    if-eqz v2, :cond_5

    .line 255
    const-string v7, "PushLog2510"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "sendAllMessagetoServer get all client:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v2}, Ljava/util/ArrayList;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/huawei/android/pushagent/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 258
    :cond_5
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-lez v7, :cond_6

    .line 265
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/huawei/android/pushagent/datatype/pushmessage/basic/PushMessage;

    .line 268
    .local v3, msg:Lcom/huawei/android/pushagent/datatype/pushmessage/basic/PushMessage;
    :try_start_0
    invoke-static {}, Lcom/huawei/android/pushagent/model/channel/ChannelMgr;->getPushChannel()Lcom/huawei/android/pushagent/model/channel/entity/ConnectEntity;

    move-result-object v7

    invoke-virtual {v7, v3}, Lcom/huawei/android/pushagent/model/channel/entity/ConnectEntity;->send(Lcom/huawei/android/pushagent/datatype/IPushMessage;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 269
    :catch_0
    move-exception v0

    .line 270
    .local v0, e:Ljava/lang/Exception;
    const-string v7, "PushLog2510"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "call ChannelMgr.getPushChannel().send cause:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8, v0}, Lcom/huawei/android/pushagent/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_2

    .line 282
    .end local v0           #e:Ljava/lang/Exception;
    .end local v3           #msg:Lcom/huawei/android/pushagent/datatype/pushmessage/basic/PushMessage;
    :cond_6
    const-string v7, "PushLog2510"

    const-string v8, "no more client need register and unregister"

    invoke-static {v7, v8}, Lcom/huawei/android/pushagent/utils/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method public static sendBroadcast2PClient(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .parameter "context"
    .parameter "packagename"
    .parameter "devicetoken"

    .prologue
    .line 150
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 167
    :cond_0
    :goto_0
    return-void

    .line 156
    :cond_1
    :try_start_0
    new-instance v2, Landroid/content/Intent;

    const-string v3, "com.huawei.android.push.intent.REGISTRATION"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v2

    const-string v3, "device_token"

    const-string v4, "UTF-8"

    invoke-virtual {p2, v4}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    move-result-object v2

    const-string v3, "belongId"

    invoke-static {p0}, Lcom/huawei/android/pushagent/model/config/PushRouteInfo;->getInstance(Landroid/content/Context;)Lcom/huawei/android/pushagent/model/config/PushRouteInfo;

    move-result-object v4

    invoke-virtual {v4}, Lcom/huawei/android/pushagent/model/config/PushRouteInfo;->getBelongId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v2

    const/16 v3, 0x20

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    move-result-object v1

    .line 161
    .local v1, intent:Landroid/content/Intent;
    const-string v2, "PushLog2510"

    const-string v3, "send REGISTRATION to the request package"

    invoke-static {v2, v3}, Lcom/huawei/android/pushagent/utils/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 162
    const-string v2, "PushLog2510"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "send REGISTRATION to:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " token:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/huawei/android/pushagent/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 163
    invoke-virtual {p0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 164
    .end local v1           #intent:Landroid/content/Intent;
    :catch_0
    move-exception v0

    .line 165
    .local v0, e:Ljava/lang/Exception;
    const-string v2, "PushLog2510"

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v0}, Lcom/huawei/android/pushagent/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method private sendRegisterToken(Landroid/content/Context;Ljava/lang/String;)V
    .locals 11
    .parameter "context"
    .parameter "packageName"

    .prologue
    .line 396
    const-string v6, "PushLog2510"

    const-string v7, "begin to get token from pushSrv"

    invoke-static {v6, v7}, Lcom/huawei/android/pushagent/utils/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 397
    const-string v6, "PushLog2510"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "sendRegisterToken: packagename = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/huawei/android/pushagent/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 399
    invoke-static {p1}, Lcom/huawei/android/pushagent/utils/CommFun;->getDeviceId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 400
    .local v1, imei:Ljava/lang/String;
    if-nez v1, :cond_0

    .line 402
    const-string v6, "PushLog2510"

    const-string v7, "have no device,when sendRegisterToken"

    invoke-static {v6, v7}, Lcom/huawei/android/pushagent/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 430
    :goto_0
    return-void

    .line 405
    :cond_0
    new-instance v5, Lcom/huawei/android/pushagent/utils/tools/PushPreferences;

    const-string v6, "pclient_request_info"

    invoke-direct {v5, p1, v6}, Lcom/huawei/android/pushagent/utils/tools/PushPreferences;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 406
    .local v5, pushRef:Lcom/huawei/android/pushagent/utils/tools/PushPreferences;
    const-string v6, "true"

    invoke-virtual {v5, p2, v6}, Lcom/huawei/android/pushagent/utils/tools/PushPreferences;->saveString(Ljava/lang/String;Ljava/lang/String;)Z

    .line 409
    invoke-static {}, Lcom/huawei/android/pushagent/model/channel/ChannelMgr;->getPushChannel()Lcom/huawei/android/pushagent/model/channel/entity/ConnectEntity;

    move-result-object v6

    invoke-virtual {v6}, Lcom/huawei/android/pushagent/model/channel/entity/ConnectEntity;->hasConnection()Z

    move-result v6

    if-nez v6, :cond_1

    .line 410
    new-instance v6, Landroid/content/Intent;

    const-string v7, "com.huawei.action.CONNECT_PUSHSRV_PUSHSRV"

    invoke-direct {v6, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v3

    .line 412
    .local v3, needConnIntent:Landroid/content/Intent;
    invoke-static {v3}, Lcom/huawei/android/pushagent/PushService;->broadcast(Landroid/content/Intent;)V

    goto :goto_0

    .line 416
    .end local v3           #needConnIntent:Landroid/content/Intent;
    :cond_1
    invoke-static {p1, p2}, Lcom/huawei/android/pushagent/utils/CommFun;->getPackageNameWithChannel(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 417
    .local v4, packageNameWithChannel:Ljava/lang/String;
    new-instance v2, Lcom/huawei/android/pushagent/datatype/pushmessage/RegisterTokenReqMessage;

    invoke-direct {v2, v1, v4}, Lcom/huawei/android/pushagent/datatype/pushmessage/RegisterTokenReqMessage;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 421
    .local v2, msg:Lcom/huawei/android/pushagent/datatype/pushmessage/RegisterTokenReqMessage;
    :try_start_0
    invoke-static {}, Lcom/huawei/android/pushagent/model/channel/ChannelMgr;->getPushChannel()Lcom/huawei/android/pushagent/model/channel/entity/ConnectEntity;

    move-result-object v6

    invoke-virtual {v6, v2}, Lcom/huawei/android/pushagent/model/channel/entity/ConnectEntity;->send(Lcom/huawei/android/pushagent/datatype/IPushMessage;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 425
    :goto_1
    new-instance v6, Landroid/content/Intent;

    const-string v7, "com.huawei.action.CONNECT_PUSHSRV_POLLINGSRV"

    invoke-direct {v6, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v6

    invoke-static {p1}, Lcom/huawei/android/pushagent/model/config/PushRouteInfo;->getInstance(Landroid/content/Context;)Lcom/huawei/android/pushagent/model/config/PushRouteInfo;

    move-result-object v7

    invoke-virtual {v7}, Lcom/huawei/android/pushagent/model/config/PushRouteInfo;->getTokenRegTimeOut()J

    move-result-wide v7

    const-wide/16 v9, 0x3e8

    mul-long/2addr v7, v9

    invoke-static {p1, v6, v7, v8}, Lcom/huawei/android/pushagent/utils/tools/AlarmTools;->setDelayAlarm(Landroid/content/Context;Landroid/content/Intent;J)V

    goto :goto_0

    .line 422
    :catch_0
    move-exception v0

    .line 423
    .local v0, e:Ljava/lang/Exception;
    const-string v6, "PushLog2510"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "call ChannelMgr.getPushChannel().send cause:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7, v0}, Lcom/huawei/android/pushagent/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1
.end method

.method private sendUnregisterToken(Landroid/content/Context;Ljava/lang/String;)V
    .locals 6
    .parameter "context"
    .parameter "packageName"

    .prologue
    .line 496
    const-string v3, "PushLog2510"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "will be unregister."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/huawei/android/pushagent/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 498
    const-string v2, ""

    .line 499
    .local v2, token:Ljava/lang/String;
    invoke-static {p1, p2}, Lcom/huawei/android/pushagent/model/pushcommand/DeviceTokenMgr;->getTokenByPackageName(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 501
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 502
    new-instance v1, Lcom/huawei/android/pushagent/datatype/pushmessage/UnRegisterReqMessage;

    invoke-direct {v1, v2}, Lcom/huawei/android/pushagent/datatype/pushmessage/UnRegisterReqMessage;-><init>(Ljava/lang/String;)V

    .line 505
    .local v1, msg:Lcom/huawei/android/pushagent/datatype/pushmessage/UnRegisterReqMessage;
    :try_start_0
    invoke-static {}, Lcom/huawei/android/pushagent/model/channel/ChannelMgr;->getPushChannel()Lcom/huawei/android/pushagent/model/channel/entity/ConnectEntity;

    move-result-object v3

    invoke-virtual {v3, v1}, Lcom/huawei/android/pushagent/model/channel/entity/ConnectEntity;->send(Lcom/huawei/android/pushagent/datatype/IPushMessage;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 510
    .end local v1           #msg:Lcom/huawei/android/pushagent/datatype/pushmessage/UnRegisterReqMessage;
    :cond_0
    :goto_0
    return-void

    .line 506
    .restart local v1       #msg:Lcom/huawei/android/pushagent/datatype/pushmessage/UnRegisterReqMessage;
    :catch_0
    move-exception v0

    .line 507
    .local v0, e:Ljava/lang/Exception;
    const-string v3, "PushLog2510"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "call ChannelMgr.getPushChannel().send cause:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v0}, Lcom/huawei/android/pushagent/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method


# virtual methods
.method public deposeSelfShowMsg(Landroid/content/Context;Lcom/huawei/android/pushagent/datatype/pushmessage/PushDataReqMessage;)V
    .locals 13
    .parameter "context"
    .parameter "msg"

    .prologue
    .line 690
    const/4 v1, 0x0

    .line 692
    .local v1, dispkgName:Ljava/lang/String;
    :try_start_0
    new-instance v4, Ljava/lang/String;

    invoke-virtual {p2}, Lcom/huawei/android/pushagent/datatype/pushmessage/PushDataReqMessage;->getMsgData()[B

    move-result-object v10

    const-string v11, "UTF-8"

    invoke-direct {v4, v10, v11}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    .line 693
    .local v4, message:Ljava/lang/String;
    new-instance v6, Lorg/json/JSONObject;

    invoke-direct {v6, v4}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 694
    .local v6, obj:Lorg/json/JSONObject;
    const-string v10, "msgContent"

    invoke-virtual {v6, v10}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_0

    .line 695
    const-string v10, "msgContent"

    invoke-virtual {v6, v10}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v5

    .line 696
    .local v5, msgObj:Lorg/json/JSONObject;
    if-eqz v5, :cond_0

    .line 697
    const-string v10, "dispPkgName"

    invoke-virtual {v5, v10}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_0

    .line 698
    const-string v10, "dispPkgName"

    invoke-virtual {v5, v10}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 702
    .end local v5           #msgObj:Lorg/json/JSONObject;
    :cond_0
    const-string v10, "PushLog2510"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "dispkgName is "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/huawei/android/pushagent/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 703
    const/4 v0, 0x0

    .line 705
    .local v0, bSelf:Z
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v10

    if-nez v10, :cond_5

    .line 706
    :cond_1
    const-string v10, "com.huawei.android.pushagent"

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_2

    const-string v10, "android"

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_4

    .line 708
    :cond_2
    const/4 v0, 0x1

    .line 718
    :cond_3
    :goto_0
    if-eqz v0, :cond_8

    .line 719
    const-string v10, "PushLog2510"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "need current package "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " to depose selfshow msg"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/huawei/android/pushagent/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 721
    new-instance v3, Landroid/content/Intent;

    const-string v10, "com.huawei.intent.action.PUSH"

    invoke-direct {v3, v10}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 722
    .local v3, intent:Landroid/content/Intent;
    const-string v10, "selfshow_info"

    invoke-virtual {p2}, Lcom/huawei/android/pushagent/datatype/pushmessage/PushDataReqMessage;->getMsgData()[B

    move-result-object v11

    invoke-virtual {v3, v10, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    .line 723
    const-string v10, "selfshow_token"

    invoke-virtual {p2}, Lcom/huawei/android/pushagent/datatype/pushmessage/PushDataReqMessage;->getToken()[B

    move-result-object v11

    invoke-virtual {v3, v10, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    .line 724
    const/16 v10, 0x20

    invoke-virtual {v3, v10}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 725
    const-string v10, "android"

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_6

    .line 726
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v3, v10}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 736
    :goto_1
    invoke-virtual {p1, v3}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 778
    .end local v0           #bSelf:Z
    .end local v3           #intent:Landroid/content/Intent;
    .end local v4           #message:Ljava/lang/String;
    .end local v6           #obj:Lorg/json/JSONObject;
    :cond_4
    :goto_2
    return-void

    .line 713
    .restart local v0       #bSelf:Z
    .restart local v4       #message:Ljava/lang/String;
    .restart local v6       #obj:Lorg/json/JSONObject;
    :cond_5
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_3

    .line 715
    const/4 v0, 0x1

    goto :goto_0

    .line 728
    .restart local v3       #intent:Landroid/content/Intent;
    :cond_6
    invoke-static {p1}, Lcom/huawei/android/pushagent/utils/tools/PushServiceTools;->getApkVersion(Landroid/content/Context;)J

    move-result-wide v8

    .line 729
    .local v8, pushApkVersion:J
    const-wide/16 v10, 0x9c7

    cmp-long v10, v8, v10

    if-ltz v10, :cond_7

    .line 730
    const-string v10, "com.huawei.android.pushagent"

    invoke-virtual {v3, v10}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 774
    .end local v0           #bSelf:Z
    .end local v3           #intent:Landroid/content/Intent;
    .end local v4           #message:Ljava/lang/String;
    .end local v6           #obj:Lorg/json/JSONObject;
    .end local v8           #pushApkVersion:J
    :catch_0
    move-exception v2

    .line 775
    .local v2, e:Ljava/lang/Exception;
    const-string v10, "PushLog2510"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "deposeSelfShowMsg error:"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v2}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/huawei/android/pushagent/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 732
    .end local v2           #e:Ljava/lang/Exception;
    .restart local v0       #bSelf:Z
    .restart local v3       #intent:Landroid/content/Intent;
    .restart local v4       #message:Ljava/lang/String;
    .restart local v6       #obj:Lorg/json/JSONObject;
    .restart local v8       #pushApkVersion:J
    :cond_7
    :try_start_1
    const-string v10, "PushLog2510"

    const-string v11, "not support selfshow message"

    invoke-static {v10, v11}, Lcom/huawei/android/pushagent/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 738
    .end local v3           #intent:Landroid/content/Intent;
    .end local v8           #pushApkVersion:J
    :cond_8
    const-string v10, "com.huawei.android.push.intent.AD_INFO"

    invoke-static {p1, v10}, Lcom/huawei/android/pushagent/utils/CommFun;->getPkgNameByReciveActionOnly(Landroid/content/Context;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v7

    .line 740
    .local v7, oldAction:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {v7, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_9

    .line 742
    const-string v10, "PushLog2510"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "need old package "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " to depose selfshow msg"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/huawei/android/pushagent/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 744
    new-instance v3, Landroid/content/Intent;

    const-string v10, "com.huawei.android.push.intent.AD_INFO"

    invoke-direct {v3, v10}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 745
    .restart local v3       #intent:Landroid/content/Intent;
    const-string v10, "ad_event_info"

    invoke-virtual {p2}, Lcom/huawei/android/pushagent/datatype/pushmessage/PushDataReqMessage;->getMsgData()[B

    move-result-object v11

    invoke-virtual {v3, v10, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    .line 746
    const-string v10, "ad_event_token"

    invoke-virtual {p2}, Lcom/huawei/android/pushagent/datatype/pushmessage/PushDataReqMessage;->getToken()[B

    move-result-object v11

    invoke-virtual {v3, v10, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    .line 747
    invoke-virtual {v3, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 748
    invoke-virtual {p1, v3}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto/16 :goto_2

    .line 749
    .end local v3           #intent:Landroid/content/Intent;
    :cond_9
    invoke-static {p1, v1}, Lcom/huawei/android/pushagent/utils/CommFun;->isPushClient(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v10

    if-nez v10, :cond_a

    const-string v10, "com.huawei.android.pushagent"

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_b

    .line 752
    :cond_a
    const-string v10, "PushLog2510"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "try to send selfshow msg to push client ,package "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " to depose selfshow msg"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/huawei/android/pushagent/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 754
    new-instance v3, Landroid/content/Intent;

    const-string v10, "com.huawei.intent.action.PUSH"

    invoke-direct {v3, v10}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 755
    .restart local v3       #intent:Landroid/content/Intent;
    const-string v10, "selfshow_info"

    invoke-virtual {p2}, Lcom/huawei/android/pushagent/datatype/pushmessage/PushDataReqMessage;->getMsgData()[B

    move-result-object v11

    invoke-virtual {v3, v10, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    .line 756
    const-string v10, "selfshow_token"

    invoke-virtual {p2}, Lcom/huawei/android/pushagent/datatype/pushmessage/PushDataReqMessage;->getToken()[B

    move-result-object v11

    invoke-virtual {v3, v10, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    .line 757
    const/16 v10, 0x20

    invoke-virtual {v3, v10}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 758
    invoke-virtual {v3, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 759
    invoke-virtual {p1, v3}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto/16 :goto_2

    .line 762
    .end local v3           #intent:Landroid/content/Intent;
    :cond_b
    const-string v10, "PushLog2510"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "not find dispkgName "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " or is not pushclient"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/huawei/android/pushagent/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 765
    new-instance v3, Landroid/content/Intent;

    const-string v10, "com.huawei.intent.action.PUSH"

    invoke-direct {v3, v10}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 766
    .restart local v3       #intent:Landroid/content/Intent;
    const-string v10, "selfshow_info"

    invoke-virtual {p2}, Lcom/huawei/android/pushagent/datatype/pushmessage/PushDataReqMessage;->getMsgData()[B

    move-result-object v11

    invoke-virtual {v3, v10, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    .line 767
    const-string v10, "selfshow_token"

    invoke-virtual {p2}, Lcom/huawei/android/pushagent/datatype/pushmessage/PushDataReqMessage;->getToken()[B

    move-result-object v11

    invoke-virtual {v3, v10, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    .line 768
    const-string v10, "selfshow_event_id"

    const-string v11, "5"

    invoke-virtual {v3, v10, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 769
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v3, v10}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 770
    invoke-virtual {p1, v3}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_2
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 12
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 61
    const-string v9, "PushLog2510"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "enter PushCommandProcessor:onReceive(intent:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " context:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/huawei/android/pushagent/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 65
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 66
    .local v0, action:Ljava/lang/String;
    const-string v9, "EXTRA_INTENT_TYPE"

    invoke-virtual {p2, v9}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 72
    .local v4, intentType:Ljava/lang/String;
    const-string v9, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {v9, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_3

    .line 73
    const-string v9, "pushConfig"

    const/4 v10, 0x4

    invoke-virtual {p1, v9, v10}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v6

    .line 75
    .local v6, preference:Landroid/content/SharedPreferences;
    invoke-interface {v6}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    .line 77
    .local v2, editor:Landroid/content/SharedPreferences$Editor;
    const-string v9, "networkInfo"

    invoke-virtual {p2, v9}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v5

    check-cast v5, Landroid/net/NetworkInfo;

    .line 78
    .local v5, ni:Landroid/net/NetworkInfo;
    invoke-virtual {v5}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v9

    if-eqz v9, :cond_2

    .line 79
    const-string v9, "cloudpush_net_on"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    invoke-interface {v2, v9, v10, v11}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v9

    invoke-interface {v9}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 86
    :cond_0
    :goto_0
    invoke-static {v6, v5}, Lcom/huawei/android/pushagent/model/pushcommand/PushCommandProcessor;->netEventStatistics(Landroid/content/SharedPreferences;Landroid/net/NetworkInfo;)V

    .line 141
    .end local v2           #editor:Landroid/content/SharedPreferences$Editor;
    .end local v5           #ni:Landroid/net/NetworkInfo;
    .end local v6           #preference:Landroid/content/SharedPreferences;
    :cond_1
    :goto_1
    return-void

    .line 81
    .restart local v2       #editor:Landroid/content/SharedPreferences$Editor;
    .restart local v5       #ni:Landroid/net/NetworkInfo;
    .restart local v6       #preference:Landroid/content/SharedPreferences;
    :cond_2
    invoke-virtual {v5}, Landroid/net/NetworkInfo;->isConnectedOrConnecting()Z

    move-result v9

    if-nez v9, :cond_0

    .line 82
    const-string v9, "cloudpush_net_off"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    invoke-interface {v2, v9, v10, v11}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v9

    invoke-interface {v9}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto :goto_0

    .line 88
    .end local v2           #editor:Landroid/content/SharedPreferences$Editor;
    .end local v5           #ni:Landroid/net/NetworkInfo;
    .end local v6           #preference:Landroid/content/SharedPreferences;
    :cond_3
    const-string v9, "com.huawei.android.push.intent.CONNECTED"

    invoke-virtual {v9, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_5

    .line 89
    const-string v9, "cloudpush_on"

    const/4 v10, 0x1

    invoke-static {v10}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v10

    invoke-direct {p0, p1, v9, v10}, Lcom/huawei/android/pushagent/model/pushcommand/PushCommandProcessor;->saveConnectInfo(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 91
    invoke-static {p1}, Lcom/huawei/android/pushagent/utils/CommFun;->getDeviceId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    .line 92
    .local v3, imei:Ljava/lang/String;
    if-nez v3, :cond_4

    .line 93
    const-string v9, "PushLog2510"

    const-string v10, "cannot get imei when receviced ACTION_CONNECTED"

    invoke-static {v9, v10}, Lcom/huawei/android/pushagent/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 101
    :cond_4
    :try_start_0
    invoke-direct {p0, p1, v3}, Lcom/huawei/android/pushagent/model/pushcommand/PushCommandProcessor;->getDeviceRegisterReqMessage(Landroid/content/Context;Ljava/lang/String;)Lcom/huawei/android/pushagent/datatype/pushmessage/NewDeviceRegisterReqMessage;

    move-result-object v7

    .line 102
    .local v7, req:Lcom/huawei/android/pushagent/datatype/pushmessage/NewDeviceRegisterReqMessage;
    const-string v9, "PushLog2510"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "read to send:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v7}, Lcom/huawei/android/pushagent/datatype/pushmessage/NewDeviceRegisterReqMessage;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/huawei/android/pushagent/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 103
    invoke-static {}, Lcom/huawei/android/pushagent/model/channel/ChannelMgr;->getPushChannel()Lcom/huawei/android/pushagent/model/channel/entity/ConnectEntity;

    move-result-object v9

    invoke-virtual {v9, v7}, Lcom/huawei/android/pushagent/model/channel/entity/ConnectEntity;->send(Lcom/huawei/android/pushagent/datatype/IPushMessage;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 104
    .end local v7           #req:Lcom/huawei/android/pushagent/datatype/pushmessage/NewDeviceRegisterReqMessage;
    :catch_0
    move-exception v1

    .line 105
    .local v1, e:Ljava/lang/Exception;
    const-string v9, "PushLog2510"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "call ChannelMgr.getPushChannel().send cause:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10, v1}, Lcom/huawei/android/pushagent/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    .line 107
    .end local v1           #e:Ljava/lang/Exception;
    .end local v3           #imei:Ljava/lang/String;
    :cond_5
    const-string v9, "com.huawei.android.push.intent.CHANNEL_CLOSED"

    invoke-virtual {v9, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_6

    .line 108
    const-string v9, "cloudpush_off"

    const/4 v10, 0x0

    invoke-static {v10}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v10

    invoke-direct {p0, p1, v9, v10}, Lcom/huawei/android/pushagent/model/pushcommand/PushCommandProcessor;->saveConnectInfo(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Boolean;)V

    goto/16 :goto_1

    .line 109
    :cond_6
    const-string v9, "com.huawei.android.push.intent.MSG_RECEIVED"

    invoke-virtual {v9, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_7

    .line 110
    invoke-direct {p0, p1, p2}, Lcom/huawei/android/pushagent/model/pushcommand/PushCommandProcessor;->responseMsgData(Landroid/content/Context;Landroid/content/Intent;)V

    goto/16 :goto_1

    .line 111
    :cond_7
    const-string v9, "com.huawei.android.push.intent.REGISTER"

    invoke-virtual {v9, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_9

    .line 112
    const-string v9, "com.huawei.android.pushagent"

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_8

    .line 113
    invoke-direct {p0, p1, p2}, Lcom/huawei/android/pushagent/model/pushcommand/PushCommandProcessor;->responseClientRegistration(Landroid/content/Context;Landroid/content/Intent;)V

    goto/16 :goto_1

    .line 115
    :cond_8
    const-string v9, "PushLog2510"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "push apk\'s service not depose "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ", should be "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "com.huawei.android.push.intent.INNER_REGISTER"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/huawei/android/pushagent/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 117
    :cond_9
    const-string v9, "com.huawei.intent.action.PUSH"

    invoke-virtual {v9, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_b

    const-string v9, "com.huawei.android.push.intent.INNER_REGISTER"

    invoke-virtual {v9, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_b

    .line 119
    const-string v9, "com.huawei.android.pushagent"

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_a

    .line 120
    invoke-direct {p0, p1, p2}, Lcom/huawei/android/pushagent/model/pushcommand/PushCommandProcessor;->responseClientRegistration(Landroid/content/Context;Landroid/content/Intent;)V

    goto/16 :goto_1

    .line 122
    :cond_a
    const-string v9, "PushLog2510"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "push sdk\'s service not depose "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " for reg, should be "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "com.huawei.android.push.intent.REGISTER"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/huawei/android/pushagent/utils/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 124
    :cond_b
    const-string v9, "com.huawei.android.push.intent.UNREGISTER"

    invoke-virtual {v9, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_c

    .line 125
    invoke-direct {p0, p1, p2}, Lcom/huawei/android/pushagent/model/pushcommand/PushCommandProcessor;->responseClientUnRegistration(Landroid/content/Context;Landroid/content/Intent;)V

    goto/16 :goto_1

    .line 126
    :cond_c
    const-string v9, "android.intent.action.PACKAGE_ADDED"

    invoke-virtual {v9, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_d

    .line 127
    invoke-direct {p0, p1, p2}, Lcom/huawei/android/pushagent/model/pushcommand/PushCommandProcessor;->dealwithAddPackage(Landroid/content/Context;Landroid/content/Intent;)V

    goto/16 :goto_1

    .line 128
    :cond_d
    const-string v9, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {v9, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_e

    .line 129
    invoke-direct {p0, p1, p2}, Lcom/huawei/android/pushagent/model/pushcommand/PushCommandProcessor;->dealwithRemovePackage(Landroid/content/Context;Landroid/content/Intent;)V

    goto/16 :goto_1

    .line 130
    :cond_e
    const-string v9, "android.provider.Telephony.SECRET_CODE"

    invoke-virtual {v9, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1

    .line 131
    const-string v9, "PushLog2510"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "get ACTION_SECRET_CODE action, "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/huawei/android/pushagent/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 132
    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v8

    .line 133
    .local v8, uri:Landroid/net/Uri;
    const-string v9, "787424368"

    invoke-virtual {v8}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1

    .line 135
    const-string v9, "PushLog2510"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "receiver "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " so start activity"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/huawei/android/pushagent/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 136
    new-instance v9, Landroid/content/Intent;

    const-string v10, "com.huawei.intent.action.PUSH_SETTINGS_PROMPT"

    invoke-direct {v9, v10}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/16 v10, 0x20

    invoke-virtual {v9, v10}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object v9

    invoke-virtual {p1, v9}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto/16 :goto_1
.end method
