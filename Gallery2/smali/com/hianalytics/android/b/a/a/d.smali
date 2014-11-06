.class public abstract Lcom/hianalytics/android/b/a/a/d;
.super Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/io/InputStream;Ljava/io/OutputStream;)V
    .locals 4

    const/16 v3, 0x48

    new-instance v1, Ljava/io/PushbackInputStream;

    invoke-direct {v1, p1}, Ljava/io/PushbackInputStream;-><init>(Ljava/io/InputStream;)V

    :goto_0
    const/4 v0, 0x0

    :goto_1
    add-int/lit8 v2, v0, 0x4

    if-lt v2, v3, :cond_0

    add-int/lit8 v2, v0, 0x4

    if-ne v2, v3, :cond_1

    const/4 v0, 0x4

    :try_start_0
    invoke-virtual {p0, v1, p2, v0}, Lcom/hianalytics/android/b/a/a/d;->a(Ljava/io/PushbackInputStream;Ljava/io/OutputStream;I)V

    goto :goto_0

    :catch_0
    move-exception v0

    return-void

    :cond_0
    const/4 v2, 0x4

    invoke-virtual {p0, v1, p2, v2}, Lcom/hianalytics/android/b/a/a/d;->a(Ljava/io/PushbackInputStream;Ljava/io/OutputStream;I)V

    add-int/lit8 v0, v0, 0x4

    goto :goto_1

    :cond_1
    rsub-int/lit8 v0, v0, 0x48

    invoke-virtual {p0, v1, p2, v0}, Lcom/hianalytics/android/b/a/a/d;->a(Ljava/io/PushbackInputStream;Ljava/io/OutputStream;I)V
    :try_end_0
    .catch Lcom/hianalytics/android/b/a/a/c; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0
.end method

.method protected a(Ljava/io/PushbackInputStream;Ljava/io/OutputStream;I)V
    .locals 1

    new-instance v0, Lcom/hianalytics/android/b/a/a/c;

    invoke-direct {v0}, Lcom/hianalytics/android/b/a/a/c;-><init>()V

    throw v0
.end method
