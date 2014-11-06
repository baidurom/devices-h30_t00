.class public Lcom/android/gallery3d/data/DmsSource;
.super Lcom/android/gallery3d/data/MediaSource;
.source "DmsSource.java"


# static fields
.field private static final DMS_DEVICE:I = 0x1

.field private static final DMS_DEVICESET:I = 0x0

.field private static final DMS_IMAGE:I = 0x2

.field private static final DMS_VIDEO:I = 0x3

.field private static final TAG:Ljava/lang/String; = "AirSharing_DmsSource"


# instance fields
.field mApplication:Lcom/android/gallery3d/app/GalleryApp;

.field mDmsContext:Lcom/android/gallery3d/data/DmsContext;

.field mMatcher:Lcom/android/gallery3d/data/PathMatcher;


# direct methods
.method public constructor <init>(Lcom/android/gallery3d/app/GalleryApp;)V
    .locals 3
    .parameter "application"

    .prologue
    .line 23
    const-string v0, "dms"

    invoke-direct {p0, v0}, Lcom/android/gallery3d/data/MediaSource;-><init>(Ljava/lang/String;)V

    .line 24
    iput-object p1, p0, Lcom/android/gallery3d/data/DmsSource;->mApplication:Lcom/android/gallery3d/app/GalleryApp;

    .line 25
    new-instance v0, Lcom/android/gallery3d/data/PathMatcher;

    invoke-direct {v0}, Lcom/android/gallery3d/data/PathMatcher;-><init>()V

    iput-object v0, p0, Lcom/android/gallery3d/data/DmsSource;->mMatcher:Lcom/android/gallery3d/data/PathMatcher;

    .line 26
    iget-object v0, p0, Lcom/android/gallery3d/data/DmsSource;->mMatcher:Lcom/android/gallery3d/data/PathMatcher;

    const-string v1, "/dms"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/android/gallery3d/data/PathMatcher;->add(Ljava/lang/String;I)V

    .line 27
    iget-object v0, p0, Lcom/android/gallery3d/data/DmsSource;->mMatcher:Lcom/android/gallery3d/data/PathMatcher;

    const-string v1, "/dms/*"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/android/gallery3d/data/PathMatcher;->add(Ljava/lang/String;I)V

    .line 28
    iget-object v0, p0, Lcom/android/gallery3d/data/DmsSource;->mMatcher:Lcom/android/gallery3d/data/PathMatcher;

    const-string v1, "/dms/*/item/image/*"

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Lcom/android/gallery3d/data/PathMatcher;->add(Ljava/lang/String;I)V

    .line 29
    iget-object v0, p0, Lcom/android/gallery3d/data/DmsSource;->mMatcher:Lcom/android/gallery3d/data/PathMatcher;

    const-string v1, "/dms/*/item/video/*"

    const/4 v2, 0x3

    invoke-virtual {v0, v1, v2}, Lcom/android/gallery3d/data/PathMatcher;->add(Ljava/lang/String;I)V

    .line 30
    new-instance v0, Lcom/android/gallery3d/data/DmsContext;

    iget-object v1, p0, Lcom/android/gallery3d/data/DmsSource;->mApplication:Lcom/android/gallery3d/app/GalleryApp;

    invoke-interface {v1}, Lcom/android/gallery3d/app/GalleryApp;->getAndroidContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/gallery3d/data/DmsContext;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/gallery3d/data/DmsSource;->mDmsContext:Lcom/android/gallery3d/data/DmsContext;

    .line 31
    return-void
.end method

.method public static isDmsPath(Ljava/lang/String;)Z
    .locals 2
    .parameter "s"

    .prologue
    .line 69
    if-eqz p0, :cond_0

    invoke-static {p0}, Lcom/android/gallery3d/data/Path;->fromString(Ljava/lang/String;)Lcom/android/gallery3d/data/Path;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/gallery3d/data/Path;->getPrefix()Ljava/lang/String;

    move-result-object v0

    const-string v1, "dms"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public createMediaObject(Lcom/android/gallery3d/data/Path;)Lcom/android/gallery3d/data/MediaObject;
    .locals 6
    .parameter "path"

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 35
    iget-object v0, p0, Lcom/android/gallery3d/data/DmsSource;->mMatcher:Lcom/android/gallery3d/data/PathMatcher;

    invoke-virtual {v0, p1}, Lcom/android/gallery3d/data/PathMatcher;->match(Lcom/android/gallery3d/data/Path;)I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 54
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "bad path: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 37
    :pswitch_0
    new-instance v0, Lcom/android/gallery3d/data/DmsDeviceSet;

    iget-object v1, p0, Lcom/android/gallery3d/data/DmsSource;->mApplication:Lcom/android/gallery3d/app/GalleryApp;

    iget-object v2, p0, Lcom/android/gallery3d/data/DmsSource;->mDmsContext:Lcom/android/gallery3d/data/DmsContext;

    invoke-direct {v0, p1, v1, v2}, Lcom/android/gallery3d/data/DmsDeviceSet;-><init>(Lcom/android/gallery3d/data/Path;Lcom/android/gallery3d/app/GalleryApp;Lcom/android/gallery3d/data/DmsContext;)V

    .line 51
    :goto_0
    return-object v0

    .line 40
    :pswitch_1
    iget-object v0, p0, Lcom/android/gallery3d/data/DmsSource;->mMatcher:Lcom/android/gallery3d/data/PathMatcher;

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/data/PathMatcher;->getIntVar(I)I

    move-result v3

    .line 41
    .local v3, deviceId:I
    new-instance v0, Lcom/android/gallery3d/data/DmsDevice;

    iget-object v1, p0, Lcom/android/gallery3d/data/DmsSource;->mApplication:Lcom/android/gallery3d/app/GalleryApp;

    iget-object v2, p0, Lcom/android/gallery3d/data/DmsSource;->mDmsContext:Lcom/android/gallery3d/data/DmsContext;

    invoke-direct {v0, p1, v1, v3, v2}, Lcom/android/gallery3d/data/DmsDevice;-><init>(Lcom/android/gallery3d/data/Path;Lcom/android/gallery3d/app/GalleryApp;ILcom/android/gallery3d/data/DmsContext;)V

    goto :goto_0

    .line 44
    .end local v3           #deviceId:I
    :pswitch_2
    iget-object v0, p0, Lcom/android/gallery3d/data/DmsSource;->mMatcher:Lcom/android/gallery3d/data/PathMatcher;

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/data/PathMatcher;->getIntVar(I)I

    move-result v3

    .line 45
    .restart local v3       #deviceId:I
    iget-object v0, p0, Lcom/android/gallery3d/data/DmsSource;->mMatcher:Lcom/android/gallery3d/data/PathMatcher;

    invoke-virtual {v0, v2}, Lcom/android/gallery3d/data/PathMatcher;->getVar(I)Ljava/lang/String;

    move-result-object v4

    .line 46
    .local v4, objectId:Ljava/lang/String;
    new-instance v0, Lcom/android/gallery3d/data/DmsImage;

    iget-object v2, p0, Lcom/android/gallery3d/data/DmsSource;->mApplication:Lcom/android/gallery3d/app/GalleryApp;

    iget-object v5, p0, Lcom/android/gallery3d/data/DmsSource;->mDmsContext:Lcom/android/gallery3d/data/DmsContext;

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lcom/android/gallery3d/data/DmsImage;-><init>(Lcom/android/gallery3d/data/Path;Lcom/android/gallery3d/app/GalleryApp;ILjava/lang/String;Lcom/android/gallery3d/data/DmsContext;)V

    goto :goto_0

    .line 49
    .end local v3           #deviceId:I
    .end local v4           #objectId:Ljava/lang/String;
    :pswitch_3
    iget-object v0, p0, Lcom/android/gallery3d/data/DmsSource;->mMatcher:Lcom/android/gallery3d/data/PathMatcher;

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/data/PathMatcher;->getIntVar(I)I

    move-result v3

    .line 50
    .restart local v3       #deviceId:I
    iget-object v0, p0, Lcom/android/gallery3d/data/DmsSource;->mMatcher:Lcom/android/gallery3d/data/PathMatcher;

    invoke-virtual {v0, v2}, Lcom/android/gallery3d/data/PathMatcher;->getVar(I)Ljava/lang/String;

    move-result-object v4

    .line 51
    .restart local v4       #objectId:Ljava/lang/String;
    new-instance v0, Lcom/android/gallery3d/data/DmsVideo;

    iget-object v2, p0, Lcom/android/gallery3d/data/DmsSource;->mApplication:Lcom/android/gallery3d/app/GalleryApp;

    iget-object v5, p0, Lcom/android/gallery3d/data/DmsSource;->mDmsContext:Lcom/android/gallery3d/data/DmsContext;

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lcom/android/gallery3d/data/DmsVideo;-><init>(Lcom/android/gallery3d/data/Path;Lcom/android/gallery3d/app/GalleryApp;ILjava/lang/String;Lcom/android/gallery3d/data/DmsContext;)V

    goto :goto_0

    .line 35
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public pause()V
    .locals 1

    .prologue
    .line 60
    iget-object v0, p0, Lcom/android/gallery3d/data/DmsSource;->mDmsContext:Lcom/android/gallery3d/data/DmsContext;

    invoke-virtual {v0}, Lcom/android/gallery3d/data/DmsContext;->pause()V

    .line 61
    return-void
.end method

.method public resume()V
    .locals 1

    .prologue
    .line 65
    iget-object v0, p0, Lcom/android/gallery3d/data/DmsSource;->mDmsContext:Lcom/android/gallery3d/data/DmsContext;

    invoke-virtual {v0}, Lcom/android/gallery3d/data/DmsContext;->resume()V

    .line 66
    return-void
.end method
