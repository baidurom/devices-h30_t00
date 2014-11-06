.class public Lcom/huawei/android/pushselfshow/c/b;
.super Ljava/lang/Thread;


# instance fields
.field private a:Landroid/content/Context;

.field private b:Lcom/huawei/android/pushselfshow/a/a;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/huawei/android/pushselfshow/a/a;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    iput-object p1, p0, Lcom/huawei/android/pushselfshow/c/b;->a:Landroid/content/Context;

    iput-object p2, p0, Lcom/huawei/android/pushselfshow/c/b;->b:Lcom/huawei/android/pushselfshow/a/a;

    return-void
.end method


# virtual methods
.method public a(Landroid/content/Context;)Z
    .locals 2

    const-string v0, "cosa"

    iget-object v1, p0, Lcom/huawei/android/pushselfshow/c/b;->b:Lcom/huawei/android/pushselfshow/a/a;

    iget-object v1, v1, Lcom/huawei/android/pushselfshow/a/a;->n:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1}, Lcom/huawei/android/pushselfshow/c/b;->b(Landroid/content/Context;)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const-string v0, "email"

    iget-object v1, p0, Lcom/huawei/android/pushselfshow/c/b;->b:Lcom/huawei/android/pushselfshow/a/a;

    iget-object v1, v1, Lcom/huawei/android/pushselfshow/a/a;->n:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0, p1}, Lcom/huawei/android/pushselfshow/c/b;->c(Landroid/content/Context;)Z

    move-result v0

    goto :goto_0

    :cond_1
    const-string v0, "rp"

    iget-object v1, p0, Lcom/huawei/android/pushselfshow/c/b;->b:Lcom/huawei/android/pushselfshow/a/a;

    iget-object v1, v1, Lcom/huawei/android/pushselfshow/a/a;->n:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0, p1}, Lcom/huawei/android/pushselfshow/c/b;->d(Landroid/content/Context;)Z

    move-result v0

    goto :goto_0

    :cond_2
    const-string v0, "smsp"

    iget-object v1, p0, Lcom/huawei/android/pushselfshow/c/b;->b:Lcom/huawei/android/pushselfshow/a/a;

    iget-object v1, v1, Lcom/huawei/android/pushselfshow/a/a;->n:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p0, p1}, Lcom/huawei/android/pushselfshow/c/b;->e(Landroid/content/Context;)Z

    move-result v0

    goto :goto_0

    :cond_3
    const-string v0, "mmsp"

    iget-object v1, p0, Lcom/huawei/android/pushselfshow/c/b;->b:Lcom/huawei/android/pushselfshow/a/a;

    iget-object v1, v1, Lcom/huawei/android/pushselfshow/a/a;->n:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-virtual {p0, p1}, Lcom/huawei/android/pushselfshow/c/b;->f(Landroid/content/Context;)Z

    move-result v0

    goto :goto_0

    :cond_4
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public b(Landroid/content/Context;)Z
    .locals 3

    iget-object v0, p0, Lcom/huawei/android/pushselfshow/c/b;->b:Lcom/huawei/android/pushselfshow/a/a;

    iget-object v0, v0, Lcom/huawei/android/pushselfshow/a/a;->x:Ljava/lang/String;

    invoke-static {p1, v0}, Lcom/huawei/android/pushselfshow/b/c;->b(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "PUSH_PS"

    const-string v1, "4"

    iget-object v2, p0, Lcom/huawei/android/pushselfshow/c/b;->b:Lcom/huawei/android/pushselfshow/a/a;

    invoke-static {p1, v0, v1, v2}, Lcom/huawei/android/pushselfshow/b/c;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/huawei/android/pushselfshow/a/a;)V

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public c(Landroid/content/Context;)Z
    .locals 1

    invoke-static {p1}, Lcom/huawei/android/pushselfshow/b/c;->e(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public d(Landroid/content/Context;)Z
    .locals 5

    const/4 v0, 0x0

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/huawei/android/pushselfshow/c/b;->b:Lcom/huawei/android/pushselfshow/a/a;

    iget-object v2, v2, Lcom/huawei/android/pushselfshow/a/a;->A:Ljava/lang/String;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/huawei/android/pushselfshow/c/b;->b:Lcom/huawei/android/pushselfshow/a/a;

    iget-object v2, v2, Lcom/huawei/android/pushselfshow/a/a;->A:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_1

    :cond_0
    const-string v1, "PushSelfShowLog"

    const-string v2, "ilegle richpush param ,rpl is null"

    invoke-static {v1, v2}, Lcom/huawei/android/pushselfshow/b/b;->a(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return v0

    :cond_1
    const-string v2, "PushSelfShowLog"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "rpl is "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/huawei/android/pushselfshow/c/b;->b:Lcom/huawei/android/pushselfshow/a/a;

    iget-object v4, v4, Lcom/huawei/android/pushselfshow/a/a;->A:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/huawei/android/pushselfshow/b/b;->a(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "application/zip"

    iget-object v3, p0, Lcom/huawei/android/pushselfshow/c/b;->b:Lcom/huawei/android/pushselfshow/a/a;

    iget-object v3, v3, Lcom/huawei/android/pushselfshow/a/a;->C:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    iget-object v2, p0, Lcom/huawei/android/pushselfshow/c/b;->b:Lcom/huawei/android/pushselfshow/a/a;

    iget-object v2, v2, Lcom/huawei/android/pushselfshow/a/a;->A:Ljava/lang/String;

    const-string v3, ".zip"

    invoke-virtual {v2, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5

    :cond_2
    iget-object v0, p0, Lcom/huawei/android/pushselfshow/c/b;->b:Lcom/huawei/android/pushselfshow/a/a;

    const-string v2, "application/zip"

    iput-object v2, v0, Lcom/huawei/android/pushselfshow/a/a;->C:Ljava/lang/String;

    iget-object v0, p0, Lcom/huawei/android/pushselfshow/c/b;->b:Lcom/huawei/android/pushselfshow/a/a;

    iget v0, v0, Lcom/huawei/android/pushselfshow/a/a;->i:I

    if-ne v0, v1, :cond_4

    const-string v0, "application/zip"

    invoke-static {v0}, Lcom/huawei/android/pushselfshow/richpush/a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v2, Lcom/huawei/android/pushselfshow/b/a;

    invoke-direct {v2}, Lcom/huawei/android/pushselfshow/b/a;-><init>()V

    iget-object v3, p0, Lcom/huawei/android/pushselfshow/c/b;->b:Lcom/huawei/android/pushselfshow/a/a;

    iget-object v3, v3, Lcom/huawei/android/pushselfshow/a/a;->A:Ljava/lang/String;

    iget-object v4, p0, Lcom/huawei/android/pushselfshow/c/b;->b:Lcom/huawei/android/pushselfshow/a/a;

    iget v4, v4, Lcom/huawei/android/pushselfshow/a/a;->j:I

    invoke-virtual {v2, p1, v3, v4, v0}, Lcom/huawei/android/pushselfshow/b/a;->a(Landroid/content/Context;Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_3

    iget-object v2, p0, Lcom/huawei/android/pushselfshow/c/b;->b:Lcom/huawei/android/pushselfshow/a/a;

    iput-object v0, v2, Lcom/huawei/android/pushselfshow/a/a;->A:Ljava/lang/String;

    iget-object v2, p0, Lcom/huawei/android/pushselfshow/c/b;->b:Lcom/huawei/android/pushselfshow/a/a;

    const-string v3, "application/zip_local"

    iput-object v3, v2, Lcom/huawei/android/pushselfshow/a/a;->C:Ljava/lang/String;

    :cond_3
    const-string v2, "PushSelfShowLog"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Download first ,the localfile"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/huawei/android/pushselfshow/b/b;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_4
    move v0, v1

    goto/16 :goto_0

    :cond_5
    const-string v2, "text/html"

    iget-object v3, p0, Lcom/huawei/android/pushselfshow/c/b;->b:Lcom/huawei/android/pushselfshow/a/a;

    iget-object v3, v3, Lcom/huawei/android/pushselfshow/a/a;->C:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_6

    iget-object v2, p0, Lcom/huawei/android/pushselfshow/c/b;->b:Lcom/huawei/android/pushselfshow/a/a;

    iget-object v2, v2, Lcom/huawei/android/pushselfshow/a/a;->A:Ljava/lang/String;

    const-string v3, ".html"

    invoke-virtual {v2, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_7

    :cond_6
    iget-object v0, p0, Lcom/huawei/android/pushselfshow/c/b;->b:Lcom/huawei/android/pushselfshow/a/a;

    const-string v2, "text/html"

    iput-object v2, v0, Lcom/huawei/android/pushselfshow/a/a;->C:Ljava/lang/String;

    move v0, v1

    goto/16 :goto_0

    :cond_7
    const-string v1, "PushSelfShowLog"

    const-string v2, "unknow rpl type"

    invoke-static {v1, v2}, Lcom/huawei/android/pushselfshow/b/b;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/huawei/android/pushselfshow/c/b;->b:Lcom/huawei/android/pushselfshow/a/a;

    invoke-static {p1, v1}, Lcom/huawei/android/pushselfshow/richpush/HtmlViewer;->reportRpFailed(Landroid/content/Context;Lcom/huawei/android/pushselfshow/a/a;)V

    goto/16 :goto_0
.end method

.method public e(Landroid/content/Context;)Z
    .locals 3

    new-instance v0, Lcom/huawei/android/pushselfshow/d/b;

    iget-object v1, p0, Lcom/huawei/android/pushselfshow/c/b;->b:Lcom/huawei/android/pushselfshow/a/a;

    iget-object v1, v1, Lcom/huawei/android/pushselfshow/a/a;->a:Ljava/lang/String;

    iget-object v2, p0, Lcom/huawei/android/pushselfshow/c/b;->b:Lcom/huawei/android/pushselfshow/a/a;

    iget-object v2, v2, Lcom/huawei/android/pushselfshow/a/a;->c:Ljava/lang/String;

    invoke-direct {v0, p1, v1, v2}, Lcom/huawei/android/pushselfshow/d/b;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/huawei/android/pushselfshow/d/b;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "PushSelfShowLog"

    const-string v1, "insert sms success ,than report success"

    invoke-static {v0, v1}, Lcom/huawei/android/pushselfshow/b/b;->a(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "PUSH_PS"

    const-string v1, "9"

    iget-object v2, p0, Lcom/huawei/android/pushselfshow/c/b;->b:Lcom/huawei/android/pushselfshow/a/a;

    invoke-static {p1, v0, v1, v2}, Lcom/huawei/android/pushselfshow/b/c;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/huawei/android/pushselfshow/a/a;)V

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const-string v0, "PushSelfShowLog"

    const-string v1, "insert sms fail ,than report fail"

    invoke-static {v0, v1}, Lcom/huawei/android/pushselfshow/b/b;->a(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "PUSH_PS"

    const-string v1, "8"

    iget-object v2, p0, Lcom/huawei/android/pushselfshow/c/b;->b:Lcom/huawei/android/pushselfshow/a/a;

    invoke-static {p1, v0, v1, v2}, Lcom/huawei/android/pushselfshow/b/c;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/huawei/android/pushselfshow/a/a;)V

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public f(Landroid/content/Context;)Z
    .locals 7

    new-instance v0, Lcom/huawei/android/pushselfshow/d/c;

    iget-object v1, p0, Lcom/huawei/android/pushselfshow/c/b;->b:Lcom/huawei/android/pushselfshow/a/a;

    iget-object v2, v1, Lcom/huawei/android/pushselfshow/a/a;->a:Ljava/lang/String;

    iget-object v1, p0, Lcom/huawei/android/pushselfshow/c/b;->b:Lcom/huawei/android/pushselfshow/a/a;

    iget-object v3, v1, Lcom/huawei/android/pushselfshow/a/a;->b:Ljava/lang/String;

    iget-object v1, p0, Lcom/huawei/android/pushselfshow/c/b;->b:Lcom/huawei/android/pushselfshow/a/a;

    iget-object v4, v1, Lcom/huawei/android/pushselfshow/a/a;->c:Ljava/lang/String;

    iget-object v1, p0, Lcom/huawei/android/pushselfshow/c/b;->b:Lcom/huawei/android/pushselfshow/a/a;

    iget-object v5, v1, Lcom/huawei/android/pushselfshow/a/a;->d:Ljava/lang/String;

    iget-object v1, p0, Lcom/huawei/android/pushselfshow/c/b;->b:Lcom/huawei/android/pushselfshow/a/a;

    iget v6, v1, Lcom/huawei/android/pushselfshow/a/a;->j:I

    move-object v1, p1

    invoke-direct/range {v0 .. v6}, Lcom/huawei/android/pushselfshow/d/c;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-virtual {v0}, Lcom/huawei/android/pushselfshow/d/c;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "PushSelfShowLog"

    const-string v1, "insert mms success ,than report success"

    invoke-static {v0, v1}, Lcom/huawei/android/pushselfshow/b/b;->a(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "PUSH_PS"

    const-string v1, "9"

    iget-object v2, p0, Lcom/huawei/android/pushselfshow/c/b;->b:Lcom/huawei/android/pushselfshow/a/a;

    invoke-static {p1, v0, v1, v2}, Lcom/huawei/android/pushselfshow/b/c;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/huawei/android/pushselfshow/a/a;)V

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const-string v0, "PushSelfShowLog"

    const-string v1, "insert mms fail ,than report fail"

    invoke-static {v0, v1}, Lcom/huawei/android/pushselfshow/b/b;->c(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "PUSH_PS"

    const-string v1, "8"

    iget-object v2, p0, Lcom/huawei/android/pushselfshow/c/b;->b:Lcom/huawei/android/pushselfshow/a/a;

    invoke-static {p1, v0, v1, v2}, Lcom/huawei/android/pushselfshow/b/c;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/huawei/android/pushselfshow/a/a;)V

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public run()V
    .locals 2

    const-string v0, "PushSelfShowLog"

    const-string v1, "enter run()"

    invoke-static {v0, v1}, Lcom/huawei/android/pushselfshow/b/b;->a(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_0
    iget-object v0, p0, Lcom/huawei/android/pushselfshow/c/b;->a:Landroid/content/Context;

    invoke-virtual {p0, v0}, Lcom/huawei/android/pushselfshow/c/b;->a(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/huawei/android/pushselfshow/c/b;->a:Landroid/content/Context;

    iget-object v1, p0, Lcom/huawei/android/pushselfshow/c/b;->b:Lcom/huawei/android/pushselfshow/a/a;

    invoke-static {v0, v1}, Lcom/huawei/android/pushselfshow/c/a;->a(Landroid/content/Context;Lcom/huawei/android/pushselfshow/a/a;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    invoke-super {p0}, Ljava/lang/Thread;->run()V

    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method
