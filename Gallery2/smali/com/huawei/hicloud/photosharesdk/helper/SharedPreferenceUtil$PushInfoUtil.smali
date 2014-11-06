.class public Lcom/huawei/hicloud/photosharesdk/helper/SharedPreferenceUtil$PushInfoUtil;
.super Ljava/lang/Object;
.source "SharedPreferenceUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/huawei/hicloud/photosharesdk/helper/SharedPreferenceUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PushInfoUtil"
.end annotation


# static fields
.field private static final Flag:Ljava/lang/String; = "PushInfoUtilFlag"

.field private static final TAG:Ljava/lang/String; = "PushInfoUtil"

.field private static final Token:Ljava/lang/String; = "PushInfoUtilToken"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 375
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getFlagFromFile(Landroid/content/Context;)Z
    .locals 3
    .parameter "context"

    .prologue
    const/4 v2, 0x0

    .line 406
    const-string v1, "com.huawei.hicloud.photosharesdk.SETTING"

    invoke-virtual {p0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 407
    .local v0, spreferences:Landroid/content/SharedPreferences;
    const-string v1, "PushInfoUtilFlag"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    return v1
.end method

.method public static getTokenFromFile(Landroid/content/Context;)Ljava/lang/String;
    .locals 3
    .parameter "context"

    .prologue
    .line 393
    .line 394
    const-string v1, "com.huawei.hicloud.photosharesdk.SETTING"

    const/4 v2, 0x0

    .line 393
    invoke-virtual {p0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 395
    .local v0, spreferences:Landroid/content/SharedPreferences;
    const-string v1, "PushInfoUtilToken"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static readTokenFromFile(Landroid/content/Context;)Ljava/lang/String;
    .locals 3
    .parameter "context"

    .prologue
    .line 381
    .line 382
    const-string v1, "com.huawei.hicloud.photosharesdk.SETTING"

    const/4 v2, 0x0

    .line 381
    invoke-virtual {p0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 383
    .local v0, spreferences:Landroid/content/SharedPreferences;
    const-string v1, "PushInfoUtilToken"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static removeTokenFromFile(Landroid/content/Context;)V
    .locals 4
    .parameter "context"

    .prologue
    .line 411
    .line 412
    const-string v2, "com.huawei.hicloud.photosharesdk.SETTING"

    const/4 v3, 0x0

    .line 411
    invoke-virtual {p0, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 413
    .local v1, spreferences:Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 414
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    const-string v2, "PushInfoUtilToken"

    invoke-interface {v0, v2}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 415
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 416
    return-void
.end method

.method public static writeFlagToFile(Landroid/content/Context;Z)V
    .locals 3
    .parameter "context"
    .parameter "flag"

    .prologue
    .line 400
    const-string v1, "com.huawei.hicloud.photosharesdk.SETTING"

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 401
    .local v0, spreferences:Landroid/content/SharedPreferences;
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "PushInfoUtilFlag"

    invoke-interface {v1, v2, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 402
    return-void
.end method

.method public static writeTokenToFile(Landroid/content/Context;Ljava/lang/String;)V
    .locals 3
    .parameter "context"
    .parameter "token"

    .prologue
    .line 387
    .line 388
    const-string v1, "com.huawei.hicloud.photosharesdk.SETTING"

    const/4 v2, 0x0

    .line 387
    invoke-virtual {p0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 389
    .local v0, spreferences:Landroid/content/SharedPreferences;
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "PushInfoUtilToken"

    invoke-interface {v1, v2, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 390
    return-void
.end method
