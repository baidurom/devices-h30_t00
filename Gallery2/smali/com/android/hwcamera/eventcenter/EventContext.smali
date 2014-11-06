.class public Lcom/android/hwcamera/eventcenter/EventContext;
.super Ljava/lang/Object;
.source "EventContext.java"


# static fields
.field private static final LISTENERS_MAP:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/android/hwcamera/eventcenter/EventListener;",
            ">;>;"
        }
    .end annotation
.end field

.field private static final PUBLISHER_MAP:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/hwcamera/eventcenter/EventPublisher;",
            ">;"
        }
    .end annotation
.end field

.field private static eventContext:Lcom/android/hwcamera/eventcenter/EventContext;


# direct methods
.method static constructor <clinit>()V
    .locals 12

    .prologue
    .line 35
    new-instance v9, Ljava/util/HashMap;

    invoke-direct {v9}, Ljava/util/HashMap;-><init>()V

    sput-object v9, Lcom/android/hwcamera/eventcenter/EventContext;->LISTENERS_MAP:Ljava/util/Map;

    .line 36
    new-instance v9, Ljava/util/HashMap;

    invoke-direct {v9}, Ljava/util/HashMap;-><init>()V

    sput-object v9, Lcom/android/hwcamera/eventcenter/EventContext;->PUBLISHER_MAP:Ljava/util/Map;

    .line 39
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 40
    .local v2, faceDetectListeners:Ljava/util/List;,"Ljava/util/List<Lcom/android/hwcamera/eventcenter/EventListener;>;"
    invoke-static {}, Lcom/android/hwcamera/facedetect/event/FaceDetectListener;->getInstance()Lcom/android/hwcamera/eventcenter/EventListener;

    move-result-object v9

    invoke-interface {v2, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 42
    sget-object v9, Lcom/android/hwcamera/eventcenter/EventContext;->LISTENERS_MAP:Ljava/util/Map;

    const-string v10, "face_detect_event_type"

    invoke-interface {v9, v10, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 44
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 45
    .local v3, lcdFlashListeners:Ljava/util/List;,"Ljava/util/List<Lcom/android/hwcamera/eventcenter/EventListener;>;"
    invoke-static {}, Lcom/android/hwcamera/eventcenter/lcdflash/LCDFlashListener;->getInstance()Lcom/android/hwcamera/eventcenter/EventListener;

    move-result-object v9

    invoke-interface {v3, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 47
    sget-object v9, Lcom/android/hwcamera/eventcenter/EventContext;->LISTENERS_MAP:Ljava/util/Map;

    const-string v10, "lcd_flash_event_type"

    invoke-interface {v9, v10, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 49
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 50
    .local v8, updateCameraParametersListeners:Ljava/util/List;,"Ljava/util/List<Lcom/android/hwcamera/eventcenter/EventListener;>;"
    invoke-static {}, Lcom/android/hwcamera/focuspolicy/event/UpdateFocusParametersListener;->getInstance()Lcom/android/hwcamera/eventcenter/EventListener;

    move-result-object v9

    invoke-interface {v8, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 52
    sget-object v9, Lcom/android/hwcamera/eventcenter/EventContext;->LISTENERS_MAP:Ljava/util/Map;

    const-string v10, "update_focus_parameters_type"

    invoke-interface {v9, v10, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 54
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 55
    .local v5, smileCaptureListener:Ljava/util/List;,"Ljava/util/List<Lcom/android/hwcamera/eventcenter/EventListener;>;"
    invoke-static {}, Lcom/android/hwcamera/focuspolicy/event/SmileCaptureListener;->getInstance()Lcom/android/hwcamera/eventcenter/EventListener;

    move-result-object v9

    invoke-interface {v5, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 57
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 58
    .local v7, targetTrackingListeners:Ljava/util/List;,"Ljava/util/List<Lcom/android/hwcamera/eventcenter/EventListener;>;"
    invoke-static {}, Lcom/android/hwcamera/eventcenter/targettraking/TargetTrackingListener;->getInstance()Lcom/android/hwcamera/eventcenter/EventListener;

    move-result-object v9

    invoke-interface {v7, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 60
    sget-object v9, Lcom/android/hwcamera/eventcenter/EventContext;->LISTENERS_MAP:Ljava/util/Map;

    const-string v10, "target_traking_event_type"

    invoke-interface {v9, v10, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 62
    sget-object v9, Lcom/android/hwcamera/eventcenter/EventContext;->LISTENERS_MAP:Ljava/util/Map;

    const-string v10, "smile_capture_type"

    invoke-interface {v9, v10, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 64
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 65
    .local v6, storagePathChangedListener:Ljava/util/List;,"Ljava/util/List<Lcom/android/hwcamera/eventcenter/EventListener;>;"
    invoke-static {}, Lcom/android/hwcamera/storage/StoragePathChangedListener;->getInstance()Lcom/android/hwcamera/eventcenter/EventListener;

    move-result-object v9

    invoke-interface {v6, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 67
    sget-object v9, Lcom/android/hwcamera/eventcenter/EventContext;->LISTENERS_MAP:Ljava/util/Map;

    const-string v10, "storage_changed_event_type"

    invoke-interface {v9, v10, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 69
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 70
    .local v0, burstPromptListener:Ljava/util/List;,"Ljava/util/List<Lcom/android/hwcamera/eventcenter/EventListener;>;"
    invoke-static {}, Lcom/android/hwcamera/eventcenter/burstprompt/BurstPromptListener;->getInstance()Lcom/android/hwcamera/eventcenter/EventListener;

    move-result-object v9

    invoke-interface {v0, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 72
    sget-object v9, Lcom/android/hwcamera/eventcenter/EventContext;->LISTENERS_MAP:Ljava/util/Map;

    const-string v10, "burst_prompt_event_type"

    invoke-interface {v9, v10, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 75
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 76
    .local v4, sceneDetectListeners:Ljava/util/List;,"Ljava/util/List<Lcom/android/hwcamera/eventcenter/EventListener;>;"
    invoke-static {}, Lcom/android/hwcamera/eventcenter/scenedetect/SceneDetectListener;->getInstance()Lcom/android/hwcamera/eventcenter/EventListener;

    move-result-object v9

    invoke-interface {v4, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 77
    sget-object v9, Lcom/android/hwcamera/eventcenter/EventContext;->LISTENERS_MAP:Ljava/util/Map;

    const-string v10, "scene_detect_event_type"

    invoke-interface {v9, v10, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 80
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 81
    .local v1, cameraErrorListeners:Ljava/util/List;,"Ljava/util/List<Lcom/android/hwcamera/eventcenter/EventListener;>;"
    invoke-static {}, Lcom/android/hwcamera/eventcenter/cameraerror/CameraErrorListener;->getInstance()Lcom/android/hwcamera/eventcenter/EventListener;

    move-result-object v9

    invoke-interface {v1, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 82
    sget-object v9, Lcom/android/hwcamera/eventcenter/EventContext;->LISTENERS_MAP:Ljava/util/Map;

    const-string v10, "camera_error_event_type"

    invoke-interface {v9, v10, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 85
    sget-object v9, Lcom/android/hwcamera/eventcenter/EventContext;->PUBLISHER_MAP:Ljava/util/Map;

    const-string v10, "ASYNCMODE"

    invoke-static {}, Lcom/android/hwcamera/eventcenter/AsyncEventPublisher;->getInstance()Lcom/android/hwcamera/eventcenter/EventPublisher;

    move-result-object v11

    invoke-interface {v9, v10, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 86
    sget-object v9, Lcom/android/hwcamera/eventcenter/EventContext;->PUBLISHER_MAP:Ljava/util/Map;

    const-string v10, "SYNCMODE"

    invoke-static {}, Lcom/android/hwcamera/eventcenter/SyncEventPublisher;->getInstance()Lcom/android/hwcamera/eventcenter/EventPublisher;

    move-result-object v11

    invoke-interface {v9, v10, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 88
    const/4 v9, 0x0

    sput-object v9, Lcom/android/hwcamera/eventcenter/EventContext;->eventContext:Lcom/android/hwcamera/eventcenter/EventContext;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 95
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 96
    return-void
.end method

.method public static declared-synchronized getInstance()Lcom/android/hwcamera/eventcenter/EventContext;
    .locals 2

    .prologue
    .line 91
    const-class v1, Lcom/android/hwcamera/eventcenter/EventContext;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/android/hwcamera/eventcenter/EventContext;->eventContext:Lcom/android/hwcamera/eventcenter/EventContext;

    if-nez v0, :cond_0

    new-instance v0, Lcom/android/hwcamera/eventcenter/EventContext;

    invoke-direct {v0}, Lcom/android/hwcamera/eventcenter/EventContext;-><init>()V

    sput-object v0, Lcom/android/hwcamera/eventcenter/EventContext;->eventContext:Lcom/android/hwcamera/eventcenter/EventContext;

    .line 92
    :cond_0
    sget-object v0, Lcom/android/hwcamera/eventcenter/EventContext;->eventContext:Lcom/android/hwcamera/eventcenter/EventContext;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 91
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public getEventListeners(Ljava/lang/String;)Ljava/util/List;
    .locals 1
    .parameter "eventType"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/android/hwcamera/eventcenter/EventListener;",
            ">;"
        }
    .end annotation

    .prologue
    .line 99
    sget-object v0, Lcom/android/hwcamera/eventcenter/EventContext;->LISTENERS_MAP:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    return-object v0
.end method

.method public getEventPublisher(Ljava/lang/String;)Lcom/android/hwcamera/eventcenter/EventPublisher;
    .locals 1
    .parameter "mode"

    .prologue
    .line 107
    sget-object v0, Lcom/android/hwcamera/eventcenter/EventContext;->PUBLISHER_MAP:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/hwcamera/eventcenter/EventPublisher;

    return-object v0
.end method

.method public getEventPublishers()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<",
            "Lcom/android/hwcamera/eventcenter/EventPublisher;",
            ">;"
        }
    .end annotation

    .prologue
    .line 103
    sget-object v0, Lcom/android/hwcamera/eventcenter/EventContext;->PUBLISHER_MAP:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method
