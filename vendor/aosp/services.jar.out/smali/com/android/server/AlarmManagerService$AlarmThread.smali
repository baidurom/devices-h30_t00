.class Lcom/android/server/AlarmManagerService$AlarmThread;
.super Ljava/lang/Thread;
.source "AlarmManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/AlarmManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AlarmThread"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/AlarmManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/AlarmManagerService;)V
    .locals 1
    .parameter

    .prologue
    .line 1643
    iput-object p1, p0, Lcom/android/server/AlarmManagerService$AlarmThread;->this$0:Lcom/android/server/AlarmManagerService;

    .line 1644
    const-string v0, "AlarmManager"

    invoke-direct {p0, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    .line 1645
    return-void
.end method


# virtual methods
.method public run()V
    .locals 27

    .prologue
    .line 1653
    :goto_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/AlarmManagerService$AlarmThread;->this$0:Lcom/android/server/AlarmManagerService;

    #getter for: Lcom/android/server/AlarmManagerService;->mLock:Ljava/lang/Object;
    invoke-static {v2}, Lcom/android/server/AlarmManagerService;->access$1500(Lcom/android/server/AlarmManagerService;)Ljava/lang/Object;

    move-result-object v4

    monitor-enter v4

    .line 1654
    :try_start_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/AlarmManagerService$AlarmThread;->this$0:Lcom/android/server/AlarmManagerService;

    #getter for: Lcom/android/server/AlarmManagerService;->mIPOShutdown:Z
    invoke-static {v2}, Lcom/android/server/AlarmManagerService;->access$500(Lcom/android/server/AlarmManagerService;)Z

    move-result v2

    if-eqz v2, :cond_0

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/AlarmManagerService$AlarmThread;->this$0:Lcom/android/server/AlarmManagerService;

    #getter for: Lcom/android/server/AlarmManagerService;->mDescriptor:I
    invoke-static {v2}, Lcom/android/server/AlarmManagerService;->access$600(Lcom/android/server/AlarmManagerService;)I

    move-result v2

    const/4 v7, -0x1

    if-eq v2, v7, :cond_0

    .line 1655
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/AlarmManagerService$AlarmThread;->this$0:Lcom/android/server/AlarmManagerService;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/server/AlarmManagerService$AlarmThread;->this$0:Lcom/android/server/AlarmManagerService;

    #getter for: Lcom/android/server/AlarmManagerService;->mDescriptor:I
    invoke-static {v7}, Lcom/android/server/AlarmManagerService;->access$600(Lcom/android/server/AlarmManagerService;)I

    move-result v7

    #calls: Lcom/android/server/AlarmManagerService;->close(I)V
    invoke-static {v2, v7}, Lcom/android/server/AlarmManagerService;->access$1600(Lcom/android/server/AlarmManagerService;I)V

    .line 1656
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/AlarmManagerService$AlarmThread;->this$0:Lcom/android/server/AlarmManagerService;

    const/4 v7, -0x1

    #setter for: Lcom/android/server/AlarmManagerService;->mDescriptor:I
    invoke-static {v2, v7}, Lcom/android/server/AlarmManagerService;->access$602(Lcom/android/server/AlarmManagerService;I)I

    .line 1657
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/AlarmManagerService$AlarmThread;->this$0:Lcom/android/server/AlarmManagerService;

    #getter for: Lcom/android/server/AlarmManagerService;->mRtcWakeupAlarms:Ljava/util/ArrayList;
    invoke-static {v2}, Lcom/android/server/AlarmManagerService;->access$1700(Lcom/android/server/AlarmManagerService;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 1658
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/AlarmManagerService$AlarmThread;->this$0:Lcom/android/server/AlarmManagerService;

    #getter for: Lcom/android/server/AlarmManagerService;->mRtcAlarms:Ljava/util/ArrayList;
    invoke-static {v2}, Lcom/android/server/AlarmManagerService;->access$1800(Lcom/android/server/AlarmManagerService;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 1659
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/AlarmManagerService$AlarmThread;->this$0:Lcom/android/server/AlarmManagerService;

    #getter for: Lcom/android/server/AlarmManagerService;->mElapsedRealtimeWakeupAlarms:Ljava/util/ArrayList;
    invoke-static {v2}, Lcom/android/server/AlarmManagerService;->access$1900(Lcom/android/server/AlarmManagerService;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 1660
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/AlarmManagerService$AlarmThread;->this$0:Lcom/android/server/AlarmManagerService;

    #getter for: Lcom/android/server/AlarmManagerService;->mElapsedRealtimeAlarms:Ljava/util/ArrayList;
    invoke-static {v2}, Lcom/android/server/AlarmManagerService;->access$2000(Lcom/android/server/AlarmManagerService;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 1662
    :cond_0
    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 1663
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/AlarmManagerService$AlarmThread;->this$0:Lcom/android/server/AlarmManagerService;

    #getter for: Lcom/android/server/AlarmManagerService;->mWaitThreadlock:Ljava/lang/Object;
    invoke-static {v2}, Lcom/android/server/AlarmManagerService;->access$1200(Lcom/android/server/AlarmManagerService;)Ljava/lang/Object;

    move-result-object v4

    monitor-enter v4

    .line 1665
    :try_start_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/AlarmManagerService$AlarmThread;->this$0:Lcom/android/server/AlarmManagerService;

    #getter for: Lcom/android/server/AlarmManagerService;->mIPOShutdown:Z
    invoke-static {v2}, Lcom/android/server/AlarmManagerService;->access$500(Lcom/android/server/AlarmManagerService;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1666
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/AlarmManagerService$AlarmThread;->this$0:Lcom/android/server/AlarmManagerService;

    #getter for: Lcom/android/server/AlarmManagerService;->mWaitThreadlock:Ljava/lang/Object;
    invoke-static {v2}, Lcom/android/server/AlarmManagerService;->access$1200(Lcom/android/server/AlarmManagerService;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_2

    .line 1670
    :cond_1
    :goto_1
    :try_start_2
    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 1674
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/AlarmManagerService$AlarmThread;->this$0:Lcom/android/server/AlarmManagerService;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/AlarmManagerService$AlarmThread;->this$0:Lcom/android/server/AlarmManagerService;

    #getter for: Lcom/android/server/AlarmManagerService;->mDescriptor:I
    invoke-static {v4}, Lcom/android/server/AlarmManagerService;->access$600(Lcom/android/server/AlarmManagerService;)I

    move-result v4

    #calls: Lcom/android/server/AlarmManagerService;->waitForAlarm(I)I
    invoke-static {v2, v4}, Lcom/android/server/AlarmManagerService;->access$2100(Lcom/android/server/AlarmManagerService;I)I

    move-result v24

    .line 1676
    .local v24, result:I
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 1678
    .local v3, triggerList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/server/AlarmManagerService$Alarm;>;"
    const/high16 v2, 0x1

    and-int v2, v2, v24

    if-eqz v2, :cond_2

    .line 1679
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/AlarmManagerService$AlarmThread;->this$0:Lcom/android/server/AlarmManagerService;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/AlarmManagerService$AlarmThread;->this$0:Lcom/android/server/AlarmManagerService;

    #getter for: Lcom/android/server/AlarmManagerService;->mTimeTickSender:Landroid/app/PendingIntent;
    invoke-static {v4}, Lcom/android/server/AlarmManagerService;->access$2200(Lcom/android/server/AlarmManagerService;)Landroid/app/PendingIntent;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/android/server/AlarmManagerService;->remove(Landroid/app/PendingIntent;)V

    .line 1680
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/AlarmManagerService$AlarmThread;->this$0:Lcom/android/server/AlarmManagerService;

    #getter for: Lcom/android/server/AlarmManagerService;->mClockReceiver:Lcom/android/server/AlarmManagerService$ClockReceiver;
    invoke-static {v2}, Lcom/android/server/AlarmManagerService;->access$1000(Lcom/android/server/AlarmManagerService;)Lcom/android/server/AlarmManagerService$ClockReceiver;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/AlarmManagerService$ClockReceiver;->scheduleTimeTickEvent()V

    .line 1681
    new-instance v18, Landroid/content/Intent;

    const-string v2, "android.intent.action.TIME_SET"

    move-object/from16 v0, v18

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1682
    .local v18, intent:Landroid/content/Intent;
    const/high16 v2, 0x2800

    move-object/from16 v0, v18

    invoke-virtual {v0, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1684
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/AlarmManagerService$AlarmThread;->this$0:Lcom/android/server/AlarmManagerService;

    #getter for: Lcom/android/server/AlarmManagerService;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/android/server/AlarmManagerService;->access$900(Lcom/android/server/AlarmManagerService;)Landroid/content/Context;

    move-result-object v2

    sget-object v4, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    move-object/from16 v0, v18

    invoke-virtual {v2, v0, v4}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 1687
    .end local v18           #intent:Landroid/content/Intent;
    :cond_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/AlarmManagerService$AlarmThread;->this$0:Lcom/android/server/AlarmManagerService;

    #getter for: Lcom/android/server/AlarmManagerService;->mLock:Ljava/lang/Object;
    invoke-static {v2}, Lcom/android/server/AlarmManagerService;->access$1500(Lcom/android/server/AlarmManagerService;)Ljava/lang/Object;

    move-result-object v26

    monitor-enter v26

    .line 1688
    :try_start_3
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v20

    .line 1689
    .local v20, nowRTC:J
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v5

    .line 1690
    .local v5, nowELAPSED:J
    const-string v2, "AlarmManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Checking for alarms... rtc="

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-wide/from16 v0, v20

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v7, ", elapsed="

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1694
    and-int/lit8 v2, v24, 0x1

    if-eqz v2, :cond_3

    .line 1695
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/AlarmManagerService$AlarmThread;->this$0:Lcom/android/server/AlarmManagerService;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/AlarmManagerService$AlarmThread;->this$0:Lcom/android/server/AlarmManagerService;

    #getter for: Lcom/android/server/AlarmManagerService;->mRtcWakeupAlarms:Ljava/util/ArrayList;
    invoke-static {v4}, Lcom/android/server/AlarmManagerService;->access$1700(Lcom/android/server/AlarmManagerService;)Ljava/util/ArrayList;

    move-result-object v4

    move-wide/from16 v0, v20

    #calls: Lcom/android/server/AlarmManagerService;->triggerAlarmsLocked(Ljava/util/ArrayList;Ljava/util/ArrayList;J)V
    invoke-static {v2, v4, v3, v0, v1}, Lcom/android/server/AlarmManagerService;->access$2300(Lcom/android/server/AlarmManagerService;Ljava/util/ArrayList;Ljava/util/ArrayList;J)V

    .line 1697
    :cond_3
    and-int/lit8 v2, v24, 0x2

    if-eqz v2, :cond_4

    .line 1698
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/AlarmManagerService$AlarmThread;->this$0:Lcom/android/server/AlarmManagerService;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/AlarmManagerService$AlarmThread;->this$0:Lcom/android/server/AlarmManagerService;

    #getter for: Lcom/android/server/AlarmManagerService;->mRtcAlarms:Ljava/util/ArrayList;
    invoke-static {v4}, Lcom/android/server/AlarmManagerService;->access$1800(Lcom/android/server/AlarmManagerService;)Ljava/util/ArrayList;

    move-result-object v4

    move-wide/from16 v0, v20

    #calls: Lcom/android/server/AlarmManagerService;->triggerAlarmsLocked(Ljava/util/ArrayList;Ljava/util/ArrayList;J)V
    invoke-static {v2, v4, v3, v0, v1}, Lcom/android/server/AlarmManagerService;->access$2300(Lcom/android/server/AlarmManagerService;Ljava/util/ArrayList;Ljava/util/ArrayList;J)V

    .line 1700
    :cond_4
    and-int/lit8 v2, v24, 0x4

    if-eqz v2, :cond_5

    .line 1701
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/AlarmManagerService$AlarmThread;->this$0:Lcom/android/server/AlarmManagerService;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/AlarmManagerService$AlarmThread;->this$0:Lcom/android/server/AlarmManagerService;

    #getter for: Lcom/android/server/AlarmManagerService;->mElapsedRealtimeWakeupAlarms:Ljava/util/ArrayList;
    invoke-static {v4}, Lcom/android/server/AlarmManagerService;->access$1900(Lcom/android/server/AlarmManagerService;)Ljava/util/ArrayList;

    move-result-object v4

    #calls: Lcom/android/server/AlarmManagerService;->triggerAlarmsLocked(Ljava/util/ArrayList;Ljava/util/ArrayList;J)V
    invoke-static {v2, v4, v3, v5, v6}, Lcom/android/server/AlarmManagerService;->access$2300(Lcom/android/server/AlarmManagerService;Ljava/util/ArrayList;Ljava/util/ArrayList;J)V

    .line 1703
    :cond_5
    and-int/lit8 v2, v24, 0x8

    if-eqz v2, :cond_6

    .line 1704
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/AlarmManagerService$AlarmThread;->this$0:Lcom/android/server/AlarmManagerService;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/AlarmManagerService$AlarmThread;->this$0:Lcom/android/server/AlarmManagerService;

    #getter for: Lcom/android/server/AlarmManagerService;->mElapsedRealtimeAlarms:Ljava/util/ArrayList;
    invoke-static {v4}, Lcom/android/server/AlarmManagerService;->access$2000(Lcom/android/server/AlarmManagerService;)Ljava/util/ArrayList;

    move-result-object v4

    #calls: Lcom/android/server/AlarmManagerService;->triggerAlarmsLocked(Ljava/util/ArrayList;Ljava/util/ArrayList;J)V
    invoke-static {v2, v4, v3, v5, v6}, Lcom/android/server/AlarmManagerService;->access$2300(Lcom/android/server/AlarmManagerService;Ljava/util/ArrayList;Ljava/util/ArrayList;J)V

    .line 1707
    :cond_6
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v19

    .line 1708
    .local v19, it:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/android/server/AlarmManagerService$Alarm;>;"
    :cond_7
    :goto_2
    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_8

    .line 1709
    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/android/server/AlarmManagerService$Alarm;

    .line 1711
    .local v13, alarm:Lcom/android/server/AlarmManagerService$Alarm;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/AlarmManagerService$AlarmThread;->this$0:Lcom/android/server/AlarmManagerService;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/AlarmManagerService$AlarmThread;->this$0:Lcom/android/server/AlarmManagerService;

    #getter for: Lcom/android/server/AlarmManagerService;->mPoweroffAlarmMap:Ljava/util/HashMap;
    invoke-static {v4}, Lcom/android/server/AlarmManagerService;->access$2400(Lcom/android/server/AlarmManagerService;)Ljava/util/HashMap;

    move-result-object v4

    #calls: Lcom/android/server/AlarmManagerService;->updatePoweroffAlarm(Lcom/android/server/AlarmManagerService$Alarm;Ljava/util/HashMap;)V
    invoke-static {v2, v13, v4}, Lcom/android/server/AlarmManagerService;->access$2500(Lcom/android/server/AlarmManagerService;Lcom/android/server/AlarmManagerService$Alarm;Ljava/util/HashMap;)V

    .line 1714
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/AlarmManagerService$AlarmThread;->this$0:Lcom/android/server/AlarmManagerService;

    #getter for: Lcom/android/server/AlarmManagerService;->mDMLock:Ljava/lang/Object;
    invoke-static {v2}, Lcom/android/server/AlarmManagerService;->access$2600(Lcom/android/server/AlarmManagerService;)Ljava/lang/Object;

    move-result-object v8

    monitor-enter v8
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 1715
    :try_start_4
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/AlarmManagerService$AlarmThread;->this$0:Lcom/android/server/AlarmManagerService;

    #getter for: Lcom/android/server/AlarmManagerService;->mDMEnable:Z
    invoke-static {v2}, Lcom/android/server/AlarmManagerService;->access$2700(Lcom/android/server/AlarmManagerService;)Z

    move-result v2

    if-nez v2, :cond_9

    .line 1716
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/AlarmManagerService$AlarmThread;->this$0:Lcom/android/server/AlarmManagerService;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/AlarmManagerService$AlarmThread;->this$0:Lcom/android/server/AlarmManagerService;

    #getter for: Lcom/android/server/AlarmManagerService;->mDmFreeList:Ljava/util/ArrayList;
    invoke-static {v4}, Lcom/android/server/AlarmManagerService;->access$2800(Lcom/android/server/AlarmManagerService;)Ljava/util/ArrayList;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/server/AlarmManagerService$AlarmThread;->this$0:Lcom/android/server/AlarmManagerService;

    #getter for: Lcom/android/server/AlarmManagerService;->mDmResendList:Ljava/util/ArrayList;
    invoke-static {v7}, Lcom/android/server/AlarmManagerService;->access$2900(Lcom/android/server/AlarmManagerService;)Ljava/util/ArrayList;

    move-result-object v7

    #calls: Lcom/android/server/AlarmManagerService;->FreeDmIntent(Ljava/util/ArrayList;Ljava/util/ArrayList;JLjava/util/ArrayList;)V
    invoke-static/range {v2 .. v7}, Lcom/android/server/AlarmManagerService;->access$3000(Lcom/android/server/AlarmManagerService;Ljava/util/ArrayList;Ljava/util/ArrayList;JLjava/util/ArrayList;)V

    .line 1717
    monitor-exit v8
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    .line 1804
    .end local v13           #alarm:Lcom/android/server/AlarmManagerService$Alarm;
    :cond_8
    :try_start_5
    monitor-exit v26

    goto/16 :goto_0

    .end local v5           #nowELAPSED:J
    .end local v19           #it:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/android/server/AlarmManagerService$Alarm;>;"
    .end local v20           #nowRTC:J
    :catchall_0
    move-exception v2

    monitor-exit v26
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    throw v2

    .line 1662
    .end local v3           #triggerList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/server/AlarmManagerService$Alarm;>;"
    .end local v24           #result:I
    :catchall_1
    move-exception v2

    :try_start_6
    monitor-exit v4
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    throw v2

    .line 1670
    :catchall_2
    move-exception v2

    :try_start_7
    monitor-exit v4
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    throw v2

    .line 1719
    .restart local v3       #triggerList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/server/AlarmManagerService$Alarm;>;"
    .restart local v5       #nowELAPSED:J
    .restart local v13       #alarm:Lcom/android/server/AlarmManagerService$Alarm;
    .restart local v19       #it:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/android/server/AlarmManagerService$Alarm;>;"
    .restart local v20       #nowRTC:J
    .restart local v24       #result:I
    :cond_9
    :try_start_8
    monitor-exit v8
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    .line 1724
    :try_start_9
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/AlarmManagerService$AlarmThread;->this$0:Lcom/android/server/AlarmManagerService;

    #getter for: Lcom/android/server/AlarmManagerService;->mIPOShutdown:Z
    invoke-static {v2}, Lcom/android/server/AlarmManagerService;->access$500(Lcom/android/server/AlarmManagerService;)Z

    move-result v2

    if-nez v2, :cond_7

    .line 1729
    iget v2, v13, Lcom/android/server/AlarmManagerService$Alarm;->type:I

    if-nez v2, :cond_a

    const-string v2, "com.android.deskclock"

    iget-object v4, v13, Lcom/android/server/AlarmManagerService$Alarm;->operation:Landroid/app/PendingIntent;

    invoke-virtual {v4}, Landroid/app/PendingIntent;->getTargetPackage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a

    .line 1730
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/AlarmManagerService$AlarmThread;->this$0:Lcom/android/server/AlarmManagerService;

    #getter for: Lcom/android/server/AlarmManagerService;->mIsFirstPowerOffAlarm:Z
    invoke-static {v4}, Lcom/android/server/AlarmManagerService;->access$1100(Lcom/android/server/AlarmManagerService;)Z

    move-result v4

    if-ne v2, v4, :cond_f

    const-string v2, "1"

    const-string v4, "sys.boot.reason"

    invoke-static {v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_f

    .line 1731
    invoke-static {}, Lcom/android/server/AlarmManagerService;->access$3100()Landroid/content/Intent;

    move-result-object v2

    const-string v4, "FLAG_IS_FIRST_POWER_OFF_ALARM"

    const/4 v7, 0x1

    invoke-virtual {v2, v4, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1732
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/AlarmManagerService$AlarmThread;->this$0:Lcom/android/server/AlarmManagerService;

    const/4 v4, 0x0

    #setter for: Lcom/android/server/AlarmManagerService;->mIsFirstPowerOffAlarm:Z
    invoke-static {v2, v4}, Lcom/android/server/AlarmManagerService;->access$1102(Lcom/android/server/AlarmManagerService;Z)Z
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    .line 1739
    :cond_a
    :goto_3
    :try_start_a
    const-string v2, "AlarmManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "sending alarm "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1740
    iget-object v7, v13, Lcom/android/server/AlarmManagerService$Alarm;->operation:Landroid/app/PendingIntent;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/AlarmManagerService$AlarmThread;->this$0:Lcom/android/server/AlarmManagerService;

    #getter for: Lcom/android/server/AlarmManagerService;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/android/server/AlarmManagerService;->access$900(Lcom/android/server/AlarmManagerService;)Landroid/content/Context;

    move-result-object v8

    const/4 v9, 0x0

    invoke-static {}, Lcom/android/server/AlarmManagerService;->access$3100()Landroid/content/Intent;

    move-result-object v2

    const-string v4, "android.intent.extra.ALARM_COUNT"

    iget v10, v13, Lcom/android/server/AlarmManagerService$Alarm;->count:I

    invoke-virtual {v2, v4, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v10

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/AlarmManagerService$AlarmThread;->this$0:Lcom/android/server/AlarmManagerService;

    #getter for: Lcom/android/server/AlarmManagerService;->mResultReceiver:Lcom/android/server/AlarmManagerService$ResultReceiver;
    invoke-static {v2}, Lcom/android/server/AlarmManagerService;->access$3200(Lcom/android/server/AlarmManagerService;)Lcom/android/server/AlarmManagerService$ResultReceiver;

    move-result-object v11

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/AlarmManagerService$AlarmThread;->this$0:Lcom/android/server/AlarmManagerService;

    #getter for: Lcom/android/server/AlarmManagerService;->mHandler:Lcom/android/server/AlarmManagerService$AlarmHandler;
    invoke-static {v2}, Lcom/android/server/AlarmManagerService;->access$1400(Lcom/android/server/AlarmManagerService;)Lcom/android/server/AlarmManagerService$AlarmHandler;

    move-result-object v12

    invoke-virtual/range {v7 .. v12}, Landroid/app/PendingIntent;->send(Landroid/content/Context;ILandroid/content/Intent;Landroid/app/PendingIntent$OnFinished;Landroid/os/Handler;)V

    .line 1746
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/AlarmManagerService$AlarmThread;->this$0:Lcom/android/server/AlarmManagerService;

    #getter for: Lcom/android/server/AlarmManagerService;->mBroadcastRefCount:I
    invoke-static {v2}, Lcom/android/server/AlarmManagerService;->access$3300(Lcom/android/server/AlarmManagerService;)I

    move-result v2

    if-nez v2, :cond_b

    .line 1747
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/AlarmManagerService$AlarmThread;->this$0:Lcom/android/server/AlarmManagerService;

    iget-object v4, v13, Lcom/android/server/AlarmManagerService$Alarm;->operation:Landroid/app/PendingIntent;

    invoke-virtual {v2, v4}, Lcom/android/server/AlarmManagerService;->setWakelockWorkSource(Landroid/app/PendingIntent;)V

    .line 1748
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/AlarmManagerService$AlarmThread;->this$0:Lcom/android/server/AlarmManagerService;

    #getter for: Lcom/android/server/AlarmManagerService;->mWakeLock:Landroid/os/PowerManager$WakeLock;
    invoke-static {v2}, Lcom/android/server/AlarmManagerService;->access$3400(Lcom/android/server/AlarmManagerService;)Landroid/os/PowerManager$WakeLock;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 1750
    :cond_b
    new-instance v17, Lcom/android/server/AlarmManagerService$InFlight;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/AlarmManagerService$AlarmThread;->this$0:Lcom/android/server/AlarmManagerService;

    iget-object v4, v13, Lcom/android/server/AlarmManagerService$Alarm;->operation:Landroid/app/PendingIntent;

    move-object/from16 v0, v17

    invoke-direct {v0, v2, v4}, Lcom/android/server/AlarmManagerService$InFlight;-><init>(Lcom/android/server/AlarmManagerService;Landroid/app/PendingIntent;)V

    .line 1752
    .local v17, inflight:Lcom/android/server/AlarmManagerService$InFlight;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/AlarmManagerService$AlarmThread;->this$0:Lcom/android/server/AlarmManagerService;

    #getter for: Lcom/android/server/AlarmManagerService;->mInFlight:Ljava/util/ArrayList;
    invoke-static {v2}, Lcom/android/server/AlarmManagerService;->access$3500(Lcom/android/server/AlarmManagerService;)Ljava/util/ArrayList;

    move-result-object v2

    move-object/from16 v0, v17

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1753
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/AlarmManagerService$AlarmThread;->this$0:Lcom/android/server/AlarmManagerService;

    invoke-static {v2}, Lcom/android/server/AlarmManagerService;->access$3308(Lcom/android/server/AlarmManagerService;)I

    .line 1755
    move-object/from16 v0, v17

    iget-object v14, v0, Lcom/android/server/AlarmManagerService$InFlight;->mBroadcastStats:Lcom/android/server/AlarmManagerService$BroadcastStats;

    .line 1756
    .local v14, bs:Lcom/android/server/AlarmManagerService$BroadcastStats;
    iget v2, v14, Lcom/android/server/AlarmManagerService$BroadcastStats;->count:I

    add-int/lit8 v2, v2, 0x1

    iput v2, v14, Lcom/android/server/AlarmManagerService$BroadcastStats;->count:I

    .line 1757
    iget v2, v14, Lcom/android/server/AlarmManagerService$BroadcastStats;->nesting:I

    if-nez v2, :cond_10

    .line 1758
    const/4 v2, 0x1

    iput v2, v14, Lcom/android/server/AlarmManagerService$BroadcastStats;->nesting:I

    .line 1759
    iput-wide v5, v14, Lcom/android/server/AlarmManagerService$BroadcastStats;->startTime:J

    .line 1763
    :goto_4
    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/android/server/AlarmManagerService$InFlight;->mFilterStats:Lcom/android/server/AlarmManagerService$FilterStats;

    move-object/from16 v16, v0

    .line 1764
    .local v16, fs:Lcom/android/server/AlarmManagerService$FilterStats;
    move-object/from16 v0, v16

    iget v2, v0, Lcom/android/server/AlarmManagerService$FilterStats;->count:I

    add-int/lit8 v2, v2, 0x1

    move-object/from16 v0, v16

    iput v2, v0, Lcom/android/server/AlarmManagerService$FilterStats;->count:I

    .line 1765
    move-object/from16 v0, v16

    iget v2, v0, Lcom/android/server/AlarmManagerService$FilterStats;->nesting:I

    if-nez v2, :cond_11

    .line 1766
    const/4 v2, 0x1

    move-object/from16 v0, v16

    iput v2, v0, Lcom/android/server/AlarmManagerService$FilterStats;->nesting:I

    .line 1767
    move-object/from16 v0, v16

    iput-wide v5, v0, Lcom/android/server/AlarmManagerService$FilterStats;->startTime:J

    .line 1771
    :goto_5
    iget v2, v13, Lcom/android/server/AlarmManagerService$Alarm;->type:I

    const/4 v4, 0x2

    if-eq v2, v4, :cond_c

    iget v2, v13, Lcom/android/server/AlarmManagerService$Alarm;->type:I

    if-nez v2, :cond_d

    .line 1773
    :cond_c
    iget v2, v14, Lcom/android/server/AlarmManagerService$BroadcastStats;->numWakeup:I

    add-int/lit8 v2, v2, 0x1

    iput v2, v14, Lcom/android/server/AlarmManagerService$BroadcastStats;->numWakeup:I

    .line 1774
    move-object/from16 v0, v16

    iget v2, v0, Lcom/android/server/AlarmManagerService$FilterStats;->numWakeup:I

    add-int/lit8 v2, v2, 0x1

    move-object/from16 v0, v16

    iput v2, v0, Lcom/android/server/AlarmManagerService$FilterStats;->numWakeup:I

    .line 1775
    iget-object v2, v13, Lcom/android/server/AlarmManagerService$Alarm;->operation:Landroid/app/PendingIntent;

    invoke-static {v2}, Landroid/app/ActivityManagerNative;->noteWakeupAlarm(Landroid/app/PendingIntent;)V

    .line 1779
    sget-object v2, Lcom/android/server/AlarmManagerService;->mPolicy:Lcom/android/server/AlarmManagerService$AlarmPolicy;

    invoke-virtual {v2, v13, v14}, Lcom/android/server/AlarmManagerService$AlarmPolicy;->recordOneTimeOut_DeterminPeriodical(Lcom/android/server/AlarmManagerService$Alarm;Lcom/android/server/AlarmManagerService$BroadcastStats;)V

    .line 1783
    :cond_d
    iget-object v2, v13, Lcom/android/server/AlarmManagerService$Alarm;->operation:Landroid/app/PendingIntent;

    invoke-virtual {v2}, Landroid/app/PendingIntent;->getTargetPackage()Ljava/lang/String;

    move-result-object v23

    .line 1784
    .local v23, pkg:Ljava/lang/String;
    if-eqz v23, :cond_7

    const-string v2, "android"

    move-object/from16 v0, v23

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_7

    .line 1785
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/AlarmManagerService$AlarmThread;->this$0:Lcom/android/server/AlarmManagerService;

    #getter for: Lcom/android/server/AlarmManagerService;->mBroadcastStats:Ljava/util/HashMap;
    invoke-static {v2}, Lcom/android/server/AlarmManagerService;->access$3600(Lcom/android/server/AlarmManagerService;)Ljava/util/HashMap;

    move-result-object v2

    move-object/from16 v0, v23

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Lcom/android/server/AlarmManagerService$BroadcastStats;

    .line 1786
    .local v22, pgbs:Lcom/android/server/AlarmManagerService$BroadcastStats;
    const/16 v25, 0x0

    .line 1787
    .local v25, stats:Ljava/lang/String;
    if-eqz v22, :cond_e

    move-object/from16 v0, v22

    iget v2, v0, Lcom/android/server/AlarmManagerService$BroadcastStats;->numWakeup:I

    const/4 v4, 0x5

    if-lt v2, v4, :cond_e

    .line 1788
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v22

    iget-wide v7, v0, Lcom/android/server/AlarmManagerService$BroadcastStats;->aggregateTime:J

    invoke-virtual {v2, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "-"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, v22

    iget v4, v0, Lcom/android/server/AlarmManagerService$BroadcastStats;->numWakeup:I

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    .line 1790
    :cond_e
    const/16 v2, 0x79

    iget v4, v13, Lcom/android/server/AlarmManagerService$Alarm;->type:I

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v23

    move-object/from16 v1, v25

    invoke-static {v2, v0, v4, v1}, Landroid/util/LogPower;->push(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_a .. :try_end_a} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_a .. :try_end_a} :catch_1

    goto/16 :goto_2

    .line 1794
    .end local v14           #bs:Lcom/android/server/AlarmManagerService$BroadcastStats;
    .end local v16           #fs:Lcom/android/server/AlarmManagerService$FilterStats;
    .end local v17           #inflight:Lcom/android/server/AlarmManagerService$InFlight;
    .end local v22           #pgbs:Lcom/android/server/AlarmManagerService$BroadcastStats;
    .end local v23           #pkg:Ljava/lang/String;
    .end local v25           #stats:Ljava/lang/String;
    :catch_0
    move-exception v15

    .line 1795
    .local v15, e:Landroid/app/PendingIntent$CanceledException;
    :try_start_b
    iget-wide v7, v13, Lcom/android/server/AlarmManagerService$Alarm;->repeatInterval:J

    const-wide/16 v9, 0x0

    cmp-long v2, v7, v9

    if-lez v2, :cond_7

    .line 1798
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/AlarmManagerService$AlarmThread;->this$0:Lcom/android/server/AlarmManagerService;

    iget-object v4, v13, Lcom/android/server/AlarmManagerService$Alarm;->operation:Landroid/app/PendingIntent;

    invoke-virtual {v2, v4}, Lcom/android/server/AlarmManagerService;->remove(Landroid/app/PendingIntent;)V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    goto/16 :goto_2

    .line 1719
    .end local v15           #e:Landroid/app/PendingIntent$CanceledException;
    :catchall_3
    move-exception v2

    :try_start_c
    monitor-exit v8
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_3

    :try_start_d
    throw v2

    .line 1734
    :cond_f
    invoke-static {}, Lcom/android/server/AlarmManagerService;->access$3100()Landroid/content/Intent;

    move-result-object v2

    const-string v4, "FLAG_IS_FIRST_POWER_OFF_ALARM"

    const/4 v7, 0x0

    invoke-virtual {v2, v4, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_0

    goto/16 :goto_3

    .line 1761
    .restart local v14       #bs:Lcom/android/server/AlarmManagerService$BroadcastStats;
    .restart local v17       #inflight:Lcom/android/server/AlarmManagerService$InFlight;
    :cond_10
    :try_start_e
    iget v2, v14, Lcom/android/server/AlarmManagerService$BroadcastStats;->nesting:I

    add-int/lit8 v2, v2, 0x1

    iput v2, v14, Lcom/android/server/AlarmManagerService$BroadcastStats;->nesting:I
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_0
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_e .. :try_end_e} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_e .. :try_end_e} :catch_1

    goto/16 :goto_4

    .line 1800
    .end local v14           #bs:Lcom/android/server/AlarmManagerService$BroadcastStats;
    .end local v17           #inflight:Lcom/android/server/AlarmManagerService$InFlight;
    :catch_1
    move-exception v15

    .line 1801
    .local v15, e:Ljava/lang/RuntimeException;
    :try_start_f
    const-string v2, "AlarmManager"

    const-string v4, "Failure sending alarm."

    invoke-static {v2, v4, v15}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_0

    goto/16 :goto_2

    .line 1769
    .end local v15           #e:Ljava/lang/RuntimeException;
    .restart local v14       #bs:Lcom/android/server/AlarmManagerService$BroadcastStats;
    .restart local v16       #fs:Lcom/android/server/AlarmManagerService$FilterStats;
    .restart local v17       #inflight:Lcom/android/server/AlarmManagerService$InFlight;
    :cond_11
    :try_start_10
    move-object/from16 v0, v16

    iget v2, v0, Lcom/android/server/AlarmManagerService$FilterStats;->nesting:I

    add-int/lit8 v2, v2, 0x1

    move-object/from16 v0, v16

    iput v2, v0, Lcom/android/server/AlarmManagerService$FilterStats;->nesting:I
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_0
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_10 .. :try_end_10} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_10 .. :try_end_10} :catch_1

    goto/16 :goto_5

    .line 1668
    .end local v3           #triggerList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/server/AlarmManagerService$Alarm;>;"
    .end local v5           #nowELAPSED:J
    .end local v13           #alarm:Lcom/android/server/AlarmManagerService$Alarm;
    .end local v14           #bs:Lcom/android/server/AlarmManagerService$BroadcastStats;
    .end local v16           #fs:Lcom/android/server/AlarmManagerService$FilterStats;
    .end local v17           #inflight:Lcom/android/server/AlarmManagerService$InFlight;
    .end local v19           #it:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/android/server/AlarmManagerService$Alarm;>;"
    .end local v20           #nowRTC:J
    .end local v24           #result:I
    :catch_2
    move-exception v2

    goto/16 :goto_1
.end method
