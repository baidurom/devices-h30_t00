.class public Landroid/telephony/SmsMessage;
.super Ljava/lang/Object;
.source "SmsMessage.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/telephony/SmsMessage$1;,
        Landroid/telephony/SmsMessage$SubmitPdu;,
        Landroid/telephony/SmsMessage$MessageClass;
    }
.end annotation


# static fields
.field public static final ENCODING_16BIT:I = 0x3

.field public static final ENCODING_7BIT:I = 0x1

.field public static final ENCODING_8BIT:I = 0x2

.field public static final ENCODING_KSC5601:I = 0x4

.field public static final ENCODING_UNKNOWN:I = 0x0

.field public static final FORMAT_3GPP:Ljava/lang/String; = "3gpp"

.field public static final FORMAT_3GPP2:Ljava/lang/String; = "3gpp2"

.field private static final LOG_TAG:Ljava/lang/String; = "SMS"

.field public static final MAX_USER_DATA_BYTES:I = 0x8c

.field public static final MAX_USER_DATA_BYTES_WITH_HEADER:I = 0x86

.field public static final MAX_USER_DATA_SEPTETS:I = 0xa0

.field public static final MAX_USER_DATA_SEPTETS_WITH_HEADER:I = 0x99

.field public static final MWI_EMAIL:I = 0x2

.field public static final MWI_FAX:I = 0x1

.field public static final MWI_OTHER:I = 0x3

.field public static final MWI_VIDEO:I = 0x7

.field public static final MWI_VOICEMAIL:I


# instance fields
.field private mSubId:I

.field public mWrappedSmsMessage:Lcom/android/internal/telephony/SmsMessageBase;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 762
    invoke-static {}, Landroid/telephony/SmsMessage;->getSmsFacility()Lcom/android/internal/telephony/SmsMessageBase;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/telephony/SmsMessage;-><init>(Lcom/android/internal/telephony/SmsMessageBase;)V

    .line 763
    return-void
.end method

.method private constructor <init>(Lcom/android/internal/telephony/SmsMessageBase;)V
    .locals 1
    .parameter "smb"

    .prologue
    .line 172
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 132
    const/4 v0, 0x0

    iput v0, p0, Landroid/telephony/SmsMessage;->mSubId:I

    .line 173
    iput-object p1, p0, Landroid/telephony/SmsMessage;->mWrappedSmsMessage:Lcom/android/internal/telephony/SmsMessageBase;

    .line 174
    return-void
.end method

.method public static calculateLength(Ljava/lang/CharSequence;Z)[I
    .locals 6
    .parameter "msgBody"
    .parameter "use7bitOnly"

    .prologue
    const/4 v5, 0x2

    .line 313
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v3

    invoke-virtual {v3}, Landroid/telephony/TelephonyManager;->getCurrentPhoneType()I

    move-result v0

    .line 314
    .local v0, activePhone:I
    if-ne v5, v0, :cond_0

    invoke-static {p0, p1}, Lcom/android/internal/telephony/cdma/SmsMessage;->calculateLength(Ljava/lang/CharSequence;Z)Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;

    move-result-object v2

    .line 317
    .local v2, ted:Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;
    :goto_0
    const/4 v3, 0x4

    new-array v1, v3, [I

    .line 318
    .local v1, ret:[I
    const/4 v3, 0x0

    iget v4, v2, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->msgCount:I

    aput v4, v1, v3

    .line 319
    const/4 v3, 0x1

    iget v4, v2, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->codeUnitCount:I

    aput v4, v1, v3

    .line 320
    iget v3, v2, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->codeUnitsRemaining:I

    aput v3, v1, v5

    .line 321
    const/4 v3, 0x3

    iget v4, v2, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->codeUnitSize:I

    aput v4, v1, v3

    .line 322
    return-object v1

    .line 314
    .end local v1           #ret:[I
    .end local v2           #ted:Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;
    :cond_0
    invoke-static {p0, p1}, Lcom/android/internal/telephony/gsm/SmsMessage;->calculateLength(Ljava/lang/CharSequence;Z)Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;

    move-result-object v2

    goto :goto_0
.end method

.method public static calculateLength(Ljava/lang/CharSequence;ZI)[I
    .locals 6
    .parameter "msgBody"
    .parameter "use7bitOnly"
    .parameter "encodingType"

    .prologue
    const/4 v5, 0x2

    .line 954
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v3

    invoke-virtual {v3}, Landroid/telephony/TelephonyManager;->getPhoneType()I

    move-result v0

    .line 955
    .local v0, activePhone:I
    if-ne v5, v0, :cond_0

    invoke-static {p0, p1, p2}, Lcom/android/internal/telephony/cdma/SmsMessage;->calculateLength(Ljava/lang/CharSequence;ZI)Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;

    move-result-object v2

    .line 958
    .local v2, ted:Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;
    :goto_0
    const/4 v3, 0x4

    new-array v1, v3, [I

    .line 959
    .local v1, ret:[I
    const/4 v3, 0x0

    iget v4, v2, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->msgCount:I

    aput v4, v1, v3

    .line 960
    const/4 v3, 0x1

    iget v4, v2, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->codeUnitCount:I

    aput v4, v1, v3

    .line 961
    iget v3, v2, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->codeUnitsRemaining:I

    aput v3, v1, v5

    .line 962
    const/4 v3, 0x3

    iget v4, v2, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->codeUnitSize:I

    aput v4, v1, v3

    .line 963
    return-object v1

    .line 955
    .end local v1           #ret:[I
    .end local v2           #ted:Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;
    :cond_0
    invoke-static {p0, p1, p2}, Lcom/android/internal/telephony/gsm/SmsMessage;->calculateLength(Ljava/lang/CharSequence;ZI)Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;

    move-result-object v2

    goto :goto_0
.end method

.method public static calculateLength(Ljava/lang/String;Z)[I
    .locals 1
    .parameter "messageBody"
    .parameter "use7bitOnly"

    .prologue
    .line 418
    invoke-static {p0, p1}, Landroid/telephony/SmsMessage;->calculateLength(Ljava/lang/CharSequence;Z)[I

    move-result-object v0

    return-object v0
.end method

.method public static createFromEfRecord(I[B)Landroid/telephony/SmsMessage;
    .locals 3
    .parameter "index"
    .parameter "data"

    .prologue
    .line 257
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getCurrentPhoneType()I

    move-result v0

    .line 259
    .local v0, activePhone:I
    const/4 v2, 0x2

    if-ne v2, v0, :cond_0

    .line 260
    invoke-static {p0, p1}, Lcom/android/internal/telephony/cdma/SmsMessage;->createFromEfRecord(I[B)Lcom/android/internal/telephony/cdma/SmsMessage;

    move-result-object v1

    .line 267
    .local v1, wrappedMessage:Lcom/android/internal/telephony/SmsMessageBase;
    :goto_0
    if-eqz v1, :cond_1

    new-instance v2, Landroid/telephony/SmsMessage;

    invoke-direct {v2, v1}, Landroid/telephony/SmsMessage;-><init>(Lcom/android/internal/telephony/SmsMessageBase;)V

    :goto_1
    return-object v2

    .line 263
    .end local v1           #wrappedMessage:Lcom/android/internal/telephony/SmsMessageBase;
    :cond_0
    invoke-static {p0, p1}, Lcom/android/internal/telephony/gsm/SmsMessage;->createFromEfRecord(I[B)Lcom/android/internal/telephony/gsm/SmsMessage;

    move-result-object v1

    .restart local v1       #wrappedMessage:Lcom/android/internal/telephony/SmsMessageBase;
    goto :goto_0

    .line 267
    :cond_1
    const/4 v2, 0x0

    goto :goto_1
.end method

.method public static createFromEfRecord(I[BLjava/lang/String;)Landroid/telephony/SmsMessage;
    .locals 5
    .parameter "index"
    .parameter "data"
    .parameter "format"

    .prologue
    const/4 v1, 0x0

    .line 1064
    const-string v2, "SMS"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "createFromEfRecord(): format "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1065
    const-string v2, "3gpp2"

    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1066
    invoke-static {p0, p1}, Lcom/android/internal/telephony/cdma/SmsMessage;->createFromEfRecord(I[B)Lcom/android/internal/telephony/cdma/SmsMessage;

    move-result-object v0

    .line 1076
    .local v0, wrappedMessage:Lcom/android/internal/telephony/SmsMessageBase;
    :goto_0
    if-eqz v0, :cond_0

    new-instance v1, Landroid/telephony/SmsMessage;

    invoke-direct {v1, v0}, Landroid/telephony/SmsMessage;-><init>(Lcom/android/internal/telephony/SmsMessageBase;)V

    .end local v0           #wrappedMessage:Lcom/android/internal/telephony/SmsMessageBase;
    :cond_0
    :goto_1
    return-object v1

    .line 1068
    :cond_1
    const-string v2, "3gpp"

    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1069
    invoke-static {p0, p1}, Lcom/android/internal/telephony/gsm/SmsMessage;->createFromEfRecord(I[B)Lcom/android/internal/telephony/gsm/SmsMessage;

    move-result-object v0

    .restart local v0       #wrappedMessage:Lcom/android/internal/telephony/SmsMessageBase;
    goto :goto_0

    .line 1072
    .end local v0           #wrappedMessage:Lcom/android/internal/telephony/SmsMessageBase;
    :cond_2
    const-string v2, "SMS"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "createFromEfRecord(): unsupported message format "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public static createFromPdu([B)Landroid/telephony/SmsMessage;
    .locals 3
    .parameter "pdu"

    .prologue
    .line 188
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getCurrentPhoneType()I

    move-result v0

    .line 189
    .local v0, activePhone:I
    const/4 v2, 0x2

    if-ne v2, v0, :cond_0

    const-string v1, "3gpp2"

    .line 191
    .local v1, format:Ljava/lang/String;
    :goto_0
    invoke-static {p0, v1}, Landroid/telephony/SmsMessage;->createFromPdu([BLjava/lang/String;)Landroid/telephony/SmsMessage;

    move-result-object v2

    return-object v2

    .line 189
    .end local v1           #format:Ljava/lang/String;
    :cond_0
    const-string v1, "3gpp"

    goto :goto_0
.end method

.method public static createFromPdu([BLjava/lang/String;)Landroid/telephony/SmsMessage;
    .locals 4
    .parameter "pdu"
    .parameter "format"

    .prologue
    .line 207
    const-string v1, "3gpp2"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 208
    invoke-static {p0}, Lcom/android/internal/telephony/cdma/SmsMessage;->createFromPdu([B)Lcom/android/internal/telephony/cdma/SmsMessage;

    move-result-object v0

    .line 216
    .local v0, wrappedMessage:Lcom/android/internal/telephony/SmsMessageBase;
    :goto_0
    new-instance v1, Landroid/telephony/SmsMessage;

    invoke-direct {v1, v0}, Landroid/telephony/SmsMessage;-><init>(Lcom/android/internal/telephony/SmsMessageBase;)V

    .end local v0           #wrappedMessage:Lcom/android/internal/telephony/SmsMessageBase;
    :goto_1
    return-object v1

    .line 209
    :cond_0
    const-string v1, "3gpp"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 210
    invoke-static {p0}, Lcom/android/internal/telephony/gsm/SmsMessage;->createFromPdu([B)Lcom/android/internal/telephony/gsm/SmsMessage;

    move-result-object v0

    .restart local v0       #wrappedMessage:Lcom/android/internal/telephony/SmsMessageBase;
    goto :goto_0

    .line 212
    .end local v0           #wrappedMessage:Lcom/android/internal/telephony/SmsMessageBase;
    :cond_1
    const-string v1, "SMS"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "createFromPdu(): unsupported message format "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 213
    const/4 v1, 0x0

    goto :goto_1
.end method

.method public static fragmentText(Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 12
    .parameter "text"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v11, 0x2

    const/4 v9, 0x0

    const/4 v10, 0x1

    .line 336
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v8

    invoke-virtual {v8}, Landroid/telephony/TelephonyManager;->getCurrentPhoneType()I

    move-result v0

    .line 337
    .local v0, activePhone:I
    if-ne v11, v0, :cond_4

    invoke-static {p0, v9}, Lcom/android/internal/telephony/cdma/SmsMessage;->calculateLength(Ljava/lang/CharSequence;Z)Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;

    move-result-object v5

    .line 346
    .local v5, ted:Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;
    :goto_0
    iget v8, v5, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->codeUnitSize:I

    if-ne v8, v10, :cond_8

    .line 348
    iget v8, v5, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->languageTable:I

    if-eqz v8, :cond_5

    iget v8, v5, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->languageShiftTable:I

    if-eqz v8, :cond_5

    .line 349
    const/4 v7, 0x7

    .line 356
    .local v7, udhLength:I
    :goto_1
    iget v8, v5, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->msgCount:I

    if-le v8, v10, :cond_0

    .line 357
    add-int/lit8 v7, v7, 0x6

    .line 360
    :cond_0
    if-eqz v7, :cond_1

    .line 361
    add-int/lit8 v7, v7, 0x1

    .line 364
    :cond_1
    rsub-int v1, v7, 0xa0

    .line 373
    .end local v7           #udhLength:I
    .local v1, limit:I
    :goto_2
    const/4 v3, 0x0

    .line 374
    .local v3, pos:I
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v6

    .line 375
    .local v6, textLen:I
    new-instance v4, Ljava/util/ArrayList;

    iget v8, v5, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->msgCount:I

    invoke-direct {v4, v8}, Ljava/util/ArrayList;-><init>(I)V

    .line 376
    .local v4, result:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    :goto_3
    if-ge v3, v6, :cond_3

    .line 377
    const/4 v2, 0x0

    .line 378
    .local v2, nextPos:I
    iget v8, v5, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->codeUnitSize:I

    if-ne v8, v10, :cond_b

    .line 379
    if-ne v0, v11, :cond_a

    iget v8, v5, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->msgCount:I

    if-ne v8, v10, :cond_a

    .line 381
    sub-int v8, v6, v3

    invoke-static {v1, v8}, Ljava/lang/Math;->min(II)I

    move-result v8

    add-int v2, v3, v8

    .line 390
    :goto_4
    if-le v2, v3, :cond_2

    if-le v2, v6, :cond_c

    .line 391
    :cond_2
    const-string v8, "SMS"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "fragmentText failed ("

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " >= "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " or "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " >= "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ")"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 398
    .end local v2           #nextPos:I
    :cond_3
    return-object v4

    .line 337
    .end local v1           #limit:I
    .end local v3           #pos:I
    .end local v4           #result:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v5           #ted:Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;
    .end local v6           #textLen:I
    :cond_4
    invoke-static {p0, v9}, Lcom/android/internal/telephony/gsm/SmsMessage;->calculateLength(Ljava/lang/CharSequence;Z)Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;

    move-result-object v5

    goto :goto_0

    .line 350
    .restart local v5       #ted:Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;
    :cond_5
    iget v8, v5, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->languageTable:I

    if-nez v8, :cond_6

    iget v8, v5, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->languageShiftTable:I

    if-eqz v8, :cond_7

    .line 351
    :cond_6
    const/4 v7, 0x4

    .restart local v7       #udhLength:I
    goto :goto_1

    .line 353
    .end local v7           #udhLength:I
    :cond_7
    const/4 v7, 0x0

    .restart local v7       #udhLength:I
    goto :goto_1

    .line 366
    .end local v7           #udhLength:I
    :cond_8
    iget v8, v5, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->msgCount:I

    if-le v8, v10, :cond_9

    .line 367
    const/16 v1, 0x86

    .restart local v1       #limit:I
    goto :goto_2

    .line 369
    .end local v1           #limit:I
    :cond_9
    const/16 v1, 0x8c

    .restart local v1       #limit:I
    goto :goto_2

    .line 384
    .restart local v2       #nextPos:I
    .restart local v3       #pos:I
    .restart local v4       #result:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v6       #textLen:I
    :cond_a
    iget v8, v5, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->languageTable:I

    iget v9, v5, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->languageShiftTable:I

    invoke-static {p0, v3, v1, v8, v9}, Lcom/android/internal/telephony/GsmAlphabet;->findGsmSeptetLimitIndex(Ljava/lang/String;IIII)I

    move-result v2

    goto :goto_4

    .line 388
    :cond_b
    div-int/lit8 v8, v1, 0x2

    sub-int v9, v6, v3

    invoke-static {v8, v9}, Ljava/lang/Math;->min(II)I

    move-result v8

    add-int v2, v3, v8

    goto :goto_4

    .line 395
    :cond_c
    invoke-virtual {p0, v3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 396
    move v3, v2

    .line 397
    goto/16 :goto_3
.end method

.method public static fragmentText(Ljava/lang/String;I)Ljava/util/ArrayList;
    .locals 12
    .parameter "text"
    .parameter "encodingType"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I)",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v11, 0x2

    const/4 v9, 0x0

    const/4 v10, 0x1

    .line 978
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v8

    invoke-virtual {v8}, Landroid/telephony/TelephonyManager;->getPhoneType()I

    move-result v0

    .line 979
    .local v0, activePhone:I
    if-ne v11, v0, :cond_4

    invoke-static {p0, v9, p1}, Lcom/android/internal/telephony/cdma/SmsMessage;->calculateLength(Ljava/lang/CharSequence;ZI)Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;

    move-result-object v5

    .line 988
    .local v5, ted:Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;
    :goto_0
    iget v8, v5, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->codeUnitSize:I

    if-ne v8, v10, :cond_8

    .line 990
    iget v8, v5, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->languageTable:I

    if-eqz v8, :cond_5

    iget v8, v5, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->languageShiftTable:I

    if-eqz v8, :cond_5

    .line 991
    const/4 v7, 0x7

    .line 998
    .local v7, udhLength:I
    :goto_1
    iget v8, v5, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->msgCount:I

    if-le v8, v10, :cond_0

    .line 999
    add-int/lit8 v7, v7, 0x6

    .line 1002
    :cond_0
    if-eqz v7, :cond_1

    .line 1003
    add-int/lit8 v7, v7, 0x1

    .line 1006
    :cond_1
    rsub-int v1, v7, 0xa0

    .line 1015
    .end local v7           #udhLength:I
    .local v1, limit:I
    :goto_2
    const/4 v3, 0x0

    .line 1016
    .local v3, pos:I
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v6

    .line 1017
    .local v6, textLen:I
    new-instance v4, Ljava/util/ArrayList;

    iget v8, v5, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->msgCount:I

    invoke-direct {v4, v8}, Ljava/util/ArrayList;-><init>(I)V

    .line 1018
    .local v4, result:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    :goto_3
    if-ge v3, v6, :cond_3

    .line 1019
    const/4 v2, 0x0

    .line 1020
    .local v2, nextPos:I
    iget v8, v5, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->codeUnitSize:I

    if-ne v8, v10, :cond_b

    .line 1021
    if-ne v0, v11, :cond_a

    iget v8, v5, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->msgCount:I

    if-ne v8, v10, :cond_a

    .line 1023
    sub-int v8, v6, v3

    invoke-static {v1, v8}, Ljava/lang/Math;->min(II)I

    move-result v8

    add-int v2, v3, v8

    .line 1032
    :goto_4
    if-le v2, v3, :cond_2

    if-le v2, v6, :cond_c

    .line 1033
    :cond_2
    const-string v8, "SMS"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "fragmentText failed ("

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " >= "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " or "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " >= "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ")"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1040
    .end local v2           #nextPos:I
    :cond_3
    return-object v4

    .line 979
    .end local v1           #limit:I
    .end local v3           #pos:I
    .end local v4           #result:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v5           #ted:Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;
    .end local v6           #textLen:I
    :cond_4
    invoke-static {p0, v9, p1}, Lcom/android/internal/telephony/gsm/SmsMessage;->calculateLength(Ljava/lang/CharSequence;ZI)Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;

    move-result-object v5

    goto :goto_0

    .line 992
    .restart local v5       #ted:Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;
    :cond_5
    iget v8, v5, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->languageTable:I

    if-nez v8, :cond_6

    iget v8, v5, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->languageShiftTable:I

    if-eqz v8, :cond_7

    .line 993
    :cond_6
    const/4 v7, 0x4

    .restart local v7       #udhLength:I
    goto :goto_1

    .line 995
    .end local v7           #udhLength:I
    :cond_7
    const/4 v7, 0x0

    .restart local v7       #udhLength:I
    goto :goto_1

    .line 1008
    .end local v7           #udhLength:I
    :cond_8
    iget v8, v5, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->msgCount:I

    if-le v8, v10, :cond_9

    .line 1009
    const/16 v1, 0x86

    .restart local v1       #limit:I
    goto :goto_2

    .line 1011
    .end local v1           #limit:I
    :cond_9
    const/16 v1, 0x8c

    .restart local v1       #limit:I
    goto :goto_2

    .line 1026
    .restart local v2       #nextPos:I
    .restart local v3       #pos:I
    .restart local v4       #result:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v6       #textLen:I
    :cond_a
    iget v8, v5, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->languageTable:I

    iget v9, v5, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->languageShiftTable:I

    invoke-static {p0, v3, v1, v8, v9}, Lcom/android/internal/telephony/GsmAlphabet;->findGsmSeptetLimitIndex(Ljava/lang/String;IIII)I

    move-result v2

    goto :goto_4

    .line 1030
    :cond_b
    div-int/lit8 v8, v1, 0x2

    sub-int v9, v6, v3

    invoke-static {v8, v9}, Ljava/lang/Math;->min(II)I

    move-result v8

    add-int v2, v3, v8

    goto :goto_4

    .line 1037
    :cond_c
    invoke-virtual {p0, v3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1038
    move v3, v2

    .line 1039
    goto/16 :goto_3
.end method

.method private static final getSmsFacility()Lcom/android/internal/telephony/SmsMessageBase;
    .locals 2

    .prologue
    .line 748
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getCurrentPhoneType()I

    move-result v0

    .line 749
    .local v0, activePhone:I
    const/4 v1, 0x2

    if-ne v1, v0, :cond_0

    .line 750
    new-instance v1, Lcom/android/internal/telephony/cdma/SmsMessage;

    invoke-direct {v1}, Lcom/android/internal/telephony/cdma/SmsMessage;-><init>()V

    .line 752
    :goto_0
    return-object v1

    :cond_0
    new-instance v1, Lcom/android/internal/telephony/gsm/SmsMessage;

    invoke-direct {v1}, Lcom/android/internal/telephony/gsm/SmsMessage;-><init>()V

    goto :goto_0
.end method

.method public static getSubmitPdu(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Landroid/telephony/SmsMessage$SubmitPdu;
    .locals 3
    .parameter "scAddress"
    .parameter "destinationAddress"
    .parameter "message"
    .parameter "statusReportRequested"

    .prologue
    .line 452
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getCurrentPhoneType()I

    move-result v0

    .line 454
    .local v0, activePhone:I
    const/4 v2, 0x2

    if-ne v2, v0, :cond_0

    .line 455
    const/4 v2, 0x0

    invoke-static {p0, p1, p2, p3, v2}, Lcom/android/internal/telephony/cdma/SmsMessage;->getSubmitPdu(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLcom/android/internal/telephony/SmsHeader;)Lcom/android/internal/telephony/cdma/SmsMessage$SubmitPdu;

    move-result-object v1

    .line 462
    .local v1, spb:Lcom/android/internal/telephony/SmsMessageBase$SubmitPduBase;
    :goto_0
    new-instance v2, Landroid/telephony/SmsMessage$SubmitPdu;

    invoke-direct {v2, v1}, Landroid/telephony/SmsMessage$SubmitPdu;-><init>(Lcom/android/internal/telephony/SmsMessageBase$SubmitPduBase;)V

    return-object v2

    .line 458
    .end local v1           #spb:Lcom/android/internal/telephony/SmsMessageBase$SubmitPduBase;
    :cond_0
    invoke-static {p0, p1, p2, p3}, Lcom/android/internal/telephony/gsm/SmsMessage;->getSubmitPdu(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;

    move-result-object v1

    .restart local v1       #spb:Lcom/android/internal/telephony/SmsMessageBase$SubmitPduBase;
    goto :goto_0
.end method

.method public static getSubmitPdu(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z[B)Landroid/telephony/SmsMessage$SubmitPdu;
    .locals 3
    .parameter "scAddress"
    .parameter "destinationAddress"
    .parameter "message"
    .parameter "statusReportRequested"
    .parameter "header"

    .prologue
    .line 801
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getCurrentPhoneType()I

    move-result v0

    .line 803
    .local v0, activePhone:I
    const/4 v2, 0x2

    if-ne v2, v0, :cond_0

    .line 804
    invoke-static {p4}, Lcom/android/internal/telephony/SmsHeader;->fromByteArray([B)Lcom/android/internal/telephony/SmsHeader;

    move-result-object v2

    invoke-static {p0, p1, p2, p3, v2}, Lcom/android/internal/telephony/cdma/SmsMessage;->getSubmitPdu(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLcom/android/internal/telephony/SmsHeader;)Lcom/android/internal/telephony/cdma/SmsMessage$SubmitPdu;

    move-result-object v1

    .line 812
    .local v1, spb:Lcom/android/internal/telephony/SmsMessageBase$SubmitPduBase;
    :goto_0
    new-instance v2, Landroid/telephony/SmsMessage$SubmitPdu;

    invoke-direct {v2, v1}, Landroid/telephony/SmsMessage$SubmitPdu;-><init>(Lcom/android/internal/telephony/SmsMessageBase$SubmitPduBase;)V

    return-object v2

    .line 808
    .end local v1           #spb:Lcom/android/internal/telephony/SmsMessageBase$SubmitPduBase;
    :cond_0
    invoke-static {p0, p1, p2, p3, p4}, Lcom/android/internal/telephony/gsm/SmsMessage;->getSubmitPdu(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z[B)Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;

    move-result-object v1

    .restart local v1       #spb:Lcom/android/internal/telephony/SmsMessageBase$SubmitPduBase;
    goto :goto_0
.end method

.method public static getSubmitPdu(Ljava/lang/String;Ljava/lang/String;SS[BZ)Landroid/telephony/SmsMessage$SubmitPdu;
    .locals 4
    .parameter "scAddress"
    .parameter "destinationAddress"
    .parameter "destinationPort"
    .parameter "originalPort"
    .parameter "data"
    .parameter "statusReportRequested"

    .prologue
    .line 830
    const-string v2, "SMS"

    const-string v3, "[xj android.telephony.SmsMessage getSubmitPdu"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 832
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getCurrentPhoneType()I

    move-result v0

    .line 834
    .local v0, activePhone:I
    const/4 v2, 0x2

    if-ne v2, v0, :cond_0

    .line 835
    invoke-static {p0, p1, p2, p4, p5}, Lcom/android/internal/telephony/cdma/SmsMessage;->getSubmitPdu(Ljava/lang/String;Ljava/lang/String;I[BZ)Lcom/android/internal/telephony/cdma/SmsMessage$SubmitPdu;

    move-result-object v1

    .line 842
    .local v1, spb:Lcom/android/internal/telephony/SmsMessageBase$SubmitPduBase;
    :goto_0
    if-eqz v1, :cond_1

    .line 843
    new-instance v2, Landroid/telephony/SmsMessage$SubmitPdu;

    invoke-direct {v2, v1}, Landroid/telephony/SmsMessage$SubmitPdu;-><init>(Lcom/android/internal/telephony/SmsMessageBase$SubmitPduBase;)V

    .line 845
    :goto_1
    return-object v2

    .line 838
    .end local v1           #spb:Lcom/android/internal/telephony/SmsMessageBase$SubmitPduBase;
    :cond_0
    invoke-static/range {p0 .. p5}, Lcom/android/internal/telephony/gsm/SmsMessage;->getSubmitPdu(Ljava/lang/String;Ljava/lang/String;II[BZ)Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;

    move-result-object v1

    .restart local v1       #spb:Lcom/android/internal/telephony/SmsMessageBase$SubmitPduBase;
    goto :goto_0

    .line 845
    :cond_1
    const/4 v2, 0x0

    goto :goto_1
.end method

.method public static getSubmitPdu(Ljava/lang/String;Ljava/lang/String;S[BZ)Landroid/telephony/SmsMessage$SubmitPdu;
    .locals 3
    .parameter "scAddress"
    .parameter "destinationAddress"
    .parameter "destinationPort"
    .parameter "data"
    .parameter "statusReportRequested"

    .prologue
    .line 482
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getCurrentPhoneType()I

    move-result v0

    .line 484
    .local v0, activePhone:I
    const/4 v2, 0x2

    if-ne v2, v0, :cond_0

    .line 485
    invoke-static {p0, p1, p2, p3, p4}, Lcom/android/internal/telephony/cdma/SmsMessage;->getSubmitPdu(Ljava/lang/String;Ljava/lang/String;I[BZ)Lcom/android/internal/telephony/cdma/SmsMessage$SubmitPdu;

    move-result-object v1

    .line 492
    .local v1, spb:Lcom/android/internal/telephony/SmsMessageBase$SubmitPduBase;
    :goto_0
    new-instance v2, Landroid/telephony/SmsMessage$SubmitPdu;

    invoke-direct {v2, v1}, Landroid/telephony/SmsMessage$SubmitPdu;-><init>(Lcom/android/internal/telephony/SmsMessageBase$SubmitPduBase;)V

    return-object v2

    .line 488
    .end local v1           #spb:Lcom/android/internal/telephony/SmsMessageBase$SubmitPduBase;
    :cond_0
    invoke-static {p0, p1, p2, p3, p4}, Lcom/android/internal/telephony/gsm/SmsMessage;->getSubmitPdu(Ljava/lang/String;Ljava/lang/String;I[BZ)Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;

    move-result-object v1

    .restart local v1       #spb:Lcom/android/internal/telephony/SmsMessageBase$SubmitPduBase;
    goto :goto_0
.end method

.method public static getTPLayerLengthForPDU(Ljava/lang/String;)I
    .locals 2
    .parameter "pdu"

    .prologue
    .line 278
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getCurrentPhoneType()I

    move-result v0

    .line 280
    .local v0, activePhone:I
    const/4 v1, 0x2

    if-ne v1, v0, :cond_0

    .line 281
    invoke-static {p0}, Lcom/android/internal/telephony/cdma/SmsMessage;->getTPLayerLengthForPDU(Ljava/lang/String;)I

    move-result v1

    .line 283
    :goto_0
    return v1

    :cond_0
    invoke-static {p0}, Lcom/android/internal/telephony/gsm/SmsMessage;->getTPLayerLengthForPDU(Ljava/lang/String;)I

    move-result v1

    goto :goto_0
.end method

.method public static newFromCDS(Ljava/lang/String;)Landroid/telephony/SmsMessage;
    .locals 2
    .parameter "line"

    .prologue
    .line 782
    invoke-static {p0}, Lcom/android/internal/telephony/gsm/SmsMessage;->newFromCDS(Ljava/lang/String;)Lcom/android/internal/telephony/gsm/SmsMessage;

    move-result-object v0

    .line 785
    .local v0, wrappedMessage:Lcom/android/internal/telephony/SmsMessageBase;
    new-instance v1, Landroid/telephony/SmsMessage;

    invoke-direct {v1, v0}, Landroid/telephony/SmsMessage;-><init>(Lcom/android/internal/telephony/SmsMessageBase;)V

    return-object v1
.end method

.method public static newFromCMT([Ljava/lang/String;)Landroid/telephony/SmsMessage;
    .locals 2
    .parameter "lines"

    .prologue
    .line 230
    invoke-static {p0}, Lcom/android/internal/telephony/gsm/SmsMessage;->newFromCMT([Ljava/lang/String;)Lcom/android/internal/telephony/gsm/SmsMessage;

    move-result-object v0

    .line 233
    .local v0, wrappedMessage:Lcom/android/internal/telephony/SmsMessageBase;
    new-instance v1, Landroid/telephony/SmsMessage;

    invoke-direct {v1, v0}, Landroid/telephony/SmsMessage;-><init>(Lcom/android/internal/telephony/SmsMessageBase;)V

    return-object v1
.end method

.method public static newFromCMTI(Ljava/lang/String;)Landroid/telephony/SmsMessage;
    .locals 3
    .parameter "line"

    .prologue
    .line 768
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getCurrentPhoneType()I

    move-result v0

    .line 770
    .local v0, activePhone:I
    const/4 v2, 0x2

    if-ne v2, v0, :cond_0

    .line 771
    invoke-static {p0}, Lcom/android/internal/telephony/cdma/SmsMessage;->newFromCMTI(Ljava/lang/String;)Lcom/android/internal/telephony/cdma/SmsMessage;

    move-result-object v1

    .line 776
    .local v1, wrappedMessage:Lcom/android/internal/telephony/SmsMessageBase;
    :goto_0
    new-instance v2, Landroid/telephony/SmsMessage;

    invoke-direct {v2, v1}, Landroid/telephony/SmsMessage;-><init>(Lcom/android/internal/telephony/SmsMessageBase;)V

    return-object v2

    .line 773
    .end local v1           #wrappedMessage:Lcom/android/internal/telephony/SmsMessageBase;
    :cond_0
    invoke-static {p0}, Lcom/android/internal/telephony/gsm/SmsMessage;->newFromCMTI(Ljava/lang/String;)Lcom/android/internal/telephony/gsm/SmsMessage;

    move-result-object v1

    .restart local v1       #wrappedMessage:Lcom/android/internal/telephony/SmsMessageBase;
    goto :goto_0
.end method

.method public static newFromParcel(Landroid/os/Parcel;)Landroid/telephony/SmsMessage;
    .locals 2
    .parameter "p"

    .prologue
    .line 239
    invoke-static {p0}, Lcom/android/internal/telephony/cdma/SmsMessage;->newFromParcel(Landroid/os/Parcel;)Lcom/android/internal/telephony/cdma/SmsMessage;

    move-result-object v0

    .line 242
    .local v0, wrappedMessage:Lcom/android/internal/telephony/SmsMessageBase;
    new-instance v1, Landroid/telephony/SmsMessage;

    invoke-direct {v1, v0}, Landroid/telephony/SmsMessage;-><init>(Lcom/android/internal/telephony/SmsMessageBase;)V

    return-object v1
.end method


# virtual methods
.method public getDestinationAddress()Ljava/lang/String;
    .locals 1

    .prologue
    .line 855
    iget-object v0, p0, Landroid/telephony/SmsMessage;->mWrappedSmsMessage:Lcom/android/internal/telephony/SmsMessageBase;

    invoke-virtual {v0}, Lcom/android/internal/telephony/SmsMessageBase;->getDestinationAddress()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDisplayMessageBody()Ljava/lang/String;
    .locals 1

    .prologue
    .line 547
    iget-object v0, p0, Landroid/telephony/SmsMessage;->mWrappedSmsMessage:Lcom/android/internal/telephony/SmsMessageBase;

    invoke-virtual {v0}, Lcom/android/internal/telephony/SmsMessageBase;->getDisplayMessageBody()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDisplayOriginatingAddress()Ljava/lang/String;
    .locals 1

    .prologue
    .line 517
    iget-object v0, p0, Landroid/telephony/SmsMessage;->mWrappedSmsMessage:Lcom/android/internal/telephony/SmsMessageBase;

    invoke-virtual {v0}, Lcom/android/internal/telephony/SmsMessageBase;->getDisplayOriginatingAddress()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getEmailBody()Ljava/lang/String;
    .locals 1

    .prologue
    .line 580
    iget-object v0, p0, Landroid/telephony/SmsMessage;->mWrappedSmsMessage:Lcom/android/internal/telephony/SmsMessageBase;

    invoke-virtual {v0}, Lcom/android/internal/telephony/SmsMessageBase;->getEmailBody()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getEmailFrom()Ljava/lang/String;
    .locals 1

    .prologue
    .line 588
    iget-object v0, p0, Landroid/telephony/SmsMessage;->mWrappedSmsMessage:Lcom/android/internal/telephony/SmsMessageBase;

    invoke-virtual {v0}, Lcom/android/internal/telephony/SmsMessageBase;->getEmailFrom()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getIndexOnIcc()I
    .locals 1

    .prologue
    .line 702
    iget-object v0, p0, Landroid/telephony/SmsMessage;->mWrappedSmsMessage:Lcom/android/internal/telephony/SmsMessageBase;

    invoke-virtual {v0}, Lcom/android/internal/telephony/SmsMessageBase;->getIndexOnIcc()I

    move-result v0

    return v0
.end method

.method public getIndexOnSim()I
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 693
    iget-object v0, p0, Landroid/telephony/SmsMessage;->mWrappedSmsMessage:Lcom/android/internal/telephony/SmsMessageBase;

    invoke-virtual {v0}, Lcom/android/internal/telephony/SmsMessageBase;->getIndexOnIcc()I

    move-result v0

    return v0
.end method

.method public getMessageBody()Ljava/lang/String;
    .locals 1

    .prologue
    .line 525
    iget-object v0, p0, Landroid/telephony/SmsMessage;->mWrappedSmsMessage:Lcom/android/internal/telephony/SmsMessageBase;

    invoke-virtual {v0}, Lcom/android/internal/telephony/SmsMessageBase;->getMessageBody()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getMessageClass()Landroid/telephony/SmsMessage$MessageClass;
    .locals 2

    .prologue
    .line 532
    sget-object v0, Landroid/telephony/SmsMessage$1;->$SwitchMap$com$android$internal$telephony$SmsConstants$MessageClass:[I

    iget-object v1, p0, Landroid/telephony/SmsMessage;->mWrappedSmsMessage:Lcom/android/internal/telephony/SmsMessageBase;

    invoke-virtual {v1}, Lcom/android/internal/telephony/SmsMessageBase;->getMessageClass()Lcom/android/internal/telephony/SmsConstants$MessageClass;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/telephony/SmsConstants$MessageClass;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 537
    sget-object v0, Landroid/telephony/SmsMessage$MessageClass;->UNKNOWN:Landroid/telephony/SmsMessage$MessageClass;

    :goto_0
    return-object v0

    .line 533
    :pswitch_0
    sget-object v0, Landroid/telephony/SmsMessage$MessageClass;->CLASS_0:Landroid/telephony/SmsMessage$MessageClass;

    goto :goto_0

    .line 534
    :pswitch_1
    sget-object v0, Landroid/telephony/SmsMessage$MessageClass;->CLASS_1:Landroid/telephony/SmsMessage$MessageClass;

    goto :goto_0

    .line 535
    :pswitch_2
    sget-object v0, Landroid/telephony/SmsMessage$MessageClass;->CLASS_2:Landroid/telephony/SmsMessage$MessageClass;

    goto :goto_0

    .line 536
    :pswitch_3
    sget-object v0, Landroid/telephony/SmsMessage$MessageClass;->CLASS_3:Landroid/telephony/SmsMessage$MessageClass;

    goto :goto_0

    .line 532
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public getMessageSimId()I
    .locals 1

    .prologue
    .line 1052
    const/4 v0, -0x1

    return v0
.end method

.method public getOriginatingAddress()Ljava/lang/String;
    .locals 1

    .prologue
    .line 508
    iget-object v0, p0, Landroid/telephony/SmsMessage;->mWrappedSmsMessage:Lcom/android/internal/telephony/SmsMessageBase;

    invoke-virtual {v0}, Lcom/android/internal/telephony/SmsMessageBase;->getOriginatingAddress()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPdu()[B
    .locals 1

    .prologue
    .line 654
    iget-object v0, p0, Landroid/telephony/SmsMessage;->mWrappedSmsMessage:Lcom/android/internal/telephony/SmsMessageBase;

    invoke-virtual {v0}, Lcom/android/internal/telephony/SmsMessageBase;->getPdu()[B

    move-result-object v0

    return-object v0
.end method

.method public getProtocolIdentifier()I
    .locals 1

    .prologue
    .line 595
    iget-object v0, p0, Landroid/telephony/SmsMessage;->mWrappedSmsMessage:Lcom/android/internal/telephony/SmsMessageBase;

    invoke-virtual {v0}, Lcom/android/internal/telephony/SmsMessageBase;->getProtocolIdentifier()I

    move-result v0

    return v0
.end method

.method public getPseudoSubject()Ljava/lang/String;
    .locals 1

    .prologue
    .line 555
    iget-object v0, p0, Landroid/telephony/SmsMessage;->mWrappedSmsMessage:Lcom/android/internal/telephony/SmsMessageBase;

    invoke-virtual {v0}, Lcom/android/internal/telephony/SmsMessageBase;->getPseudoSubject()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getServiceCenterAddress()Ljava/lang/String;
    .locals 1

    .prologue
    .line 500
    iget-object v0, p0, Landroid/telephony/SmsMessage;->mWrappedSmsMessage:Lcom/android/internal/telephony/SmsMessageBase;

    invoke-virtual {v0}, Lcom/android/internal/telephony/SmsMessageBase;->getServiceCenterAddress()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSmsc()[B
    .locals 8

    .prologue
    const/4 v4, 0x0

    const/4 v7, 0x0

    .line 879
    const-string v5, "SMS"

    const-string v6, "call getSmsc"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 880
    invoke-virtual {p0}, Landroid/telephony/SmsMessage;->getPdu()[B

    move-result-object v1

    .line 881
    .local v1, pdu:[B
    if-nez v1, :cond_0

    .line 882
    const-string v5, "SMS"

    const-string v6, "pdu is null"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object v2, v4

    .line 894
    :goto_0
    return-object v2

    .line 886
    :cond_0
    aget-byte v5, v1, v7

    and-int/lit16 v5, v5, 0xff

    add-int/lit8 v3, v5, 0x1

    .line 887
    .local v3, smsc_len:I
    new-array v2, v3, [B

    .line 890
    .local v2, smsc:[B
    const/4 v5, 0x0

    const/4 v6, 0x0

    :try_start_0
    array-length v7, v2

    invoke-static {v1, v5, v2, v6, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 892
    :catch_0
    move-exception v0

    .line 893
    .local v0, e:Ljava/lang/ArrayIndexOutOfBoundsException;
    const-string v5, "SMS"

    const-string v6, "Out of boudns"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v2, v4

    .line 894
    goto :goto_0
.end method

.method public getStatus()I
    .locals 1

    .prologue
    .line 722
    iget-object v0, p0, Landroid/telephony/SmsMessage;->mWrappedSmsMessage:Lcom/android/internal/telephony/SmsMessageBase;

    invoke-virtual {v0}, Lcom/android/internal/telephony/SmsMessageBase;->getStatus()I

    move-result v0

    return v0
.end method

.method public getStatusOnIcc()I
    .locals 1

    .prologue
    .line 683
    iget-object v0, p0, Landroid/telephony/SmsMessage;->mWrappedSmsMessage:Lcom/android/internal/telephony/SmsMessageBase;

    invoke-virtual {v0}, Lcom/android/internal/telephony/SmsMessageBase;->getStatusOnIcc()I

    move-result v0

    return v0
.end method

.method public getStatusOnSim()I
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 669
    iget-object v0, p0, Landroid/telephony/SmsMessage;->mWrappedSmsMessage:Lcom/android/internal/telephony/SmsMessageBase;

    invoke-virtual {v0}, Lcom/android/internal/telephony/SmsMessageBase;->getStatusOnIcc()I

    move-result v0

    return v0
.end method

.method public getSubId()I
    .locals 1

    .prologue
    .line 147
    iget v0, p0, Landroid/telephony/SmsMessage;->mSubId:I

    return v0
.end method

.method public getTimestampMillis()J
    .locals 2

    .prologue
    .line 562
    iget-object v0, p0, Landroid/telephony/SmsMessage;->mWrappedSmsMessage:Lcom/android/internal/telephony/SmsMessageBase;

    invoke-virtual {v0}, Lcom/android/internal/telephony/SmsMessageBase;->getTimestampMillis()J

    move-result-wide v0

    return-wide v0
.end method

.method public getTpdu()[B
    .locals 9

    .prologue
    const/4 v5, 0x0

    const/4 v8, 0x0

    .line 910
    const-string v6, "SMS"

    const-string v7, "call getTpdu"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 911
    invoke-virtual {p0}, Landroid/telephony/SmsMessage;->getPdu()[B

    move-result-object v1

    .line 912
    .local v1, pdu:[B
    if-nez v1, :cond_0

    .line 913
    const-string v6, "SMS"

    const-string v7, "pdu is null"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object v3, v5

    .line 926
    :goto_0
    return-object v3

    .line 917
    :cond_0
    aget-byte v6, v1, v8

    and-int/lit16 v6, v6, 0xff

    add-int/lit8 v2, v6, 0x1

    .line 918
    .local v2, smsc_len:I
    array-length v6, v1

    sub-int v4, v6, v2

    .line 919
    .local v4, tpdu_len:I
    new-array v3, v4, [B

    .line 922
    .local v3, tpdu:[B
    const/4 v6, 0x0

    :try_start_0
    array-length v7, v3

    invoke-static {v1, v2, v3, v6, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 924
    :catch_0
    move-exception v0

    .line 925
    .local v0, e:Ljava/lang/ArrayIndexOutOfBoundsException;
    const-string v6, "SMS"

    const-string v7, "Out of boudns"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v3, v5

    .line 926
    goto :goto_0
.end method

.method public getUserData()[B
    .locals 1

    .prologue
    .line 645
    iget-object v0, p0, Landroid/telephony/SmsMessage;->mWrappedSmsMessage:Lcom/android/internal/telephony/SmsMessageBase;

    invoke-virtual {v0}, Lcom/android/internal/telephony/SmsMessageBase;->getUserData()[B

    move-result-object v0

    return-object v0
.end method

.method public getUserDataHeader()Lcom/android/internal/telephony/SmsHeader;
    .locals 1

    .prologue
    .line 864
    iget-object v0, p0, Landroid/telephony/SmsMessage;->mWrappedSmsMessage:Lcom/android/internal/telephony/SmsMessageBase;

    invoke-virtual {v0}, Lcom/android/internal/telephony/SmsMessageBase;->getUserDataHeader()Lcom/android/internal/telephony/SmsHeader;

    move-result-object v0

    return-object v0
.end method

.method public isCphsMwiMessage()Z
    .locals 1

    .prologue
    .line 613
    iget-object v0, p0, Landroid/telephony/SmsMessage;->mWrappedSmsMessage:Lcom/android/internal/telephony/SmsMessageBase;

    invoke-virtual {v0}, Lcom/android/internal/telephony/SmsMessageBase;->isCphsMwiMessage()Z

    move-result v0

    return v0
.end method

.method public isEmail()Z
    .locals 1

    .prologue
    .line 572
    iget-object v0, p0, Landroid/telephony/SmsMessage;->mWrappedSmsMessage:Lcom/android/internal/telephony/SmsMessageBase;

    invoke-virtual {v0}, Lcom/android/internal/telephony/SmsMessageBase;->isEmail()Z

    move-result v0

    return v0
.end method

.method public isMWIClearMessage()Z
    .locals 1

    .prologue
    .line 621
    iget-object v0, p0, Landroid/telephony/SmsMessage;->mWrappedSmsMessage:Lcom/android/internal/telephony/SmsMessageBase;

    invoke-virtual {v0}, Lcom/android/internal/telephony/SmsMessageBase;->isMWIClearMessage()Z

    move-result v0

    return v0
.end method

.method public isMWISetMessage()Z
    .locals 1

    .prologue
    .line 629
    iget-object v0, p0, Landroid/telephony/SmsMessage;->mWrappedSmsMessage:Lcom/android/internal/telephony/SmsMessageBase;

    invoke-virtual {v0}, Lcom/android/internal/telephony/SmsMessageBase;->isMWISetMessage()Z

    move-result v0

    return v0
.end method

.method public isMwiDontStore()Z
    .locals 1

    .prologue
    .line 637
    iget-object v0, p0, Landroid/telephony/SmsMessage;->mWrappedSmsMessage:Lcom/android/internal/telephony/SmsMessageBase;

    invoke-virtual {v0}, Lcom/android/internal/telephony/SmsMessageBase;->isMwiDontStore()Z

    move-result v0

    return v0
.end method

.method public isReplace()Z
    .locals 1

    .prologue
    .line 603
    iget-object v0, p0, Landroid/telephony/SmsMessage;->mWrappedSmsMessage:Lcom/android/internal/telephony/SmsMessageBase;

    invoke-virtual {v0}, Lcom/android/internal/telephony/SmsMessageBase;->isReplace()Z

    move-result v0

    return v0
.end method

.method public isReplyPathPresent()Z
    .locals 1

    .prologue
    .line 737
    iget-object v0, p0, Landroid/telephony/SmsMessage;->mWrappedSmsMessage:Lcom/android/internal/telephony/SmsMessageBase;

    invoke-virtual {v0}, Lcom/android/internal/telephony/SmsMessageBase;->isReplyPathPresent()Z

    move-result v0

    return v0
.end method

.method public isStatusReportMessage()Z
    .locals 1

    .prologue
    .line 729
    iget-object v0, p0, Landroid/telephony/SmsMessage;->mWrappedSmsMessage:Lcom/android/internal/telephony/SmsMessageBase;

    invoke-virtual {v0}, Lcom/android/internal/telephony/SmsMessageBase;->isStatusReportMessage()Z

    move-result v0

    return v0
.end method

.method public setSubId(I)V
    .locals 0
    .parameter "subId"

    .prologue
    .line 139
    iput p1, p0, Landroid/telephony/SmsMessage;->mSubId:I

    .line 140
    return-void
.end method
