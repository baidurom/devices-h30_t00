.class public final Lcom/android/gallery3d/util/Prop4g;
.super Ljava/lang/Object;
.source "Prop4g.java"


# static fields
.field static final sBlackListProp:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 7
    const/16 v0, 0x34

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "/Android/data/*"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "/com.taobao.taobao/*"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "/cloud/*"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "/.gallery/Photoshare/*"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "/hotalk/pic/*"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "/hotalk/video/*"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "/hotalk/voi/*"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "/hotalk/head/*"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "/hotalk/map/*"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "/hotalk/thumbnail/*"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "/hotalk/videoThumbnail/*"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "/hotalk/update/*"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "/hotalk/htmlcache/*"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "/playplusGameIconImage/*"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "/notepad/source/*"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, "/easou/widget/*"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string v2, "/youni/profile_photo/*"

    aput-object v2, v0, v1

    const/16 v1, 0x11

    const-string v2, "/ISharePhoto/*"

    aput-object v2, v0, v1

    const/16 v1, 0x12

    const-string v2, "/ddmap/cache/*"

    aput-object v2, v0, v1

    const/16 v1, 0x13

    const-string v2, "/JJData/*"

    aput-object v2, v0, v1

    const/16 v1, 0x14

    const-string v2, "/Tencent/MobileQQ/*"

    aput-object v2, v0, v1

    const/16 v1, 0x15

    const-string v2, "/Tencent/QQ/*"

    aput-object v2, v0, v1

    const/16 v1, 0x16

    const-string v2, "/CloudDrive/temp/*"

    aput-object v2, v0, v1

    const/16 v1, 0x17

    const-string v2, "/ganji/actionImage/*"

    aput-object v2, v0, v1

    const/16 v1, 0x18

    const-string v2, "/ganji/postImage_details/*"

    aput-object v2, v0, v1

    const/16 v1, 0x19

    const-string v2, "/sina/weibo/weibo_filter/*"

    aput-object v2, v0, v1

    const/16 v1, 0x1a

    const-string v2, "/DomobInterstitial/resources/*"

    aput-object v2, v0, v1

    const/16 v1, 0x1b

    const-string v2, "/burstlyImageCache/*"

    aput-object v2, v0, v1

    const/16 v1, 0x1c

    const-string v2, "/Download/ads/*"

    aput-object v2, v0, v1

    const/16 v1, 0x1d

    const-string v2, "/Android/download/ads/*"

    aput-object v2, v0, v1

    const/16 v1, 0x1e

    const-string v2, "/Android/download/kbanner/*"

    aput-object v2, v0, v1

    const/16 v1, 0x1f

    const-string v2, "/momark/cache/*"

    aput-object v2, v0, v1

    const/16 v1, 0x20

    const-string v2, "/qumi/*"

    aput-object v2, v0, v1

    const/16 v1, 0x21

    const-string v2, "/Miidi.Download/*"

    aput-object v2, v0, v1

    const/16 v1, 0x22

    const-string v2, "/androidesk/onekeywallpapers/*"

    aput-object v2, v0, v1

    const/16 v1, 0x23

    const-string v2, "/powerword/recommendation/icon/*"

    aput-object v2, v0, v1

    const/16 v1, 0x24

    const-string v2, "/kbatterydoctor/cache/*"

    aput-object v2, v0, v1

    const/16 v1, 0x25

    const-string v2, "/netease/vopen/netease_temp_pic/*"

    aput-object v2, v0, v1

    const/16 v1, 0x26

    const-string v2, "/zzenglish/Tmp/*"

    aput-object v2, v0, v1

    const/16 v1, 0x27

    const-string v2, "/91PandaReader/covers/*"

    aput-object v2, v0, v1

    const/16 v1, 0x28

    const-string v2, "/91PandaReader/Images/*"

    aput-object v2, v0, v1

    const/16 v1, 0x29

    const-string v2, "/QQReader/PlugInImg/*"

    aput-object v2, v0, v1

    const/16 v1, 0x2a

    const-string v2, "/Baidu_music/image/*"

    aput-object v2, v0, v1

    const/16 v1, 0x2b

    const-string v2, "/BaiduMap/cache/assets/place/img/*"

    aput-object v2, v0, v1

    const/16 v1, 0x2c

    const-string v2, "/moji/imgNotDeleteCache/*"

    aput-object v2, v0, v1

    const/16 v1, 0x2d

    const-string v2, "/moji/imgLifeCache/*"

    aput-object v2, v0, v1

    const/16 v1, 0x2e

    const-string v2, "/cache/image/*"

    aput-object v2, v0, v1

    const/16 v1, 0x2f

    const-string v2, "/kbatterydoctor/caches/*"

    aput-object v2, v0, v1

    const/16 v1, 0x30

    const-string v2, "/kbatterydoctor/app_cache/*"

    aput-object v2, v0, v1

    const/16 v1, 0x31

    const-string v2, "/androidesk/photowallpapers/*"

    aput-object v2, v0, v1

    const/16 v1, 0x32

    const-string v2, "/ganji/postImage/*"

    aput-object v2, v0, v1

    const/16 v1, 0x33

    const-string v2, "/QQReader/cover/*"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/gallery3d/util/Prop4g;->sBlackListProp:[Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 5
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
