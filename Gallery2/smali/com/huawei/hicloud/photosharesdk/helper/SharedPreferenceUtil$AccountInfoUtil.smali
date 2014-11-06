.class public Lcom/huawei/hicloud/photosharesdk/helper/SharedPreferenceUtil$AccountInfoUtil;
.super Ljava/lang/Object;
.source "SharedPreferenceUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/huawei/hicloud/photosharesdk/helper/SharedPreferenceUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AccountInfoUtil"
.end annotation


# static fields
.field private static final ACCOUNT_NAME:Ljava/lang/String; = "AccountInfoUtilaccountName"

.field private static final AUTH_TYPE:Ljava/lang/String; = "AccountInfoUtilauthType"

.field private static final CLIENT_ID:Ljava/lang/String; = "AccountInfoUtilclientId"

.field private static final DEVICE_ID:Ljava/lang/String; = "AccountInfoUtildeviceID"

.field private static final DEVICE_ID_TYPE:Ljava/lang/String; = "AccountInfoUtildeviceIDType"

.field private static final DEVICE_TYPE:Ljava/lang/String; = "AccountInfoUtildeviceType"

.field private static final IS_LOG_ON:Ljava/lang/String; = "AccountInfoUtilis_log_on"

.field private static final NICK_NAME:Ljava/lang/String; = "AccountInfoUtilnickName"

.field private static final PHOTO_EXP:Ljava/lang/String; = "AccountInfoUtilphoto_exp"

.field private static final PHOTO_NUM:Ljava/lang/String; = "AccountInfoUtilphoto_num"

.field private static final SECRECT:Ljava/lang/String; = "AccountInfoUtilsecret"

.field private static final SERVICE_TOKEN:Ljava/lang/String; = "AccountInfoUtilserviceToken"

.field private static final SID:Ljava/lang/String; = "AccountInfoUtilsid"

.field private static final SITE_ID:Ljava/lang/String; = "AccountInfoUtilsiteID"

.field private static final TAG:Ljava/lang/String; = "AccountInfoUtil"

.field private static final USER_ID:Ljava/lang/String; = "AccountInfoUtiluserID"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static clearAccountDataInFile(Landroid/content/Context;)V
    .locals 4
    .parameter "context"

    .prologue
    .line 100
    .line 101
    const-string v2, "com.huawei.hicloud.photosharesdk.SETTING"

    const/4 v3, 0x0

    .line 100
    invoke-virtual {p0, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 102
    .local v1, spreferences:Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 103
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    const-string v2, "AccountInfoUtilaccountName"

    invoke-interface {v0, v2}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 104
    const-string v2, "AccountInfoUtilnickName"

    invoke-interface {v0, v2}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 105
    const-string v2, "AccountInfoUtilserviceToken"

    invoke-interface {v0, v2}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 106
    const-string v2, "AccountInfoUtildeviceID"

    invoke-interface {v0, v2}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 107
    const-string v2, "AccountInfoUtildeviceIDType"

    invoke-interface {v0, v2}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 108
    const-string v2, "AccountInfoUtildeviceType"

    invoke-interface {v0, v2}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 109
    const-string v2, "AccountInfoUtiluserID"

    invoke-interface {v0, v2}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 110
    const-string v2, "AccountInfoUtilsiteID"

    invoke-interface {v0, v2}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 111
    const-string v2, "AccountInfoUtilauthType"

    invoke-interface {v0, v2}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 112
    const-string v2, "AccountInfoUtilsid"

    invoke-interface {v0, v2}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 113
    const-string v2, "AccountInfoUtilsecret"

    invoke-interface {v0, v2}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 114
    const-string v2, "AccountInfoUtilclientId"

    invoke-interface {v0, v2}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 115
    const-string v2, "AccountInfoUtilphoto_num"

    invoke-interface {v0, v2}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 116
    const-string v2, "AccountInfoUtilphoto_exp"

    invoke-interface {v0, v2}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 117
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 118
    return-void
.end method

.method public static clearIsLogOnFromFile(Landroid/content/Context;)V
    .locals 4
    .parameter "context"

    .prologue
    .line 135
    .line 136
    const-string v2, "com.huawei.hicloud.photosharesdk.SETTING"

    const/4 v3, 0x0

    .line 135
    invoke-virtual {p0, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 137
    .local v1, spreferences:Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 138
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    const-string v2, "AccountInfoUtilis_log_on"

    invoke-interface {v0, v2}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 139
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 140
    return-void
.end method

.method public static readAccountInfoFromFile(Landroid/content/Context;)Lcom/huawei/hicloud/photosharesdk/api/vo/AccountInfo;
    .locals 5
    .parameter "context"

    .prologue
    const/4 v4, 0x0

    .line 38
    new-instance v0, Lcom/huawei/hicloud/photosharesdk/api/vo/AccountInfo;

    invoke-direct {v0}, Lcom/huawei/hicloud/photosharesdk/api/vo/AccountInfo;-><init>()V

    .line 40
    .local v0, accountInfo:Lcom/huawei/hicloud/photosharesdk/api/vo/AccountInfo;
    const-string v2, "com.huawei.hicloud.photosharesdk.SETTING"

    const/4 v3, 0x0

    .line 39
    invoke-virtual {p0, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 41
    .local v1, spreferences:Landroid/content/SharedPreferences;
    const-string v2, "AccountInfoUtilaccountName"

    invoke-interface {v1, v2, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/huawei/hicloud/photosharesdk/api/vo/AccountInfo;->setAccountName(Ljava/lang/String;)V

    .line 43
    const-string v2, "AccountInfoUtilnickName"

    invoke-interface {v1, v2, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/huawei/hicloud/photosharesdk/api/vo/AccountInfo;->setNickName(Ljava/lang/String;)V

    .line 44
    const-string v2, "AccountInfoUtilserviceToken"

    invoke-interface {v1, v2, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/huawei/hicloud/photosharesdk/api/vo/AccountInfo;->setServiceToken(Ljava/lang/String;)V

    .line 46
    const-string v2, "AccountInfoUtildeviceID"

    invoke-interface {v1, v2, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/huawei/hicloud/photosharesdk/api/vo/AccountInfo;->setDeviceID(Ljava/lang/String;)V

    .line 47
    const-string v2, "AccountInfoUtildeviceIDType"

    invoke-interface {v1, v2, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/huawei/hicloud/photosharesdk/api/vo/AccountInfo;->setDeviceIDType(Ljava/lang/String;)V

    .line 50
    const-string v2, "AccountInfoUtildeviceType"

    invoke-interface {v1, v2, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/huawei/hicloud/photosharesdk/api/vo/AccountInfo;->setDeviceType(Ljava/lang/String;)V

    .line 51
    const-string v2, "AccountInfoUtiluserID"

    invoke-interface {v1, v2, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/huawei/hicloud/photosharesdk/api/vo/AccountInfo;->setUserID(Ljava/lang/String;)V

    .line 52
    const-string v2, "AccountInfoUtilsiteID"

    invoke-interface {v1, v2, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/huawei/hicloud/photosharesdk/api/vo/AccountInfo;->setSiteID(Ljava/lang/String;)V

    .line 53
    const-string v2, "AccountInfoUtilauthType"

    invoke-interface {v1, v2, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/huawei/hicloud/photosharesdk/api/vo/AccountInfo;->setAuthType(Ljava/lang/String;)V

    .line 54
    return-object v0
.end method

.method public static readAuthInfoFromFile(Landroid/content/Context;)Lcom/huawei/hicloud/photosharesdk/settings/AuthInfo;
    .locals 5
    .parameter "context"

    .prologue
    const/4 v4, 0x0

    .line 58
    new-instance v0, Lcom/huawei/hicloud/photosharesdk/settings/AuthInfo;

    invoke-direct {v0}, Lcom/huawei/hicloud/photosharesdk/settings/AuthInfo;-><init>()V

    .line 60
    .local v0, authInfo:Lcom/huawei/hicloud/photosharesdk/settings/AuthInfo;
    const-string v2, "com.huawei.hicloud.photosharesdk.SETTING"

    const/4 v3, 0x0

    .line 59
    invoke-virtual {p0, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 61
    .local v1, spreferences:Landroid/content/SharedPreferences;
    const-string v2, "AccountInfoUtilsid"

    invoke-interface {v1, v2, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/huawei/hicloud/photosharesdk/settings/AuthInfo;->setSid(Ljava/lang/String;)V

    .line 62
    const-string v2, "AccountInfoUtilsecret"

    invoke-interface {v1, v2, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/huawei/hicloud/photosharesdk/settings/AuthInfo;->setSecret(Ljava/lang/String;)V

    .line 63
    const-string v2, "AccountInfoUtilclientId"

    invoke-interface {v1, v2, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/huawei/hicloud/photosharesdk/settings/AuthInfo;->setClientId(Ljava/lang/String;)V

    .line 64
    const-string v2, "AccountInfoUtilphoto_num"

    invoke-interface {v1, v2, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/huawei/hicloud/photosharesdk/settings/AuthInfo;->setPhoto_num(Ljava/lang/String;)V

    .line 65
    const-string v2, "AccountInfoUtilphoto_exp"

    invoke-interface {v1, v2, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/huawei/hicloud/photosharesdk/settings/AuthInfo;->setPhoto_exp(Ljava/lang/String;)V

    .line 66
    return-object v0
.end method

.method public static readIsLogOnFromFile(Landroid/content/Context;)Z
    .locals 3
    .parameter "context"

    .prologue
    const/4 v2, 0x0

    .line 121
    .line 122
    const-string v1, "com.huawei.hicloud.photosharesdk.SETTING"

    .line 121
    invoke-virtual {p0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 123
    .local v0, spreferences:Landroid/content/SharedPreferences;
    const-string v1, "AccountInfoUtilis_log_on"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    return v1
.end method

.method public static writeAccountInfoToFile(Lcom/huawei/hicloud/photosharesdk/api/vo/AccountInfo;Landroid/content/Context;)V
    .locals 4
    .parameter "accountinfo"
    .parameter "context"

    .prologue
    .line 71
    .line 72
    const-string v2, "com.huawei.hicloud.photosharesdk.SETTING"

    const/4 v3, 0x0

    .line 71
    invoke-virtual {p1, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 73
    .local v1, spreferences:Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 74
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    const-string v2, "AccountInfoUtilaccountName"

    invoke-virtual {p0}, Lcom/huawei/hicloud/photosharesdk/api/vo/AccountInfo;->getAccountName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 75
    const-string v2, "AccountInfoUtilnickName"

    invoke-virtual {p0}, Lcom/huawei/hicloud/photosharesdk/api/vo/AccountInfo;->getNickName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 76
    const-string v2, "AccountInfoUtilserviceToken"

    invoke-virtual {p0}, Lcom/huawei/hicloud/photosharesdk/api/vo/AccountInfo;->getServiceToken()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 77
    const-string v2, "AccountInfoUtildeviceID"

    invoke-virtual {p0}, Lcom/huawei/hicloud/photosharesdk/api/vo/AccountInfo;->getDeviceID()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 78
    const-string v2, "AccountInfoUtildeviceIDType"

    invoke-virtual {p0}, Lcom/huawei/hicloud/photosharesdk/api/vo/AccountInfo;->getDeviceIDType()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 79
    const-string v2, "AccountInfoUtildeviceType"

    invoke-virtual {p0}, Lcom/huawei/hicloud/photosharesdk/api/vo/AccountInfo;->getDeviceType()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 80
    const-string v2, "AccountInfoUtiluserID"

    invoke-virtual {p0}, Lcom/huawei/hicloud/photosharesdk/api/vo/AccountInfo;->getUserID()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 81
    const-string v2, "AccountInfoUtilsiteID"

    invoke-virtual {p0}, Lcom/huawei/hicloud/photosharesdk/api/vo/AccountInfo;->getSiteID()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 82
    const-string v2, "AccountInfoUtilauthType"

    invoke-virtual {p0}, Lcom/huawei/hicloud/photosharesdk/api/vo/AccountInfo;->getAuthType()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 83
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 84
    return-void
.end method

.method public static writeAuthInfoToFile(Lcom/huawei/hicloud/photosharesdk/settings/AuthInfo;Landroid/content/Context;)V
    .locals 4
    .parameter "authInfo"
    .parameter "context"

    .prologue
    .line 88
    .line 89
    const-string v2, "com.huawei.hicloud.photosharesdk.SETTING"

    const/4 v3, 0x0

    .line 88
    invoke-virtual {p1, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 90
    .local v1, spreferences:Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 91
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    const-string v2, "AccountInfoUtilsid"

    invoke-virtual {p0}, Lcom/huawei/hicloud/photosharesdk/settings/AuthInfo;->getSid()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 92
    const-string v2, "AccountInfoUtilsecret"

    invoke-virtual {p0}, Lcom/huawei/hicloud/photosharesdk/settings/AuthInfo;->getSecret()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 93
    const-string v2, "AccountInfoUtilclientId"

    invoke-virtual {p0}, Lcom/huawei/hicloud/photosharesdk/settings/AuthInfo;->getClientId()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 94
    const-string v2, "AccountInfoUtilphoto_num"

    invoke-virtual {p0}, Lcom/huawei/hicloud/photosharesdk/settings/AuthInfo;->getPhoto_num()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 95
    const-string v2, "AccountInfoUtilphoto_exp"

    invoke-virtual {p0}, Lcom/huawei/hicloud/photosharesdk/settings/AuthInfo;->getPhoto_exp()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 96
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 97
    return-void
.end method

.method public static writeIsLogOnToFile(ZLandroid/content/Context;)V
    .locals 4
    .parameter "isLogOn"
    .parameter "context"

    .prologue
    .line 127
    .line 128
    const-string v2, "com.huawei.hicloud.photosharesdk.SETTING"

    const/4 v3, 0x0

    .line 127
    invoke-virtual {p1, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 129
    .local v1, spreferences:Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 130
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    const-string v2, "AccountInfoUtilis_log_on"

    invoke-interface {v0, v2, p0}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 131
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 132
    return-void
.end method
