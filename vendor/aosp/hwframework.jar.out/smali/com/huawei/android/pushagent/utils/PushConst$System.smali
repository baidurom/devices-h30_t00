.class public Lcom/huawei/android/pushagent/utils/PushConst$System;
.super Ljava/lang/Object;
.source "PushConst.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/huawei/android/pushagent/utils/PushConst;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "System"
.end annotation


# static fields
.field public static final FILE_SPT:Ljava/lang/String; = null

.field public static final InvalidIP:Ljava/lang/String; = ""

.field public static final InvalidPort:I = -0x1

.field public static final KEEP_SOCKET:I = 0x1

.field public static final MAX_RUNNING_SERVICE:I = 0x64

.field public static final NET_TYPE_NONE:I = -0x1

.field public static final PUSH_AVILABLE:I = 0x2

.field public static final SECRET_CODE:Ljava/lang/String; = "787424368"

.field public static final SOCKET_CONNECT_READ_OUT:I = 0x4e20

.field public static final SOCKET_CONNECT_TIME_OUT:I = 0x7530

.field public static final lineSpt:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 134
    const-string v0, "line.separator"

    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/huawei/android/pushagent/utils/PushConst$System;->lineSpt:Ljava/lang/String;

    .line 135
    const-string v0, "file.separator"

    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/huawei/android/pushagent/utils/PushConst$System;->FILE_SPT:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 122
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
