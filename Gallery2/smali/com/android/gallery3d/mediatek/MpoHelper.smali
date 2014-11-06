.class public Lcom/android/gallery3d/mediatek/MpoHelper;
.super Ljava/lang/Object;
.source "MpoHelper.java"


# static fields
.field public static final EXCLUDE_MPO_MAV:I = 0x10000

.field public static final FILE_EXTENSION:Ljava/lang/String; = "mpo"

.field public static final MIME_TYPE:Ljava/lang/String; = "image/mpo"

.field public static final MPO_EXTENSION:Ljava/lang/String; = "mpo"

.field public static final MPO_MIME_TYPE:Ljava/lang/String; = "image/mpo"

.field public static final MPO_VIEW_ACTION:Ljava/lang/String; = "com.mediatek.action.VIEW_MPO"

.field private static final TAG:Ljava/lang/String; = "MpoHelper"

.field private static sMavOverlay:Landroid/graphics/drawable/Drawable;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 57
    const/4 v0, 0x0

    sput-object v0, Lcom/android/gallery3d/mediatek/MpoHelper;->sMavOverlay:Landroid/graphics/drawable/Drawable;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 46
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static createMpoDecoder(Lcom/android/gallery3d/util/ThreadPool$JobContext;Landroid/content/ContentResolver;Landroid/net/Uri;)Lcom/mediatek/common/mpodecoder/IMpoDecoder;
    .locals 6
    .parameter "jc"
    .parameter "cr"
    .parameter "uri"

    .prologue
    const/4 v2, 0x0

    .line 75
    :try_start_0
    const-string v1, "MpoHelper"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "createMpoDecoder:uri:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 76
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    :cond_0
    move-object v1, v2

    .line 81
    :goto_0
    return-object v1

    .line 77
    :cond_1
    const-class v1, Lcom/mediatek/common/mpodecoder/IMpoDecoder;

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    const-string v5, "decodeUri"

    aput-object v5, v3, v4

    const/4 v4, 0x1

    aput-object p1, v3, v4

    const/4 v4, 0x2

    aput-object p2, v3, v4

    invoke-static {v1, v3}, Lcom/mediatek/common/MediatekClassFactory;->createInstance(Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mediatek/common/mpodecoder/IMpoDecoder;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 79
    :catch_0
    move-exception v0

    .line 80
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    move-object v1, v2

    .line 81
    goto :goto_0
.end method

.method public static createMpoDecoder(Lcom/android/gallery3d/util/ThreadPool$JobContext;Ljava/lang/String;)Lcom/mediatek/common/mpodecoder/IMpoDecoder;
    .locals 6
    .parameter "jc"
    .parameter "filePath"

    .prologue
    const/4 v2, 0x0

    .line 62
    :try_start_0
    const-string v1, "MpoHelper"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "createMpoDecoder:filepath:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 63
    if-nez p1, :cond_0

    move-object v1, v2

    .line 68
    :goto_0
    return-object v1

    .line 64
    :cond_0
    const-class v1, Lcom/mediatek/common/mpodecoder/IMpoDecoder;

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    const-string v5, "decodeFile"

    aput-object v5, v3, v4

    const/4 v4, 0x1

    aput-object p1, v3, v4

    invoke-static {v1, v3}, Lcom/mediatek/common/MediatekClassFactory;->createInstance(Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mediatek/common/mpodecoder/IMpoDecoder;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 66
    :catch_0
    move-exception v0

    .line 67
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    move-object v1, v2

    .line 68
    goto :goto_0
.end method

.method public static getInclusionFromData(Landroid/os/Bundle;)I
    .locals 1
    .parameter "data"

    .prologue
    .line 206
    const/high16 v0, 0x1

    return v0
.end method

.method public static getMavWhereClause(I)Ljava/lang/String;
    .locals 2
    .parameter "mavInclusion"

    .prologue
    .line 210
    const/4 v0, 0x0

    .line 211
    .local v0, whereClause:Ljava/lang/String;
    const/high16 v1, 0x1

    and-int/2addr v1, p0

    if-eqz v1, :cond_0

    .line 212
    const-string v0, "mpo_type!=131075"

    .line 214
    :cond_0
    return-object v0
.end method

.method public static getMpoWhereClause(Z)Ljava/lang/String;
    .locals 1
    .parameter "showAllMpo"

    .prologue
    .line 86
    const/4 v0, 0x0

    .line 87
    .local v0, mpoFilter:Ljava/lang/String;
    if-nez p0, :cond_0

    .line 88
    const-string v0, "mime_type!=\'image/mpo\'"

    .line 90
    :cond_0
    return-object v0
.end method

.method public static playMpo(Landroid/app/Activity;Landroid/net/Uri;)V
    .locals 4
    .parameter "activity"
    .parameter "uri"

    .prologue
    .line 172
    :try_start_0
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.mediatek.action.VIEW_MPO"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 173
    .local v1, i:Landroid/content/Intent;
    const-string v2, "image/mpo"

    invoke-virtual {v1, p1, v2}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 174
    invoke-virtual {p0, v1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 178
    .end local v1           #i:Landroid/content/Intent;
    :goto_0
    return-void

    .line 175
    :catch_0
    move-exception v0

    .line 176
    .local v0, e:Landroid/content/ActivityNotFoundException;
    const-string v2, "MpoHelper"

    const-string v3, "Unable to open mpo file: "

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method
