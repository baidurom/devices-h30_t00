.class public final Lcom/huawei/android/multiscreen/dlna/sdk/constant/DLNAConst;
.super Ljava/lang/Object;
.source "DLNAConst.java"


# static fields
.field public static final ABNORMAL_FILENAME_SUFFIX:Ljava/lang/String; = "too_long_name"

.field public static final ALL_TABLE_CHANGE_EVENT:B = 0xft

.field public static final AUDIO_MAP:Ljava/util/Map; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final AUDIO_TABLE_CHANGE_EVENT:B = 0x8t

.field public static final CLEAR_CACHE_THRESHOLD_KB:J = 0x25800L

.field public static final COMPRESS_RATE:I = 0x3c

.field public static final DATABASE_LOAD_THRESHOLD:I = 0x38

.field public static final DATABASE_LOAD_THRESHOLD_LOCAL:I = 0x54

.field public static final DATABASE_PAGINATION_SIZE:I = 0x64

.field public static final DATABASE_PAGINATION_SIZE_LOCAL:I = 0x64

.field public static final DIDL_LITE_END:Ljava/lang/String; = "</DIDL-Lite>"

.field public static final DIDL_LITE_START:Ljava/lang/String; = "<DIDL-Lite"

.field public static final DLNA_VIDEO_TYPES:Ljava/lang/String; = "mp4;3gp"

.field public static final FOLDER_MAP:Ljava/util/Map; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final FOLDER_TABLE_CHANGE_EVENT:B = 0x1t

.field public static final FULL_ALPHA:I = 0xff

.field public static final FULL_IMAGE_CACHEFILE_PREFIX:Ljava/lang/String; = "FullImage_"

.field public static final HALF_ALPHA:I = 0x80

.field public static final IMAGE_MAP:Ljava/util/Map; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final IMAGE_TABLE_CHANGE_EVENT:B = 0x2t

.field public static final JPEG_SUFFIX:Ljava/lang/String; = ".jpg"

.field public static final SIZE_KB:J = 0x400L

.field public static final SIZE_MB:J = 0x100000L

.field public static final THUMBNAILS_IMAGE_CACHEFILE_PREFIX:Ljava/lang/String; = "Thumbnails_"

.field public static final THUMBNAIL_FETCH_RETRY_COUNT_THRESHOLD:I = 0x6

.field public static final THUMBNAIL_FETCH_RETRY_WAIT_MAX_DELAY:J = 0xc8L

.field public static final VIDEO_MAP:Ljava/util/Map; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final VIDEO_TABLE_CHANGE_EVENT:B = 0x4t


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 34
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/huawei/android/multiscreen/dlna/sdk/constant/DLNAConst;->FOLDER_MAP:Ljava/util/Map;

    .line 39
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/huawei/android/multiscreen/dlna/sdk/constant/DLNAConst;->AUDIO_MAP:Ljava/util/Map;

    .line 44
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/huawei/android/multiscreen/dlna/sdk/constant/DLNAConst;->VIDEO_MAP:Ljava/util/Map;

    .line 49
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/huawei/android/multiscreen/dlna/sdk/constant/DLNAConst;->IMAGE_MAP:Ljava/util/Map;

    .line 167
    sget-object v0, Lcom/huawei/android/multiscreen/dlna/sdk/constant/DLNAConst;->FOLDER_MAP:Ljava/util/Map;

    const-string v1, "id"

    const-string v2, "folder_id"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 168
    sget-object v0, Lcom/huawei/android/multiscreen/dlna/sdk/constant/DLNAConst;->FOLDER_MAP:Ljava/util/Map;

    const-string v1, "dc:title"

    const-string v2, "_display_name"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 169
    sget-object v0, Lcom/huawei/android/multiscreen/dlna/sdk/constant/DLNAConst;->FOLDER_MAP:Ljava/util/Map;

    const-string v1, "parentID"

    const-string v2, "parent_id"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 171
    sget-object v0, Lcom/huawei/android/multiscreen/dlna/sdk/constant/DLNAConst;->AUDIO_MAP:Ljava/util/Map;

    const-string v1, "id"

    const-string v2, "item_id"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 172
    sget-object v0, Lcom/huawei/android/multiscreen/dlna/sdk/constant/DLNAConst;->AUDIO_MAP:Ljava/util/Map;

    const-string v1, "res"

    const-string v2, "_data"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 173
    sget-object v0, Lcom/huawei/android/multiscreen/dlna/sdk/constant/DLNAConst;->AUDIO_MAP:Ljava/util/Map;

    const-string v1, "size"

    const-string v2, "_size"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 174
    sget-object v0, Lcom/huawei/android/multiscreen/dlna/sdk/constant/DLNAConst;->AUDIO_MAP:Ljava/util/Map;

    const-string v1, "protocolInfo"

    const-string v2, "mime_type"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 175
    sget-object v0, Lcom/huawei/android/multiscreen/dlna/sdk/constant/DLNAConst;->AUDIO_MAP:Ljava/util/Map;

    const-string v1, "validityStart"

    const-string v2, "date_added"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 176
    sget-object v0, Lcom/huawei/android/multiscreen/dlna/sdk/constant/DLNAConst;->AUDIO_MAP:Ljava/util/Map;

    const-string v1, "validityEnd"

    const-string v2, "date_modified"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 177
    sget-object v0, Lcom/huawei/android/multiscreen/dlna/sdk/constant/DLNAConst;->AUDIO_MAP:Ljava/util/Map;

    const-string v1, "dc:title"

    const-string v2, "title"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 178
    sget-object v0, Lcom/huawei/android/multiscreen/dlna/sdk/constant/DLNAConst;->AUDIO_MAP:Ljava/util/Map;

    const-string v1, "dc:date"

    const-string v2, "date_created"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 179
    sget-object v0, Lcom/huawei/android/multiscreen/dlna/sdk/constant/DLNAConst;->AUDIO_MAP:Ljava/util/Map;

    const-string v1, "duration"

    const-string v2, "duration"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 180
    sget-object v0, Lcom/huawei/android/multiscreen/dlna/sdk/constant/DLNAConst;->AUDIO_MAP:Ljava/util/Map;

    const-string v1, "upnp:artist"

    const-string v2, "artist"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 181
    sget-object v0, Lcom/huawei/android/multiscreen/dlna/sdk/constant/DLNAConst;->AUDIO_MAP:Ljava/util/Map;

    const-string v1, "upnp:producer"

    const-string v2, "composer"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 182
    sget-object v0, Lcom/huawei/android/multiscreen/dlna/sdk/constant/DLNAConst;->AUDIO_MAP:Ljava/util/Map;

    const-string v1, "upnp:album"

    const-string v2, "album_id"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 183
    sget-object v0, Lcom/huawei/android/multiscreen/dlna/sdk/constant/DLNAConst;->AUDIO_MAP:Ljava/util/Map;

    const-string v1, "upnp:originalTrackNumber"

    const-string v2, "track"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 184
    sget-object v0, Lcom/huawei/android/multiscreen/dlna/sdk/constant/DLNAConst;->AUDIO_MAP:Ljava/util/Map;

    const-string v1, "upnp:bookmarkID"

    const-string v2, "bookmark"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 185
    sget-object v0, Lcom/huawei/android/multiscreen/dlna/sdk/constant/DLNAConst;->AUDIO_MAP:Ljava/util/Map;

    const-string v1, "parentID"

    const-string v2, "parent_id"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 186
    sget-object v0, Lcom/huawei/android/multiscreen/dlna/sdk/constant/DLNAConst;->AUDIO_MAP:Ljava/util/Map;

    const-string v1, "refID"

    const-string v2, "ref_id"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 187
    sget-object v0, Lcom/huawei/android/multiscreen/dlna/sdk/constant/DLNAConst;->AUDIO_MAP:Ljava/util/Map;

    const-string v1, "upnp:albumArtURI"

    const-string v2, "albumart_uri"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 188
    sget-object v0, Lcom/huawei/android/multiscreen/dlna/sdk/constant/DLNAConst;->AUDIO_MAP:Ljava/util/Map;

    const-string v1, "upnp:class"

    const-string v2, "upnp_class"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 191
    sget-object v0, Lcom/huawei/android/multiscreen/dlna/sdk/constant/DLNAConst;->VIDEO_MAP:Ljava/util/Map;

    const-string v1, "id"

    const-string v2, "item_id"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 192
    sget-object v0, Lcom/huawei/android/multiscreen/dlna/sdk/constant/DLNAConst;->VIDEO_MAP:Ljava/util/Map;

    const-string v1, "res"

    const-string v2, "_data"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 193
    sget-object v0, Lcom/huawei/android/multiscreen/dlna/sdk/constant/DLNAConst;->VIDEO_MAP:Ljava/util/Map;

    const-string v1, "size"

    const-string v2, "_size"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 194
    sget-object v0, Lcom/huawei/android/multiscreen/dlna/sdk/constant/DLNAConst;->VIDEO_MAP:Ljava/util/Map;

    const-string v1, "protocolInfo"

    const-string v2, "mime_type"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 195
    sget-object v0, Lcom/huawei/android/multiscreen/dlna/sdk/constant/DLNAConst;->VIDEO_MAP:Ljava/util/Map;

    const-string v1, "validityStart"

    const-string v2, "date_added"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 196
    sget-object v0, Lcom/huawei/android/multiscreen/dlna/sdk/constant/DLNAConst;->VIDEO_MAP:Ljava/util/Map;

    const-string v1, "validityEnd"

    const-string v2, "date_modified"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 197
    sget-object v0, Lcom/huawei/android/multiscreen/dlna/sdk/constant/DLNAConst;->VIDEO_MAP:Ljava/util/Map;

    const-string v1, "dc:title"

    const-string v2, "title"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 198
    sget-object v0, Lcom/huawei/android/multiscreen/dlna/sdk/constant/DLNAConst;->VIDEO_MAP:Ljava/util/Map;

    const-string v1, "dc:date"

    const-string v2, "date_created"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 199
    sget-object v0, Lcom/huawei/android/multiscreen/dlna/sdk/constant/DLNAConst;->VIDEO_MAP:Ljava/util/Map;

    const-string v1, "duration"

    const-string v2, "duration"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 200
    sget-object v0, Lcom/huawei/android/multiscreen/dlna/sdk/constant/DLNAConst;->VIDEO_MAP:Ljava/util/Map;

    const-string v1, "upnp:artist"

    const-string v2, "artist"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 201
    sget-object v0, Lcom/huawei/android/multiscreen/dlna/sdk/constant/DLNAConst;->VIDEO_MAP:Ljava/util/Map;

    const-string v1, "upnp:album"

    const-string v2, "album"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 202
    sget-object v0, Lcom/huawei/android/multiscreen/dlna/sdk/constant/DLNAConst;->VIDEO_MAP:Ljava/util/Map;

    const-string v1, "resolution"

    const-string v2, "resolution"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 203
    sget-object v0, Lcom/huawei/android/multiscreen/dlna/sdk/constant/DLNAConst;->VIDEO_MAP:Ljava/util/Map;

    const-string v1, "dc:description"

    const-string v2, "description"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 204
    sget-object v0, Lcom/huawei/android/multiscreen/dlna/sdk/constant/DLNAConst;->VIDEO_MAP:Ljava/util/Map;

    const-string v1, "dc:language"

    const-string v2, "language"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 205
    sget-object v0, Lcom/huawei/android/multiscreen/dlna/sdk/constant/DLNAConst;->VIDEO_MAP:Ljava/util/Map;

    const-string v1, "upnp:bookmarkID"

    const-string v2, "bookmark"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 206
    sget-object v0, Lcom/huawei/android/multiscreen/dlna/sdk/constant/DLNAConst;->VIDEO_MAP:Ljava/util/Map;

    const-string v1, "parentID"

    const-string v2, "parent_id"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 207
    sget-object v0, Lcom/huawei/android/multiscreen/dlna/sdk/constant/DLNAConst;->VIDEO_MAP:Ljava/util/Map;

    const-string v1, "refID"

    const-string v2, "ref_id"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 208
    sget-object v0, Lcom/huawei/android/multiscreen/dlna/sdk/constant/DLNAConst;->VIDEO_MAP:Ljava/util/Map;

    const-string v1, "upnp:albumArtURI"

    const-string v2, "albumart_uri"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 209
    sget-object v0, Lcom/huawei/android/multiscreen/dlna/sdk/constant/DLNAConst;->VIDEO_MAP:Ljava/util/Map;

    const-string v1, "upnp:class"

    const-string v2, "upnp_class"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 211
    sget-object v0, Lcom/huawei/android/multiscreen/dlna/sdk/constant/DLNAConst;->IMAGE_MAP:Ljava/util/Map;

    const-string v1, "id"

    const-string v2, "item_id"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 212
    sget-object v0, Lcom/huawei/android/multiscreen/dlna/sdk/constant/DLNAConst;->IMAGE_MAP:Ljava/util/Map;

    const-string v1, "res"

    const-string v2, "_data"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 213
    sget-object v0, Lcom/huawei/android/multiscreen/dlna/sdk/constant/DLNAConst;->IMAGE_MAP:Ljava/util/Map;

    const-string v1, "size"

    const-string v2, "_size"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 214
    sget-object v0, Lcom/huawei/android/multiscreen/dlna/sdk/constant/DLNAConst;->IMAGE_MAP:Ljava/util/Map;

    const-string v1, "protocolInfo"

    const-string v2, "mime_type"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 215
    sget-object v0, Lcom/huawei/android/multiscreen/dlna/sdk/constant/DLNAConst;->IMAGE_MAP:Ljava/util/Map;

    const-string v1, "validityStart"

    const-string v2, "date_added"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 216
    sget-object v0, Lcom/huawei/android/multiscreen/dlna/sdk/constant/DLNAConst;->IMAGE_MAP:Ljava/util/Map;

    const-string v1, "validityEnd"

    const-string v2, "date_modified"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 217
    sget-object v0, Lcom/huawei/android/multiscreen/dlna/sdk/constant/DLNAConst;->IMAGE_MAP:Ljava/util/Map;

    const-string v1, "dc:title"

    const-string v2, "title"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 218
    sget-object v0, Lcom/huawei/android/multiscreen/dlna/sdk/constant/DLNAConst;->IMAGE_MAP:Ljava/util/Map;

    const-string v1, "dc:date"

    const-string v2, "date_created"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 219
    sget-object v0, Lcom/huawei/android/multiscreen/dlna/sdk/constant/DLNAConst;->IMAGE_MAP:Ljava/util/Map;

    const-string v1, "dc:description"

    const-string v2, "description"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 220
    sget-object v0, Lcom/huawei/android/multiscreen/dlna/sdk/constant/DLNAConst;->IMAGE_MAP:Ljava/util/Map;

    const-string v1, "parentID"

    const-string v2, "parent_id"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 221
    sget-object v0, Lcom/huawei/android/multiscreen/dlna/sdk/constant/DLNAConst;->IMAGE_MAP:Ljava/util/Map;

    const-string v1, "refID"

    const-string v2, "ref_id"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 222
    sget-object v0, Lcom/huawei/android/multiscreen/dlna/sdk/constant/DLNAConst;->IMAGE_MAP:Ljava/util/Map;

    const-string v1, "upnp:albumArtURI"

    const-string v2, "albumart_uri"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 223
    sget-object v0, Lcom/huawei/android/multiscreen/dlna/sdk/constant/DLNAConst;->IMAGE_MAP:Ljava/util/Map;

    const-string v1, "upnp:class"

    const-string v2, "upnp_class"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 21
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 21
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
