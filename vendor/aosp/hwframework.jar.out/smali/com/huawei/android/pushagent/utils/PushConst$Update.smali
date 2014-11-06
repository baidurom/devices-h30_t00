.class public Lcom/huawei/android/pushagent/utils/PushConst$Update;
.super Ljava/lang/Object;
.source "PushConst.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/huawei/android/pushagent/utils/PushConst;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Update"
.end annotation


# static fields
.field public static final CHECK_NEW_VERSION:I = 0x2001

.field public static final CHECK_NO_NEW_VERSION:I = 0x2000

.field public static final DOWNLOADING:I = 0x2002

.field public static final DOWNLOAD_DONE:I = 0x2003

.field public static final DOWNLOAD_ERROR:I = 0x2004

.field public static final KEY_LAST_UPDATE_TIME:Ljava/lang/String; = "last_update_time"

.field public static final UPDATE_CYCLE:J = 0xf731400L

.field public static final UPDATE_REMIND_SHAREDPREFS_FILE:Ljava/lang/String; = "update_remind"

.field public static final UPDATE_TABLE:Ljava/lang/String; = "update_table"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 293
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
