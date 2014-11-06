.class public Lcom/android/gallery3d/app/Config$DmsSetPage;
.super Lcom/android/gallery3d/app/Config$AlbumSetPage;
.source "Config.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/gallery3d/app/Config;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DmsSetPage"
.end annotation


# static fields
.field private static sInstance:Lcom/android/gallery3d/app/Config$DmsSetPage;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 112
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/gallery3d/app/Config$AlbumSetPage;-><init>(Landroid/content/Context;Lcom/android/gallery3d/app/Config$1;)V

    .line 113
    return-void
.end method

.method public static declared-synchronized get(Landroid/content/Context;)Lcom/android/gallery3d/app/Config$DmsSetPage;
    .locals 2
    .parameter "context"

    .prologue
    .line 105
    const-class v1, Lcom/android/gallery3d/app/Config$DmsSetPage;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/android/gallery3d/app/Config$DmsSetPage;->sInstance:Lcom/android/gallery3d/app/Config$DmsSetPage;

    if-nez v0, :cond_0

    .line 106
    new-instance v0, Lcom/android/gallery3d/app/Config$DmsSetPage;

    invoke-direct {v0, p0}, Lcom/android/gallery3d/app/Config$DmsSetPage;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/android/gallery3d/app/Config$DmsSetPage;->sInstance:Lcom/android/gallery3d/app/Config$DmsSetPage;

    .line 108
    :cond_0
    sget-object v0, Lcom/android/gallery3d/app/Config$DmsSetPage;->sInstance:Lcom/android/gallery3d/app/Config$DmsSetPage;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 105
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method
