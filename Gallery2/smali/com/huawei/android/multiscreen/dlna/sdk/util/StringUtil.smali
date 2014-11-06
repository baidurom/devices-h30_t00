.class public final Lcom/huawei/android/multiscreen/dlna/sdk/util/StringUtil;
.super Ljava/lang/Object;
.source "StringUtil.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 25
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static convertStringToDate(Ljava/lang/String;)Ljava/util/Date;
    .locals 3
    .parameter "arg"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    .prologue
    .line 113
    new-instance v1, Ljava/text/SimpleDateFormat;

    const-string v2, "yyyy-MM-dd"

    invoke-direct {v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v0

    .line 114
    .local v0, date:Ljava/util/Date;
    return-object v0
.end method

.method public static filterChar(C)Ljava/lang/String;
    .locals 3
    .parameter "c"

    .prologue
    .line 90
    const/4 v0, 0x0

    .line 91
    .local v0, str:Ljava/lang/String;
    sparse-switch p0, :sswitch_data_0

    .line 106
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 109
    :goto_0
    return-object v0

    .line 93
    :sswitch_0
    const-string v0, "\'\'"

    .line 94
    goto :goto_0

    .line 103
    :sswitch_1
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "/"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 104
    goto :goto_0

    .line 91
    nop

    :sswitch_data_0
    .sparse-switch
        0x25 -> :sswitch_1
        0x26 -> :sswitch_1
        0x27 -> :sswitch_0
        0x28 -> :sswitch_1
        0x29 -> :sswitch_1
        0x2f -> :sswitch_1
        0x5b -> :sswitch_1
        0x5d -> :sswitch_1
        0x5f -> :sswitch_1
    .end sparse-switch
.end method

.method public static final findFirstNotOf(Ljava/lang/String;Ljava/lang/String;)I
    .locals 6
    .parameter "str"
    .parameter "chars"

    .prologue
    const/4 v2, 0x0

    .line 64
    if-nez p0, :cond_0

    .line 65
    const/4 v0, -0x1

    .line 67
    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v3, v0, -0x1

    const/4 v4, 0x1

    move-object v0, p0

    move-object v1, p1

    move v5, v2

    invoke-static/range {v0 .. v5}, Lcom/huawei/android/multiscreen/dlna/sdk/util/StringUtil;->findOf(Ljava/lang/String;Ljava/lang/String;IIIZ)I

    move-result v0

    goto :goto_0
.end method

.method public static final findOf(Ljava/lang/String;Ljava/lang/String;IIIZ)I
    .locals 7
    .parameter "str"
    .parameter "chars"
    .parameter "startIdx"
    .parameter "endIdx"
    .parameter "offset"
    .parameter "isEqual"

    .prologue
    const/4 v6, -0x1

    .line 29
    if-nez p4, :cond_1

    move v2, v6

    .line 60
    :cond_0
    :goto_0
    return v2

    .line 31
    :cond_1
    if-eqz p1, :cond_2

    if-nez p0, :cond_3

    :cond_2
    move v2, v6

    .line 32
    goto :goto_0

    .line 34
    :cond_3
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    .line 35
    .local v0, charCnt:I
    move v2, p2

    .line 37
    .local v2, idx:I
    :goto_1
    if-lez p4, :cond_5

    .line 38
    if-ge p3, v2, :cond_6

    :cond_4
    move v2, v6

    .line 60
    goto :goto_0

    .line 41
    :cond_5
    if-lt v2, p3, :cond_4

    .line 44
    :cond_6
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v5

    .line 45
    .local v5, strc:C
    const/4 v4, 0x0

    .line 46
    .local v4, noEqualCnt:I
    const/4 v3, 0x0

    .local v3, n:I
    :goto_2
    if-lt v3, v0, :cond_7

    .line 58
    add-int/2addr v2, p4

    .line 36
    goto :goto_1

    .line 47
    :cond_7
    invoke-virtual {p1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 48
    .local v1, charc:C
    if-eqz p5, :cond_9

    .line 49
    if-eq v5, v1, :cond_0

    .line 46
    :cond_8
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 52
    :cond_9
    if-eq v5, v1, :cond_a

    .line 53
    add-int/lit8 v4, v4, 0x1

    .line 54
    :cond_a
    if-ne v4, v0, :cond_8

    goto :goto_0
.end method

.method public static final getDIDLITEHeader(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .parameter "browseRes"

    .prologue
    const/4 v3, 0x0

    .line 71
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 85
    :cond_0
    :goto_0
    return-object v3

    .line 74
    :cond_1
    const-string v4, "<DIDL-Lite"

    invoke-virtual {p0, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    .line 75
    .local v1, start:I
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {p0, v1, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 77
    .local v2, subString:Ljava/lang/String;
    if-eqz v2, :cond_0

    .line 80
    const-string v4, ">"

    invoke-virtual {v2, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    add-int/lit8 v0, v4, 0x1

    .line 82
    .local v0, end:I
    const/4 v4, -0x1

    if-eq v0, v4, :cond_0

    .line 85
    const/4 v3, 0x0

    invoke-virtual {v2, v3, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    goto :goto_0
.end method
