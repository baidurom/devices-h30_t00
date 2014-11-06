.class public Lcom/huawei/hicloud/photosharesdk/helper/Util$SDPath;
.super Ljava/lang/Object;
.source "Util.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/huawei/hicloud/photosharesdk/helper/Util;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SDPath"
.end annotation


# static fields
.field private static external:Ljava/lang/String;

.field private static internal:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 44
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getExternal()Ljava/lang/String;
    .locals 1

    .prologue
    .line 59
    sget-object v0, Lcom/huawei/hicloud/photosharesdk/helper/Util$SDPath;->external:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 60
    invoke-static {}, Lcom/huawei/hicloud/photosharesdk/helper/Util;->getExternalStoragePath()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/huawei/hicloud/photosharesdk/helper/Util$SDPath;->external:Ljava/lang/String;

    .line 61
    :cond_0
    sget-object v0, Lcom/huawei/hicloud/photosharesdk/helper/Util$SDPath;->external:Ljava/lang/String;

    return-object v0
.end method

.method public static getInternal()Ljava/lang/String;
    .locals 1

    .prologue
    .line 52
    sget-object v0, Lcom/huawei/hicloud/photosharesdk/helper/Util$SDPath;->internal:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 53
    invoke-static {}, Lcom/huawei/hicloud/photosharesdk/helper/Util;->getInternalStoragePath()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/huawei/hicloud/photosharesdk/helper/Util$SDPath;->internal:Ljava/lang/String;

    .line 54
    :cond_0
    sget-object v0, Lcom/huawei/hicloud/photosharesdk/helper/Util$SDPath;->internal:Ljava/lang/String;

    return-object v0
.end method
