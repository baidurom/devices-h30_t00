.class public Lcom/huawei/android/pushagent/model/pushcommand/ModifyConfigs;
.super Ljava/lang/Object;
.source "ModifyConfigs.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/huawei/android/pushagent/model/pushcommand/ModifyConfigs$1;,
        Lcom/huawei/android/pushagent/model/pushcommand/ModifyConfigs$ModifyStruct;
    }
.end annotation


# static fields
.field private static final FILE:Ljava/lang/String; = "file"

.field private static final NAME:Ljava/lang/String; = "name"

.field private static final SHARE_DIR:Ljava/lang/String; = "shared_prefs"

.field private static final TAG:Ljava/lang/String; = "PushLog2510"

.field private static final TYPE:Ljava/lang/String; = "type"

.field private static final VAL:Ljava/lang/String; = "val"

.field private static final XML:Ljava/lang/String; = ".xml"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 27
    return-void
.end method

.method public static declared-synchronized modify(Landroid/content/Context;Ljava/lang/String;)V
    .locals 13
    .parameter "context"
    .parameter "jsonStr"

    .prologue
    .line 66
    const-class v10, Lcom/huawei/android/pushagent/model/pushcommand/ModifyConfigs;

    monitor-enter v10

    :try_start_0
    const-string v9, "PushLog2510"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "enter ModifyConfigs modify jsonStr is : "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v9, v11}, Lcom/huawei/android/pushagent/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 67
    invoke-static {p1}, Lcom/huawei/android/pushagent/model/pushcommand/ModifyConfigs;->parseStr(Ljava/lang/String;)Lcom/huawei/android/pushagent/model/pushcommand/ModifyConfigs$ModifyStruct;

    move-result-object v7

    .line 68
    .local v7, struct:Lcom/huawei/android/pushagent/model/pushcommand/ModifyConfigs$ModifyStruct;
    if-nez v7, :cond_0

    .line 69
    const-string v9, "PushLog2510"

    const-string v11, "enter ModifyConfigs struct is null !"

    invoke-static {v9, v11}, Lcom/huawei/android/pushagent/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 138
    .end local v7           #struct:Lcom/huawei/android/pushagent/model/pushcommand/ModifyConfigs$ModifyStruct;
    :goto_0
    monitor-exit v10

    return-void

    .line 72
    .restart local v7       #struct:Lcom/huawei/android/pushagent/model/pushcommand/ModifyConfigs$ModifyStruct;
    :cond_0
    :try_start_1
    iget-object v9, v7, Lcom/huawei/android/pushagent/model/pushcommand/ModifyConfigs$ModifyStruct;->mFileName:Ljava/lang/String;

    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_1

    .line 73
    const-string v9, "PushLog2510"

    const-string v11, "enter ModifyConfigs struct failed to create sharepreference file!"

    invoke-static {v9, v11}, Lcom/huawei/android/pushagent/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 135
    .end local v7           #struct:Lcom/huawei/android/pushagent/model/pushcommand/ModifyConfigs$ModifyStruct;
    :catch_0
    move-exception v2

    .line 136
    .local v2, e:Ljava/lang/Exception;
    :try_start_2
    const-string v9, "PushLog2510"

    invoke-virtual {v2}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v9, v11, v2}, Lcom/huawei/android/pushagent/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 66
    .end local v2           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v9

    monitor-exit v10

    throw v9

    .line 77
    .restart local v7       #struct:Lcom/huawei/android/pushagent/model/pushcommand/ModifyConfigs$ModifyStruct;
    :cond_1
    const/4 v6, 0x0

    .line 79
    .local v6, pref:Lcom/huawei/android/pushagent/utils/tools/PushPreferences;
    :try_start_3
    iget v9, v7, Lcom/huawei/android/pushagent/model/pushcommand/ModifyConfigs$ModifyStruct;->mModifyType:I

    packed-switch v9, :pswitch_data_0

    .line 131
    const-string v9, "PushLog2510"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "the modifyType:"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget v12, v7, Lcom/huawei/android/pushagent/model/pushcommand/ModifyConfigs$ModifyStruct;->mModifyType:I

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " is not supported! "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v9, v11}, Lcom/huawei/android/pushagent/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 81
    :pswitch_0
    iget-object v9, v7, Lcom/huawei/android/pushagent/model/pushcommand/ModifyConfigs$ModifyStruct;->mName:Ljava/lang/String;

    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_2

    .line 82
    const-string v9, "PushLog2510"

    const-string v11, "enter ModifyConfigs saveString failed! mName or mVal is null"

    invoke-static {v9, v11}, Lcom/huawei/android/pushagent/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 85
    :cond_2
    new-instance v6, Lcom/huawei/android/pushagent/utils/tools/PushPreferences;

    .end local v6           #pref:Lcom/huawei/android/pushagent/utils/tools/PushPreferences;
    iget-object v9, v7, Lcom/huawei/android/pushagent/model/pushcommand/ModifyConfigs$ModifyStruct;->mFileName:Ljava/lang/String;

    invoke-direct {v6, p0, v9}, Lcom/huawei/android/pushagent/utils/tools/PushPreferences;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 86
    .restart local v6       #pref:Lcom/huawei/android/pushagent/utils/tools/PushPreferences;
    iget-object v9, v7, Lcom/huawei/android/pushagent/model/pushcommand/ModifyConfigs$ModifyStruct;->mName:Ljava/lang/String;

    iget-object v11, v7, Lcom/huawei/android/pushagent/model/pushcommand/ModifyConfigs$ModifyStruct;->mVal:Ljava/lang/Object;

    invoke-virtual {v6, v9, v11}, Lcom/huawei/android/pushagent/utils/tools/PushPreferences;->save(Ljava/lang/String;Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_3

    .line 87
    const-string v9, "PushLog2510"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "enter ModifyConfigs saveString sucessfully! filename is "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v12, v7, Lcom/huawei/android/pushagent/model/pushcommand/ModifyConfigs$ModifyStruct;->mFileName:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ",itemName is "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v12, v7, Lcom/huawei/android/pushagent/model/pushcommand/ModifyConfigs$ModifyStruct;->mName:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ",itemValue is "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v12, v7, Lcom/huawei/android/pushagent/model/pushcommand/ModifyConfigs$ModifyStruct;->mVal:Ljava/lang/Object;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v9, v11}, Lcom/huawei/android/pushagent/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 90
    :cond_3
    const-string v9, "PushLog2510"

    const-string v11, "enter ModifyConfigs saveString failed!"

    invoke-static {v9, v11}, Lcom/huawei/android/pushagent/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 94
    :pswitch_1
    iget-object v9, v7, Lcom/huawei/android/pushagent/model/pushcommand/ModifyConfigs$ModifyStruct;->mName:Ljava/lang/String;

    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_4

    .line 95
    const-string v9, "PushLog2510"

    const-string v11, "enter ModifyConfigs removeKey failed! mName is null"

    invoke-static {v9, v11}, Lcom/huawei/android/pushagent/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 99
    :cond_4
    invoke-virtual {p0}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v1

    .line 100
    .local v1, cacheFile:Ljava/io/File;
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    sget-object v11, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v11, "shared_prefs"

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    sget-object v11, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v11, v7, Lcom/huawei/android/pushagent/model/pushcommand/ModifyConfigs$ModifyStruct;->mFileName:Ljava/lang/String;

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v11, ".xml"

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 101
    .local v4, filePath:Ljava/lang/String;
    new-instance v8, Ljava/io/File;

    invoke-direct {v8, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 102
    .local v8, tempFile:Ljava/io/File;
    invoke-virtual {v8}, Ljava/io/File;->isFile()Z

    move-result v9

    if-eqz v9, :cond_6

    invoke-virtual {v8}, Ljava/io/File;->exists()Z

    move-result v9

    if-eqz v9, :cond_6

    .line 103
    new-instance v6, Lcom/huawei/android/pushagent/utils/tools/PushPreferences;

    .end local v6           #pref:Lcom/huawei/android/pushagent/utils/tools/PushPreferences;
    iget-object v9, v7, Lcom/huawei/android/pushagent/model/pushcommand/ModifyConfigs$ModifyStruct;->mFileName:Ljava/lang/String;

    invoke-direct {v6, p0, v9}, Lcom/huawei/android/pushagent/utils/tools/PushPreferences;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 104
    .restart local v6       #pref:Lcom/huawei/android/pushagent/utils/tools/PushPreferences;
    iget-object v9, v7, Lcom/huawei/android/pushagent/model/pushcommand/ModifyConfigs$ModifyStruct;->mName:Ljava/lang/String;

    invoke-virtual {v6, v9}, Lcom/huawei/android/pushagent/utils/tools/PushPreferences;->removeKey(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_5

    .line 105
    const-string v9, "PushLog2510"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "enter ModifyConfigs removeKey sucessfully! the fileName is "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v12, v7, Lcom/huawei/android/pushagent/model/pushcommand/ModifyConfigs$ModifyStruct;->mFileName:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ",the key is "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v12, v7, Lcom/huawei/android/pushagent/model/pushcommand/ModifyConfigs$ModifyStruct;->mName:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v9, v11}, Lcom/huawei/android/pushagent/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 108
    :cond_5
    const-string v9, "PushLog2510"

    const-string v11, "enter ModifyConfigs removeKey failed, maybe the key is not exist!"

    invoke-static {v9, v11}, Lcom/huawei/android/pushagent/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 111
    :cond_6
    const-string v9, "PushLog2510"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "the file is not exist! file path is"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v9, v11}, Lcom/huawei/android/pushagent/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 116
    .end local v1           #cacheFile:Ljava/io/File;
    .end local v4           #filePath:Ljava/lang/String;
    .end local v8           #tempFile:Ljava/io/File;
    :pswitch_2
    invoke-virtual {p0}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v0

    .line 117
    .local v0, cache:Ljava/io/File;
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    sget-object v11, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v11, "shared_prefs"

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    sget-object v11, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v11, v7, Lcom/huawei/android/pushagent/model/pushcommand/ModifyConfigs$ModifyStruct;->mFileName:Ljava/lang/String;

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v11, ".xml"

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 118
    .local v5, path:Ljava/lang/String;
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 119
    .local v3, file:Ljava/io/File;
    invoke-virtual {v3}, Ljava/io/File;->isFile()Z

    move-result v9

    if-eqz v9, :cond_8

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v9

    if-eqz v9, :cond_8

    .line 120
    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    move-result v9

    if-eqz v9, :cond_7

    .line 121
    const-string v9, "PushLog2510"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "delete success! file path is "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v9, v11}, Lcom/huawei/android/pushagent/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 123
    :cond_7
    const-string v9, "PushLog2510"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "delete failed! file path is "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v9, v11}, Lcom/huawei/android/pushagent/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 126
    :cond_8
    const-string v9, "PushLog2510"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "the file is not exist! file path is"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v9, v11}, Lcom/huawei/android/pushagent/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto/16 :goto_0

    .line 79
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private static parseStr(Ljava/lang/String;)Lcom/huawei/android/pushagent/model/pushcommand/ModifyConfigs$ModifyStruct;
    .locals 8
    .parameter "jsonStr"

    .prologue
    const/4 v4, 0x0

    .line 35
    new-instance v3, Lcom/huawei/android/pushagent/model/pushcommand/ModifyConfigs$ModifyStruct;

    invoke-direct {v3, v4}, Lcom/huawei/android/pushagent/model/pushcommand/ModifyConfigs$ModifyStruct;-><init>(Lcom/huawei/android/pushagent/model/pushcommand/ModifyConfigs$1;)V

    .line 36
    .local v3, struct:Lcom/huawei/android/pushagent/model/pushcommand/ModifyConfigs$ModifyStruct;
    const/4 v1, 0x0

    .line 38
    .local v1, jsonObj:Lorg/json/JSONObject;
    :try_start_0
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 40
    .end local v1           #jsonObj:Lorg/json/JSONObject;
    .local v2, jsonObj:Lorg/json/JSONObject;
    :try_start_1
    const-string v5, "file"

    invoke-virtual {v2, v5}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 41
    const-string v5, "file"

    invoke-virtual {v2, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v3, Lcom/huawei/android/pushagent/model/pushcommand/ModifyConfigs$ModifyStruct;->mFileName:Ljava/lang/String;

    .line 42
    const-string v5, "PushLog2510"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "ModifyStruct mFileName is "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, v3, Lcom/huawei/android/pushagent/model/pushcommand/ModifyConfigs$ModifyStruct;->mFileName:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/huawei/android/pushagent/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 44
    :cond_0
    const-string v5, "type"

    invoke-virtual {v2, v5}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 45
    const-string v5, "type"

    invoke-virtual {v2, v5}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v5

    iput v5, v3, Lcom/huawei/android/pushagent/model/pushcommand/ModifyConfigs$ModifyStruct;->mModifyType:I

    .line 46
    const-string v5, "PushLog2510"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "ModifyStruct mModifyType is "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, v3, Lcom/huawei/android/pushagent/model/pushcommand/ModifyConfigs$ModifyStruct;->mModifyType:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/huawei/android/pushagent/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 48
    :cond_1
    const-string v5, "name"

    invoke-virtual {v2, v5}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 49
    const-string v5, "name"

    invoke-virtual {v2, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v3, Lcom/huawei/android/pushagent/model/pushcommand/ModifyConfigs$ModifyStruct;->mName:Ljava/lang/String;

    .line 50
    const-string v5, "PushLog2510"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "ModifyStruct mName is "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, v3, Lcom/huawei/android/pushagent/model/pushcommand/ModifyConfigs$ModifyStruct;->mName:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/huawei/android/pushagent/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 52
    :cond_2
    const-string v5, "val"

    invoke-virtual {v2, v5}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 53
    const-string v5, "val"

    invoke-virtual {v2, v5}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    iput-object v5, v3, Lcom/huawei/android/pushagent/model/pushcommand/ModifyConfigs$ModifyStruct;->mVal:Ljava/lang/Object;

    .line 54
    const-string v5, "PushLog2510"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "ModifyStruct mVal is "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, v3, Lcom/huawei/android/pushagent/model/pushcommand/ModifyConfigs$ModifyStruct;->mVal:Ljava/lang/Object;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/huawei/android/pushagent/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :cond_3
    move-object v1, v2

    .line 59
    .end local v2           #jsonObj:Lorg/json/JSONObject;
    .end local v3           #struct:Lcom/huawei/android/pushagent/model/pushcommand/ModifyConfigs$ModifyStruct;
    .restart local v1       #jsonObj:Lorg/json/JSONObject;
    :goto_0
    return-object v3

    .line 57
    .restart local v3       #struct:Lcom/huawei/android/pushagent/model/pushcommand/ModifyConfigs$ModifyStruct;
    :catch_0
    move-exception v0

    .line 58
    .local v0, e:Ljava/lang/Exception;
    :goto_1
    const-string v5, "PushLog2510"

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6, v0}, Lcom/huawei/android/pushagent/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    move-object v3, v4

    .line 59
    goto :goto_0

    .line 57
    .end local v0           #e:Ljava/lang/Exception;
    .end local v1           #jsonObj:Lorg/json/JSONObject;
    .restart local v2       #jsonObj:Lorg/json/JSONObject;
    :catch_1
    move-exception v0

    move-object v1, v2

    .end local v2           #jsonObj:Lorg/json/JSONObject;
    .restart local v1       #jsonObj:Lorg/json/JSONObject;
    goto :goto_1
.end method
