.class Lcom/android/server/am/ThreadAppDelay;
.super Ljava/lang/Thread;
.source "ActivityManagerService.java"


# instance fields
.field private m_ams:Lcom/android/server/am/ActivityManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/am/ActivityManagerService;)V
    .locals 0
    .parameter "ams"

    .prologue
    .line 17183
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 17184
    iput-object p1, p0, Lcom/android/server/am/ThreadAppDelay;->m_ams:Lcom/android/server/am/ActivityManagerService;

    .line 17185
    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .prologue
    .line 17190
    const-wide/16 v4, 0x7d0

    :try_start_0
    invoke-static {v4, v5}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1

    .line 17194
    :goto_0
    iget-object v5, p0, Lcom/android/server/am/ThreadAppDelay;->m_ams:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v5

    .line 17195
    :try_start_1
    iget-object v4, p0, Lcom/android/server/am/ThreadAppDelay;->m_ams:Lcom/android/server/am/ActivityManagerService;

    iget v4, v4, Lcom/android/server/am/ActivityManagerService;->mFactoryTest:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 v6, 0x1

    if-eq v4, v6, :cond_1

    .line 17197
    :try_start_2
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v4

    const/16 v6, 0x400

    invoke-interface {v4, v6}, Landroid/content/pm/IPackageManager;->getPersistentApplications(I)Ljava/util/List;

    move-result-object v1

    .line 17199
    .local v1, apps:Ljava/util/List;
    if-eqz v1, :cond_1

    .line 17200
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    .line 17202
    .local v0, N:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_1
    if-ge v2, v0, :cond_1

    .line 17203
    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/ApplicationInfo;

    .line 17205
    .local v3, info:Landroid/content/pm/ApplicationInfo;
    if-eqz v3, :cond_0

    iget-object v4, v3, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    const-string v6, "android"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 17207
    iget-object v4, p0, Lcom/android/server/am/ThreadAppDelay;->m_ams:Lcom/android/server/am/ActivityManagerService;

    const/4 v6, 0x0

    invoke-virtual {v4, v3, v6}, Lcom/android/server/am/ActivityManagerService;->addAppLocked(Landroid/content/pm/ApplicationInfo;Z)Lcom/android/server/am/ProcessRecord;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    .line 17202
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 17211
    .end local v0           #N:I
    .end local v1           #apps:Ljava/util/List;
    .end local v2           #i:I
    .end local v3           #info:Landroid/content/pm/ApplicationInfo;
    :catch_0
    move-exception v4

    .line 17215
    :cond_1
    :try_start_3
    monitor-exit v5

    .line 17216
    return-void

    .line 17215
    :catchall_0
    move-exception v4

    monitor-exit v5
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v4

    .line 17191
    :catch_1
    move-exception v4

    goto :goto_0
.end method
