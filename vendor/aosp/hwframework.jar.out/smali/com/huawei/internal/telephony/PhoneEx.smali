.class public Lcom/huawei/internal/telephony/PhoneEx;
.super Ljava/lang/Object;
.source "PhoneEx.java"


# static fields
.field public static final FEATURE_ENABLE_MMS_SUB1:Ljava/lang/String; = "enableMMS_sub1"

.field public static final FEATURE_ENABLE_MMS_SUB2:Ljava/lang/String; = "enableMMS_sub2"

.field public static final NT_MODE_LTE_CDMA_AND_EVDO:I = 0x8

.field public static final NT_MODE_LTE_CMDA_EVDO_GSM_WCDMA:I = 0xa

.field public static final NT_MODE_LTE_GSM_WCDMA:I = 0x9

.field public static final NT_MODE_LTE_WCDMA:I = 0xc

.field public static final PHONE_TYPE_RIL_IMS:I = 0x4

.field public static final PIN_GENERAL_FAILURE:I = 0x2

.field public static final PIN_PASSWORD_INCORRECT:I = 0x1

.field public static final PIN_RESULT_SUCCESS:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 40
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final disableQos(Lcom/android/internal/telephony/Phone;I)I
    .locals 2
    .parameter "obj"
    .parameter "qosId"

    .prologue
    .line 78
    new-instance v0, Lcom/huawei/android/util/NoExtAPIException;

    const-string v1, "method not supported."

    invoke-direct {v0, v1}, Lcom/huawei/android/util/NoExtAPIException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static final enableQos(Lcom/android/internal/telephony/Phone;Lcom/android/internal/telephony/QosSpec;Ljava/lang/String;)I
    .locals 2
    .parameter "obj"
    .parameter "qosSpec"
    .parameter "type"

    .prologue
    .line 66
    new-instance v0, Lcom/huawei/android/util/NoExtAPIException;

    const-string v1, "method not supported."

    invoke-direct {v0, v1}, Lcom/huawei/android/util/NoExtAPIException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static final getQosStatus(Lcom/android/internal/telephony/Phone;I)I
    .locals 2
    .parameter "obj"
    .parameter "qosId"

    .prologue
    .line 127
    new-instance v0, Lcom/huawei/android/util/NoExtAPIException;

    const-string v1, "method not supported."

    invoke-direct {v0, v1}, Lcom/huawei/android/util/NoExtAPIException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static final getSubscription(Lcom/android/internal/telephony/Phone;)I
    .locals 1
    .parameter "obj"

    .prologue
    .line 138
    if-eqz p0, :cond_0

    .line 139
    invoke-interface {p0}, Lcom/android/internal/telephony/Phone;->getMySimId()I

    move-result v0

    .line 141
    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public static final invokeDepersonalization(Lcom/android/internal/telephony/Phone;Ljava/lang/String;ILandroid/os/Message;)V
    .locals 2
    .parameter "obj"
    .parameter "pin"
    .parameter "type"
    .parameter "response"

    .prologue
    .line 225
    new-instance v0, Lcom/huawei/android/util/NoExtAPIException;

    const-string v1, "method not supported."

    invoke-direct {v0, v1}, Lcom/huawei/android/util/NoExtAPIException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static final invokeSimlessHW(Lcom/android/internal/telephony/Phone;)V
    .locals 2
    .parameter "obj"

    .prologue
    .line 236
    new-instance v0, Lcom/huawei/android/util/NoExtAPIException;

    const-string v1, "method not supported."

    invoke-direct {v0, v1}, Lcom/huawei/android/util/NoExtAPIException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static final isManualNetSelAllowed(Lcom/android/internal/telephony/Phone;)Z
    .locals 2
    .parameter "obj"

    .prologue
    .line 153
    new-instance v0, Lcom/huawei/android/util/NoExtAPIException;

    const-string v1, "method not supported."

    invoke-direct {v0, v1}, Lcom/huawei/android/util/NoExtAPIException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static final modifyQos(Lcom/android/internal/telephony/Phone;ILcom/android/internal/telephony/QosSpec;)I
    .locals 2
    .parameter "obj"
    .parameter "qosId"
    .parameter "qosSpec"

    .prologue
    .line 91
    new-instance v0, Lcom/huawei/android/util/NoExtAPIException;

    const-string v1, "method not supported."

    invoke-direct {v0, v1}, Lcom/huawei/android/util/NoExtAPIException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static registerForSimRecordsLoaded(Lcom/android/internal/telephony/Phone;Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 2
    .parameter "phoneObj"
    .parameter "h"
    .parameter "what"
    .parameter "obj"

    .prologue
    .line 258
    new-instance v0, Lcom/huawei/android/util/NoExtAPIException;

    const-string v1, "method not supported."

    invoke-direct {v0, v1}, Lcom/huawei/android/util/NoExtAPIException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static final resumeQos(Lcom/android/internal/telephony/Phone;I)I
    .locals 2
    .parameter "obj"
    .parameter "qosId"

    .prologue
    .line 115
    new-instance v0, Lcom/huawei/android/util/NoExtAPIException;

    const-string v1, "method not supported."

    invoke-direct {v0, v1}, Lcom/huawei/android/util/NoExtAPIException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static final setDataReadinessChecks(Lcom/android/internal/telephony/Phone;ZZZ)V
    .locals 2
    .parameter "obj"
    .parameter "checkConnectivity"
    .parameter "checkSubscription"
    .parameter "tryDataCalls"

    .prologue
    .line 167
    new-instance v0, Lcom/huawei/android/util/NoExtAPIException;

    const-string v1, "method not supported."

    invoke-direct {v0, v1}, Lcom/huawei/android/util/NoExtAPIException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static final setModemPower(Lcom/android/internal/telephony/Phone;Z)V
    .locals 2
    .parameter "obj"
    .parameter "on"

    .prologue
    .line 247
    new-instance v0, Lcom/huawei/android/util/NoExtAPIException;

    const-string v1, "method not supported."

    invoke-direct {v0, v1}, Lcom/huawei/android/util/NoExtAPIException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static final setOnUnsolOemHookExtApp(Lcom/android/internal/telephony/Phone;Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 2
    .parameter "obj"
    .parameter "h"
    .parameter "what"
    .parameter "object"

    .prologue
    .line 180
    new-instance v0, Lcom/huawei/android/util/NoExtAPIException;

    const-string v1, "method not supported."

    invoke-direct {v0, v1}, Lcom/huawei/android/util/NoExtAPIException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static final setTransmitPower(Lcom/android/internal/telephony/Phone;ILandroid/os/Message;)V
    .locals 2
    .parameter "obj"
    .parameter "powerLevel"
    .parameter "onCompleted"

    .prologue
    .line 193
    new-instance v0, Lcom/huawei/android/util/NoExtAPIException;

    const-string v1, "method not supported."

    invoke-direct {v0, v1}, Lcom/huawei/android/util/NoExtAPIException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static final suspendQos(Lcom/android/internal/telephony/Phone;I)I
    .locals 2
    .parameter "obj"
    .parameter "qosId"

    .prologue
    .line 103
    new-instance v0, Lcom/huawei/android/util/NoExtAPIException;

    const-string v1, "method not supported."

    invoke-direct {v0, v1}, Lcom/huawei/android/util/NoExtAPIException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static final unSetOnUnsolOemHookExtApp(Lcom/android/internal/telephony/Phone;Landroid/os/Handler;)V
    .locals 2
    .parameter "obj"
    .parameter "h"

    .prologue
    .line 204
    new-instance v0, Lcom/huawei/android/util/NoExtAPIException;

    const-string v1, "method not supported."

    invoke-direct {v0, v1}, Lcom/huawei/android/util/NoExtAPIException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static unregisterForSimRecordsLoaded(Lcom/android/internal/telephony/Phone;Landroid/os/Handler;)V
    .locals 2
    .parameter "obj"
    .parameter "h"

    .prologue
    .line 266
    new-instance v0, Lcom/huawei/android/util/NoExtAPIException;

    const-string v1, "method not supported."

    invoke-direct {v0, v1}, Lcom/huawei/android/util/NoExtAPIException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
