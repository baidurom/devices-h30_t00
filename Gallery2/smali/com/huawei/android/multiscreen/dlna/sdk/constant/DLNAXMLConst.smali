.class public Lcom/huawei/android/multiscreen/dlna/sdk/constant/DLNAXMLConst;
.super Ljava/lang/Object;
.source "DLNAXMLConst.java"


# static fields
.field public static final AUDIO_CLASS:Ljava/util/ArrayList; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final FOLDER_CLASS:Ljava/util/ArrayList; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final IMAGE_CLASS:Ljava/util/ArrayList; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final TYPE_CONTAINER:Ljava/lang/String; = "container"

.field public static final TYPE_DIDLLITE:Ljava/lang/String; = "DIDL-Lite"

.field public static final TYPE_ITEM:Ljava/lang/String; = "item"

.field public static final VIDEO_CLASS:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 36
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/huawei/android/multiscreen/dlna/sdk/constant/DLNAXMLConst;->VIDEO_CLASS:Ljava/util/ArrayList;

    .line 41
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/huawei/android/multiscreen/dlna/sdk/constant/DLNAXMLConst;->AUDIO_CLASS:Ljava/util/ArrayList;

    .line 45
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/huawei/android/multiscreen/dlna/sdk/constant/DLNAXMLConst;->IMAGE_CLASS:Ljava/util/ArrayList;

    .line 49
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/huawei/android/multiscreen/dlna/sdk/constant/DLNAXMLConst;->FOLDER_CLASS:Ljava/util/ArrayList;

    .line 52
    sget-object v0, Lcom/huawei/android/multiscreen/dlna/sdk/constant/DLNAXMLConst;->VIDEO_CLASS:Ljava/util/ArrayList;

    const-string v1, "object.item.videoItem"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 53
    sget-object v0, Lcom/huawei/android/multiscreen/dlna/sdk/constant/DLNAXMLConst;->VIDEO_CLASS:Ljava/util/ArrayList;

    const-string v1, "object.item.videoItem.movie"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 54
    sget-object v0, Lcom/huawei/android/multiscreen/dlna/sdk/constant/DLNAXMLConst;->VIDEO_CLASS:Ljava/util/ArrayList;

    const-string v1, "object.item.videoItem.videoBroadcast"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 55
    sget-object v0, Lcom/huawei/android/multiscreen/dlna/sdk/constant/DLNAXMLConst;->VIDEO_CLASS:Ljava/util/ArrayList;

    const-string v1, "object.item.videoItem.musicVideoClip"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 57
    sget-object v0, Lcom/huawei/android/multiscreen/dlna/sdk/constant/DLNAXMLConst;->AUDIO_CLASS:Ljava/util/ArrayList;

    const-string v1, "object.item.audioItem"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 58
    sget-object v0, Lcom/huawei/android/multiscreen/dlna/sdk/constant/DLNAXMLConst;->AUDIO_CLASS:Ljava/util/ArrayList;

    const-string v1, "object.item.audioItem.musicTrack"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 59
    sget-object v0, Lcom/huawei/android/multiscreen/dlna/sdk/constant/DLNAXMLConst;->AUDIO_CLASS:Ljava/util/ArrayList;

    const-string v1, "object.item.audioItem.audioBroadcast"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 60
    sget-object v0, Lcom/huawei/android/multiscreen/dlna/sdk/constant/DLNAXMLConst;->AUDIO_CLASS:Ljava/util/ArrayList;

    const-string v1, "object.item.audioItem.audioBook"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 62
    sget-object v0, Lcom/huawei/android/multiscreen/dlna/sdk/constant/DLNAXMLConst;->IMAGE_CLASS:Ljava/util/ArrayList;

    const-string v1, "object.item.imageItem"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 63
    sget-object v0, Lcom/huawei/android/multiscreen/dlna/sdk/constant/DLNAXMLConst;->IMAGE_CLASS:Ljava/util/ArrayList;

    const-string v1, "object.item.imageItem.photo"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 65
    sget-object v0, Lcom/huawei/android/multiscreen/dlna/sdk/constant/DLNAXMLConst;->FOLDER_CLASS:Ljava/util/ArrayList;

    const-string v1, "object.container"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 66
    sget-object v0, Lcom/huawei/android/multiscreen/dlna/sdk/constant/DLNAXMLConst;->FOLDER_CLASS:Ljava/util/ArrayList;

    const-string v1, "object.container.person"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 67
    sget-object v0, Lcom/huawei/android/multiscreen/dlna/sdk/constant/DLNAXMLConst;->FOLDER_CLASS:Ljava/util/ArrayList;

    const-string v1, "object.container.person.musicArtist"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 68
    sget-object v0, Lcom/huawei/android/multiscreen/dlna/sdk/constant/DLNAXMLConst;->FOLDER_CLASS:Ljava/util/ArrayList;

    const-string v1, "object.container.playlistContainer"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 69
    sget-object v0, Lcom/huawei/android/multiscreen/dlna/sdk/constant/DLNAXMLConst;->FOLDER_CLASS:Ljava/util/ArrayList;

    const-string v1, "object.container.album"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 70
    sget-object v0, Lcom/huawei/android/multiscreen/dlna/sdk/constant/DLNAXMLConst;->FOLDER_CLASS:Ljava/util/ArrayList;

    const-string v1, "object.container.album.musicAlbum"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 71
    sget-object v0, Lcom/huawei/android/multiscreen/dlna/sdk/constant/DLNAXMLConst;->FOLDER_CLASS:Ljava/util/ArrayList;

    const-string v1, "object.container.album.photoAlbum"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 72
    sget-object v0, Lcom/huawei/android/multiscreen/dlna/sdk/constant/DLNAXMLConst;->FOLDER_CLASS:Ljava/util/ArrayList;

    const-string v1, "object.container.genre"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 73
    sget-object v0, Lcom/huawei/android/multiscreen/dlna/sdk/constant/DLNAXMLConst;->FOLDER_CLASS:Ljava/util/ArrayList;

    const-string v1, "object.container.genre.musicGenre"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 74
    sget-object v0, Lcom/huawei/android/multiscreen/dlna/sdk/constant/DLNAXMLConst;->FOLDER_CLASS:Ljava/util/ArrayList;

    const-string v1, "object.container.genre.movieGenre"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 75
    sget-object v0, Lcom/huawei/android/multiscreen/dlna/sdk/constant/DLNAXMLConst;->FOLDER_CLASS:Ljava/util/ArrayList;

    const-string v1, "object.container.channelGroup"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 76
    sget-object v0, Lcom/huawei/android/multiscreen/dlna/sdk/constant/DLNAXMLConst;->FOLDER_CLASS:Ljava/util/ArrayList;

    const-string v1, "object.container.channelGroup.audioChannelGroup"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 77
    sget-object v0, Lcom/huawei/android/multiscreen/dlna/sdk/constant/DLNAXMLConst;->FOLDER_CLASS:Ljava/util/ArrayList;

    const-string v1, "object.container.channelGroup.videoChannelGroup"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 78
    sget-object v0, Lcom/huawei/android/multiscreen/dlna/sdk/constant/DLNAXMLConst;->FOLDER_CLASS:Ljava/util/ArrayList;

    const-string v1, "object.container.epgContainer"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 79
    sget-object v0, Lcom/huawei/android/multiscreen/dlna/sdk/constant/DLNAXMLConst;->FOLDER_CLASS:Ljava/util/ArrayList;

    const-string v1, "object.container.storageSystem"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 80
    sget-object v0, Lcom/huawei/android/multiscreen/dlna/sdk/constant/DLNAXMLConst;->FOLDER_CLASS:Ljava/util/ArrayList;

    const-string v1, "object.container.storageVolume"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 81
    sget-object v0, Lcom/huawei/android/multiscreen/dlna/sdk/constant/DLNAXMLConst;->FOLDER_CLASS:Ljava/util/ArrayList;

    const-string v1, "object.container.storageFolder"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 82
    sget-object v0, Lcom/huawei/android/multiscreen/dlna/sdk/constant/DLNAXMLConst;->FOLDER_CLASS:Ljava/util/ArrayList;

    const-string v1, "object.container.bookmarkFolder"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 83
    sget-object v0, Lcom/huawei/android/multiscreen/dlna/sdk/constant/DLNAXMLConst;->FOLDER_CLASS:Ljava/util/ArrayList;

    const-string v1, "object.container.audio"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 84
    sget-object v0, Lcom/huawei/android/multiscreen/dlna/sdk/constant/DLNAXMLConst;->FOLDER_CLASS:Ljava/util/ArrayList;

    const-string v1, "object.container.video"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 85
    sget-object v0, Lcom/huawei/android/multiscreen/dlna/sdk/constant/DLNAXMLConst;->FOLDER_CLASS:Ljava/util/ArrayList;

    const-string v1, "object.container.image"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 19
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 19
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
