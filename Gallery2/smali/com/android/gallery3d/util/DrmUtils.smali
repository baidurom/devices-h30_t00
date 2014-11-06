.class public Lcom/android/gallery3d/util/DrmUtils;
.super Ljava/lang/Object;
.source "DrmUtils.java"


# static fields
.field public static final COMBINED_DELIVERY:I = 0x6

#the value of this static final field might be set in the static constructor
.field private static final DRM_ENABLED:Z = false

.field public static final FORWARD_LOCK:I = 0x5

.field private static final IS_AUTO_USE:Ljava/lang/String; = "is_auto_use"

.field public static final SEPARATE_DELIVERY:I = 0x7

.field public static final SEPARATE_DELIVERY_SF:I = 0x8

.field public static final UNKNOWN:I = 0x4

.field private static sDrmManagerClient:Landroid/drm/DrmManagerClient;

.field private static sField:Ljava/lang/reflect/Field;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 37
    const-string v0, "ro.huawei.cust.oma_drm"

    const/4 v1, 0x1

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/android/gallery3d/util/DrmUtils;->DRM_ENABLED:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 34
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static canForward(Ljava/lang/String;)Z
    .locals 2
    .parameter "path"

    .prologue
    .line 108
    invoke-static {p0}, Lcom/android/gallery3d/util/DrmUtils;->getObjectType(Ljava/lang/String;)I

    move-result v0

    const/4 v1, 0x7

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static getObjectType(Ljava/lang/String;)I
    .locals 2
    .parameter "path"

    .prologue
    .line 98
    :try_start_0
    sget-object v0, Lcom/android/gallery3d/util/DrmUtils;->sDrmManagerClient:Landroid/drm/DrmManagerClient;

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Landroid/drm/DrmManagerClient;->canHandle(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 99
    sget-object v0, Lcom/android/gallery3d/util/DrmUtils;->sDrmManagerClient:Landroid/drm/DrmManagerClient;

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Landroid/drm/DrmManagerClient;->getDrmObjectType(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 104
    :goto_0
    return v0

    .line 101
    :catch_0
    move-exception v0

    .line 104
    :cond_0
    const/4 v0, 0x4

    goto :goto_0
.end method

.method public static getPlaceHolder(Landroid/content/res/Resources;)Landroid/graphics/Bitmap;
    .locals 1
    .parameter "resources"

    .prologue
    .line 112
    const v0, 0x7f0200af

    invoke-static {p0, v0}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public static haveCountConstraints(Ljava/lang/String;I)Z
    .locals 4
    .parameter "path"
    .parameter "action"

    .prologue
    const/4 v1, 0x1

    .line 86
    :try_start_0
    sget-object v2, Lcom/android/gallery3d/util/DrmUtils;->sDrmManagerClient:Landroid/drm/DrmManagerClient;

    const/4 v3, 0x0

    invoke-virtual {v2, p0, v3}, Landroid/drm/DrmManagerClient;->canHandle(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 87
    sget-object v2, Lcom/android/gallery3d/util/DrmUtils;->sDrmManagerClient:Landroid/drm/DrmManagerClient;

    invoke-virtual {v2, p0, p1}, Landroid/drm/DrmManagerClient;->getConstraints(Ljava/lang/String;I)Landroid/content/ContentValues;

    move-result-object v0

    .line 88
    .local v0, constraints:Landroid/content/ContentValues;
    const-string v2, "is_auto_use"

    invoke-virtual {v0, v2}, Landroid/content/ContentValues;->getAsBoolean(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    if-nez v2, :cond_1

    .line 93
    .end local v0           #constraints:Landroid/content/ContentValues;
    :cond_0
    :goto_0
    return v1

    .line 88
    .restart local v0       #constraints:Landroid/content/ContentValues;
    :cond_1
    const/4 v1, 0x0

    goto :goto_0

    .line 90
    .end local v0           #constraints:Landroid/content/ContentValues;
    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method public static haveRightsForAction(Ljava/lang/String;I)Z
    .locals 4
    .parameter "path"
    .parameter "action"

    .prologue
    const/4 v1, 0x0

    .line 74
    :try_start_0
    sget-object v2, Lcom/android/gallery3d/util/DrmUtils;->sDrmManagerClient:Landroid/drm/DrmManagerClient;

    const/4 v3, 0x0

    invoke-virtual {v2, p0, v3}, Landroid/drm/DrmManagerClient;->canHandle(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 75
    sget-object v2, Lcom/android/gallery3d/util/DrmUtils;->sDrmManagerClient:Landroid/drm/DrmManagerClient;

    invoke-virtual {v2, p0, p1}, Landroid/drm/DrmManagerClient;->checkRightsStatus(Ljava/lang/String;I)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 76
    .local v0, check:I
    if-nez v0, :cond_0

    const/4 v1, 0x1

    .line 81
    .end local v0           #check:I
    :cond_0
    :goto_0
    return v1

    .line 78
    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method public static inPreviewMode(Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/BitmapFactory$Options;
    .locals 3
    .parameter "options"

    .prologue
    .line 60
    :try_start_0
    sget-object v1, Lcom/android/gallery3d/util/DrmUtils;->sField:Ljava/lang/reflect/Field;

    if-nez v1, :cond_0

    .line 61
    const-class v1, Landroid/graphics/BitmapFactory$Options;

    const-string v2, "inThumbnailMode"

    invoke-virtual {v1, v2}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    sput-object v1, Lcom/android/gallery3d/util/DrmUtils;->sField:Ljava/lang/reflect/Field;

    .line 63
    :cond_0
    sget-object v1, Lcom/android/gallery3d/util/DrmUtils;->sField:Ljava/lang/reflect/Field;

    if-eqz v1, :cond_1

    if-eqz p0, :cond_1

    .line 64
    sget-object v1, Lcom/android/gallery3d/util/DrmUtils;->sField:Ljava/lang/reflect/Field;

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1, p0, v2}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 69
    :cond_1
    :goto_0
    return-object p0

    .line 66
    :catch_0
    move-exception v0

    .line 67
    .local v0, e:Ljava/lang/Exception;
    const-string v1, "DRM"

    const-string v2, "Fail to set options"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public static initialize(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 50
    new-instance v0, Landroid/drm/DrmManagerClient;

    invoke-direct {v0, p0}, Landroid/drm/DrmManagerClient;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/android/gallery3d/util/DrmUtils;->sDrmManagerClient:Landroid/drm/DrmManagerClient;

    .line 51
    return-void
.end method

.method public static isDrmFile(Ljava/lang/String;)Z
    .locals 6
    .parameter "path"

    .prologue
    const/4 v1, 0x1

    const/4 v4, 0x0

    .line 54
    sget-boolean v0, Lcom/android/gallery3d/util/DrmUtils;->DRM_ENABLED:Z

    if-eqz v0, :cond_0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v2, v0, -0x4

    const-string v3, ".dcf"

    const/4 v5, 0x4

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Ljava/lang/String;->regionMatches(ZILjava/lang/String;II)Z

    move-result v0

    if-eqz v0, :cond_0

    :goto_0
    return v1

    :cond_0
    move v1, v4

    goto :goto_0
.end method
