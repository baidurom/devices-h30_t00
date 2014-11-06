.class public Lcom/huawei/hicloud/photosharesdk3/database/dao/DAOConstants$TaskInfoConstans;
.super Ljava/lang/Object;
.source "DAOConstants.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/huawei/hicloud/photosharesdk3/database/dao/DAOConstants;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TaskInfoConstans"
.end annotation


# static fields
.field public static final CREATETIME:Ljava/lang/String; = "CreateTime"

.field public static final CURRENT_STAGE:Ljava/lang/String; = "CurrentStage"

.field public static final CUTTENT_STATE_REQUIRE_FROM_DA:I = 0x2

.field public static final CUTTENT_STATE_REQUIRE_FROM_DBANK:I = 0x1

.field public static final FOLDEROPERATION_TYPE_ADD:I = 0x3

.field public static final FOLDEROPERATION_TYPE_DEL:I = 0x4

.field public static final OPERATION_TYPE:Ljava/lang/String; = "OperationType"

.field public static final OPERATION_TYPE_ADD:I = 0x0

.field public static final OPERATION_TYPE_DEL:I = 0x1

.field public static final OPERATION_TYPE_DOWNLOAD:I = 0x2

.field public static final PHOTO_NAME:Ljava/lang/String; = "PhotoName"

.field public static final PHOTO_PATH_LOCAL:Ljava/lang/String; = "PhotoPathL"

.field public static final PHOTO_PATH_REMOTE:Ljava/lang/String; = "PhotoPathR"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 20
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
