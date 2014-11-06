.class public Lcom/android/gallery3d/common/Utils;
.super Ljava/lang/Object;
.source "Utils.java"


# static fields
.field private static final DEBUG_TAG:Ljava/lang/String; = "GalleryDebug"

.field public static final HW_VOICE_TAG:Ljava/lang/String; = "HWVOICE_"

.field public static final HW_VOICE_TAG_LEN:I = 0x14

.field public static final IMAGE_COLUMN_HW_VOICE_OFFSET:Ljava/lang/String; = "hw_voice_offset"

.field private static final INITIALCRC:J = -0x1L

#the value of this static final field might be set in the static constructor
.field private static final IS_DEBUG_BUILD:Z = false

.field private static final MASK_STRING:Ljava/lang/String; = "********************************"

.field private static final POLY64REV:J = -0x6a536cd653b4364bL

.field private static final TAG:Ljava/lang/String; = "Utils"

.field private static sCrcTable:[J


# direct methods
.method static constructor <clinit>()V
    .locals 11

    .prologue
    const/16 v10, 0x100

    const/4 v7, 0x1

    .line 41
    new-array v6, v10, [J

    sput-object v6, Lcom/android/gallery3d/common/Utils;->sCrcTable:[J

    .line 43
    sget-object v6, Landroid/os/Build;->TYPE:Ljava/lang/String;

    const-string v8, "eng"

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_0

    sget-object v6, Landroid/os/Build;->TYPE:Ljava/lang/String;

    const-string v8, "userdebug"

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    :cond_0
    move v6, v7

    :goto_0
    sput-boolean v6, Lcom/android/gallery3d/common/Utils;->IS_DEBUG_BUILD:Z

    .line 151
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    if-ge v0, v10, :cond_4

    .line 152
    int-to-long v2, v0

    .line 153
    .local v2, part:J
    const/4 v1, 0x0

    .local v1, j:I
    :goto_2
    const/16 v6, 0x8

    if-ge v1, v6, :cond_3

    .line 154
    long-to-int v6, v2

    and-int/lit8 v6, v6, 0x1

    if-eqz v6, :cond_2

    const-wide v4, -0x6a536cd653b4364bL

    .line 155
    .local v4, x:J
    :goto_3
    shr-long v8, v2, v7

    xor-long v2, v8, v4

    .line 153
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 43
    .end local v0           #i:I
    .end local v1           #j:I
    .end local v2           #part:J
    .end local v4           #x:J
    :cond_1
    const/4 v6, 0x0

    goto :goto_0

    .line 154
    .restart local v0       #i:I
    .restart local v1       #j:I
    .restart local v2       #part:J
    :cond_2
    const-wide/16 v4, 0x0

    goto :goto_3

    .line 157
    :cond_3
    sget-object v6, Lcom/android/gallery3d/common/Utils;->sCrcTable:[J

    aput-wide v2, v6, v0

    .line 151
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 159
    .end local v1           #j:I
    .end local v2           #part:J
    :cond_4
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 34
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static assertTrue(Z)V
    .locals 1
    .parameter "cond"

    .prologue
    .line 54
    if-nez p0, :cond_0

    .line 55
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 57
    :cond_0
    return-void
.end method

.method public static ceilLog2(F)I
    .locals 2
    .parameter "value"

    .prologue
    .line 194
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    const/16 v1, 0x1f

    if-ge v0, v1, :cond_0

    .line 195
    const/4 v1, 0x1

    shl-int/2addr v1, v0

    int-to-float v1, v1

    cmpl-float v1, v1, p0

    if-ltz v1, :cond_1

    .line 197
    :cond_0
    return v0

    .line 194
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public static checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;)TT;"
        }
    .end annotation

    .prologue
    .line 71
    .local p0, object:Ljava/lang/Object;,"TT;"
    if-nez p0, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 72
    :cond_0
    return-object p0
.end method

.method public static clamp(FFF)F
    .locals 1
    .parameter "x"
    .parameter "min"
    .parameter "max"

    .prologue
    .line 113
    cmpl-float v0, p0, p2

    if-lez v0, :cond_0

    .line 115
    .end local p2
    :goto_0
    return p2

    .line 114
    .restart local p2
    :cond_0
    cmpg-float v0, p0, p1

    if-gez v0, :cond_1

    move p2, p1

    goto :goto_0

    :cond_1
    move p2, p0

    .line 115
    goto :goto_0
.end method

.method public static clamp(III)I
    .locals 0
    .parameter "x"
    .parameter "min"
    .parameter "max"

    .prologue
    .line 106
    if-le p0, p2, :cond_0

    .line 108
    .end local p2
    :goto_0
    return p2

    .line 107
    .restart local p2
    :cond_0
    if-ge p0, p1, :cond_1

    move p2, p1

    goto :goto_0

    :cond_1
    move p2, p0

    .line 108
    goto :goto_0
.end method

.method public static clamp(JJJ)J
    .locals 1
    .parameter "x"
    .parameter "min"
    .parameter "max"

    .prologue
    .line 120
    cmp-long v0, p0, p4

    if-lez v0, :cond_0

    .line 122
    .end local p4
    :goto_0
    return-wide p4

    .line 121
    .restart local p4
    :cond_0
    cmp-long v0, p0, p2

    if-gez v0, :cond_1

    move-wide p4, p2

    goto :goto_0

    :cond_1
    move-wide p4, p0

    .line 122
    goto :goto_0
.end method

.method public static closeSilently(Landroid/database/Cursor;)V
    .locals 3
    .parameter "cursor"

    .prologue
    .line 218
    if-eqz p0, :cond_0

    :try_start_0
    invoke-interface {p0}, Landroid/database/Cursor;->close()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 222
    :cond_0
    :goto_0
    return-void

    .line 219
    :catch_0
    move-exception v0

    .line 220
    .local v0, t:Ljava/lang/Throwable;
    const-string v1, "Utils"

    const-string v2, "fail to close"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public static closeSilently(Landroid/os/ParcelFileDescriptor;)V
    .locals 3
    .parameter "fd"

    .prologue
    .line 210
    if-eqz p0, :cond_0

    :try_start_0
    invoke-virtual {p0}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 214
    :cond_0
    :goto_0
    return-void

    .line 211
    :catch_0
    move-exception v0

    .line 212
    .local v0, t:Ljava/lang/Throwable;
    const-string v1, "Utils"

    const-string v2, "fail to close"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public static closeSilently(Ljava/io/Closeable;)V
    .locals 3
    .parameter "c"

    .prologue
    .line 180
    if-nez p0, :cond_0

    .line 186
    :goto_0
    return-void

    .line 182
    :cond_0
    :try_start_0
    invoke-interface {p0}, Ljava/io/Closeable;->close()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 183
    :catch_0
    move-exception v0

    .line 184
    .local v0, t:Ljava/lang/Throwable;
    const-string v1, "Utils"

    const-string v2, "close fail"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public static compare(JJ)I
    .locals 1
    .parameter "a"
    .parameter "b"

    .prologue
    .line 189
    cmp-long v0, p0, p2

    if-gez v0, :cond_0

    const/4 v0, -0x1

    :goto_0
    return v0

    :cond_0
    cmp-long v0, p0, p2

    if-nez v0, :cond_1

    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static copyOf([Ljava/lang/String;I)[Ljava/lang/String;
    .locals 3
    .parameter "source"
    .parameter "newSize"

    .prologue
    const/4 v2, 0x0

    .line 326
    new-array v0, p1, [Ljava/lang/String;

    .line 327
    .local v0, result:[Ljava/lang/String;
    array-length v1, p0

    invoke-static {v1, p1}, Ljava/lang/Math;->min(II)I

    move-result p1

    .line 328
    invoke-static {p0, v2, v0, v2, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 329
    return-object v0
.end method

.method public static final crc64Long(Ljava/lang/String;)J
    .locals 2
    .parameter "in"

    .prologue
    .line 142
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1

    .line 143
    :cond_0
    const-wide/16 v0, 0x0

    .line 145
    :goto_0
    return-wide v0

    :cond_1
    invoke-static {p0}, Lcom/android/gallery3d/common/Utils;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    invoke-static {v0}, Lcom/android/gallery3d/common/Utils;->crc64Long([B)J

    move-result-wide v0

    goto :goto_0
.end method

.method public static final crc64Long([B)J
    .locals 8
    .parameter "buffer"

    .prologue
    .line 162
    const-wide/16 v0, -0x1

    .line 163
    .local v0, crc:J
    const/4 v2, 0x0

    .local v2, k:I
    array-length v3, p0

    .local v3, n:I
    :goto_0
    if-ge v2, v3, :cond_0

    .line 164
    sget-object v4, Lcom/android/gallery3d/common/Utils;->sCrcTable:[J

    long-to-int v5, v0

    aget-byte v6, p0, v2

    xor-int/2addr v5, v6

    and-int/lit16 v5, v5, 0xff

    aget-wide v4, v4, v5

    const/16 v6, 0x8

    shr-long v6, v0, v6

    xor-long v0, v4, v6

    .line 163
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 166
    :cond_0
    return-wide v0
.end method

.method public static varargs debug(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 2
    .parameter "message"
    .parameter "args"

    .prologue
    .line 344
    const-string v0, "GalleryDebug"

    invoke-static {p0, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 345
    return-void
.end method

.method public static ensureNotNull(Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "value"

    .prologue
    .line 243
    if-nez p0, :cond_0

    const-string p0, ""

    .end local p0
    :cond_0
    return-object p0
.end method

.method public static equals(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 1
    .parameter "a"
    .parameter "b"

    .prologue
    .line 78
    if-eq p0, p1, :cond_2

    if-nez p0, :cond_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_1
    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    :cond_2
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static escapeXml(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .parameter "s"

    .prologue
    .line 291
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 292
    .local v3, sb:Ljava/lang/StringBuilder;
    const/4 v1, 0x0

    .local v1, i:I
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    .local v2, len:I
    :goto_0
    if-ge v1, v2, :cond_0

    .line 293
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 294
    .local v0, c:C
    sparse-switch v0, :sswitch_data_0

    .line 300
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 292
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 295
    :sswitch_0
    const-string v4, "&lt;"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 296
    :sswitch_1
    const-string v4, "&gt;"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 297
    :sswitch_2
    const-string v4, "&quot;"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 298
    :sswitch_3
    const-string v4, "&#039;"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 299
    :sswitch_4
    const-string v4, "&amp;"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 303
    .end local v0           #c:C
    :cond_0
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4

    .line 294
    :sswitch_data_0
    .sparse-switch
        0x22 -> :sswitch_2
        0x26 -> :sswitch_4
        0x27 -> :sswitch_3
        0x3c -> :sswitch_0
        0x3e -> :sswitch_1
    .end sparse-switch
.end method

.method public static varargs fail(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 2
    .parameter "message"
    .parameter "args"

    .prologue
    .line 65
    new-instance v0, Ljava/lang/AssertionError;

    array-length v1, p1

    if-nez v1, :cond_0

    .end local p0
    :goto_0
    invoke-direct {v0, p0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    .restart local p0
    :cond_0
    invoke-static {p0, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    goto :goto_0
.end method

.method public static floorLog2(F)I
    .locals 2
    .parameter "value"

    .prologue
    .line 202
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    const/16 v1, 0x1f

    if-ge v0, v1, :cond_0

    .line 203
    const/4 v1, 0x1

    shl-int/2addr v1, v0

    int-to-float v1, v1

    cmpl-float v1, v1, p0

    if-lez v1, :cond_1

    .line 205
    :cond_0
    add-int/lit8 v1, v0, -0x1

    return v1

    .line 202
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public static getBytes(Ljava/lang/String;)[B
    .locals 8
    .parameter "in"

    .prologue
    .line 170
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v7

    mul-int/lit8 v7, v7, 0x2

    new-array v6, v7, [B

    .line 171
    .local v6, result:[B
    const/4 v4, 0x0

    .line 172
    .local v4, output:I
    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    .local v0, arr$:[C
    array-length v3, v0

    .local v3, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    move v5, v4

    .end local v4           #output:I
    .local v5, output:I
    :goto_0
    if-ge v2, v3, :cond_0

    aget-char v1, v0, v2

    .line 173
    .local v1, ch:C
    add-int/lit8 v4, v5, 0x1

    .end local v5           #output:I
    .restart local v4       #output:I
    and-int/lit16 v7, v1, 0xff

    int-to-byte v7, v7

    aput-byte v7, v6, v5

    .line 174
    add-int/lit8 v5, v4, 0x1

    .end local v4           #output:I
    .restart local v5       #output:I
    shr-int/lit8 v7, v1, 0x8

    int-to-byte v7, v7

    aput-byte v7, v6, v4

    .line 172
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 176
    .end local v1           #ch:C
    :cond_0
    return-object v6
.end method

.method public static getHWVoiceTAG(J)Ljava/lang/String;
    .locals 6
    .parameter "length"

    .prologue
    .line 348
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "HWVOICE_"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {p0, p1}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 350
    .local v3, tag:Ljava/lang/String;
    new-instance v0, Ljava/lang/StringBuffer;

    const/16 v4, 0x14

    invoke-direct {v0, v4}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 351
    .local v0, buffer:Ljava/lang/StringBuffer;
    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 353
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->length()I

    move-result v4

    rsub-int/lit8 v2, v4, 0x14

    .line 354
    .local v2, left:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v2, :cond_0

    .line 355
    const/16 v4, 0x20

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 354
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 358
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4
.end method

.method public static getUserAgent(Landroid/content/Context;)Ljava/lang/String;
    .locals 6
    .parameter "context"

    .prologue
    const/4 v5, 0x0

    .line 309
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 313
    .local v1, packageInfo:Landroid/content/pm/PackageInfo;
    const-string v2, "%s/%s; %s/%s/%s/%s; %s/%s/%s"

    const/16 v3, 0x9

    new-array v3, v3, [Ljava/lang/Object;

    iget-object v4, v1, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    aput-object v4, v3, v5

    const/4 v4, 0x1

    iget-object v5, v1, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    aput-object v5, v3, v4

    const/4 v4, 0x2

    sget-object v5, Landroid/os/Build;->BRAND:Ljava/lang/String;

    aput-object v5, v3, v4

    const/4 v4, 0x3

    sget-object v5, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    aput-object v5, v3, v4

    const/4 v4, 0x4

    sget-object v5, Landroid/os/Build;->MODEL:Ljava/lang/String;

    aput-object v5, v3, v4

    const/4 v4, 0x5

    sget-object v5, Landroid/os/Build;->ID:Ljava/lang/String;

    aput-object v5, v3, v4

    const/4 v4, 0x6

    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x7

    sget-object v5, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    aput-object v5, v3, v4

    const/16 v4, 0x8

    sget-object v5, Landroid/os/Build$VERSION;->INCREMENTAL:Ljava/lang/String;

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 310
    .end local v1           #packageInfo:Landroid/content/pm/PackageInfo;
    :catch_0
    move-exception v0

    .line 311
    .local v0, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "getPackageInfo failed"

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public static getVoiceOffset(Ljava/io/FileInputStream;)J
    .locals 14
    .parameter "in"

    .prologue
    const-wide/16 v12, 0x14

    const/16 v11, 0x14

    const-wide/16 v7, -0x1

    .line 398
    if-nez p0, :cond_1

    .line 418
    :cond_0
    :goto_0
    return-wide v7

    .line 400
    :cond_1
    :try_start_0
    invoke-virtual {p0}, Ljava/io/FileInputStream;->available()I

    move-result v9

    int-to-long v3, v9

    .line 401
    .local v3, fileLength:J
    cmp-long v9, v3, v12

    if-ltz v9, :cond_0

    .line 403
    sub-long v9, v3, v12

    invoke-virtual {p0, v9, v10}, Ljava/io/FileInputStream;->skip(J)J

    .line 404
    const/16 v9, 0x14

    new-array v0, v9, [B

    .line 405
    .local v0, buffer:[B
    invoke-virtual {p0, v0}, Ljava/io/FileInputStream;->read([B)I

    move-result v1

    .line 406
    .local v1, byteread:I
    if-ne v1, v11, :cond_0

    .line 410
    new-instance v9, Ljava/lang/String;

    const-string v10, "ISO-8859-1"

    invoke-direct {v9, v0, v10}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    invoke-virtual {v9}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    .line 411
    .local v6, tag:Ljava/lang/String;
    const-string v9, "HWVOICE_"

    invoke-virtual {v6, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 412
    const-string v9, "_"

    invoke-virtual {v6, v9}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 413
    .local v5, split:[Ljava/lang/String;
    const/4 v9, 0x1

    aget-object v9, v5, v9

    invoke-static {v9}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Long;->longValue()J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v7

    goto :goto_0

    .line 415
    .end local v0           #buffer:[B
    .end local v1           #byteread:I
    .end local v3           #fileLength:J
    .end local v5           #split:[Ljava/lang/String;
    .end local v6           #tag:Ljava/lang/String;
    :catch_0
    move-exception v2

    .line 416
    .local v2, ex:Ljava/lang/Exception;
    const-string v9, "Utils"

    const-string v10, "fail to getVoiceOffset (InputParma FileInputStream)"

    invoke-static {v9, v10, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public static getVoiceOffset(Ljava/lang/String;)J
    .locals 12
    .parameter "path"

    .prologue
    .line 362
    const/4 v5, 0x0

    .line 364
    .local v5, randomFile:Ljava/io/RandomAccessFile;
    :try_start_0
    new-instance v6, Ljava/io/RandomAccessFile;

    const-string v9, "r"

    invoke-direct {v6, p0, v9}, Ljava/io/RandomAccessFile;-><init>(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3

    .line 365
    .end local v5           #randomFile:Ljava/io/RandomAccessFile;
    .local v6, randomFile:Ljava/io/RandomAccessFile;
    :try_start_1
    invoke-virtual {v6}, Ljava/io/RandomAccessFile;->length()J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_a
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_9

    move-result-wide v3

    .line 367
    .local v3, fileLength:J
    const-wide/16 v9, 0x14

    cmp-long v9, v3, v9

    if-gez v9, :cond_1

    const-wide/16 v9, -0x1

    .line 386
    if-eqz v6, :cond_0

    .line 388
    :try_start_2
    invoke-virtual {v6}, Ljava/io/RandomAccessFile;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_5

    :cond_0
    :goto_0
    move-object v5, v6

    .line 394
    .end local v3           #fileLength:J
    .end local v6           #randomFile:Ljava/io/RandomAccessFile;
    .restart local v5       #randomFile:Ljava/io/RandomAccessFile;
    :goto_1
    return-wide v9

    .line 369
    .end local v5           #randomFile:Ljava/io/RandomAccessFile;
    .restart local v3       #fileLength:J
    .restart local v6       #randomFile:Ljava/io/RandomAccessFile;
    :cond_1
    const-wide/16 v9, 0x14

    sub-long v9, v3, v9

    :try_start_3
    invoke-virtual {v6, v9, v10}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 370
    const/16 v9, 0x14

    new-array v0, v9, [B

    .line 371
    .local v0, buffer:[B
    invoke-virtual {v6, v0}, Ljava/io/RandomAccessFile;->read([B)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_a
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_9

    move-result v1

    .line 372
    .local v1, byteread:I
    const/16 v9, 0x14

    if-eq v1, v9, :cond_3

    .line 373
    const-wide/16 v9, -0x1

    .line 386
    if-eqz v6, :cond_2

    .line 388
    :try_start_4
    invoke-virtual {v6}, Ljava/io/RandomAccessFile;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_6

    :cond_2
    :goto_2
    move-object v5, v6

    .line 390
    .end local v6           #randomFile:Ljava/io/RandomAccessFile;
    .restart local v5       #randomFile:Ljava/io/RandomAccessFile;
    goto :goto_1

    .line 376
    .end local v5           #randomFile:Ljava/io/RandomAccessFile;
    .restart local v6       #randomFile:Ljava/io/RandomAccessFile;
    :cond_3
    :try_start_5
    new-instance v9, Ljava/lang/String;

    const-string v10, "ISO-8859-1"

    invoke-direct {v9, v0, v10}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    invoke-virtual {v9}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v8

    .line 377
    .local v8, tag:Ljava/lang/String;
    const-string v9, "HWVOICE_"

    invoke-virtual {v8, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_5

    .line 378
    const-string v9, "_"

    invoke-virtual {v8, v9}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    .line 379
    .local v7, split:[Ljava/lang/String;
    const/4 v9, 0x1

    aget-object v9, v7, v9

    invoke-static {v9}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Long;->longValue()J
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_a
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_9

    move-result-wide v9

    .line 386
    if-eqz v6, :cond_4

    .line 388
    :try_start_6
    invoke-virtual {v6}, Ljava/io/RandomAccessFile;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_7

    :cond_4
    :goto_3
    move-object v5, v6

    .line 390
    .end local v6           #randomFile:Ljava/io/RandomAccessFile;
    .restart local v5       #randomFile:Ljava/io/RandomAccessFile;
    goto :goto_1

    .line 386
    .end local v5           #randomFile:Ljava/io/RandomAccessFile;
    .end local v7           #split:[Ljava/lang/String;
    .restart local v6       #randomFile:Ljava/io/RandomAccessFile;
    :cond_5
    if-eqz v6, :cond_8

    .line 388
    :try_start_7
    invoke-virtual {v6}, Ljava/io/RandomAccessFile;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_0

    move-object v5, v6

    .line 394
    .end local v0           #buffer:[B
    .end local v1           #byteread:I
    .end local v3           #fileLength:J
    .end local v6           #randomFile:Ljava/io/RandomAccessFile;
    .end local v8           #tag:Ljava/lang/String;
    .restart local v5       #randomFile:Ljava/io/RandomAccessFile;
    :cond_6
    :goto_4
    const-wide/16 v9, -0x1

    goto :goto_1

    .line 389
    .end local v5           #randomFile:Ljava/io/RandomAccessFile;
    .restart local v0       #buffer:[B
    .restart local v1       #byteread:I
    .restart local v3       #fileLength:J
    .restart local v6       #randomFile:Ljava/io/RandomAccessFile;
    .restart local v8       #tag:Ljava/lang/String;
    :catch_0
    move-exception v9

    move-object v5, v6

    .line 390
    .end local v6           #randomFile:Ljava/io/RandomAccessFile;
    .restart local v5       #randomFile:Ljava/io/RandomAccessFile;
    goto :goto_4

    .line 381
    .end local v0           #buffer:[B
    .end local v1           #byteread:I
    .end local v3           #fileLength:J
    .end local v8           #tag:Ljava/lang/String;
    :catch_1
    move-exception v2

    .line 382
    .local v2, ex:Ljava/io/IOException;
    :goto_5
    :try_start_8
    const-string v9, "Utils"

    const-string v10, "fail to getVoiceOffset"

    invoke-static {v9, v10, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 386
    if-eqz v5, :cond_6

    .line 388
    :try_start_9
    invoke-virtual {v5}, Ljava/io/RandomAccessFile;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_2

    goto :goto_4

    .line 389
    :catch_2
    move-exception v9

    goto :goto_4

    .line 383
    .end local v2           #ex:Ljava/io/IOException;
    :catch_3
    move-exception v2

    .line 384
    .local v2, ex:Ljava/lang/Exception;
    :goto_6
    :try_start_a
    const-string v9, "Utils"

    const-string v10, "fail to getVoiceOffset"

    invoke-static {v9, v10, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    .line 386
    if-eqz v5, :cond_6

    .line 388
    :try_start_b
    invoke-virtual {v5}, Ljava/io/RandomAccessFile;->close()V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_4

    goto :goto_4

    .line 389
    :catch_4
    move-exception v9

    goto :goto_4

    .line 386
    .end local v2           #ex:Ljava/lang/Exception;
    :catchall_0
    move-exception v9

    :goto_7
    if-eqz v5, :cond_7

    .line 388
    :try_start_c
    invoke-virtual {v5}, Ljava/io/RandomAccessFile;->close()V
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_8

    .line 390
    :cond_7
    :goto_8
    throw v9

    .line 389
    .end local v5           #randomFile:Ljava/io/RandomAccessFile;
    .restart local v3       #fileLength:J
    .restart local v6       #randomFile:Ljava/io/RandomAccessFile;
    :catch_5
    move-exception v11

    goto :goto_0

    .restart local v0       #buffer:[B
    .restart local v1       #byteread:I
    :catch_6
    move-exception v11

    goto :goto_2

    .restart local v7       #split:[Ljava/lang/String;
    .restart local v8       #tag:Ljava/lang/String;
    :catch_7
    move-exception v11

    goto :goto_3

    .end local v0           #buffer:[B
    .end local v1           #byteread:I
    .end local v3           #fileLength:J
    .end local v6           #randomFile:Ljava/io/RandomAccessFile;
    .end local v7           #split:[Ljava/lang/String;
    .end local v8           #tag:Ljava/lang/String;
    .restart local v5       #randomFile:Ljava/io/RandomAccessFile;
    :catch_8
    move-exception v10

    goto :goto_8

    .line 386
    .end local v5           #randomFile:Ljava/io/RandomAccessFile;
    .restart local v6       #randomFile:Ljava/io/RandomAccessFile;
    :catchall_1
    move-exception v9

    move-object v5, v6

    .end local v6           #randomFile:Ljava/io/RandomAccessFile;
    .restart local v5       #randomFile:Ljava/io/RandomAccessFile;
    goto :goto_7

    .line 383
    .end local v5           #randomFile:Ljava/io/RandomAccessFile;
    .restart local v6       #randomFile:Ljava/io/RandomAccessFile;
    :catch_9
    move-exception v2

    move-object v5, v6

    .end local v6           #randomFile:Ljava/io/RandomAccessFile;
    .restart local v5       #randomFile:Ljava/io/RandomAccessFile;
    goto :goto_6

    .line 381
    .end local v5           #randomFile:Ljava/io/RandomAccessFile;
    .restart local v6       #randomFile:Ljava/io/RandomAccessFile;
    :catch_a
    move-exception v2

    move-object v5, v6

    .end local v6           #randomFile:Ljava/io/RandomAccessFile;
    .restart local v5       #randomFile:Ljava/io/RandomAccessFile;
    goto :goto_5

    .end local v5           #randomFile:Ljava/io/RandomAccessFile;
    .restart local v0       #buffer:[B
    .restart local v1       #byteread:I
    .restart local v3       #fileLength:J
    .restart local v6       #randomFile:Ljava/io/RandomAccessFile;
    .restart local v8       #tag:Ljava/lang/String;
    :cond_8
    move-object v5, v6

    .end local v6           #randomFile:Ljava/io/RandomAccessFile;
    .restart local v5       #randomFile:Ljava/io/RandomAccessFile;
    goto :goto_4
.end method

.method public static handleInterrruptedException(Ljava/lang/Throwable;)Z
    .locals 1
    .parameter "e"

    .prologue
    .line 279
    instance-of v0, p0, Ljava/io/InterruptedIOException;

    if-nez v0, :cond_0

    instance-of v0, p0, Ljava/lang/InterruptedException;

    if-eqz v0, :cond_1

    .line 281
    :cond_0
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    .line 282
    const/4 v0, 0x1

    .line 284
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static interpolateAngle(FFF)F
    .locals 5
    .parameter "source"
    .parameter "target"
    .parameter "progress"

    .prologue
    const/4 v4, 0x0

    const/high16 v3, 0x43b4

    .line 229
    sub-float v0, p1, p0

    .line 230
    .local v0, diff:F
    cmpg-float v2, v0, v4

    if-gez v2, :cond_0

    add-float/2addr v0, v3

    .line 231
    :cond_0
    const/high16 v2, 0x4334

    cmpl-float v2, v0, v2

    if-lez v2, :cond_1

    sub-float/2addr v0, v3

    .line 233
    :cond_1
    mul-float v2, v0, p2

    add-float v1, p0, v2

    .line 234
    .local v1, result:F
    cmpg-float v2, v1, v4

    if-gez v2, :cond_2

    add-float/2addr v1, v3

    .end local v1           #result:F
    :cond_2
    return v1
.end method

.method public static interpolateScale(FFF)F
    .locals 1
    .parameter "source"
    .parameter "target"
    .parameter "progress"

    .prologue
    .line 239
    sub-float v0, p1, p0

    mul-float/2addr v0, p2

    add-float/2addr v0, p0

    return v0
.end method

.method public static isNullOrEmpty(Ljava/lang/String;)Z
    .locals 1
    .parameter "exifMake"

    .prologue
    .line 265
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    return v0
.end method

.method public static isOpaque(I)Z
    .locals 2
    .parameter "color"

    .prologue
    .line 126
    ushr-int/lit8 v0, p0, 0x18

    const/16 v1, 0xff

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static maskDebugInfo(Ljava/lang/Object;)Ljava/lang/String;
    .locals 4
    .parameter "info"

    .prologue
    .line 336
    if-nez p0, :cond_1

    const/4 v1, 0x0

    .line 339
    :cond_0
    :goto_0
    return-object v1

    .line 337
    :cond_1
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 338
    .local v1, s:Ljava/lang/String;
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    const-string v3, "********************************"

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 339
    .local v0, length:I
    sget-boolean v2, Lcom/android/gallery3d/common/Utils;->IS_DEBUG_BUILD:Z

    if-nez v2, :cond_0

    const-string v2, "********************************"

    const/4 v3, 0x0

    invoke-virtual {v2, v3, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public static nextPowerOf2(I)I
    .locals 3
    .parameter "n"

    .prologue
    .line 86
    if-lez p0, :cond_0

    const/high16 v0, 0x4000

    if-le p0, v0, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "n is invalid: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 87
    :cond_1
    add-int/lit8 p0, p0, -0x1

    .line 88
    shr-int/lit8 v0, p0, 0x10

    or-int/2addr p0, v0

    .line 89
    shr-int/lit8 v0, p0, 0x8

    or-int/2addr p0, v0

    .line 90
    shr-int/lit8 v0, p0, 0x4

    or-int/2addr p0, v0

    .line 91
    shr-int/lit8 v0, p0, 0x2

    or-int/2addr p0, v0

    .line 92
    shr-int/lit8 v0, p0, 0x1

    or-int/2addr p0, v0

    .line 93
    add-int/lit8 v0, p0, 0x1

    return v0
.end method

.method public static parseFloatSafely(Ljava/lang/String;F)F
    .locals 1
    .parameter "content"
    .parameter "defaultValue"

    .prologue
    .line 247
    if-nez p0, :cond_0

    .line 251
    .end local p1
    :goto_0
    return p1

    .line 249
    .restart local p1
    :cond_0
    :try_start_0
    invoke-static {p0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result p1

    goto :goto_0

    .line 250
    :catch_0
    move-exception v0

    .line 251
    .local v0, e:Ljava/lang/NumberFormatException;
    goto :goto_0
.end method

.method public static parseIntSafely(Ljava/lang/String;I)I
    .locals 1
    .parameter "content"
    .parameter "defaultValue"

    .prologue
    .line 256
    if-nez p0, :cond_0

    .line 260
    .end local p1
    :goto_0
    return p1

    .line 258
    .restart local p1
    :cond_0
    :try_start_0
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result p1

    goto :goto_0

    .line 259
    :catch_0
    move-exception v0

    .line 260
    .local v0, e:Ljava/lang/NumberFormatException;
    goto :goto_0
.end method

.method public static prevPowerOf2(I)I
    .locals 1
    .parameter "n"

    .prologue
    .line 100
    if-gtz p0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 101
    :cond_0
    invoke-static {p0}, Ljava/lang/Integer;->highestOneBit(I)I

    move-result v0

    return v0
.end method

.method public static swap([III)V
    .locals 2
    .parameter "array"
    .parameter "i"
    .parameter "j"

    .prologue
    .line 130
    aget v0, p0, p1

    .line 131
    .local v0, temp:I
    aget v1, p0, p2

    aput v1, p0, p1

    .line 132
    aput v0, p0, p2

    .line 133
    return-void
.end method

.method public static waitWithoutInterrupt(Ljava/lang/Object;)V
    .locals 4
    .parameter "object"

    .prologue
    .line 270
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 274
    :goto_0
    return-void

    .line 271
    :catch_0
    move-exception v0

    .line 272
    .local v0, e:Ljava/lang/InterruptedException;
    const-string v1, "Utils"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "unexpected interrupt: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
