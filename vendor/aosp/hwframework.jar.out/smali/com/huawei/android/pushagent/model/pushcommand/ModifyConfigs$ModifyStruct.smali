.class Lcom/huawei/android/pushagent/model/pushcommand/ModifyConfigs$ModifyStruct;
.super Ljava/lang/Object;
.source "ModifyConfigs.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/huawei/android/pushagent/model/pushcommand/ModifyConfigs;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ModifyStruct"
.end annotation


# instance fields
.field mFileName:Ljava/lang/String;

.field mModifyType:I

.field mName:Ljava/lang/String;

.field mVal:Ljava/lang/Object;


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 27
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 28
    const-string v0, ""

    iput-object v0, p0, Lcom/huawei/android/pushagent/model/pushcommand/ModifyConfigs$ModifyStruct;->mFileName:Ljava/lang/String;

    .line 29
    const/4 v0, -0x1

    iput v0, p0, Lcom/huawei/android/pushagent/model/pushcommand/ModifyConfigs$ModifyStruct;->mModifyType:I

    .line 30
    const-string v0, ""

    iput-object v0, p0, Lcom/huawei/android/pushagent/model/pushcommand/ModifyConfigs$ModifyStruct;->mName:Ljava/lang/String;

    .line 31
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/huawei/android/pushagent/model/pushcommand/ModifyConfigs$ModifyStruct;->mVal:Ljava/lang/Object;

    return-void
.end method

.method synthetic constructor <init>(Lcom/huawei/android/pushagent/model/pushcommand/ModifyConfigs$1;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 27
    invoke-direct {p0}, Lcom/huawei/android/pushagent/model/pushcommand/ModifyConfigs$ModifyStruct;-><init>()V

    return-void
.end method
