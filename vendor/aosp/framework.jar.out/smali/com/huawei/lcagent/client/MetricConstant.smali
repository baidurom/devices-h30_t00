.class public Lcom/huawei/lcagent/client/MetricConstant;
.super Ljava/lang/Object;
.source "MetricConstant.java"


# static fields
.field public static final ACTION_SUBMIT_METRIC_INTENT:Ljava/lang/String; = "com.huawei.lcagent.client.ACTION_SUBMIT_METRIC_INTENT"

.field public static final ACTION_UPLOAD_REQUEST_INTENT:Ljava/lang/String; = "com.huawei.lcagent.UPLOAD_REQUEST"

.field public static final ACTION_UPLOAD_RESULT_INTENT:Ljava/lang/String; = "com.huawei.lcagent.UPLOAD_RESULT"

.field public static final APP_METRIC_ID:I = 0x3

.field public static final APR_STATISTICS_METRIC_ID:I = 0x9

.field public static final BATTERY_METRIC_ID:I = 0x8

.field public static final CALL_METRIC_ID:I = 0x7

.field public static final INTERNET_METRIC_ID:I = 0x5

.field public static final LEVEL_A:I = 0x1

.field public static final LEVEL_B:I = 0x10

.field public static final LEVEL_C:I = 0x100

.field public static final LEVEL_D:I = 0x1000

.field public static final METRIC_ID_MAX:I = 0x10

.field public static final METRIC_ID_MIN:I = 0x0

.field public static final RADIO_METRIC_ID:I = 0x1

.field public static final REBOOT_METRIC_ID:I = 0x2

.field public static final SIM_METRIC_ID:I = 0x6

.field public static final TOUCH_METRIC_ID:I = 0x4


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 4
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getStringID(I)Ljava/lang/String;
    .locals 1
    .parameter "metricId"

    .prologue
    .line 82
    const/4 v0, 0x0

    .line 83
    .local v0, result:Ljava/lang/String;
    packed-switch p0, :pswitch_data_0

    .line 109
    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    .line 112
    :goto_0
    return-object v0

    .line 85
    :pswitch_0
    const-string v0, "LOG_CHR"

    .line 86
    goto :goto_0

    .line 88
    :pswitch_1
    const-string v0, "Reboot"

    .line 89
    goto :goto_0

    .line 91
    :pswitch_2
    const-string v0, "App"

    .line 92
    goto :goto_0

    .line 94
    :pswitch_3
    const-string v0, "Touch"

    .line 95
    goto :goto_0

    .line 97
    :pswitch_4
    const-string v0, "Internet"

    .line 98
    goto :goto_0

    .line 100
    :pswitch_5
    const-string v0, "Sim"

    .line 101
    goto :goto_0

    .line 103
    :pswitch_6
    const-string v0, "Call"

    .line 104
    goto :goto_0

    .line 106
    :pswitch_7
    const-string v0, "Battery"

    .line 107
    goto :goto_0

    .line 83
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
    .end packed-switch
.end method

.method public static isValidMetricId(I)Z
    .locals 1
    .parameter "id"

    .prologue
    .line 71
    const/16 v0, 0x10

    if-ge p0, v0, :cond_0

    if-gtz p0, :cond_1

    .line 72
    :cond_0
    const/4 v0, 0x0

    .line 75
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method
