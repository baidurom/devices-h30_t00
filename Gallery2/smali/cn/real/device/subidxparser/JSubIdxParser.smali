.class public Lcn/real/device/subidxparser/JSubIdxParser;
.super Ljava/lang/Object;
.source "JSubIdxParser.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/real/device/subidxparser/JSubIdxParser$SomeParserThread;
    }
.end annotation


# static fields
.field private static final MAX_MAIN_PARSER:I = 0x32

.field private static final MAX_PARSER_THREAD:I = 0x2

.field private static final MAX_SIZE:I = 0x2000

.field private static mCancelThreads:Z

.field private static mCountsMainThread:J

.field private static mCountsPerThread:J

.field private static mIdxBuffer:Ljava/lang/String;


# instance fields
.field private mData:Lcn/real/device/subidxparser/IdxData;

.field private mFinshedParserThreads:I

.field private mIdxFilePath:Ljava/lang/String;

.field private mLangId:Ljava/lang/String;

.field private final mMultiThreadHandler:Landroid/os/Handler;

.field private final mMultiThreadTask:Ljava/lang/Runnable;

.field private mParserCounts:J

.field private mParserThreads:I

.field private mSubFilePath:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 14
    const-wide/16 v0, 0x0

    sput-wide v0, Lcn/real/device/subidxparser/JSubIdxParser;->mCountsPerThread:J

    .line 18
    const-wide/16 v0, 0x32

    sput-wide v0, Lcn/real/device/subidxparser/JSubIdxParser;->mCountsMainThread:J

    .line 25
    const/4 v0, 0x0

    sput-object v0, Lcn/real/device/subidxparser/JSubIdxParser;->mIdxBuffer:Ljava/lang/String;

    .line 26
    const/4 v0, 0x0

    sput-boolean v0, Lcn/real/device/subidxparser/JSubIdxParser;->mCancelThreads:Z

    .line 12
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 4
    .parameter "filePath"

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 29
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 19
    iput-object v2, p0, Lcn/real/device/subidxparser/JSubIdxParser;->mData:Lcn/real/device/subidxparser/IdxData;

    .line 20
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcn/real/device/subidxparser/JSubIdxParser;->mParserCounts:J

    .line 21
    iput v3, p0, Lcn/real/device/subidxparser/JSubIdxParser;->mParserThreads:I

    .line 22
    iput v3, p0, Lcn/real/device/subidxparser/JSubIdxParser;->mFinshedParserThreads:I

    .line 23
    iput-object v2, p0, Lcn/real/device/subidxparser/JSubIdxParser;->mSubFilePath:Ljava/lang/String;

    .line 24
    iput-object v2, p0, Lcn/real/device/subidxparser/JSubIdxParser;->mIdxFilePath:Ljava/lang/String;

    .line 27
    iput-object v2, p0, Lcn/real/device/subidxparser/JSubIdxParser;->mLangId:Ljava/lang/String;

    .line 264
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcn/real/device/subidxparser/JSubIdxParser;->mMultiThreadHandler:Landroid/os/Handler;

    .line 265
    new-instance v0, Lcn/real/device/subidxparser/JSubIdxParser$1;

    invoke-direct {v0, p0}, Lcn/real/device/subidxparser/JSubIdxParser$1;-><init>(Lcn/real/device/subidxparser/JSubIdxParser;)V

    iput-object v0, p0, Lcn/real/device/subidxparser/JSubIdxParser;->mMultiThreadTask:Ljava/lang/Runnable;

    .line 30
    iput-object p1, p0, Lcn/real/device/subidxparser/JSubIdxParser;->mSubFilePath:Ljava/lang/String;

    .line 31
    new-instance v0, Lcn/real/device/subidxparser/IdxData;

    invoke-direct {v0}, Lcn/real/device/subidxparser/IdxData;-><init>()V

    iput-object v0, p0, Lcn/real/device/subidxparser/JSubIdxParser;->mData:Lcn/real/device/subidxparser/IdxData;

    .line 32
    sput-boolean v3, Lcn/real/device/subidxparser/JSubIdxParser;->mCancelThreads:Z

    .line 33
    return-void
.end method

.method private ParserDisplayInfo(Ljava/lang/String;)V
    .locals 6
    .parameter "detail"

    .prologue
    .line 275
    const/4 v3, 0x0

    .line 276
    .local v3, tmp:Ljava/lang/String;
    new-instance v2, Ljava/util/StringTokenizer;

    const-string v4, "\n"

    invoke-direct {v2, p1, v4}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 277
    .local v2, stoke:Ljava/util/StringTokenizer;
    :cond_0
    :goto_0
    invoke-virtual {v2}, Ljava/util/StringTokenizer;->hasMoreElements()Z

    move-result v4

    if-nez v4, :cond_1

    .line 294
    return-void

    .line 278
    :cond_1
    invoke-virtual {v2}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    .line 279
    const-string v4, "#"

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 287
    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v4

    const-string v5, "langidx:"

    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 288
    const-string v4, "(\\d+)"

    invoke-static {v4}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v1

    .line 289
    .local v1, p:Ljava/util/regex/Pattern;
    invoke-virtual {v1, v3}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 290
    .local v0, m:Ljava/util/regex/Matcher;
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->find()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->group()Ljava/lang/String;

    move-result-object v4

    :goto_1
    iput-object v4, p0, Lcn/real/device/subidxparser/JSubIdxParser;->mLangId:Ljava/lang/String;

    goto :goto_0

    :cond_2
    const/4 v4, 0x0

    goto :goto_1
.end method

.method static synthetic access$0(Lcn/real/device/subidxparser/JSubIdxParser;)I
    .locals 1
    .parameter

    .prologue
    .line 21
    iget v0, p0, Lcn/real/device/subidxparser/JSubIdxParser;->mParserThreads:I

    return v0
.end method

.method static synthetic access$1()Ljava/lang/String;
    .locals 1

    .prologue
    .line 25
    sget-object v0, Lcn/real/device/subidxparser/JSubIdxParser;->mIdxBuffer:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$2()J
    .locals 2

    .prologue
    .line 18
    sget-wide v0, Lcn/real/device/subidxparser/JSubIdxParser;->mCountsMainThread:J

    return-wide v0
.end method

.method static synthetic access$3()J
    .locals 2

    .prologue
    .line 14
    sget-wide v0, Lcn/real/device/subidxparser/JSubIdxParser;->mCountsPerThread:J

    return-wide v0
.end method

.method static synthetic access$4(Lcn/real/device/subidxparser/JSubIdxParser;)Lcn/real/device/subidxparser/IdxData;
    .locals 1
    .parameter

    .prologue
    .line 19
    iget-object v0, p0, Lcn/real/device/subidxparser/JSubIdxParser;->mData:Lcn/real/device/subidxparser/IdxData;

    return-object v0
.end method

.method static synthetic access$5()Z
    .locals 1

    .prologue
    .line 26
    sget-boolean v0, Lcn/real/device/subidxparser/JSubIdxParser;->mCancelThreads:Z

    return v0
.end method

.method static synthetic access$6(Lcn/real/device/subidxparser/JSubIdxParser;)I
    .locals 1
    .parameter

    .prologue
    .line 22
    iget v0, p0, Lcn/real/device/subidxparser/JSubIdxParser;->mFinshedParserThreads:I

    return v0
.end method

.method static synthetic access$7(Lcn/real/device/subidxparser/JSubIdxParser;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 22
    iput p1, p0, Lcn/real/device/subidxparser/JSubIdxParser;->mFinshedParserThreads:I

    return-void
.end method


# virtual methods
.method public Close()V
    .locals 1

    .prologue
    .line 36
    const/4 v0, 0x1

    sput-boolean v0, Lcn/real/device/subidxparser/JSubIdxParser;->mCancelThreads:Z

    .line 37
    return-void
.end method

.method public DoParser()I
    .locals 32
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 58
    const/16 v23, -0x2

    .line 59
    .local v23, ret:I
    const/16 v19, -0x1

    .line 61
    .local v19, nRead:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/real/device/subidxparser/JSubIdxParser;->mSubFilePath:Ljava/lang/String;

    move-object/from16 v28, v0

    if-eqz v28, :cond_0

    .line 62
    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/real/device/subidxparser/JSubIdxParser;->mSubFilePath:Ljava/lang/String;

    move-object/from16 v28, v0

    const/16 v29, 0x2e

    invoke-virtual/range {v28 .. v29}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v12

    .line 63
    .local v12, iPos:I
    if-lez v12, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/real/device/subidxparser/JSubIdxParser;->mSubFilePath:Ljava/lang/String;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Ljava/lang/String;->length()I

    move-result v28

    add-int/lit8 v28, v28, -0x1

    move/from16 v0, v28

    if-ge v12, v0, :cond_0

    .line 64
    new-instance v28, Ljava/lang/StringBuilder;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/real/device/subidxparser/JSubIdxParser;->mSubFilePath:Ljava/lang/String;

    move-object/from16 v29, v0

    const/16 v30, 0x0

    move-object/from16 v0, v29

    move/from16 v1, v30

    invoke-virtual {v0, v1, v12}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v29

    invoke-static/range {v29 .. v29}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v29

    invoke-direct/range {v28 .. v29}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v29, ".idx"

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    move-object/from16 v0, v28

    move-object/from16 v1, p0

    iput-object v0, v1, Lcn/real/device/subidxparser/JSubIdxParser;->mIdxFilePath:Ljava/lang/String;

    .line 67
    .end local v12           #iPos:I
    :cond_0
    new-instance v26, Ljava/io/File;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/real/device/subidxparser/JSubIdxParser;->mSubFilePath:Ljava/lang/String;

    move-object/from16 v28, v0

    move-object/from16 v0, v26

    move-object/from16 v1, v28

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 68
    .local v26, subFile:Ljava/io/File;
    new-instance v13, Ljava/io/File;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/real/device/subidxparser/JSubIdxParser;->mIdxFilePath:Ljava/lang/String;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    invoke-direct {v13, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 69
    .local v13, idxFile:Ljava/io/File;
    invoke-virtual/range {v26 .. v26}, Ljava/io/File;->exists()Z

    move-result v28

    if-eqz v28, :cond_1

    invoke-virtual {v13}, Ljava/io/File;->exists()Z

    move-result v28

    if-nez v28, :cond_3

    .line 70
    :cond_1
    const/16 v23, -0x1

    .line 207
    .end local v23           #ret:I
    :cond_2
    :goto_0
    return v23

    .line 72
    .restart local v23       #ret:I
    :cond_3
    invoke-virtual/range {v26 .. v26}, Ljava/io/File;->length()J

    move-result-wide v28

    const-wide/16 v30, 0x0

    cmp-long v28, v28, v30

    if-lez v28, :cond_2

    invoke-virtual {v13}, Ljava/io/File;->length()J

    move-result-wide v28

    const-wide/16 v30, 0x0

    cmp-long v28, v28, v30

    if-lez v28, :cond_2

    .line 76
    const/4 v7, 0x0

    .line 77
    .local v7, fileFormat:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/real/device/subidxparser/JSubIdxParser;->mIdxFilePath:Ljava/lang/String;

    move-object/from16 v28, v0

    invoke-static/range {v28 .. v28}, Lcn/real/device/FileUtils;->GetFileFormat(Ljava/lang/String;)I

    move-result v28

    if-nez v28, :cond_2

    .line 78
    sget v28, Lcn/real/device/FileUtils;->mFileFormat:I

    packed-switch v28, :pswitch_data_0

    :pswitch_0
    goto :goto_0

    .line 86
    :pswitch_1
    const-string v7, "utf-8"

    .line 102
    :goto_1
    new-instance v18, Ljava/lang/StringBuffer;

    const/16 v28, 0x2000

    move-object/from16 v0, v18

    move/from16 v1, v28

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 103
    .local v18, mBuffer:Ljava/lang/StringBuffer;
    const/16 v28, 0x2000

    move/from16 v0, v28

    new-array v3, v0, [B

    .line 104
    .local v3, barray:[B
    new-instance v16, Ljava/io/BufferedInputStream;

    new-instance v28, Ljava/io/FileInputStream;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/real/device/subidxparser/JSubIdxParser;->mIdxFilePath:Ljava/lang/String;

    move-object/from16 v29, v0

    invoke-direct/range {v28 .. v29}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v16

    move-object/from16 v1, v28

    invoke-direct {v0, v1}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    .line 105
    .local v16, input:Ljava/io/BufferedInputStream;
    :goto_2
    const/16 v28, 0x0

    const/16 v29, 0x2000

    move-object/from16 v0, v16

    move/from16 v1, v28

    move/from16 v2, v29

    invoke-virtual {v0, v3, v1, v2}, Ljava/io/BufferedInputStream;->read([BII)I

    move-result v19

    const/16 v28, 0x2000

    move/from16 v0, v19

    move/from16 v1, v28

    if-eq v0, v1, :cond_4

    .line 108
    new-instance v28, Ljava/lang/String;

    const/16 v29, 0x0

    move-object/from16 v0, v28

    move/from16 v1, v29

    move/from16 v2, v19

    invoke-direct {v0, v3, v1, v2, v7}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    move-object/from16 v0, v18

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 109
    invoke-virtual/range {v16 .. v16}, Ljava/io/BufferedInputStream;->close()V

    .line 112
    const/16 v22, 0x0

    .line 113
    .local v22, prefix:Ljava/lang/String;
    const/16 v21, 0x0

    .line 114
    .local v21, posfix:Ljava/lang/String;
    const/4 v10, -0x1

    .local v10, firstPos:I
    const/16 v24, -0x1

    .line 115
    .local v24, secondPos:I
    const-string v28, "timestamp:"

    move-object/from16 v0, v18

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->indexOf(Ljava/lang/String;)I

    move-result v10

    if-lez v10, :cond_5

    .line 116
    const-string v22, "timestamp"

    .line 124
    :goto_3
    const/16 v28, 0x0

    move-object/from16 v0, v18

    move/from16 v1, v28

    invoke-virtual {v0, v1, v10}, Ljava/lang/StringBuffer;->substring(II)Ljava/lang/String;

    move-result-object v28

    move-object/from16 v0, p0

    move-object/from16 v1, v28

    invoke-direct {v0, v1}, Lcn/real/device/subidxparser/JSubIdxParser;->ParserDisplayInfo(Ljava/lang/String;)V

    .line 126
    const/4 v10, -0x1

    .line 127
    const-string v28, "index:"

    move-object/from16 v0, v18

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->indexOf(Ljava/lang/String;)I

    move-result v10

    if-lez v10, :cond_7

    .line 128
    const-string v22, "index: "

    .line 136
    :goto_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/real/device/subidxparser/JSubIdxParser;->mLangId:Ljava/lang/String;

    move-object/from16 v28, v0

    if-nez v28, :cond_9

    .line 137
    new-instance v28, Ljava/lang/StringBuilder;

    invoke-static/range {v22 .. v22}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v29

    invoke-direct/range {v28 .. v29}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v29, "0"

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    .line 138
    new-instance v28, Ljava/lang/StringBuilder;

    invoke-static/range {v22 .. v22}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v29

    invoke-direct/range {v28 .. v29}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v29, "1"

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    .line 144
    :goto_5
    move-object/from16 v0, v18

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->indexOf(Ljava/lang/String;)I

    move-result v10

    .line 145
    move-object/from16 v0, v18

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->indexOf(Ljava/lang/String;)I

    move-result v24

    .line 147
    if-gez v10, :cond_a

    .line 148
    sget-object v28, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v29, "####please Check the Index Tag in Idx File####"

    invoke-virtual/range {v28 .. v29}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 80
    .end local v3           #barray:[B
    .end local v10           #firstPos:I
    .end local v16           #input:Ljava/io/BufferedInputStream;
    .end local v18           #mBuffer:Ljava/lang/StringBuffer;
    .end local v21           #posfix:Ljava/lang/String;
    .end local v22           #prefix:Ljava/lang/String;
    .end local v24           #secondPos:I
    :pswitch_2
    const-string v7, "UTF-16"

    .line 81
    goto/16 :goto_1

    .line 83
    :pswitch_3
    const-string v7, "UTF-16BE"

    .line 84
    goto/16 :goto_1

    .line 89
    :pswitch_4
    const-string v7, "GB2312"

    .line 90
    goto/16 :goto_1

    .line 106
    .restart local v3       #barray:[B
    .restart local v16       #input:Ljava/io/BufferedInputStream;
    .restart local v18       #mBuffer:Ljava/lang/StringBuffer;
    :cond_4
    new-instance v28, Ljava/lang/String;

    move-object/from16 v0, v28

    invoke-direct {v0, v3, v7}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    move-object/from16 v0, v18

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto/16 :goto_2

    .line 117
    .restart local v10       #firstPos:I
    .restart local v21       #posfix:Ljava/lang/String;
    .restart local v22       #prefix:Ljava/lang/String;
    .restart local v24       #secondPos:I
    :cond_5
    const-string v28, "TIMESTAMP:"

    move-object/from16 v0, v18

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->indexOf(Ljava/lang/String;)I

    move-result v10

    if-lez v10, :cond_6

    .line 118
    const-string v22, "TIMESTAMP"

    goto/16 :goto_3

    .line 120
    :cond_6
    sget-object v28, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v29, "####please Check the timestamp Tag in Idx File####"

    invoke-virtual/range {v28 .. v29}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 129
    :cond_7
    const-string v28, "INDEX:"

    move-object/from16 v0, v18

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->indexOf(Ljava/lang/String;)I

    move-result v10

    if-lez v10, :cond_8

    .line 130
    const-string v22, "INDEX: "

    goto/16 :goto_4

    .line 132
    :cond_8
    sget-object v28, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v29, "####please Check the Language Index Tag in Idx File####"

    invoke-virtual/range {v28 .. v29}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 141
    :cond_9
    new-instance v28, Ljava/lang/StringBuilder;

    invoke-static/range {v22 .. v22}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v29

    invoke-direct/range {v28 .. v29}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/real/device/subidxparser/JSubIdxParser;->mLangId:Ljava/lang/String;

    move-object/from16 v29, v0

    invoke-static/range {v29 .. v29}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v29

    add-int/lit8 v29, v29, 0x1

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    .line 142
    new-instance v28, Ljava/lang/StringBuilder;

    invoke-static/range {v22 .. v22}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v29

    invoke-direct/range {v28 .. v29}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/real/device/subidxparser/JSubIdxParser;->mLangId:Ljava/lang/String;

    move-object/from16 v29, v0

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    goto/16 :goto_5

    .line 151
    :cond_a
    if-gez v24, :cond_c

    .line 152
    move-object/from16 v0, v18

    invoke-virtual {v0, v10}, Ljava/lang/StringBuffer;->substring(I)Ljava/lang/String;

    move-result-object v28

    sput-object v28, Lcn/real/device/subidxparser/JSubIdxParser;->mIdxBuffer:Ljava/lang/String;

    .line 159
    :goto_6
    new-instance v25, Ljava/util/StringTokenizer;

    sget-object v28, Lcn/real/device/subidxparser/JSubIdxParser;->mIdxBuffer:Ljava/lang/String;

    const-string v29, "\n"

    move-object/from16 v0, v25

    move-object/from16 v1, v28

    move-object/from16 v2, v29

    invoke-direct {v0, v1, v2}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 160
    .local v25, stoke:Ljava/util/StringTokenizer;
    invoke-virtual/range {v25 .. v25}, Ljava/util/StringTokenizer;->countTokens()I

    move-result v28

    move/from16 v0, v28

    int-to-long v0, v0

    move-wide/from16 v28, v0

    move-wide/from16 v0, v28

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcn/real/device/subidxparser/JSubIdxParser;->mParserCounts:J

    .line 161
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcn/real/device/subidxparser/JSubIdxParser;->mParserCounts:J

    move-wide/from16 v28, v0

    const-wide/16 v30, 0x32

    cmp-long v28, v28, v30

    if-gtz v28, :cond_d

    .line 162
    const/16 v28, 0x0

    move/from16 v0, v28

    move-object/from16 v1, p0

    iput v0, v1, Lcn/real/device/subidxparser/JSubIdxParser;->mParserThreads:I

    .line 163
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcn/real/device/subidxparser/JSubIdxParser;->mParserCounts:J

    move-wide/from16 v28, v0

    sput-wide v28, Lcn/real/device/subidxparser/JSubIdxParser;->mCountsMainThread:J

    .line 170
    :goto_7
    const/4 v11, 0x0

    .line 171
    .local v11, hasParseredNum:I
    const-wide/16 v14, 0x0

    .line 172
    .local v14, index:J
    const-wide/16 v8, 0x0

    .line 173
    .local v8, filePos:J
    const/4 v4, 0x0

    .line 174
    .local v4, detail:Ljava/lang/String;
    :cond_b
    invoke-virtual/range {v25 .. v25}, Ljava/util/StringTokenizer;->hasMoreElements()Z

    move-result v28

    if-nez v28, :cond_e

    .line 203
    :goto_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/real/device/subidxparser/JSubIdxParser;->mMultiThreadHandler:Landroid/os/Handler;

    move-object/from16 v28, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/real/device/subidxparser/JSubIdxParser;->mMultiThreadTask:Ljava/lang/Runnable;

    move-object/from16 v29, v0

    const-wide/16 v30, 0x64

    invoke-virtual/range {v28 .. v31}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 204
    sget-object v28, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v29, Ljava/lang/StringBuilder;

    const-string v30, "#########Parser completed from 0 to "

    invoke-direct/range {v29 .. v30}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v29

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v29

    const-string v30, "#########"

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    invoke-virtual/range {v28 .. v29}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 207
    const/16 v23, 0x0

    goto/16 :goto_0

    .line 155
    .end local v4           #detail:Ljava/lang/String;
    .end local v8           #filePos:J
    .end local v11           #hasParseredNum:I
    .end local v14           #index:J
    .end local v25           #stoke:Ljava/util/StringTokenizer;
    :cond_c
    move-object/from16 v0, v18

    move/from16 v1, v24

    invoke-virtual {v0, v10, v1}, Ljava/lang/StringBuffer;->substring(II)Ljava/lang/String;

    move-result-object v28

    sput-object v28, Lcn/real/device/subidxparser/JSubIdxParser;->mIdxBuffer:Ljava/lang/String;

    goto/16 :goto_6

    .line 166
    .restart local v25       #stoke:Ljava/util/StringTokenizer;
    :cond_d
    const/16 v28, 0x2

    move/from16 v0, v28

    move-object/from16 v1, p0

    iput v0, v1, Lcn/real/device/subidxparser/JSubIdxParser;->mParserThreads:I

    .line 167
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcn/real/device/subidxparser/JSubIdxParser;->mParserCounts:J

    move-wide/from16 v28, v0

    const-wide/16 v30, 0x32

    sub-long v28, v28, v30

    const-wide/16 v30, 0x2

    div-long v28, v28, v30

    const-wide/16 v30, 0x1

    add-long v28, v28, v30

    sput-wide v28, Lcn/real/device/subidxparser/JSubIdxParser;->mCountsPerThread:J

    goto :goto_7

    .line 175
    .restart local v4       #detail:Ljava/lang/String;
    .restart local v8       #filePos:J
    .restart local v11       #hasParseredNum:I
    .restart local v14       #index:J
    :cond_e
    add-int/lit8 v11, v11, 0x1

    .line 176
    invoke-virtual/range {v25 .. v25}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    .line 177
    const-string v28, "#"

    move-object/from16 v0, v28

    invoke-virtual {v4, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v28

    if-nez v28, :cond_b

    .line 179
    const-string v28, "(\\d\\d:\\d\\d:\\d\\d:\\d\\d\\d)"

    invoke-static/range {v28 .. v28}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v20

    .line 180
    .local v20, p:Ljava/util/regex/Pattern;
    move-object/from16 v0, v20

    invoke-virtual {v0, v4}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v17

    .line 181
    .local v17, m:Ljava/util/regex/Matcher;
    invoke-virtual/range {v17 .. v17}, Ljava/util/regex/Matcher;->find()Z

    move-result v28

    if-eqz v28, :cond_f

    invoke-virtual/range {v17 .. v17}, Ljava/util/regex/Matcher;->group()Ljava/lang/String;

    move-result-object v6

    .line 182
    .local v6, el:Ljava/lang/String;
    :goto_9
    if-eqz v6, :cond_b

    .line 185
    const-string v28, ":"

    move-object/from16 v0, v28

    invoke-virtual {v6, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v27

    .line 187
    .local v27, time:[Ljava/lang/String;
    const/16 v28, 0x0

    :try_start_0
    aget-object v28, v27, v28

    invoke-static/range {v28 .. v28}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v28

    move/from16 v0, v28

    mul-int/lit16 v0, v0, 0xe10

    move/from16 v28, v0

    const/16 v29, 0x1

    aget-object v29, v27, v29

    invoke-static/range {v29 .. v29}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v29

    mul-int/lit8 v29, v29, 0x3c

    add-int v28, v28, v29

    const/16 v29, 0x2

    aget-object v29, v27, v29

    invoke-static/range {v29 .. v29}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v29

    add-int v28, v28, v29

    move/from16 v0, v28

    mul-int/lit16 v0, v0, 0x3e8

    move/from16 v28, v0

    const/16 v29, 0x3

    aget-object v29, v27, v29

    invoke-static/range {v29 .. v29}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v29

    add-int v28, v28, v29

    move/from16 v0, v28

    int-to-long v14, v0

    .line 188
    const/16 v28, 0x3a

    move/from16 v0, v28

    invoke-virtual {v4, v0}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v28

    add-int/lit8 v28, v28, 0x1

    move/from16 v0, v28

    invoke-virtual {v4, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v28

    const/16 v29, 0x10

    invoke-static/range {v28 .. v29}, Ljava/lang/Long;->parseLong(Ljava/lang/String;I)J

    move-result-wide v8

    .line 193
    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/real/device/subidxparser/JSubIdxParser;->mData:Lcn/real/device/subidxparser/IdxData;

    move-object/from16 v28, v0

    new-instance v29, Lcn/real/device/subidxparser/IdxContent;

    move-object/from16 v0, v29

    invoke-direct {v0, v14, v15, v8, v9}, Lcn/real/device/subidxparser/IdxContent;-><init>(JJ)V

    invoke-virtual/range {v28 .. v29}, Lcn/real/device/subidxparser/IdxData;->insert(Lcn/real/device/subidxparser/IdxContent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 198
    int-to-long v0, v11

    move-wide/from16 v28, v0

    sget-wide v30, Lcn/real/device/subidxparser/JSubIdxParser;->mCountsMainThread:J

    cmp-long v28, v28, v30

    if-ltz v28, :cond_b

    goto/16 :goto_8

    .line 181
    .end local v6           #el:Ljava/lang/String;
    .end local v27           #time:[Ljava/lang/String;
    :cond_f
    const/4 v6, 0x0

    goto :goto_9

    .line 194
    .restart local v6       #el:Ljava/lang/String;
    .restart local v27       #time:[Ljava/lang/String;
    :catch_0
    move-exception v5

    .line 195
    .local v5, e:Ljava/lang/Exception;
    invoke-virtual {v5}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_8

    .line 78
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_4
    .end packed-switch
.end method

.method public declared-synchronized GetNextVobIDX(J)Lcn/real/device/subidxparser/IdxContent;
    .locals 3
    .parameter "nPos"

    .prologue
    .line 40
    monitor-enter p0

    const/4 v0, 0x0

    .line 41
    .local v0, temp:Lcn/real/device/subidxparser/IdxContent;
    :try_start_0
    invoke-virtual {p0}, Lcn/real/device/subidxparser/JSubIdxParser;->ParserDone()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 42
    iget-object v1, p0, Lcn/real/device/subidxparser/JSubIdxParser;->mData:Lcn/real/device/subidxparser/IdxData;

    invoke-virtual {v1, p1, p2}, Lcn/real/device/subidxparser/IdxData;->QueryNext(J)Lcn/real/device/subidxparser/IdxContent;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 47
    :goto_0
    monitor-exit p0

    return-object v0

    .line 44
    :cond_0
    :try_start_1
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v2, "####Still in Parsering,So Find It in TempMap####"

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 45
    iget-object v1, p0, Lcn/real/device/subidxparser/JSubIdxParser;->mData:Lcn/real/device/subidxparser/IdxData;

    invoke-virtual {v1, p1, p2}, Lcn/real/device/subidxparser/IdxData;->QueryNextFromTemp(J)Lcn/real/device/subidxparser/IdxContent;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v0

    goto :goto_0

    .line 40
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public ParserDone()Z
    .locals 2

    .prologue
    .line 51
    iget v0, p0, Lcn/real/device/subidxparser/JSubIdxParser;->mFinshedParserThreads:I

    iget v1, p0, Lcn/real/device/subidxparser/JSubIdxParser;->mParserThreads:I

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
