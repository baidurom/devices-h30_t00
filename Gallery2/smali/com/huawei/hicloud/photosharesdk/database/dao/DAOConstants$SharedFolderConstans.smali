.class public Lcom/huawei/hicloud/photosharesdk/database/dao/DAOConstants$SharedFolderConstans;
.super Ljava/lang/Object;
.source "DAOConstants.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/huawei/hicloud/photosharesdk/database/dao/DAOConstants;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SharedFolderConstans"
.end annotation


# static fields
.field public static final CreateTime:Ljava/lang/String; = "CreateTime"

.field public static final FolderInfo:Ljava/lang/String; = "FolderInfo"

.field public static final FolderName:Ljava/lang/String; = "FolderName"

.field public static final FolderPath_REMOTE:Ljava/lang/String; = "FolderPathR"

.field public static final FolderType:Ljava/lang/String; = "FolderType"

.field public static final FolderType_ALL:I = 0x3

.field public static final FolderType_AUTO:I = 0x0

.field public static final FolderType_Received:I = 0x2

.field public static final FolderType_Shared:I = 0x1

.field public static final SharePath:Ljava/lang/String; = "SharePath"

.field public static final SharerAccount:Ljava/lang/String; = "SharerAccount"

.field public static final SharerName:Ljava/lang/String; = "SharerName"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 22
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
