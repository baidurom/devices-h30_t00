.class public Lcom/huawei/android/multiscreen/mirror/sdk/api/MRComponentManager;
.super Ljava/lang/Object;
.source "MRComponentManager.java"


# static fields
.field private static synthetic $SWITCH_TABLE$com$huawei$android$multiscreen$mirror$sdk$api$EMirrorLogLevel:[I = null

.field public static final ID_DISCOVERY:Ljava/lang/String; = "ICOS.MIRROR.DISCOVERY"

.field public static final ID_SINK:Ljava/lang/String; = "ICOS.MIRROR.SINK"

.field public static final ID_SOURCE:Ljava/lang/String; = "ICOS.MIRROR.SOURCE"

.field private static final TAG:Ljava/lang/String; = "MIRROR_SDK"

.field private static mInstance:Lcom/huawei/android/multiscreen/mirror/sdk/api/MRComponentManager;


# instance fields
.field private discovery:Lcom/huawei/android/multiscreen/mirror/sdk/api/MRDiscovery;

.field private mContext:Landroid/content/Context;

.field private mNativeObject:J

.field private sink:Lcom/huawei/android/multiscreen/mirror/sdk/api/MRSink;

.field private source:Lcom/huawei/android/multiscreen/mirror/sdk/api/MRSource;


# direct methods
.method static synthetic $SWITCH_TABLE$com$huawei$android$multiscreen$mirror$sdk$api$EMirrorLogLevel()[I
    .locals 3

    .prologue
    .line 12
    sget-object v0, Lcom/huawei/android/multiscreen/mirror/sdk/api/MRComponentManager;->$SWITCH_TABLE$com$huawei$android$multiscreen$mirror$sdk$api$EMirrorLogLevel:[I

    if-eqz v0, :cond_0

    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Lcom/huawei/android/multiscreen/mirror/sdk/api/EMirrorLogLevel;->values()[Lcom/huawei/android/multiscreen/mirror/sdk/api/EMirrorLogLevel;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_0
    sget-object v1, Lcom/huawei/android/multiscreen/mirror/sdk/api/EMirrorLogLevel;->DEBUG:Lcom/huawei/android/multiscreen/mirror/sdk/api/EMirrorLogLevel;

    invoke-virtual {v1}, Lcom/huawei/android/multiscreen/mirror/sdk/api/EMirrorLogLevel;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_3

    :goto_1
    :try_start_1
    sget-object v1, Lcom/huawei/android/multiscreen/mirror/sdk/api/EMirrorLogLevel;->ERROR:Lcom/huawei/android/multiscreen/mirror/sdk/api/EMirrorLogLevel;

    invoke-virtual {v1}, Lcom/huawei/android/multiscreen/mirror/sdk/api/EMirrorLogLevel;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_2

    :goto_2
    :try_start_2
    sget-object v1, Lcom/huawei/android/multiscreen/mirror/sdk/api/EMirrorLogLevel;->INFO:Lcom/huawei/android/multiscreen/mirror/sdk/api/EMirrorLogLevel;

    invoke-virtual {v1}, Lcom/huawei/android/multiscreen/mirror/sdk/api/EMirrorLogLevel;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_1

    :goto_3
    :try_start_3
    sget-object v1, Lcom/huawei/android/multiscreen/mirror/sdk/api/EMirrorLogLevel;->WARN:Lcom/huawei/android/multiscreen/mirror/sdk/api/EMirrorLogLevel;

    invoke-virtual {v1}, Lcom/huawei/android/multiscreen/mirror/sdk/api/EMirrorLogLevel;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_0

    :goto_4
    sput-object v0, Lcom/huawei/android/multiscreen/mirror/sdk/api/MRComponentManager;->$SWITCH_TABLE$com$huawei$android$multiscreen$mirror$sdk$api$EMirrorLogLevel:[I

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_4

    :catch_1
    move-exception v1

    goto :goto_3

    :catch_2
    move-exception v1

    goto :goto_2

    :catch_3
    move-exception v1

    goto :goto_1
.end method

.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 219
    const-string v0, "MRSDK"

    const-string v1, " loading MRSDK!"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 224
    const-string v0, "threadutil"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 225
    const-string v0, "ixml"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 226
    const-string v0, "upnp"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 227
    const-string v0, "vppdlna"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 228
    const-string v0, "mirror_media_platform"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 229
    const-string v0, "mirror_media"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 230
    const-string v0, "MRSDK"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 232
    const-string v0, "MRSDK"

    const-string v1, " end loading MRSDK!"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 12
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 4
    .parameter "contex"

    .prologue
    const/4 v2, 0x0

    .line 37
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 29
    iput-object v2, p0, Lcom/huawei/android/multiscreen/mirror/sdk/api/MRComponentManager;->source:Lcom/huawei/android/multiscreen/mirror/sdk/api/MRSource;

    .line 30
    iput-object v2, p0, Lcom/huawei/android/multiscreen/mirror/sdk/api/MRComponentManager;->sink:Lcom/huawei/android/multiscreen/mirror/sdk/api/MRSink;

    .line 31
    iput-object v2, p0, Lcom/huawei/android/multiscreen/mirror/sdk/api/MRComponentManager;->discovery:Lcom/huawei/android/multiscreen/mirror/sdk/api/MRDiscovery;

    .line 38
    const-string v2, "MIRROR_SDK"

    const-string v3, "MRComponentManager::MRComponentManager()"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 39
    iput-object p1, p0, Lcom/huawei/android/multiscreen/mirror/sdk/api/MRComponentManager;->mContext:Landroid/content/Context;

    .line 40
    sput-object p0, Lcom/huawei/android/multiscreen/mirror/sdk/api/MRComponentManager;->mInstance:Lcom/huawei/android/multiscreen/mirror/sdk/api/MRComponentManager;

    .line 41
    new-instance v1, Lcom/huawei/android/multiscreen/sdk/XMLUploader;

    iget-object v2, p0, Lcom/huawei/android/multiscreen/mirror/sdk/api/MRComponentManager;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/huawei/android/multiscreen/sdk/XMLUploader;-><init>(Landroid/content/Context;)V

    .line 42
    .local v1, uploader:Lcom/huawei/android/multiscreen/sdk/XMLUploader;
    invoke-virtual {v1}, Lcom/huawei/android/multiscreen/sdk/XMLUploader;->uploadXML()V

    .line 43
    iget-object v2, p0, Lcom/huawei/android/multiscreen/mirror/sdk/api/MRComponentManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v2

    .line 44
    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    .line 45
    .local v0, path:Ljava/lang/String;
    invoke-virtual {p0, v0}, Lcom/huawei/android/multiscreen/mirror/sdk/api/MRComponentManager;->nativeSetXMLPath(Ljava/lang/String;)I

    move-result v2

    if-eqz v2, :cond_0

    .line 46
    const-string v2, "MIRROR_SDK"

    const-string v3, "MRComponentManager set xml file path fail"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 47
    :cond_0
    invoke-virtual {p0}, Lcom/huawei/android/multiscreen/mirror/sdk/api/MRComponentManager;->nativeNew()V

    .line 48
    return-void
.end method

.method public static getInstance()Lcom/huawei/android/multiscreen/mirror/sdk/api/MRComponentManager;
    .locals 1

    .prologue
    .line 56
    sget-object v0, Lcom/huawei/android/multiscreen/mirror/sdk/api/MRComponentManager;->mInstance:Lcom/huawei/android/multiscreen/mirror/sdk/api/MRComponentManager;

    return-object v0
.end method

.method private getMRComponent(Ljava/lang/String;)Lcom/huawei/android/multiscreen/mirror/sdk/api/MRComponent;
    .locals 6
    .parameter "id"

    .prologue
    const/4 v2, 0x0

    .line 166
    const-string v3, "MIRROR_SDK"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "GetMRComponent by id: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 168
    invoke-virtual {p0, p1}, Lcom/huawei/android/multiscreen/mirror/sdk/api/MRComponentManager;->nativeGetComponent(Ljava/lang/String;)J

    move-result-wide v0

    .line 169
    .local v0, nativePointer:J
    const-string v3, "MRComponentManagerJNI"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "nativePointer is "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 170
    const-wide/16 v3, 0x0

    cmp-long v3, v3, v0

    if-nez v3, :cond_1

    .line 188
    :cond_0
    :goto_0
    return-object v2

    .line 172
    :cond_1
    const-string v3, "ICOS.MIRROR.DISCOVERY"

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 173
    iget-object v2, p0, Lcom/huawei/android/multiscreen/mirror/sdk/api/MRComponentManager;->discovery:Lcom/huawei/android/multiscreen/mirror/sdk/api/MRDiscovery;

    if-nez v2, :cond_2

    .line 174
    new-instance v2, Lcom/huawei/android/multiscreen/mirror/sdk/api/MRDiscovery;

    invoke-direct {v2}, Lcom/huawei/android/multiscreen/mirror/sdk/api/MRDiscovery;-><init>()V

    iput-object v2, p0, Lcom/huawei/android/multiscreen/mirror/sdk/api/MRComponentManager;->discovery:Lcom/huawei/android/multiscreen/mirror/sdk/api/MRDiscovery;

    .line 175
    :cond_2
    iget-object v2, p0, Lcom/huawei/android/multiscreen/mirror/sdk/api/MRComponentManager;->discovery:Lcom/huawei/android/multiscreen/mirror/sdk/api/MRDiscovery;

    invoke-virtual {v2, v0, v1}, Lcom/huawei/android/multiscreen/mirror/sdk/api/MRDiscovery;->setmNativeObject(J)V

    .line 176
    iget-object v2, p0, Lcom/huawei/android/multiscreen/mirror/sdk/api/MRComponentManager;->discovery:Lcom/huawei/android/multiscreen/mirror/sdk/api/MRDiscovery;

    goto :goto_0

    .line 177
    :cond_3
    const-string v3, "ICOS.MIRROR.SOURCE"

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 178
    iget-object v2, p0, Lcom/huawei/android/multiscreen/mirror/sdk/api/MRComponentManager;->source:Lcom/huawei/android/multiscreen/mirror/sdk/api/MRSource;

    if-nez v2, :cond_4

    .line 179
    new-instance v2, Lcom/huawei/android/multiscreen/mirror/sdk/api/MRSource;

    invoke-direct {v2}, Lcom/huawei/android/multiscreen/mirror/sdk/api/MRSource;-><init>()V

    iput-object v2, p0, Lcom/huawei/android/multiscreen/mirror/sdk/api/MRComponentManager;->source:Lcom/huawei/android/multiscreen/mirror/sdk/api/MRSource;

    .line 180
    :cond_4
    iget-object v2, p0, Lcom/huawei/android/multiscreen/mirror/sdk/api/MRComponentManager;->source:Lcom/huawei/android/multiscreen/mirror/sdk/api/MRSource;

    invoke-virtual {v2, v0, v1}, Lcom/huawei/android/multiscreen/mirror/sdk/api/MRSource;->setmNativeObject(J)V

    .line 181
    iget-object v2, p0, Lcom/huawei/android/multiscreen/mirror/sdk/api/MRComponentManager;->source:Lcom/huawei/android/multiscreen/mirror/sdk/api/MRSource;

    goto :goto_0

    .line 182
    :cond_5
    const-string v3, "ICOS.MIRROR.SINK"

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 183
    iget-object v2, p0, Lcom/huawei/android/multiscreen/mirror/sdk/api/MRComponentManager;->sink:Lcom/huawei/android/multiscreen/mirror/sdk/api/MRSink;

    if-nez v2, :cond_6

    .line 184
    new-instance v2, Lcom/huawei/android/multiscreen/mirror/sdk/api/MRSink;

    invoke-direct {v2}, Lcom/huawei/android/multiscreen/mirror/sdk/api/MRSink;-><init>()V

    iput-object v2, p0, Lcom/huawei/android/multiscreen/mirror/sdk/api/MRComponentManager;->sink:Lcom/huawei/android/multiscreen/mirror/sdk/api/MRSink;

    .line 185
    :cond_6
    iget-object v2, p0, Lcom/huawei/android/multiscreen/mirror/sdk/api/MRComponentManager;->sink:Lcom/huawei/android/multiscreen/mirror/sdk/api/MRSink;

    invoke-virtual {v2, v0, v1}, Lcom/huawei/android/multiscreen/mirror/sdk/api/MRSink;->setmNativeObject(J)V

    .line 186
    iget-object v2, p0, Lcom/huawei/android/multiscreen/mirror/sdk/api/MRComponentManager;->sink:Lcom/huawei/android/multiscreen/mirror/sdk/api/MRSink;

    goto :goto_0
.end method


# virtual methods
.method public buildComponent(Ljava/lang/String;Z)I
    .locals 1
    .parameter "componentID"
    .parameter "bAutoStart"

    .prologue
    .line 73
    invoke-virtual {p0, p1, p2}, Lcom/huawei/android/multiscreen/mirror/sdk/api/MRComponentManager;->nativeBuildComponent(Ljava/lang/String;Z)I

    move-result v0

    return v0
.end method

.method public clearComponents()I
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 83
    iget-object v0, p0, Lcom/huawei/android/multiscreen/mirror/sdk/api/MRComponentManager;->source:Lcom/huawei/android/multiscreen/mirror/sdk/api/MRSource;

    if-eqz v0, :cond_0

    .line 84
    iput-object v1, p0, Lcom/huawei/android/multiscreen/mirror/sdk/api/MRComponentManager;->source:Lcom/huawei/android/multiscreen/mirror/sdk/api/MRSource;

    .line 85
    :cond_0
    iget-object v0, p0, Lcom/huawei/android/multiscreen/mirror/sdk/api/MRComponentManager;->sink:Lcom/huawei/android/multiscreen/mirror/sdk/api/MRSink;

    if-eqz v0, :cond_1

    .line 86
    iput-object v1, p0, Lcom/huawei/android/multiscreen/mirror/sdk/api/MRComponentManager;->sink:Lcom/huawei/android/multiscreen/mirror/sdk/api/MRSink;

    .line 87
    :cond_1
    iget-object v0, p0, Lcom/huawei/android/multiscreen/mirror/sdk/api/MRComponentManager;->discovery:Lcom/huawei/android/multiscreen/mirror/sdk/api/MRDiscovery;

    if-eqz v0, :cond_2

    .line 88
    iput-object v1, p0, Lcom/huawei/android/multiscreen/mirror/sdk/api/MRComponentManager;->discovery:Lcom/huawei/android/multiscreen/mirror/sdk/api/MRDiscovery;

    .line 89
    :cond_2
    invoke-virtual {p0}, Lcom/huawei/android/multiscreen/mirror/sdk/api/MRComponentManager;->nativeClearComponents()I

    move-result v0

    return v0
.end method

.method public getLogLevel()Lcom/huawei/android/multiscreen/mirror/sdk/api/EMirrorLogLevel;
    .locals 2

    .prologue
    .line 147
    invoke-virtual {p0}, Lcom/huawei/android/multiscreen/mirror/sdk/api/MRComponentManager;->nativeGetLogLevel()I

    move-result v1

    .line 148
    .local v1, logLevel:I
    sget-object v0, Lcom/huawei/android/multiscreen/mirror/sdk/api/EMirrorLogLevel;->DEBUG:Lcom/huawei/android/multiscreen/mirror/sdk/api/EMirrorLogLevel;

    .line 149
    .local v0, level:Lcom/huawei/android/multiscreen/mirror/sdk/api/EMirrorLogLevel;
    packed-switch v1, :pswitch_data_0

    .line 162
    :goto_0
    return-object v0

    .line 151
    :pswitch_0
    sget-object v0, Lcom/huawei/android/multiscreen/mirror/sdk/api/EMirrorLogLevel;->INFO:Lcom/huawei/android/multiscreen/mirror/sdk/api/EMirrorLogLevel;

    .line 152
    goto :goto_0

    .line 154
    :pswitch_1
    sget-object v0, Lcom/huawei/android/multiscreen/mirror/sdk/api/EMirrorLogLevel;->WARN:Lcom/huawei/android/multiscreen/mirror/sdk/api/EMirrorLogLevel;

    .line 155
    goto :goto_0

    .line 157
    :pswitch_2
    sget-object v0, Lcom/huawei/android/multiscreen/mirror/sdk/api/EMirrorLogLevel;->ERROR:Lcom/huawei/android/multiscreen/mirror/sdk/api/EMirrorLogLevel;

    .line 158
    goto :goto_0

    .line 149
    nop

    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public getMRDiscovery()Lcom/huawei/android/multiscreen/mirror/sdk/api/MRDiscovery;
    .locals 1

    .prologue
    .line 107
    const-string v0, "ICOS.MIRROR.DISCOVERY"

    invoke-direct {p0, v0}, Lcom/huawei/android/multiscreen/mirror/sdk/api/MRComponentManager;->getMRComponent(Ljava/lang/String;)Lcom/huawei/android/multiscreen/mirror/sdk/api/MRComponent;

    move-result-object v0

    check-cast v0, Lcom/huawei/android/multiscreen/mirror/sdk/api/MRDiscovery;

    return-object v0
.end method

.method public getMRSink()Lcom/huawei/android/multiscreen/mirror/sdk/api/MRSink;
    .locals 1

    .prologue
    .line 98
    const-string v0, "ICOS.MIRROR.SINK"

    invoke-direct {p0, v0}, Lcom/huawei/android/multiscreen/mirror/sdk/api/MRComponentManager;->getMRComponent(Ljava/lang/String;)Lcom/huawei/android/multiscreen/mirror/sdk/api/MRComponent;

    move-result-object v0

    check-cast v0, Lcom/huawei/android/multiscreen/mirror/sdk/api/MRSink;

    return-object v0
.end method

.method public getMRSource()Lcom/huawei/android/multiscreen/mirror/sdk/api/MRSource;
    .locals 1

    .prologue
    .line 116
    const-string v0, "ICOS.MIRROR.SOURCE"

    invoke-direct {p0, v0}, Lcom/huawei/android/multiscreen/mirror/sdk/api/MRComponentManager;->getMRComponent(Ljava/lang/String;)Lcom/huawei/android/multiscreen/mirror/sdk/api/MRComponent;

    move-result-object v0

    check-cast v0, Lcom/huawei/android/multiscreen/mirror/sdk/api/MRSource;

    return-object v0
.end method

.method public getmNativeObject()J
    .locals 2

    .prologue
    .line 192
    iget-wide v0, p0, Lcom/huawei/android/multiscreen/mirror/sdk/api/MRComponentManager;->mNativeObject:J

    return-wide v0
.end method

.method protected native nativeBuildComponent(Ljava/lang/String;Z)I
.end method

.method protected native nativeClearComponents()I
.end method

.method protected native nativeGetComponent(Ljava/lang/String;)J
.end method

.method protected native nativeGetLogLevel()I
.end method

.method protected native nativeNew()V
.end method

.method protected native nativeSetLogLevel(I)V
.end method

.method protected native nativeSetXMLPath(Ljava/lang/String;)I
.end method

.method protected native nativeStart()I
.end method

.method protected native nativeStop()I
.end method

.method public setLogLevel(Lcom/huawei/android/multiscreen/mirror/sdk/api/EMirrorLogLevel;)V
    .locals 3
    .parameter "level"

    .prologue
    .line 125
    const/4 v0, 0x3

    .line 126
    .local v0, logLevel:I
    invoke-static {}, Lcom/huawei/android/multiscreen/mirror/sdk/api/MRComponentManager;->$SWITCH_TABLE$com$huawei$android$multiscreen$mirror$sdk$api$EMirrorLogLevel()[I

    move-result-object v1

    invoke-virtual {p1}, Lcom/huawei/android/multiscreen/mirror/sdk/api/EMirrorLogLevel;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 139
    :goto_0
    :pswitch_0
    invoke-virtual {p0, v0}, Lcom/huawei/android/multiscreen/mirror/sdk/api/MRComponentManager;->nativeSetLogLevel(I)V

    .line 140
    return-void

    .line 130
    :pswitch_1
    const/4 v0, 0x4

    .line 131
    goto :goto_0

    .line 133
    :pswitch_2
    const/4 v0, 0x5

    .line 134
    goto :goto_0

    .line 136
    :pswitch_3
    const/4 v0, 0x6

    goto :goto_0

    .line 126
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public setmNativeObject(J)V
    .locals 0
    .parameter "mNativeObject"

    .prologue
    .line 196
    iput-wide p1, p0, Lcom/huawei/android/multiscreen/mirror/sdk/api/MRComponentManager;->mNativeObject:J

    .line 197
    return-void
.end method
