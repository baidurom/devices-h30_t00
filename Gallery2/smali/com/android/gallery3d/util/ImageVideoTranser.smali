.class public Lcom/android/gallery3d/util/ImageVideoTranser;
.super Ljava/lang/Object;
.source "ImageVideoTranser.java"


# static fields
.field private static final AUDIO_VOLUMN:I = 0x32

.field private static final BUFFER_SIZE:I = 0x8000

.field private static final CACHE_FILE_NAME:[Ljava/lang/String; = null

.field private static final DUCK_THRESHOLD:I = 0x19

.field private static final DUCK_TRACK_VOLUME:I = 0x41

.field public static final KEY_CONTAIN_VOICEIMAGE:Ljava/lang/String; = "KEY_CONTAIN_VOICEIMAGE"

.field public static final KEY_PATH_ARRAY:Ljava/lang/String; = "KEY_PATH_ARRAY"

.field private static final LOG_TAG:Ljava/lang/String; = null

.field private static final MAX_PIXELS:I = 0x70800

.field private static final MAX_VOICE_DURATION:I = 0x2af8

.field private static final TMP_AUDIO_FILE:Ljava/lang/String; = "tmp.amr"

.field private static final TMP_AUDIO_TRACK_NAME:Ljava/lang/String; = "asere213"

.field private static final TMP_IMAGE_FILE:Ljava/lang/String; = "tmp.jpg"

.field private static final TMP_IMAGE_TRACK_NAME:Ljava/lang/String; = "hykk87"

.field private static final TMP_WORK_SPACE:Ljava/lang/String; = ".tmpvideotrans"

.field private static final VIDEO_BITRATE:I = 0x7d000

.field private static final VIDEO_HEIGHT:I = 0x1e0

.field private static final WORK_SPACE_ROOT:Ljava/lang/String; = ".videotrans"


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 40
    const-class v0, Lcom/android/gallery3d/util/ImageVideoTranser;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/gallery3d/util/ImageVideoTranser;->LOG_TAG:Ljava/lang/String;

    .line 54
    const/16 v0, 0xa

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, ".0"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, ".1"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, ".2"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, ".3"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, ".4"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, ".5"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, ".6"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, ".7"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, ".8"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, ".9"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/gallery3d/util/ImageVideoTranser;->CACHE_FILE_NAME:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 39
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static addImageIntoVideoEditor(Landroid/media/videoeditor/VideoEditor;Lcom/android/gallery3d/data/LocalImage;ILjava/lang/String;)V
    .locals 14
    .parameter "editor"
    .parameter "voiceImage"
    .parameter "duration"
    .parameter "tmpWorkSpace"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 155
    invoke-virtual {p1}, Lcom/android/gallery3d/data/LocalImage;->getRotation()I

    move-result v11

    .line 157
    .local v11, rotationOfPic:I
    rem-int/lit16 v2, v11, 0xb4

    if-nez v2, :cond_1

    invoke-virtual {p1}, Lcom/android/gallery3d/data/LocalImage;->getWidth()I

    move-result v10

    .line 158
    .local v10, picWidth:I
    :goto_0
    rem-int/lit16 v2, v11, 0xb4

    if-nez v2, :cond_2

    invoke-virtual {p1}, Lcom/android/gallery3d/data/LocalImage;->getHeight()I

    move-result v9

    .line 159
    .local v9, picHeight:I
    :goto_1
    if-lt v10, v9, :cond_3

    const/4 v13, 0x0

    .line 161
    .local v13, targetRotation:I
    :goto_2
    const/4 v12, 0x1

    .line 162
    .local v12, setEditorRotationSuccess:Z
    if-eqz v13, :cond_0

    .line 163
    invoke-static {p0, v13}, Lcom/android/gallery3d/util/ImageVideoTranser;->setVideoEditorRotation(Landroid/media/videoeditor/VideoEditor;I)Z

    move-result v12

    .line 165
    :cond_0
    if-eqz v12, :cond_4

    .line 168
    :goto_3
    new-instance v8, Ljava/io/File;

    const-string v2, "tmp.jpg"

    move-object/from16 v0, p3

    invoke-direct {v8, v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 169
    .local v8, imageFile:Ljava/io/File;
    invoke-virtual {p1}, Lcom/android/gallery3d/data/LocalImage;->getFilePath()Ljava/lang/String;

    move-result-object v2

    sub-int v3, v11, v13

    add-int/lit16 v3, v3, 0x168

    rem-int/lit16 v3, v3, 0x168

    const v4, 0x70800

    invoke-static {v2, v3, v8, v4}, Lcom/android/gallery3d/util/ImageUtils;->rotateAndScaleImage(Ljava/lang/String;ILjava/io/File;I)V

    .line 171
    new-instance v1, Landroid/media/videoeditor/MediaImageItem;

    const-string v3, "hykk87"

    invoke-virtual {v8}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    move/from16 v0, p2

    int-to-long v5, v0

    const/4 v7, 0x0

    move-object v2, p0

    invoke-direct/range {v1 .. v7}, Landroid/media/videoeditor/MediaImageItem;-><init>(Landroid/media/videoeditor/VideoEditor;Ljava/lang/String;Ljava/lang/String;JI)V

    .line 172
    .local v1, mediaItem:Landroid/media/videoeditor/MediaItem;
    const/4 v2, 0x0

    invoke-interface {p0, v1, v2}, Landroid/media/videoeditor/VideoEditor;->insertMediaItem(Landroid/media/videoeditor/MediaItem;Ljava/lang/String;)V

    .line 173
    invoke-static {v10, v9}, Lcom/android/gallery3d/util/ImageVideoTranser;->getBestAspectRatio(II)I

    move-result v2

    invoke-interface {p0, v2}, Landroid/media/videoeditor/VideoEditor;->setAspectRatio(I)V

    .line 174
    return-void

    .line 157
    .end local v1           #mediaItem:Landroid/media/videoeditor/MediaItem;
    .end local v8           #imageFile:Ljava/io/File;
    .end local v9           #picHeight:I
    .end local v10           #picWidth:I
    .end local v12           #setEditorRotationSuccess:Z
    .end local v13           #targetRotation:I
    :cond_1
    invoke-virtual {p1}, Lcom/android/gallery3d/data/LocalImage;->getHeight()I

    move-result v10

    goto :goto_0

    .line 158
    .restart local v10       #picWidth:I
    :cond_2
    invoke-virtual {p1}, Lcom/android/gallery3d/data/LocalImage;->getWidth()I

    move-result v9

    goto :goto_1

    .line 159
    .restart local v9       #picHeight:I
    :cond_3
    const/16 v13, 0x5a

    goto :goto_2

    .line 165
    .restart local v12       #setEditorRotationSuccess:Z
    .restart local v13       #targetRotation:I
    :cond_4
    const/4 v13, 0x0

    goto :goto_3
.end method

.method private static createAudioTrack(Landroid/media/videoeditor/VideoEditor;Ljava/io/File;)Landroid/media/videoeditor/AudioTrack;
    .locals 3
    .parameter "editor"
    .parameter "voiceFile"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 206
    new-instance v0, Landroid/media/videoeditor/AudioTrack;

    const-string v1, "asere213"

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, p0, v1, v2}, Landroid/media/videoeditor/AudioTrack;-><init>(Landroid/media/videoeditor/VideoEditor;Ljava/lang/String;Ljava/lang/String;)V

    .line 207
    .local v0, audioTrack:Landroid/media/videoeditor/AudioTrack;
    const/16 v1, 0x19

    const/16 v2, 0x41

    invoke-virtual {v0, v1, v2}, Landroid/media/videoeditor/AudioTrack;->enableDucking(II)V

    .line 208
    const/16 v1, 0x32

    invoke-virtual {v0, v1}, Landroid/media/videoeditor/AudioTrack;->setVolume(I)V

    .line 209
    invoke-virtual {v0}, Landroid/media/videoeditor/AudioTrack;->disableLoop()V

    .line 210
    return-object v0
.end method

.method private static extractVoiceFile(Lcom/android/gallery3d/data/LocalImage;Ljava/lang/String;)Ljava/io/File;
    .locals 14
    .parameter "voiceImage"
    .parameter "tmpWorkSpace"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 178
    new-instance v9, Ljava/io/File;

    invoke-virtual {p0}, Lcom/android/gallery3d/data/LocalImage;->getFilePath()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 179
    .local v9, voiceImageFile:Ljava/io/File;
    new-instance v8, Ljava/io/File;

    const-string v10, "tmp.amr"

    invoke-direct {v8, p1, v10}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 181
    .local v8, tmpVoiceFile:Ljava/io/File;
    const/4 v2, 0x0

    .line 182
    .local v2, is:Ljava/io/InputStream;
    const/4 v4, 0x0

    .line 185
    .local v4, os:Ljava/io/OutputStream;
    :try_start_0
    new-instance v3, Ljava/io/BufferedInputStream;

    new-instance v10, Ljava/io/FileInputStream;

    invoke-direct {v10, v9}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v3, v10}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 186
    .end local v2           #is:Ljava/io/InputStream;
    .local v3, is:Ljava/io/InputStream;
    :try_start_1
    new-instance v5, Ljava/io/BufferedOutputStream;

    new-instance v10, Ljava/io/FileOutputStream;

    invoke-direct {v10, v8}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v5, v10}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 188
    .end local v4           #os:Ljava/io/OutputStream;
    .local v5, os:Ljava/io/OutputStream;
    :try_start_2
    invoke-virtual {v9}, Ljava/io/File;->length()J

    move-result-wide v10

    invoke-virtual {p0}, Lcom/android/gallery3d/data/LocalImage;->getVoiceOffset()J

    move-result-wide v12

    sub-long/2addr v10, v12

    const-wide/16 v12, 0x14

    sub-long v6, v10, v12

    .line 189
    .local v6, skipCountNeed:J
    invoke-static {v3, v6, v7}, Lcom/android/gallery3d/util/FileUtils;->skip(Ljava/io/InputStream;J)V

    .line 192
    const v10, 0x8000

    new-array v0, v10, [B

    .line 193
    .local v0, buffer:[B
    invoke-virtual {p0}, Lcom/android/gallery3d/data/LocalImage;->getVoiceOffset()J

    move-result-wide v10

    invoke-static {v3, v5, v0, v10, v11}, Lcom/android/gallery3d/util/FileUtils;->readDataToWrite(Ljava/io/InputStream;Ljava/io/OutputStream;[BJ)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 200
    invoke-static {v3}, Lcom/android/gallery3d/common/Utils;->closeSilently(Ljava/io/Closeable;)V

    .line 201
    invoke-static {v5}, Lcom/android/gallery3d/common/Utils;->closeSilently(Ljava/io/Closeable;)V

    return-object v8

    .line 196
    .end local v0           #buffer:[B
    .end local v3           #is:Ljava/io/InputStream;
    .end local v5           #os:Ljava/io/OutputStream;
    .end local v6           #skipCountNeed:J
    .restart local v2       #is:Ljava/io/InputStream;
    .restart local v4       #os:Ljava/io/OutputStream;
    :catch_0
    move-exception v1

    .line 198
    .local v1, e:Ljava/lang/Exception;
    :goto_0
    :try_start_3
    throw v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 200
    .end local v1           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v10

    :goto_1
    invoke-static {v2}, Lcom/android/gallery3d/common/Utils;->closeSilently(Ljava/io/Closeable;)V

    .line 201
    invoke-static {v4}, Lcom/android/gallery3d/common/Utils;->closeSilently(Ljava/io/Closeable;)V

    throw v10

    .line 200
    .end local v2           #is:Ljava/io/InputStream;
    .restart local v3       #is:Ljava/io/InputStream;
    :catchall_1
    move-exception v10

    move-object v2, v3

    .end local v3           #is:Ljava/io/InputStream;
    .restart local v2       #is:Ljava/io/InputStream;
    goto :goto_1

    .end local v2           #is:Ljava/io/InputStream;
    .end local v4           #os:Ljava/io/OutputStream;
    .restart local v3       #is:Ljava/io/InputStream;
    .restart local v5       #os:Ljava/io/OutputStream;
    :catchall_2
    move-exception v10

    move-object v4, v5

    .end local v5           #os:Ljava/io/OutputStream;
    .restart local v4       #os:Ljava/io/OutputStream;
    move-object v2, v3

    .end local v3           #is:Ljava/io/InputStream;
    .restart local v2       #is:Ljava/io/InputStream;
    goto :goto_1

    .line 196
    .end local v2           #is:Ljava/io/InputStream;
    .restart local v3       #is:Ljava/io/InputStream;
    :catch_1
    move-exception v1

    move-object v2, v3

    .end local v3           #is:Ljava/io/InputStream;
    .restart local v2       #is:Ljava/io/InputStream;
    goto :goto_0

    .end local v2           #is:Ljava/io/InputStream;
    .end local v4           #os:Ljava/io/OutputStream;
    .restart local v3       #is:Ljava/io/InputStream;
    .restart local v5       #os:Ljava/io/OutputStream;
    :catch_2
    move-exception v1

    move-object v4, v5

    .end local v5           #os:Ljava/io/OutputStream;
    .restart local v4       #os:Ljava/io/OutputStream;
    move-object v2, v3

    .end local v3           #is:Ljava/io/InputStream;
    .restart local v2       #is:Ljava/io/InputStream;
    goto :goto_0
.end method

.method private static getBestAspectRatio(II)I
    .locals 8
    .parameter "edgeA"
    .parameter "edgeB"

    .prologue
    .line 135
    invoke-static {p0, p1}, Ljava/lang/Math;->max(II)I

    move-result v6

    int-to-float v0, v6

    .line 136
    .local v0, bigEdge:F
    invoke-static {p0, p1}, Ljava/lang/Math;->min(II)I

    move-result v6

    int-to-float v5, v6

    .line 137
    .local v5, smallEdge:F
    div-float v6, v0, v5

    float-to-double v3, v6

    .line 144
    .local v3, ratio:D
    const-wide v1, 0x3fa999999999999aL

    .line 145
    .local v1, margin:D
    const-wide v6, 0x3ff622222ccccccdL

    cmpg-double v6, v3, v6

    if-gtz v6, :cond_0

    .line 146
    const/4 v6, 0x3

    .line 150
    :goto_0
    return v6

    .line 147
    :cond_0
    const-wide v6, 0x3ff8cccccccccccdL

    cmpg-double v6, v3, v6

    if-gtz v6, :cond_1

    .line 148
    const/4 v6, 0x1

    goto :goto_0

    .line 150
    :cond_1
    const/4 v6, 0x2

    goto :goto_0
.end method

.method private static getOutputVideoFile(Lcom/android/gallery3d/data/LocalImage;Ljava/io/File;)Ljava/io/File;
    .locals 4
    .parameter "originImage"
    .parameter "outputDir"

    .prologue
    .line 110
    invoke-virtual {p1}, Ljava/io/File;->getAbsoluteFile()Ljava/io/File;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/gallery3d/data/LocalImage;->getName()Ljava/lang/String;

    move-result-object v2

    const-string v3, ".mp4"

    invoke-static {v1, v2, v3}, Lcom/android/gallery3d/util/FileUtils;->getNoneDuplicateFile(Ljava/io/File;Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    .line 112
    .local v0, exportFile:Ljava/io/File;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    move-result v1

    if-nez v1, :cond_1

    .line 113
    :cond_0
    const/4 v0, 0x0

    .line 115
    .end local v0           #exportFile:Ljava/io/File;
    :cond_1
    return-object v0
.end method

.method private static getTmpWorkSpaceDir()Ljava/io/File;
    .locals 3

    .prologue
    .line 105
    new-instance v0, Ljava/io/File;

    invoke-static {}, Lcom/android/gallery3d/util/GalleryUtils;->getVolumePaths()[Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    aget-object v1, v1, v2

    const-string v2, ".tmpvideotrans"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public static getVoiceImageCountInArray(Ljava/util/ArrayList;Lcom/android/gallery3d/app/AbstractGalleryActivity;)I
    .locals 6
    .parameter
    .parameter "activity"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/gallery3d/data/Path;",
            ">;",
            "Lcom/android/gallery3d/app/AbstractGalleryActivity;",
            ")I"
        }
    .end annotation

    .prologue
    .line 82
    .local p0, pathArray:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/gallery3d/data/Path;>;"
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 83
    :cond_0
    const/4 v0, 0x0

    .line 92
    :cond_1
    return v0

    .line 85
    :cond_2
    const/4 v0, 0x0

    .line 86
    .local v0, count:I
    invoke-virtual {p1}, Lcom/android/gallery3d/app/AbstractGalleryActivity;->getDataManager()Lcom/android/gallery3d/data/DataManager;

    move-result-object v3

    .line 87
    .local v3, manager:Lcom/android/gallery3d/data/DataManager;
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_3
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/gallery3d/data/Path;

    .line 88
    .local v4, path:Lcom/android/gallery3d/data/Path;
    invoke-virtual {v3, v4}, Lcom/android/gallery3d/data/DataManager;->getMediaObject(Lcom/android/gallery3d/data/Path;)Lcom/android/gallery3d/data/MediaObject;

    move-result-object v2

    .line 89
    .local v2, item:Lcom/android/gallery3d/data/MediaObject;
    if-eqz v2, :cond_3

    invoke-static {v2}, Lcom/android/gallery3d/util/ImageVideoTranser;->isItemSupportTransVer(Lcom/android/gallery3d/data/MediaObject;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 90
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public static getWorkSpaceFile()Ljava/io/File;
    .locals 3

    .prologue
    .line 99
    new-instance v0, Ljava/io/File;

    invoke-static {}, Lcom/android/gallery3d/util/GalleryUtils;->getVolumePaths()[Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    aget-object v1, v1, v2

    const-string v2, ".videotrans"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 100
    .local v0, root:Ljava/io/File;
    sget-object v1, Lcom/android/gallery3d/util/ImageVideoTranser;->CACHE_FILE_NAME:[Ljava/lang/String;

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/android/gallery3d/util/FileUtils;->chooseFileInSequence(Ljava/io/File;[Ljava/lang/String;Z)Ljava/io/File;

    move-result-object v1

    return-object v1
.end method

.method public static isItemSupportTransVer(Lcom/android/gallery3d/data/MediaObject;)Z
    .locals 3
    .parameter "item"

    .prologue
    const/4 v1, 0x0

    .line 74
    instance-of v2, p0, Lcom/android/gallery3d/data/LocalImage;

    if-nez v2, :cond_1

    .line 78
    :cond_0
    :goto_0
    return v1

    :cond_1
    move-object v0, p0

    .line 77
    check-cast v0, Lcom/android/gallery3d/data/LocalImage;

    .line 78
    .local v0, image:Lcom/android/gallery3d/data/LocalImage;
    invoke-virtual {v0}, Lcom/android/gallery3d/data/LocalImage;->isVoiceImage()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v0}, Lcom/android/gallery3d/data/LocalImage;->isDrm()Z

    move-result v2

    if-nez v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0
.end method

.method public static isSingleSendIntentSupportTransFer(Landroid/content/Intent;Lcom/android/gallery3d/data/DataManager;)Z
    .locals 2
    .parameter "intent"
    .parameter "datamanager"

    .prologue
    .line 67
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.intent.action.SEND"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 68
    :cond_0
    const/4 v0, 0x0

    .line 70
    :goto_0
    return v0

    :cond_1
    invoke-static {p0, p1}, Lcom/android/gallery3d/util/WaterMarkMaker;->stripMediaObjectFromIntent(Landroid/content/Intent;Lcom/android/gallery3d/data/DataManager;)Lcom/android/gallery3d/data/MediaObject;

    move-result-object v0

    invoke-static {v0}, Lcom/android/gallery3d/util/ImageVideoTranser;->isItemSupportTransVer(Lcom/android/gallery3d/data/MediaObject;)Z

    move-result v0

    goto :goto_0
.end method

.method static releaseVideoEditor(Landroid/media/videoeditor/VideoEditor;)Z
    .locals 1
    .parameter "editor"

    .prologue
    .line 280
    if-eqz p0, :cond_0

    .line 281
    invoke-interface {p0}, Landroid/media/videoeditor/VideoEditor;->release()V

    .line 282
    const/4 v0, 0x1

    .line 284
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static setVideoEditorRotation(Landroid/media/videoeditor/VideoEditor;I)Z
    .locals 9
    .parameter "editor"
    .parameter "degree"

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 124
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    .line 125
    .local v2, videoEditorClazz:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    const-string v5, "setRotationEx"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Class;

    const/4 v7, 0x0

    sget-object v8, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v8, v6, v7

    invoke-virtual {v2, v5, v6}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 126
    .local v1, setRotationExFunc:Ljava/lang/reflect/Method;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-virtual {v1, p0, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 130
    .end local v1           #setRotationExFunc:Ljava/lang/reflect/Method;
    .end local v2           #videoEditorClazz:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    :goto_0
    return v3

    .line 128
    :catch_0
    move-exception v0

    .line 129
    .local v0, e:Ljava/lang/Exception;
    sget-object v3, Lcom/android/gallery3d/util/ImageVideoTranser;->LOG_TAG:Ljava/lang/String;

    const-string v5, "error when setVideoEditorRotation"

    invoke-static {v3, v5, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move v3, v4

    .line 130
    goto :goto_0
.end method

.method public static translateVoiceImageToVideo(Lcom/android/gallery3d/data/MediaObject;IILcom/android/gallery3d/ui/MenuExecutor;Ljava/io/File;)Landroid/net/Uri;
    .locals 3
    .parameter "item"
    .parameter "currentProgress"
    .parameter "maxProgress"
    .parameter "executor"
    .parameter "outputFileDir"

    .prologue
    .line 217
    new-instance v1, Lcom/android/gallery3d/util/ImageVideoTranser$1;

    invoke-direct {v1, p1, p2, p3}, Lcom/android/gallery3d/util/ImageVideoTranser$1;-><init>(IILcom/android/gallery3d/ui/MenuExecutor;)V

    .line 224
    .local v1, processListener:Landroid/media/videoeditor/VideoEditor$ExportProgressListener;
    invoke-static {p0, v1, p4}, Lcom/android/gallery3d/util/ImageVideoTranser;->translateVoiceImageToVideoInternal(Lcom/android/gallery3d/data/MediaObject;Landroid/media/videoeditor/VideoEditor$ExportProgressListener;Ljava/io/File;)Ljava/io/File;

    move-result-object v0

    .line 225
    .local v0, outputFile:Ljava/io/File;
    if-eqz v0, :cond_0

    invoke-static {v0}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v2

    :goto_0
    return-object v2

    :cond_0
    invoke-virtual {p0}, Lcom/android/gallery3d/data/MediaObject;->getContentUri()Landroid/net/Uri;

    move-result-object v2

    goto :goto_0
.end method

.method private static translateVoiceImageToVideoInternal(Lcom/android/gallery3d/data/MediaObject;Landroid/media/videoeditor/VideoEditor$ExportProgressListener;Ljava/io/File;)Ljava/io/File;
    .locals 13
    .parameter "item"
    .parameter "listener"
    .parameter "outputDir"

    .prologue
    .line 231
    invoke-static {p0}, Lcom/android/gallery3d/util/ImageVideoTranser;->isItemSupportTransVer(Lcom/android/gallery3d/data/MediaObject;)Z

    move-result v9

    if-eqz v9, :cond_0

    if-nez p2, :cond_1

    .line 232
    :cond_0
    const/4 v4, 0x0

    .line 275
    :goto_0
    return-object v4

    :cond_1
    move-object v8, p0

    .line 233
    check-cast v8, Lcom/android/gallery3d/data/LocalImage;

    .line 236
    .local v8, voiceImage:Lcom/android/gallery3d/data/LocalImage;
    invoke-static {}, Lcom/android/gallery3d/util/ImageVideoTranser;->getTmpWorkSpaceDir()Ljava/io/File;

    move-result-object v6

    .line 237
    .local v6, tmpWorkSpace:Ljava/io/File;
    invoke-virtual {v6}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v7

    .line 241
    .local v7, tmpWorkSpacePath:Ljava/lang/String;
    const/4 v3, 0x0

    .line 244
    .local v3, editor:Landroid/media/videoeditor/VideoEditor;
    :try_start_0
    invoke-static {v7}, Landroid/media/videoeditor/VideoEditorFactory;->create(Ljava/lang/String;)Landroid/media/videoeditor/VideoEditor;

    move-result-object v3

    .line 247
    invoke-static {v8, v7}, Lcom/android/gallery3d/util/ImageVideoTranser;->extractVoiceFile(Lcom/android/gallery3d/data/LocalImage;Ljava/lang/String;)Ljava/io/File;

    move-result-object v5

    .line 248
    .local v5, tmpVoiceFile:Ljava/io/File;
    invoke-static {v3, v5}, Lcom/android/gallery3d/util/ImageVideoTranser;->createAudioTrack(Landroid/media/videoeditor/VideoEditor;Ljava/io/File;)Landroid/media/videoeditor/AudioTrack;

    move-result-object v0

    .line 251
    .local v0, audioTrack:Landroid/media/videoeditor/AudioTrack;
    invoke-virtual {v0}, Landroid/media/videoeditor/AudioTrack;->getDuration()J

    move-result-wide v9

    const-wide/16 v11, 0x2af8

    invoke-static {v9, v10, v11, v12}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v9

    long-to-int v1, v9

    .line 252
    .local v1, duration:I
    invoke-static {v3, v8, v1, v7}, Lcom/android/gallery3d/util/ImageVideoTranser;->addImageIntoVideoEditor(Landroid/media/videoeditor/VideoEditor;Lcom/android/gallery3d/data/LocalImage;ILjava/lang/String;)V

    .line 255
    invoke-interface {v3, v0}, Landroid/media/videoeditor/VideoEditor;->addAudioTrack(Landroid/media/videoeditor/AudioTrack;)V

    .line 258
    invoke-static {v8, p2}, Lcom/android/gallery3d/util/ImageVideoTranser;->getOutputVideoFile(Lcom/android/gallery3d/data/LocalImage;Ljava/io/File;)Ljava/io/File;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    .line 259
    .local v4, exportFile:Ljava/io/File;
    if-nez v4, :cond_3

    .line 260
    const/4 v4, 0x0

    .line 269
    .end local v4           #exportFile:Ljava/io/File;
    invoke-static {v3}, Lcom/android/gallery3d/util/ImageVideoTranser;->releaseVideoEditor(Landroid/media/videoeditor/VideoEditor;)Z

    move-result v9

    if-eqz v9, :cond_2

    .line 270
    const/4 v3, 0x0

    .line 275
    :cond_2
    invoke-static {v6}, Lcom/android/gallery3d/util/FileUtils;->deleteFile(Ljava/io/File;)Z

    goto :goto_0

    .line 262
    .restart local v4       #exportFile:Ljava/io/File;
    :cond_3
    :try_start_1
    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v9

    const/16 v10, 0x1e0

    const v11, 0x7d000

    invoke-interface {v3, v9, v10, v11, p1}, Landroid/media/videoeditor/VideoEditor;->export(Ljava/lang/String;IILandroid/media/videoeditor/VideoEditor$ExportProgressListener;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 269
    invoke-static {v3}, Lcom/android/gallery3d/util/ImageVideoTranser;->releaseVideoEditor(Landroid/media/videoeditor/VideoEditor;)Z

    move-result v9

    if-eqz v9, :cond_4

    .line 270
    const/4 v3, 0x0

    .line 275
    :cond_4
    invoke-static {v6}, Lcom/android/gallery3d/util/FileUtils;->deleteFile(Ljava/io/File;)Z

    goto :goto_0

    .line 264
    .end local v0           #audioTrack:Landroid/media/videoeditor/AudioTrack;
    .end local v1           #duration:I
    .end local v4           #exportFile:Ljava/io/File;
    .end local v5           #tmpVoiceFile:Ljava/io/File;
    :catch_0
    move-exception v2

    .line 265
    .local v2, e:Ljava/lang/Exception;
    :try_start_2
    sget-object v9, Lcom/android/gallery3d/util/ImageVideoTranser;->LOG_TAG:Ljava/lang/String;

    const-string v10, "Error when translate to video"

    invoke-static {v9, v10, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 266
    const/4 v4, 0x0

    .line 269
    invoke-static {v3}, Lcom/android/gallery3d/util/ImageVideoTranser;->releaseVideoEditor(Landroid/media/videoeditor/VideoEditor;)Z

    move-result v9

    if-eqz v9, :cond_5

    .line 270
    const/4 v3, 0x0

    .line 275
    :cond_5
    invoke-static {v6}, Lcom/android/gallery3d/util/FileUtils;->deleteFile(Ljava/io/File;)Z

    goto :goto_0

    .line 269
    .end local v2           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v9

    invoke-static {v3}, Lcom/android/gallery3d/util/ImageVideoTranser;->releaseVideoEditor(Landroid/media/videoeditor/VideoEditor;)Z

    move-result v10

    if-eqz v10, :cond_6

    .line 270
    const/4 v3, 0x0

    .line 275
    :cond_6
    invoke-static {v6}, Lcom/android/gallery3d/util/FileUtils;->deleteFile(Ljava/io/File;)Z

    throw v9
.end method
