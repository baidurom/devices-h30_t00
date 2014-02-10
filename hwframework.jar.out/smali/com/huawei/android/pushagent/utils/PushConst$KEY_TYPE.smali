.class public Lcom/huawei/android/pushagent/utils/PushConst$KEY_TYPE;
.super Ljava/lang/Object;
.source "PushConst.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/huawei/android/pushagent/utils/PushConst;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "KEY_TYPE"
.end annotation


# static fields
.field public static final KEY_RSP_PUSHMSG:Ljava/lang/String; = "response_msg"

.field public static final PKGNAME:Ljava/lang/String; = "pkg_name"

.field public static final PLUGINREPORTEXTRA:Ljava/lang/String; = "reportExtra"

.field public static final PLUGINREPORTRESULT:Ljava/lang/String; = "isReportSuccess"

.field public static final PLUGINREPORTTYPE:Ljava/lang/String; = "reportType"

.field public static final PUSHSTATE:Ljava/lang/String; = "push_state"

.field public static final PUSH_BROADCAST_MESSAGE:Ljava/lang/String; = "msg_data"

.field public static final PUSH_KEY_BELONGID:Ljava/lang/String; = "belongId"

.field public static final PUSH_KEY_CLICK:Ljava/lang/String; = "click"

.field public static final PUSH_KEY_DEVICE_TOKEN:Ljava/lang/String; = "device_token"

.field public static final PUSH_KEY_MESSAGE:Ljava/lang/String; = "push_message"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 60
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
