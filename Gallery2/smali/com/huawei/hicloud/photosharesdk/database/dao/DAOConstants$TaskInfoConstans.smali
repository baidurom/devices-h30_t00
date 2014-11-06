.class public Lcom/huawei/hicloud/photosharesdk/database/dao/DAOConstants$TaskInfoConstans;
.super Ljava/lang/Object;
.source "DAOConstants.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/huawei/hicloud/photosharesdk/database/dao/DAOConstants;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TaskInfoConstans"
.end annotation


# static fields
.field public static final CreateTime:Ljava/lang/String; = "CreateTime"

.field public static final CurrentStage:Ljava/lang/String; = "CurrentStage"

.field public static final CuttentState_REQUIRE_FROM_DA:I = 0x2

.field public static final CuttentState_REQUIRE_FROM_DBANK:I = 0x1

.field public static final OperationType:Ljava/lang/String; = "OperationType"

.field public static final OperationType_Add:I = 0x0

.field public static final OperationType_Del:I = 0x1

.field public static final OperationType_Download:I = 0x2

.field public static final PhotoName:Ljava/lang/String; = "PhotoName"

.field public static final PhotoPath_LOCAL:Ljava/lang/String; = "PhotoPathL"

.field public static final PhotoPath_REMOTE:Ljava/lang/String; = "PhotoPathR"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
