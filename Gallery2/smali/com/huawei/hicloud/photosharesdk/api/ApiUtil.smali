.class Lcom/huawei/hicloud/photosharesdk/api/ApiUtil;
.super Ljava/lang/Object;
.source "ApiUtil.java"


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 29
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static isAuth(Landroid/content/Context;)Z
    .locals 4
    .parameter "context"

    .prologue
    .line 38
    const/4 v2, 0x1

    .line 39
    .local v2, ret:Z
    invoke-static {p0}, Lcom/huawei/hicloud/photosharesdk/helper/SharedPreferenceUtil$AccountInfoUtil;->readIsLogOnFromFile(Landroid/content/Context;)Z

    move-result v1

    .line 40
    .local v1, isLogOn:Z
    if-nez v1, :cond_1

    .line 41
    const/4 v2, 0x0

    .line 48
    :cond_0
    :goto_0
    return v2

    .line 43
    :cond_1
    invoke-static {p0}, Lcom/huawei/hicloud/photosharesdk/settings/AccountHelper;->getAuthInfo(Landroid/content/Context;)Lcom/huawei/hicloud/photosharesdk/settings/AuthInfo;

    move-result-object v0

    .line 44
    .local v0, authInfo:Lcom/huawei/hicloud/photosharesdk/settings/AuthInfo;
    invoke-virtual {v0}, Lcom/huawei/hicloud/photosharesdk/settings/AuthInfo;->getSecret()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_0

    .line 45
    const/4 v2, 0x0

    goto :goto_0
.end method
