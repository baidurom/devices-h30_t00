.class Lcom/android/gallery3d/data/ContactManage$ContactContentObserver;
.super Landroid/database/ContentObserver;
.source "ContactManage.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/gallery3d/data/ContactManage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ContactContentObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/gallery3d/data/ContactManage;


# direct methods
.method public constructor <init>(Lcom/android/gallery3d/data/ContactManage;Landroid/os/Handler;)V
    .locals 0
    .parameter
    .parameter "handler"

    .prologue
    .line 124
    iput-object p1, p0, Lcom/android/gallery3d/data/ContactManage$ContactContentObserver;->this$0:Lcom/android/gallery3d/data/ContactManage;

    .line 125
    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 126
    return-void
.end method


# virtual methods
.method public declared-synchronized onChange(ZLandroid/net/Uri;)V
    .locals 1
    .parameter "selfChange"
    .parameter "uri"

    .prologue
    .line 130
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/gallery3d/data/ContactManage$ContactContentObserver;->this$0:Lcom/android/gallery3d/data/ContactManage;

    invoke-virtual {v0}, Lcom/android/gallery3d/data/ContactManage;->syncContactData()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 131
    monitor-exit p0

    return-void

    .line 130
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
