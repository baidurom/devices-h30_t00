.class public final Lcom/android/gallery3d/app/Gallery;
.super Lcom/android/gallery3d/app/AbstractGalleryActivity;
.source "Gallery.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# static fields
.field public static final ACTION_PHOTOSHARE_GET_CONTENT:Ljava/lang/String; = "android.intent.action.PHOTOSHARE_GET_CONTENT"

.field public static final ACTION_PRIVATE_MODE:Ljava/lang/String; = "com.huawei.android.intent.action.PRIVATE_GALLERY"

.field public static final ACTION_REVIEW:Ljava/lang/String; = "com.android.camera.action.REVIEW"

.field public static final DBG:Z = false

.field private static final DBG_LEVEL:I = 0x0

.field public static final EXTRA_CROP:Ljava/lang/String; = "crop"

.field public static final EXTRA_DREAM:Ljava/lang/String; = "dream"

.field public static final EXTRA_SLIDESHOW:Ljava/lang/String; = "slideshow"

.field public static final GALLERY_FACE_FLAG:Ljava/lang/String; = "face_flag"

.field public static final GALLERY_SETTINGS:Ljava/lang/String; = "gallery_settings"

.field public static final KEY_DISMISS_KEYGUARD:Ljava/lang/String; = "dismiss-keyguard"

.field public static final KEY_GET_ALBUM:Ljava/lang/String; = "get-album"

.field public static final KEY_GET_CONTENT:Ljava/lang/String; = "get-content"

.field public static final KEY_MEDIA_TYPES:Ljava/lang/String; = "mediaTypes"

.field public static final KEY_PASTE_GET_DIRECTORY:Ljava/lang/String; = "paste-getdirectory"

.field public static final KEY_PASTE_SOURCE_PATH:Ljava/lang/String; = "paste-sourcepath"

.field public static final KEY_PASTE_UPDATE_PATH:Ljava/lang/String; = "paste-updatepath"

.field public static final KEY_PHOTOSHARE_PICKMULTI:Ljava/lang/String; = "photoshare-pickmulti"

.field public static final KEY_TYPE_BITS:Ljava/lang/String; = "type-bits"

.field public static final RELOAD_URI_ALBUM:Landroid/net/Uri; = null

.field public static final RELOAD_URI_ALBUMSET:Landroid/net/Uri; = null

.field public static final SETTIGNS_URI:Landroid/net/Uri; = null

.field public static final SHOW_HIDDEN_ALBUMS:Ljava/lang/String; = "show_hidden_albums"

.field private static final TAG:Ljava/lang/String; = "Gallery"

.field public static final VDBG:Z


# instance fields
.field private mTabView:Lcom/android/gallery3d/ui/AlbumSetTabsBar;

.field private mVersionCheckDialog:Landroid/app/Dialog;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 82
    const-string v0, "content://settings/gallery"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/gallery3d/app/Gallery;->SETTIGNS_URI:Landroid/net/Uri;

    .line 83
    const-string v0, "content://reload/albumset"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/gallery3d/app/Gallery;->RELOAD_URI_ALBUMSET:Landroid/net/Uri;

    .line 84
    const-string v0, "content://reload/album"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/gallery3d/app/Gallery;->RELOAD_URI_ALBUM:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 50
    invoke-direct {p0}, Lcom/android/gallery3d/app/AbstractGalleryActivity;-><init>()V

    return-void
.end method

.method private getContentType(Landroid/content/Intent;)Ljava/lang/String;
    .locals 5
    .parameter "intent"

    .prologue
    .line 187
    invoke-virtual {p1}, Landroid/content/Intent;->getType()Ljava/lang/String;

    move-result-object v1

    .line 188
    .local v1, type:Ljava/lang/String;
    if-eqz v1, :cond_1

    .line 189
    const-string v3, "application/vnd.google.panorama360+jpg"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const-string v1, "image/jpeg"

    .line 198
    .end local v1           #type:Ljava/lang/String;
    :cond_0
    :goto_0
    return-object v1

    .line 193
    .restart local v1       #type:Ljava/lang/String;
    :cond_1
    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v2

    .line 195
    .local v2, uri:Landroid/net/Uri;
    :try_start_0
    invoke-virtual {p0}, Lcom/android/gallery3d/app/Gallery;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/content/ContentResolver;->getType(Landroid/net/Uri;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    goto :goto_0

    .line 196
    :catch_0
    move-exception v0

    .line 197
    .local v0, t:Ljava/lang/Throwable;
    const-string v3, "Gallery"

    const-string v4, "get type fail"

    invoke-static {v3, v4, v0}, Lcom/android/gallery3d/app/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 198
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private initializeByIntent()V
    .locals 7

    .prologue
    .line 112
    invoke-virtual {p0}, Lcom/android/gallery3d/app/Gallery;->getIntent()Landroid/content/Intent;

    move-result-object v2

    .line 113
    .local v2, intent:Landroid/content/Intent;
    invoke-virtual {v2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 115
    .local v0, action:Ljava/lang/String;
    const-string v4, "android.intent.action.GET_CONTENT"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_0

    const-string v4, "android.intent.action.PHOTOSHARE_GET_CONTENT"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 117
    :cond_0
    invoke-direct {p0, v2}, Lcom/android/gallery3d/app/Gallery;->startGetContent(Landroid/content/Intent;)V

    .line 150
    :goto_0
    return-void

    .line 118
    :cond_1
    const-string v4, "android.intent.action.PICK"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 122
    const-string v4, "Gallery"

    const-string v5, "action PICK is not supported"

    invoke-static {v4, v5}, Lcom/android/gallery3d/app/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 123
    invoke-virtual {v2}, Landroid/content/Intent;->getType()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/android/gallery3d/common/Utils;->ensureNotNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 124
    .local v3, type:Ljava/lang/String;
    const-string v4, "vnd.android.cursor.dir/"

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 125
    const-string v4, "/image"

    invoke-virtual {v3, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    const-string v4, "image/*"

    invoke-virtual {v2, v4}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 126
    :cond_2
    const-string v4, "/video"

    invoke-virtual {v3, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3

    const-string v4, "video/*"

    invoke-virtual {v2, v4}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 128
    :cond_3
    invoke-direct {p0, v2}, Lcom/android/gallery3d/app/Gallery;->startGetContent(Landroid/content/Intent;)V

    goto :goto_0

    .line 129
    .end local v3           #type:Ljava/lang/String;
    :cond_4
    const-string v4, "android.intent.action.VIEW"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_5

    const-string v4, "com.android.camera.action.REVIEW"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 131
    :cond_5
    invoke-direct {p0, v2}, Lcom/android/gallery3d/app/Gallery;->startViewAction(Landroid/content/Intent;)V

    goto :goto_0

    .line 132
    :cond_6
    const-string v4, "com.huawei.android.intent.action.PRIVATE_GALLERY"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_7

    .line 133
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 134
    .local v1, data:Landroid/os/Bundle;
    const-string v4, "media-path"

    invoke-virtual {p0}, Lcom/android/gallery3d/app/Gallery;->getDataManager()Lcom/android/gallery3d/data/DataManager;

    move-result-object v5

    const/4 v6, 0x3

    invoke-virtual {v5, v6}, Lcom/android/gallery3d/data/DataManager;->getTopSetPath(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 136
    const-string v4, "private-mode"

    invoke-virtual {p0}, Lcom/android/gallery3d/app/Gallery;->isPrivacyMode()Z

    move-result v5

    invoke-virtual {v1, v4, v5}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 137
    invoke-virtual {p0}, Lcom/android/gallery3d/app/Gallery;->getStateManager()Lcom/android/gallery3d/app/StateManager;

    move-result-object v4

    const-class v5, Lcom/android/gallery3d/app/AlbumSetPage;

    invoke-virtual {v4, v5, v1}, Lcom/android/gallery3d/app/StateManager;->startState(Ljava/lang/Class;Landroid/os/Bundle;)V

    goto :goto_0

    .line 138
    .end local v1           #data:Landroid/os/Bundle;
    :cond_7
    const-string v4, "android.intent.action.PHOTOSHARE"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_9

    .line 139
    invoke-virtual {p0}, Lcom/android/gallery3d/app/Gallery;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lcom/huawei/gallery3d/photoshare/utils/PhotoShareUtils;->isCloudPhotoNotReady(Landroid/content/Context;)Z

    move-result v4

    if-nez v4, :cond_8

    .line 140
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 141
    .restart local v1       #data:Landroid/os/Bundle;
    const-string v4, "media-path"

    const-string v5, "/photoshare/all"

    invoke-virtual {v1, v4, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 142
    const-string v4, "selected-cluster"

    const/16 v5, 0x80

    invoke-virtual {v1, v4, v5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 143
    invoke-virtual {p0}, Lcom/android/gallery3d/app/Gallery;->getStateManager()Lcom/android/gallery3d/app/StateManager;

    move-result-object v4

    const-class v5, Lcom/android/gallery3d/app/AlbumSetPage;

    invoke-virtual {v4, v5, v1}, Lcom/android/gallery3d/app/StateManager;->startState(Ljava/lang/Class;Landroid/os/Bundle;)V

    goto/16 :goto_0

    .line 145
    .end local v1           #data:Landroid/os/Bundle;
    :cond_8
    invoke-virtual {p0}, Lcom/android/gallery3d/app/Gallery;->startDefaultPage()V

    goto/16 :goto_0

    .line 148
    :cond_9
    invoke-virtual {p0}, Lcom/android/gallery3d/app/Gallery;->startDefaultPage()V

    goto/16 :goto_0
.end method

.method private startGetContent(Landroid/content/Intent;)V
    .locals 5
    .parameter "intent"

    .prologue
    const/4 v4, 0x1

    .line 165
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    if-eqz v2, :cond_1

    new-instance v0, Landroid/os/Bundle;

    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    invoke-direct {v0, v2}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    .line 168
    .local v0, data:Landroid/os/Bundle;
    :goto_0
    const-string v2, "get-content"

    invoke-virtual {v0, v2, v4}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 169
    invoke-static {p0, p1}, Lcom/android/gallery3d/util/GalleryUtils;->determineTypeBits(Landroid/content/Context;Landroid/content/Intent;)I

    move-result v1

    .line 170
    .local v1, typeBits:I
    const-string v2, "type-bits"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 171
    const-string v2, "media-path"

    invoke-virtual {p0}, Lcom/android/gallery3d/app/Gallery;->getDataManager()Lcom/android/gallery3d/data/DataManager;

    move-result-object v3

    invoke-virtual {v3, v1}, Lcom/android/gallery3d/data/DataManager;->getTopSetPath(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 173
    const-string v2, "android.intent.action.PHOTOSHARE_GET_CONTENT"

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 174
    const-string v2, "photoshare-pickmulti"

    invoke-virtual {v0, v2, v4}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 176
    const-string v2, "photoshare-path"

    invoke-virtual {p1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    .line 177
    const-string v2, "media-path"

    const-string v3, "photoshare-path"

    invoke-virtual {p1, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 183
    :cond_0
    :goto_1
    invoke-virtual {p0}, Lcom/android/gallery3d/app/Gallery;->getStateManager()Lcom/android/gallery3d/app/StateManager;

    move-result-object v2

    const-class v3, Lcom/android/gallery3d/app/AlbumSetPage;

    invoke-virtual {v2, v3, v0}, Lcom/android/gallery3d/app/StateManager;->startState(Ljava/lang/Class;Landroid/os/Bundle;)V

    .line 184
    return-void

    .line 165
    .end local v0           #data:Landroid/os/Bundle;
    .end local v1           #typeBits:I
    :cond_1
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    goto :goto_0

    .line 181
    .restart local v0       #data:Landroid/os/Bundle;
    .restart local v1       #typeBits:I
    :cond_2
    const-string v2, "photoshare-pickmulti"

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    goto :goto_1
.end method

.method private startViewAction(Landroid/content/Intent;)V
    .locals 23
    .parameter "intent"

    .prologue
    .line 203
    const-string v20, "slideshow"

    const/16 v21, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, v20

    move/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v20

    invoke-static/range {v20 .. v20}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v17

    .line 204
    .local v17, slideshow:Ljava/lang/Boolean;
    invoke-virtual/range {v17 .. v17}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v20

    if-eqz v20, :cond_3

    .line 205
    invoke-virtual/range {p0 .. p0}, Lcom/android/gallery3d/app/Gallery;->getActionBar()Landroid/app/ActionBar;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Landroid/app/ActionBar;->hide()V

    .line 206
    invoke-virtual/range {p0 .. p0}, Lcom/android/gallery3d/app/Gallery;->getDataManager()Lcom/android/gallery3d/data/DataManager;

    move-result-object v11

    .line 207
    .local v11, manager:Lcom/android/gallery3d/data/DataManager;
    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v20

    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getType()Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-virtual {v11, v0, v1}, Lcom/android/gallery3d/data/DataManager;->findPathByUri(Landroid/net/Uri;Ljava/lang/String;)Lcom/android/gallery3d/data/Path;

    move-result-object v14

    .line 208
    .local v14, path:Lcom/android/gallery3d/data/Path;
    if-eqz v14, :cond_0

    invoke-virtual {v11, v14}, Lcom/android/gallery3d/data/DataManager;->getMediaObject(Lcom/android/gallery3d/data/Path;)Lcom/android/gallery3d/data/MediaObject;

    move-result-object v20

    move-object/from16 v0, v20

    instance-of v0, v0, Lcom/android/gallery3d/data/MediaItem;

    move/from16 v20, v0

    if-eqz v20, :cond_1

    .line 210
    :cond_0
    const/16 v20, 0x1

    move/from16 v0, v20

    invoke-virtual {v11, v0}, Lcom/android/gallery3d/data/DataManager;->getTopSetPath(I)Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v20 .. v20}, Lcom/android/gallery3d/data/Path;->fromString(Ljava/lang/String;)Lcom/android/gallery3d/data/Path;

    move-result-object v14

    .line 213
    :cond_1
    new-instance v6, Landroid/os/Bundle;

    invoke-direct {v6}, Landroid/os/Bundle;-><init>()V

    .line 214
    .local v6, data:Landroid/os/Bundle;
    const-string v20, "media-set-path"

    invoke-virtual {v14}, Lcom/android/gallery3d/data/Path;->toString()Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-virtual {v6, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 215
    const-string v20, "random-order"

    const/16 v21, 0x1

    move-object/from16 v0, v20

    move/from16 v1, v21

    invoke-virtual {v6, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 216
    const-string v20, "repeat"

    const/16 v21, 0x1

    move-object/from16 v0, v20

    move/from16 v1, v21

    invoke-virtual {v6, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 217
    const-string v20, "dream"

    const/16 v21, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, v20

    move/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v20

    if-eqz v20, :cond_2

    .line 218
    const-string v20, "dream"

    const/16 v21, 0x1

    move-object/from16 v0, v20

    move/from16 v1, v21

    invoke-virtual {v6, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 220
    :cond_2
    invoke-virtual/range {p0 .. p0}, Lcom/android/gallery3d/app/Gallery;->getStateManager()Lcom/android/gallery3d/app/StateManager;

    move-result-object v20

    const-class v21, Lcom/android/gallery3d/app/SlideshowPage;

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-virtual {v0, v1, v6}, Lcom/android/gallery3d/app/StateManager;->startState(Ljava/lang/Class;Landroid/os/Bundle;)V

    .line 304
    .end local v11           #manager:Lcom/android/gallery3d/data/DataManager;
    .end local v14           #path:Lcom/android/gallery3d/data/Path;
    :goto_0
    return-void

    .line 222
    .end local v6           #data:Landroid/os/Bundle;
    :cond_3
    new-instance v6, Landroid/os/Bundle;

    invoke-direct {v6}, Landroid/os/Bundle;-><init>()V

    .line 223
    .restart local v6       #data:Landroid/os/Bundle;
    invoke-virtual/range {p0 .. p0}, Lcom/android/gallery3d/app/Gallery;->getDataManager()Lcom/android/gallery3d/data/DataManager;

    move-result-object v9

    .line 224
    .local v9, dm:Lcom/android/gallery3d/data/DataManager;
    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v19

    .line 225
    .local v19, uri:Landroid/net/Uri;
    invoke-direct/range {p0 .. p1}, Lcom/android/gallery3d/app/Gallery;->getContentType(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v4

    .line 226
    .local v4, contentType:Ljava/lang/String;
    if-nez v4, :cond_4

    .line 227
    const v20, 0x7f0d0293

    const/16 v21, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v20

    move/from16 v2, v21

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Landroid/widget/Toast;->show()V

    .line 229
    invoke-virtual/range {p0 .. p0}, Lcom/android/gallery3d/app/Gallery;->finish()V

    goto :goto_0

    .line 232
    :cond_4
    if-nez v19, :cond_5

    .line 233
    invoke-static/range {p0 .. p1}, Lcom/android/gallery3d/util/GalleryUtils;->determineTypeBits(Landroid/content/Context;Landroid/content/Intent;)I

    move-result v18

    .line 234
    .local v18, typeBits:I
    const-string v20, "type-bits"

    move-object/from16 v0, v20

    move/from16 v1, v18

    invoke-virtual {v6, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 235
    const-string v20, "media-path"

    invoke-virtual/range {p0 .. p0}, Lcom/android/gallery3d/app/Gallery;->getDataManager()Lcom/android/gallery3d/data/DataManager;

    move-result-object v21

    move-object/from16 v0, v21

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/data/DataManager;->getTopSetPath(I)Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-virtual {v6, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 237
    invoke-virtual/range {p0 .. p0}, Lcom/android/gallery3d/app/Gallery;->getStateManager()Lcom/android/gallery3d/app/StateManager;

    move-result-object v20

    const-class v21, Lcom/android/gallery3d/app/AlbumSetPage;

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-virtual {v0, v1, v6}, Lcom/android/gallery3d/app/StateManager;->startState(Ljava/lang/Class;Landroid/os/Bundle;)V

    goto :goto_0

    .line 238
    .end local v18           #typeBits:I
    :cond_5
    const-string v20, "vnd.android.cursor.dir"

    move-object/from16 v0, v20

    invoke-virtual {v4, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v20

    if-eqz v20, :cond_a

    .line 240
    const-string v20, "mediaTypes"

    const/16 v21, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, v20

    move/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v13

    .line 241
    .local v13, mediaType:I
    if-eqz v13, :cond_6

    .line 242
    invoke-virtual/range {v19 .. v19}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v20

    const-string v21, "mediaTypes"

    invoke-static {v13}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v20 .. v22}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v19

    .line 246
    :cond_6
    const/16 v20, 0x0

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-virtual {v9, v0, v1}, Lcom/android/gallery3d/data/DataManager;->findPathByUri(Landroid/net/Uri;Ljava/lang/String;)Lcom/android/gallery3d/data/Path;

    move-result-object v15

    .line 247
    .local v15, setPath:Lcom/android/gallery3d/data/Path;
    const/4 v12, 0x0

    .line 248
    .local v12, mediaSet:Lcom/android/gallery3d/data/MediaSet;
    if-eqz v15, :cond_7

    .line 249
    invoke-virtual {v9, v15}, Lcom/android/gallery3d/data/DataManager;->getMediaObject(Lcom/android/gallery3d/data/Path;)Lcom/android/gallery3d/data/MediaObject;

    move-result-object v12

    .end local v12           #mediaSet:Lcom/android/gallery3d/data/MediaSet;
    check-cast v12, Lcom/android/gallery3d/data/MediaSet;

    .line 251
    .restart local v12       #mediaSet:Lcom/android/gallery3d/data/MediaSet;
    :cond_7
    if-eqz v12, :cond_9

    .line 252
    invoke-virtual {v12}, Lcom/android/gallery3d/data/MediaSet;->isLeafAlbum()Z

    move-result v20

    if-eqz v20, :cond_8

    .line 253
    const-string v20, "media-path"

    invoke-virtual {v15}, Lcom/android/gallery3d/data/Path;->toString()Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-virtual {v6, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 254
    const-string v20, "parent-media-path"

    const/16 v21, 0x3

    move/from16 v0, v21

    invoke-virtual {v9, v0}, Lcom/android/gallery3d/data/DataManager;->getTopSetPath(I)Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-virtual {v6, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 256
    invoke-virtual/range {p0 .. p0}, Lcom/android/gallery3d/app/Gallery;->getStateManager()Lcom/android/gallery3d/app/StateManager;

    move-result-object v20

    const-class v21, Lcom/android/gallery3d/app/AlbumPage;

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-virtual {v0, v1, v6}, Lcom/android/gallery3d/app/StateManager;->startState(Ljava/lang/Class;Landroid/os/Bundle;)V

    goto/16 :goto_0

    .line 258
    :cond_8
    const-string v20, "media-path"

    invoke-virtual {v15}, Lcom/android/gallery3d/data/Path;->toString()Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-virtual {v6, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 259
    invoke-virtual/range {p0 .. p0}, Lcom/android/gallery3d/app/Gallery;->getStateManager()Lcom/android/gallery3d/app/StateManager;

    move-result-object v20

    const-class v21, Lcom/android/gallery3d/app/AlbumSetPage;

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-virtual {v0, v1, v6}, Lcom/android/gallery3d/app/StateManager;->startState(Ljava/lang/Class;Landroid/os/Bundle;)V

    goto/16 :goto_0

    .line 262
    :cond_9
    invoke-virtual/range {p0 .. p0}, Lcom/android/gallery3d/app/Gallery;->startDefaultPage()V

    goto/16 :goto_0

    .line 265
    .end local v12           #mediaSet:Lcom/android/gallery3d/data/MediaSet;
    .end local v13           #mediaType:I
    .end local v15           #setPath:Lcom/android/gallery3d/data/Path;
    :cond_a
    move-object/from16 v0, v19

    invoke-virtual {v9, v0, v4}, Lcom/android/gallery3d/data/DataManager;->findPathByUri(Landroid/net/Uri;Ljava/lang/String;)Lcom/android/gallery3d/data/Path;

    move-result-object v10

    .line 267
    .local v10, itemPath:Lcom/android/gallery3d/data/Path;
    if-nez v10, :cond_b

    .line 268
    invoke-virtual/range {p0 .. p0}, Lcom/android/gallery3d/app/Gallery;->finish()V

    goto/16 :goto_0

    .line 273
    :cond_b
    invoke-virtual {v9, v10}, Lcom/android/gallery3d/data/DataManager;->getDefaultSetOf(Lcom/android/gallery3d/data/Path;)Lcom/android/gallery3d/data/Path;

    move-result-object v3

    .line 275
    .local v3, albumPath:Lcom/android/gallery3d/data/Path;
    const-string v20, "media-item-path"

    invoke-virtual {v10}, Lcom/android/gallery3d/data/Path;->toString()Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-virtual {v6, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 279
    if-eqz v3, :cond_c

    const-string v20, "SingleItemOnly"

    const/16 v21, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, v20

    move/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v20

    if-eqz v20, :cond_f

    :cond_c
    const/16 v16, 0x1

    .line 281
    .local v16, singleItemOnly:Z
    :goto_1
    if-nez v16, :cond_e

    .line 282
    const-string v20, "media-set-path"

    invoke-virtual {v3}, Lcom/android/gallery3d/data/Path;->toString()Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-virtual {v6, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 287
    const-string v20, "treat-back-as-up"

    const/16 v21, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, v20

    move/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v20

    if-eqz v20, :cond_d

    .line 289
    const-string v20, "treat-back-as-up"

    const/16 v21, 0x1

    move-object/from16 v0, v20

    move/from16 v1, v21

    invoke-virtual {v6, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 292
    :cond_d
    invoke-virtual {v9, v10}, Lcom/android/gallery3d/data/DataManager;->getDefaultItemId(Lcom/android/gallery3d/data/Path;)I

    move-result v5

    .line 293
    .local v5, cursor_id:I
    invoke-virtual {v9, v10}, Lcom/android/gallery3d/data/DataManager;->getDefaultItemDateTaken(Lcom/android/gallery3d/data/Path;)J

    move-result-wide v7

    .line 294
    .local v7, dateTaken:J
    const-string v20, "item_id"

    move-object/from16 v0, v20

    invoke-virtual {v6, v0, v5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 295
    const-string v20, "date_taken"

    move-object/from16 v0, v20

    invoke-virtual {v6, v0, v7, v8}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 299
    .end local v5           #cursor_id:I
    .end local v7           #dateTaken:J
    :cond_e
    const-string v20, "Single_Item_Only"

    const-string v21, "SingleItemOnly"

    const/16 v22, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, v21

    move/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v21

    move-object/from16 v0, v20

    move/from16 v1, v21

    invoke-virtual {v6, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 301
    invoke-virtual/range {p0 .. p0}, Lcom/android/gallery3d/app/Gallery;->getStateManager()Lcom/android/gallery3d/app/StateManager;

    move-result-object v20

    const-class v21, Lcom/android/gallery3d/app/PhotoPage;

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-virtual {v0, v1, v6}, Lcom/android/gallery3d/app/StateManager;->startState(Ljava/lang/Class;Landroid/os/Bundle;)V

    goto/16 :goto_0

    .line 279
    .end local v16           #singleItemOnly:Z
    :cond_f
    const/16 v16, 0x0

    goto :goto_1
.end method


# virtual methods
.method protected getTabsBar(I)Lcom/android/gallery3d/ui/AlbumSetTabsBar;
    .locals 2
    .parameter "action"

    .prologue
    .line 332
    iget-object v0, p0, Lcom/android/gallery3d/app/Gallery;->mTabView:Lcom/android/gallery3d/ui/AlbumSetTabsBar;

    if-nez v0, :cond_0

    .line 333
    new-instance v0, Lcom/android/gallery3d/ui/AlbumSetTabsBar;

    const v1, 0x7f1000fb

    invoke-virtual {p0, v1}, Lcom/android/gallery3d/app/Gallery;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-direct {v0, p0, v1, p1}, Lcom/android/gallery3d/ui/AlbumSetTabsBar;-><init>(Lcom/android/gallery3d/app/AbstractGalleryActivity;Landroid/view/View;I)V

    iput-object v0, p0, Lcom/android/gallery3d/app/Gallery;->mTabView:Lcom/android/gallery3d/ui/AlbumSetTabsBar;

    .line 335
    :cond_0
    iget-object v0, p0, Lcom/android/gallery3d/app/Gallery;->mTabView:Lcom/android/gallery3d/ui/AlbumSetTabsBar;

    return-object v0
.end method

.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 1
    .parameter "dialog"

    .prologue
    .line 325
    iget-object v0, p0, Lcom/android/gallery3d/app/Gallery;->mVersionCheckDialog:Landroid/app/Dialog;

    if-ne p1, v0, :cond_0

    .line 326
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/gallery3d/app/Gallery;->mVersionCheckDialog:Landroid/app/Dialog;

    .line 328
    :cond_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3
    .parameter "savedInstanceState"

    .prologue
    .line 89
    invoke-super {p0, p1}, Lcom/android/gallery3d/app/AbstractGalleryActivity;->onCreate(Landroid/os/Bundle;)V

    .line 91
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lcom/android/gallery3d/app/Gallery;->requestWindowFeature(I)Z

    .line 92
    const/16 v0, 0x9

    invoke-virtual {p0, v0}, Lcom/android/gallery3d/app/Gallery;->requestWindowFeature(I)Z

    .line 94
    invoke-virtual {p0}, Lcom/android/gallery3d/app/Gallery;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "dismiss-keyguard"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 95
    invoke-virtual {p0}, Lcom/android/gallery3d/app/Gallery;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/high16 v1, 0x40

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    .line 99
    :cond_0
    const v0, 0x7f04002e

    invoke-virtual {p0, v0}, Lcom/android/gallery3d/app/Gallery;->setContentView(I)V

    .line 100
    invoke-virtual {p0}, Lcom/android/gallery3d/app/Gallery;->getGLRoot()Lcom/android/gallery3d/ui/GLRoot;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/gallery3d/ui/GLRoot;->requestFullScreenLayout()V

    .line 102
    if-eqz p1, :cond_1

    .line 103
    invoke-virtual {p0}, Lcom/android/gallery3d/app/Gallery;->getStateManager()Lcom/android/gallery3d/app/StateManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/gallery3d/app/StateManager;->restoreFromState(Landroid/os/Bundle;)V

    .line 108
    :goto_0
    invoke-static {p0}, Lcom/android/gallery3d/util/GalleryUtils;->checkLanguage(Lcom/android/gallery3d/app/AbstractGalleryActivity;)V

    .line 110
    return-void

    .line 105
    :cond_1
    invoke-direct {p0}, Lcom/android/gallery3d/app/Gallery;->initializeByIntent()V

    goto :goto_0
.end method

.method protected onPause()V
    .locals 1

    .prologue
    .line 317
    invoke-super {p0}, Lcom/android/gallery3d/app/AbstractGalleryActivity;->onPause()V

    .line 318
    iget-object v0, p0, Lcom/android/gallery3d/app/Gallery;->mVersionCheckDialog:Landroid/app/Dialog;

    if-eqz v0, :cond_0

    .line 319
    iget-object v0, p0, Lcom/android/gallery3d/app/Gallery;->mVersionCheckDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 321
    :cond_0
    return-void
.end method

.method protected onResume()V
    .locals 1

    .prologue
    .line 308
    invoke-virtual {p0}, Lcom/android/gallery3d/app/Gallery;->getStateManager()Lcom/android/gallery3d/app/StateManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/gallery3d/app/StateManager;->getStateCount()I

    move-result v0

    if-lez v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Lcom/android/gallery3d/common/Utils;->assertTrue(Z)V

    .line 309
    invoke-super {p0}, Lcom/android/gallery3d/app/AbstractGalleryActivity;->onResume()V

    .line 310
    iget-object v0, p0, Lcom/android/gallery3d/app/Gallery;->mVersionCheckDialog:Landroid/app/Dialog;

    if-eqz v0, :cond_0

    .line 311
    iget-object v0, p0, Lcom/android/gallery3d/app/Gallery;->mVersionCheckDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 313
    :cond_0
    return-void

    .line 308
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public startDefaultPage()V
    .locals 4

    .prologue
    .line 153
    invoke-static {p0}, Lcom/android/gallery3d/picasasource/PicasaSource;->showSignInReminder(Landroid/app/Activity;)V

    .line 154
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 155
    .local v0, data:Landroid/os/Bundle;
    const-string v1, "media-path"

    invoke-virtual {p0}, Lcom/android/gallery3d/app/Gallery;->getDataManager()Lcom/android/gallery3d/data/DataManager;

    move-result-object v2

    const/4 v3, 0x3

    invoke-virtual {v2, v3}, Lcom/android/gallery3d/data/DataManager;->getTopSetPath(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 157
    invoke-virtual {p0}, Lcom/android/gallery3d/app/Gallery;->getStateManager()Lcom/android/gallery3d/app/StateManager;

    move-result-object v1

    const-class v2, Lcom/android/gallery3d/app/AlbumSetPage;

    invoke-virtual {v1, v2, v0}, Lcom/android/gallery3d/app/StateManager;->startState(Ljava/lang/Class;Landroid/os/Bundle;)V

    .line 158
    invoke-static {p0}, Lcom/android/gallery3d/picasasource/PicasaSource;->getVersionCheckDialog(Landroid/app/Activity;)Landroid/app/Dialog;

    move-result-object v1

    iput-object v1, p0, Lcom/android/gallery3d/app/Gallery;->mVersionCheckDialog:Landroid/app/Dialog;

    .line 159
    iget-object v1, p0, Lcom/android/gallery3d/app/Gallery;->mVersionCheckDialog:Landroid/app/Dialog;

    if-eqz v1, :cond_0

    .line 160
    iget-object v1, p0, Lcom/android/gallery3d/app/Gallery;->mVersionCheckDialog:Landroid/app/Dialog;

    invoke-virtual {v1, p0}, Landroid/app/Dialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 162
    :cond_0
    return-void
.end method
