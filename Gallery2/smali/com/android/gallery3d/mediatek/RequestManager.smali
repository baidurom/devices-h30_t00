.class public Lcom/android/gallery3d/mediatek/RequestManager;
.super Ljava/lang/Object;
.source "RequestManager.java"


# static fields
.field public static final MPO_MIME_TYPE:Ljava/lang/String; = "image/mpo"

.field private static final TAG:Ljava/lang/String; = "RequestManager"

.field private static mDefaultImageRequest:Lcom/android/gallery3d/mediatek/IMediaRequest;

.field private static mRequestMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/gallery3d/mediatek/IMediaRequest;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 36
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    sput-object v0, Lcom/android/gallery3d/mediatek/RequestManager;->mRequestMap:Ljava/util/HashMap;

    .line 38
    new-instance v0, Lcom/android/gallery3d/mediatek/ImageRequest;

    invoke-direct {v0}, Lcom/android/gallery3d/mediatek/ImageRequest;-><init>()V

    sput-object v0, Lcom/android/gallery3d/mediatek/RequestManager;->mDefaultImageRequest:Lcom/android/gallery3d/mediatek/IMediaRequest;

    .line 41
    sget-object v0, Lcom/android/gallery3d/mediatek/RequestManager;->mRequestMap:Ljava/util/HashMap;

    const-string v1, "image/mpo"

    new-instance v2, Lcom/android/gallery3d/mediatek/MpoRequest;

    invoke-direct {v2}, Lcom/android/gallery3d/mediatek/MpoRequest;-><init>()V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 44
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 31
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getMediaRequest(Ljava/lang/String;)Lcom/android/gallery3d/mediatek/IMediaRequest;
    .locals 1
    .parameter "mimeType"

    .prologue
    .line 47
    const/4 v0, 0x1

    invoke-static {p0, v0}, Lcom/android/gallery3d/mediatek/RequestManager;->getMediaRequest(Ljava/lang/String;Z)Lcom/android/gallery3d/mediatek/IMediaRequest;

    move-result-object v0

    return-object v0
.end method

.method public static getMediaRequest(Ljava/lang/String;Z)Lcom/android/gallery3d/mediatek/IMediaRequest;
    .locals 5
    .parameter "mimeType"
    .parameter "allowDefault"

    .prologue
    const/4 v1, 0x0

    .line 52
    const-string v2, "RequestManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getMediaRequest(mimeType="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 53
    if-nez p0, :cond_1

    move-object v0, v1

    .line 61
    :cond_0
    :goto_0
    return-object v0

    .line 55
    :cond_1
    sget-object v2, Lcom/android/gallery3d/mediatek/RequestManager;->mRequestMap:Ljava/util/HashMap;

    invoke-virtual {v2, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/gallery3d/mediatek/IMediaRequest;

    .line 56
    .local v0, request:Lcom/android/gallery3d/mediatek/IMediaRequest;
    if-nez v0, :cond_0

    .line 59
    if-eqz p1, :cond_2

    sget-object v0, Lcom/android/gallery3d/mediatek/RequestManager;->mDefaultImageRequest:Lcom/android/gallery3d/mediatek/IMediaRequest;

    goto :goto_0

    :cond_2
    move-object v0, v1

    .line 61
    goto :goto_0
.end method
