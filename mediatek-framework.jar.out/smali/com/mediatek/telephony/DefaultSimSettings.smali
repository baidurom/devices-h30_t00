.class public Lcom/mediatek/telephony/DefaultSimSettings;
.super Ljava/lang/Object;
.source "DefaultSimSettings.java"


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "PHONE"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 71
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static get3GSimId()I
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 274
    const-string v2, "gsm.3gswitch"

    invoke-static {v2, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 275
    .local v0, simId:I
    if-lez v0, :cond_0

    sget v2, Lcom/android/internal/telephony/PhoneConstants;->GEMINI_SIM_NUM:I

    if-gt v0, v2, :cond_0

    .line 276
    add-int/lit8 v1, v0, -0x1

    .line 281
    :goto_0
    return v1

    .line 278
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "get3GSimId() got invalid property value:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/mediatek/telephony/DefaultSimSettings;->logd(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private static isSimRemoved(J[JI)Z
    .locals 4
    .parameter "defSimId"
    .parameter "curSim"
    .parameter "numSim"

    .prologue
    .line 257
    const-wide/16 v2, 0x0

    cmp-long v2, p0, v2

    if-gtz v2, :cond_1

    .line 258
    const/4 v1, 0x0

    .line 269
    :cond_0
    :goto_0
    return v1

    .line 261
    :cond_1
    const/4 v1, 0x1

    .line 262
    .local v1, isDefaultSimRemoved:Z
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    if-ge v0, p3, :cond_0

    .line 264
    aget-wide v2, p2, v0

    cmp-long v2, p0, v2

    if-nez v2, :cond_2

    .line 265
    const/4 v1, 0x0

    .line 266
    goto :goto_0

    .line 262
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method private static logd(Ljava/lang/String;)V
    .locals 3
    .parameter "message"

    .prologue
    .line 285
    const-string v0, "PHONE"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[DefaultSimSetting] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 286
    return-void
.end method

.method public static setAllDefaultSim(Landroid/content/Context;Landroid/content/ContentResolver;Ljava/util/List;[J[ZIIZ[IZ)V
    .locals 22
    .parameter "context"
    .parameter "contentResolver"
    .parameter
    .parameter "simIdForSlot"
    .parameter "isSimInserted"
    .parameter "nNewCardCount"
    .parameter "nSimCount"
    .parameter "is3GSwitched"
    .parameter "mInsertSimState"
    .parameter "hasSimRemoved"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/content/ContentResolver;",
            "Ljava/util/List",
            "<",
            "Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;",
            ">;[J[ZIIZ[IZ)V"
        }
    .end annotation

    .prologue
    .line 77
    .local p2, simInfos:Ljava/util/List;,"Ljava/util/List<Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;>;"
    const/16 v18, 0x0

    .line 79
    .local v18, telephonyExt:Lcom/mediatek/common/telephony/ITelephonyExt;
    :try_start_0
    const-class v19, Lcom/mediatek/common/telephony/ITelephonyExt;

    const/16 v20, 0x0

    move/from16 v0, v20

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v20, v0

    invoke-static/range {v19 .. v20}, Lcom/mediatek/common/MediatekClassFactory;->createInstance(Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v19

    move-object/from16 v0, v19

    check-cast v0, Lcom/mediatek/common/telephony/ITelephonyExt;

    move-object/from16 v18, v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 83
    :goto_0
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move/from16 v4, p6

    invoke-static {v0, v1, v2, v3, v4}, Lcom/mediatek/telephony/DefaultVoiceCallSimSettings;->setVoiceCallDefaultSim(Landroid/content/Context;Landroid/content/ContentResolver;Ljava/util/List;[JI)V

    .line 84
    const-string v19, "SimInfoUpdate: voice call complete"

    invoke-static/range {v19 .. v19}, Lcom/mediatek/telephony/DefaultSimSettings;->logd(Ljava/lang/String;)V

    .line 85
    move-object/from16 v0, p1

    move-object/from16 v1, p3

    move-object/from16 v2, p4

    invoke-static {v0, v1, v2}, Lcom/mediatek/telephony/DefaultVtSimSettings;->setVtDefaultSim(Landroid/content/ContentResolver;[J[Z)V

    .line 86
    const-string v19, "SimInfoUpdate: vt complete"

    invoke-static/range {v19 .. v19}, Lcom/mediatek/telephony/DefaultSimSettings;->logd(Ljava/lang/String;)V

    .line 87
    move-object/from16 v0, p1

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    move/from16 v3, p6

    invoke-static {v0, v1, v2, v3}, Lcom/mediatek/telephony/DefaultSmsSimSettings;->setSmsTalkDefaultSim(Landroid/content/ContentResolver;Ljava/util/List;[JI)V

    .line 88
    const-string v19, "SimInfoUpdate: sms complete"

    invoke-static/range {v19 .. v19}, Lcom/mediatek/telephony/DefaultSimSettings;->logd(Ljava/lang/String;)V

    .line 90
    invoke-static {}, Lcom/mediatek/telephony/DefaultSimSettings;->get3GSimId()I

    move-result v12

    .line 94
    .local v12, n3gSIMSlot:I
    const-string v19, "gprs_connection_sim_setting"

    const-wide/16 v20, -0x5

    move-object/from16 v0, p1

    move-object/from16 v1, v19

    move-wide/from16 v2, v20

    invoke-static {v0, v1, v2, v3}, Landroid/provider/Settings$System;->getLong(Landroid/content/ContentResolver;Ljava/lang/String;J)J

    move-result-wide v13

    .line 96
    .local v13, oldGprsDefaultSIM:J
    const-string v19, "connectivity"

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/net/ConnectivityManager;

    .line 97
    .local v5, connectivityManager:Landroid/net/ConnectivityManager;
    const/16 v19, 0x1

    move/from16 v0, p6

    move/from16 v1, v19

    if-le v0, v1, :cond_4

    .line 98
    const-wide/16 v19, -0x5

    cmp-long v19, v13, v19

    if-nez v19, :cond_0

    .line 99
    invoke-interface/range {v18 .. v18}, Lcom/mediatek/common/telephony/ITelephonyExt;->isDefaultDataOn()Z

    move-result v19

    if-eqz v19, :cond_3

    .line 100
    invoke-virtual {v5, v12}, Landroid/net/ConnectivityManager;->setMobileDataEnabledGemini(I)Z

    .line 128
    :cond_0
    :goto_1
    sget v19, Lcom/android/internal/telephony/PhoneConstants;->GEMINI_SIM_NUM:I

    move-object/from16 v0, p3

    move/from16 v1, v19

    invoke-static {v13, v14, v0, v1}, Lcom/mediatek/telephony/DefaultSimSettings;->isSimRemoved(J[JI)Z

    move-result v19

    if-eqz v19, :cond_8

    .line 129
    invoke-interface/range {v18 .. v18}, Lcom/mediatek/common/telephony/ITelephonyExt;->isDefaultDataOn()Z

    move-result v19

    if-eqz v19, :cond_7

    .line 130
    if-lez p6, :cond_1

    .line 131
    const-string v19, "default data SIM removed and default data on, switch to 3G SIM"

    invoke-static/range {v19 .. v19}, Lcom/mediatek/telephony/DefaultSimSettings;->logd(Ljava/lang/String;)V

    .line 132
    aget-boolean v19, p4, v12

    if-eqz v19, :cond_6

    .line 133
    invoke-virtual {v5, v12}, Landroid/net/ConnectivityManager;->setMobileDataEnabledGemini(I)Z

    .line 181
    :cond_1
    :goto_2
    const-string v19, "gprs_connection_sim_setting"

    const-wide/16 v20, -0x5

    move-object/from16 v0, p1

    move-object/from16 v1, v19

    move-wide/from16 v2, v20

    invoke-static {v0, v1, v2, v3}, Landroid/provider/Settings$System;->getLong(Landroid/content/ContentResolver;Ljava/lang/String;J)J

    move-result-wide v7

    .line 182
    .local v7, gprsDefaultSIM:J
    const-wide/16 v19, -0x5

    cmp-long v19, v7, v19

    if-eqz v19, :cond_2

    const-wide/16 v19, 0x0

    cmp-long v19, v7, v19

    if-eqz v19, :cond_2

    .line 183
    move-object/from16 v0, p0

    invoke-static {v0, v7, v8}, Lcom/mediatek/telephony/SimInfoManager;->getSlotById(Landroid/content/Context;J)I

    move-result v17

    .line 184
    .local v17, slot:I
    const/16 v19, -0x1

    move/from16 v0, v17

    move/from16 v1, v19

    if-eq v0, v1, :cond_10

    .line 187
    move/from16 v0, v17

    invoke-virtual {v5, v0}, Landroid/net/ConnectivityManager;->setMobileDataEnabledGemini(I)Z

    .line 189
    const-string v19, "phone"

    invoke-static/range {v19 .. v19}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v19

    invoke-static/range {v19 .. v19}, Lcom/android/internal/telephony/ITelephony$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephony;

    move-result-object v11

    .line 190
    .local v11, iTelephony:Lcom/android/internal/telephony/ITelephony;
    if-eqz v11, :cond_2

    .line 192
    :try_start_1
    const-string v19, "default"

    move-object/from16 v0, v19

    move/from16 v1, v17

    invoke-interface {v11, v0, v1}, Lcom/android/internal/telephony/ITelephony;->enableApnTypeGemini(Ljava/lang/String;I)I
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    .line 252
    .end local v11           #iTelephony:Lcom/android/internal/telephony/ITelephony;
    .end local v17           #slot:I
    :cond_2
    :goto_3
    const-string v19, "SimInfoUpdate: data complete"

    invoke-static/range {v19 .. v19}, Lcom/mediatek/telephony/DefaultSimSettings;->logd(Ljava/lang/String;)V

    .line 253
    return-void

    .line 80
    .end local v5           #connectivityManager:Landroid/net/ConnectivityManager;
    .end local v7           #gprsDefaultSIM:J
    .end local v12           #n3gSIMSlot:I
    .end local v13           #oldGprsDefaultSIM:J
    :catch_0
    move-exception v6

    .line 81
    .local v6, e:Ljava/lang/Exception;
    invoke-virtual {v6}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_0

    .line 102
    .end local v6           #e:Ljava/lang/Exception;
    .restart local v5       #connectivityManager:Landroid/net/ConnectivityManager;
    .restart local v12       #n3gSIMSlot:I
    .restart local v13       #oldGprsDefaultSIM:J
    :cond_3
    const/16 v19, 0x0

    move/from16 v0, v19

    invoke-virtual {v5, v0}, Landroid/net/ConnectivityManager;->setMobileDataEnabled(Z)V

    goto :goto_1

    .line 104
    :cond_4
    const/16 v19, 0x1

    move/from16 v0, p6

    move/from16 v1, v19

    if-ne v0, v1, :cond_0

    .line 105
    const/16 v19, 0x0

    move-object/from16 v0, p2

    move/from16 v1, v19

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;

    move-object/from16 v0, v19

    iget-wide v15, v0, Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;->mSimInfoId:J

    .line 110
    .local v15, simId:J
    const-wide/16 v19, -0x5

    cmp-long v19, v13, v19

    if-nez v19, :cond_0

    .line 111
    invoke-interface/range {v18 .. v18}, Lcom/mediatek/common/telephony/ITelephonyExt;->isDefaultDataOn()Z

    move-result v19

    if-eqz v19, :cond_5

    .line 112
    const/16 v19, 0x0

    move-object/from16 v0, p2

    move/from16 v1, v19

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;

    move-object/from16 v0, v19

    iget v0, v0, Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;->mSimSlotId:I

    move/from16 v19, v0

    move/from16 v0, v19

    invoke-virtual {v5, v0}, Landroid/net/ConnectivityManager;->setMobileDataEnabledGemini(I)Z

    goto/16 :goto_1

    .line 114
    :cond_5
    const/16 v19, 0x0

    move/from16 v0, v19

    invoke-virtual {v5, v0}, Landroid/net/ConnectivityManager;->setMobileDataEnabled(Z)V

    goto/16 :goto_1

    .line 135
    .end local v15           #simId:J
    :cond_6
    const/16 v19, 0x0

    move-object/from16 v0, p2

    move/from16 v1, v19

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;

    move-object/from16 v0, v19

    iget v0, v0, Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;->mSimSlotId:I

    move/from16 v19, v0

    move/from16 v0, v19

    invoke-virtual {v5, v0}, Landroid/net/ConnectivityManager;->setMobileDataEnabledGemini(I)Z

    goto/16 :goto_2

    .line 138
    :cond_7
    const/16 v19, 0x0

    move/from16 v0, v19

    invoke-virtual {v5, v0}, Landroid/net/ConnectivityManager;->setMobileDataEnabled(Z)V

    goto/16 :goto_2

    .line 140
    :cond_8
    invoke-interface/range {v18 .. v18}, Lcom/mediatek/common/telephony/ITelephonyExt;->isDefaultEnable3GSIMDataWhenNewSIMInserted()Z

    move-result v19

    if-eqz v19, :cond_1

    .line 141
    const-wide/16 v19, 0x0

    cmp-long v19, v13, v19

    if-lez v19, :cond_e

    .line 142
    if-lez p5, :cond_a

    .line 143
    const-string v19, "SIM swapped and data on, default switch to 3G SIM"

    invoke-static/range {v19 .. v19}, Lcom/mediatek/telephony/DefaultSimSettings;->logd(Ljava/lang/String;)V

    .line 144
    aget-boolean v19, p4, v12

    if-eqz v19, :cond_9

    .line 145
    invoke-virtual {v5, v12}, Landroid/net/ConnectivityManager;->setMobileDataEnabledGemini(I)Z

    goto/16 :goto_2

    .line 147
    :cond_9
    const/16 v19, 0x0

    move-object/from16 v0, p2

    move/from16 v1, v19

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;

    move-object/from16 v0, v19

    iget v0, v0, Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;->mSimSlotId:I

    move/from16 v19, v0

    move/from16 v0, v19

    invoke-virtual {v5, v0}, Landroid/net/ConnectivityManager;->setMobileDataEnabledGemini(I)Z

    goto/16 :goto_2

    .line 149
    :cond_a
    const/4 v9, 0x0

    .line 150
    .local v9, hasSIMRepositioned:Z
    const/4 v10, 0x0

    .local v10, i:I
    :goto_4
    move-object/from16 v0, p8

    array-length v0, v0

    move/from16 v19, v0

    move/from16 v0, v19

    if-ge v10, v0, :cond_b

    .line 151
    aget v19, p8, v10

    const/16 v20, -0x3

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_c

    .line 152
    const/4 v9, 0x1

    .line 156
    :cond_b
    if-nez p9, :cond_1

    if-eqz v9, :cond_1

    .line 157
    const-string v19, "Some SIM is switched slot, default switch to 3G SIM"

    invoke-static/range {v19 .. v19}, Lcom/mediatek/telephony/DefaultSimSettings;->logd(Ljava/lang/String;)V

    .line 158
    aget-boolean v19, p4, v12

    if-eqz v19, :cond_d

    .line 159
    invoke-virtual {v5, v12}, Landroid/net/ConnectivityManager;->setMobileDataEnabledGemini(I)Z

    goto/16 :goto_2

    .line 150
    :cond_c
    add-int/lit8 v10, v10, 0x1

    goto :goto_4

    .line 161
    :cond_d
    const/16 v19, 0x0

    move-object/from16 v0, p2

    move/from16 v1, v19

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;

    move-object/from16 v0, v19

    iget v0, v0, Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;->mSimSlotId:I

    move/from16 v19, v0

    move/from16 v0, v19

    invoke-virtual {v5, v0}, Landroid/net/ConnectivityManager;->setMobileDataEnabledGemini(I)Z

    goto/16 :goto_2

    .line 165
    .end local v9           #hasSIMRepositioned:Z
    .end local v10           #i:I
    :cond_e
    if-lez p5, :cond_1

    move/from16 v0, p5

    move/from16 v1, p6

    if-ne v0, v1, :cond_1

    .line 166
    const-string v19, "All SIM new, data off and default switch data to 3G SIM"

    invoke-static/range {v19 .. v19}, Lcom/mediatek/telephony/DefaultSimSettings;->logd(Ljava/lang/String;)V

    .line 167
    aget-boolean v19, p4, v12

    if-eqz v19, :cond_f

    .line 168
    invoke-virtual {v5, v12}, Landroid/net/ConnectivityManager;->setMobileDataEnabledGemini(I)Z

    goto/16 :goto_2

    .line 170
    :cond_f
    const/16 v19, 0x0

    move-object/from16 v0, p2

    move/from16 v1, v19

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;

    move-object/from16 v0, v19

    iget v0, v0, Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;->mSimSlotId:I

    move/from16 v19, v0

    move/from16 v0, v19

    invoke-virtual {v5, v0}, Landroid/net/ConnectivityManager;->setMobileDataEnabledGemini(I)Z

    goto/16 :goto_2

    .line 193
    .restart local v7       #gprsDefaultSIM:J
    .restart local v11       #iTelephony:Lcom/android/internal/telephony/ITelephony;
    .restart local v17       #slot:I
    :catch_1
    move-exception v6

    .line 194
    .local v6, e:Landroid/os/RemoteException;
    invoke-virtual {v6}, Landroid/os/RemoteException;->printStackTrace()V

    goto/16 :goto_3

    .line 199
    .end local v6           #e:Landroid/os/RemoteException;
    .end local v11           #iTelephony:Lcom/android/internal/telephony/ITelephony;
    :cond_10
    const-string v19, "gprsDefaultSIM does not exist in slot then skip."

    invoke-static/range {v19 .. v19}, Lcom/mediatek/telephony/DefaultSimSettings;->logd(Ljava/lang/String;)V

    goto/16 :goto_3
.end method
