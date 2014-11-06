.class public Lcom/huawei/hicloud/photosharesdk/configure/Config;
.super Ljava/lang/Object;
.source "Config.java"


# static fields
#the value of this static final field might be set in the static constructor
.field public static final IS_MORE_3VERSION:Z = false

#the value of this static final field might be set in the static constructor
.field public static final IS_MORE_4VERSION1:Z = false

.field public static final KEY_EXTERNAL_PATH:Ljava/lang/String; = "persist.sys.hw_external_path"

.field public static final KEY_INTERNAL_PATH:Ljava/lang/String; = "persist.sys.hw_internal_path"

.field public static final KEY_USB_PATH:Ljava/lang/String; = "persist.sys.hw_usb_path"

.field public static final MEMORY_REMAINING_IN_PHONE:J = 0x80000L

.field public static final MEMORY_REMAINING_IN_SDCARD:J = 0x80000L

.field public static final MIN_CAPACITY_NEW_FOLDER:J = 0x800L

.field public static final MY_PHOTO_STREAM_NAME:Ljava/lang/String; = "MyPhoto"

.field public static final MY_PHOTO_STREAM_NAME_NOTIFY:Ljava/lang/String; = "myphoto"

.field public static final MY_PHOTO_STREAM_PATH:Ljava/lang/String; = "/Photoshare/myphoto"

.field public static final Operator_Add_Folder:I = 0x0

.field public static final Operator_Add_Photo:I = 0x0

.field public static final Operator_Change_Name_Folder:I = 0x2

.field public static final Operator_Change_Receiver_Folder:I = 0x3

.field public static final Operator_Change_Receiver_Nickname_Folder:I = 0x5

.field public static final Operator_Del_Folder:I = 0x1

.field public static final Operator_Del_Photo:I = 0x1

.field public static final Operator_Download_Photo:I = 0x2

.field public static final Operator_add_received_broad:I = 0x3

.field public static final Operator_fail:I = 0x1

.field public static final Operator_foler_change_from_push:I = 0x4

.field public static final PHOTOSHARE_DOUBLE_DOT:Ljava/lang/String; = ".."

.field public static final PHOTOSHARE_PERMISSIONS:Ljava/lang/String; = "com.huawei.photoshare.permissions"

.field public static final PHOTO_LOCAL_ROOT_PATH:Ljava/lang/String; = "/Photoshare"

.field public static final Photo_Add_Dbank:I = 0x1

.field public static final Photo_Add_Server:I = 0x2

.field public static final Photo_Add_Success:I = 0x0

.field public static final Photo_Del_Dbank:I = 0x1

.field public static final Photo_Del_Server:I = 0x2

.field public static final Photo_Del_Success:I = 0x0

.field public static final ReceiverState_CANCEL:I = 0x3

.field public static final ReceiverState_CONFIRM:I = 0x1

.field public static final ReceiverState_INVITE:I = 0x0

.field public static final ReceiverState_REJECTION:I = 0x2

.field public static final operator_success:I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 7
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0xb

    if-lt v0, v3, :cond_0

    move v0, v1

    :goto_0
    sput-boolean v0, Lcom/huawei/hicloud/photosharesdk/configure/Config;->IS_MORE_3VERSION:Z

    .line 8
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x10

    if-lt v0, v3, :cond_1

    :goto_1
    sput-boolean v1, Lcom/huawei/hicloud/photosharesdk/configure/Config;->IS_MORE_4VERSION1:Z

    .line 5
    return-void

    :cond_0
    move v0, v2

    .line 7
    goto :goto_0

    :cond_1
    move v1, v2

    .line 8
    goto :goto_1
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 5
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
