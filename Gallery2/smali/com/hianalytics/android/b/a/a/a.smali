.class public final Lcom/hianalytics/android/b/a/a/a;
.super Lcom/hianalytics/android/b/a/a/d;


# static fields
.field private static final b:[C

.field private static final c:[B


# instance fields
.field a:[B


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/4 v0, 0x0

    const/16 v1, 0x40

    new-array v1, v1, [C

    fill-array-data v1, :array_0

    sput-object v1, Lcom/hianalytics/android/b/a/a/a;->b:[C

    const/16 v1, 0x100

    new-array v1, v1, [B

    sput-object v1, Lcom/hianalytics/android/b/a/a/a;->c:[B

    move v1, v0

    :goto_0
    const/16 v2, 0xff

    if-lt v1, v2, :cond_0

    :goto_1
    sget-object v1, Lcom/hianalytics/android/b/a/a/a;->b:[C

    array-length v1, v1

    if-lt v0, v1, :cond_1

    return-void

    :cond_0
    sget-object v2, Lcom/hianalytics/android/b/a/a/a;->c:[B

    const/4 v3, -0x1

    aput-byte v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    sget-object v1, Lcom/hianalytics/android/b/a/a/a;->c:[B

    sget-object v2, Lcom/hianalytics/android/b/a/a/a;->b:[C

    aget-char v2, v2, v0

    int-to-byte v3, v0

    aput-byte v3, v1, v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    nop

    :array_0
    .array-data 0x2
        0x41t 0x0t
        0x42t 0x0t
        0x43t 0x0t
        0x44t 0x0t
        0x45t 0x0t
        0x46t 0x0t
        0x47t 0x0t
        0x48t 0x0t
        0x49t 0x0t
        0x4at 0x0t
        0x4bt 0x0t
        0x4ct 0x0t
        0x4dt 0x0t
        0x4et 0x0t
        0x4ft 0x0t
        0x50t 0x0t
        0x51t 0x0t
        0x52t 0x0t
        0x53t 0x0t
        0x54t 0x0t
        0x55t 0x0t
        0x56t 0x0t
        0x57t 0x0t
        0x58t 0x0t
        0x59t 0x0t
        0x5at 0x0t
        0x61t 0x0t
        0x62t 0x0t
        0x63t 0x0t
        0x64t 0x0t
        0x65t 0x0t
        0x66t 0x0t
        0x67t 0x0t
        0x68t 0x0t
        0x69t 0x0t
        0x6at 0x0t
        0x6bt 0x0t
        0x6ct 0x0t
        0x6dt 0x0t
        0x6et 0x0t
        0x6ft 0x0t
        0x70t 0x0t
        0x71t 0x0t
        0x72t 0x0t
        0x73t 0x0t
        0x74t 0x0t
        0x75t 0x0t
        0x76t 0x0t
        0x77t 0x0t
        0x78t 0x0t
        0x79t 0x0t
        0x7at 0x0t
        0x30t 0x0t
        0x31t 0x0t
        0x32t 0x0t
        0x33t 0x0t
        0x34t 0x0t
        0x35t 0x0t
        0x36t 0x0t
        0x37t 0x0t
        0x38t 0x0t
        0x39t 0x0t
        0x2bt 0x0t
        0x2ft 0x0t
    .end array-data
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/hianalytics/android/b/a/a/d;-><init>()V

    const/4 v0, 0x4

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/hianalytics/android/b/a/a/a;->a:[B

    return-void
.end method


# virtual methods
.method protected final a(Ljava/io/PushbackInputStream;Ljava/io/OutputStream;I)V
    .locals 10

    const/4 v9, 0x1

    const/4 v3, 0x3

    const/4 v5, 0x0

    const/4 v1, 0x2

    const/4 v0, -0x1

    if-ge p3, v1, :cond_0

    new-instance v0, Lcom/hianalytics/android/b/a/a/b;

    const-string v1, "BASE64Decoder: Not enough bytes for an atom."

    invoke-direct {v0, v1}, Lcom/hianalytics/android/b/a/a/b;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    invoke-virtual {p1}, Ljava/io/PushbackInputStream;->read()I

    move-result v2

    if-ne v2, v0, :cond_1

    new-instance v0, Lcom/hianalytics/android/b/a/a/c;

    invoke-direct {v0}, Lcom/hianalytics/android/b/a/a/c;-><init>()V

    throw v0

    :cond_1
    const/16 v4, 0xa

    if-eq v2, v4, :cond_0

    const/16 v4, 0xd

    if-eq v2, v4, :cond_0

    iget-object v4, p0, Lcom/hianalytics/android/b/a/a/a;->a:[B

    int-to-byte v2, v2

    aput-byte v2, v4, v5

    iget-object v6, p0, Lcom/hianalytics/android/b/a/a/a;->a:[B

    add-int/lit8 v4, p3, -0x1

    move v2, v5

    :goto_0
    if-lt v2, v4, :cond_3

    move v2, v4

    :cond_2
    :goto_1
    if-ne v2, v0, :cond_5

    new-instance v0, Lcom/hianalytics/android/b/a/a/c;

    invoke-direct {v0}, Lcom/hianalytics/android/b/a/a/c;-><init>()V

    throw v0

    :cond_3
    invoke-virtual {p1}, Ljava/io/PushbackInputStream;->read()I

    move-result v7

    if-ne v7, v0, :cond_4

    if-nez v2, :cond_2

    move v2, v0

    goto :goto_1

    :cond_4
    add-int/lit8 v8, v2, 0x1

    int-to-byte v7, v7

    aput-byte v7, v6, v8

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_5
    if-le p3, v3, :cond_7

    iget-object v2, p0, Lcom/hianalytics/android/b/a/a/a;->a:[B

    aget-byte v2, v2, v3

    const/16 v4, 0x3d

    if-ne v2, v4, :cond_7

    move v2, v3

    :goto_2
    if-le v2, v1, :cond_6

    iget-object v4, p0, Lcom/hianalytics/android/b/a/a/a;->a:[B

    aget-byte v4, v4, v1

    const/16 v6, 0x3d

    if-ne v4, v6, :cond_6

    move v4, v1

    :goto_3
    packed-switch v4, :pswitch_data_0

    move v1, v0

    move v2, v0

    move v3, v0

    :goto_4
    packed-switch v4, :pswitch_data_1

    :goto_5
    return-void

    :pswitch_0
    sget-object v1, Lcom/hianalytics/android/b/a/a/a;->c:[B

    iget-object v2, p0, Lcom/hianalytics/android/b/a/a/a;->a:[B

    aget-byte v2, v2, v9

    and-int/lit16 v2, v2, 0xff

    aget-byte v1, v1, v2

    sget-object v2, Lcom/hianalytics/android/b/a/a/a;->c:[B

    iget-object v3, p0, Lcom/hianalytics/android/b/a/a/a;->a:[B

    aget-byte v3, v3, v5

    and-int/lit16 v3, v3, 0xff

    aget-byte v2, v2, v3

    move v3, v2

    move v2, v1

    move v1, v0

    goto :goto_4

    :pswitch_1
    sget-object v2, Lcom/hianalytics/android/b/a/a/a;->c:[B

    iget-object v3, p0, Lcom/hianalytics/android/b/a/a/a;->a:[B

    aget-byte v1, v3, v1

    and-int/lit16 v1, v1, 0xff

    aget-byte v1, v2, v1

    sget-object v2, Lcom/hianalytics/android/b/a/a/a;->c:[B

    iget-object v3, p0, Lcom/hianalytics/android/b/a/a/a;->a:[B

    aget-byte v3, v3, v9

    and-int/lit16 v3, v3, 0xff

    aget-byte v2, v2, v3

    sget-object v3, Lcom/hianalytics/android/b/a/a/a;->c:[B

    iget-object v6, p0, Lcom/hianalytics/android/b/a/a/a;->a:[B

    aget-byte v5, v6, v5

    and-int/lit16 v5, v5, 0xff

    aget-byte v3, v3, v5

    goto :goto_4

    :pswitch_2
    sget-object v0, Lcom/hianalytics/android/b/a/a/a;->c:[B

    iget-object v2, p0, Lcom/hianalytics/android/b/a/a/a;->a:[B

    aget-byte v2, v2, v3

    and-int/lit16 v2, v2, 0xff

    aget-byte v0, v0, v2

    sget-object v2, Lcom/hianalytics/android/b/a/a/a;->c:[B

    iget-object v3, p0, Lcom/hianalytics/android/b/a/a/a;->a:[B

    aget-byte v1, v3, v1

    and-int/lit16 v1, v1, 0xff

    aget-byte v1, v2, v1

    sget-object v2, Lcom/hianalytics/android/b/a/a/a;->c:[B

    iget-object v3, p0, Lcom/hianalytics/android/b/a/a/a;->a:[B

    aget-byte v3, v3, v9

    and-int/lit16 v3, v3, 0xff

    aget-byte v2, v2, v3

    sget-object v3, Lcom/hianalytics/android/b/a/a/a;->c:[B

    iget-object v6, p0, Lcom/hianalytics/android/b/a/a/a;->a:[B

    aget-byte v5, v6, v5

    and-int/lit16 v5, v5, 0xff

    aget-byte v3, v3, v5

    goto :goto_4

    :pswitch_3
    shl-int/lit8 v0, v3, 0x2

    and-int/lit16 v0, v0, 0xfc

    ushr-int/lit8 v1, v2, 0x4

    and-int/lit8 v1, v1, 0x3

    or-int/2addr v0, v1

    int-to-byte v0, v0

    invoke-virtual {p2, v0}, Ljava/io/OutputStream;->write(I)V

    goto :goto_5

    :pswitch_4
    shl-int/lit8 v0, v3, 0x2

    and-int/lit16 v0, v0, 0xfc

    ushr-int/lit8 v3, v2, 0x4

    and-int/lit8 v3, v3, 0x3

    or-int/2addr v0, v3

    int-to-byte v0, v0

    invoke-virtual {p2, v0}, Ljava/io/OutputStream;->write(I)V

    shl-int/lit8 v0, v2, 0x4

    and-int/lit16 v0, v0, 0xf0

    ushr-int/lit8 v1, v1, 0x2

    and-int/lit8 v1, v1, 0xf

    or-int/2addr v0, v1

    int-to-byte v0, v0

    invoke-virtual {p2, v0}, Ljava/io/OutputStream;->write(I)V

    goto/16 :goto_5

    :pswitch_5
    shl-int/lit8 v3, v3, 0x2

    and-int/lit16 v3, v3, 0xfc

    ushr-int/lit8 v4, v2, 0x4

    and-int/lit8 v4, v4, 0x3

    or-int/2addr v3, v4

    int-to-byte v3, v3

    invoke-virtual {p2, v3}, Ljava/io/OutputStream;->write(I)V

    shl-int/lit8 v2, v2, 0x4

    and-int/lit16 v2, v2, 0xf0

    ushr-int/lit8 v3, v1, 0x2

    and-int/lit8 v3, v3, 0xf

    or-int/2addr v2, v3

    int-to-byte v2, v2

    invoke-virtual {p2, v2}, Ljava/io/OutputStream;->write(I)V

    shl-int/lit8 v1, v1, 0x6

    and-int/lit16 v1, v1, 0xc0

    and-int/lit8 v0, v0, 0x3f

    or-int/2addr v0, v1

    int-to-byte v0, v0

    invoke-virtual {p2, v0}, Ljava/io/OutputStream;->write(I)V

    goto/16 :goto_5

    :cond_6
    move v4, v2

    goto/16 :goto_3

    :cond_7
    move v2, p3

    goto/16 :goto_2

    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method
