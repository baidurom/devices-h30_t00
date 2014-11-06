.class Lcom/android/server/AlarmManagerService$AlarmPolicy;
.super Ljava/lang/Object;
.source "AlarmManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/AlarmManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "AlarmPolicy"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/AlarmManagerService$AlarmPolicy$IntentHistoryReadWrite;,
        Lcom/android/server/AlarmManagerService$AlarmPolicy$IntentTimeOutHistory;,
        Lcom/android/server/AlarmManagerService$AlarmPolicy$AdjustSteps;
    }
.end annotation


# static fields
.field private static final CHCEK_INTETN_CNT:I = 0x64

.field private static final HEARTBEAT_CYCLE_DEFAULT:I = 0x493e0

.field private static final HEARTBEAT_CYCLE_MAX:I = 0x927c0

.field private static final HEARTBEAT_CYCLE_MIN:I = 0x1d4c0

.field private static final MIN_TIMEOUT_PERIOD:I = 0xc350

.field private static final REPEAT_ALARM_CYCLE_MIN:I = 0xdbba0

.field private static final UHB_ACTIOM_MODE_BLACKLIST:I = 0x2

.field private static final UHB_ACTIOM_MODE_WHITELIST:I = 0x4

.field private static final VALID_INTENT_DURATION:J = 0x19bfcc00L

.field private static final VERSION_NUMBER:I = 0x69

.field private static final appBlackList:Ljava/util/ArrayList; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final appDynBlackList:Ljava/util/LinkedList; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final appDynWhiteList:Ljava/util/LinkedList; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final appWhiteList:Ljava/util/ArrayList; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static mAlarmCount:J = 0x0L

.field private static mUHBMode:I = 0x0

.field public static sAlignmentPeriod:I = 0x0

.field private static final sCountThreshold:I = 0xa

.field private static final sIntervalThreshold:I = 0x6ddd00

.field public static sNeedAdjustPolicy:Z = false

.field private static final sOneMinute:I = 0xea60

.field private static final sOneSecond:I = 0x3e8


# instance fields
.field mInnerFixedBlacklis:[Ljava/lang/String;

.field private mIntentHisRW:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/server/AlarmManagerService$AlarmPolicy$IntentHistoryReadWrite;",
            ">;"
        }
    .end annotation
.end field

.field private final mModeHisFile:Lcom/android/internal/os/AtomicFile;

.field private mOwner:Lcom/android/server/AlarmManagerService;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 2464
    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/server/AlarmManagerService$AlarmPolicy;->sNeedAdjustPolicy:Z

    .line 2465
    const v0, 0x493e0

    sput v0, Lcom/android/server/AlarmManagerService$AlarmPolicy;->sAlignmentPeriod:I

    .line 2468
    const-wide/16 v0, 0x0

    sput-wide v0, Lcom/android/server/AlarmManagerService$AlarmPolicy;->mAlarmCount:J

    .line 2469
    const/4 v0, 0x2

    sput v0, Lcom/android/server/AlarmManagerService$AlarmPolicy;->mUHBMode:I

    .line 2472
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/android/server/AlarmManagerService$AlarmPolicy;->appWhiteList:Ljava/util/ArrayList;

    .line 2473
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/android/server/AlarmManagerService$AlarmPolicy;->appBlackList:Ljava/util/ArrayList;

    .line 2475
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    sput-object v0, Lcom/android/server/AlarmManagerService$AlarmPolicy;->appDynWhiteList:Ljava/util/LinkedList;

    .line 2476
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    sput-object v0, Lcom/android/server/AlarmManagerService$AlarmPolicy;->appDynBlackList:Ljava/util/LinkedList;

    return-void
.end method

.method constructor <init>(Lcom/android/server/AlarmManagerService;)V
    .locals 9
    .parameter "owner"

    .prologue
    const v8, 0x493e0

    const/4 v7, 0x4

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 2593
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2590
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/android/server/AlarmManagerService$AlarmPolicy;->mIntentHisRW:Ljava/util/HashMap;

    .line 2949
    const/4 v1, 0x5

    new-array v1, v1, [Ljava/lang/String;

    const-string v2, "com.android.phone"

    aput-object v2, v1, v4

    const-string v2, "com.google.android.gsf"

    aput-object v2, v1, v5

    const-string v2, "com.android.deskclock"

    aput-object v2, v1, v6

    const/4 v2, 0x3

    const-string v3, "com.android.settings"

    aput-object v3, v1, v2

    const-string v2, "android"

    aput-object v2, v1, v7

    iput-object v1, p0, Lcom/android/server/AlarmManagerService$AlarmPolicy;->mInnerFixedBlacklis:[Ljava/lang/String;

    .line 2594
    new-instance v0, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v1

    const-string v2, "system"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 2595
    .local v0, systemdir:Ljava/io/File;
    new-instance v1, Lcom/android/internal/os/AtomicFile;

    new-instance v2, Ljava/io/File;

    const-string v3, "IntentHis.bin"

    invoke-direct {v2, v0, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-direct {v1, v2}, Lcom/android/internal/os/AtomicFile;-><init>(Ljava/io/File;)V

    iput-object v1, p0, Lcom/android/server/AlarmManagerService$AlarmPolicy;->mModeHisFile:Lcom/android/internal/os/AtomicFile;

    .line 2596
    iput-object p1, p0, Lcom/android/server/AlarmManagerService$AlarmPolicy;->mOwner:Lcom/android/server/AlarmManagerService;

    .line 2598
    const-string v1, "persist.alarm.uhb.debug"

    invoke-static {v1, v4}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v1

    if-ne v5, v1, :cond_0

    .line 2599
    const-string v1, "AlarmManager"

    const-string v2, "uhb debug is enabled"

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2600
    invoke-static {v5}, Lcom/android/server/AlarmManagerService;->access$202(Z)Z

    .line 2602
    :cond_0
    const-string v1, "persist.sys.alarm.enable.uhb"

    invoke-static {v1, v4}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v1

    if-nez v1, :cond_2

    .line 2603
    invoke-static {}, Lcom/android/server/AlarmManagerService;->access$200()Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "AlarmManager"

    const-string v2, "uhb disabled in sys prop"

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2604
    :cond_1
    sput-boolean v4, Lcom/android/server/AlarmManagerService$AlarmPolicy;->sNeedAdjustPolicy:Z

    .line 2606
    :cond_2
    const-string v1, "persist.sys.alarm.uhb.cyc"

    invoke-static {v1, v8}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v1

    sput v1, Lcom/android/server/AlarmManagerService$AlarmPolicy;->sAlignmentPeriod:I

    .line 2607
    sget v1, Lcom/android/server/AlarmManagerService$AlarmPolicy;->sAlignmentPeriod:I

    const v2, 0x1d4c0

    if-lt v1, v2, :cond_5

    sget v1, Lcom/android/server/AlarmManagerService$AlarmPolicy;->sAlignmentPeriod:I

    const v2, 0x927c0

    if-gt v1, v2, :cond_5

    .line 2608
    invoke-static {}, Lcom/android/server/AlarmManagerService;->access$200()Z

    move-result v1

    if-eqz v1, :cond_3

    const-string v1, "AlarmManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "read uhb cyc from sys prop is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget v3, Lcom/android/server/AlarmManagerService$AlarmPolicy;->sAlignmentPeriod:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2614
    :cond_3
    :goto_0
    const-string v1, "persist.sys.alarm.uhb.mode"

    const-string v2, "blacklist"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "whitelist"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 2615
    invoke-static {}, Lcom/android/server/AlarmManagerService;->access$200()Z

    move-result v1

    if-eqz v1, :cond_4

    const-string v1, "AlarmManager"

    const-string v2, "uhb is in white list mode"

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2616
    :cond_4
    sput v7, Lcom/android/server/AlarmManagerService$AlarmPolicy;->mUHBMode:I

    .line 2622
    :goto_1
    invoke-direct {p0}, Lcom/android/server/AlarmManagerService$AlarmPolicy;->initXMLBlackWhiteList()V

    .line 2623
    invoke-direct {p0}, Lcom/android/server/AlarmManagerService$AlarmPolicy;->readHistory()V

    .line 2625
    return-void

    .line 2611
    :cond_5
    sput v8, Lcom/android/server/AlarmManagerService$AlarmPolicy;->sAlignmentPeriod:I

    .line 2612
    invoke-static {}, Lcom/android/server/AlarmManagerService;->access$200()Z

    move-result v1

    if-eqz v1, :cond_3

    const-string v1, "AlarmManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "sys prop of uhb cyc is invalid, set to default cyc "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget v3, Lcom/android/server/AlarmManagerService$AlarmPolicy;->sAlignmentPeriod:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 2619
    :cond_6
    invoke-static {}, Lcom/android/server/AlarmManagerService;->access$200()Z

    move-result v1

    if-eqz v1, :cond_7

    const-string v1, "AlarmManager"

    const-string v2, "uhb is in black list mode"

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2620
    :cond_7
    sput v6, Lcom/android/server/AlarmManagerService$AlarmPolicy;->mUHBMode:I

    goto :goto_1
.end method

.method static synthetic access$1300(Lcom/android/server/AlarmManagerService$AlarmPolicy;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 2449
    invoke-direct {p0}, Lcom/android/server/AlarmManagerService$AlarmPolicy;->reInitAlarmPolicy()V

    return-void
.end method

.method static synthetic access$300(Lcom/android/server/AlarmManagerService$AlarmPolicy;)Ljava/util/HashMap;
    .locals 1
    .parameter "x0"

    .prologue
    .line 2449
    iget-object v0, p0, Lcom/android/server/AlarmManagerService$AlarmPolicy;->mIntentHisRW:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$4200(Lcom/android/server/AlarmManagerService$AlarmPolicy;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 2449
    invoke-direct {p0}, Lcom/android/server/AlarmManagerService$AlarmPolicy;->writeHistory()V

    return-void
.end method

.method static synthetic access$4700()Ljava/util/LinkedList;
    .locals 1

    .prologue
    .line 2449
    sget-object v0, Lcom/android/server/AlarmManagerService$AlarmPolicy;->appDynBlackList:Ljava/util/LinkedList;

    return-object v0
.end method

.method static synthetic access$4800()Ljava/util/LinkedList;
    .locals 1

    .prologue
    .line 2449
    sget-object v0, Lcom/android/server/AlarmManagerService$AlarmPolicy;->appDynWhiteList:Ljava/util/LinkedList;

    return-object v0
.end method

.method private appInInnerBlackList(Ljava/lang/String;)Z
    .locals 7
    .parameter "packageName"

    .prologue
    const/4 v4, 0x0

    .line 2958
    if-nez p1, :cond_1

    .line 2965
    :cond_0
    :goto_0
    return v4

    .line 2959
    :cond_1
    iget-object v0, p0, Lcom/android/server/AlarmManagerService$AlarmPolicy;->mInnerFixedBlacklis:[Ljava/lang/String;

    .local v0, arr$:[Ljava/lang/String;
    array-length v2, v0

    .local v2, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_1
    if-ge v1, v2, :cond_0

    aget-object v3, v0, v1

    .line 2960
    .local v3, str:Ljava/lang/String;
    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 2961
    invoke-static {}, Lcom/android/server/AlarmManagerService;->access$200()Z

    move-result v4

    if-eqz v4, :cond_2

    const-string v4, "AlarmManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " is in inner fixed black list"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2962
    :cond_2
    const/4 v4, 0x1

    goto :goto_0

    .line 2959
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method private appInXMLBlackWhiteList(Ljava/lang/String;I)Z
    .locals 6
    .parameter "pkgname"
    .parameter "mode"

    .prologue
    const/4 v2, 0x1

    .line 3073
    const/4 v3, 0x2

    if-ne p2, v3, :cond_1

    .line 3074
    sget-object v3, Lcom/android/server/AlarmManagerService$AlarmPolicy;->appBlackList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 3075
    .local v1, str:Ljava/lang/String;
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 3076
    const-string v3, "AlarmManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " is in XML balck list"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3089
    .end local v0           #i$:Ljava/util/Iterator;
    .end local v1           #str:Ljava/lang/String;
    :goto_0
    return v2

    .line 3081
    :cond_1
    const/4 v3, 0x4

    if-ne p2, v3, :cond_3

    .line 3082
    sget-object v3, Lcom/android/server/AlarmManagerService$AlarmPolicy;->appWhiteList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .restart local v0       #i$:Ljava/util/Iterator;
    :cond_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 3083
    .restart local v1       #str:Ljava/lang/String;
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 3084
    const-string v3, "AlarmManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " is in XML white list"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 3089
    .end local v0           #i$:Ljava/util/Iterator;
    .end local v1           #str:Ljava/lang/String;
    :cond_3
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private initXMLBlackWhiteList()V
    .locals 26

    .prologue
    .line 2970
    const-string v9, "/data/cust/xml/"

    .line 2971
    .local v9, UHB_XML_PATH:Ljava/lang/String;
    const-string v8, "uhb_black_white_list.xml"

    .line 2972
    .local v8, UHB_XML_NAME:Ljava/lang/String;
    const-string v3, "array"

    .line 2973
    .local v3, UHB_LIST_ARRAY:Ljava/lang/String;
    const-string v4, "type"

    .line 2974
    .local v4, UHB_LIST_TYPE:Ljava/lang/String;
    const-string v7, "WhiteList"

    .line 2975
    .local v7, UHB_XML_ELEMENT_WL:Ljava/lang/String;
    const-string v5, "BlackList"

    .line 2976
    .local v5, UHB_XML_ELEMENT_BL:Ljava/lang/String;
    const-string v6, "item"

    .line 2978
    .local v6, UHB_XML_ELEMENT_TAG:Ljava/lang/String;
    const/4 v14, 0x0

    .line 2979
    .local v14, in:Ljava/io/InputStream;
    invoke-static {}, Lcom/android/server/AlarmManagerService;->access$200()Z

    move-result v23

    if-eqz v23, :cond_0

    const-string v23, "AlarmManager"

    const-string v24, "open file: /data/cust/xml/uhb_black_white_list.xml"

    invoke-static/range {v23 .. v24}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2981
    :cond_0
    :try_start_0
    new-instance v15, Ljava/io/FileInputStream;

    const-string v23, "/data/cust/xml/uhb_black_white_list.xml"

    move-object/from16 v0, v23

    invoke-direct {v15, v0}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_7
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_6

    .line 2982
    .end local v14           #in:Ljava/io/InputStream;
    .local v15, in:Ljava/io/InputStream;
    :try_start_1
    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v21

    .line 2983
    .local v21, xml:Lorg/xmlpull/v1/XmlPullParser;
    const/16 v23, 0x0

    move-object/from16 v0, v21

    move-object/from16 v1, v23

    invoke-interface {v0, v15, v1}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 2984
    const/16 v20, 0x0

    .line 2985
    .local v20, tmpAppName:Ljava/lang/String;
    invoke-interface/range {v21 .. v21}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v22

    .line 2986
    .local v22, xmlEventType:I
    const/16 v18, 0x0

    .line 2987
    .local v18, readListType:I
    const/4 v11, 0x0

    .line 2988
    .local v11, bfindItem:Z
    :goto_0
    const/16 v23, 0x1

    move/from16 v0, v22

    move/from16 v1, v23

    if-eq v0, v1, :cond_8

    .line 2990
    packed-switch v22, :pswitch_data_0

    .line 3023
    :pswitch_0
    const-string v23, "AlarmManagerService"

    const-string v24, "initXMLBlackWhiteList default"

    invoke-static/range {v23 .. v24}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3027
    :cond_1
    :goto_1
    invoke-interface/range {v21 .. v21}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v22

    goto :goto_0

    .line 2993
    :pswitch_1
    const-string v23, "item"

    invoke-interface/range {v21 .. v21}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v23

    if-eqz v23, :cond_2

    .line 2994
    const/4 v11, 0x1

    goto :goto_1

    .line 2996
    :cond_2
    const-string v23, "array"

    invoke-interface/range {v21 .. v21}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v23

    if-eqz v23, :cond_1

    .line 2998
    const-string v23, "WhiteList"

    const/16 v24, 0x0

    const-string v25, "type"

    move-object/from16 v0, v21

    move-object/from16 v1, v24

    move-object/from16 v2, v25

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v23

    if-eqz v23, :cond_4

    .line 2999
    const/16 v18, 0x1

    .line 3000
    sget-object v23, Lcom/android/server/AlarmManagerService$AlarmPolicy;->appWhiteList:Ljava/util/ArrayList;

    invoke-virtual/range {v23 .. v23}, Ljava/util/ArrayList;->clear()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    .line 3030
    .end local v11           #bfindItem:Z
    .end local v18           #readListType:I
    .end local v20           #tmpAppName:Ljava/lang/String;
    .end local v21           #xml:Lorg/xmlpull/v1/XmlPullParser;
    .end local v22           #xmlEventType:I
    :catch_0
    move-exception v12

    move-object v14, v15

    .line 3031
    .end local v15           #in:Ljava/io/InputStream;
    .local v12, e:Ljava/io/FileNotFoundException;
    .restart local v14       #in:Ljava/io/InputStream;
    :goto_2
    :try_start_2
    const-string v23, "AlarmManager"

    const-string v24, "FileNotFoundException: could not find uhb xml file"

    invoke-static/range {v23 .. v24}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 3035
    if-eqz v14, :cond_3

    .line 3037
    :try_start_3
    invoke-virtual {v14}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_4

    .line 3044
    .end local v12           #e:Ljava/io/FileNotFoundException;
    :cond_3
    :goto_3
    invoke-static {}, Lcom/android/server/AlarmManagerService;->access$200()Z

    move-result v23

    if-eqz v23, :cond_d

    .line 3045
    const/16 v17, 0x0

    .line 3046
    .local v17, position:I
    const-string v23, "AlarmManager"

    const-string v24, "Dump XML file WhiteList:"

    invoke-static/range {v23 .. v24}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3047
    sget-object v23, Lcom/android/server/AlarmManagerService$AlarmPolicy;->appWhiteList:Ljava/util/ArrayList;

    invoke-virtual/range {v23 .. v23}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v13

    .local v13, i$:Ljava/util/Iterator;
    :goto_4
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v23

    if-eqz v23, :cond_9

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Ljava/lang/String;

    .line 3048
    .local v19, str:Ljava/lang/String;
    const-string v23, "AlarmManager"

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    add-int/lit8 v17, v17, 0x1

    move-object/from16 v0, v24

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v25, ":"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v23 .. v24}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    .line 3003
    .end local v13           #i$:Ljava/util/Iterator;
    .end local v14           #in:Ljava/io/InputStream;
    .end local v17           #position:I
    .end local v19           #str:Ljava/lang/String;
    .restart local v11       #bfindItem:Z
    .restart local v15       #in:Ljava/io/InputStream;
    .restart local v18       #readListType:I
    .restart local v20       #tmpAppName:Ljava/lang/String;
    .restart local v21       #xml:Lorg/xmlpull/v1/XmlPullParser;
    .restart local v22       #xmlEventType:I
    :cond_4
    :try_start_4
    const-string v23, "BlackList"

    const/16 v24, 0x0

    const-string v25, "type"

    move-object/from16 v0, v21

    move-object/from16 v1, v24

    move-object/from16 v2, v25

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v23

    if-eqz v23, :cond_1

    .line 3004
    const/16 v18, 0x2

    .line 3005
    sget-object v23, Lcom/android/server/AlarmManagerService$AlarmPolicy;->appBlackList:Ljava/util/ArrayList;

    invoke-virtual/range {v23 .. v23}, Ljava/util/ArrayList;->clear()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
    .catch Ljava/io/FileNotFoundException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    goto/16 :goto_1

    .line 3032
    .end local v11           #bfindItem:Z
    .end local v18           #readListType:I
    .end local v20           #tmpAppName:Ljava/lang/String;
    .end local v21           #xml:Lorg/xmlpull/v1/XmlPullParser;
    .end local v22           #xmlEventType:I
    :catch_1
    move-exception v12

    move-object v14, v15

    .line 3033
    .end local v15           #in:Ljava/io/InputStream;
    .local v12, e:Ljava/lang/Exception;
    .restart local v14       #in:Ljava/io/InputStream;
    :goto_5
    :try_start_5
    const-string v23, "AlarmManager"

    const-string v24, "Parser xml file Exception!"

    invoke-static/range {v23 .. v24}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 3035
    if-eqz v14, :cond_3

    .line 3037
    :try_start_6
    invoke-virtual {v14}, Ljava/io/InputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_2

    goto :goto_3

    .line 3038
    :catch_2
    move-exception v12

    .line 3039
    .local v12, e:Ljava/io/IOException;
    const-string v23, "AlarmManager"

    const-string v24, "An error occurs attempting to close this stream!"

    invoke-static/range {v23 .. v24}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 3012
    .end local v12           #e:Ljava/io/IOException;
    .end local v14           #in:Ljava/io/InputStream;
    .restart local v11       #bfindItem:Z
    .restart local v15       #in:Ljava/io/InputStream;
    .restart local v18       #readListType:I
    .restart local v20       #tmpAppName:Ljava/lang/String;
    .restart local v21       #xml:Lorg/xmlpull/v1/XmlPullParser;
    .restart local v22       #xmlEventType:I
    :pswitch_2
    :try_start_7
    invoke-interface/range {v21 .. v21}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object v20

    .line 3013
    if-eqz v20, :cond_1

    const/16 v23, 0x1

    move/from16 v0, v23

    if-ne v0, v11, :cond_1

    .line 3014
    const/16 v23, 0x1

    move/from16 v0, v18

    move/from16 v1, v23

    if-ne v0, v1, :cond_6

    sget-object v23, Lcom/android/server/AlarmManagerService$AlarmPolicy;->appWhiteList:Ljava/util/ArrayList;

    move-object/from16 v0, v23

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3017
    :cond_5
    :goto_6
    const/4 v11, 0x0

    goto/16 :goto_1

    .line 3015
    :cond_6
    const/16 v23, 0x2

    move/from16 v0, v18

    move/from16 v1, v23

    if-ne v0, v1, :cond_5

    sget-object v23, Lcom/android/server/AlarmManagerService$AlarmPolicy;->appBlackList:Ljava/util/ArrayList;

    move-object/from16 v0, v23

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0
    .catch Ljava/io/FileNotFoundException; {:try_start_7 .. :try_end_7} :catch_0
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_1

    goto :goto_6

    .line 3035
    .end local v11           #bfindItem:Z
    .end local v18           #readListType:I
    .end local v20           #tmpAppName:Ljava/lang/String;
    .end local v21           #xml:Lorg/xmlpull/v1/XmlPullParser;
    .end local v22           #xmlEventType:I
    :catchall_0
    move-exception v23

    move-object v14, v15

    .end local v15           #in:Ljava/io/InputStream;
    .restart local v14       #in:Ljava/io/InputStream;
    :goto_7
    if-eqz v14, :cond_7

    .line 3037
    :try_start_8
    invoke-virtual {v14}, Ljava/io/InputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_5

    .line 3040
    :cond_7
    :goto_8
    throw v23

    .line 3035
    .end local v14           #in:Ljava/io/InputStream;
    .restart local v11       #bfindItem:Z
    .restart local v15       #in:Ljava/io/InputStream;
    .restart local v18       #readListType:I
    .restart local v20       #tmpAppName:Ljava/lang/String;
    .restart local v21       #xml:Lorg/xmlpull/v1/XmlPullParser;
    .restart local v22       #xmlEventType:I
    :cond_8
    if-eqz v15, :cond_e

    .line 3037
    :try_start_9
    invoke-virtual {v15}, Ljava/io/InputStream;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_3

    move-object v14, v15

    .line 3040
    .end local v15           #in:Ljava/io/InputStream;
    .restart local v14       #in:Ljava/io/InputStream;
    goto/16 :goto_3

    .line 3038
    .end local v14           #in:Ljava/io/InputStream;
    .restart local v15       #in:Ljava/io/InputStream;
    :catch_3
    move-exception v12

    .line 3039
    .restart local v12       #e:Ljava/io/IOException;
    const-string v23, "AlarmManager"

    const-string v24, "An error occurs attempting to close this stream!"

    invoke-static/range {v23 .. v24}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v14, v15

    .line 3040
    .end local v15           #in:Ljava/io/InputStream;
    .restart local v14       #in:Ljava/io/InputStream;
    goto/16 :goto_3

    .line 3038
    .end local v11           #bfindItem:Z
    .end local v18           #readListType:I
    .end local v20           #tmpAppName:Ljava/lang/String;
    .end local v21           #xml:Lorg/xmlpull/v1/XmlPullParser;
    .end local v22           #xmlEventType:I
    .local v12, e:Ljava/io/FileNotFoundException;
    :catch_4
    move-exception v12

    .line 3039
    .local v12, e:Ljava/io/IOException;
    const-string v23, "AlarmManager"

    const-string v24, "An error occurs attempting to close this stream!"

    invoke-static/range {v23 .. v24}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3

    .line 3038
    .end local v12           #e:Ljava/io/IOException;
    :catch_5
    move-exception v12

    .line 3039
    .restart local v12       #e:Ljava/io/IOException;
    const-string v24, "AlarmManager"

    const-string v25, "An error occurs attempting to close this stream!"

    invoke-static/range {v24 .. v25}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_8

    .line 3049
    .end local v12           #e:Ljava/io/IOException;
    .restart local v13       #i$:Ljava/util/Iterator;
    .restart local v17       #position:I
    :cond_9
    const-string v23, "AlarmManager"

    const-string v24, "Dump XML file BlackList:"

    invoke-static/range {v23 .. v24}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3050
    const/16 v17, 0x0

    .line 3051
    sget-object v23, Lcom/android/server/AlarmManagerService$AlarmPolicy;->appBlackList:Ljava/util/ArrayList;

    invoke-virtual/range {v23 .. v23}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v13

    :goto_9
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v23

    if-eqz v23, :cond_a

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Ljava/lang/String;

    .line 3052
    .restart local v19       #str:Ljava/lang/String;
    const-string v23, "AlarmManager"

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    add-int/lit8 v17, v17, 0x1

    move-object/from16 v0, v24

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v25, ":"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v23 .. v24}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_9

    .line 3054
    .end local v19           #str:Ljava/lang/String;
    :cond_a
    const-string v23, "AlarmManager"

    const-string v24, "Dump Inner Fixed Blacklist:"

    invoke-static/range {v23 .. v24}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3055
    const/16 v17, 0x0

    .line 3056
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/server/AlarmManagerService$AlarmPolicy;->mInnerFixedBlacklis:[Ljava/lang/String;

    .local v10, arr$:[Ljava/lang/String;
    array-length v0, v10

    move/from16 v16, v0

    .local v16, len$:I
    const/4 v13, 0x0

    .local v13, i$:I
    :goto_a
    move/from16 v0, v16

    if-ge v13, v0, :cond_b

    aget-object v19, v10, v13

    .line 3057
    .restart local v19       #str:Ljava/lang/String;
    const-string v23, "AlarmManager"

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    add-int/lit8 v17, v17, 0x1

    move-object/from16 v0, v24

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v25, ":"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v23 .. v24}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3056
    add-int/lit8 v13, v13, 0x1

    goto :goto_a

    .line 3059
    .end local v19           #str:Ljava/lang/String;
    :cond_b
    const-string v23, "AlarmManager"

    const-string v24, "Dump Dyn Whitelist:"

    invoke-static/range {v23 .. v24}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3060
    const/16 v17, 0x0

    .line 3061
    sget-object v23, Lcom/android/server/AlarmManagerService$AlarmPolicy;->appDynWhiteList:Ljava/util/LinkedList;

    invoke-virtual/range {v23 .. v23}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v13

    .local v13, i$:Ljava/util/Iterator;
    :goto_b
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v23

    if-eqz v23, :cond_c

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Ljava/lang/String;

    .line 3062
    .restart local v19       #str:Ljava/lang/String;
    const-string v23, "AlarmManager"

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    add-int/lit8 v17, v17, 0x1

    move-object/from16 v0, v24

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v25, ":"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v23 .. v24}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_b

    .line 3064
    .end local v19           #str:Ljava/lang/String;
    :cond_c
    const-string v23, "AlarmManager"

    const-string v24, "Dump Dyn Blacklist:"

    invoke-static/range {v23 .. v24}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3065
    const/16 v17, 0x0

    .line 3066
    sget-object v23, Lcom/android/server/AlarmManagerService$AlarmPolicy;->appDynBlackList:Ljava/util/LinkedList;

    invoke-virtual/range {v23 .. v23}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v13

    :goto_c
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v23

    if-eqz v23, :cond_d

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Ljava/lang/String;

    .line 3067
    .restart local v19       #str:Ljava/lang/String;
    const-string v23, "AlarmManager"

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    add-int/lit8 v17, v17, 0x1

    move-object/from16 v0, v24

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v25, ":"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v23 .. v24}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_c

    .line 3070
    .end local v10           #arr$:[Ljava/lang/String;
    .end local v13           #i$:Ljava/util/Iterator;
    .end local v16           #len$:I
    .end local v17           #position:I
    .end local v19           #str:Ljava/lang/String;
    :cond_d
    return-void

    .line 3035
    :catchall_1
    move-exception v23

    goto/16 :goto_7

    .line 3032
    :catch_6
    move-exception v12

    goto/16 :goto_5

    .line 3030
    :catch_7
    move-exception v12

    goto/16 :goto_2

    .end local v14           #in:Ljava/io/InputStream;
    .restart local v11       #bfindItem:Z
    .restart local v15       #in:Ljava/io/InputStream;
    .restart local v18       #readListType:I
    .restart local v20       #tmpAppName:Ljava/lang/String;
    .restart local v21       #xml:Lorg/xmlpull/v1/XmlPullParser;
    .restart local v22       #xmlEventType:I
    :cond_e
    move-object v14, v15

    .end local v15           #in:Ljava/io/InputStream;
    .restart local v14       #in:Ljava/io/InputStream;
    goto/16 :goto_3

    .line 2990
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method private reInitAlarmPolicy()V
    .locals 5

    .prologue
    const v4, 0x493e0

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 3094
    const-string v0, "persist.alarm.uhb.debug"

    invoke-static {v0, v2}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    if-ne v3, v0, :cond_0

    .line 3095
    const-string v0, "AlarmManager"

    const-string v1, "uhb debug is enabled"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3096
    invoke-static {v3}, Lcom/android/server/AlarmManagerService;->access$202(Z)Z

    .line 3098
    :cond_0
    const-string v0, "persist.sys.alarm.enable.uhb"

    invoke-static {v0, v2}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    if-nez v0, :cond_2

    .line 3099
    invoke-static {}, Lcom/android/server/AlarmManagerService;->access$200()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "AlarmManager"

    const-string v1, "uhb disabled in sys prop"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3100
    :cond_1
    sput-boolean v2, Lcom/android/server/AlarmManagerService$AlarmPolicy;->sNeedAdjustPolicy:Z

    .line 3102
    :cond_2
    const-string v0, "persist.sys.alarm.uhb.cyc"

    invoke-static {v0, v4}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    sput v0, Lcom/android/server/AlarmManagerService$AlarmPolicy;->sAlignmentPeriod:I

    .line 3103
    sget v0, Lcom/android/server/AlarmManagerService$AlarmPolicy;->sAlignmentPeriod:I

    const v1, 0x1d4c0

    if-lt v0, v1, :cond_5

    sget v0, Lcom/android/server/AlarmManagerService$AlarmPolicy;->sAlignmentPeriod:I

    const v1, 0x927c0

    if-gt v0, v1, :cond_5

    .line 3104
    invoke-static {}, Lcom/android/server/AlarmManagerService;->access$200()Z

    move-result v0

    if-eqz v0, :cond_3

    const-string v0, "AlarmManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "read uhb cyc from sys prop is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Lcom/android/server/AlarmManagerService$AlarmPolicy;->sAlignmentPeriod:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3110
    :cond_3
    :goto_0
    const-string v0, "persist.sys.alarm.uhb.mode"

    const-string v1, "blacklist"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "whitelist"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 3111
    invoke-static {}, Lcom/android/server/AlarmManagerService;->access$200()Z

    move-result v0

    if-eqz v0, :cond_4

    const-string v0, "AlarmManager"

    const-string v1, "uhb is in white list mode"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3112
    :cond_4
    const/4 v0, 0x4

    sput v0, Lcom/android/server/AlarmManagerService$AlarmPolicy;->mUHBMode:I

    .line 3118
    :goto_1
    invoke-direct {p0}, Lcom/android/server/AlarmManagerService$AlarmPolicy;->initXMLBlackWhiteList()V

    .line 3119
    invoke-direct {p0}, Lcom/android/server/AlarmManagerService$AlarmPolicy;->readHistory()V

    .line 3120
    return-void

    .line 3107
    :cond_5
    sput v4, Lcom/android/server/AlarmManagerService$AlarmPolicy;->sAlignmentPeriod:I

    .line 3108
    invoke-static {}, Lcom/android/server/AlarmManagerService;->access$200()Z

    move-result v0

    if-eqz v0, :cond_3

    const-string v0, "AlarmManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "sys prop of uhb cyc is invalid, set to default cyc "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Lcom/android/server/AlarmManagerService$AlarmPolicy;->sAlignmentPeriod:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 3115
    :cond_6
    invoke-static {}, Lcom/android/server/AlarmManagerService;->access$200()Z

    move-result v0

    if-eqz v0, :cond_7

    const-string v0, "AlarmManager"

    const-string v1, "uhb is in black list mode"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3116
    :cond_7
    const/4 v0, 0x2

    sput v0, Lcom/android/server/AlarmManagerService$AlarmPolicy;->mUHBMode:I

    goto :goto_1
.end method

.method private readHistory()V
    .locals 11

    .prologue
    .line 2630
    invoke-static {}, Lcom/android/server/AlarmManagerService;->access$200()Z

    move-result v8

    if-eqz v8, :cond_0

    const-string v8, "AlarmManager"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Reading "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/android/server/AlarmManagerService$AlarmPolicy;->mModeHisFile:Lcom/android/internal/os/AtomicFile;

    invoke-virtual {v10}, Lcom/android/internal/os/AtomicFile;->getBaseFile()Ljava/io/File;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2632
    :cond_0
    :try_start_0
    iget-object v8, p0, Lcom/android/server/AlarmManagerService$AlarmPolicy;->mIntentHisRW:Ljava/util/HashMap;

    invoke-virtual {v8}, Ljava/util/HashMap;->clear()V

    .line 2633
    iget-object v8, p0, Lcom/android/server/AlarmManagerService$AlarmPolicy;->mModeHisFile:Lcom/android/internal/os/AtomicFile;

    invoke-virtual {v8}, Lcom/android/internal/os/AtomicFile;->readFully()[B

    move-result-object v2

    .line 2634
    .local v2, data:[B
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 2635
    .local v1, ReadParcel:Landroid/os/Parcel;
    const/4 v8, 0x0

    array-length v9, v2

    invoke-virtual {v1, v2, v8, v9}, Landroid/os/Parcel;->unmarshall([BII)V

    .line 2636
    const/4 v8, 0x0

    invoke-virtual {v1, v8}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 2637
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 2638
    .local v7, ver:I
    const/16 v8, 0x69

    if-ge v7, v8, :cond_2

    const-string v8, "AlarmManager"

    const-string v9, "old version file is discarded"

    invoke-static {v8, v9}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2659
    .end local v1           #ReadParcel:Landroid/os/Parcel;
    .end local v2           #data:[B
    .end local v7           #ver:I
    :cond_1
    :goto_0
    return-void

    .line 2639
    .restart local v1       #ReadParcel:Landroid/os/Parcel;
    .restart local v2       #data:[B
    .restart local v7       #ver:I
    :cond_2
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 2640
    .local v0, N:I
    const/4 v5, 0x0

    .local v5, i:I
    :goto_1
    if-ge v5, v0, :cond_1

    .line 2641
    invoke-virtual {v1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 2642
    .local v6, pkg:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/AlarmManagerService;->access$200()Z

    move-result v8

    if-eqz v8, :cond_3

    const-string v8, "AlarmManager"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Read pkg = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2644
    :cond_3
    if-nez v6, :cond_4

    .line 2645
    const-string v8, "AlarmManager"

    const-string v9, "find null package name, error!"

    invoke-static {v8, v9}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 2652
    .end local v0           #N:I
    .end local v1           #ReadParcel:Landroid/os/Parcel;
    .end local v2           #data:[B
    .end local v5           #i:I
    .end local v6           #pkg:Ljava/lang/String;
    .end local v7           #ver:I
    :catch_0
    move-exception v3

    .line 2653
    .local v3, e:Ljava/io/IOException;
    const-string v8, "AlarmManager"

    const-string v9, "Error reading History"

    invoke-static {v8, v9}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 2649
    .end local v3           #e:Ljava/io/IOException;
    .restart local v0       #N:I
    .restart local v1       #ReadParcel:Landroid/os/Parcel;
    .restart local v2       #data:[B
    .restart local v5       #i:I
    .restart local v6       #pkg:Ljava/lang/String;
    .restart local v7       #ver:I
    :cond_4
    :try_start_1
    new-instance v4, Lcom/android/server/AlarmManagerService$AlarmPolicy$IntentHistoryReadWrite;

    invoke-direct {v4, v1}, Lcom/android/server/AlarmManagerService$AlarmPolicy$IntentHistoryReadWrite;-><init>(Landroid/os/Parcel;)V

    .line 2650
    .local v4, his:Lcom/android/server/AlarmManagerService$AlarmPolicy$IntentHistoryReadWrite;
    iget-object v8, p0, Lcom/android/server/AlarmManagerService$AlarmPolicy;->mIntentHisRW:Ljava/util/HashMap;

    invoke-virtual {v8, v6, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 2640
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 2655
    .end local v0           #N:I
    .end local v1           #ReadParcel:Landroid/os/Parcel;
    .end local v2           #data:[B
    .end local v4           #his:Lcom/android/server/AlarmManagerService$AlarmPolicy$IntentHistoryReadWrite;
    .end local v5           #i:I
    .end local v6           #pkg:Ljava/lang/String;
    .end local v7           #ver:I
    :catch_1
    move-exception v3

    .line 2656
    .local v3, e:Ljava/lang/Exception;
    const-string v8, "AlarmManager"

    const-string v9, "Exception Error reading History"

    invoke-static {v8, v9}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private writeHistory()V
    .locals 11

    .prologue
    .line 2663
    invoke-static {}, Lcom/android/server/AlarmManagerService;->access$200()Z

    move-result v8

    if-eqz v8, :cond_0

    const-string v8, "AlarmManager"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Writing "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/android/server/AlarmManagerService$AlarmPolicy;->mModeHisFile:Lcom/android/internal/os/AtomicFile;

    invoke-virtual {v10}, Lcom/android/internal/os/AtomicFile;->getBaseFile()Ljava/io/File;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2664
    :cond_0
    const/4 v2, 0x0

    .line 2666
    .local v2, fos:Ljava/io/FileOutputStream;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v6

    .line 2669
    .local v6, out:Landroid/os/Parcel;
    :try_start_0
    iget-object v8, p0, Lcom/android/server/AlarmManagerService$AlarmPolicy;->mModeHisFile:Lcom/android/internal/os/AtomicFile;

    invoke-virtual {v8}, Lcom/android/internal/os/AtomicFile;->startWrite()Ljava/io/FileOutputStream;

    move-result-object v2

    .line 2673
    const/16 v8, 0x69

    invoke-virtual {v6, v8}, Landroid/os/Parcel;->writeInt(I)V

    .line 2674
    iget-object v8, p0, Lcom/android/server/AlarmManagerService$AlarmPolicy;->mIntentHisRW:Ljava/util/HashMap;

    invoke-virtual {v8}, Ljava/util/HashMap;->size()I

    move-result v0

    .line 2675
    .local v0, N:I
    invoke-virtual {v6, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 2676
    invoke-static {}, Lcom/android/server/AlarmManagerService;->access$200()Z

    move-result v8

    if-eqz v8, :cond_1

    const-string v8, "AlarmManager"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "writeHistory There are "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " pkg in His"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2678
    :cond_1
    iget-object v8, p0, Lcom/android/server/AlarmManagerService$AlarmPolicy;->mIntentHisRW:Ljava/util/HashMap;

    invoke-virtual {v8}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, i$:Ljava/util/Iterator;
    :cond_2
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_5

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map$Entry;

    .line 2679
    .local v5, ie:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/server/AlarmManagerService$AlarmPolicy$IntentHistoryReadWrite;>;"
    invoke-interface {v5}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 2680
    .local v7, pkg:Ljava/lang/String;
    invoke-interface {v5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/AlarmManagerService$AlarmPolicy$IntentHistoryReadWrite;

    .line 2681
    .local v3, his:Lcom/android/server/AlarmManagerService$AlarmPolicy$IntentHistoryReadWrite;
    if-eqz v7, :cond_2

    if-eqz v3, :cond_2

    .line 2682
    invoke-static {}, Lcom/android/server/AlarmManagerService;->access$200()Z

    move-result v8

    if-eqz v8, :cond_3

    const-string v8, "AlarmManager"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Save pkg = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2683
    :cond_3
    invoke-virtual {v6, v7}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2684
    invoke-virtual {v3, v6}, Lcom/android/server/AlarmManagerService$AlarmPolicy$IntentHistoryReadWrite;->writeToParcel(Landroid/os/Parcel;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 2694
    .end local v0           #N:I
    .end local v3           #his:Lcom/android/server/AlarmManagerService$AlarmPolicy$IntentHistoryReadWrite;
    .end local v4           #i$:Ljava/util/Iterator;
    .end local v5           #ie:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/server/AlarmManagerService$AlarmPolicy$IntentHistoryReadWrite;>;"
    .end local v7           #pkg:Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 2696
    .local v1, e:Ljava/lang/Exception;
    :try_start_1
    const-string v8, "AlarmManager"

    const-string v9, "Error writing History"

    invoke-static {v8, v9, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2697
    if-eqz v2, :cond_4

    .line 2698
    iget-object v8, p0, Lcom/android/server/AlarmManagerService$AlarmPolicy;->mModeHisFile:Lcom/android/internal/os/AtomicFile;

    invoke-virtual {v8, v2}, Lcom/android/internal/os/AtomicFile;->failWrite(Ljava/io/FileOutputStream;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2703
    :cond_4
    invoke-virtual {v6}, Landroid/os/Parcel;->recycle()V

    .line 2706
    .end local v1           #e:Ljava/lang/Exception;
    :goto_1
    return-void

    .line 2688
    .restart local v0       #N:I
    .restart local v4       #i$:Ljava/util/Iterator;
    :cond_5
    :try_start_2
    invoke-virtual {v6}, Landroid/os/Parcel;->marshall()[B

    move-result-object v8

    invoke-virtual {v2, v8}, Ljava/io/FileOutputStream;->write([B)V

    .line 2692
    iget-object v8, p0, Lcom/android/server/AlarmManagerService$AlarmPolicy;->mModeHisFile:Lcom/android/internal/os/AtomicFile;

    invoke-virtual {v8, v2}, Lcom/android/internal/os/AtomicFile;->finishWrite(Ljava/io/FileOutputStream;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 2703
    invoke-virtual {v6}, Landroid/os/Parcel;->recycle()V

    goto :goto_1

    .end local v0           #N:I
    .end local v4           #i$:Ljava/util/Iterator;
    :catchall_0
    move-exception v8

    invoke-virtual {v6}, Landroid/os/Parcel;->recycle()V

    throw v8
.end method


# virtual methods
.method adjustAlarmListWhenUHBDisabled()V
    .locals 5

    .prologue
    .line 2935
    iget-object v3, p0, Lcom/android/server/AlarmManagerService$AlarmPolicy;->mOwner:Lcom/android/server/AlarmManagerService;

    const/4 v4, 0x0

    #calls: Lcom/android/server/AlarmManagerService;->getAlarmList(I)Ljava/util/ArrayList;
    invoke-static {v3, v4}, Lcom/android/server/AlarmManagerService;->access$4500(Lcom/android/server/AlarmManagerService;I)Ljava/util/ArrayList;

    move-result-object v1

    .line 2936
    .local v1, alarmList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/server/AlarmManagerService$Alarm;>;"
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/AlarmManagerService$Alarm;

    .line 2937
    .local v0, a:Lcom/android/server/AlarmManagerService$Alarm;
    iget-wide v3, v0, Lcom/android/server/AlarmManagerService$Alarm;->origWhen:J

    iput-wide v3, v0, Lcom/android/server/AlarmManagerService$Alarm;->when:J

    goto :goto_0

    .line 2939
    .end local v0           #a:Lcom/android/server/AlarmManagerService$Alarm;
    :cond_0
    invoke-static {}, Lcom/android/server/AlarmManagerService;->access$200()Z

    move-result v3

    if-eqz v3, :cond_1

    const-string v3, "update type 0 alarm list when uhb disabled:"

    #calls: Lcom/android/server/AlarmManagerService;->dumpAlarmlist(Ljava/util/ArrayList;Ljava/lang/String;)V
    invoke-static {v1, v3}, Lcom/android/server/AlarmManagerService;->access$4600(Ljava/util/ArrayList;Ljava/lang/String;)V

    .line 2941
    :cond_1
    iget-object v3, p0, Lcom/android/server/AlarmManagerService$AlarmPolicy;->mOwner:Lcom/android/server/AlarmManagerService;

    const/4 v4, 0x2

    #calls: Lcom/android/server/AlarmManagerService;->getAlarmList(I)Ljava/util/ArrayList;
    invoke-static {v3, v4}, Lcom/android/server/AlarmManagerService;->access$4500(Lcom/android/server/AlarmManagerService;I)Ljava/util/ArrayList;

    move-result-object v1

    .line 2942
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/AlarmManagerService$Alarm;

    .line 2943
    .restart local v0       #a:Lcom/android/server/AlarmManagerService$Alarm;
    iget-wide v3, v0, Lcom/android/server/AlarmManagerService$Alarm;->origWhen:J

    iput-wide v3, v0, Lcom/android/server/AlarmManagerService$Alarm;->when:J

    goto :goto_1

    .line 2945
    .end local v0           #a:Lcom/android/server/AlarmManagerService$Alarm;
    :cond_2
    invoke-static {}, Lcom/android/server/AlarmManagerService;->access$200()Z

    move-result v3

    if-eqz v3, :cond_3

    const-string v3, "update type 2 alarm list when uhb disabled:"

    #calls: Lcom/android/server/AlarmManagerService;->dumpAlarmlist(Ljava/util/ArrayList;Ljava/lang/String;)V
    invoke-static {v1, v3}, Lcom/android/server/AlarmManagerService;->access$4600(Ljava/util/ArrayList;Ljava/lang/String;)V

    .line 2946
    :cond_3
    return-void
.end method

.method adjustAlarmListWhenUHBEnabled()V
    .locals 10

    .prologue
    const/4 v9, 0x1

    .line 2912
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 2913
    .local v2, nowRTC:J
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    .line 2915
    .local v4, nowELAPSED:J
    iget-object v0, p0, Lcom/android/server/AlarmManagerService$AlarmPolicy;->mOwner:Lcom/android/server/AlarmManagerService;

    const/4 v8, 0x0

    #calls: Lcom/android/server/AlarmManagerService;->getAlarmList(I)Ljava/util/ArrayList;
    invoke-static {v0, v8}, Lcom/android/server/AlarmManagerService;->access$4500(Lcom/android/server/AlarmManagerService;I)Ljava/util/ArrayList;

    move-result-object v6

    .line 2916
    .local v6, alarmList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/server/AlarmManagerService$Alarm;>;"
    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .local v7, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/AlarmManagerService$Alarm;

    .line 2917
    .local v1, a:Lcom/android/server/AlarmManagerService$Alarm;
    iget v0, v1, Lcom/android/server/AlarmManagerService$Alarm;->adjustable:I

    if-ne v0, v9, :cond_0

    move-object v0, p0

    .line 2918
    invoke-virtual/range {v0 .. v5}, Lcom/android/server/AlarmManagerService$AlarmPolicy;->delayAlarmTime(Lcom/android/server/AlarmManagerService$Alarm;JJ)V

    goto :goto_0

    .line 2921
    .end local v1           #a:Lcom/android/server/AlarmManagerService$Alarm;
    :cond_1
    invoke-static {}, Lcom/android/server/AlarmManagerService;->access$200()Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "update type 0 alarm list when uhb enabled:"

    #calls: Lcom/android/server/AlarmManagerService;->dumpAlarmlist(Ljava/util/ArrayList;Ljava/lang/String;)V
    invoke-static {v6, v0}, Lcom/android/server/AlarmManagerService;->access$4600(Ljava/util/ArrayList;Ljava/lang/String;)V

    .line 2923
    :cond_2
    iget-object v0, p0, Lcom/android/server/AlarmManagerService$AlarmPolicy;->mOwner:Lcom/android/server/AlarmManagerService;

    const/4 v8, 0x2

    #calls: Lcom/android/server/AlarmManagerService;->getAlarmList(I)Ljava/util/ArrayList;
    invoke-static {v0, v8}, Lcom/android/server/AlarmManagerService;->access$4500(Lcom/android/server/AlarmManagerService;I)Ljava/util/ArrayList;

    move-result-object v6

    .line 2924
    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_3
    :goto_1
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/AlarmManagerService$Alarm;

    .line 2925
    .restart local v1       #a:Lcom/android/server/AlarmManagerService$Alarm;
    iget v0, v1, Lcom/android/server/AlarmManagerService$Alarm;->adjustable:I

    if-ne v0, v9, :cond_3

    move-object v0, p0

    .line 2926
    invoke-virtual/range {v0 .. v5}, Lcom/android/server/AlarmManagerService$AlarmPolicy;->delayAlarmTime(Lcom/android/server/AlarmManagerService$Alarm;JJ)V

    goto :goto_1

    .line 2929
    .end local v1           #a:Lcom/android/server/AlarmManagerService$Alarm;
    :cond_4
    invoke-static {}, Lcom/android/server/AlarmManagerService;->access$200()Z

    move-result v0

    if-eqz v0, :cond_5

    const-string v0, "update type 2 alarm list when uhb enabled:"

    #calls: Lcom/android/server/AlarmManagerService;->dumpAlarmlist(Ljava/util/ArrayList;Ljava/lang/String;)V
    invoke-static {v6, v0}, Lcom/android/server/AlarmManagerService;->access$4600(Ljava/util/ArrayList;Ljava/lang/String;)V

    .line 2930
    :cond_5
    return-void
.end method

.method appInDynBlackWhitelist(Ljava/lang/String;I)Z
    .locals 4
    .parameter "pkg"
    .parameter "mode"

    .prologue
    const/4 v0, 0x1

    .line 3125
    const/4 v1, 0x2

    if-ne p2, v1, :cond_0

    .line 3126
    sget-object v1, Lcom/android/server/AlarmManagerService$AlarmPolicy;->appDynBlackList:Ljava/util/LinkedList;

    invoke-virtual {v1, p1}, Ljava/util/LinkedList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 3127
    const-string v1, "AlarmManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " is in dynamic balck list"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3137
    :goto_0
    return v0

    .line 3131
    :cond_0
    const/4 v1, 0x4

    if-ne p2, v1, :cond_1

    .line 3132
    sget-object v1, Lcom/android/server/AlarmManagerService$AlarmPolicy;->appDynWhiteList:Ljava/util/LinkedList;

    invoke-virtual {v1, p1}, Ljava/util/LinkedList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 3133
    const-string v1, "AlarmManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " is in dynamic white list"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 3137
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method delayAlarmTime(Lcom/android/server/AlarmManagerService$Alarm;JJ)V
    .locals 8
    .parameter "alarm"
    .parameter "nowRTC"
    .parameter "nowELAPSED"

    .prologue
    const-wide/16 v6, 0x1

    .line 2865
    sget-boolean v2, Lcom/android/server/AlarmManagerService$AlarmPolicy;->sNeedAdjustPolicy:Z

    if-nez v2, :cond_1

    .line 2866
    invoke-static {}, Lcom/android/server/AlarmManagerService;->access$200()Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "AlarmManager"

    const-string v3, "uhb is witched off, just return"

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2885
    :cond_0
    :goto_0
    return-void

    .line 2870
    :cond_1
    iget v2, p1, Lcom/android/server/AlarmManagerService$Alarm;->type:I

    if-nez v2, :cond_2

    .line 2871
    iget-wide v2, p1, Lcom/android/server/AlarmManagerService$Alarm;->when:J

    sget v4, Lcom/android/server/AlarmManagerService$AlarmPolicy;->sAlignmentPeriod:I

    int-to-long v4, v4

    add-long/2addr v2, v4

    sub-long/2addr v2, v6

    sget v4, Lcom/android/server/AlarmManagerService$AlarmPolicy;->sAlignmentPeriod:I

    int-to-long v4, v4

    div-long/2addr v2, v4

    sget v4, Lcom/android/server/AlarmManagerService$AlarmPolicy;->sAlignmentPeriod:I

    int-to-long v4, v4

    mul-long/2addr v2, v4

    iput-wide v2, p1, Lcom/android/server/AlarmManagerService$Alarm;->when:J

    .line 2872
    iget-wide v2, p1, Lcom/android/server/AlarmManagerService$Alarm;->when:J

    iget-wide v4, p1, Lcom/android/server/AlarmManagerService$Alarm;->origWhen:J

    cmp-long v2, v2, v4

    if-eqz v2, :cond_0

    iget-wide v2, p1, Lcom/android/server/AlarmManagerService$Alarm;->when:J

    sget v4, Lcom/android/server/AlarmManagerService$AlarmPolicy;->sAlignmentPeriod:I

    int-to-long v4, v4

    sub-long/2addr v2, v4

    cmp-long v2, v2, p2

    if-lez v2, :cond_0

    .line 2873
    iget-wide v2, p1, Lcom/android/server/AlarmManagerService$Alarm;->when:J

    sget v4, Lcom/android/server/AlarmManagerService$AlarmPolicy;->sAlignmentPeriod:I

    int-to-long v4, v4

    sub-long/2addr v2, v4

    iput-wide v2, p1, Lcom/android/server/AlarmManagerService$Alarm;->when:J

    .line 2874
    invoke-static {}, Lcom/android/server/AlarmManagerService;->access$200()Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "AlarmManager"

    const-string v3, "adjust alarm to the previous hb of calculate out time"

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 2878
    :cond_2
    sub-long v0, p2, p4

    .line 2879
    .local v0, bootRTC:J
    iget-wide v2, p1, Lcom/android/server/AlarmManagerService$Alarm;->when:J

    add-long/2addr v2, v0

    sget v4, Lcom/android/server/AlarmManagerService$AlarmPolicy;->sAlignmentPeriod:I

    int-to-long v4, v4

    add-long/2addr v2, v4

    sub-long/2addr v2, v6

    sget v4, Lcom/android/server/AlarmManagerService$AlarmPolicy;->sAlignmentPeriod:I

    int-to-long v4, v4

    div-long/2addr v2, v4

    sget v4, Lcom/android/server/AlarmManagerService$AlarmPolicy;->sAlignmentPeriod:I

    int-to-long v4, v4

    mul-long/2addr v2, v4

    sub-long/2addr v2, v0

    iput-wide v2, p1, Lcom/android/server/AlarmManagerService$Alarm;->when:J

    .line 2880
    iget-wide v2, p1, Lcom/android/server/AlarmManagerService$Alarm;->when:J

    iget-wide v4, p1, Lcom/android/server/AlarmManagerService$Alarm;->origWhen:J

    cmp-long v2, v2, v4

    if-eqz v2, :cond_0

    iget-wide v2, p1, Lcom/android/server/AlarmManagerService$Alarm;->when:J

    sget v4, Lcom/android/server/AlarmManagerService$AlarmPolicy;->sAlignmentPeriod:I

    int-to-long v4, v4

    sub-long/2addr v2, v4

    cmp-long v2, v2, p4

    if-lez v2, :cond_0

    .line 2881
    iget-wide v2, p1, Lcom/android/server/AlarmManagerService$Alarm;->when:J

    sget v4, Lcom/android/server/AlarmManagerService$AlarmPolicy;->sAlignmentPeriod:I

    int-to-long v4, v4

    sub-long/2addr v2, v4

    iput-wide v2, p1, Lcom/android/server/AlarmManagerService$Alarm;->when:J

    .line 2882
    invoke-static {}, Lcom/android/server/AlarmManagerService;->access$200()Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "AlarmManager"

    const-string v3, "adjust alarm to the previous hb of calculate out time"

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method isAlarmCanBeAdjust(Lcom/android/server/AlarmManagerService$Alarm;)Z
    .locals 5
    .parameter "alarm"

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 3141
    iget-object v3, p1, Lcom/android/server/AlarmManagerService$Alarm;->operation:Landroid/app/PendingIntent;

    invoke-virtual {v3}, Landroid/app/PendingIntent;->getTargetPackage()Ljava/lang/String;

    move-result-object v0

    .line 3142
    .local v0, pkg:Ljava/lang/String;
    sget v3, Lcom/android/server/AlarmManagerService$AlarmPolicy;->mUHBMode:I

    const/4 v4, 0x2

    if-ne v3, v4, :cond_1

    invoke-direct {p0, v0}, Lcom/android/server/AlarmManagerService$AlarmPolicy;->appInInnerBlackList(Ljava/lang/String;)Z

    move-result v3

    if-eq v2, v3, :cond_0

    sget v3, Lcom/android/server/AlarmManagerService$AlarmPolicy;->mUHBMode:I

    invoke-virtual {p0, v0, v3}, Lcom/android/server/AlarmManagerService$AlarmPolicy;->appInDynBlackWhitelist(Ljava/lang/String;I)Z

    move-result v3

    if-eq v2, v3, :cond_0

    sget v3, Lcom/android/server/AlarmManagerService$AlarmPolicy;->mUHBMode:I

    invoke-direct {p0, v0, v3}, Lcom/android/server/AlarmManagerService$AlarmPolicy;->appInXMLBlackWhiteList(Ljava/lang/String;I)Z

    move-result v3

    if-ne v2, v3, :cond_1

    .line 3152
    :cond_0
    :goto_0
    return v1

    .line 3147
    :cond_1
    sget v3, Lcom/android/server/AlarmManagerService$AlarmPolicy;->mUHBMode:I

    const/4 v4, 0x4

    if-ne v3, v4, :cond_2

    sget v3, Lcom/android/server/AlarmManagerService$AlarmPolicy;->mUHBMode:I

    invoke-virtual {p0, v0, v3}, Lcom/android/server/AlarmManagerService$AlarmPolicy;->appInDynBlackWhitelist(Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_0

    sget v3, Lcom/android/server/AlarmManagerService$AlarmPolicy;->mUHBMode:I

    invoke-direct {p0, v0, v3}, Lcom/android/server/AlarmManagerService$AlarmPolicy;->appInXMLBlackWhiteList(Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_0

    :cond_2
    move v1, v2

    .line 3152
    goto :goto_0
.end method

.method recordOneTimeOut_DeterminPeriodical(Lcom/android/server/AlarmManagerService$Alarm;Lcom/android/server/AlarmManagerService$BroadcastStats;)V
    .locals 13
    .parameter "alarm"
    .parameter "bs"

    .prologue
    .line 2710
    const/4 v1, 0x0

    .line 2713
    .local v1, excuteOnce:Z
    :cond_0
    iget-object v9, p1, Lcom/android/server/AlarmManagerService$Alarm;->operation:Landroid/app/PendingIntent;

    invoke-virtual {v9}, Landroid/app/PendingIntent;->getIntent()Landroid/content/Intent;

    move-result-object v5

    .line 2714
    .local v5, intent:Landroid/content/Intent;
    iget-boolean v9, p1, Lcom/android/server/AlarmManagerService$Alarm;->bNeedRecord:Z

    if-nez v9, :cond_4

    .line 2715
    invoke-static {}, Lcom/android/server/AlarmManagerService;->access$200()Z

    move-result v9

    if-eqz v9, :cond_1

    const-string v9, "AlarmManager"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "ignore record "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2769
    :cond_1
    :goto_0
    sget-wide v9, Lcom/android/server/AlarmManagerService$AlarmPolicy;->mAlarmCount:J

    const-wide/16 v11, 0x1

    add-long/2addr v9, v11

    sput-wide v9, Lcom/android/server/AlarmManagerService$AlarmPolicy;->mAlarmCount:J

    const-wide/16 v11, 0x64

    rem-long/2addr v9, v11

    const-wide/16 v11, 0x0

    cmp-long v9, v9, v11

    if-nez v9, :cond_3

    .line 2770
    invoke-virtual {p0}, Lcom/android/server/AlarmManagerService$AlarmPolicy;->removeInactivePeriodicalIntents()V

    .line 2772
    sget-wide v9, Lcom/android/server/AlarmManagerService$AlarmPolicy;->mAlarmCount:J

    const-wide/16 v11, 0x12c

    rem-long/2addr v9, v11

    const-wide/16 v11, 0x0

    cmp-long v9, v9, v11

    if-nez v9, :cond_3

    .line 2773
    invoke-static {}, Lcom/android/server/AlarmManagerService;->access$200()Z

    move-result v9

    if-eqz v9, :cond_2

    const-string v9, "AlarmManager"

    const-string v10, "Auto renew time"

    invoke-static {v9, v10}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2774
    :cond_2
    invoke-direct {p0}, Lcom/android/server/AlarmManagerService$AlarmPolicy;->writeHistory()V

    .line 2777
    :cond_3
    return-void

    .line 2718
    :cond_4
    invoke-static {}, Lcom/android/server/AlarmManagerService;->access$200()Z

    move-result v9

    if-eqz v9, :cond_5

    const-string v9, "AlarmManager"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "recordOneTimeOut, "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2719
    :cond_5
    if-eqz v5, :cond_9

    new-instance v6, Landroid/util/Pair;

    invoke-virtual {v5}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v5}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v10

    invoke-direct {v6, v9, v10}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 2720
    .local v6, mTarget:Landroid/util/Pair;,"Landroid/util/Pair<Ljava/lang/String;Landroid/content/ComponentName;>;"
    :goto_1
    iget-object v9, p2, Lcom/android/server/AlarmManagerService$BroadcastStats;->filterStats:Ljava/util/HashMap;

    invoke-virtual {v9, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/AlarmManagerService$FilterStats;

    .line 2722
    .local v2, fs:Lcom/android/server/AlarmManagerService$FilterStats;
    if-nez v2, :cond_7

    .line 2723
    invoke-static {}, Lcom/android/server/AlarmManagerService;->access$200()Z

    move-result v9

    if-eqz v9, :cond_6

    const-string v9, "AlarmManager"

    const-string v10, "fs is null, this should not occured."

    invoke-static {v9, v10}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2724
    :cond_6
    new-instance v2, Lcom/android/server/AlarmManagerService$FilterStats;

    .end local v2           #fs:Lcom/android/server/AlarmManagerService$FilterStats;
    invoke-direct {v2, p2, v6}, Lcom/android/server/AlarmManagerService$FilterStats;-><init>(Lcom/android/server/AlarmManagerService$BroadcastStats;Landroid/util/Pair;)V

    .line 2725
    .restart local v2       #fs:Lcom/android/server/AlarmManagerService$FilterStats;
    iget-object v9, p2, Lcom/android/server/AlarmManagerService$BroadcastStats;->filterStats:Ljava/util/HashMap;

    invoke-virtual {v9, v6, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2728
    :cond_7
    iget-object v9, v2, Lcom/android/server/AlarmManagerService$FilterStats;->mIntentTimeOutHistory:Lcom/android/server/AlarmManagerService$AlarmPolicy$IntentTimeOutHistory;

    iget-wide v10, p2, Lcom/android/server/AlarmManagerService$BroadcastStats;->startTime:J

    invoke-virtual {v9, v10, v11}, Lcom/android/server/AlarmManagerService$AlarmPolicy$IntentTimeOutHistory;->addRecord2(J)V

    .line 2730
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v9

    iput-wide v9, v2, Lcom/android/server/AlarmManagerService$FilterStats;->mRecordRTCTime:J

    .line 2732
    iget-object v9, v2, Lcom/android/server/AlarmManagerService$FilterStats;->mIntentTimeOutHistory:Lcom/android/server/AlarmManagerService$AlarmPolicy$IntentTimeOutHistory;

    invoke-virtual {v9}, Lcom/android/server/AlarmManagerService$AlarmPolicy$IntentTimeOutHistory;->isPeriodical()Z

    move-result v9

    const/4 v10, 0x1

    if-ne v9, v10, :cond_f

    .line 2733
    iget-object v9, p1, Lcom/android/server/AlarmManagerService$Alarm;->operation:Landroid/app/PendingIntent;

    invoke-virtual {v9}, Landroid/app/PendingIntent;->getTargetPackage()Ljava/lang/String;

    move-result-object v8

    .line 2735
    .local v8, pkgname:Ljava/lang/String;
    invoke-virtual {p0, p1}, Lcom/android/server/AlarmManagerService$AlarmPolicy;->isAlarmCanBeAdjust(Lcom/android/server/AlarmManagerService$Alarm;)Z

    move-result v9

    if-nez v9, :cond_a

    .line 2736
    invoke-static {}, Lcom/android/server/AlarmManagerService;->access$200()Z

    move-result v9

    if-eqz v9, :cond_8

    const-string v9, "AlarmManager"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Empty record for it is not allowed to be adjust:  "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2737
    :cond_8
    iget-object v9, v2, Lcom/android/server/AlarmManagerService$FilterStats;->mIntentTimeOutHistory:Lcom/android/server/AlarmManagerService$AlarmPolicy$IntentTimeOutHistory;

    const/4 v10, 0x0

    iput v10, v9, Lcom/android/server/AlarmManagerService$AlarmPolicy$IntentTimeOutHistory;->count:I

    goto/16 :goto_0

    .line 2719
    .end local v2           #fs:Lcom/android/server/AlarmManagerService$FilterStats;
    .end local v6           #mTarget:Landroid/util/Pair;,"Landroid/util/Pair<Ljava/lang/String;Landroid/content/ComponentName;>;"
    .end local v8           #pkgname:Ljava/lang/String;
    :cond_9
    const/4 v6, 0x0

    goto :goto_1

    .line 2742
    .restart local v2       #fs:Lcom/android/server/AlarmManagerService$FilterStats;
    .restart local v6       #mTarget:Landroid/util/Pair;,"Landroid/util/Pair<Ljava/lang/String;Landroid/content/ComponentName;>;"
    .restart local v8       #pkgname:Ljava/lang/String;
    :cond_a
    iget v9, v2, Lcom/android/server/AlarmManagerService$FilterStats;->mAdjust:I

    if-nez v9, :cond_10

    .line 2743
    invoke-static {}, Lcom/android/server/AlarmManagerService;->access$200()Z

    move-result v9

    if-eqz v9, :cond_b

    const-string v9, "AlarmManager"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Mark a new intent periodical."

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2744
    :cond_b
    const/4 v9, 0x1

    iput v9, v2, Lcom/android/server/AlarmManagerService$FilterStats;->mAdjust:I

    .line 2745
    const/4 v7, 0x0

    .line 2746
    .local v7, pkgExist:Z
    iget-object v9, p0, Lcom/android/server/AlarmManagerService$AlarmPolicy;->mIntentHisRW:Ljava/util/HashMap;

    invoke-virtual {v9}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, i$:Ljava/util/Iterator;
    :cond_c
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_d

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 2747
    .local v0, be:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/server/AlarmManagerService$AlarmPolicy$IntentHistoryReadWrite;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    invoke-virtual {v9, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_c

    .line 2748
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/AlarmManagerService$AlarmPolicy$IntentHistoryReadWrite;

    .line 2749
    .local v3, his:Lcom/android/server/AlarmManagerService$AlarmPolicy$IntentHistoryReadWrite;
    iget-object v9, v3, Lcom/android/server/AlarmManagerService$AlarmPolicy$IntentHistoryReadWrite;->intentStats:Ljava/util/HashMap;

    invoke-virtual {v9, v6, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2750
    const/4 v7, 0x1

    .line 2754
    .end local v0           #be:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/server/AlarmManagerService$AlarmPolicy$IntentHistoryReadWrite;>;"
    .end local v3           #his:Lcom/android/server/AlarmManagerService$AlarmPolicy$IntentHistoryReadWrite;
    :cond_d
    if-nez v7, :cond_e

    .line 2755
    new-instance v3, Lcom/android/server/AlarmManagerService$AlarmPolicy$IntentHistoryReadWrite;

    invoke-direct {v3, v6, v2}, Lcom/android/server/AlarmManagerService$AlarmPolicy$IntentHistoryReadWrite;-><init>(Landroid/util/Pair;Lcom/android/server/AlarmManagerService$FilterStats;)V

    .line 2756
    .restart local v3       #his:Lcom/android/server/AlarmManagerService$AlarmPolicy$IntentHistoryReadWrite;
    iget-object v9, p0, Lcom/android/server/AlarmManagerService$AlarmPolicy;->mIntentHisRW:Ljava/util/HashMap;

    invoke-virtual {v9, v8, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2758
    .end local v3           #his:Lcom/android/server/AlarmManagerService$AlarmPolicy$IntentHistoryReadWrite;
    :cond_e
    invoke-direct {p0}, Lcom/android/server/AlarmManagerService$AlarmPolicy;->writeHistory()V

    .line 2760
    iget-object v9, v2, Lcom/android/server/AlarmManagerService$FilterStats;->mIntentTimeOutHistory:Lcom/android/server/AlarmManagerService$AlarmPolicy$IntentTimeOutHistory;

    const/4 v10, 0x0

    iput v10, v9, Lcom/android/server/AlarmManagerService$AlarmPolicy$IntentTimeOutHistory;->count:I

    .line 2767
    .end local v4           #i$:Ljava/util/Iterator;
    .end local v7           #pkgExist:Z
    .end local v8           #pkgname:Ljava/lang/String;
    :cond_f
    :goto_2
    if-nez v1, :cond_0

    goto/16 :goto_0

    .line 2764
    .restart local v8       #pkgname:Ljava/lang/String;
    :cond_10
    iget-object v9, v2, Lcom/android/server/AlarmManagerService$FilterStats;->mIntentTimeOutHistory:Lcom/android/server/AlarmManagerService$AlarmPolicy$IntentTimeOutHistory;

    const/4 v10, 0x0

    iput v10, v9, Lcom/android/server/AlarmManagerService$AlarmPolicy$IntentTimeOutHistory;->count:I

    goto :goto_2
.end method

.method removeInactivePeriodicalIntents()V
    .locals 14

    .prologue
    const/4 v13, 0x0

    .line 2888
    const/4 v0, 0x0

    .line 2889
    .local v0, bRemoved:Z
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 2890
    .local v2, curRTC:J
    invoke-static {}, Lcom/android/server/AlarmManagerService;->access$200()Z

    move-result v9

    if-eqz v9, :cond_0

    const-string v9, "AlarmManager"

    const-string v10, "removeInactivePeriodicalIntents"

    invoke-static {v9, v10}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2891
    :cond_0
    iget-object v9, p0, Lcom/android/server/AlarmManagerService$AlarmPolicy;->mIntentHisRW:Ljava/util/HashMap;

    invoke-virtual {v9}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .local v7, i$:Ljava/util/Iterator;
    :cond_1
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_4

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 2892
    .local v1, be:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/server/AlarmManagerService$AlarmPolicy$IntentHistoryReadWrite;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/AlarmManagerService$AlarmPolicy$IntentHistoryReadWrite;

    .line 2893
    .local v6, his:Lcom/android/server/AlarmManagerService$AlarmPolicy$IntentHistoryReadWrite;
    iget-object v9, v6, Lcom/android/server/AlarmManagerService$AlarmPolicy$IntentHistoryReadWrite;->intentStats:Ljava/util/HashMap;

    invoke-virtual {v9}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v8

    .line 2894
    .local v8, iter:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/util/Map$Entry<Landroid/util/Pair<Ljava/lang/String;Landroid/content/ComponentName;>;Lcom/android/server/AlarmManagerService$FilterStats;>;>;"
    :cond_2
    :goto_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_1

    .line 2895
    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    .line 2896
    .local v4, entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Landroid/util/Pair<Ljava/lang/String;Landroid/content/ComponentName;>;Lcom/android/server/AlarmManagerService$FilterStats;>;"
    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/AlarmManagerService$FilterStats;

    .line 2897
    .local v5, fs:Lcom/android/server/AlarmManagerService$FilterStats;
    iget-wide v9, v5, Lcom/android/server/AlarmManagerService$FilterStats;->mRecordRTCTime:J

    sub-long v9, v2, v9

    const-wide/32 v11, 0x19bfcc00

    cmp-long v9, v9, v11

    if-lez v9, :cond_2

    .line 2898
    invoke-static {}, Lcom/android/server/AlarmManagerService;->access$200()Z

    move-result v9

    if-eqz v9, :cond_3

    const-string v10, "AlarmManager"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Remove inactive :"

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/util/Pair;

    iget-object v9, v9, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v9, Ljava/lang/String;

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v11, "||"

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/util/Pair;

    iget-object v9, v9, Landroid/util/Pair;->second:Ljava/lang/Object;

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v10, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2899
    :cond_3
    iput v13, v5, Lcom/android/server/AlarmManagerService$FilterStats;->mAdjust:I

    .line 2900
    iget-object v9, v5, Lcom/android/server/AlarmManagerService$FilterStats;->mIntentTimeOutHistory:Lcom/android/server/AlarmManagerService$AlarmPolicy$IntentTimeOutHistory;

    iput v13, v9, Lcom/android/server/AlarmManagerService$AlarmPolicy$IntentTimeOutHistory;->count:I

    .line 2901
    invoke-interface {v8}, Ljava/util/Iterator;->remove()V

    .line 2902
    const/4 v0, 0x1

    goto :goto_0

    .line 2907
    .end local v1           #be:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/server/AlarmManagerService$AlarmPolicy$IntentHistoryReadWrite;>;"
    .end local v4           #entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Landroid/util/Pair<Ljava/lang/String;Landroid/content/ComponentName;>;Lcom/android/server/AlarmManagerService$FilterStats;>;"
    .end local v5           #fs:Lcom/android/server/AlarmManagerService$FilterStats;
    .end local v6           #his:Lcom/android/server/AlarmManagerService$AlarmPolicy$IntentHistoryReadWrite;
    .end local v8           #iter:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/util/Map$Entry<Landroid/util/Pair<Ljava/lang/String;Landroid/content/ComponentName;>;Lcom/android/server/AlarmManagerService$FilterStats;>;>;"
    :cond_4
    if-eqz v0, :cond_5

    invoke-direct {p0}, Lcom/android/server/AlarmManagerService$AlarmPolicy;->writeHistory()V

    .line 2908
    :cond_5
    return-void
.end method

.method sysHasMoreThan2HeartBeat(Lcom/android/server/AlarmManagerService$Alarm;JJ)Z
    .locals 12
    .parameter "alarm"
    .parameter "rtc"
    .parameter "elapse"

    .prologue
    .line 2838
    invoke-static {}, Lcom/android/server/AlarmManagerService;->access$200()Z

    move-result v8

    if-eqz v8, :cond_0

    const-string v8, "AlarmManager"

    const-string v9, "sysHasMoreThan2HeartBeat"

    invoke-static {v8, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2839
    :cond_0
    const/4 v2, 0x0

    .line 2840
    .local v2, cnt:I
    iget-object v8, p0, Lcom/android/server/AlarmManagerService$AlarmPolicy;->mOwner:Lcom/android/server/AlarmManagerService;

    #getter for: Lcom/android/server/AlarmManagerService;->mBroadcastStats:Ljava/util/HashMap;
    invoke-static {v8}, Lcom/android/server/AlarmManagerService;->access$3600(Lcom/android/server/AlarmManagerService;)Ljava/util/HashMap;

    move-result-object v8

    invoke-virtual {v8}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_7

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 2841
    .local v0, be:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/server/AlarmManagerService$BroadcastStats;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/AlarmManagerService$BroadcastStats;

    .line 2842
    .local v1, bs:Lcom/android/server/AlarmManagerService$BroadcastStats;
    iget-object v8, v1, Lcom/android/server/AlarmManagerService$BroadcastStats;->filterStats:Ljava/util/HashMap;

    invoke-virtual {v8}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .local v5, i$:Ljava/util/Iterator;
    :cond_2
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_1

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/Map$Entry;

    .line 2843
    .local v6, ie:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Landroid/util/Pair<Ljava/lang/String;Landroid/content/ComponentName;>;Lcom/android/server/AlarmManagerService$FilterStats;>;"
    invoke-interface {v6}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/AlarmManagerService$FilterStats;

    .line 2844
    .local v3, fs:Lcom/android/server/AlarmManagerService$FilterStats;
    iget v8, v3, Lcom/android/server/AlarmManagerService$FilterStats;->mAdjust:I

    if-eqz v8, :cond_2

    .line 2845
    invoke-static {}, Lcom/android/server/AlarmManagerService;->access$200()Z

    move-result v8

    if-eqz v8, :cond_3

    const-string v9, "AlarmManager"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "checking periodic "

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v8, v3, Lcom/android/server/AlarmManagerService$FilterStats;->mTarget:Landroid/util/Pair;

    iget-object v8, v8, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v8, Ljava/lang/String;

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v10, "||"

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v10, v3, Lcom/android/server/AlarmManagerService$FilterStats;->mTarget:Landroid/util/Pair;

    iget-object v10, v10, Landroid/util/Pair;->second:Ljava/lang/Object;

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v10, " is active?"

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v9, v8}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2846
    :cond_3
    iget-object v8, v3, Lcom/android/server/AlarmManagerService$FilterStats;->mIntentTimeOutHistory:Lcom/android/server/AlarmManagerService$AlarmPolicy$IntentTimeOutHistory;

    iget v7, v8, Lcom/android/server/AlarmManagerService$AlarmPolicy$IntentTimeOutHistory;->last_index:I

    .line 2847
    .local v7, index:I
    iget-object v8, v3, Lcom/android/server/AlarmManagerService$FilterStats;->mIntentTimeOutHistory:Lcom/android/server/AlarmManagerService$AlarmPolicy$IntentTimeOutHistory;

    iget-object v8, v8, Lcom/android/server/AlarmManagerService$AlarmPolicy$IntentTimeOutHistory;->timeout_list:[J

    aget-wide v8, v8, v7

    sub-long v8, p4, v8

    sget v10, Lcom/android/server/AlarmManagerService$AlarmPolicy;->sAlignmentPeriod:I

    sget v11, Lcom/android/server/AlarmManagerService$AlarmPolicy;->sAlignmentPeriod:I

    add-int/2addr v10, v11

    int-to-long v10, v10

    cmp-long v8, v8, v10

    if-gtz v8, :cond_5

    .line 2848
    invoke-static {}, Lcom/android/server/AlarmManagerService;->access$200()Z

    move-result v8

    if-eqz v8, :cond_4

    const-string v8, "AlarmManager"

    const-string v9, "it is active."

    invoke-static {v8, v9}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2849
    :cond_4
    add-int/lit8 v2, v2, 0x1

    .line 2850
    const/4 v8, 0x2

    if-lt v2, v8, :cond_2

    const/4 v8, 0x1

    .line 2861
    .end local v0           #be:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/server/AlarmManagerService$BroadcastStats;>;"
    .end local v1           #bs:Lcom/android/server/AlarmManagerService$BroadcastStats;
    .end local v3           #fs:Lcom/android/server/AlarmManagerService$FilterStats;
    .end local v5           #i$:Ljava/util/Iterator;
    .end local v6           #ie:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Landroid/util/Pair<Ljava/lang/String;Landroid/content/ComponentName;>;Lcom/android/server/AlarmManagerService$FilterStats;>;"
    .end local v7           #index:I
    :goto_1
    return v8

    .line 2852
    .restart local v0       #be:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/server/AlarmManagerService$BroadcastStats;>;"
    .restart local v1       #bs:Lcom/android/server/AlarmManagerService$BroadcastStats;
    .restart local v3       #fs:Lcom/android/server/AlarmManagerService$FilterStats;
    .restart local v5       #i$:Ljava/util/Iterator;
    .restart local v6       #ie:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Landroid/util/Pair<Ljava/lang/String;Landroid/content/ComponentName;>;Lcom/android/server/AlarmManagerService$FilterStats;>;"
    .restart local v7       #index:I
    :cond_5
    iget-object v8, v3, Lcom/android/server/AlarmManagerService$FilterStats;->mIntentTimeOutHistory:Lcom/android/server/AlarmManagerService$AlarmPolicy$IntentTimeOutHistory;

    iget-object v8, v8, Lcom/android/server/AlarmManagerService$AlarmPolicy$IntentTimeOutHistory;->timeout_list:[J

    aget-wide v8, v8, v7

    const-wide/16 v10, 0x0

    cmp-long v8, v8, v10

    if-nez v8, :cond_6

    .line 2853
    invoke-static {}, Lcom/android/server/AlarmManagerService;->access$200()Z

    move-result v8

    if-eqz v8, :cond_2

    const-string v8, "AlarmManager"

    const-string v9, "it never activated from power on"

    invoke-static {v8, v9}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 2856
    :cond_6
    invoke-static {}, Lcom/android/server/AlarmManagerService;->access$200()Z

    move-result v8

    if-eqz v8, :cond_2

    const-string v8, "AlarmManager"

    const-string v9, "it is not active for a certain time"

    invoke-static {v8, v9}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 2861
    .end local v0           #be:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/server/AlarmManagerService$BroadcastStats;>;"
    .end local v1           #bs:Lcom/android/server/AlarmManagerService$BroadcastStats;
    .end local v3           #fs:Lcom/android/server/AlarmManagerService$FilterStats;
    .end local v5           #i$:Ljava/util/Iterator;
    .end local v6           #ie:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Landroid/util/Pair<Ljava/lang/String;Landroid/content/ComponentName;>;Lcom/android/server/AlarmManagerService$FilterStats;>;"
    .end local v7           #index:I
    :cond_7
    const/4 v8, 0x0

    goto :goto_1
.end method

.method updateAlarmInfo(Lcom/android/server/AlarmManagerService$Alarm;)V
    .locals 13
    .parameter "alarm"

    .prologue
    .line 2780
    const/4 v7, 0x0

    .line 2781
    .local v7, delta:I
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 2782
    .local v2, nowRTC:J
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    .line 2784
    .local v4, nowELAPSED:J
    const/4 v0, 0x1

    iput-boolean v0, p1, Lcom/android/server/AlarmManagerService$Alarm;->bNeedRecord:Z

    .line 2785
    invoke-static {}, Lcom/android/server/AlarmManagerService;->access$200()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "AlarmManager"

    const-string v1, "updateAlarmInfo begin"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2790
    :cond_0
    iget v0, p1, Lcom/android/server/AlarmManagerService$Alarm;->type:I

    if-nez v0, :cond_4

    .line 2791
    iget-wide v0, p1, Lcom/android/server/AlarmManagerService$Alarm;->when:J

    sub-long/2addr v0, v2

    long-to-int v7, v0

    .line 2797
    :cond_1
    :goto_0
    const v0, 0xc350

    if-gt v7, v0, :cond_5

    .line 2798
    invoke-static {}, Lcom/android/server/AlarmManagerService;->access$200()Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "AlarmManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Don\'t adjust short "

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v11, p1, Lcom/android/server/AlarmManagerService$Alarm;->operation:Landroid/app/PendingIntent;

    invoke-virtual {v11}, Landroid/app/PendingIntent;->getIntent()Landroid/content/Intent;

    move-result-object v11

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2799
    :cond_2
    const/4 v0, 0x0

    iput-boolean v0, p1, Lcom/android/server/AlarmManagerService$Alarm;->bNeedRecord:Z

    .line 2835
    :cond_3
    :goto_1
    return-void

    .line 2793
    :cond_4
    iget v0, p1, Lcom/android/server/AlarmManagerService$Alarm;->type:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 2794
    iget-wide v0, p1, Lcom/android/server/AlarmManagerService$Alarm;->when:J

    sub-long/2addr v0, v4

    long-to-int v7, v0

    goto :goto_0

    .line 2804
    :cond_5
    iget-wide v0, p1, Lcom/android/server/AlarmManagerService$Alarm;->repeatInterval:J

    const-wide/32 v11, 0xdbba0

    cmp-long v0, v0, v11

    if-ltz v0, :cond_7

    .line 2806
    const/4 v0, 0x0

    iput-boolean v0, p1, Lcom/android/server/AlarmManagerService$Alarm;->bNeedRecord:Z

    .line 2807
    invoke-virtual {p0, p1}, Lcom/android/server/AlarmManagerService$AlarmPolicy;->isAlarmCanBeAdjust(Lcom/android/server/AlarmManagerService$Alarm;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 2809
    invoke-static {}, Lcom/android/server/AlarmManagerService;->access$200()Z

    move-result v0

    if-eqz v0, :cond_6

    const-string v0, "AlarmManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "update repeated "

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v11, p1, Lcom/android/server/AlarmManagerService$Alarm;->operation:Landroid/app/PendingIntent;

    invoke-virtual {v11}, Landroid/app/PendingIntent;->getIntent()Landroid/content/Intent;

    move-result-object v11

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2810
    :cond_6
    const/4 v0, 0x1

    iput v0, p1, Lcom/android/server/AlarmManagerService$Alarm;->adjustable:I

    move-object v0, p0

    move-object v1, p1

    .line 2811
    invoke-virtual/range {v0 .. v5}, Lcom/android/server/AlarmManagerService$AlarmPolicy;->delayAlarmTime(Lcom/android/server/AlarmManagerService$Alarm;JJ)V

    .line 2812
    const/4 v0, 0x0

    iput-boolean v0, p1, Lcom/android/server/AlarmManagerService$Alarm;->bNeedRecord:Z

    goto :goto_1

    .line 2817
    :cond_7
    iget-object v0, p0, Lcom/android/server/AlarmManagerService$AlarmPolicy;->mOwner:Lcom/android/server/AlarmManagerService;

    iget-object v1, p1, Lcom/android/server/AlarmManagerService$Alarm;->operation:Landroid/app/PendingIntent;

    #calls: Lcom/android/server/AlarmManagerService;->getStatsLocked(Landroid/app/PendingIntent;)Lcom/android/server/AlarmManagerService$BroadcastStats;
    invoke-static {v0, v1}, Lcom/android/server/AlarmManagerService;->access$100(Lcom/android/server/AlarmManagerService;Landroid/app/PendingIntent;)Lcom/android/server/AlarmManagerService$BroadcastStats;

    move-result-object v6

    .line 2818
    .local v6, bs:Lcom/android/server/AlarmManagerService$BroadcastStats;
    iget-object v0, p1, Lcom/android/server/AlarmManagerService$Alarm;->operation:Landroid/app/PendingIntent;

    invoke-virtual {v0}, Landroid/app/PendingIntent;->getIntent()Landroid/content/Intent;

    move-result-object v9

    .line 2820
    .local v9, intent:Landroid/content/Intent;
    if-eqz v9, :cond_9

    new-instance v10, Landroid/util/Pair;

    invoke-virtual {v9}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v9}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v1

    invoke-direct {v10, v0, v1}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 2821
    .local v10, mTarget:Landroid/util/Pair;,"Landroid/util/Pair<Ljava/lang/String;Landroid/content/ComponentName;>;"
    :goto_2
    iget-object v0, v6, Lcom/android/server/AlarmManagerService$BroadcastStats;->filterStats:Ljava/util/HashMap;

    invoke-virtual {v0, v10}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/server/AlarmManagerService$FilterStats;

    .line 2823
    .local v8, fs:Lcom/android/server/AlarmManagerService$FilterStats;
    if-eqz v8, :cond_3

    iget v0, v8, Lcom/android/server/AlarmManagerService$FilterStats;->mAdjust:I

    if-eqz v0, :cond_3

    .line 2824
    sget v0, Lcom/android/server/AlarmManagerService$AlarmPolicy;->sAlignmentPeriod:I

    if-gt v7, v0, :cond_a

    .line 2825
    invoke-static {}, Lcom/android/server/AlarmManagerService;->access$200()Z

    move-result v0

    if-eqz v0, :cond_8

    const-string v0, "AlarmManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "delta = "

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v11, ".direct update "

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2826
    :cond_8
    iget v0, v8, Lcom/android/server/AlarmManagerService$FilterStats;->mAdjust:I

    iput v0, p1, Lcom/android/server/AlarmManagerService$Alarm;->adjustable:I

    move-object v0, p0

    move-object v1, p1

    .line 2827
    invoke-virtual/range {v0 .. v5}, Lcom/android/server/AlarmManagerService$AlarmPolicy;->delayAlarmTime(Lcom/android/server/AlarmManagerService$Alarm;JJ)V

    goto/16 :goto_1

    .line 2820
    .end local v8           #fs:Lcom/android/server/AlarmManagerService$FilterStats;
    .end local v10           #mTarget:Landroid/util/Pair;,"Landroid/util/Pair<Ljava/lang/String;Landroid/content/ComponentName;>;"
    :cond_9
    const/4 v10, 0x0

    goto :goto_2

    .line 2829
    .restart local v8       #fs:Lcom/android/server/AlarmManagerService$FilterStats;
    .restart local v10       #mTarget:Landroid/util/Pair;,"Landroid/util/Pair<Ljava/lang/String;Landroid/content/ComponentName;>;"
    :cond_a
    const/4 v11, 0x1

    move-object v0, p0

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/AlarmManagerService$AlarmPolicy;->sysHasMoreThan2HeartBeat(Lcom/android/server/AlarmManagerService$Alarm;JJ)Z

    move-result v0

    if-ne v11, v0, :cond_3

    .line 2830
    iget v0, v8, Lcom/android/server/AlarmManagerService$FilterStats;->mAdjust:I

    iput v0, p1, Lcom/android/server/AlarmManagerService$Alarm;->adjustable:I

    move-object v0, p0

    move-object v1, p1

    .line 2831
    invoke-virtual/range {v0 .. v5}, Lcom/android/server/AlarmManagerService$AlarmPolicy;->delayAlarmTime(Lcom/android/server/AlarmManagerService$Alarm;JJ)V

    .line 2832
    invoke-static {}, Lcom/android/server/AlarmManagerService;->access$200()Z

    move-result v0

    if-eqz v0, :cond_3

    const-string v0, "AlarmManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "updateAlarmInfo "

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v11, ". "

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v11, p1, Lcom/android/server/AlarmManagerService$Alarm;->when:J

    #calls: Lcom/android/server/AlarmManagerService;->getTimeString(J)Ljava/lang/String;
    invoke-static {v11, v12}, Lcom/android/server/AlarmManagerService;->access$4400(J)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1
.end method
