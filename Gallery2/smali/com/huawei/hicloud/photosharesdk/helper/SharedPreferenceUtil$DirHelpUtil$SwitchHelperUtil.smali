.class public Lcom/huawei/hicloud/photosharesdk/helper/SharedPreferenceUtil$DirHelpUtil$SwitchHelperUtil;
.super Ljava/lang/Object;
.source "SharedPreferenceUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/huawei/hicloud/photosharesdk/helper/SharedPreferenceUtil$DirHelpUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SwitchHelperUtil"
.end annotation


# static fields
.field private static final IS_3G_ALLOW_ON:Ljava/lang/String; = "SwitchHelperUtilis3GAllowOn"

.field private static final IS_BIG_PHOTO_DOWNLOAD:Ljava/lang/String; = "SwitchHelperUtilisBigPhotoAutoDownload"

.field private static final IS_PHOTO_STREAM_ON:Ljava/lang/String; = "SwitchHelperUtilisPhotoStreamOn"

.field private static final IS_SHARE_PHOTO_ON:Ljava/lang/String; = "SwitchHelperUtilisSharePhotoOn"

.field private static final IS_SWITCHREC_ON:Ljava/lang/String; = "SwitchHelperUtilisSwitchRecOn"

.field private static final IS_TIMER_ON:Ljava/lang/String; = "SwitchHelperUtilisTimerOn"

.field private static final PERIOD:Ljava/lang/String; = "SwitchHelperUtilperiod"

.field private static final TAG:Ljava/lang/String; = "SwitchHelperUtil"

.field private static final USER_AGENT:Ljava/lang/String; = "SwitchHelperUtiluser_agent"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 241
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static clearSwitchInfoInFile(Landroid/content/Context;)V
    .locals 4
    .parameter "context"

    .prologue
    .line 319
    .line 320
    const-string v2, "com.huawei.hicloud.photosharesdk.SETTING"

    const/4 v3, 0x0

    .line 319
    invoke-virtual {p0, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 321
    .local v1, spreferences:Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 322
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    const-string v2, "SwitchHelperUtilisPhotoStreamOn"

    invoke-interface {v0, v2}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 323
    const-string v2, "SwitchHelperUtilisSharePhotoOn"

    invoke-interface {v0, v2}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 324
    const-string v2, "SwitchHelperUtilis3GAllowOn"

    invoke-interface {v0, v2}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 325
    const-string v2, "SwitchHelperUtilisTimerOn"

    invoke-interface {v0, v2}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 326
    const-string v2, "SwitchHelperUtilperiod"

    invoke-interface {v0, v2}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 327
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 328
    return-void
.end method

.method public static readSwitchInfoFromFile(Landroid/content/Context;)Lcom/huawei/hicloud/photosharesdk/settings/SwitchInfo;
    .locals 6
    .parameter "context"

    .prologue
    const/4 v5, 0x1

    const/4 v3, 0x0

    .line 255
    new-instance v1, Lcom/huawei/hicloud/photosharesdk/settings/SwitchInfo;

    invoke-direct {v1}, Lcom/huawei/hicloud/photosharesdk/settings/SwitchInfo;-><init>()V

    .line 257
    .local v1, switchInfo:Lcom/huawei/hicloud/photosharesdk/settings/SwitchInfo;
    const-string v2, "com.huawei.hicloud.photosharesdk.SETTING"

    .line 256
    invoke-virtual {p0, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 259
    .local v0, spreferences:Landroid/content/SharedPreferences;
    const-string v2, "SwitchHelperUtilisPhotoStreamOn"

    .line 258
    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    invoke-virtual {v1, v2}, Lcom/huawei/hicloud/photosharesdk/settings/SwitchInfo;->setPhotoStreamSwitch(Z)V

    .line 261
    const-string v2, "SwitchHelperUtilisSharePhotoOn"

    .line 260
    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    invoke-virtual {v1, v2}, Lcom/huawei/hicloud/photosharesdk/settings/SwitchInfo;->setSharePhotoSwitch(Z)V

    .line 263
    const-string v2, "SwitchHelperUtilis3GAllowOn"

    .line 262
    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    invoke-virtual {v1, v2}, Lcom/huawei/hicloud/photosharesdk/settings/SwitchInfo;->set3GAllowSwitch(Z)V

    .line 264
    const-string v2, "SwitchHelperUtilisTimerOn"

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    invoke-virtual {v1, v2}, Lcom/huawei/hicloud/photosharesdk/settings/SwitchInfo;->setTimerSwitch(Z)V

    .line 266
    const-string v2, "SwitchHelperUtilperiod"

    const-wide/16 v3, 0x0

    invoke-interface {v0, v2, v3, v4}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/huawei/hicloud/photosharesdk/settings/SwitchInfo;->setPeriod(J)V

    .line 267
    const-string v2, "SwitchHelperUtilisSwitchRecOn"

    invoke-interface {v0, v2, v5}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    invoke-virtual {v1, v2}, Lcom/huawei/hicloud/photosharesdk/settings/SwitchInfo;->setSwitchRecOn(Z)V

    .line 269
    const-string v2, "SwitchHelperUtiluser_agent"

    .line 270
    const/4 v3, 0x0

    .line 269
    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/huawei/hicloud/photosharesdk/settings/SwitchInfo;->setUserAgent(Ljava/lang/String;)V

    .line 271
    const-string v2, "SwitchHelperUtilisBigPhotoAutoDownload"

    invoke-interface {v0, v2, v5}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    invoke-virtual {v1, v2}, Lcom/huawei/hicloud/photosharesdk/settings/SwitchInfo;->setBigPhotoDownload(Z)V

    .line 273
    return-object v1
.end method

.method public static write3GAllowSwitchToFile(Ljava/lang/Boolean;Landroid/content/Context;)V
    .locals 4
    .parameter "b"
    .parameter "context"

    .prologue
    .line 311
    .line 312
    const-string v2, "com.huawei.hicloud.photosharesdk.SETTING"

    const/4 v3, 0x0

    .line 311
    invoke-virtual {p1, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 313
    .local v1, spreferences:Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 314
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    const-string v2, "SwitchHelperUtilis3GAllowOn"

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 315
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 316
    return-void
.end method

.method public static writePhotoShareSwitchToFile(Ljava/lang/Boolean;Landroid/content/Context;)V
    .locals 4
    .parameter "b"
    .parameter "context"

    .prologue
    .line 302
    .line 303
    const-string v2, "com.huawei.hicloud.photosharesdk.SETTING"

    const/4 v3, 0x0

    .line 302
    invoke-virtual {p1, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 304
    .local v1, spreferences:Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 305
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    const-string v2, "SwitchHelperUtilisSharePhotoOn"

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 306
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 307
    return-void
.end method

.method public static writePhotoStreamSwitchToFile(Ljava/lang/Boolean;Landroid/content/Context;)V
    .locals 4
    .parameter "b"
    .parameter "context"

    .prologue
    .line 293
    .line 294
    const-string v2, "com.huawei.hicloud.photosharesdk.SETTING"

    const/4 v3, 0x0

    .line 293
    invoke-virtual {p1, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 295
    .local v1, spreferences:Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 296
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    const-string v2, "SwitchHelperUtilisPhotoStreamOn"

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 297
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 298
    return-void
.end method

.method public static writeSwitchInfoRecToFile(ZLjava/lang/String;Landroid/content/Context;Z)V
    .locals 4
    .parameter "isSwitchRecOn"
    .parameter "userAgent"
    .parameter "context"
    .parameter "isBigPhotoAutoDownload"

    .prologue
    .line 334
    .line 335
    const-string v2, "com.huawei.hicloud.photosharesdk.SETTING"

    const/4 v3, 0x0

    .line 334
    invoke-virtual {p2, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 336
    .local v1, spreferences:Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 337
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    const-string v2, "SwitchHelperUtilisSwitchRecOn"

    invoke-interface {v0, v2, p0}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 338
    const-string v2, "SwitchHelperUtiluser_agent"

    invoke-interface {v0, v2, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 339
    const-string v2, "SwitchHelperUtilisBigPhotoAutoDownload"

    invoke-interface {v0, v2, p3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 340
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 341
    return-void
.end method

.method public static writeSwitchInfoToFile(Lcom/huawei/hicloud/photosharesdk/settings/SwitchInfo;Landroid/content/Context;)V
    .locals 5
    .parameter "switchInfo"
    .parameter "context"

    .prologue
    .line 278
    .line 279
    const-string v2, "com.huawei.hicloud.photosharesdk.SETTING"

    const/4 v3, 0x0

    .line 278
    invoke-virtual {p1, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 280
    .local v1, spreferences:Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 281
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    const-string v2, "SwitchHelperUtilisPhotoStreamOn"

    .line 282
    invoke-virtual {p0}, Lcom/huawei/hicloud/photosharesdk/settings/SwitchInfo;->getPhotoStreamSwitch()Z

    move-result v3

    .line 281
    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 283
    const-string v2, "SwitchHelperUtilisSharePhotoOn"

    .line 284
    invoke-virtual {p0}, Lcom/huawei/hicloud/photosharesdk/settings/SwitchInfo;->getSharePhotoSwitch()Z

    move-result v3

    .line 283
    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 285
    const-string v2, "SwitchHelperUtilis3GAllowOn"

    invoke-virtual {p0}, Lcom/huawei/hicloud/photosharesdk/settings/SwitchInfo;->get3GAllowSwitch()Z

    move-result v3

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 286
    const-string v2, "SwitchHelperUtilisTimerOn"

    invoke-virtual {p0}, Lcom/huawei/hicloud/photosharesdk/settings/SwitchInfo;->getTimerSwitch()Z

    move-result v3

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 287
    const-string v2, "SwitchHelperUtilperiod"

    invoke-virtual {p0}, Lcom/huawei/hicloud/photosharesdk/settings/SwitchInfo;->getPeriod()J

    move-result-wide v3

    invoke-interface {v0, v2, v3, v4}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 288
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 289
    return-void
.end method
