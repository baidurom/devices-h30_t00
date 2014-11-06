.class public Lcom/huawei/android/pushselfshow/d/b;
.super Ljava/lang/Object;


# static fields
.field private static d:Landroid/net/Uri;


# instance fields
.field public a:Landroid/content/Context;

.field public b:Ljava/lang/String;

.field public c:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "content://sms/inbox"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/huawei/android/pushselfshow/d/b;->d:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/huawei/android/pushselfshow/d/b;->a:Landroid/content/Context;

    iput-object p2, p0, Lcom/huawei/android/pushselfshow/d/b;->b:Ljava/lang/String;

    iput-object p3, p0, Lcom/huawei/android/pushselfshow/d/b;->c:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public a()Z
    .locals 8

    const/4 v0, 0x1

    const/4 v1, 0x0

    :try_start_0
    iget-object v2, p0, Lcom/huawei/android/pushselfshow/d/b;->a:Landroid/content/Context;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/huawei/android/pushselfshow/d/b;->b:Ljava/lang/String;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/huawei/android/pushselfshow/d/b;->c:Ljava/lang/String;

    if-nez v2, :cond_1

    :cond_0
    const-string v0, "PushSelfShowLog"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "before insertSMS ,param is ilegle ,context = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/huawei/android/pushselfshow/d/b;->a:Landroid/content/Context;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ",m_from = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/huawei/android/pushselfshow/d/b;->b:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ",m_subject = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/huawei/android/pushselfshow/d/b;->c:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/huawei/android/pushselfshow/b/b;->a(Ljava/lang/String;Ljava/lang/String;)V

    move v0, v1

    :goto_0
    return v0

    :cond_1
    new-instance v2, Lcom/huawei/android/pushselfshow/d/a;

    invoke-direct {v2}, Lcom/huawei/android/pushselfshow/d/a;-><init>()V

    iget-object v3, p0, Lcom/huawei/android/pushselfshow/d/b;->a:Landroid/content/Context;

    iget-object v4, p0, Lcom/huawei/android/pushselfshow/d/b;->b:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Lcom/huawei/android/pushselfshow/d/a;->a(Landroid/content/Context;Ljava/lang/String;)V

    const-string v3, "PushSelfShowLog"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "query theads table ,the _id is "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v2}, Lcom/huawei/android/pushselfshow/d/a;->a()J

    move-result-wide v5

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " the msgcount is "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v2}, Lcom/huawei/android/pushselfshow/d/a;->b()J

    move-result-wide v5

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/huawei/android/pushselfshow/b/b;->a(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2}, Lcom/huawei/android/pushselfshow/d/a;->a()J

    move-result-wide v3

    const-wide/16 v5, 0x0

    cmp-long v3, v3, v5

    if-lez v3, :cond_3

    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    const-string v4, "address"

    iget-object v5, p0, Lcom/huawei/android/pushselfshow/d/b;->b:Ljava/lang/String;

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v4, "body"

    iget-object v5, p0, Lcom/huawei/android/pushselfshow/d/b;->c:Ljava/lang/String;

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v4, "date"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string v4, "read"

    const/4 v5, 0x0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v4, "type"

    const/4 v5, 0x1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v4, "PushSelfShowLog"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "insert into sms inbox ,param is "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v3}, Landroid/content/ContentValues;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/huawei/android/pushselfshow/b/b;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v4, p0, Lcom/huawei/android/pushselfshow/d/b;->a:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    sget-object v5, Lcom/huawei/android/pushselfshow/d/b;->d:Landroid/net/Uri;

    invoke-virtual {v4, v5, v3}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    new-instance v3, Lcom/huawei/android/pushselfshow/d/a;

    invoke-direct {v3}, Lcom/huawei/android/pushselfshow/d/a;-><init>()V

    iget-object v4, p0, Lcom/huawei/android/pushselfshow/d/b;->a:Landroid/content/Context;

    iget-object v5, p0, Lcom/huawei/android/pushselfshow/d/b;->b:Ljava/lang/String;

    invoke-virtual {v3, v4, v5}, Lcom/huawei/android/pushselfshow/d/a;->a(Landroid/content/Context;Ljava/lang/String;)V

    const-string v4, "PushSelfShowLog"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "after insert sms ,query theads table ,the _id is "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v3}, Lcom/huawei/android/pushselfshow/d/a;->a()J

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "the msgCount is "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v3}, Lcom/huawei/android/pushselfshow/d/a;->b()J

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/huawei/android/pushselfshow/b/b;->a(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v3}, Lcom/huawei/android/pushselfshow/d/a;->b()J

    move-result-wide v4

    invoke-virtual {v2}, Lcom/huawei/android/pushselfshow/d/a;->b()J

    move-result-wide v6

    cmp-long v4, v4, v6

    if-lez v4, :cond_2

    const-string v4, "PushSelfShowLog"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "insert sms success ,msgCount now is "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v3}, Lcom/huawei/android/pushselfshow/d/a;->b()J

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, ",and before is "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v2}, Lcom/huawei/android/pushselfshow/d/a;->a()J

    move-result-wide v5

    invoke-virtual {v3, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Lcom/huawei/android/pushselfshow/b/b;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    :catch_0
    move-exception v0

    const-string v2, "PushSelfShowLog"

    const-string v3, "insert sms fail ,"

    invoke-static {v2, v3, v0}, Lcom/huawei/android/pushselfshow/b/b;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_1
    move v0, v1

    goto/16 :goto_0

    :cond_2
    :try_start_1
    const-string v0, "PushSelfShowLog"

    const-string v2, "insert sms may be insert fail or query fail ,"

    invoke-static {v0, v2}, Lcom/huawei/android/pushselfshow/b/b;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_3
    const-string v0, "PushSelfShowLog"

    const-string v2, "insert sms may be insert fail or query fail ,"

    invoke-static {v0, v2}, Lcom/huawei/android/pushselfshow/b/b;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1
.end method
