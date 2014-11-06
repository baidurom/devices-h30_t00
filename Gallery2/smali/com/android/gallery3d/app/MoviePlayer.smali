.class public Lcom/android/gallery3d/app/MoviePlayer;
.super Ljava/lang/Object;
.source "MoviePlayer.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnErrorListener;
.implements Landroid/media/MediaPlayer$OnCompletionListener;
.implements Landroid/media/MediaPlayer$OnBufferingUpdateListener;
.implements Landroid/media/MediaPlayer$OnPreparedListener;
.implements Lcom/android/gallery3d/app/ControllerOverlay$Listener;
.implements Lcom/android/gallery3d/app/ControllerOverlay$ListenerEx;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/gallery3d/app/MoviePlayer$AudioBecomingNoisyReceiver;,
        Lcom/android/gallery3d/app/MoviePlayer$ToastUtil;
    }
.end annotation


# static fields
.field private static final BLACK_TIMEOUT:J = 0x12cL

.field private static final CMDNAME:Ljava/lang/String; = "command"

.field private static final CMDPAUSE:Ljava/lang/String; = "pause"

.field public static final ERROR_ALREADY_CONNECTED:I = -0x3e8

.field public static final ERROR_DRM_NO_LICENSE:I = -0x7d1

.field public static final ERROR_END_OF_STREAM:I = -0x3f3

.field public static final ERROR_IO:I = -0x3ec

.field public static final ERROR_MALFORMED:I = -0x3ef

.field private static final KEYCODE_MEDIA_PAUSE:I = 0x7f

.field private static final KEYCODE_MEDIA_PLAY:I = 0x7e

.field private static final KEY_RESUMEABLE_TIME:Ljava/lang/String; = "resumeable-timeout"

.field private static final KEY_VIDEO_POSITION:Ljava/lang/String; = "video-position"

.field public static final MEDIA_ERROR_BAD_FILE:I = 0x104

.field public static final MEDIA_ERROR_CANNOT_CONNECT_TO_SERVER:I = 0x105

.field public static final MEDIA_ERROR_DRM_NOT_SUPPORTED:I = 0x107

.field public static final MEDIA_ERROR_INVALID_CONNECTION:I = 0x108

.field public static final MEDIA_ERROR_TYPE_NOT_SUPPORTED:I = 0x106

.field private static final MSG_ENABLE_VIDEO_SWITCH:I = 0x0

.field private static final PREFIXOFSDCARDFILE:Ljava/lang/String; = "file://"

.field private static final PREFIXOFSYSTEMFILE:Ljava/lang/String; = "content://"

.field private static final RESULT_OK:I = 0x0

.field private static final RESUMEABLE_TIMEOUT:J = 0x2bf20L

.field private static final SECOND_LAYER:I = 0x1

.field private static final SERVICECMD:Ljava/lang/String; = "com.android.music.musicservicecommand"

#the value of this static final field might be set in the static constructor
.field public static final SUPPROT_SUBTITLE_CONFIG:Z = false

.field private static final SWITCH_VIDEO_INTERVAL:I = 0x3e8

.field private static final TAG:Ljava/lang/String; = "MoviePlayer"


# instance fields
.field private RTSP_LIVESTREAM_LENGTH:I

.field private final mActionBar:Landroid/app/ActionBar;

.field private mActivity:Lcom/android/gallery3d/app/MovieActivity;

.field private final mAudioBecomingNoisyReceiver:Lcom/android/gallery3d/app/MoviePlayer$AudioBecomingNoisyReceiver;

.field private final mBookmarker:Lcom/android/gallery3d/app/Bookmarker;

.field private mContext:Landroid/content/Context;

.field private final mController:Lcom/android/gallery3d/app/MovieControllerOverlay;

.field private mCurrentUriIx:I

.field private mDragging:Z

.field private final mHandler:Landroid/os/Handler;

.field private mHasPaused:Z

.field private mIsHttpSdp:Z

.field private mIsLivestream:Z

.field private mIsPlayPauseDisable:Z

.field private mIsPrepared:Z

.field private mIsSavedInstanceNull:Z

.field private mIsStreamVideo:Z

.field private mLastSystemUiVis:I

.field private final mPlayingChecker:Ljava/lang/Runnable;

.field private final mProgressChecker:Ljava/lang/Runnable;

.field private final mRemoveBackground:Ljava/lang/Runnable;

.field private mRepeatCnt:I

.field private mResumeableTime:J

.field private final mRootView:Landroid/view/View;

.field private final mSdpFilePath:Ljava/lang/String;

.field private final mSdpFolderPath:Ljava/lang/String;

.field private mShowing:Z

.field private mStartPause:Z

.field private mSubTitleView:Lcn/real/device/SubTitleView;

.field private mSubtitleExists:Z

.field private mSubtitleService:Lcn/real/device/HelixSubtitleService;

.field private mSwitchVideoEnabled:Z

.field private mSwitchVideoHandler:Landroid/os/Handler;

.field private mTitles:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mUri:Landroid/net/Uri;

.field private mVideoDuration:I

.field private mVideoPosition:I

.field private mVideoUriStrings:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mVideoUris:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/net/Uri;",
            ">;"
        }
    .end annotation
.end field

.field private final mVideoView:Landroid/widget/VideoView;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 91
    const-string v0, "ro.config.hw_subtitle_support"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/android/gallery3d/app/MoviePlayer;->SUPPROT_SUBTITLE_CONFIG:Z

    return-void
.end method

.method public constructor <init>(Landroid/view/View;Lcom/android/gallery3d/app/MovieActivity;Landroid/net/Uri;Landroid/os/Bundle;ZI)V
    .locals 8
    .parameter "rootView"
    .parameter "movieActivity"
    .parameter "videoUri"
    .parameter "savedInstance"
    .parameter "canReplay"
    .parameter "startPosition"

    .prologue
    .line 261
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 104
    const/4 v4, 0x0

    iput-boolean v4, p0, Lcom/android/gallery3d/app/MoviePlayer;->mIsStreamVideo:Z

    .line 105
    const/4 v4, 0x0

    iput v4, p0, Lcom/android/gallery3d/app/MoviePlayer;->mVideoDuration:I

    .line 106
    const/4 v4, 0x1

    iput-boolean v4, p0, Lcom/android/gallery3d/app/MoviePlayer;->mSwitchVideoEnabled:Z

    .line 109
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, p0, Lcom/android/gallery3d/app/MoviePlayer;->mVideoUris:Ljava/util/List;

    .line 110
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, p0, Lcom/android/gallery3d/app/MoviePlayer;->mVideoUriStrings:Ljava/util/List;

    .line 111
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, p0, Lcom/android/gallery3d/app/MoviePlayer;->mTitles:Ljava/util/List;

    .line 112
    const/4 v4, -0x1

    iput v4, p0, Lcom/android/gallery3d/app/MoviePlayer;->mCurrentUriIx:I

    .line 113
    const/4 v4, 0x0

    iput v4, p0, Lcom/android/gallery3d/app/MoviePlayer;->mRepeatCnt:I

    .line 115
    const v4, 0x36ee80

    iput v4, p0, Lcom/android/gallery3d/app/MoviePlayer;->RTSP_LIVESTREAM_LENGTH:I

    .line 119
    const/4 v4, 0x0

    iput-boolean v4, p0, Lcom/android/gallery3d/app/MoviePlayer;->mIsSavedInstanceNull:Z

    .line 122
    const/4 v4, 0x0

    iput-boolean v4, p0, Lcom/android/gallery3d/app/MoviePlayer;->mIsPrepared:Z

    .line 161
    const/4 v4, 0x0

    iput-boolean v4, p0, Lcom/android/gallery3d/app/MoviePlayer;->mIsHttpSdp:Z

    .line 163
    new-instance v4, Landroid/os/Handler;

    invoke-direct {v4}, Landroid/os/Handler;-><init>()V

    iput-object v4, p0, Lcom/android/gallery3d/app/MoviePlayer;->mHandler:Landroid/os/Handler;

    .line 167
    const-wide v4, 0x7fffffffffffffffL

    iput-wide v4, p0, Lcom/android/gallery3d/app/MoviePlayer;->mResumeableTime:J

    .line 168
    const/4 v4, 0x0

    iput v4, p0, Lcom/android/gallery3d/app/MoviePlayer;->mVideoPosition:I

    .line 169
    const/4 v4, 0x0

    iput-boolean v4, p0, Lcom/android/gallery3d/app/MoviePlayer;->mHasPaused:Z

    .line 170
    const/4 v4, 0x0

    iput v4, p0, Lcom/android/gallery3d/app/MoviePlayer;->mLastSystemUiVis:I

    .line 179
    const-string v4, "ro.product.canplaypause"

    const-string v5, "false"

    invoke-static {v4, v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "true"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    iput-boolean v4, p0, Lcom/android/gallery3d/app/MoviePlayer;->mIsPlayPauseDisable:Z

    .line 181
    const/4 v4, 0x0

    iput-boolean v4, p0, Lcom/android/gallery3d/app/MoviePlayer;->mIsLivestream:Z

    .line 184
    const/4 v4, 0x0

    iput-boolean v4, p0, Lcom/android/gallery3d/app/MoviePlayer;->mSubtitleExists:Z

    .line 187
    const/4 v4, 0x0

    iput-boolean v4, p0, Lcom/android/gallery3d/app/MoviePlayer;->mStartPause:Z

    .line 190
    new-instance v4, Lcom/android/gallery3d/app/MoviePlayer$1;

    invoke-direct {v4, p0}, Lcom/android/gallery3d/app/MoviePlayer$1;-><init>(Lcom/android/gallery3d/app/MoviePlayer;)V

    iput-object v4, p0, Lcom/android/gallery3d/app/MoviePlayer;->mPlayingChecker:Ljava/lang/Runnable;

    .line 209
    new-instance v4, Lcom/android/gallery3d/app/MoviePlayer$2;

    invoke-direct {v4, p0}, Lcom/android/gallery3d/app/MoviePlayer$2;-><init>(Lcom/android/gallery3d/app/MoviePlayer;)V

    iput-object v4, p0, Lcom/android/gallery3d/app/MoviePlayer;->mRemoveBackground:Ljava/lang/Runnable;

    .line 236
    new-instance v4, Lcom/android/gallery3d/app/MoviePlayer$3;

    invoke-direct {v4, p0}, Lcom/android/gallery3d/app/MoviePlayer$3;-><init>(Lcom/android/gallery3d/app/MoviePlayer;)V

    iput-object v4, p0, Lcom/android/gallery3d/app/MoviePlayer;->mProgressChecker:Ljava/lang/Runnable;

    .line 436
    new-instance v4, Lcom/android/gallery3d/app/MoviePlayer$8;

    invoke-direct {v4, p0}, Lcom/android/gallery3d/app/MoviePlayer$8;-><init>(Lcom/android/gallery3d/app/MoviePlayer;)V

    iput-object v4, p0, Lcom/android/gallery3d/app/MoviePlayer;->mSwitchVideoHandler:Landroid/os/Handler;

    .line 262
    iput-object p2, p0, Lcom/android/gallery3d/app/MoviePlayer;->mActivity:Lcom/android/gallery3d/app/MovieActivity;

    .line 263
    invoke-virtual {p2}, Lcom/android/gallery3d/app/MovieActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    iput-object v4, p0, Lcom/android/gallery3d/app/MoviePlayer;->mContext:Landroid/content/Context;

    .line 264
    iput-object p1, p0, Lcom/android/gallery3d/app/MoviePlayer;->mRootView:Landroid/view/View;

    .line 265
    const v4, 0x7f100130

    invoke-virtual {p1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/VideoView;

    iput-object v4, p0, Lcom/android/gallery3d/app/MoviePlayer;->mVideoView:Landroid/widget/VideoView;

    .line 266
    new-instance v4, Lcom/android/gallery3d/app/Bookmarker;

    invoke-direct {v4, p2}, Lcom/android/gallery3d/app/Bookmarker;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Lcom/android/gallery3d/app/MoviePlayer;->mBookmarker:Lcom/android/gallery3d/app/Bookmarker;

    .line 267
    iput-object p3, p0, Lcom/android/gallery3d/app/MoviePlayer;->mUri:Landroid/net/Uri;

    .line 270
    new-instance v4, Ljava/io/File;

    iget-object v5, p0, Lcom/android/gallery3d/app/MoviePlayer;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v5

    iget-object v5, v5, Landroid/content/pm/ApplicationInfo;->dataDir:Ljava/lang/String;

    const-string v6, "temp"

    invoke-direct {v4, v5, v6}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/android/gallery3d/app/MoviePlayer;->mSdpFolderPath:Ljava/lang/String;

    .line 271
    new-instance v4, Ljava/io/File;

    iget-object v5, p0, Lcom/android/gallery3d/app/MoviePlayer;->mSdpFolderPath:Ljava/lang/String;

    const-string v6, "hw_sdp_temp.sdp"

    invoke-direct {v4, v5, v6}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/android/gallery3d/app/MoviePlayer;->mSdpFilePath:Ljava/lang/String;

    .line 274
    new-instance v4, Lcom/android/gallery3d/app/MovieControllerOverlay;

    iget-object v5, p0, Lcom/android/gallery3d/app/MoviePlayer;->mContext:Landroid/content/Context;

    invoke-direct {v4, v5}, Lcom/android/gallery3d/app/MovieControllerOverlay;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Lcom/android/gallery3d/app/MoviePlayer;->mController:Lcom/android/gallery3d/app/MovieControllerOverlay;

    .line 275
    check-cast p1, Landroid/view/ViewGroup;

    .end local p1
    iget-object v4, p0, Lcom/android/gallery3d/app/MoviePlayer;->mController:Lcom/android/gallery3d/app/MovieControllerOverlay;

    invoke-virtual {v4}, Lcom/android/gallery3d/app/MovieControllerOverlay;->getView()Landroid/view/View;

    move-result-object v4

    invoke-virtual {p1, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 276
    iget-object v4, p0, Lcom/android/gallery3d/app/MoviePlayer;->mController:Lcom/android/gallery3d/app/MovieControllerOverlay;

    invoke-virtual {v4, p0}, Lcom/android/gallery3d/app/MovieControllerOverlay;->setListener(Lcom/android/gallery3d/app/ControllerOverlay$Listener;)V

    .line 277
    iget-object v4, p0, Lcom/android/gallery3d/app/MoviePlayer;->mController:Lcom/android/gallery3d/app/MovieControllerOverlay;

    invoke-virtual {v4, p5}, Lcom/android/gallery3d/app/MovieControllerOverlay;->setCanReplay(Z)V

    .line 280
    iget-object v4, p0, Lcom/android/gallery3d/app/MoviePlayer;->mController:Lcom/android/gallery3d/app/MovieControllerOverlay;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Lcom/android/gallery3d/app/MovieControllerOverlay;->setCanScrub(Z)V

    .line 283
    iget-object v4, p0, Lcom/android/gallery3d/app/MoviePlayer;->mController:Lcom/android/gallery3d/app/MovieControllerOverlay;

    invoke-virtual {v4, p0}, Lcom/android/gallery3d/app/MovieControllerOverlay;->setListenerEx(Lcom/android/gallery3d/app/ControllerOverlay$ListenerEx;)V

    .line 284
    invoke-virtual {p2}, Lcom/android/gallery3d/app/MovieActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v4

    iput-object v4, p0, Lcom/android/gallery3d/app/MoviePlayer;->mActionBar:Landroid/app/ActionBar;

    .line 287
    invoke-virtual {p2}, Lcom/android/gallery3d/app/MovieActivity;->isStreamMedia()Z

    move-result v4

    iput-boolean v4, p0, Lcom/android/gallery3d/app/MoviePlayer;->mIsStreamVideo:Z

    .line 289
    iget-object v4, p0, Lcom/android/gallery3d/app/MoviePlayer;->mController:Lcom/android/gallery3d/app/MovieControllerOverlay;

    iget-boolean v5, p0, Lcom/android/gallery3d/app/MoviePlayer;->mIsStreamVideo:Z

    invoke-virtual {v4, v5}, Lcom/android/gallery3d/app/MovieControllerOverlay;->setStreamVideo(Z)V

    .line 290
    iget-object v4, p0, Lcom/android/gallery3d/app/MoviePlayer;->mVideoUris:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->clear()V

    .line 291
    iget-object v4, p0, Lcom/android/gallery3d/app/MoviePlayer;->mTitles:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->clear()V

    .line 293
    iget-boolean v4, p0, Lcom/android/gallery3d/app/MoviePlayer;->mIsStreamVideo:Z

    if-nez v4, :cond_0

    if-eqz p4, :cond_0

    invoke-static {}, Lcom/android/gallery3d/app/MovieActivity;->getStreamingcfg()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 294
    const-string v4, "uri-array"

    invoke-virtual {p4, v4}, Landroid/os/Bundle;->getStringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 295
    .local v3, uriArray:[Ljava/lang/String;
    const-string v4, "title-array"

    invoke-virtual {p4, v4}, Landroid/os/Bundle;->getStringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 296
    .local v2, titleArray:[Ljava/lang/String;
    const-string v4, "repeat_times"

    invoke-virtual {p4, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v4

    iput v4, p0, Lcom/android/gallery3d/app/MoviePlayer;->mRepeatCnt:I

    .line 297
    const-string v4, "savedInstanceStateIsNull"

    invoke-virtual {p4, v4}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v4

    iput-boolean v4, p0, Lcom/android/gallery3d/app/MoviePlayer;->mIsSavedInstanceNull:Z

    .line 298
    if-eqz v3, :cond_0

    if-eqz v2, :cond_0

    .line 300
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    array-length v4, v3

    if-ge v1, v4, :cond_0

    .line 301
    iget-object v4, p0, Lcom/android/gallery3d/app/MoviePlayer;->mVideoUris:Ljava/util/List;

    aget-object v5, v3, v1

    invoke-static {v5}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 302
    iget-object v4, p0, Lcom/android/gallery3d/app/MoviePlayer;->mTitles:Ljava/util/List;

    aget-object v5, v2, v1

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 300
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 307
    .end local v1           #i:I
    .end local v2           #titleArray:[Ljava/lang/String;
    .end local v3           #uriArray:[Ljava/lang/String;
    :cond_0
    iget-boolean v4, p0, Lcom/android/gallery3d/app/MoviePlayer;->mIsSavedInstanceNull:Z

    if-eqz v4, :cond_1

    .line 308
    const/4 p4, 0x0

    .line 311
    :cond_1
    invoke-static {}, Lcom/android/gallery3d/app/MovieActivity;->getStreamingcfg()Z

    move-result v4

    if-eqz v4, :cond_2

    iget-boolean v4, p0, Lcom/android/gallery3d/app/MoviePlayer;->mIsStreamVideo:Z

    if-nez v4, :cond_2

    iget-object v4, p0, Lcom/android/gallery3d/app/MoviePlayer;->mUri:Landroid/net/Uri;

    invoke-virtual {v4}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "file://"

    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 313
    invoke-virtual {p0, p2}, Lcom/android/gallery3d/app/MoviePlayer;->prepareVideoList(Lcom/android/gallery3d/app/MovieActivity;)V

    .line 315
    :cond_2
    const-string v4, "MoviePlayer"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "mCurrentUriIx="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/android/gallery3d/app/MoviePlayer;->mCurrentUriIx:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " uri = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/gallery3d/app/MoviePlayer;->mUri:Landroid/net/Uri;

    invoke-virtual {v6}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/gallery3d/app/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 316
    const-string v4, "MoviePlayer"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "video count = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/gallery3d/app/MoviePlayer;->mVideoUris:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/gallery3d/app/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 319
    iget-object v4, p0, Lcom/android/gallery3d/app/MoviePlayer;->mVideoView:Landroid/widget/VideoView;

    invoke-virtual {v4, p0}, Landroid/widget/VideoView;->setOnBufferingUpdateListener(Landroid/media/MediaPlayer$OnBufferingUpdateListener;)V

    .line 320
    iget-object v4, p0, Lcom/android/gallery3d/app/MoviePlayer;->mVideoView:Landroid/widget/VideoView;

    invoke-virtual {v4, p0}, Landroid/widget/VideoView;->setOnPreparedListener(Landroid/media/MediaPlayer$OnPreparedListener;)V

    .line 322
    iget-object v4, p0, Lcom/android/gallery3d/app/MoviePlayer;->mVideoView:Landroid/widget/VideoView;

    invoke-virtual {v4, p0}, Landroid/widget/VideoView;->setOnErrorListener(Landroid/media/MediaPlayer$OnErrorListener;)V

    .line 323
    iget-object v4, p0, Lcom/android/gallery3d/app/MoviePlayer;->mVideoView:Landroid/widget/VideoView;

    invoke-virtual {v4, p0}, Landroid/widget/VideoView;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    .line 324
    sget-boolean v4, Lcom/android/gallery3d/app/MoviePlayer;->SUPPROT_SUBTITLE_CONFIG:Z

    if-eqz v4, :cond_3

    .line 325
    iget-object v4, p0, Lcom/android/gallery3d/app/MoviePlayer;->mUri:Landroid/net/Uri;

    invoke-direct {p0, v4}, Lcom/android/gallery3d/app/MoviePlayer;->initSubTitleView(Landroid/net/Uri;)V

    .line 327
    :cond_3
    iget-object v4, p0, Lcom/android/gallery3d/app/MoviePlayer;->mVideoView:Landroid/widget/VideoView;

    iget-object v5, p0, Lcom/android/gallery3d/app/MoviePlayer;->mUri:Landroid/net/Uri;

    invoke-virtual {v4, v5}, Landroid/widget/VideoView;->setVideoURI(Landroid/net/Uri;)V

    .line 328
    iget-object v4, p0, Lcom/android/gallery3d/app/MoviePlayer;->mVideoView:Landroid/widget/VideoView;

    new-instance v5, Lcom/android/gallery3d/app/MoviePlayer$4;

    invoke-direct {v5, p0}, Lcom/android/gallery3d/app/MoviePlayer$4;-><init>(Lcom/android/gallery3d/app/MoviePlayer;)V

    invoke-virtual {v4, v5}, Landroid/widget/VideoView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 341
    iget-object v4, p0, Lcom/android/gallery3d/app/MoviePlayer;->mVideoView:Landroid/widget/VideoView;

    new-instance v5, Lcom/android/gallery3d/app/MoviePlayer$5;

    invoke-direct {v5, p0}, Lcom/android/gallery3d/app/MoviePlayer$5;-><init>(Lcom/android/gallery3d/app/MoviePlayer;)V

    const-wide/16 v6, 0x12c

    invoke-virtual {v4, v5, v6, v7}, Landroid/widget/VideoView;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 352
    iget-object v4, p0, Lcom/android/gallery3d/app/MoviePlayer;->mVideoView:Landroid/widget/VideoView;

    new-instance v5, Lcom/android/gallery3d/app/MoviePlayer$6;

    invoke-direct {v5, p0}, Lcom/android/gallery3d/app/MoviePlayer$6;-><init>(Lcom/android/gallery3d/app/MoviePlayer;)V

    const-wide/16 v6, 0x1f4

    invoke-virtual {v4, v5, v6, v7}, Landroid/widget/VideoView;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 363
    invoke-direct {p0}, Lcom/android/gallery3d/app/MoviePlayer;->setOnSystemUiVisibilityChangeListener()V

    .line 365
    const/4 v4, 0x0

    invoke-direct {p0, v4}, Lcom/android/gallery3d/app/MoviePlayer;->showSystemUi(Z)V

    .line 367
    new-instance v4, Lcom/android/gallery3d/app/MoviePlayer$AudioBecomingNoisyReceiver;

    const/4 v5, 0x0

    invoke-direct {v4, p0, v5}, Lcom/android/gallery3d/app/MoviePlayer$AudioBecomingNoisyReceiver;-><init>(Lcom/android/gallery3d/app/MoviePlayer;Lcom/android/gallery3d/app/MoviePlayer$1;)V

    iput-object v4, p0, Lcom/android/gallery3d/app/MoviePlayer;->mAudioBecomingNoisyReceiver:Lcom/android/gallery3d/app/MoviePlayer$AudioBecomingNoisyReceiver;

    .line 368
    iget-object v4, p0, Lcom/android/gallery3d/app/MoviePlayer;->mAudioBecomingNoisyReceiver:Lcom/android/gallery3d/app/MoviePlayer$AudioBecomingNoisyReceiver;

    invoke-virtual {v4}, Lcom/android/gallery3d/app/MoviePlayer$AudioBecomingNoisyReceiver;->register()V

    .line 370
    new-instance v1, Landroid/content/Intent;

    const-string v4, "com.android.music.musicservicecommand"

    invoke-direct {v1, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 371
    .local v1, i:Landroid/content/Intent;
    const-string v4, "command"

    const-string v5, "pause"

    invoke-virtual {v1, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 372
    invoke-virtual {p2, v1}, Lcom/android/gallery3d/app/MovieActivity;->sendBroadcast(Landroid/content/Intent;)V

    .line 374
    if-eqz p4, :cond_5

    .line 375
    const-string v4, "video-position"

    const/4 v5, 0x0

    invoke-virtual {p4, v4, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v4

    iput v4, p0, Lcom/android/gallery3d/app/MoviePlayer;->mVideoPosition:I

    .line 376
    const-string v4, "resumeable-timeout"

    const-wide v5, 0x7fffffffffffffffL

    invoke-virtual {p4, v4, v5, v6}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v4

    iput-wide v4, p0, Lcom/android/gallery3d/app/MoviePlayer;->mResumeableTime:J

    .line 377
    iget-object v4, p0, Lcom/android/gallery3d/app/MoviePlayer;->mVideoView:Landroid/widget/VideoView;

    invoke-virtual {v4}, Landroid/widget/VideoView;->start()V

    .line 378
    iget-object v4, p0, Lcom/android/gallery3d/app/MoviePlayer;->mVideoView:Landroid/widget/VideoView;

    invoke-virtual {v4}, Landroid/widget/VideoView;->suspend()V

    .line 379
    const/4 v4, 0x1

    iput-boolean v4, p0, Lcom/android/gallery3d/app/MoviePlayer;->mHasPaused:Z

    .line 391
    :cond_4
    :goto_1
    return-void

    .line 381
    :cond_5
    iget-object v4, p0, Lcom/android/gallery3d/app/MoviePlayer;->mBookmarker:Lcom/android/gallery3d/app/Bookmarker;

    iget-object v5, p0, Lcom/android/gallery3d/app/MoviePlayer;->mUri:Landroid/net/Uri;

    invoke-virtual {v4, v5}, Lcom/android/gallery3d/app/Bookmarker;->getBookmark(Landroid/net/Uri;)Ljava/lang/Integer;

    move-result-object v0

    .line 382
    .local v0, bookmark:Ljava/lang/Integer;
    if-eqz v0, :cond_6

    const/4 v4, -0x1

    if-ne p6, v4, :cond_6

    .line 383
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-direct {p0, p2, v4}, Lcom/android/gallery3d/app/MoviePlayer;->showResumeDialog(Landroid/content/Context;I)V

    goto :goto_1

    .line 385
    :cond_6
    invoke-direct {p0}, Lcom/android/gallery3d/app/MoviePlayer;->startVideo()V

    .line 386
    if-lez p6, :cond_4

    .line 387
    iget-object v4, p0, Lcom/android/gallery3d/app/MoviePlayer;->mVideoView:Landroid/widget/VideoView;

    invoke-virtual {v4, p6}, Landroid/widget/VideoView;->seekTo(I)V

    goto :goto_1
.end method

.method static synthetic access$000(Lcom/android/gallery3d/app/MoviePlayer;)Landroid/widget/VideoView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 81
    iget-object v0, p0, Lcom/android/gallery3d/app/MoviePlayer;->mVideoView:Landroid/widget/VideoView;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/gallery3d/app/MoviePlayer;)Lcom/android/gallery3d/app/MovieControllerOverlay;
    .locals 1
    .parameter "x0"

    .prologue
    .line 81
    iget-object v0, p0, Lcom/android/gallery3d/app/MoviePlayer;->mController:Lcom/android/gallery3d/app/MovieControllerOverlay;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/gallery3d/app/MoviePlayer;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 81
    iget-boolean v0, p0, Lcom/android/gallery3d/app/MoviePlayer;->mStartPause:Z

    return v0
.end method

.method static synthetic access$1002(Lcom/android/gallery3d/app/MoviePlayer;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 81
    iput-boolean p1, p0, Lcom/android/gallery3d/app/MoviePlayer;->mStartPause:Z

    return p1
.end method

.method static synthetic access$1100(Lcom/android/gallery3d/app/MoviePlayer;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 81
    invoke-direct {p0}, Lcom/android/gallery3d/app/MoviePlayer;->pauseVideo()V

    return-void
.end method

.method static synthetic access$1300(Lcom/android/gallery3d/app/MoviePlayer;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 81
    iget v0, p0, Lcom/android/gallery3d/app/MoviePlayer;->mLastSystemUiVis:I

    return v0
.end method

.method static synthetic access$1302(Lcom/android/gallery3d/app/MoviePlayer;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 81
    iput p1, p0, Lcom/android/gallery3d/app/MoviePlayer;->mLastSystemUiVis:I

    return p1
.end method

.method static synthetic access$1400(Lcom/android/gallery3d/app/MoviePlayer;)Ljava/lang/Runnable;
    .locals 1
    .parameter "x0"

    .prologue
    .line 81
    iget-object v0, p0, Lcom/android/gallery3d/app/MoviePlayer;->mRemoveBackground:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/android/gallery3d/app/MoviePlayer;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 81
    iget-boolean v0, p0, Lcom/android/gallery3d/app/MoviePlayer;->mSubtitleExists:Z

    return v0
.end method

.method static synthetic access$1602(Lcom/android/gallery3d/app/MoviePlayer;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 81
    iput-boolean p1, p0, Lcom/android/gallery3d/app/MoviePlayer;->mSwitchVideoEnabled:Z

    return p1
.end method

.method static synthetic access$1800(Lcom/android/gallery3d/app/MoviePlayer;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 81
    invoke-direct {p0}, Lcom/android/gallery3d/app/MoviePlayer;->startVideo()V

    return-void
.end method

.method static synthetic access$1900(Lcom/android/gallery3d/app/MoviePlayer;)Lcn/real/device/HelixSubtitleService;
    .locals 1
    .parameter "x0"

    .prologue
    .line 81
    iget-object v0, p0, Lcom/android/gallery3d/app/MoviePlayer;->mSubtitleService:Lcn/real/device/HelixSubtitleService;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/gallery3d/app/MoviePlayer;)Ljava/lang/Runnable;
    .locals 1
    .parameter "x0"

    .prologue
    .line 81
    iget-object v0, p0, Lcom/android/gallery3d/app/MoviePlayer;->mPlayingChecker:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$2000(Lcom/android/gallery3d/app/MoviePlayer;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 81
    iget-object v0, p0, Lcom/android/gallery3d/app/MoviePlayer;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/gallery3d/app/MoviePlayer;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 81
    iget-object v0, p0, Lcom/android/gallery3d/app/MoviePlayer;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/gallery3d/app/MoviePlayer;)Landroid/view/View;
    .locals 1
    .parameter "x0"

    .prologue
    .line 81
    iget-object v0, p0, Lcom/android/gallery3d/app/MoviePlayer;->mRootView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/gallery3d/app/MoviePlayer;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 81
    invoke-direct {p0}, Lcom/android/gallery3d/app/MoviePlayer;->setProgress()I

    move-result v0

    return v0
.end method

.method static synthetic access$600(Lcom/android/gallery3d/app/MoviePlayer;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 81
    iget-boolean v0, p0, Lcom/android/gallery3d/app/MoviePlayer;->mIsStreamVideo:Z

    return v0
.end method

.method static synthetic access$700(Lcom/android/gallery3d/app/MoviePlayer;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 81
    iget-boolean v0, p0, Lcom/android/gallery3d/app/MoviePlayer;->mIsLivestream:Z

    return v0
.end method

.method static synthetic access$702(Lcom/android/gallery3d/app/MoviePlayer;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 81
    iput-boolean p1, p0, Lcom/android/gallery3d/app/MoviePlayer;->mIsLivestream:Z

    return p1
.end method

.method static synthetic access$800(Lcom/android/gallery3d/app/MoviePlayer;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 81
    iget-boolean v0, p0, Lcom/android/gallery3d/app/MoviePlayer;->mIsPlayPauseDisable:Z

    return v0
.end method

.method static synthetic access$900(Lcom/android/gallery3d/app/MoviePlayer;)Ljava/lang/Runnable;
    .locals 1
    .parameter "x0"

    .prologue
    .line 81
    iget-object v0, p0, Lcom/android/gallery3d/app/MoviePlayer;->mProgressChecker:Ljava/lang/Runnable;

    return-object v0
.end method

.method private deleteFile(Ljava/io/File;)V
    .locals 3
    .parameter "file"

    .prologue
    .line 789
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 790
    invoke-virtual {p1}, Ljava/io/File;->isFile()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 792
    :try_start_0
    invoke-virtual {p1}, Ljava/io/File;->delete()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 802
    :cond_0
    :goto_0
    :try_start_1
    invoke-virtual {p1}, Ljava/io/File;->delete()Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 806
    :cond_1
    :goto_1
    return-void

    .line 795
    :cond_2
    invoke-virtual {p1}, Ljava/io/File;->isDirectory()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 796
    invoke-virtual {p1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    .line 797
    .local v0, files:[Ljava/io/File;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_2
    array-length v2, v0

    if-ge v1, v2, :cond_0

    .line 798
    aget-object v2, v0, v1

    invoke-direct {p0, v2}, Lcom/android/gallery3d/app/MoviePlayer;->deleteFile(Ljava/io/File;)V

    .line 797
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 793
    .end local v0           #files:[Ljava/io/File;
    .end local v1           #i:I
    :catch_0
    move-exception v2

    goto :goto_0

    .line 803
    :catch_1
    move-exception v2

    goto :goto_1
.end method

.method private getSubtitleFilePath(Ljava/lang/String;)Ljava/lang/String;
    .locals 12
    .parameter "filePath"

    .prologue
    const/4 v8, 0x0

    const/4 v11, 0x0

    .line 1071
    if-nez p1, :cond_1

    move-object v6, v8

    .line 1087
    :cond_0
    :goto_0
    return-object v6

    .line 1074
    :cond_1
    const/4 v6, 0x0

    .line 1076
    .local v6, subtitleFilePath:Ljava/lang/String;
    const/4 v9, 0x5

    new-array v0, v9, [Ljava/lang/String;

    const-string v9, ".srt"

    aput-object v9, v0, v11

    const/4 v9, 0x1

    const-string v10, ".smi"

    aput-object v10, v0, v9

    const/4 v9, 0x2

    const-string v10, ".sub"

    aput-object v10, v0, v9

    const/4 v9, 0x3

    const-string v10, ".ssa"

    aput-object v10, v0, v9

    const/4 v9, 0x4

    const-string v10, ".ass"

    aput-object v10, v0, v9

    .line 1077
    .local v0, SUFFIX:[Ljava/lang/String;
    const/16 v9, 0x2e

    invoke-virtual {p1, v9}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v2

    .line 1078
    .local v2, endIndex:I
    if-lez v2, :cond_2

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v9

    add-int/lit8 v9, v9, -0x1

    if-ge v2, v9, :cond_2

    .line 1079
    move-object v1, v0

    .local v1, arr$:[Ljava/lang/String;
    array-length v5, v1

    .local v5, len$:I
    const/4 v4, 0x0

    .local v4, i$:I
    :goto_1
    if-ge v4, v5, :cond_2

    aget-object v7, v1, v4

    .line 1080
    .local v7, suffix:Ljava/lang/String;
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v11, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 1081
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1082
    .local v3, file:Ljava/io/File;
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v9

    if-nez v9, :cond_0

    .line 1079
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .end local v1           #arr$:[Ljava/lang/String;
    .end local v3           #file:Ljava/io/File;
    .end local v4           #i$:I
    .end local v5           #len$:I
    .end local v7           #suffix:Ljava/lang/String;
    :cond_2
    move-object v6, v8

    .line 1087
    goto :goto_0
.end method

.method private initSubTitleView(Landroid/net/Uri;)V
    .locals 8
    .parameter "fileUri"

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x1

    const/4 v5, -0x1

    .line 1022
    if-nez p1, :cond_1

    .line 1067
    :cond_0
    :goto_0
    return-void

    .line 1023
    :cond_1
    iget-object v3, p0, Lcom/android/gallery3d/app/MoviePlayer;->mContext:Landroid/content/Context;

    invoke-static {v3, p1}, Lcom/android/gallery3d/util/GalleryUtils;->convertUriToPath(Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v0

    .line 1024
    .local v0, filePath:Ljava/lang/String;
    invoke-direct {p0, v0}, Lcom/android/gallery3d/app/MoviePlayer;->getSubtitleFilePath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1025
    .local v2, subtitleFilename:Ljava/lang/String;
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_0

    .line 1026
    iput-boolean v6, p0, Lcom/android/gallery3d/app/MoviePlayer;->mSubtitleExists:Z

    .line 1028
    iget-object v3, p0, Lcom/android/gallery3d/app/MoviePlayer;->mContext:Landroid/content/Context;

    const v4, 0x7f04007a

    invoke-static {v3, v4, v7}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcn/real/device/SubTitleView;

    iput-object v3, p0, Lcom/android/gallery3d/app/MoviePlayer;->mSubTitleView:Lcn/real/device/SubTitleView;

    .line 1029
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v1, v5, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 1030
    .local v1, params:Landroid/widget/LinearLayout$LayoutParams;
    iget-object v3, p0, Lcom/android/gallery3d/app/MoviePlayer;->mRootView:Landroid/view/View;

    check-cast v3, Landroid/view/ViewGroup;

    iget-object v4, p0, Lcom/android/gallery3d/app/MoviePlayer;->mSubTitleView:Lcn/real/device/SubTitleView;

    invoke-virtual {v3, v4, v6, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 1031
    new-instance v3, Lcn/real/device/HelixSubtitleService;

    invoke-direct {v3}, Lcn/real/device/HelixSubtitleService;-><init>()V

    iput-object v3, p0, Lcom/android/gallery3d/app/MoviePlayer;->mSubtitleService:Lcn/real/device/HelixSubtitleService;

    .line 1033
    iget-object v3, p0, Lcom/android/gallery3d/app/MoviePlayer;->mSubtitleService:Lcn/real/device/HelixSubtitleService;

    invoke-virtual {v3, v2}, Lcn/real/device/HelixSubtitleService;->SetMediaURL(Ljava/lang/String;)I

    move-result v3

    if-nez v3, :cond_2

    .line 1034
    iget-object v3, p0, Lcom/android/gallery3d/app/MoviePlayer;->mSubtitleService:Lcn/real/device/HelixSubtitleService;

    iget-object v4, p0, Lcom/android/gallery3d/app/MoviePlayer;->mSubTitleView:Lcn/real/device/SubTitleView;

    invoke-virtual {v3, v4}, Lcn/real/device/HelixSubtitleService;->SetView(Landroid/view/View;)I

    .line 1035
    iget-object v3, p0, Lcom/android/gallery3d/app/MoviePlayer;->mVideoView:Landroid/widget/VideoView;

    new-instance v4, Lcom/android/gallery3d/app/MoviePlayer$13;

    invoke-direct {v4, p0}, Lcom/android/gallery3d/app/MoviePlayer$13;-><init>(Lcom/android/gallery3d/app/MoviePlayer;)V

    invoke-static {v3, v4}, Lcom/huawei/android/widget/VideoViewEx;->setSTCallback(Landroid/widget/VideoView;Lcom/huawei/android/widget/VideoViewEx$STCallbackEx;)V

    goto :goto_0

    .line 1062
    :cond_2
    iput-object v7, p0, Lcom/android/gallery3d/app/MoviePlayer;->mSubtitleService:Lcn/real/device/HelixSubtitleService;

    .line 1063
    iget-object v3, p0, Lcom/android/gallery3d/app/MoviePlayer;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/android/gallery3d/app/MoviePlayer;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0d035b

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-static {v3, v4, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method

.method private static isMediaKey(I)Z
    .locals 1
    .parameter "keyCode"

    .prologue
    .line 1186
    const/16 v0, 0x4f

    if-eq p0, v0, :cond_0

    const/16 v0, 0x58

    if-eq p0, v0, :cond_0

    const/16 v0, 0x57

    if-eq p0, v0, :cond_0

    const/16 v0, 0x55

    if-eq p0, v0, :cond_0

    const/16 v0, 0x7e

    if-eq p0, v0, :cond_0

    const/16 v0, 0x7f

    if-ne p0, v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private pauseVideo()V
    .locals 2

    .prologue
    .line 902
    iget-object v0, p0, Lcom/android/gallery3d/app/MoviePlayer;->mVideoView:Landroid/widget/VideoView;

    invoke-virtual {v0}, Landroid/widget/VideoView;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 903
    iget-object v0, p0, Lcom/android/gallery3d/app/MoviePlayer;->mVideoView:Landroid/widget/VideoView;

    invoke-virtual {v0}, Landroid/widget/VideoView;->getCurrentPosition()I

    move-result v0

    iput v0, p0, Lcom/android/gallery3d/app/MoviePlayer;->mVideoPosition:I

    .line 906
    :cond_0
    iget-object v0, p0, Lcom/android/gallery3d/app/MoviePlayer;->mVideoView:Landroid/widget/VideoView;

    invoke-virtual {v0}, Landroid/widget/VideoView;->canPause()Z

    move-result v0

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/android/gallery3d/app/MoviePlayer;->mIsPrepared:Z

    if-eqz v0, :cond_1

    .line 907
    const-string v0, "MoviePlayer"

    const-string v1, "mIsPrepared is true and canPause is false"

    invoke-static {v0, v1}, Lcom/android/gallery3d/app/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 914
    :goto_0
    return-void

    .line 912
    :cond_1
    iget-object v0, p0, Lcom/android/gallery3d/app/MoviePlayer;->mVideoView:Landroid/widget/VideoView;

    invoke-virtual {v0}, Landroid/widget/VideoView;->pause()V

    .line 913
    iget-object v0, p0, Lcom/android/gallery3d/app/MoviePlayer;->mController:Lcom/android/gallery3d/app/MovieControllerOverlay;

    invoke-virtual {v0}, Lcom/android/gallery3d/app/MovieControllerOverlay;->showPaused()V

    goto :goto_0
.end method

.method private playVideo()V
    .locals 1

    .prologue
    .line 895
    iget-object v0, p0, Lcom/android/gallery3d/app/MoviePlayer;->mVideoView:Landroid/widget/VideoView;

    invoke-virtual {v0}, Landroid/widget/VideoView;->start()V

    .line 896
    iget-object v0, p0, Lcom/android/gallery3d/app/MoviePlayer;->mController:Lcom/android/gallery3d/app/MovieControllerOverlay;

    invoke-virtual {v0}, Lcom/android/gallery3d/app/MovieControllerOverlay;->showPlaying()V

    .line 897
    invoke-direct {p0}, Lcom/android/gallery3d/app/MoviePlayer;->setProgress()I

    .line 898
    return-void
.end method

.method private setOnSystemUiVisibilityChangeListener()V
    .locals 2
    .annotation build Landroid/annotation/TargetApi;
        value = 0x10
    .end annotation

    .prologue
    .line 395
    sget-boolean v0, Lcom/android/gallery3d/common/ApiHelper;->HAS_VIEW_SYSTEM_UI_FLAG_HIDE_NAVIGATION:Z

    if-nez v0, :cond_0

    .line 433
    :goto_0
    return-void

    .line 400
    :cond_0
    iget-object v0, p0, Lcom/android/gallery3d/app/MoviePlayer;->mVideoView:Landroid/widget/VideoView;

    new-instance v1, Lcom/android/gallery3d/app/MoviePlayer$7;

    invoke-direct {v1, p0}, Lcom/android/gallery3d/app/MoviePlayer$7;-><init>(Lcom/android/gallery3d/app/MoviePlayer;)V

    invoke-virtual {v0, v1}, Landroid/widget/VideoView;->setOnSystemUiVisibilityChangeListener(Landroid/view/View$OnSystemUiVisibilityChangeListener;)V

    goto :goto_0
.end method

.method private setProgress()I
    .locals 4

    .prologue
    const/4 v2, 0x0

    .line 825
    iget-boolean v3, p0, Lcom/android/gallery3d/app/MoviePlayer;->mDragging:Z

    if-nez v3, :cond_0

    iget-boolean v3, p0, Lcom/android/gallery3d/app/MoviePlayer;->mShowing:Z

    if-nez v3, :cond_2

    :cond_0
    move v1, v2

    .line 838
    :cond_1
    :goto_0
    return v1

    .line 828
    :cond_2
    iget-object v3, p0, Lcom/android/gallery3d/app/MoviePlayer;->mVideoView:Landroid/widget/VideoView;

    invoke-virtual {v3}, Landroid/widget/VideoView;->getCurrentPosition()I

    move-result v1

    .line 829
    .local v1, position:I
    iget-object v3, p0, Lcom/android/gallery3d/app/MoviePlayer;->mVideoView:Landroid/widget/VideoView;

    invoke-virtual {v3}, Landroid/widget/VideoView;->getDuration()I

    move-result v0

    .line 831
    .local v0, duration:I
    iget-boolean v3, p0, Lcom/android/gallery3d/app/MoviePlayer;->mHasPaused:Z

    if-eqz v3, :cond_3

    if-nez v0, :cond_3

    .line 832
    iget v0, p0, Lcom/android/gallery3d/app/MoviePlayer;->mVideoDuration:I

    .line 834
    :cond_3
    iget-object v3, p0, Lcom/android/gallery3d/app/MoviePlayer;->mVideoView:Landroid/widget/VideoView;

    invoke-virtual {v3}, Landroid/widget/VideoView;->isPlaying()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 835
    iget-object v3, p0, Lcom/android/gallery3d/app/MoviePlayer;->mController:Lcom/android/gallery3d/app/MovieControllerOverlay;

    invoke-virtual {v3, v1, v0, v2, v2}, Lcom/android/gallery3d/app/MovieControllerOverlay;->setTimes(IIII)V

    goto :goto_0
.end method

.method private showErrorDialog(Ljava/lang/String;)V
    .locals 3
    .parameter "errorMessage"

    .prologue
    .line 694
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/android/gallery3d/app/MoviePlayer;->mActivity:Lcom/android/gallery3d/app/MovieActivity;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 695
    .local v0, builder:Landroid/app/AlertDialog$Builder;
    invoke-virtual {v0, p1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 696
    const v1, 0x7f0d0490

    new-instance v2, Lcom/android/gallery3d/app/MoviePlayer$9;

    invoke-direct {v2, p0}, Lcom/android/gallery3d/app/MoviePlayer$9;-><init>(Lcom/android/gallery3d/app/MoviePlayer;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 703
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 704
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 705
    return-void
.end method

.method private showResumeDialog(Landroid/content/Context;I)V
    .locals 5
    .parameter "context"
    .parameter "bookmark"

    .prologue
    .line 708
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 709
    .local v0, builder:Landroid/app/AlertDialog$Builder;
    const v1, 0x7f0d0247

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 710
    const v1, 0x7f0d0248

    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    div-int/lit16 v4, p2, 0x3e8

    invoke-static {p1, v4}, Lcom/android/gallery3d/util/GalleryUtils;->formatDuration(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 713
    new-instance v1, Lcom/android/gallery3d/app/MoviePlayer$10;

    invoke-direct {v1, p0}, Lcom/android/gallery3d/app/MoviePlayer$10;-><init>(Lcom/android/gallery3d/app/MoviePlayer;)V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    .line 719
    const v1, 0x7f0d0249

    new-instance v2, Lcom/android/gallery3d/app/MoviePlayer$11;

    invoke-direct {v2, p0, p2}, Lcom/android/gallery3d/app/MoviePlayer$11;-><init>(Lcom/android/gallery3d/app/MoviePlayer;I)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 727
    const v1, 0x7f0d024e

    new-instance v2, Lcom/android/gallery3d/app/MoviePlayer$12;

    invoke-direct {v2, p0}, Lcom/android/gallery3d/app/MoviePlayer$12;-><init>(Lcom/android/gallery3d/app/MoviePlayer;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 734
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 735
    return-void
.end method

.method private showSystemUi(Z)V
    .locals 3
    .parameter "visible"
    .annotation build Landroid/annotation/TargetApi;
        value = 0x10
    .end annotation

    .prologue
    .line 664
    sget-boolean v1, Lcom/android/gallery3d/common/ApiHelper;->HAS_VIEW_SYSTEM_UI_FLAG_LAYOUT_STABLE:Z

    if-nez v1, :cond_0

    .line 679
    :goto_0
    return-void

    .line 666
    :cond_0
    const/16 v0, 0x700

    .line 669
    .local v0, flag:I
    if-nez p1, :cond_1

    .line 671
    or-int/lit8 v0, v0, 0x7

    .line 675
    :cond_1
    iget-object v1, p0, Lcom/android/gallery3d/app/MoviePlayer;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->orientation:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_2

    .line 676
    iget-object v1, p0, Lcom/android/gallery3d/app/MoviePlayer;->mActivity:Lcom/android/gallery3d/app/MovieActivity;

    invoke-virtual {v1}, Lcom/android/gallery3d/app/MovieActivity;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/16 v2, 0x400

    invoke-virtual {v1, v2}, Landroid/view/Window;->clearFlags(I)V

    .line 678
    :cond_2
    iget-object v1, p0, Lcom/android/gallery3d/app/MoviePlayer;->mVideoView:Landroid/widget/VideoView;

    invoke-virtual {v1, v0}, Landroid/widget/VideoView;->setSystemUiVisibility(I)V

    goto :goto_0
.end method

.method private startVideo()V
    .locals 10

    .prologue
    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 852
    iget-object v8, p0, Lcom/android/gallery3d/app/MoviePlayer;->mUri:Landroid/net/Uri;

    invoke-virtual {v8}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v4

    .line 855
    .local v4, scheme:Ljava/lang/String;
    const-string v8, "file"

    invoke-virtual {v8, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_3

    iget-object v8, p0, Lcom/android/gallery3d/app/MoviePlayer;->mUri:Landroid/net/Uri;

    invoke-virtual {v8}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v8

    const-string v9, ".sdp"

    invoke-virtual {v8, v9}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_3

    move v1, v6

    .line 857
    .local v1, isLocalSDPFile:Z
    :goto_0
    iget-object v8, p0, Lcom/android/gallery3d/app/MoviePlayer;->mUri:Landroid/net/Uri;

    invoke-virtual {v8}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    .line 858
    .local v2, lowerCaseUri:Ljava/lang/String;
    const/16 v8, 0x3f

    invoke-virtual {v2, v8}, Ljava/lang/String;->indexOf(I)I

    move-result v5

    .line 859
    .local v5, seperatorIndex:I
    const/4 v8, -0x1

    if-eq v8, v5, :cond_5

    .line 860
    invoke-virtual {v2, v7, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 861
    .local v3, prefixUri:Ljava/lang/String;
    const-string v8, "http"

    invoke-virtual {v8, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_4

    const-string v8, ".sdp"

    invoke-virtual {v3, v8}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_4

    move v8, v6

    :goto_1
    iput-boolean v8, p0, Lcom/android/gallery3d/app/MoviePlayer;->mIsHttpSdp:Z

    .line 865
    .end local v3           #prefixUri:Ljava/lang/String;
    :goto_2
    iget-boolean v8, p0, Lcom/android/gallery3d/app/MoviePlayer;->mIsHttpSdp:Z

    if-eqz v8, :cond_1

    .line 866
    new-instance v0, Ljava/io/File;

    iget-object v8, p0, Lcom/android/gallery3d/app/MoviePlayer;->mSdpFolderPath:Ljava/lang/String;

    invoke-direct {v0, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 867
    .local v0, dir:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v8

    if-nez v8, :cond_0

    .line 869
    :try_start_0
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 874
    :cond_0
    :goto_3
    const/4 v8, 0x1

    const/4 v9, 0x0

    :try_start_1
    invoke-virtual {v0, v8, v9}, Ljava/io/File;->setWritable(ZZ)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 877
    :goto_4
    invoke-virtual {v0, v6, v7}, Ljava/io/File;->setExecutable(ZZ)Z

    .line 878
    invoke-virtual {v0, v6, v7}, Ljava/io/File;->setReadable(ZZ)Z

    .line 880
    .end local v0           #dir:Ljava/io/File;
    :cond_1
    const-string v6, "http"

    invoke-virtual {v6, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_2

    const-string v6, "rtsp"

    invoke-virtual {v6, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_2

    if-eqz v1, :cond_7

    .line 882
    :cond_2
    iget-object v6, p0, Lcom/android/gallery3d/app/MoviePlayer;->mController:Lcom/android/gallery3d/app/MovieControllerOverlay;

    invoke-virtual {v6}, Lcom/android/gallery3d/app/MovieControllerOverlay;->showLoading()V

    .line 883
    iget-object v6, p0, Lcom/android/gallery3d/app/MoviePlayer;->mHandler:Landroid/os/Handler;

    iget-object v7, p0, Lcom/android/gallery3d/app/MoviePlayer;->mPlayingChecker:Ljava/lang/Runnable;

    invoke-virtual {v6, v7}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 884
    iget-object v6, p0, Lcom/android/gallery3d/app/MoviePlayer;->mHandler:Landroid/os/Handler;

    iget-object v7, p0, Lcom/android/gallery3d/app/MoviePlayer;->mPlayingChecker:Ljava/lang/Runnable;

    const-wide/16 v8, 0xfa

    invoke-virtual {v6, v7, v8, v9}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 890
    :goto_5
    iget-object v6, p0, Lcom/android/gallery3d/app/MoviePlayer;->mVideoView:Landroid/widget/VideoView;

    invoke-virtual {v6}, Landroid/widget/VideoView;->start()V

    .line 891
    invoke-direct {p0}, Lcom/android/gallery3d/app/MoviePlayer;->setProgress()I

    .line 892
    return-void

    .end local v1           #isLocalSDPFile:Z
    .end local v2           #lowerCaseUri:Ljava/lang/String;
    .end local v5           #seperatorIndex:I
    :cond_3
    move v1, v7

    .line 855
    goto :goto_0

    .restart local v1       #isLocalSDPFile:Z
    .restart local v2       #lowerCaseUri:Ljava/lang/String;
    .restart local v3       #prefixUri:Ljava/lang/String;
    .restart local v5       #seperatorIndex:I
    :cond_4
    move v8, v7

    .line 861
    goto :goto_1

    .line 863
    .end local v3           #prefixUri:Ljava/lang/String;
    :cond_5
    const-string v8, "http"

    invoke-virtual {v8, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_6

    const-string v8, ".sdp"

    invoke-virtual {v2, v8}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_6

    move v8, v6

    :goto_6
    iput-boolean v8, p0, Lcom/android/gallery3d/app/MoviePlayer;->mIsHttpSdp:Z

    goto :goto_2

    :cond_6
    move v8, v7

    goto :goto_6

    .line 886
    :cond_7
    iget-object v6, p0, Lcom/android/gallery3d/app/MoviePlayer;->mController:Lcom/android/gallery3d/app/MovieControllerOverlay;

    invoke-virtual {v6}, Lcom/android/gallery3d/app/MovieControllerOverlay;->showPlaying()V

    .line 887
    iget-object v6, p0, Lcom/android/gallery3d/app/MoviePlayer;->mController:Lcom/android/gallery3d/app/MovieControllerOverlay;

    invoke-virtual {v6}, Lcom/android/gallery3d/app/MovieControllerOverlay;->hide()V

    goto :goto_5

    .line 870
    .restart local v0       #dir:Ljava/io/File;
    :catch_0
    move-exception v8

    goto :goto_3

    .line 875
    :catch_1
    move-exception v8

    goto :goto_4
.end method


# virtual methods
.method public getCurrentPosition()I
    .locals 1

    .prologue
    .line 842
    iget-object v0, p0, Lcom/android/gallery3d/app/MoviePlayer;->mVideoView:Landroid/widget/VideoView;

    invoke-virtual {v0}, Landroid/widget/VideoView;->getCurrentPosition()I

    move-result v0

    return v0
.end method

.method public getCurrentVideoUriIndex(Landroid/net/Uri;)I
    .locals 5
    .parameter "videoUri"

    .prologue
    .line 558
    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 560
    .local v1, url:Ljava/lang/String;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v2, p0, Lcom/android/gallery3d/app/MoviePlayer;->mVideoUris:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_1

    .line 562
    iget-object v2, p0, Lcom/android/gallery3d/app/MoviePlayer;->mVideoUris:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/Uri;

    invoke-virtual {v2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 563
    const-string v2, "MoviePlayer"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "CurrentVideoUriIndex = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/gallery3d/app/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 568
    .end local v0           #i:I
    :goto_1
    return v0

    .line 560
    .restart local v0       #i:I
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 568
    :cond_1
    const/4 v0, -0x1

    goto :goto_1
.end method

.method public getStreamVideoView()Landroid/widget/VideoView;
    .locals 1

    .prologue
    .line 491
    iget-object v0, p0, Lcom/android/gallery3d/app/MoviePlayer;->mVideoView:Landroid/widget/VideoView;

    .line 492
    .local v0, streamVideoView:Landroid/widget/VideoView;
    return-object v0
.end method

.method public isFileExisted(Ljava/lang/String;)Z
    .locals 6
    .parameter "url"

    .prologue
    const/4 v3, 0x0

    .line 451
    if-nez p1, :cond_1

    .line 466
    :cond_0
    :goto_0
    return v3

    .line 454
    :cond_1
    const-string v4, "file://"

    invoke-virtual {p1, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 455
    const-string v3, "file://"

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {p1, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    .line 456
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 457
    .local v1, file:Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v3

    goto :goto_0

    .line 458
    .end local v1           #file:Ljava/io/File;
    :cond_2
    const-string v4, "content://"

    invoke-virtual {p1, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 459
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 460
    .local v2, uri:Landroid/net/Uri;
    iget-object v4, p0, Lcom/android/gallery3d/app/MoviePlayer;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const/4 v5, 0x0

    invoke-static {v4, v2, v5}, Landroid/provider/MediaStore$Video;->query(Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 461
    .local v0, cursor:Landroid/database/Cursor;
    if-eqz v0, :cond_0

    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v4

    if-lez v4, :cond_0

    .line 462
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 463
    const/4 v3, 0x1

    goto :goto_0
.end method

.method public isFullBuffer()Z
    .locals 2

    .prologue
    .line 225
    iget-object v1, p0, Lcom/android/gallery3d/app/MoviePlayer;->mUri:Landroid/net/Uri;

    invoke-virtual {v1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v0

    .line 227
    .local v0, scheme:Ljava/lang/String;
    const-string v1, "http"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 228
    const/4 v1, 0x1

    .line 231
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isLiveStream()Z
    .locals 2

    .prologue
    .line 471
    iget-object v1, p0, Lcom/android/gallery3d/app/MoviePlayer;->mVideoView:Landroid/widget/VideoView;

    invoke-virtual {v1}, Landroid/widget/VideoView;->getDuration()I

    move-result v0

    .line 472
    .local v0, duration:I
    iget v1, p0, Lcom/android/gallery3d/app/MoviePlayer;->RTSP_LIVESTREAM_LENGTH:I

    if-eq v1, v0, :cond_0

    if-gtz v0, :cond_1

    .line 473
    :cond_0
    const/4 v1, 0x1

    .line 475
    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public nextVideo()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 572
    iget-object v2, p0, Lcom/android/gallery3d/app/MoviePlayer;->mVideoUris:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    .line 573
    .local v0, maxLength:I
    iget-object v2, p0, Lcom/android/gallery3d/app/MoviePlayer;->mUri:Landroid/net/Uri;

    invoke-virtual {p0, v2}, Lcom/android/gallery3d/app/MoviePlayer;->getCurrentVideoUriIndex(Landroid/net/Uri;)I

    move-result v2

    iput v2, p0, Lcom/android/gallery3d/app/MoviePlayer;->mCurrentUriIx:I

    .line 575
    iget-boolean v2, p0, Lcom/android/gallery3d/app/MoviePlayer;->mSwitchVideoEnabled:Z

    if-nez v2, :cond_0

    .line 600
    :goto_0
    return-void

    .line 579
    :cond_0
    iget v2, p0, Lcom/android/gallery3d/app/MoviePlayer;->mCurrentUriIx:I

    add-int/lit8 v2, v2, 0x1

    if-ge v2, v0, :cond_3

    iget v2, p0, Lcom/android/gallery3d/app/MoviePlayer;->mCurrentUriIx:I

    if-ltz v2, :cond_3

    .line 580
    iget v2, p0, Lcom/android/gallery3d/app/MoviePlayer;->mCurrentUriIx:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/android/gallery3d/app/MoviePlayer;->mCurrentUriIx:I

    .line 581
    iget-object v2, p0, Lcom/android/gallery3d/app/MoviePlayer;->mVideoUris:Ljava/util/List;

    iget v3, p0, Lcom/android/gallery3d/app/MoviePlayer;->mCurrentUriIx:I

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/Uri;

    iput-object v2, p0, Lcom/android/gallery3d/app/MoviePlayer;->mUri:Landroid/net/Uri;

    .line 582
    iget-object v2, p0, Lcom/android/gallery3d/app/MoviePlayer;->mTitles:Ljava/util/List;

    iget v3, p0, Lcom/android/gallery3d/app/MoviePlayer;->mCurrentUriIx:I

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 584
    .local v1, title:Ljava/lang/String;
    iget-object v2, p0, Lcom/android/gallery3d/app/MoviePlayer;->mUri:Landroid/net/Uri;

    invoke-virtual {v2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/gallery3d/app/MoviePlayer;->isFileExisted(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 585
    invoke-virtual {p0}, Lcom/android/gallery3d/app/MoviePlayer;->nextVideo()V

    goto :goto_0

    .line 588
    :cond_1
    if-eqz v1, :cond_2

    .line 590
    iget-object v2, p0, Lcom/android/gallery3d/app/MoviePlayer;->mActionBar:Landroid/app/ActionBar;

    invoke-virtual {v2, v1}, Landroid/app/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    .line 593
    :cond_2
    iget-object v2, p0, Lcom/android/gallery3d/app/MoviePlayer;->mVideoView:Landroid/widget/VideoView;

    iget-object v3, p0, Lcom/android/gallery3d/app/MoviePlayer;->mUri:Landroid/net/Uri;

    invoke-virtual {v2, v3}, Landroid/widget/VideoView;->setVideoURI(Landroid/net/Uri;)V

    .line 594
    invoke-direct {p0}, Lcom/android/gallery3d/app/MoviePlayer;->startVideo()V

    .line 595
    iput-boolean v5, p0, Lcom/android/gallery3d/app/MoviePlayer;->mSwitchVideoEnabled:Z

    .line 596
    iget-object v2, p0, Lcom/android/gallery3d/app/MoviePlayer;->mSwitchVideoHandler:Landroid/os/Handler;

    const-wide/16 v3, 0x3e8

    invoke-virtual {v2, v5, v3, v4}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    .line 598
    .end local v1           #title:Ljava/lang/String;
    :cond_3
    iget-object v2, p0, Lcom/android/gallery3d/app/MoviePlayer;->mContext:Landroid/content/Context;

    const v3, 0x7f0d0348

    invoke-static {v2, v3}, Lcom/android/gallery3d/app/MoviePlayer$ToastUtil;->showMessage(Landroid/content/Context;I)V

    goto :goto_0
.end method

.method public onBufferingUpdate(Landroid/media/MediaPlayer;I)V
    .locals 4
    .parameter "mp"
    .parameter "percent"

    .prologue
    .line 219
    invoke-virtual {p0}, Lcom/android/gallery3d/app/MoviePlayer;->isFullBuffer()Z

    move-result v0

    .line 220
    .local v0, fullBuffer:Z
    iget-object v1, p0, Lcom/android/gallery3d/app/MoviePlayer;->mController:Lcom/android/gallery3d/app/MovieControllerOverlay;

    invoke-virtual {v1, v0, p2}, Lcom/android/gallery3d/app/MovieControllerOverlay;->showBuffering(ZI)V

    .line 221
    const-string v1, "MoviePlayer"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onBufferingUpdate("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/gallery3d/app/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 223
    return-void
.end method

.method public onCompletion()V
    .locals 1

    .prologue
    .line 1009
    iget-object v0, p0, Lcom/android/gallery3d/app/MoviePlayer;->mSubtitleService:Lcn/real/device/HelixSubtitleService;

    if-eqz v0, :cond_0

    .line 1010
    iget-object v0, p0, Lcom/android/gallery3d/app/MoviePlayer;->mSubtitleService:Lcn/real/device/HelixSubtitleService;

    invoke-virtual {v0}, Lcn/real/device/HelixSubtitleService;->OnStop()V

    .line 1011
    iget-object v0, p0, Lcom/android/gallery3d/app/MoviePlayer;->mSubtitleService:Lcn/real/device/HelixSubtitleService;

    invoke-virtual {v0}, Lcn/real/device/HelixSubtitleService;->Close()V

    .line 1012
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/gallery3d/app/MoviePlayer;->mSubtitleService:Lcn/real/device/HelixSubtitleService;

    .line 1014
    :cond_0
    return-void
.end method

.method public onCompletion(Landroid/media/MediaPlayer;)V
    .locals 4
    .parameter "mp"

    .prologue
    const/4 v3, 0x0

    .line 977
    iget-object v1, p0, Lcom/android/gallery3d/app/MoviePlayer;->mController:Lcom/android/gallery3d/app/MovieControllerOverlay;

    invoke-virtual {v1}, Lcom/android/gallery3d/app/MovieControllerOverlay;->showEnded()V

    .line 979
    iget-object v1, p0, Lcom/android/gallery3d/app/MoviePlayer;->mVideoView:Landroid/widget/VideoView;

    invoke-virtual {v1}, Landroid/widget/VideoView;->getDuration()I

    move-result v0

    .line 980
    .local v0, duration:I
    iget-object v1, p0, Lcom/android/gallery3d/app/MoviePlayer;->mController:Lcom/android/gallery3d/app/MovieControllerOverlay;

    invoke-virtual {v1, v0, v0, v3, v3}, Lcom/android/gallery3d/app/MovieControllerOverlay;->setTimes(IIII)V

    .line 983
    iget-object v1, p0, Lcom/android/gallery3d/app/MoviePlayer;->mUri:Landroid/net/Uri;

    invoke-virtual {p0, v1}, Lcom/android/gallery3d/app/MoviePlayer;->getCurrentVideoUriIndex(Landroid/net/Uri;)I

    move-result v1

    iput v1, p0, Lcom/android/gallery3d/app/MoviePlayer;->mCurrentUriIx:I

    .line 984
    iget v1, p0, Lcom/android/gallery3d/app/MoviePlayer;->mRepeatCnt:I

    if-lez v1, :cond_2

    .line 985
    iget v1, p0, Lcom/android/gallery3d/app/MoviePlayer;->mCurrentUriIx:I

    add-int/lit8 v1, v1, 0x1

    iget-object v2, p0, Lcom/android/gallery3d/app/MoviePlayer;->mVideoUris:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 986
    invoke-virtual {p0}, Lcom/android/gallery3d/app/MoviePlayer;->nextVideo()V

    .line 988
    iget-object v1, p0, Lcom/android/gallery3d/app/MoviePlayer;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/gallery3d/app/MoviePlayer;->mPlayingChecker:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 989
    iget-object v1, p0, Lcom/android/gallery3d/app/MoviePlayer;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/gallery3d/app/MoviePlayer;->mProgressChecker:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1006
    :goto_0
    return-void

    .line 993
    :cond_0
    iget v1, p0, Lcom/android/gallery3d/app/MoviePlayer;->mRepeatCnt:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/android/gallery3d/app/MoviePlayer;->mRepeatCnt:I

    .line 994
    iget v1, p0, Lcom/android/gallery3d/app/MoviePlayer;->mRepeatCnt:I

    if-gtz v1, :cond_1

    .line 995
    invoke-virtual {p0}, Lcom/android/gallery3d/app/MoviePlayer;->onCompletion()V

    goto :goto_0

    .line 998
    :cond_1
    iget-object v1, p0, Lcom/android/gallery3d/app/MoviePlayer;->mVideoUris:Ljava/util/List;

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/Uri;

    iput-object v1, p0, Lcom/android/gallery3d/app/MoviePlayer;->mUri:Landroid/net/Uri;

    .line 999
    iget-object v1, p0, Lcom/android/gallery3d/app/MoviePlayer;->mVideoView:Landroid/widget/VideoView;

    iget-object v2, p0, Lcom/android/gallery3d/app/MoviePlayer;->mUri:Landroid/net/Uri;

    invoke-virtual {v1, v2}, Landroid/widget/VideoView;->setVideoURI(Landroid/net/Uri;)V

    .line 1000
    invoke-direct {p0}, Lcom/android/gallery3d/app/MoviePlayer;->startVideo()V

    .line 1001
    iget-object v2, p0, Lcom/android/gallery3d/app/MoviePlayer;->mActionBar:Landroid/app/ActionBar;

    iget-object v1, p0, Lcom/android/gallery3d/app/MoviePlayer;->mTitles:Ljava/util/List;

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    invoke-virtual {v2, v1}, Landroid/app/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 1003
    :cond_2
    invoke-virtual {p0}, Lcom/android/gallery3d/app/MoviePlayer;->onCompletion()V

    goto :goto_0
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 810
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/android/gallery3d/app/MoviePlayer;->mSdpFolderPath:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 811
    .local v0, file:Ljava/io/File;
    invoke-direct {p0, v0}, Lcom/android/gallery3d/app/MoviePlayer;->deleteFile(Ljava/io/File;)V

    .line 813
    iget-object v1, p0, Lcom/android/gallery3d/app/MoviePlayer;->mVideoView:Landroid/widget/VideoView;

    invoke-virtual {v1}, Landroid/widget/VideoView;->stopPlayback()V

    .line 814
    iget-object v1, p0, Lcom/android/gallery3d/app/MoviePlayer;->mAudioBecomingNoisyReceiver:Lcom/android/gallery3d/app/MoviePlayer$AudioBecomingNoisyReceiver;

    invoke-virtual {v1}, Lcom/android/gallery3d/app/MoviePlayer$AudioBecomingNoisyReceiver;->unregister()V

    .line 815
    iget-object v1, p0, Lcom/android/gallery3d/app/MoviePlayer;->mSubtitleService:Lcn/real/device/HelixSubtitleService;

    if-eqz v1, :cond_0

    .line 816
    iget-object v1, p0, Lcom/android/gallery3d/app/MoviePlayer;->mSubtitleService:Lcn/real/device/HelixSubtitleService;

    invoke-virtual {v1}, Lcn/real/device/HelixSubtitleService;->Close()V

    .line 817
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/gallery3d/app/MoviePlayer;->mSubtitleService:Lcn/real/device/HelixSubtitleService;

    .line 819
    :cond_0
    return-void
.end method

.method public onError(Landroid/media/MediaPlayer;II)Z
    .locals 9
    .parameter "player"
    .parameter "arg1"
    .parameter "arg2"

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 920
    new-instance v4, Ljava/io/File;

    iget-object v7, p0, Lcom/android/gallery3d/app/MoviePlayer;->mSdpFilePath:Ljava/lang/String;

    invoke-direct {v4, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 921
    .local v4, sdpTempFile:Ljava/io/File;
    iget-boolean v7, p0, Lcom/android/gallery3d/app/MoviePlayer;->mIsHttpSdp:Z

    if-ne v7, v5, :cond_0

    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v7

    if-eqz v7, :cond_0

    .line 922
    iget-object v7, p0, Lcom/android/gallery3d/app/MoviePlayer;->mSdpFilePath:Ljava/lang/String;

    invoke-static {v7}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v7

    iput-object v7, p0, Lcom/android/gallery3d/app/MoviePlayer;->mUri:Landroid/net/Uri;

    .line 923
    iget-object v7, p0, Lcom/android/gallery3d/app/MoviePlayer;->mVideoView:Landroid/widget/VideoView;

    iget-object v8, p0, Lcom/android/gallery3d/app/MoviePlayer;->mUri:Landroid/net/Uri;

    invoke-virtual {v7, v8}, Landroid/widget/VideoView;->setVideoURI(Landroid/net/Uri;)V

    .line 924
    iget-object v7, p0, Lcom/android/gallery3d/app/MoviePlayer;->mVideoView:Landroid/widget/VideoView;

    invoke-virtual {v7}, Landroid/widget/VideoView;->start()V

    .line 925
    iput-boolean v6, p0, Lcom/android/gallery3d/app/MoviePlayer;->mIsHttpSdp:Z

    .line 972
    :goto_0
    return v5

    .line 929
    :cond_0
    iget-object v7, p0, Lcom/android/gallery3d/app/MoviePlayer;->mHandler:Landroid/os/Handler;

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 933
    move v1, p2

    .line 934
    .local v1, framework_err:I
    move v2, p3

    .line 936
    .local v2, impl_err:I
    const/4 v0, 0x0

    .line 937
    .local v0, errorMessage:Ljava/lang/String;
    const/16 v7, 0x104

    if-ne v1, v7, :cond_2

    .line 938
    const v3, 0x7f0d0486

    .line 939
    .local v3, messageId:I
    iget-object v7, p0, Lcom/android/gallery3d/app/MoviePlayer;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-virtual {v7, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 967
    .end local v3           #messageId:I
    :cond_1
    :goto_1
    if-eqz v0, :cond_b

    .line 968
    invoke-direct {p0, v0}, Lcom/android/gallery3d/app/MoviePlayer;->showErrorDialog(Ljava/lang/String;)V

    goto :goto_0

    .line 940
    :cond_2
    const/16 v7, 0x105

    if-ne v1, v7, :cond_3

    .line 941
    const v3, 0x7f0d0487

    .line 942
    .restart local v3       #messageId:I
    iget-object v7, p0, Lcom/android/gallery3d/app/MoviePlayer;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-virtual {v7, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 943
    .end local v3           #messageId:I
    :cond_3
    const/16 v7, 0x106

    if-ne v1, v7, :cond_4

    .line 944
    const v3, 0x7f0d0488

    .line 945
    .restart local v3       #messageId:I
    iget-object v7, p0, Lcom/android/gallery3d/app/MoviePlayer;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-virtual {v7, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 946
    .end local v3           #messageId:I
    :cond_4
    const/16 v7, 0x107

    if-ne v1, v7, :cond_5

    .line 947
    const v3, 0x7f0d0489

    .line 948
    .restart local v3       #messageId:I
    iget-object v7, p0, Lcom/android/gallery3d/app/MoviePlayer;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-virtual {v7, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 949
    .end local v3           #messageId:I
    :cond_5
    const/16 v7, 0x108

    if-ne v1, v7, :cond_6

    .line 950
    const v3, 0x7f0d048a

    .line 951
    .restart local v3       #messageId:I
    iget-object v7, p0, Lcom/android/gallery3d/app/MoviePlayer;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-virtual {v7, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 953
    .end local v3           #messageId:I
    :cond_6
    const/16 v7, -0x3e8

    if-ne v2, v7, :cond_7

    .line 954
    const v3, 0x7f0d048a

    .line 955
    .restart local v3       #messageId:I
    iget-object v7, p0, Lcom/android/gallery3d/app/MoviePlayer;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-virtual {v7, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 956
    .end local v3           #messageId:I
    :cond_7
    const/16 v7, -0x3ec

    if-eq v2, v7, :cond_8

    const/16 v7, -0x3ef

    if-ne v2, v7, :cond_9

    .line 957
    :cond_8
    const v3, 0x7f0d048c

    .line 958
    .restart local v3       #messageId:I
    iget-object v7, p0, Lcom/android/gallery3d/app/MoviePlayer;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-virtual {v7, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 959
    .end local v3           #messageId:I
    :cond_9
    const/16 v7, -0x3f3

    if-ne v2, v7, :cond_a

    .line 960
    const v3, 0x7f0d048e

    .line 961
    .restart local v3       #messageId:I
    iget-object v7, p0, Lcom/android/gallery3d/app/MoviePlayer;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-virtual {v7, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_1

    .line 962
    .end local v3           #messageId:I
    :cond_a
    const/16 v7, -0x7d1

    if-ne v2, v7, :cond_1

    .line 963
    const v3, 0x7f0d0489

    .line 964
    .restart local v3       #messageId:I
    iget-object v7, p0, Lcom/android/gallery3d/app/MoviePlayer;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-virtual {v7, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_1

    .end local v3           #messageId:I
    :cond_b
    move v5, v6

    .line 972
    goto/16 :goto_0
.end method

.method public onHidden()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 1131
    iput-boolean v0, p0, Lcom/android/gallery3d/app/MoviePlayer;->mShowing:Z

    .line 1132
    invoke-direct {p0, v0}, Lcom/android/gallery3d/app/MoviePlayer;->showSystemUi(Z)V

    .line 1133
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 2
    .parameter "keyCode"
    .parameter "event"

    .prologue
    const/4 v0, 0x1

    .line 1149
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v1

    if-lez v1, :cond_1

    .line 1150
    invoke-static {p1}, Lcom/android/gallery3d/app/MoviePlayer;->isMediaKey(I)Z

    move-result v0

    .line 1178
    :cond_0
    :goto_0
    :sswitch_0
    return v0

    .line 1153
    :cond_1
    sparse-switch p1, :sswitch_data_0

    .line 1178
    const/4 v0, 0x0

    goto :goto_0

    .line 1156
    :sswitch_1
    iget-object v1, p0, Lcom/android/gallery3d/app/MoviePlayer;->mVideoView:Landroid/widget/VideoView;

    invoke-virtual {v1}, Landroid/widget/VideoView;->isPlaying()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1157
    invoke-direct {p0}, Lcom/android/gallery3d/app/MoviePlayer;->pauseVideo()V

    goto :goto_0

    .line 1159
    :cond_2
    invoke-direct {p0}, Lcom/android/gallery3d/app/MoviePlayer;->playVideo()V

    goto :goto_0

    .line 1163
    :sswitch_2
    iget-object v1, p0, Lcom/android/gallery3d/app/MoviePlayer;->mVideoView:Landroid/widget/VideoView;

    invoke-virtual {v1}, Landroid/widget/VideoView;->isPlaying()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1164
    invoke-direct {p0}, Lcom/android/gallery3d/app/MoviePlayer;->pauseVideo()V

    goto :goto_0

    .line 1168
    :sswitch_3
    iget-object v1, p0, Lcom/android/gallery3d/app/MoviePlayer;->mVideoView:Landroid/widget/VideoView;

    invoke-virtual {v1}, Landroid/widget/VideoView;->isPlaying()Z

    move-result v1

    if-nez v1, :cond_0

    .line 1169
    invoke-direct {p0}, Lcom/android/gallery3d/app/MoviePlayer;->playVideo()V

    goto :goto_0

    .line 1153
    nop

    :sswitch_data_0
    .sparse-switch
        0x4f -> :sswitch_1
        0x55 -> :sswitch_1
        0x57 -> :sswitch_0
        0x58 -> :sswitch_0
        0x7e -> :sswitch_3
        0x7f -> :sswitch_2
    .end sparse-switch
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 1
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 1182
    invoke-static {p1}, Lcom/android/gallery3d/app/MoviePlayer;->isMediaKey(I)Z

    move-result v0

    return v0
.end method

.method public onNextVideo()V
    .locals 0

    .prologue
    .line 497
    invoke-virtual {p0}, Lcom/android/gallery3d/app/MoviePlayer;->nextVideo()V

    .line 498
    return-void
.end method

.method public onPause()V
    .locals 4

    .prologue
    .line 738
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/gallery3d/app/MoviePlayer;->mHasPaused:Z

    .line 739
    iget-object v0, p0, Lcom/android/gallery3d/app/MoviePlayer;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 740
    iget-object v0, p0, Lcom/android/gallery3d/app/MoviePlayer;->mVideoView:Landroid/widget/VideoView;

    invoke-virtual {v0}, Landroid/widget/VideoView;->getCurrentPosition()I

    move-result v0

    iput v0, p0, Lcom/android/gallery3d/app/MoviePlayer;->mVideoPosition:I

    .line 742
    iget-object v0, p0, Lcom/android/gallery3d/app/MoviePlayer;->mVideoView:Landroid/widget/VideoView;

    invoke-virtual {v0}, Landroid/widget/VideoView;->getDuration()I

    move-result v0

    iput v0, p0, Lcom/android/gallery3d/app/MoviePlayer;->mVideoDuration:I

    .line 745
    invoke-virtual {p0}, Lcom/android/gallery3d/app/MoviePlayer;->isLiveStream()Z

    move-result v0

    if-nez v0, :cond_0

    .line 746
    iget-object v0, p0, Lcom/android/gallery3d/app/MoviePlayer;->mBookmarker:Lcom/android/gallery3d/app/Bookmarker;

    iget-object v1, p0, Lcom/android/gallery3d/app/MoviePlayer;->mUri:Landroid/net/Uri;

    iget v2, p0, Lcom/android/gallery3d/app/MoviePlayer;->mVideoPosition:I

    iget-object v3, p0, Lcom/android/gallery3d/app/MoviePlayer;->mVideoView:Landroid/widget/VideoView;

    invoke-virtual {v3}, Landroid/widget/VideoView;->getDuration()I

    move-result v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/gallery3d/app/Bookmarker;->setBookmark(Landroid/net/Uri;II)V

    .line 749
    :cond_0
    iget-object v0, p0, Lcom/android/gallery3d/app/MoviePlayer;->mSubtitleService:Lcn/real/device/HelixSubtitleService;

    if-eqz v0, :cond_1

    .line 750
    iget-object v0, p0, Lcom/android/gallery3d/app/MoviePlayer;->mSubtitleService:Lcn/real/device/HelixSubtitleService;

    invoke-virtual {v0}, Lcn/real/device/HelixSubtitleService;->OnPause()V

    .line 752
    :cond_1
    iget-object v0, p0, Lcom/android/gallery3d/app/MoviePlayer;->mVideoView:Landroid/widget/VideoView;

    invoke-virtual {v0}, Landroid/widget/VideoView;->suspend()V

    .line 753
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-wide/32 v2, 0x2bf20

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/android/gallery3d/app/MoviePlayer;->mResumeableTime:J

    .line 754
    return-void
.end method

.method public onPlayPause()V
    .locals 1

    .prologue
    .line 1093
    iget-object v0, p0, Lcom/android/gallery3d/app/MoviePlayer;->mVideoView:Landroid/widget/VideoView;

    invoke-virtual {v0}, Landroid/widget/VideoView;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1094
    invoke-direct {p0}, Lcom/android/gallery3d/app/MoviePlayer;->pauseVideo()V

    .line 1098
    :goto_0
    return-void

    .line 1096
    :cond_0
    invoke-direct {p0}, Lcom/android/gallery3d/app/MoviePlayer;->playVideo()V

    goto :goto_0
.end method

.method public onPreVideo()V
    .locals 0

    .prologue
    .line 502
    invoke-virtual {p0}, Lcom/android/gallery3d/app/MoviePlayer;->preVideo()V

    .line 503
    return-void
.end method

.method public onPrepared(Landroid/media/MediaPlayer;)V
    .locals 2
    .parameter "mp"

    .prologue
    .line 252
    iget-object v1, p0, Lcom/android/gallery3d/app/MoviePlayer;->mVideoView:Landroid/widget/VideoView;

    invoke-virtual {v1}, Landroid/widget/VideoView;->canPause()Z

    move-result v0

    .line 253
    .local v0, canPause:Z
    iget-object v1, p0, Lcom/android/gallery3d/app/MoviePlayer;->mController:Lcom/android/gallery3d/app/MovieControllerOverlay;

    invoke-virtual {v1, v0}, Lcom/android/gallery3d/app/MovieControllerOverlay;->setCanPause(Z)V

    .line 255
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/gallery3d/app/MoviePlayer;->mIsPrepared:Z

    .line 257
    return-void
.end method

.method public onReplay()V
    .locals 2

    .prologue
    .line 1138
    iget v0, p0, Lcom/android/gallery3d/app/MoviePlayer;->mVideoPosition:I

    iget-object v1, p0, Lcom/android/gallery3d/app/MoviePlayer;->mVideoView:Landroid/widget/VideoView;

    invoke-virtual {v1}, Landroid/widget/VideoView;->getDuration()I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 1139
    iget-object v0, p0, Lcom/android/gallery3d/app/MoviePlayer;->mVideoView:Landroid/widget/VideoView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/VideoView;->seekTo(I)V

    .line 1142
    :cond_0
    invoke-direct {p0}, Lcom/android/gallery3d/app/MoviePlayer;->startVideo()V

    .line 1143
    return-void
.end method

.method public onResume()V
    .locals 4

    .prologue
    .line 757
    iget-boolean v0, p0, Lcom/android/gallery3d/app/MoviePlayer;->mHasPaused:Z

    if-eqz v0, :cond_1

    .line 759
    iget-object v0, p0, Lcom/android/gallery3d/app/MoviePlayer;->mVideoView:Landroid/widget/VideoView;

    invoke-virtual {v0}, Landroid/widget/VideoView;->canSeekForward()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 760
    iget-object v0, p0, Lcom/android/gallery3d/app/MoviePlayer;->mVideoView:Landroid/widget/VideoView;

    iget v1, p0, Lcom/android/gallery3d/app/MoviePlayer;->mVideoPosition:I

    invoke-virtual {v0, v1}, Landroid/widget/VideoView;->seekTo(I)V

    .line 763
    :cond_0
    iget-object v0, p0, Lcom/android/gallery3d/app/MoviePlayer;->mVideoView:Landroid/widget/VideoView;

    invoke-virtual {v0}, Landroid/widget/VideoView;->resume()V

    .line 765
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/gallery3d/app/MoviePlayer;->mHasPaused:Z

    .line 769
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/android/gallery3d/app/MoviePlayer;->mResumeableTime:J

    cmp-long v0, v0, v2

    if-lez v0, :cond_2

    .line 770
    invoke-direct {p0}, Lcom/android/gallery3d/app/MoviePlayer;->pauseVideo()V

    .line 780
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/android/gallery3d/app/MoviePlayer;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/gallery3d/app/MoviePlayer;->mProgressChecker:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 783
    iget-object v0, p0, Lcom/android/gallery3d/app/MoviePlayer;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/gallery3d/app/MoviePlayer;->mPlayingChecker:Ljava/lang/Runnable;

    const-wide/16 v2, 0xfa

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 785
    return-void

    .line 774
    :cond_2
    iget-boolean v0, p0, Lcom/android/gallery3d/app/MoviePlayer;->mIsStreamVideo:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/gallery3d/app/MoviePlayer;->mVideoView:Landroid/widget/VideoView;

    invoke-virtual {v0}, Landroid/widget/VideoView;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 775
    iget-object v0, p0, Lcom/android/gallery3d/app/MoviePlayer;->mController:Lcom/android/gallery3d/app/MovieControllerOverlay;

    invoke-virtual {v0}, Lcom/android/gallery3d/app/MovieControllerOverlay;->resetBufferFlag()V

    goto :goto_0
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 3
    .parameter "outState"

    .prologue
    .line 688
    const-string v0, "video-position"

    iget v1, p0, Lcom/android/gallery3d/app/MoviePlayer;->mVideoPosition:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 689
    const-string v0, "resumeable-timeout"

    iget-wide v1, p0, Lcom/android/gallery3d/app/MoviePlayer;->mResumeableTime:J

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 690
    return-void
.end method

.method public onSeekEnd(III)V
    .locals 1
    .parameter "time"
    .parameter "start"
    .parameter "end"

    .prologue
    .line 1117
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/gallery3d/app/MoviePlayer;->mDragging:Z

    .line 1118
    iget-object v0, p0, Lcom/android/gallery3d/app/MoviePlayer;->mVideoView:Landroid/widget/VideoView;

    invoke-virtual {v0, p1}, Landroid/widget/VideoView;->seekTo(I)V

    .line 1119
    invoke-direct {p0}, Lcom/android/gallery3d/app/MoviePlayer;->setProgress()I

    .line 1120
    return-void
.end method

.method public onSeekMove(I)V
    .locals 1
    .parameter "time"

    .prologue
    .line 1109
    iget-boolean v0, p0, Lcom/android/gallery3d/app/MoviePlayer;->mIsStreamVideo:Z

    if-nez v0, :cond_0

    .line 1110
    iget-object v0, p0, Lcom/android/gallery3d/app/MoviePlayer;->mVideoView:Landroid/widget/VideoView;

    invoke-virtual {v0, p1}, Landroid/widget/VideoView;->seekTo(I)V

    .line 1113
    :cond_0
    return-void
.end method

.method public onSeekStart()V
    .locals 1

    .prologue
    .line 1102
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/gallery3d/app/MoviePlayer;->mDragging:Z

    .line 1103
    return-void
.end method

.method public onShown()V
    .locals 1

    .prologue
    const/4 v0, 0x1

    .line 1124
    iput-boolean v0, p0, Lcom/android/gallery3d/app/MoviePlayer;->mShowing:Z

    .line 1125
    invoke-direct {p0}, Lcom/android/gallery3d/app/MoviePlayer;->setProgress()I

    .line 1126
    invoke-direct {p0, v0}, Lcom/android/gallery3d/app/MoviePlayer;->showSystemUi(Z)V

    .line 1127
    return-void
.end method

.method public onStop(I)V
    .locals 0
    .parameter "offset"

    .prologue
    .line 1214
    invoke-virtual {p0}, Lcom/android/gallery3d/app/MoviePlayer;->onCompletion()V

    .line 1215
    return-void
.end method

.method public preVideo()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 604
    iget-object v1, p0, Lcom/android/gallery3d/app/MoviePlayer;->mUri:Landroid/net/Uri;

    invoke-virtual {p0, v1}, Lcom/android/gallery3d/app/MoviePlayer;->getCurrentVideoUriIndex(Landroid/net/Uri;)I

    move-result v1

    iput v1, p0, Lcom/android/gallery3d/app/MoviePlayer;->mCurrentUriIx:I

    .line 606
    iget-boolean v1, p0, Lcom/android/gallery3d/app/MoviePlayer;->mSwitchVideoEnabled:Z

    if-nez v1, :cond_0

    .line 632
    :goto_0
    return-void

    .line 610
    :cond_0
    iget v1, p0, Lcom/android/gallery3d/app/MoviePlayer;->mCurrentUriIx:I

    add-int/lit8 v1, v1, -0x1

    if-ltz v1, :cond_3

    .line 611
    iget v1, p0, Lcom/android/gallery3d/app/MoviePlayer;->mCurrentUriIx:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/android/gallery3d/app/MoviePlayer;->mCurrentUriIx:I

    .line 612
    iget-object v1, p0, Lcom/android/gallery3d/app/MoviePlayer;->mVideoUris:Ljava/util/List;

    iget v2, p0, Lcom/android/gallery3d/app/MoviePlayer;->mCurrentUriIx:I

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/Uri;

    iput-object v1, p0, Lcom/android/gallery3d/app/MoviePlayer;->mUri:Landroid/net/Uri;

    .line 613
    iget-object v1, p0, Lcom/android/gallery3d/app/MoviePlayer;->mTitles:Ljava/util/List;

    iget v2, p0, Lcom/android/gallery3d/app/MoviePlayer;->mCurrentUriIx:I

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 615
    .local v0, title:Ljava/lang/String;
    iget-object v1, p0, Lcom/android/gallery3d/app/MoviePlayer;->mUri:Landroid/net/Uri;

    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/gallery3d/app/MoviePlayer;->isFileExisted(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 616
    invoke-virtual {p0}, Lcom/android/gallery3d/app/MoviePlayer;->preVideo()V

    goto :goto_0

    .line 619
    :cond_1
    if-eqz v0, :cond_2

    .line 622
    iget-object v1, p0, Lcom/android/gallery3d/app/MoviePlayer;->mActionBar:Landroid/app/ActionBar;

    invoke-virtual {v1, v0}, Landroid/app/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    .line 625
    :cond_2
    iget-object v1, p0, Lcom/android/gallery3d/app/MoviePlayer;->mVideoView:Landroid/widget/VideoView;

    iget-object v2, p0, Lcom/android/gallery3d/app/MoviePlayer;->mUri:Landroid/net/Uri;

    invoke-virtual {v1, v2}, Landroid/widget/VideoView;->setVideoURI(Landroid/net/Uri;)V

    .line 626
    invoke-direct {p0}, Lcom/android/gallery3d/app/MoviePlayer;->startVideo()V

    .line 627
    iput-boolean v4, p0, Lcom/android/gallery3d/app/MoviePlayer;->mSwitchVideoEnabled:Z

    .line 628
    iget-object v1, p0, Lcom/android/gallery3d/app/MoviePlayer;->mSwitchVideoHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x3e8

    invoke-virtual {v1, v4, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    .line 630
    .end local v0           #title:Ljava/lang/String;
    :cond_3
    iget-object v1, p0, Lcom/android/gallery3d/app/MoviePlayer;->mContext:Landroid/content/Context;

    const v2, 0x7f0d0348

    invoke-static {v1, v2}, Lcom/android/gallery3d/app/MoviePlayer$ToastUtil;->showMessage(Landroid/content/Context;I)V

    goto :goto_0
.end method

.method public prepareVideoList(Lcom/android/gallery3d/app/MovieActivity;)V
    .locals 15
    .parameter "movieActivity"

    .prologue
    .line 509
    const/4 v0, 0x3

    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v1, "_data"

    aput-object v1, v2, v0

    const/4 v0, 0x1

    const-string v1, "title"

    aput-object v1, v2, v0

    const/4 v0, 0x2

    const-string v1, "_id"

    aput-object v1, v2, v0

    .line 510
    .local v2, mediaCloumns:[Ljava/lang/String;
    const/4 v6, 0x0

    .line 512
    .local v6, cursor:Landroid/database/Cursor;
    :try_start_0
    invoke-virtual/range {p1 .. p1}, Lcom/android/gallery3d/app/MovieActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/MediaStore$Video$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 513
    if-eqz v6, :cond_2

    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 514
    iget-object v0, p0, Lcom/android/gallery3d/app/MoviePlayer;->mUri:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v14

    .line 517
    .local v14, url:Ljava/lang/String;
    new-instance v9, Ljava/io/File;

    invoke-direct {v9, v14}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 518
    .local v9, file:Ljava/io/File;
    invoke-virtual {v9}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object v7

    .line 520
    .local v7, directory:Ljava/lang/String;
    iget-object v0, p0, Lcom/android/gallery3d/app/MoviePlayer;->mVideoUris:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 521
    iget-object v0, p0, Lcom/android/gallery3d/app/MoviePlayer;->mVideoUriStrings:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 522
    iget-object v0, p0, Lcom/android/gallery3d/app/MoviePlayer;->mTitles:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 531
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "file://"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "_data"

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    .line 532
    .local v13, uriString:Ljava/lang/String;
    const-string v0, "_id"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v11

    .line 533
    .local v11, id:I
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Landroid/provider/MediaStore$Video$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v12

    .line 534
    .local v12, uri:Landroid/net/Uri;
    const-string v0, "file://"

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {v7, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v13, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 535
    iget-object v0, p0, Lcom/android/gallery3d/app/MoviePlayer;->mVideoUriStrings:Ljava/util/List;

    invoke-interface {v0, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 536
    iget-object v0, p0, Lcom/android/gallery3d/app/MoviePlayer;->mTitles:Ljava/util/List;

    const-string v1, "title"

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 538
    :cond_1
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-nez v0, :cond_0

    .line 539
    iget-object v0, p0, Lcom/android/gallery3d/app/MoviePlayer;->mVideoUriStrings:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 540
    const/4 v10, 0x0

    .local v10, i:I
    :goto_0
    iget-object v0, p0, Lcom/android/gallery3d/app/MoviePlayer;->mVideoUriStrings:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v10, v0, :cond_2

    .line 541
    iget-object v1, p0, Lcom/android/gallery3d/app/MoviePlayer;->mVideoUris:Ljava/util/List;

    iget-object v0, p0, Lcom/android/gallery3d/app/MoviePlayer;->mVideoUriStrings:Ljava/util/List;

    invoke-interface {v0, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 540
    add-int/lit8 v10, v10, 0x1

    goto :goto_0

    .line 550
    .end local v7           #directory:Ljava/lang/String;
    .end local v9           #file:Ljava/io/File;
    .end local v10           #i:I
    .end local v11           #id:I
    .end local v12           #uri:Landroid/net/Uri;
    .end local v13           #uriString:Ljava/lang/String;
    .end local v14           #url:Ljava/lang/String;
    :cond_2
    if-eqz v6, :cond_3

    .line 551
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 554
    :cond_3
    :goto_1
    return-void

    .line 544
    :catch_0
    move-exception v8

    .line 546
    .local v8, e:Ljava/lang/Exception;
    :try_start_1
    const-string v0, "MoviePlayer"

    const-string v1, "prepareVideoList exception!"

    invoke-static {v0, v1}, Lcom/android/gallery3d/app/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 547
    invoke-virtual {v8}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 550
    if-eqz v6, :cond_3

    .line 551
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_1

    .line 550
    .end local v8           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v0

    if-eqz v6, :cond_4

    .line 551
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_4
    throw v0
.end method

.method public resetBookmark()V
    .locals 4

    .prologue
    .line 846
    iget-object v0, p0, Lcom/android/gallery3d/app/MoviePlayer;->mBookmarker:Lcom/android/gallery3d/app/Bookmarker;

    iget-object v1, p0, Lcom/android/gallery3d/app/MoviePlayer;->mUri:Landroid/net/Uri;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/android/gallery3d/app/MoviePlayer;->mVideoView:Landroid/widget/VideoView;

    invoke-virtual {v3}, Landroid/widget/VideoView;->getDuration()I

    move-result v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/gallery3d/app/Bookmarker;->setBookmark(Landroid/net/Uri;II)V

    .line 847
    return-void
.end method

.method public setStartPause(Z)V
    .locals 0
    .parameter "startPause"

    .prologue
    .line 683
    iput-boolean p1, p0, Lcom/android/gallery3d/app/MoviePlayer;->mStartPause:Z

    .line 684
    return-void
.end method

.method public subtitleExists()Z
    .locals 1

    .prologue
    .line 1017
    iget-boolean v0, p0, Lcom/android/gallery3d/app/MoviePlayer;->mSubtitleExists:Z

    return v0
.end method
