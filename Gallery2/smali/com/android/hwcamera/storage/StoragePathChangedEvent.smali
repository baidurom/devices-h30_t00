.class public Lcom/android/hwcamera/storage/StoragePathChangedEvent;
.super Ljava/lang/Object;
.source "StoragePathChangedEvent.java"

# interfaces
.implements Lcom/android/hwcamera/eventcenter/Event;


# instance fields
.field private action:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .parameter "path"

    .prologue
    .line 9
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 7
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/hwcamera/storage/StoragePathChangedEvent;->action:Ljava/lang/String;

    .line 10
    iput-object p1, p0, Lcom/android/hwcamera/storage/StoragePathChangedEvent;->action:Ljava/lang/String;

    .line 11
    return-void
.end method


# virtual methods
.method public getAction()Ljava/lang/String;
    .locals 1

    .prologue
    .line 24
    iget-object v0, p0, Lcom/android/hwcamera/storage/StoragePathChangedEvent;->action:Ljava/lang/String;

    return-object v0
.end method

.method public getMode()Ljava/lang/String;
    .locals 1

    .prologue
    .line 20
    const-string v0, "ASYNCMODE"

    return-object v0
.end method

.method public getType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 15
    const-string v0, "storage_changed_event_type"

    return-object v0
.end method
