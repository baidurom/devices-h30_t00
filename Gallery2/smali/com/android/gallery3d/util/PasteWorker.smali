.class public Lcom/android/gallery3d/util/PasteWorker;
.super Ljava/lang/Object;
.source "PasteWorker.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/gallery3d/util/PasteWorker$PasteEventHandler;
    }
.end annotation


# static fields
.field public static final KEY_FILE_NAME:Ljava/lang/String; = "key-filename"

.field public static final KEY_PASTED_FILE_COUNT:Ljava/lang/String; = "key-pastedfilecount"

.field public static final KEY_PASTE_STATE:Ljava/lang/String; = "key-pastestate"

.field public static final KEY_SAME_NAME_FILE_COUNT:Ljava/lang/String; = "key-filenamecount"

.field public static final KEY_TARGET_FILENAME:Ljava/lang/String; = "key-targetfilename"

.field public static final KEY_TARGET_FILEPATH:Ljava/lang/String; = "key-targetpath"

.field public static final KEY_VOLUME_AVAILABLE:Ljava/lang/String; = "key-volumeavailable"

.field public static final KEY_VOLUME_COPYED:Ljava/lang/String; = "key-volumecoped"

.field public static final KEY_VOLUME_NEEDED:Ljava/lang/String; = "key-volumeneed"

.field private static final PASTE_PROCESS_COMPLETE:I = 0x2

.field private static final PASTE_PROCESS_EXECUTE:I = 0x1

.field private static final PASTE_PROCESS_INIT:I = 0x0

.field public static final PASTE_STATE_COPY:I = 0x1

.field public static final PASTE_STATE_CUT:I = 0x2

.field public static final PASTE_STATE_NONE:I = 0x0

.field private static final TAG:Ljava/lang/String; = "PasteWorker"

.field public static final USER_STATE_EXIT:I = 0x2

.field public static final USER_STATE_NONE:I = 0x0

.field public static final USER_STATE_PENDDING:I = 0x1


# instance fields
.field private mApp:Lcom/android/gallery3d/app/GalleryApp;

.field private mFilePasted:I

.field private mLock:Lcom/android/gallery3d/util/SimpleLock;

.field private mManager:Lcom/android/gallery3d/data/DataManager;

.field private mPasteState:I

.field private mSameNameFileCount:I

.field private mUserState:I

.field private mVolumePasted:J


# direct methods
.method public constructor <init>(Lcom/android/gallery3d/app/GalleryApp;Lcom/android/gallery3d/data/DataManager;)V
    .locals 2
    .parameter "app"
    .parameter "manager"

    .prologue
    const/4 v0, 0x0

    .line 95
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 84
    iput v0, p0, Lcom/android/gallery3d/util/PasteWorker;->mPasteState:I

    .line 85
    iput v0, p0, Lcom/android/gallery3d/util/PasteWorker;->mUserState:I

    .line 86
    iput v0, p0, Lcom/android/gallery3d/util/PasteWorker;->mFilePasted:I

    .line 87
    iput v0, p0, Lcom/android/gallery3d/util/PasteWorker;->mSameNameFileCount:I

    .line 88
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/gallery3d/util/PasteWorker;->mVolumePasted:J

    .line 90
    new-instance v0, Lcom/android/gallery3d/util/SimpleLock;

    invoke-direct {v0}, Lcom/android/gallery3d/util/SimpleLock;-><init>()V

    iput-object v0, p0, Lcom/android/gallery3d/util/PasteWorker;->mLock:Lcom/android/gallery3d/util/SimpleLock;

    .line 96
    iput-object p1, p0, Lcom/android/gallery3d/util/PasteWorker;->mApp:Lcom/android/gallery3d/app/GalleryApp;

    .line 97
    iput-object p2, p0, Lcom/android/gallery3d/util/PasteWorker;->mManager:Lcom/android/gallery3d/data/DataManager;

    .line 98
    return-void
.end method

.method private addFileIntoDatabase(Ljava/io/File;)V
    .locals 4
    .parameter "file"

    .prologue
    .line 351
    iget-object v0, p0, Lcom/android/gallery3d/util/PasteWorker;->mApp:Lcom/android/gallery3d/app/GalleryApp;

    invoke-interface {v0}, Lcom/android/gallery3d/app/GalleryApp;->getAndroidContext()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.MEDIA_SCANNER_SCAN_FILE"

    invoke-static {p1}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {v0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 353
    return-void
.end method

.method private copyFileByStream(Ljava/io/InputStream;Ljava/io/OutputStream;Lcom/android/gallery3d/util/PasteWorker$PasteEventHandler;Lcom/android/gallery3d/data/MediaItem;Ljava/io/File;)V
    .locals 6
    .parameter "is"
    .parameter "os"
    .parameter "handler"
    .parameter "srcItem"
    .parameter "targetFile"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 319
    const-wide/16 v1, 0x0

    .line 320
    .local v1, currentCopiedBits:J
    const/high16 v4, 0x10

    new-array v0, v4, [B

    .line 323
    .local v0, buffer:[B
    :goto_0
    invoke-virtual {p1, v0}, Ljava/io/InputStream;->read([B)I

    move-result v3

    .local v3, readCount:I
    const/4 v4, -0x1

    if-eq v3, v4, :cond_1

    .line 324
    invoke-direct {p0}, Lcom/android/gallery3d/util/PasteWorker;->getUserDecision()Z

    move-result v4

    if-nez v4, :cond_0

    .line 325
    new-instance v4, Ljava/lang/Exception;

    invoke-direct {v4}, Ljava/lang/Exception;-><init>()V

    throw v4

    .line 327
    :cond_0
    const/4 v4, 0x0

    invoke-virtual {p2, v0, v4, v3}, Ljava/io/OutputStream;->write([BII)V

    .line 328
    int-to-long v4, v3

    add-long/2addr v1, v4

    .line 329
    iget-wide v4, p0, Lcom/android/gallery3d/util/PasteWorker;->mVolumePasted:J

    add-long/2addr v4, v1

    invoke-direct {p0, v4, v5, p3}, Lcom/android/gallery3d/util/PasteWorker;->notifyPastedVolumeChanged(JLcom/android/gallery3d/util/PasteWorker$PasteEventHandler;)V

    goto :goto_0

    .line 331
    :cond_1
    return-void
.end method

.method private deleteExistFile(Ljava/io/File;)Z
    .locals 7
    .parameter "file"

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 334
    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    move-result v4

    if-nez v4, :cond_0

    .line 347
    :goto_0
    return v2

    .line 337
    :cond_0
    const-string v1, "_data=?"

    .line 339
    .local v1, selection:Ljava/lang/String;
    sget-object v0, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    .line 340
    .local v0, baseUri:Landroid/net/Uri;
    iget-object v4, p0, Lcom/android/gallery3d/util/PasteWorker;->mApp:Lcom/android/gallery3d/app/GalleryApp;

    invoke-interface {v4}, Lcom/android/gallery3d/app/GalleryApp;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    new-array v5, v3, [Ljava/lang/String;

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v2

    invoke-virtual {v4, v0, v1, v5}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 342
    sget-object v0, Landroid/provider/MediaStore$Video$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    .line 343
    iget-object v4, p0, Lcom/android/gallery3d/util/PasteWorker;->mApp:Lcom/android/gallery3d/app/GalleryApp;

    invoke-interface {v4}, Lcom/android/gallery3d/app/GalleryApp;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    new-array v5, v3, [Ljava/lang/String;

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v2

    invoke-virtual {v4, v0, v1, v5}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 345
    iget-object v2, p0, Lcom/android/gallery3d/util/PasteWorker;->mManager:Lcom/android/gallery3d/data/DataManager;

    invoke-virtual {v2}, Lcom/android/gallery3d/data/DataManager;->broadcastLocalDeletion()V

    move v2, v3

    .line 347
    goto :goto_0
.end method

.method private getUserDecision()Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 114
    iget v1, p0, Lcom/android/gallery3d/util/PasteWorker;->mUserState:I

    if-ne v1, v0, :cond_0

    .line 115
    const-string v1, "PasteWorker"

    const-string v2, "User pressed cancel, wait for final decision"

    invoke-static {v1, v2}, Lcom/android/gallery3d/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 116
    iget-object v1, p0, Lcom/android/gallery3d/util/PasteWorker;->mLock:Lcom/android/gallery3d/util/SimpleLock;

    invoke-virtual {v1}, Lcom/android/gallery3d/util/SimpleLock;->waitUntilNotify()V

    .line 119
    :cond_0
    iget v1, p0, Lcom/android/gallery3d/util/PasteWorker;->mUserState:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    .line 120
    const-string v0, "PasteWorker"

    const-string v1, "User chose to exit the pasting process"

    invoke-static {v0, v1}, Lcom/android/gallery3d/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 121
    const/4 v0, 0x0

    .line 124
    :cond_1
    return v0
.end method

.method private notifyEvent(IILandroid/os/Bundle;Lcom/android/gallery3d/util/PasteWorker$PasteEventHandler;)Z
    .locals 1
    .parameter "pasteProcess"
    .parameter "eventID"
    .parameter "data"
    .parameter "handler"

    .prologue
    .line 366
    packed-switch p1, :pswitch_data_0

    .line 376
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 368
    :pswitch_0
    invoke-interface {p4, p2, p3}, Lcom/android/gallery3d/util/PasteWorker$PasteEventHandler;->onPasteInitEvent(ILandroid/os/Bundle;)Z

    move-result v0

    goto :goto_0

    .line 370
    :pswitch_1
    invoke-interface {p4, p2, p3}, Lcom/android/gallery3d/util/PasteWorker$PasteEventHandler;->onPasteEvent(ILandroid/os/Bundle;)Z

    move-result v0

    goto :goto_0

    .line 373
    :pswitch_2
    invoke-interface {p4, p2, p3}, Lcom/android/gallery3d/util/PasteWorker$PasteEventHandler;->onPasteCompleteEvent(ILandroid/os/Bundle;)Z

    move-result v0

    goto :goto_0

    .line 366
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private notifyEventNoSpace(IJJLcom/android/gallery3d/util/PasteWorker$PasteEventHandler;)Z
    .locals 4
    .parameter "pasteProcess"
    .parameter "spaceAvailable"
    .parameter "spaceNeed"
    .parameter "handler"

    .prologue
    .line 382
    const-string v1, "PasteWorker"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "No space when "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", need "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p4, p5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " bytes, left "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " bytes"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/gallery3d/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 384
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 385
    .local v0, spaceData:Landroid/os/Bundle;
    const-string v1, "key-volumeavailable"

    invoke-virtual {v0, v1, p2, p3}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 386
    const-string v1, "key-volumeneed"

    invoke-virtual {v0, v1, p4, p5}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 387
    const/4 v1, 0x3

    invoke-direct {p0, p1, v1, v0, p6}, Lcom/android/gallery3d/util/PasteWorker;->notifyEvent(IILandroid/os/Bundle;Lcom/android/gallery3d/util/PasteWorker$PasteEventHandler;)Z

    move-result v1

    return v1
.end method

.method private notifyEventSameNameFile(ILjava/lang/String;Lcom/android/gallery3d/util/PasteWorker$PasteEventHandler;)Z
    .locals 4
    .parameter "pasteProcess"
    .parameter "fileName"
    .parameter "handler"

    .prologue
    .line 392
    const-string v1, "PasteWorker"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "notifyEventSameNameFile  mSameNameFileCount = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/gallery3d/util/PasteWorker;->mSameNameFileCount:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/gallery3d/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 393
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 394
    .local v0, sameNameData:Landroid/os/Bundle;
    const-string v1, "key-filenamecount"

    iget v2, p0, Lcom/android/gallery3d/util/PasteWorker;->mSameNameFileCount:I

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 396
    iget v1, p0, Lcom/android/gallery3d/util/PasteWorker;->mSameNameFileCount:I

    const/4 v2, 0x1

    if-le v1, v2, :cond_0

    .line 397
    iget v1, p0, Lcom/android/gallery3d/util/PasteWorker;->mSameNameFileCount:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/android/gallery3d/util/PasteWorker;->mSameNameFileCount:I

    .line 399
    :cond_0
    const-string v1, "key-filename"

    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 401
    const/4 v1, 0x2

    invoke-direct {p0, p1, v1, v0, p3}, Lcom/android/gallery3d/util/PasteWorker;->notifyEvent(IILandroid/os/Bundle;Lcom/android/gallery3d/util/PasteWorker$PasteEventHandler;)Z

    move-result v1

    return v1
.end method

.method private notifyPastedVolumeChanged(JLcom/android/gallery3d/util/PasteWorker$PasteEventHandler;)V
    .locals 2
    .parameter "volume"
    .parameter "handler"

    .prologue
    .line 405
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 406
    .local v0, data:Landroid/os/Bundle;
    const-string v1, "key-volumecoped"

    invoke-virtual {v0, v1, p1, p2}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 407
    const/16 v1, 0xb

    invoke-interface {p3, v1, v0}, Lcom/android/gallery3d/util/PasteWorker$PasteEventHandler;->onPasteEvent(ILandroid/os/Bundle;)Z

    .line 408
    return-void
.end method

.method private resetFlag()V
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 101
    iput v0, p0, Lcom/android/gallery3d/util/PasteWorker;->mPasteState:I

    .line 102
    iput v0, p0, Lcom/android/gallery3d/util/PasteWorker;->mUserState:I

    .line 103
    iput v0, p0, Lcom/android/gallery3d/util/PasteWorker;->mFilePasted:I

    .line 104
    iput v0, p0, Lcom/android/gallery3d/util/PasteWorker;->mSameNameFileCount:I

    .line 105
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/gallery3d/util/PasteWorker;->mVolumePasted:J

    .line 106
    return-void
.end method

.method private validityCheck(Ljava/io/File;Ljava/lang/String;Lcom/android/gallery3d/util/PasteWorker$PasteEventHandler;)I
    .locals 9
    .parameter "itemFile"
    .parameter "targetFileParent"
    .parameter "handler"

    .prologue
    const/4 v1, 0x1

    .line 220
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_1

    .line 221
    const-string v0, "PasteWorker"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "File does not exist any more: "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/gallery3d/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 222
    const/4 v1, 0x4

    .line 250
    :cond_0
    :goto_0
    return v1

    .line 225
    :cond_1
    invoke-virtual {p1}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 226
    const-string v0, "PasteWorker"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Copy a file to its own place: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Lcom/android/gallery3d/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 227
    const/4 v0, 0x0

    invoke-interface {p3, v1, v0}, Lcom/android/gallery3d/util/PasteWorker$PasteEventHandler;->onPasteEvent(ILandroid/os/Bundle;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 232
    :cond_2
    new-instance v8, Ljava/io/File;

    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v8, p2, v0}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 233
    .local v8, targetFile:Ljava/io/File;
    invoke-virtual {v8}, Ljava/io/File;->exists()Z

    move-result v7

    .line 235
    .local v7, isTargetFileExist:Z
    if-eqz v7, :cond_3

    .line 236
    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v1, v0, p3}, Lcom/android/gallery3d/util/PasteWorker;->notifyEventSameNameFile(ILjava/lang/String;Lcom/android/gallery3d/util/PasteWorker$PasteEventHandler;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 237
    const/4 v1, 0x2

    goto :goto_0

    .line 241
    :cond_3
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->getUsableSpace()J

    move-result-wide v2

    .line 242
    .local v2, availableSpace:J
    if-eqz v7, :cond_4

    .line 243
    invoke-virtual {v8}, Ljava/io/File;->length()J

    move-result-wide v4

    add-long/2addr v2, v4

    .line 245
    :cond_4
    invoke-virtual {p1}, Ljava/io/File;->length()J

    move-result-wide v4

    cmp-long v0, v2, v4

    if-gtz v0, :cond_5

    .line 246
    invoke-virtual {p1}, Ljava/io/File;->length()J

    move-result-wide v4

    move-object v0, p0

    move-object v6, p3

    invoke-direct/range {v0 .. v6}, Lcom/android/gallery3d/util/PasteWorker;->notifyEventNoSpace(IJJLcom/android/gallery3d/util/PasteWorker$PasteEventHandler;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 247
    const/4 v1, 0x3

    goto :goto_0

    .line 250
    :cond_5
    const/4 v1, 0x0

    goto :goto_0
.end method


# virtual methods
.method public copyFile(Lcom/android/gallery3d/data/MediaItem;Ljava/lang/String;Lcom/android/gallery3d/util/PasteWorker$PasteEventHandler;)I
    .locals 18
    .parameter "item"
    .parameter "targetFileParent"
    .parameter "handler"

    .prologue
    .line 262
    new-instance v12, Ljava/io/File;

    invoke-virtual/range {p1 .. p1}, Lcom/android/gallery3d/data/MediaItem;->getFilePath()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v12, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 263
    .local v12, itemFile:Ljava/io/File;
    const/16 v14, 0x63

    .line 266
    .local v14, ret:I
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    invoke-direct {v0, v12, v1, v2}, Lcom/android/gallery3d/util/PasteWorker;->validityCheck(Ljava/io/File;Ljava/lang/String;Lcom/android/gallery3d/util/PasteWorker$PasteEventHandler;)I

    move-result v15

    .line 267
    .local v15, validity:I
    if-eqz v15, :cond_1

    .line 269
    move-object/from16 v0, p0

    iget-wide v6, v0, Lcom/android/gallery3d/util/PasteWorker;->mVolumePasted:J

    invoke-virtual {v12}, Ljava/io/File;->length()J

    move-result-wide v16

    add-long v6, v6, v16

    move-object/from16 v0, p0

    iput-wide v6, v0, Lcom/android/gallery3d/util/PasteWorker;->mVolumePasted:J

    .line 270
    move-object/from16 v0, p0

    iget-wide v6, v0, Lcom/android/gallery3d/util/PasteWorker;->mVolumePasted:J

    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-direct {v0, v6, v7, v1}, Lcom/android/gallery3d/util/PasteWorker;->notifyPastedVolumeChanged(JLcom/android/gallery3d/util/PasteWorker$PasteEventHandler;)V

    .line 312
    .end local v15           #validity:I
    :cond_0
    :goto_0
    return v15

    .line 274
    .restart local v15       #validity:I
    :cond_1
    new-instance v8, Ljava/io/File;

    invoke-virtual {v12}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p2

    invoke-direct {v8, v0, v3}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 275
    .local v8, targetFile:Ljava/io/File;
    invoke-virtual {v8}, Ljava/io/File;->exists()Z

    move-result v11

    .line 276
    .local v11, isTargetFileExist:Z
    if-eqz v11, :cond_2

    .line 277
    move-object/from16 v0, p0

    invoke-direct {v0, v8}, Lcom/android/gallery3d/util/PasteWorker;->deleteExistFile(Ljava/io/File;)Z

    .line 281
    :cond_2
    const/4 v10, 0x0

    .line 282
    .local v10, is:Ljava/io/BufferedInputStream;
    const/4 v13, 0x0

    .line 284
    .local v13, os:Ljava/io/BufferedOutputStream;
    :try_start_0
    new-instance v4, Ljava/io/BufferedInputStream;

    new-instance v3, Ljava/io/FileInputStream;

    invoke-direct {v3, v12}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v4, v3}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 285
    .end local v10           #is:Ljava/io/BufferedInputStream;
    .local v4, is:Ljava/io/BufferedInputStream;
    :try_start_1
    new-instance v5, Ljava/io/BufferedOutputStream;

    new-instance v3, Ljava/io/FileOutputStream;

    invoke-direct {v3, v8}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v5, v3}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_4
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    .end local v13           #os:Ljava/io/BufferedOutputStream;
    .local v5, os:Ljava/io/BufferedOutputStream;
    move-object/from16 v3, p0

    move-object/from16 v6, p3

    move-object/from16 v7, p1

    .line 287
    :try_start_2
    invoke-direct/range {v3 .. v8}, Lcom/android/gallery3d/util/PasteWorker;->copyFileByStream(Ljava/io/InputStream;Ljava/io/OutputStream;Lcom/android/gallery3d/util/PasteWorker$PasteEventHandler;Lcom/android/gallery3d/data/MediaItem;Ljava/io/File;)V

    .line 289
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/gallery3d/util/PasteWorker;->mFilePasted:I

    add-int/lit8 v3, v3, 0x1

    move-object/from16 v0, p0

    iput v3, v0, Lcom/android/gallery3d/util/PasteWorker;->mFilePasted:I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_5
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_3

    .line 290
    const/4 v14, 0x0

    .line 297
    move-object/from16 v0, p0

    iget-wide v6, v0, Lcom/android/gallery3d/util/PasteWorker;->mVolumePasted:J

    invoke-virtual {v12}, Ljava/io/File;->length()J

    move-result-wide v16

    add-long v6, v6, v16

    move-object/from16 v0, p0

    iput-wide v6, v0, Lcom/android/gallery3d/util/PasteWorker;->mVolumePasted:J

    .line 298
    move-object/from16 v0, p0

    iget-wide v6, v0, Lcom/android/gallery3d/util/PasteWorker;->mVolumePasted:J

    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-direct {v0, v6, v7, v1}, Lcom/android/gallery3d/util/PasteWorker;->notifyPastedVolumeChanged(JLcom/android/gallery3d/util/PasteWorker$PasteEventHandler;)V

    .line 300
    invoke-static {v4}, Lcom/android/gallery3d/util/GalleryUtils;->closeStreamSilencely(Ljava/io/Closeable;)V

    .line 301
    invoke-static {v5}, Lcom/android/gallery3d/util/GalleryUtils;->closeStreamSilencely(Ljava/io/Closeable;)V

    .line 304
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/gallery3d/util/PasteWorker;->mUserState:I

    const/4 v6, 0x2

    if-eq v3, v6, :cond_3

    if-eqz v14, :cond_4

    .line 305
    :cond_3
    invoke-virtual {v8}, Ljava/io/File;->delete()Z

    move-result v3

    if-nez v3, :cond_5

    .line 306
    const/16 v15, 0x63

    goto :goto_0

    .line 308
    :cond_4
    move-object/from16 v0, p0

    invoke-direct {v0, v8}, Lcom/android/gallery3d/util/PasteWorker;->addFileIntoDatabase(Ljava/io/File;)V

    :cond_5
    move v15, v14

    .line 312
    goto :goto_0

    .line 291
    .end local v4           #is:Ljava/io/BufferedInputStream;
    .end local v5           #os:Ljava/io/BufferedOutputStream;
    .restart local v10       #is:Ljava/io/BufferedInputStream;
    .restart local v13       #os:Ljava/io/BufferedOutputStream;
    :catch_0
    move-exception v9

    move-object v5, v13

    .end local v13           #os:Ljava/io/BufferedOutputStream;
    .restart local v5       #os:Ljava/io/BufferedOutputStream;
    move-object v4, v10

    .line 292
    .end local v10           #is:Ljava/io/BufferedInputStream;
    .restart local v4       #is:Ljava/io/BufferedInputStream;
    .local v9, e:Ljava/io/IOException;
    :goto_1
    const/16 v15, 0x63

    .line 297
    .end local v15           #validity:I
    move-object/from16 v0, p0

    iget-wide v6, v0, Lcom/android/gallery3d/util/PasteWorker;->mVolumePasted:J

    invoke-virtual {v12}, Ljava/io/File;->length()J

    move-result-wide v16

    add-long v6, v6, v16

    move-object/from16 v0, p0

    iput-wide v6, v0, Lcom/android/gallery3d/util/PasteWorker;->mVolumePasted:J

    .line 298
    move-object/from16 v0, p0

    iget-wide v6, v0, Lcom/android/gallery3d/util/PasteWorker;->mVolumePasted:J

    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-direct {v0, v6, v7, v1}, Lcom/android/gallery3d/util/PasteWorker;->notifyPastedVolumeChanged(JLcom/android/gallery3d/util/PasteWorker$PasteEventHandler;)V

    .line 300
    invoke-static {v4}, Lcom/android/gallery3d/util/GalleryUtils;->closeStreamSilencely(Ljava/io/Closeable;)V

    .line 301
    invoke-static {v5}, Lcom/android/gallery3d/util/GalleryUtils;->closeStreamSilencely(Ljava/io/Closeable;)V

    .line 304
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/gallery3d/util/PasteWorker;->mUserState:I

    const/4 v6, 0x2

    if-eq v3, v6, :cond_6

    if-eqz v14, :cond_7

    .line 305
    :cond_6
    invoke-virtual {v8}, Ljava/io/File;->delete()Z

    move-result v3

    if-nez v3, :cond_0

    .line 306
    const/16 v15, 0x63

    goto/16 :goto_0

    .line 308
    :cond_7
    move-object/from16 v0, p0

    invoke-direct {v0, v8}, Lcom/android/gallery3d/util/PasteWorker;->addFileIntoDatabase(Ljava/io/File;)V

    goto/16 :goto_0

    .line 293
    .end local v4           #is:Ljava/io/BufferedInputStream;
    .end local v5           #os:Ljava/io/BufferedOutputStream;
    .end local v9           #e:Ljava/io/IOException;
    .restart local v10       #is:Ljava/io/BufferedInputStream;
    .restart local v13       #os:Ljava/io/BufferedOutputStream;
    .restart local v15       #validity:I
    :catch_1
    move-exception v9

    move-object v5, v13

    .end local v13           #os:Ljava/io/BufferedOutputStream;
    .restart local v5       #os:Ljava/io/BufferedOutputStream;
    move-object v4, v10

    .line 294
    .end local v10           #is:Ljava/io/BufferedInputStream;
    .restart local v4       #is:Ljava/io/BufferedInputStream;
    .local v9, e:Ljava/lang/Exception;
    :goto_2
    const/16 v15, 0x63

    .line 297
    .end local v15           #validity:I
    move-object/from16 v0, p0

    iget-wide v6, v0, Lcom/android/gallery3d/util/PasteWorker;->mVolumePasted:J

    invoke-virtual {v12}, Ljava/io/File;->length()J

    move-result-wide v16

    add-long v6, v6, v16

    move-object/from16 v0, p0

    iput-wide v6, v0, Lcom/android/gallery3d/util/PasteWorker;->mVolumePasted:J

    .line 298
    move-object/from16 v0, p0

    iget-wide v6, v0, Lcom/android/gallery3d/util/PasteWorker;->mVolumePasted:J

    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-direct {v0, v6, v7, v1}, Lcom/android/gallery3d/util/PasteWorker;->notifyPastedVolumeChanged(JLcom/android/gallery3d/util/PasteWorker$PasteEventHandler;)V

    .line 300
    invoke-static {v4}, Lcom/android/gallery3d/util/GalleryUtils;->closeStreamSilencely(Ljava/io/Closeable;)V

    .line 301
    invoke-static {v5}, Lcom/android/gallery3d/util/GalleryUtils;->closeStreamSilencely(Ljava/io/Closeable;)V

    .line 304
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/gallery3d/util/PasteWorker;->mUserState:I

    const/4 v6, 0x2

    if-eq v3, v6, :cond_8

    if-eqz v14, :cond_9

    .line 305
    :cond_8
    invoke-virtual {v8}, Ljava/io/File;->delete()Z

    move-result v3

    if-nez v3, :cond_0

    .line 306
    const/16 v15, 0x63

    goto/16 :goto_0

    .line 308
    :cond_9
    move-object/from16 v0, p0

    invoke-direct {v0, v8}, Lcom/android/gallery3d/util/PasteWorker;->addFileIntoDatabase(Ljava/io/File;)V

    goto/16 :goto_0

    .line 297
    .end local v4           #is:Ljava/io/BufferedInputStream;
    .end local v5           #os:Ljava/io/BufferedOutputStream;
    .end local v9           #e:Ljava/lang/Exception;
    .restart local v10       #is:Ljava/io/BufferedInputStream;
    .restart local v13       #os:Ljava/io/BufferedOutputStream;
    .restart local v15       #validity:I
    :catchall_0
    move-exception v3

    move-object v5, v13

    .end local v13           #os:Ljava/io/BufferedOutputStream;
    .restart local v5       #os:Ljava/io/BufferedOutputStream;
    move-object v4, v10

    .end local v10           #is:Ljava/io/BufferedInputStream;
    .restart local v4       #is:Ljava/io/BufferedInputStream;
    :goto_3
    move-object/from16 v0, p0

    iget-wide v6, v0, Lcom/android/gallery3d/util/PasteWorker;->mVolumePasted:J

    invoke-virtual {v12}, Ljava/io/File;->length()J

    move-result-wide v16

    add-long v6, v6, v16

    move-object/from16 v0, p0

    iput-wide v6, v0, Lcom/android/gallery3d/util/PasteWorker;->mVolumePasted:J

    .line 298
    move-object/from16 v0, p0

    iget-wide v6, v0, Lcom/android/gallery3d/util/PasteWorker;->mVolumePasted:J

    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-direct {v0, v6, v7, v1}, Lcom/android/gallery3d/util/PasteWorker;->notifyPastedVolumeChanged(JLcom/android/gallery3d/util/PasteWorker$PasteEventHandler;)V

    .line 300
    invoke-static {v4}, Lcom/android/gallery3d/util/GalleryUtils;->closeStreamSilencely(Ljava/io/Closeable;)V

    .line 301
    invoke-static {v5}, Lcom/android/gallery3d/util/GalleryUtils;->closeStreamSilencely(Ljava/io/Closeable;)V

    .line 304
    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/gallery3d/util/PasteWorker;->mUserState:I

    const/4 v7, 0x2

    if-eq v6, v7, :cond_a

    if-eqz v14, :cond_b

    .line 305
    :cond_a
    invoke-virtual {v8}, Ljava/io/File;->delete()Z

    move-result v6

    if-nez v6, :cond_c

    .line 306
    const/16 v15, 0x63

    goto/16 :goto_0

    .line 308
    :cond_b
    move-object/from16 v0, p0

    invoke-direct {v0, v8}, Lcom/android/gallery3d/util/PasteWorker;->addFileIntoDatabase(Ljava/io/File;)V

    :cond_c
    throw v3

    .line 297
    .end local v5           #os:Ljava/io/BufferedOutputStream;
    .restart local v13       #os:Ljava/io/BufferedOutputStream;
    :catchall_1
    move-exception v3

    move-object v5, v13

    .end local v13           #os:Ljava/io/BufferedOutputStream;
    .restart local v5       #os:Ljava/io/BufferedOutputStream;
    goto :goto_3

    :catchall_2
    move-exception v3

    goto :goto_3

    .line 293
    .end local v5           #os:Ljava/io/BufferedOutputStream;
    .restart local v13       #os:Ljava/io/BufferedOutputStream;
    :catch_2
    move-exception v9

    move-object v5, v13

    .end local v13           #os:Ljava/io/BufferedOutputStream;
    .restart local v5       #os:Ljava/io/BufferedOutputStream;
    goto :goto_2

    :catch_3
    move-exception v9

    goto :goto_2

    .line 291
    .end local v5           #os:Ljava/io/BufferedOutputStream;
    .restart local v13       #os:Ljava/io/BufferedOutputStream;
    :catch_4
    move-exception v9

    move-object v5, v13

    .end local v13           #os:Ljava/io/BufferedOutputStream;
    .restart local v5       #os:Ljava/io/BufferedOutputStream;
    goto/16 :goto_1

    :catch_5
    move-exception v9

    goto/16 :goto_1
.end method

.method public cutFile(Lcom/android/gallery3d/data/MediaItem;Ljava/lang/String;Lcom/android/gallery3d/util/PasteWorker$PasteEventHandler;)I
    .locals 1
    .parameter "item"
    .parameter "targetFileParent"
    .parameter "handler"

    .prologue
    .line 254
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/gallery3d/util/PasteWorker;->copyFile(Lcom/android/gallery3d/data/MediaItem;Ljava/lang/String;Lcom/android/gallery3d/util/PasteWorker$PasteEventHandler;)I

    move-result v0

    .line 255
    .local v0, result:I
    if-nez v0, :cond_0

    .line 256
    invoke-virtual {p1}, Lcom/android/gallery3d/data/MediaItem;->delete()V

    .line 258
    :cond_0
    return v0
.end method

.method public getCurrentPasteState()I
    .locals 1

    .prologue
    .line 109
    iget v0, p0, Lcom/android/gallery3d/util/PasteWorker;->mPasteState:I

    return v0
.end method

.method public initPaste(Landroid/os/Bundle;Lcom/android/gallery3d/util/PasteWorker$PasteEventHandler;Ljava/util/ArrayList;)Z
    .locals 18
    .parameter "pasteInfo"
    .parameter "eventHandler"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Bundle;",
            "Lcom/android/gallery3d/util/PasteWorker$PasteEventHandler;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/gallery3d/data/Path;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 145
    .local p3, processList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/gallery3d/data/Path;>;"
    invoke-direct/range {p0 .. p0}, Lcom/android/gallery3d/util/PasteWorker;->resetFlag()V

    .line 148
    const-string v2, "key-pastestate"

    const/4 v3, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/gallery3d/util/PasteWorker;->mPasteState:I

    .line 149
    const-string v2, "key-targetpath"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    .line 150
    .local v17, targetFileParent:Ljava/lang/String;
    const-string v2, "PasteWorker"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "initPaste paste state = "

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget v8, v0, Lcom/android/gallery3d/util/PasteWorker;->mPasteState:I

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v8, "  target parent path = "

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v17

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/gallery3d/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 153
    const-wide/16 v6, 0x0

    .line 155
    .local v6, totalSpace:J
    invoke-virtual/range {p3 .. p3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v9

    .local v9, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/android/gallery3d/data/Path;

    .line 157
    .local v12, itemPath:Lcom/android/gallery3d/data/Path;
    invoke-direct/range {p0 .. p0}, Lcom/android/gallery3d/util/PasteWorker;->getUserDecision()Z

    move-result v2

    if-nez v2, :cond_1

    .line 158
    const/4 v2, 0x0

    .line 193
    .end local v12           #itemPath:Lcom/android/gallery3d/data/Path;
    :goto_1
    return v2

    .line 160
    .restart local v12       #itemPath:Lcom/android/gallery3d/data/Path;
    :cond_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/gallery3d/util/PasteWorker;->mManager:Lcom/android/gallery3d/data/DataManager;

    invoke-virtual {v2, v12}, Lcom/android/gallery3d/data/DataManager;->getMediaObject(Lcom/android/gallery3d/data/Path;)Lcom/android/gallery3d/data/MediaObject;

    move-result-object v10

    check-cast v10, Lcom/android/gallery3d/data/MediaItem;

    .line 161
    .local v10, item:Lcom/android/gallery3d/data/MediaItem;
    new-instance v11, Ljava/io/File;

    invoke-virtual {v10}, Lcom/android/gallery3d/data/MediaItem;->getFilePath()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v11, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 164
    .local v11, itemFile:Ljava/io/File;
    invoke-virtual {v11}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_2

    .line 165
    const/4 v2, 0x0

    goto :goto_1

    .line 168
    :cond_2
    invoke-virtual {v11}, Ljava/io/File;->length()J

    move-result-wide v2

    add-long/2addr v6, v2

    .line 171
    new-instance v16, Ljava/io/File;

    invoke-virtual {v11}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 172
    .local v16, targetFile:Ljava/io/File;
    invoke-virtual/range {v16 .. v16}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 173
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/gallery3d/util/PasteWorker;->mSameNameFileCount:I

    add-int/lit8 v2, v2, 0x1

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/gallery3d/util/PasteWorker;->mSameNameFileCount:I

    goto :goto_0

    .line 178
    .end local v10           #item:Lcom/android/gallery3d/data/MediaItem;
    .end local v11           #itemFile:Ljava/io/File;
    .end local v12           #itemPath:Lcom/android/gallery3d/data/Path;
    .end local v16           #targetFile:Ljava/io/File;
    :cond_3
    new-instance v15, Ljava/io/File;

    move-object/from16 v0, v17

    invoke-direct {v15, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 179
    .local v15, targetDir:Ljava/io/File;
    move-object v13, v15

    .line 180
    .local v13, rootFile:Ljava/io/File;
    :goto_2
    invoke-virtual {v13}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_4

    .line 181
    invoke-virtual {v13}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v13

    goto :goto_2

    .line 183
    :cond_4
    invoke-virtual {v13}, Ljava/io/File;->getUsableSpace()J

    move-result-wide v4

    .line 184
    .local v4, spaceAvailable:J
    cmp-long v2, v4, v6

    if-gtz v2, :cond_5

    .line 185
    const/4 v3, 0x0

    move-object/from16 v2, p0

    move-object/from16 v8, p2

    invoke-direct/range {v2 .. v8}, Lcom/android/gallery3d/util/PasteWorker;->notifyEventNoSpace(IJJLcom/android/gallery3d/util/PasteWorker$PasteEventHandler;)Z

    move-result v2

    goto :goto_1

    .line 187
    :cond_5
    invoke-virtual {v15}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_6

    invoke-virtual {v15}, Ljava/io/File;->mkdirs()Z

    move-result v2

    if-nez v2, :cond_6

    .line 188
    const/4 v2, 0x0

    goto :goto_1

    .line 191
    :cond_6
    new-instance v14, Landroid/os/Bundle;

    invoke-direct {v14}, Landroid/os/Bundle;-><init>()V

    .line 192
    .local v14, spaceData:Landroid/os/Bundle;
    const-string v2, "key-volumeneed"

    invoke-virtual {v14, v2, v6, v7}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 193
    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v2, v3, v14, v1}, Lcom/android/gallery3d/util/PasteWorker;->notifyEvent(IILandroid/os/Bundle;Lcom/android/gallery3d/util/PasteWorker$PasteEventHandler;)Z

    move-result v2

    goto/16 :goto_1
.end method

.method public onPasteCanceled(Landroid/os/Bundle;Lcom/android/gallery3d/util/PasteWorker$PasteEventHandler;)V
    .locals 3
    .parameter "data"
    .parameter "eventHandler"

    .prologue
    .line 129
    const/4 v2, 0x1

    iput v2, p0, Lcom/android/gallery3d/util/PasteWorker;->mUserState:I

    .line 131
    invoke-virtual {p0}, Lcom/android/gallery3d/util/PasteWorker;->getCurrentPasteState()I

    move-result v0

    .line 132
    .local v0, currentPasteState:I
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 133
    .local v1, pasteStateData:Landroid/os/Bundle;
    const-string v2, "key-pastestate"

    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 134
    const/4 v2, 0x5

    invoke-interface {p2, v2, v1}, Lcom/android/gallery3d/util/PasteWorker$PasteEventHandler;->onPasteEvent(ILandroid/os/Bundle;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 135
    const/4 v2, 0x2

    iput v2, p0, Lcom/android/gallery3d/util/PasteWorker;->mUserState:I

    .line 140
    :goto_0
    iget-object v2, p0, Lcom/android/gallery3d/util/PasteWorker;->mLock:Lcom/android/gallery3d/util/SimpleLock;

    invoke-virtual {v2}, Lcom/android/gallery3d/util/SimpleLock;->notifyAllWaitingLock()V

    .line 141
    return-void

    .line 137
    :cond_0
    const/4 v2, 0x0

    iput v2, p0, Lcom/android/gallery3d/util/PasteWorker;->mUserState:I

    goto :goto_0
.end method

.method public onPasteComplete(Lcom/android/gallery3d/util/PasteWorker$PasteEventHandler;)V
    .locals 4
    .parameter "handler"

    .prologue
    .line 356
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 357
    .local v0, data:Landroid/os/Bundle;
    const-string v1, "key-pastedfilecount"

    iget v2, p0, Lcom/android/gallery3d/util/PasteWorker;->mFilePasted:I

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 358
    const-string v1, "key-pastestate"

    iget v2, p0, Lcom/android/gallery3d/util/PasteWorker;->mPasteState:I

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 359
    const/4 v1, 0x0

    invoke-interface {p1, v1, v0}, Lcom/android/gallery3d/util/PasteWorker$PasteEventHandler;->onPasteCompleteEvent(ILandroid/os/Bundle;)Z

    .line 361
    invoke-direct {p0}, Lcom/android/gallery3d/util/PasteWorker;->resetFlag()V

    .line 362
    return-void
.end method

.method public paste(Lcom/android/gallery3d/data/MediaItem;Ljava/lang/String;Lcom/android/gallery3d/util/PasteWorker$PasteEventHandler;)V
    .locals 3
    .parameter "item"
    .parameter "targetFileParent"
    .parameter "handler"

    .prologue
    .line 199
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 217
    :cond_0
    :goto_0
    return-void

    .line 203
    :cond_1
    invoke-virtual {p0}, Lcom/android/gallery3d/util/PasteWorker;->getCurrentPasteState()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 214
    const-string v0, "PasteWorker"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "the paste state is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/gallery3d/util/PasteWorker;->getCurrentPasteState()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", do nothing and return"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/gallery3d/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 205
    :pswitch_0
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/gallery3d/util/PasteWorker;->copyFile(Lcom/android/gallery3d/data/MediaItem;Ljava/lang/String;Lcom/android/gallery3d/util/PasteWorker$PasteEventHandler;)I

    goto :goto_0

    .line 209
    :pswitch_1
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/gallery3d/util/PasteWorker;->cutFile(Lcom/android/gallery3d/data/MediaItem;Ljava/lang/String;Lcom/android/gallery3d/util/PasteWorker$PasteEventHandler;)I

    goto :goto_0

    .line 203
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
