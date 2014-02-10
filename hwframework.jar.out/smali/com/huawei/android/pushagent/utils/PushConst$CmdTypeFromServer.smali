.class public Lcom/huawei/android/pushagent/utils/PushConst$CmdTypeFromServer;
.super Ljava/lang/Object;
.source "PushConst.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/huawei/android/pushagent/utils/PushConst;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CmdTypeFromServer"
.end annotation


# static fields
.field public static final CMD_DEVICE_REG_REQ:B = -0x2et

.field public static final CMD_DEVICE_REG_RSP:B = -0x2dt

.field public static final CMD_DEVICE_TOKEN_REG_REQ:B = -0x2ct

.field public static final CMD_DEVICE_TOKEN_REG_RSP:B = -0x2bt

.field public static final CMD_DEVICE_TOKEN_UNREG_REQ:B = -0x2at

.field public static final CMD_DEVICE_TOKEN_UNREG_RSP:B = -0x29t

.field public static final CMD_HEARTBEAT_REQ:B = -0x30t

.field public static final CMD_HEARTBEAT_RSP:B = -0x2ft

.field public static final CMD_POLLING_REQ:B = 0x1t

.field public static final CMD_POLLING_RSP:B = 0x2t

.field public static final CMD_PUSH_REQ:B = -0x60t

.field public static final CMD_PUSH_RSP:B = -0x5ft

.field public static final NEW_CMD_DEVICE_REG_REQ:B = -0x22t

.field public static final NEW_CMD_DEVICE_REG_RSP:B = -0x21t

.field public static final NEW_CMD_DEVICE_TOKEN_REG_REQ:B = -0x24t

.field public static final NEW_CMD_DEVICE_TOKEN_REG_RSP:B = -0x23t

.field public static final NEW_CMD_HEARTBEAT_REQ:B = -0x26t

.field public static final NEW_CMD_HEARTBEAT_RSP:B = -0x25t


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 31
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
