.class public Lcom/huawei/android/pushselfshow/SelfShowReceiver;
.super Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/content/Context;Landroid/content/Intent;Lcom/huawei/android/pushselfshow/a/a;)V
    .locals 3

    const-string v0, "PushSelfShowLog"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "receive a selfshow message ,the type is"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p3, Lcom/huawei/android/pushselfshow/a/a;->n:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/huawei/android/pushselfshow/b/b;->a(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/huawei/android/pushselfshow/click/SelfShowType;->getInstants()Lcom/huawei/android/pushselfshow/click/SelfShowType;

    move-result-object v0

    invoke-virtual {v0}, Lcom/huawei/android/pushselfshow/click/SelfShowType;->getShowType()Ljava/util/HashMap;

    move-result-object v0

    iget-object v1, p3, Lcom/huawei/android/pushselfshow/a/a;->n:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "PUSH_PS"

    const-string v1, "3"

    invoke-static {p1, v0, v1, p3}, Lcom/huawei/android/pushselfshow/b/c;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/huawei/android/pushselfshow/a/a;)V

    :goto_0
    return-void

    :cond_0
    new-instance v0, Lcom/huawei/android/pushselfshow/c/b;

    invoke-direct {v0, p1, p3}, Lcom/huawei/android/pushselfshow/c/b;-><init>(Landroid/content/Context;Lcom/huawei/android/pushselfshow/a/a;)V

    invoke-virtual {v0}, Lcom/huawei/android/pushselfshow/c/b;->start()V

    goto :goto_0
.end method

.method public a(Landroid/content/Context;Landroid/content/Intent;Ljava/lang/String;Lcom/huawei/android/pushselfshow/a/a;I)V
    .locals 4

    const-string v0, "PushSelfShowLog"

    const-string v1, "receive a selfshow userhandle message"

    invoke-static {v0, v1}, Lcom/huawei/android/pushselfshow/b/b;->a(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "-1"

    invoke-virtual {v0, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {p1, p2}, Lcom/huawei/android/pushselfshow/c/a;->a(Landroid/content/Context;Landroid/content/Intent;)V

    const-string v0, "1"

    invoke-virtual {v0, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {}, Lcom/huawei/android/pushselfshow/click/SelfShowType;->getInstants()Lcom/huawei/android/pushselfshow/click/SelfShowType;

    move-result-object v0

    invoke-virtual {v0, p1, p4}, Lcom/huawei/android/pushselfshow/click/SelfShowType;->launchNotify(Landroid/content/Context;Lcom/huawei/android/pushselfshow/a/a;)V

    iget-object v0, p4, Lcom/huawei/android/pushselfshow/a/a;->m:Ljava/lang/String;

    if-eqz v0, :cond_0

    :try_start_0
    new-instance v0, Lorg/json/JSONArray;

    iget-object v1, p4, Lcom/huawei/android/pushselfshow/a/a;->m:Ljava/lang/String;

    invoke-direct {v0, v1}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.huawei.android.push.intent.RECEIVE"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v2, "click"

    invoke-virtual {v0}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    const/16 v2, 0x20

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    invoke-virtual {p1, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-static {p1, p5}, Lcom/huawei/android/pushselfshow/c/a;->a(Landroid/content/Context;I)V

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "PushSelfShowLog"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "message.extras is not a json format,err info "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/huawei/android/pushselfshow/b/b;->c(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    const-string v0, "PUSH_PS"

    invoke-static {p1, v0, p3, p4}, Lcom/huawei/android/pushselfshow/b/c;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/huawei/android/pushselfshow/a/a;)V

    goto :goto_0
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 8

    const/4 v5, 0x0

    if-eqz p1, :cond_0

    if-nez p2, :cond_2

    :cond_0
    :try_start_0
    const-string v0, "PushSelfShowLog"

    const-string v1, "enter SelfShowReceiver receiver, context or intent is null"

    invoke-static {v0, v1}, Lcom/huawei/android/pushselfshow/b/b;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void

    :cond_2
    invoke-static {p1}, Lcom/huawei/android/pushselfshow/b/b;->a(Landroid/content/Context;)V

    const/4 v3, 0x0

    const-string v0, "selfshow_info"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "selfshow_info"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getByteArrayExtra(Ljava/lang/String;)[B

    move-result-object v0

    const-string v1, "selfshow_token"

    invoke-virtual {p2, v1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "selfshow_token"

    invoke-virtual {p2, v1}, Landroid/content/Intent;->getByteArrayExtra(Ljava/lang/String;)[B

    move-result-object v1

    const-string v2, "selfshow_event_id"

    invoke-virtual {p2, v2}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    const-string v2, "selfshow_event_id"

    invoke-virtual {p2, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    :cond_3
    const-string v2, "selfshow_notify_id"

    invoke-virtual {p2, v2}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    const-string v2, "selfshow_notify_id"

    const/4 v4, 0x0

    invoke-virtual {p2, v2, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v5

    :cond_4
    const-string v2, "PushSelfShowLog"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "receive a selfshow source message ="

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    new-instance v6, Ljava/lang/String;

    const-string v7, "UTF-8"

    invoke-direct {v6, v0, v7}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/huawei/android/pushselfshow/b/b;->a(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v4, Lcom/huawei/android/pushselfshow/a/a;

    invoke-direct {v4, v0, v1}, Lcom/huawei/android/pushselfshow/a/a;-><init>([B[B)V

    invoke-virtual {v4}, Lcom/huawei/android/pushselfshow/a/a;->c()Z

    move-result v0

    if-nez v0, :cond_5

    const-string v0, "PushSelfShowLog"

    const-string v1, "parseMessage failed"

    invoke-static {v0, v1}, Lcom/huawei/android/pushselfshow/b/b;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "PushSelfShowLog"

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Lcom/huawei/android/pushselfshow/b/b;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_5
    :try_start_1
    const-string v0, "PushSelfShowLog"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " onReceive the msg id = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, v4, Lcom/huawei/android/pushselfshow/a/a;->k:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",and cmd is"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, v4, Lcom/huawei/android/pushselfshow/a/a;->n:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",and the eventId is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/huawei/android/pushselfshow/b/b;->a(Ljava/lang/String;Ljava/lang/String;)V

    if-nez v3, :cond_6

    invoke-virtual {p0, p1, p2, v4}, Lcom/huawei/android/pushselfshow/SelfShowReceiver;->a(Landroid/content/Context;Landroid/content/Intent;Lcom/huawei/android/pushselfshow/a/a;)V

    :goto_1
    new-instance v0, Ljava/io/File;

    invoke-static {p1}, Lcom/huawei/android/pushselfshow/b/d;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/huawei/android/pushselfshow/b/c;->b(Ljava/io/File;)V

    goto/16 :goto_0

    :cond_6
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    invoke-virtual/range {v0 .. v5}, Lcom/huawei/android/pushselfshow/SelfShowReceiver;->a(Landroid/content/Context;Landroid/content/Intent;Ljava/lang/String;Lcom/huawei/android/pushselfshow/a/a;I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1
.end method
