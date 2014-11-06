.class public Lcom/huawei/hicloud/photosharesdk/helper/SharedPreferenceUtil$TimeLineUtil;
.super Ljava/lang/Object;
.source "SharedPreferenceUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/huawei/hicloud/photosharesdk/helper/SharedPreferenceUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TimeLineUtil"
.end annotation


# static fields
.field private static final DbankOffset:Ljava/lang/String; = "TimeLineUtiloffset"

.field private static final TAG:Ljava/lang/String; = "TimeLineUtil"

.field private static final TimeLine:Ljava/lang/String; = "TimeLineUtilTimeLine"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 345
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static readDbankOffsetFromFile(Landroid/content/Context;)J
    .locals 4
    .parameter "context"

    .prologue
    .line 363
    .line 364
    const-string v1, "com.huawei.hicloud.photosharesdk.SETTING"

    const/4 v2, 0x0

    .line 363
    invoke-virtual {p0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 365
    .local v0, spreferences:Landroid/content/SharedPreferences;
    const-string v1, "TimeLineUtiloffset"

    const-wide/16 v2, 0x0

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v1

    return-wide v1
.end method

.method public static readTimeLineFromFile(Landroid/content/Context;)J
    .locals 4
    .parameter "context"

    .prologue
    .line 351
    .line 352
    const-string v1, "com.huawei.hicloud.photosharesdk.SETTING"

    const/4 v2, 0x0

    .line 351
    invoke-virtual {p0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 353
    .local v0, spreferences:Landroid/content/SharedPreferences;
    const-string v1, "TimeLineUtilTimeLine"

    const-wide/16 v2, 0x0

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v1

    return-wide v1
.end method

.method public static writeDbankOffsetToFile(Landroid/content/Context;J)V
    .locals 3
    .parameter "context"
    .parameter "dbankOffset"

    .prologue
    .line 369
    .line 370
    const-string v1, "com.huawei.hicloud.photosharesdk.SETTING"

    const/4 v2, 0x0

    .line 369
    invoke-virtual {p0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 371
    .local v0, spreferences:Landroid/content/SharedPreferences;
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "TimeLineUtiloffset"

    invoke-interface {v1, v2, p1, p2}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 372
    return-void
.end method

.method public static writeTimeLineToFile(Landroid/content/Context;J)V
    .locals 3
    .parameter "context"
    .parameter "timeLine"

    .prologue
    .line 357
    .line 358
    const-string v1, "com.huawei.hicloud.photosharesdk.SETTING"

    const/4 v2, 0x0

    .line 357
    invoke-virtual {p0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 359
    .local v0, spreferences:Landroid/content/SharedPreferences;
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "TimeLineUtilTimeLine"

    invoke-interface {v1, v2, p1, p2}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 360
    return-void
.end method
