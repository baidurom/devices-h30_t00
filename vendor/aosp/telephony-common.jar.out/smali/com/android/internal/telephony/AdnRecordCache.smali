.class public final Lcom/android/internal/telephony/AdnRecordCache;
.super Landroid/os/Handler;
.source "AdnRecordCache.java"

# interfaces
.implements Lcom/android/internal/telephony/IccConstants;


# static fields
#the value of this static final field might be set in the static constructor
.field static final ADNRC_ENG:Z = false

.field static final EVENT_LOAD_ALL_ADN_LIKE_DONE:I = 0x1

.field static final EVENT_UPDATE_ADN_DONE:I = 0x2

.field static final LOG_TAG:Ljava/lang/String; = "GSM"

.field public static MAX_PHB_NAME_LENGTH:I = 0x0

.field public static MAX_PHB_NUMBER_ANR_LENGTH:I = 0x0

.field public static MAX_PHB_NUMBER_LENGTH:I = 0x0

.field public static final SIM_RECORD_OTHER_DATA:I = 0xe


# instance fields
.field adnLikeFiles:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/telephony/AdnRecord;",
            ">;>;"
        }
    .end annotation
.end field

.field adnLikeWaiters:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/os/Message;",
            ">;>;"
        }
    .end annotation
.end field

.field private mAdnMaxNameTagLength:I

.field private mFdnMaxNameTagLength:I

.field private mFh:Lcom/android/internal/telephony/IccFileHandler;

.field private mLock:Ljava/lang/Object;

.field private mLocked:Z

.field private mSimId:I

.field mSuccess:Z

.field public mUsimPhoneBookManager:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;

.field userWriteResponse:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Landroid/os/Message;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 90
    const-string v0, "eng"

    sget-object v1, Landroid/os/Build;->TYPE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lcom/android/internal/telephony/AdnRecordCache;->ADNRC_ENG:Z

    .line 125
    const/16 v0, 0x3c

    sput v0, Lcom/android/internal/telephony/AdnRecordCache;->MAX_PHB_NAME_LENGTH:I

    .line 126
    const/16 v0, 0x28

    sput v0, Lcom/android/internal/telephony/AdnRecordCache;->MAX_PHB_NUMBER_LENGTH:I

    .line 127
    const/16 v0, 0x14

    sput v0, Lcom/android/internal/telephony/AdnRecordCache;->MAX_PHB_NUMBER_ANR_LENGTH:I

    return-void
.end method

.method public constructor <init>(Lcom/android/internal/telephony/IccFileHandler;)V
    .locals 2
    .parameter "fh"

    .prologue
    const/4 v1, 0x0

    .line 134
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 103
    iput v1, p0, Lcom/android/internal/telephony/AdnRecordCache;->mAdnMaxNameTagLength:I

    .line 104
    iput v1, p0, Lcom/android/internal/telephony/AdnRecordCache;->mFdnMaxNameTagLength:I

    .line 108
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/AdnRecordCache;->adnLikeFiles:Landroid/util/SparseArray;

    .line 112
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/AdnRecordCache;->adnLikeWaiters:Landroid/util/SparseArray;

    .line 116
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/AdnRecordCache;->userWriteResponse:Landroid/util/SparseArray;

    .line 131
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/AdnRecordCache;->mLock:Ljava/lang/Object;

    .line 132
    iput-boolean v1, p0, Lcom/android/internal/telephony/AdnRecordCache;->mSuccess:Z

    .line 133
    iput-boolean v1, p0, Lcom/android/internal/telephony/AdnRecordCache;->mLocked:Z

    .line 135
    iput-object p1, p0, Lcom/android/internal/telephony/AdnRecordCache;->mFh:Lcom/android/internal/telephony/IccFileHandler;

    .line 136
    new-instance v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;

    iget-object v1, p0, Lcom/android/internal/telephony/AdnRecordCache;->mFh:Lcom/android/internal/telephony/IccFileHandler;

    invoke-direct {v0, v1, p0}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;-><init>(Lcom/android/internal/telephony/IccFileHandler;Lcom/android/internal/telephony/AdnRecordCache;)V

    iput-object v0, p0, Lcom/android/internal/telephony/AdnRecordCache;->mUsimPhoneBookManager:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;

    .line 137
    iget-object v0, p0, Lcom/android/internal/telephony/AdnRecordCache;->mFh:Lcom/android/internal/telephony/IccFileHandler;

    invoke-virtual {v0}, Lcom/android/internal/telephony/IccFileHandler;->getMySimId()I

    move-result v0

    iput v0, p0, Lcom/android/internal/telephony/AdnRecordCache;->mSimId:I

    .line 138
    return-void
.end method

.method private checkAdnRecord(ILcom/android/internal/telephony/AdnRecord;)V
    .locals 9
    .parameter "efid"
    .parameter "adn"

    .prologue
    const/16 v6, 0x6f3b

    const/16 v5, 0x6f3a

    const/16 v8, 0x14

    const/4 v7, 0x0

    .line 858
    const/4 v2, 0x0

    .line 860
    .local v2, maxNameTagLength:I
    :try_start_0
    iget v4, p0, Lcom/android/internal/telephony/AdnRecordCache;->mSimId:I

    invoke-direct {p0, v4}, Lcom/android/internal/telephony/AdnRecordCache;->getIccPhbService(I)Lcom/android/internal/telephony/IIccPhoneBook;

    move-result-object v1

    .line 861
    .local v1, iIccPhb:Lcom/android/internal/telephony/IIccPhoneBook;
    const/4 v3, 0x0

    .line 863
    .local v3, size:[I
    if-ne p1, v5, :cond_7

    .line 864
    iget v4, p0, Lcom/android/internal/telephony/AdnRecordCache;->mAdnMaxNameTagLength:I

    if-gtz v4, :cond_0

    if-eqz v1, :cond_0

    .line 866
    const/16 v4, 0x6f3a

    invoke-interface {v1, v4}, Lcom/android/internal/telephony/IIccPhoneBook;->getAdnRecordsSize(I)[I

    move-result-object v3

    .line 867
    if-eqz v3, :cond_0

    .line 868
    const/4 v4, 0x0

    aget v4, v3, v4

    add-int/lit8 v4, v4, -0xe

    iput v4, p0, Lcom/android/internal/telephony/AdnRecordCache;->mAdnMaxNameTagLength:I

    .line 869
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "checkAdnRecord AdnMaxNameTagLength ="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/android/internal/telephony/AdnRecordCache;->mAdnMaxNameTagLength:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/AdnRecordCache;->logd(Ljava/lang/String;)V

    .line 872
    :cond_0
    iget v2, p0, Lcom/android/internal/telephony/AdnRecordCache;->mAdnMaxNameTagLength:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 900
    .end local v1           #iIccPhb:Lcom/android/internal/telephony/IIccPhoneBook;
    .end local v3           #size:[I
    :cond_1
    :goto_0
    iget-object v4, p2, Lcom/android/internal/telephony/AdnRecord;->alphaTag:Ljava/lang/String;

    if-eqz v4, :cond_2

    .line 901
    iget-object v4, p2, Lcom/android/internal/telephony/AdnRecord;->alphaTag:Ljava/lang/String;

    invoke-static {v4}, Lcom/android/internal/telephony/AdnRecordCache;->replaceSpecialChar(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p2, Lcom/android/internal/telephony/AdnRecord;->alphaTag:Ljava/lang/String;

    .line 905
    :cond_2
    const-string v4, "GSM"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "updateAdnBySearch  simtag MaxLimit: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 906
    iget-object v4, p2, Lcom/android/internal/telephony/AdnRecord;->alphaTag:Ljava/lang/String;

    if-eqz v4, :cond_3

    if-lez v2, :cond_3

    iget-object v4, p2, Lcom/android/internal/telephony/AdnRecord;->alphaTag:Ljava/lang/String;

    invoke-static {v4}, Lcom/android/internal/telephony/AdnRecordCache;->getAlphaTagEncodingLength(Ljava/lang/String;)I

    move-result v4

    if-le v4, v2, :cond_3

    .line 908
    const-string v4, "GSM"

    const-string v5, "[updateAdnBySearch]  name Email is too long"

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 909
    iget-object v4, p2, Lcom/android/internal/telephony/AdnRecord;->alphaTag:Ljava/lang/String;

    invoke-virtual {p0, v4, v2}, Lcom/android/internal/telephony/AdnRecordCache;->getNameforSIM(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2, v4}, Lcom/android/internal/telephony/AdnRecord;->setAlphaTag(Ljava/lang/String;)V

    .line 912
    :cond_3
    iget-object v4, p2, Lcom/android/internal/telephony/AdnRecord;->number:Ljava/lang/String;

    if-eqz v4, :cond_4

    iget-object v4, p2, Lcom/android/internal/telephony/AdnRecord;->number:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-le v4, v8, :cond_4

    .line 913
    const-string v4, "GSM"

    const-string v5, "[updateAdnByIndex] Max length of  number is 20"

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 914
    iget-object v4, p2, Lcom/android/internal/telephony/AdnRecord;->number:Ljava/lang/String;

    invoke-virtual {v4, v7, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2, v4}, Lcom/android/internal/telephony/AdnRecord;->setNumber(Ljava/lang/String;)V

    .line 916
    :cond_4
    iget-object v4, p2, Lcom/android/internal/telephony/AdnRecord;->additionalNumber:Ljava/lang/String;

    if-eqz v4, :cond_5

    iget-object v4, p2, Lcom/android/internal/telephony/AdnRecord;->additionalNumber:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-le v4, v8, :cond_5

    .line 917
    const-string v4, "GSM"

    const-string v5, "[updateAdnByIndex] Max length of additionalNumber number is 20"

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 918
    iget-object v4, p2, Lcom/android/internal/telephony/AdnRecord;->additionalNumber:Ljava/lang/String;

    invoke-virtual {v4, v7, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2, v4}, Lcom/android/internal/telephony/AdnRecord;->setAnr(Ljava/lang/String;)V

    .line 920
    :cond_5
    iget-object v4, p2, Lcom/android/internal/telephony/AdnRecord;->emails:[Ljava/lang/String;

    if-eqz v4, :cond_6

    iget-object v4, p0, Lcom/android/internal/telephony/AdnRecordCache;->mUsimPhoneBookManager:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;

    iget-object v5, p2, Lcom/android/internal/telephony/AdnRecord;->emails:[Ljava/lang/String;

    invoke-virtual {v4, v5}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->checkEmailLength([Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_6

    .line 921
    const-string v4, "GSM"

    const-string v5, "[updateAdnByIndex] Email is too long"

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 922
    iget-object v4, p0, Lcom/android/internal/telephony/AdnRecordCache;->mUsimPhoneBookManager:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;

    iget-object v5, p2, Lcom/android/internal/telephony/AdnRecord;->emails:[Ljava/lang/String;

    invoke-virtual {v4, v5}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->getEmailforUSIM([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2, v4}, Lcom/android/internal/telephony/AdnRecord;->setEmails([Ljava/lang/String;)V

    .line 924
    :cond_6
    return-void

    .line 873
    .restart local v1       #iIccPhb:Lcom/android/internal/telephony/IIccPhoneBook;
    .restart local v3       #size:[I
    :cond_7
    const/16 v4, 0x4f30

    if-ne p1, v4, :cond_9

    .line 874
    :try_start_1
    iget v4, p0, Lcom/android/internal/telephony/AdnRecordCache;->mAdnMaxNameTagLength:I

    if-gtz v4, :cond_8

    if-eqz v1, :cond_8

    .line 876
    const/16 v4, 0xc0

    invoke-interface {v1, v4}, Lcom/android/internal/telephony/IIccPhoneBook;->getAdnRecordsSize(I)[I

    move-result-object v3

    .line 877
    if-eqz v3, :cond_8

    .line 878
    const/4 v4, 0x0

    aget v4, v3, v4

    add-int/lit8 v4, v4, -0xe

    iput v4, p0, Lcom/android/internal/telephony/AdnRecordCache;->mAdnMaxNameTagLength:I

    .line 879
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "checkAdnRecord USIM AdnMaxNameTagLength ="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/android/internal/telephony/AdnRecordCache;->mAdnMaxNameTagLength:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/AdnRecordCache;->logd(Ljava/lang/String;)V

    .line 882
    :cond_8
    iget v2, p0, Lcom/android/internal/telephony/AdnRecordCache;->mAdnMaxNameTagLength:I

    goto/16 :goto_0

    .line 883
    :cond_9
    if-ne p1, v6, :cond_1

    .line 884
    iget v4, p0, Lcom/android/internal/telephony/AdnRecordCache;->mFdnMaxNameTagLength:I

    if-gtz v4, :cond_a

    if-eqz v1, :cond_a

    .line 886
    const/16 v4, 0x6f3b

    invoke-interface {v1, v4}, Lcom/android/internal/telephony/IIccPhoneBook;->getAdnRecordsSize(I)[I

    move-result-object v3

    .line 887
    if-eqz v3, :cond_a

    .line 888
    const/4 v4, 0x0

    aget v4, v3, v4

    add-int/lit8 v4, v4, -0xe

    iput v4, p0, Lcom/android/internal/telephony/AdnRecordCache;->mFdnMaxNameTagLength:I

    .line 889
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "checkAdnRecord  FdnMaxNameTagLength ="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/android/internal/telephony/AdnRecordCache;->mFdnMaxNameTagLength:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/AdnRecordCache;->logd(Ljava/lang/String;)V

    .line 892
    :cond_a
    iget v2, p0, Lcom/android/internal/telephony/AdnRecordCache;->mFdnMaxNameTagLength:I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0

    .line 894
    .end local v1           #iIccPhb:Lcom/android/internal/telephony/IIccPhoneBook;
    .end local v3           #size:[I
    :catch_0
    move-exception v0

    .line 895
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 896
    const-string v4, "GSM"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getAdnRecordsSize error msg ="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method

.method private clearUserWriters()V
    .locals 4

    .prologue
    .line 172
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "clearUserWriters,mLocked "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/android/internal/telephony/AdnRecordCache;->mLocked:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/AdnRecordCache;->logd(Ljava/lang/String;)V

    .line 173
    iget-boolean v2, p0, Lcom/android/internal/telephony/AdnRecordCache;->mLocked:Z

    if-eqz v2, :cond_0

    .line 174
    iget-object v3, p0, Lcom/android/internal/telephony/AdnRecordCache;->mLock:Ljava/lang/Object;

    monitor-enter v3

    .line 175
    :try_start_0
    iget-object v2, p0, Lcom/android/internal/telephony/AdnRecordCache;->mLock:Ljava/lang/Object;

    invoke-virtual {v2}, Ljava/lang/Object;->notifyAll()V

    .line 176
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 177
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/android/internal/telephony/AdnRecordCache;->mLocked:Z

    .line 179
    :cond_0
    iget-object v2, p0, Lcom/android/internal/telephony/AdnRecordCache;->userWriteResponse:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v1

    .line 180
    .local v1, size:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v1, :cond_1

    .line 181
    iget-object v2, p0, Lcom/android/internal/telephony/AdnRecordCache;->userWriteResponse:Landroid/util/SparseArray;

    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/Message;

    const-string v3, "AdnCace reset"

    invoke-direct {p0, v2, v3}, Lcom/android/internal/telephony/AdnRecordCache;->sendErrorResponse(Landroid/os/Message;Ljava/lang/String;)V

    .line 180
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 176
    .end local v0           #i:I
    .end local v1           #size:I
    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2

    .line 183
    .restart local v0       #i:I
    .restart local v1       #size:I
    :cond_1
    iget-object v2, p0, Lcom/android/internal/telephony/AdnRecordCache;->userWriteResponse:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->clear()V

    .line 184
    return-void
.end method

.method private clearWaiters()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 162
    iget-object v4, p0, Lcom/android/internal/telephony/AdnRecordCache;->adnLikeWaiters:Landroid/util/SparseArray;

    invoke-virtual {v4}, Landroid/util/SparseArray;->size()I

    move-result v2

    .line 163
    .local v2, size:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v2, :cond_0

    .line 164
    iget-object v4, p0, Lcom/android/internal/telephony/AdnRecordCache;->adnLikeWaiters:Landroid/util/SparseArray;

    invoke-virtual {v4, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/ArrayList;

    .line 165
    .local v3, waiters:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/os/Message;>;"
    new-instance v0, Landroid/os/AsyncResult;

    new-instance v4, Ljava/lang/RuntimeException;

    const-string v5, "AdnCache reset"

    invoke-direct {v4, v5}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v6, v6, v4}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 166
    .local v0, ar:Landroid/os/AsyncResult;
    invoke-direct {p0, v3, v0}, Lcom/android/internal/telephony/AdnRecordCache;->notifyWaiters(Ljava/util/ArrayList;Landroid/os/AsyncResult;)V

    .line 163
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 168
    .end local v0           #ar:Landroid/os/AsyncResult;
    .end local v3           #waiters:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/os/Message;>;"
    :cond_0
    iget-object v4, p0, Lcom/android/internal/telephony/AdnRecordCache;->adnLikeWaiters:Landroid/util/SparseArray;

    invoke-virtual {v4}, Landroid/util/SparseArray;->clear()V

    .line 169
    return-void
.end method

.method private dumpAdnLikeFile()V
    .locals 8

    .prologue
    .line 768
    iget-object v6, p0, Lcom/android/internal/telephony/AdnRecordCache;->adnLikeFiles:Landroid/util/SparseArray;

    invoke-virtual {v6}, Landroid/util/SparseArray;->size()I

    move-result v5

    .line 769
    .local v5, size:I
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "dumpAdnLikeFile size "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v6}, Lcom/android/internal/telephony/AdnRecordCache;->logd(Ljava/lang/String;)V

    .line 771
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v5, :cond_2

    .line 772
    iget-object v6, p0, Lcom/android/internal/telephony/AdnRecordCache;->adnLikeFiles:Landroid/util/SparseArray;

    invoke-virtual {v6, v0}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v2

    .line 774
    .local v2, key:I
    iget-object v6, p0, Lcom/android/internal/telephony/AdnRecordCache;->adnLikeFiles:Landroid/util/SparseArray;

    invoke-virtual {v6, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/ArrayList;

    .line 775
    .local v4, records:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/internal/telephony/AdnRecord;>;"
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "dumpAdnLikeFile index "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " key "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "records size "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v6}, Lcom/android/internal/telephony/AdnRecordCache;->logd(Ljava/lang/String;)V

    .line 776
    const/4 v1, 0x0

    .local v1, j:I
    :goto_1
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ge v1, v6, :cond_1

    .line 777
    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/internal/telephony/AdnRecord;

    .line 779
    .local v3, record:Lcom/android/internal/telephony/AdnRecord;
    sget-boolean v6, Lcom/android/internal/telephony/AdnRecordCache;->ADNRC_ENG:Z

    if-eqz v6, :cond_0

    .line 780
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "adnLikeFiles["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "]="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v6}, Lcom/android/internal/telephony/AdnRecordCache;->logd(Ljava/lang/String;)V

    .line 776
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 771
    .end local v3           #record:Lcom/android/internal/telephony/AdnRecord;
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 785
    .end local v1           #j:I
    .end local v2           #key:I
    .end local v4           #records:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/internal/telephony/AdnRecord;>;"
    :cond_2
    return-void
.end method

.method public static getAlphaTagEncodingLength(Ljava/lang/String;)I
    .locals 31
    .parameter "alphaTag"

    .prologue
    .line 978
    const/4 v15, 0x0

    .line 979
    .local v15, gsm7Len:I
    const/4 v14, 0x0

    .line 980
    .local v14, gsm7Converts:I
    const/16 v21, 0x1

    .line 981
    .local v21, ucs80Len:I
    const/16 v20, 0x0

    .line 982
    .local v20, ucs80Converts:I
    const/16 v23, 0x3

    .line 983
    .local v23, ucs81Len:I
    const/16 v22, 0x0

    .line 984
    .local v22, ucs81Converts:I
    const/16 v25, 0x4

    .line 985
    .local v25, ucs82Len:I
    const/16 v24, 0x0

    .line 994
    .local v24, ucs82Converts:I
    const/16 v6, 0x20

    .line 995
    .local v6, baser81:C
    const/16 v8, 0x20

    .line 996
    .local v8, baser82Low:C
    const/16 v7, 0x20

    .line 997
    .local v7, baser82High:C
    const/16 v26, 0x1

    .line 998
    .local v26, useGsm7:Z
    const/16 v27, 0x1

    .line 999
    .local v27, usePattern81:Z
    const/16 v18, 0x0

    .line 1000
    .local v18, setPattern81:Z
    const/16 v28, 0x1

    .line 1001
    .local v28, usePattern82:Z
    const/16 v19, 0x0

    .line 1003
    .local v19, setPattern82:Z
    const/4 v2, 0x0

    .line 1004
    .local v2, SIM_CODING_GSM7:I
    const/16 v3, 0x80

    .line 1005
    .local v3, SIM_CODING_PURE_UCS2:I
    const/16 v4, 0x81

    .line 1006
    .local v4, SIM_CODING_UCS2_HALF_PAGE_1:I
    const/16 v5, 0x82

    .line 1008
    .local v5, SIM_CODING_UCS2_HALF_PAGE_2:I
    if-nez p0, :cond_1

    .line 1009
    const-string v29, "GSM"

    const-string v30, "[getAlphaTagEncodingLength] Empty alpha tag"

    invoke-static/range {v29 .. v30}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1010
    const/4 v10, 0x0

    .line 1103
    :cond_0
    :goto_0
    return v10

    .line 1014
    :cond_1
    invoke-virtual/range {p0 .. p0}, Ljava/lang/String;->length()I

    move-result v17

    .line 1015
    .local v17, lenTag:I
    const/16 v16, 0x0

    .local v16, index:I
    :goto_1
    move/from16 v0, v16

    move/from16 v1, v17

    if-ge v0, v1, :cond_f

    .line 1016
    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v12

    .line 1017
    .local v12, c:C
    invoke-static {v12}, Lcom/android/internal/telephony/GsmAlphabet;->UCStoGsm7(C)I

    move-result v13

    .line 1018
    .local v13, currGsm7Length:I
    const/16 v29, -0x1

    move/from16 v0, v29

    if-eq v13, v0, :cond_7

    .line 1019
    if-eqz v26, :cond_2

    .line 1020
    add-int/2addr v15, v13

    .line 1021
    add-int/lit8 v14, v14, 0x1

    .line 1027
    :cond_2
    :goto_2
    if-eqz v27, :cond_4

    .line 1028
    const/16 v29, -0x1

    move/from16 v0, v29

    if-ne v0, v13, :cond_3

    .line 1029
    const v29, 0x8000

    and-int v29, v29, v12

    const v30, 0x8000

    move/from16 v0, v29

    move/from16 v1, v30

    if-ne v0, v1, :cond_8

    .line 1030
    const/16 v27, 0x0

    .line 1042
    :cond_3
    :goto_3
    if-eqz v27, :cond_4

    .line 1043
    add-int/lit8 v22, v22, 0x1

    .line 1044
    const/16 v29, -0x1

    move/from16 v0, v29

    if-ne v0, v13, :cond_a

    .line 1045
    add-int/lit8 v23, v23, 0x1

    .line 1052
    :cond_4
    :goto_4
    if-eqz v28, :cond_6

    .line 1053
    const/16 v29, -0x1

    move/from16 v0, v29

    if-ne v0, v13, :cond_5

    .line 1054
    if-nez v19, :cond_b

    .line 1055
    const/16 v19, 0x1

    .line 1056
    move v8, v12

    .line 1057
    move v7, v12

    .line 1069
    :cond_5
    :goto_5
    if-eqz v28, :cond_6

    .line 1070
    add-int/lit8 v24, v24, 0x1

    .line 1071
    const/16 v29, -0x1

    move/from16 v0, v29

    if-ne v0, v13, :cond_e

    .line 1072
    add-int/lit8 v25, v25, 0x1

    .line 1079
    :cond_6
    :goto_6
    add-int/lit8 v21, v21, 0x2

    .line 1080
    add-int/lit8 v20, v20, 0x1

    .line 1015
    add-int/lit8 v16, v16, 0x1

    goto :goto_1

    .line 1024
    :cond_7
    const/16 v26, 0x0

    goto :goto_2

    .line 1032
    :cond_8
    if-nez v18, :cond_9

    .line 1033
    const/16 v18, 0x1

    .line 1034
    and-int/lit16 v0, v12, 0x7f80

    move/from16 v29, v0

    move/from16 v0, v29

    int-to-char v6, v0

    goto :goto_3

    .line 1036
    :cond_9
    and-int/lit16 v0, v12, 0x7f80

    move/from16 v29, v0

    move/from16 v0, v29

    int-to-char v0, v0

    move/from16 v29, v0

    move/from16 v0, v29

    if-eq v6, v0, :cond_3

    .line 1037
    const/16 v27, 0x0

    goto :goto_3

    .line 1047
    :cond_a
    add-int v23, v23, v13

    goto :goto_4

    .line 1059
    :cond_b
    if-le v8, v12, :cond_d

    .line 1060
    move v8, v12

    .line 1064
    :cond_c
    :goto_7
    sub-int v29, v7, v8

    const/16 v30, 0x7f

    move/from16 v0, v29

    move/from16 v1, v30

    if-le v0, v1, :cond_5

    .line 1065
    const/16 v28, 0x0

    goto :goto_5

    .line 1061
    :cond_d
    if-ge v7, v12, :cond_c

    .line 1062
    move v7, v12

    goto :goto_7

    .line 1074
    :cond_e
    add-int v25, v25, v13

    goto :goto_6

    .line 1085
    .end local v12           #c:C
    .end local v13           #currGsm7Length:I
    :cond_f
    move v9, v14

    .line 1086
    .local v9, bestConverts:I
    const/4 v11, 0x0

    .line 1087
    .local v11, bestMode:I
    move v10, v15

    .line 1088
    .local v10, bestLen:I
    move/from16 v0, v22

    if-ge v9, v0, :cond_10

    .line 1089
    move/from16 v9, v22

    .line 1090
    const/16 v11, 0x81

    .line 1091
    move/from16 v10, v23

    .line 1093
    :cond_10
    move/from16 v0, v24

    if-ge v9, v0, :cond_11

    .line 1094
    move/from16 v9, v24

    .line 1095
    const/16 v11, 0x82

    .line 1096
    move/from16 v10, v25

    .line 1098
    :cond_11
    move/from16 v0, v20

    if-ge v9, v0, :cond_0

    .line 1099
    move/from16 v9, v20

    .line 1100
    const/16 v11, 0x80

    .line 1101
    move/from16 v10, v21

    goto/16 :goto_0
.end method

.method private getIccPhbService(I)Lcom/android/internal/telephony/IIccPhoneBook;
    .locals 2
    .parameter "simId"

    .prologue
    .line 953
    if-nez p1, :cond_0

    .line 954
    const-string v1, "simphonebook"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/telephony/IIccPhoneBook$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/IIccPhoneBook;

    move-result-object v0

    .line 967
    .local v0, iccIpb:Lcom/android/internal/telephony/IIccPhoneBook;
    :goto_0
    return-object v0

    .line 956
    .end local v0           #iccIpb:Lcom/android/internal/telephony/IIccPhoneBook;
    :cond_0
    const/4 v1, 0x1

    if-ne p1, v1, :cond_1

    .line 957
    const-string v1, "simphonebook2"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/telephony/IIccPhoneBook$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/IIccPhoneBook;

    move-result-object v0

    .restart local v0       #iccIpb:Lcom/android/internal/telephony/IIccPhoneBook;
    goto :goto_0

    .line 959
    .end local v0           #iccIpb:Lcom/android/internal/telephony/IIccPhoneBook;
    :cond_1
    const/4 v1, 0x2

    if-ne p1, v1, :cond_2

    .line 960
    const-string v1, "simphonebook3"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/telephony/IIccPhoneBook$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/IIccPhoneBook;

    move-result-object v0

    .restart local v0       #iccIpb:Lcom/android/internal/telephony/IIccPhoneBook;
    goto :goto_0

    .line 963
    .end local v0           #iccIpb:Lcom/android/internal/telephony/IIccPhoneBook;
    :cond_2
    const-string v1, "simphonebook4"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/telephony/IIccPhoneBook$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/IIccPhoneBook;

    move-result-object v0

    .restart local v0       #iccIpb:Lcom/android/internal/telephony/IIccPhoneBook;
    goto :goto_0
.end method

.method private notifyWaiters(Ljava/util/ArrayList;Landroid/os/AsyncResult;)V
    .locals 5
    .parameter
    .parameter "ar"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/os/Message;",
            ">;",
            "Landroid/os/AsyncResult;",
            ")V"
        }
    .end annotation

    .prologue
    .line 628
    .local p1, waiters:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/os/Message;>;"
    if-nez p1, :cond_1

    .line 640
    :cond_0
    return-void

    .line 632
    :cond_1
    const/4 v0, 0x0

    .local v0, i:I
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    .local v1, s:I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 633
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/Message;

    .line 635
    .local v2, waiter:Landroid/os/Message;
    if-eqz v2, :cond_2

    .line 636
    iget-object v3, p2, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    iget-object v4, p2, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-static {v2, v3, v4}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 637
    invoke-virtual {v2}, Landroid/os/Message;->sendToTarget()V

    .line 632
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public static replaceSpecialChar(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .parameter "strSrc"

    .prologue
    .line 849
    const-string v3, "\r*|\n*"

    invoke-static {v3}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v1

    .line 850
    .local v1, p:Ljava/util/regex/Pattern;
    invoke-virtual {v1, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 851
    .local v0, m:Ljava/util/regex/Matcher;
    const-string v3, ""

    invoke-virtual {v0, v3}, Ljava/util/regex/Matcher;->replaceAll(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 852
    .local v2, strNew:Ljava/lang/String;
    return-object v2
.end method

.method private sendErrorResponse(Landroid/os/Message;Ljava/lang/String;)V
    .locals 1
    .parameter "response"
    .parameter "errString"

    .prologue
    .line 214
    const/4 v0, 0x2

    invoke-direct {p0, p1, p2, v0}, Lcom/android/internal/telephony/AdnRecordCache;->sendErrorResponse(Landroid/os/Message;Ljava/lang/String;I)V

    .line 218
    return-void
.end method

.method private sendErrorResponse(Landroid/os/Message;Ljava/lang/String;I)V
    .locals 2
    .parameter "response"
    .parameter "errString"
    .parameter "ril_errno"

    .prologue
    .line 222
    invoke-static {p3}, Lcom/android/internal/telephony/CommandException;->fromRilErrno(I)Lcom/android/internal/telephony/CommandException;

    move-result-object v0

    .line 224
    .local v0, e:Lcom/android/internal/telephony/CommandException;
    if-eqz p1, :cond_0

    .line 225
    invoke-virtual {p0, p2}, Lcom/android/internal/telephony/AdnRecordCache;->logd(Ljava/lang/String;)V

    .line 226
    invoke-static {p1}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;)Landroid/os/AsyncResult;

    move-result-object v1

    iput-object v0, v1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    .line 227
    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    .line 229
    :cond_0
    return-void
.end method


# virtual methods
.method public addContactToGroup(II)Z
    .locals 1
    .parameter "adnIndex"
    .parameter "grpIndex"

    .prologue
    .line 740
    iget-object v0, p0, Lcom/android/internal/telephony/AdnRecordCache;->mUsimPhoneBookManager:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;

    invoke-virtual {v0, p1, p2}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->addContactToGroup(II)Z

    move-result v0

    return v0
.end method

.method public extensionEfForEf(I)I
    .locals 1
    .parameter "efid"

    .prologue
    const/16 v0, 0x6f4a

    .line 201
    sparse-switch p1, :sswitch_data_0

    .line 208
    const/4 v0, -0x1

    :goto_0
    :sswitch_0
    return v0

    .line 202
    :sswitch_1
    const/16 v0, 0x6fc8

    goto :goto_0

    .line 204
    :sswitch_2
    const/16 v0, 0x6f4c

    goto :goto_0

    .line 205
    :sswitch_3
    const/16 v0, 0x6f4b

    goto :goto_0

    .line 207
    :sswitch_4
    const/4 v0, 0x0

    goto :goto_0

    .line 201
    :sswitch_data_0
    .sparse-switch
        0x4f30 -> :sswitch_4
        0x6f3a -> :sswitch_0
        0x6f3b -> :sswitch_3
        0x6f40 -> :sswitch_0
        0x6f49 -> :sswitch_2
        0x6fc7 -> :sswitch_1
    .end sparse-switch
.end method

.method public getAnrCount()I
    .locals 1

    .prologue
    .line 819
    iget-object v0, p0, Lcom/android/internal/telephony/AdnRecordCache;->mUsimPhoneBookManager:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;

    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->getAnrCount()I

    move-result v0

    return v0
.end method

.method public getEmailCount()I
    .locals 1

    .prologue
    .line 823
    iget-object v0, p0, Lcom/android/internal/telephony/AdnRecordCache;->mUsimPhoneBookManager:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;

    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->getEmailCount()I

    move-result v0

    return v0
.end method

.method public getNameforSIM(Ljava/lang/String;I)Ljava/lang/String;
    .locals 4
    .parameter "oldData"
    .parameter "simMaxLimit"

    .prologue
    .line 1107
    const-string v2, ""

    .line 1108
    .local v2, newString:Ljava/lang/String;
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1126
    .end local p1
    :goto_0
    return-object p1

    .line 1112
    .restart local p1
    :cond_0
    move v1, p2

    .line 1113
    .local v1, maxNameLength:I
    const/4 v0, 0x0

    .line 1114
    .local v0, mEncodedLength:I
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v3, v1, :cond_1

    .line 1115
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    .line 1117
    :cond_1
    :goto_1
    if-lez v1, :cond_3

    .line 1118
    const/4 v3, 0x0

    invoke-virtual {p1, v3, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 1120
    invoke-static {v2}, Lcom/android/internal/telephony/AdnRecordCache;->getAlphaTagEncodingLength(Ljava/lang/String;)I

    move-result v0

    .line 1121
    if-gt v0, p2, :cond_2

    move-object p1, v2

    .line 1122
    goto :goto_0

    .line 1124
    :cond_2
    add-int/lit8 v1, v1, -0x1

    goto :goto_1

    :cond_3
    move-object p1, v2

    .line 1126
    goto :goto_0
.end method

.method public getPhonebookMemStorageExt()[Lcom/mediatek/common/telephony/gsm/UsimPBMemInfo;
    .locals 1

    .prologue
    .line 843
    iget-object v0, p0, Lcom/android/internal/telephony/AdnRecordCache;->mUsimPhoneBookManager:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;

    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->getPhonebookMemStorageExt()[Lcom/mediatek/common/telephony/gsm/UsimPBMemInfo;

    move-result-object v0

    return-object v0
.end method

.method public getRecordsIfLoaded(I)Ljava/util/ArrayList;
    .locals 1
    .parameter "efid"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/telephony/AdnRecord;",
            ">;"
        }
    .end annotation

    .prologue
    .line 191
    iget-object v0, p0, Lcom/android/internal/telephony/AdnRecordCache;->adnLikeFiles:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    return-object v0
.end method

.method public getRecordsSizeIfLoaded(I)I
    .locals 6
    .parameter "efid"

    .prologue
    .line 928
    const/4 v1, 0x0

    .line 932
    .local v1, recordsSize:I
    const-string v3, "AdnRecordCache"

    const-string v4, "getRecordsSizeIfLoaded enter."

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 934
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/AdnRecordCache;->getRecordsIfLoaded(I)Ljava/util/ArrayList;

    move-result-object v0

    .line 936
    .local v0, adnList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/internal/telephony/AdnRecord;>;"
    if-nez v0, :cond_0

    .line 938
    const-string v3, "AdnRecordCache"

    const-string v4, "getRecordsSizeIfLoaded adnList is null."

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move v2, v1

    .line 947
    .end local v1           #recordsSize:I
    .local v2, recordsSize:I
    :goto_0
    return v2

    .line 942
    .end local v2           #recordsSize:I
    .restart local v1       #recordsSize:I
    :cond_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 945
    const-string v3, "AdnRecordCache"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getRecordsSizeIfLoaded recordsSize = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move v2, v1

    .line 947
    .end local v1           #recordsSize:I
    .restart local v2       #recordsSize:I
    goto :goto_0
.end method

.method public getSneRecordLen()I
    .locals 1

    .prologue
    .line 839
    iget-object v0, p0, Lcom/android/internal/telephony/AdnRecordCache;->mUsimPhoneBookManager:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;

    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->getSneRecordLen()I

    move-result v0

    return v0
.end method

.method public getUsimAasById(I)Ljava/lang/String;
    .locals 2
    .parameter "index"

    .prologue
    .line 793
    iget-object v0, p0, Lcom/android/internal/telephony/AdnRecordCache;->mUsimPhoneBookManager:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->getUsimAasById(II)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getUsimAasList()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/mediatek/common/telephony/AlphaTag;",
            ">;"
        }
    .end annotation

    .prologue
    .line 788
    iget-object v0, p0, Lcom/android/internal/telephony/AdnRecordCache;->mUsimPhoneBookManager:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;

    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->getUsimAasList()Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method public getUsimAasMaxCount()I
    .locals 1

    .prologue
    .line 827
    iget-object v0, p0, Lcom/android/internal/telephony/AdnRecordCache;->mUsimPhoneBookManager:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;

    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->getUsimAasMaxCount()I

    move-result v0

    return v0
.end method

.method public getUsimAasMaxNameLen()I
    .locals 1

    .prologue
    .line 831
    iget-object v0, p0, Lcom/android/internal/telephony/AdnRecordCache;->mUsimPhoneBookManager:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;

    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->getUsimAasMaxNameLen()I

    move-result v0

    return v0
.end method

.method public getUsimGroupById(I)Ljava/lang/String;
    .locals 1
    .parameter "nGasId"

    .prologue
    .line 724
    iget-object v0, p0, Lcom/android/internal/telephony/AdnRecordCache;->mUsimPhoneBookManager:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->getUsimGroupById(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getUsimGroups()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/mediatek/common/telephony/UsimGroup;",
            ">;"
        }
    .end annotation

    .prologue
    .line 720
    iget-object v0, p0, Lcom/android/internal/telephony/AdnRecordCache;->mUsimPhoneBookManager:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;

    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->getUsimGroups()Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method public getUsimGrpMaxCount()I
    .locals 1

    .prologue
    .line 764
    iget-object v0, p0, Lcom/android/internal/telephony/AdnRecordCache;->mUsimPhoneBookManager:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;

    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->getUsimGrpMaxCount()I

    move-result v0

    return v0
.end method

.method public getUsimGrpMaxNameLen()I
    .locals 1

    .prologue
    .line 760
    iget-object v0, p0, Lcom/android/internal/telephony/AdnRecordCache;->mUsimPhoneBookManager:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;

    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->getUsimGrpMaxNameLen()I

    move-result v0

    return v0
.end method

.method public getUsimPhoneBookManager()Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;
    .locals 1

    .prologue
    .line 142
    iget-object v0, p0, Lcom/android/internal/telephony/AdnRecordCache;->mUsimPhoneBookManager:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;

    return-object v0
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 11
    .parameter "msg"

    .prologue
    const/4 v8, 0x0

    .line 649
    iget v7, p1, Landroid/os/Message;->what:I

    packed-switch v7, :pswitch_data_0

    .line 712
    :goto_0
    return-void

    .line 652
    :pswitch_0
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Landroid/os/AsyncResult;

    .line 653
    .local v2, ar:Landroid/os/AsyncResult;
    iget v3, p1, Landroid/os/Message;->arg1:I

    .line 656
    .local v3, efid:I
    iget-object v7, p0, Lcom/android/internal/telephony/AdnRecordCache;->adnLikeWaiters:Landroid/util/SparseArray;

    invoke-virtual {v7, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/ArrayList;

    .line 657
    .local v6, waiters:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/os/Message;>;"
    iget-object v7, p0, Lcom/android/internal/telephony/AdnRecordCache;->adnLikeWaiters:Landroid/util/SparseArray;

    invoke-virtual {v7, v3}, Landroid/util/SparseArray;->delete(I)V

    .line 659
    iget-object v7, v2, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v7, :cond_0

    .line 660
    iget-object v8, p0, Lcom/android/internal/telephony/AdnRecordCache;->adnLikeFiles:Landroid/util/SparseArray;

    iget-object v7, v2, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v7, Ljava/util/ArrayList;

    invoke-virtual {v8, v3, v7}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 664
    :goto_1
    invoke-direct {p0, v6, v2}, Lcom/android/internal/telephony/AdnRecordCache;->notifyWaiters(Ljava/util/ArrayList;Landroid/os/AsyncResult;)V

    goto :goto_0

    .line 662
    :cond_0
    const-string v7, "GSM"

    const-string v8, "EVENT_LOAD_ALL_ADN_LIKE_DONE exception"

    iget-object v9, v2, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-static {v7, v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 667
    .end local v2           #ar:Landroid/os/AsyncResult;
    .end local v3           #efid:I
    .end local v6           #waiters:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/os/Message;>;"
    :pswitch_1
    const-string v7, "EVENT_UPDATE_ADN_DONE"

    invoke-virtual {p0, v7}, Lcom/android/internal/telephony/AdnRecordCache;->logd(Ljava/lang/String;)V

    .line 668
    iget-object v9, p0, Lcom/android/internal/telephony/AdnRecordCache;->mLock:Ljava/lang/Object;

    monitor-enter v9

    .line 669
    :try_start_0
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Landroid/os/AsyncResult;

    .line 670
    .restart local v2       #ar:Landroid/os/AsyncResult;
    iget v3, p1, Landroid/os/Message;->arg1:I

    .line 671
    .restart local v3       #efid:I
    iget v4, p1, Landroid/os/Message;->arg2:I

    .line 672
    .local v4, index:I
    iget-object v7, v2, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v7, Lcom/android/internal/telephony/AdnRecord;

    move-object v0, v7

    check-cast v0, Lcom/android/internal/telephony/AdnRecord;

    move-object v1, v0

    .line 674
    .local v1, adn:Lcom/android/internal/telephony/AdnRecord;
    iget-object v7, v2, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v7, :cond_4

    .line 675
    if-eqz v1, :cond_1

    .line 676
    invoke-virtual {v1, v4}, Lcom/android/internal/telephony/AdnRecord;->setRecordIndex(I)V

    .line 677
    iget v7, v1, Lcom/android/internal/telephony/AdnRecord;->efid:I

    if-gtz v7, :cond_1

    .line 678
    iput v3, v1, Lcom/android/internal/telephony/AdnRecord;->efid:I

    .line 682
    :cond_1
    sget-boolean v7, Lcom/android/internal/telephony/AdnRecordCache;->ADNRC_ENG:Z

    if-eqz v7, :cond_2

    .line 683
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "adnLikeFiles changed index:"

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v10, ",adn:"

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v7}, Lcom/android/internal/telephony/AdnRecordCache;->logd(Ljava/lang/String;)V

    .line 686
    :cond_2
    iget-object v7, p0, Lcom/android/internal/telephony/AdnRecordCache;->adnLikeFiles:Landroid/util/SparseArray;

    if-eqz v7, :cond_3

    iget-object v7, p0, Lcom/android/internal/telephony/AdnRecordCache;->adnLikeFiles:Landroid/util/SparseArray;

    invoke-virtual {v7, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v7

    if-eqz v7, :cond_3

    .line 687
    iget-object v7, p0, Lcom/android/internal/telephony/AdnRecordCache;->adnLikeFiles:Landroid/util/SparseArray;

    invoke-virtual {v7, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/ArrayList;

    add-int/lit8 v10, v4, -0x1

    invoke-virtual {v7, v10, v1}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 689
    :cond_3
    iget-object v7, p0, Lcom/android/internal/telephony/AdnRecordCache;->mUsimPhoneBookManager:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;

    if-eqz v7, :cond_4

    const/16 v7, 0x6f3b

    if-eq v3, v7, :cond_4

    .line 690
    iget-object v7, p0, Lcom/android/internal/telephony/AdnRecordCache;->mUsimPhoneBookManager:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;

    add-int/lit8 v10, v4, -0x1

    invoke-virtual {v7, v10, v1}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->updateUsimPhonebookRecordsList(ILcom/android/internal/telephony/AdnRecord;)V

    .line 694
    :cond_4
    iget-object v7, p0, Lcom/android/internal/telephony/AdnRecordCache;->userWriteResponse:Landroid/util/SparseArray;

    invoke-virtual {v7, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/os/Message;

    .line 695
    .local v5, response:Landroid/os/Message;
    iget-object v7, p0, Lcom/android/internal/telephony/AdnRecordCache;->userWriteResponse:Landroid/util/SparseArray;

    invoke-virtual {v7, v3}, Landroid/util/SparseArray;->delete(I)V

    .line 697
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "AdnRecordCacheEx: "

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v10, v2, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v7}, Lcom/android/internal/telephony/AdnRecordCache;->logd(Ljava/lang/String;)V

    .line 699
    iget-object v7, v2, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v7, :cond_5

    if-eqz v5, :cond_5

    .line 700
    const/4 v7, 0x0

    iget-object v10, v2, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-static {v5, v7, v10}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 701
    invoke-virtual {v5}, Landroid/os/Message;->sendToTarget()V

    .line 703
    :cond_5
    iget-object v7, v2, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v7, :cond_6

    const/4 v7, 0x1

    :goto_2
    iput-boolean v7, p0, Lcom/android/internal/telephony/AdnRecordCache;->mSuccess:Z

    .line 704
    iget-object v7, p0, Lcom/android/internal/telephony/AdnRecordCache;->mLock:Ljava/lang/Object;

    invoke-virtual {v7}, Ljava/lang/Object;->notifyAll()V

    .line 705
    const/4 v7, 0x0

    iput-boolean v7, p0, Lcom/android/internal/telephony/AdnRecordCache;->mLocked:Z

    .line 706
    monitor-exit v9

    goto/16 :goto_0

    .end local v1           #adn:Lcom/android/internal/telephony/AdnRecord;
    .end local v2           #ar:Landroid/os/AsyncResult;
    .end local v3           #efid:I
    .end local v4           #index:I
    .end local v5           #response:Landroid/os/Message;
    :catchall_0
    move-exception v7

    monitor-exit v9
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v7

    .restart local v1       #adn:Lcom/android/internal/telephony/AdnRecord;
    .restart local v2       #ar:Landroid/os/AsyncResult;
    .restart local v3       #efid:I
    .restart local v4       #index:I
    .restart local v5       #response:Landroid/os/Message;
    :cond_6
    move v7, v8

    .line 703
    goto :goto_2

    .line 649
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public hasExistGroup(Ljava/lang/String;)I
    .locals 1
    .parameter "grpName"

    .prologue
    .line 756
    iget-object v0, p0, Lcom/android/internal/telephony/AdnRecordCache;->mUsimPhoneBookManager:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->hasExistGroup(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public hasSne()Z
    .locals 1

    .prologue
    .line 835
    iget-object v0, p0, Lcom/android/internal/telephony/AdnRecordCache;->mUsimPhoneBookManager:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;

    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->hasSne()Z

    move-result v0

    return v0
.end method

.method public insertUsimAas(Ljava/lang/String;)I
    .locals 1
    .parameter "aasName"

    .prologue
    .line 801
    iget-object v0, p0, Lcom/android/internal/telephony/AdnRecordCache;->mUsimPhoneBookManager:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->insertUsimAas(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public insertUsimGroup(Ljava/lang/String;)I
    .locals 1
    .parameter "grpName"

    .prologue
    .line 732
    iget-object v0, p0, Lcom/android/internal/telephony/AdnRecordCache;->mUsimPhoneBookManager:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->insertUsimGroup(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method protected logd(Ljava/lang/String;)V
    .locals 3
    .parameter "msg"

    .prologue
    .line 716
    const-string v0, "GSM"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[AdnRecordCache"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/internal/telephony/AdnRecordCache;->mSimId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 717
    return-void
.end method

.method public moveContactFromGroupsToGroups(I[I[I)Z
    .locals 1
    .parameter "adnIndex"
    .parameter "fromGrpIdList"
    .parameter "toGrpIdList"

    .prologue
    .line 752
    iget-object v0, p0, Lcom/android/internal/telephony/AdnRecordCache;->mUsimPhoneBookManager:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->moveContactFromGroupsToGroups(I[I[I)Z

    move-result v0

    return v0
.end method

.method public removeContactFromGroup(II)Z
    .locals 1
    .parameter "adnIndex"
    .parameter "grpIndex"

    .prologue
    .line 744
    iget-object v0, p0, Lcom/android/internal/telephony/AdnRecordCache;->mUsimPhoneBookManager:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;

    invoke-virtual {v0, p1, p2}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->removeContactFromGroup(II)Z

    move-result v0

    return v0
.end method

.method public removeUsimAasById(II)Z
    .locals 1
    .parameter "index"
    .parameter "pbrIndex"

    .prologue
    .line 797
    iget-object v0, p0, Lcom/android/internal/telephony/AdnRecordCache;->mUsimPhoneBookManager:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;

    invoke-virtual {v0, p1, p2}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->removeUsimAasById(II)Z

    move-result v0

    return v0
.end method

.method public removeUsimGroupById(I)Z
    .locals 1
    .parameter "nGasId"

    .prologue
    .line 728
    iget-object v0, p0, Lcom/android/internal/telephony/AdnRecordCache;->mUsimPhoneBookManager:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->removeUsimGroupById(I)Z

    move-result v0

    return v0
.end method

.method public requestLoadAllAdnLike(IILandroid/os/Message;)V
    .locals 6
    .parameter "efid"
    .parameter "extensionEf"
    .parameter "response"

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 570
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "requestLoadAllAdnLike "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/AdnRecordCache;->logd(Ljava/lang/String;)V

    .line 571
    const/16 v2, 0x4f30

    if-ne p1, v2, :cond_1

    .line 572
    iget-object v2, p0, Lcom/android/internal/telephony/AdnRecordCache;->mUsimPhoneBookManager:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;

    invoke-virtual {v2}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->loadEfFilesFromUsim()Ljava/util/ArrayList;

    move-result-object v0

    .line 576
    .local v0, result:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/internal/telephony/AdnRecord;>;"
    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "requestLoadAllAdnLike result = null ?"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    if-nez v0, :cond_2

    move v2, v3

    :goto_1
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/AdnRecordCache;->logd(Ljava/lang/String;)V

    .line 579
    if-eqz v0, :cond_3

    .line 580
    if-eqz p3, :cond_0

    .line 581
    invoke-static {p3}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;)Landroid/os/AsyncResult;

    move-result-object v2

    iput-object v0, v2, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    .line 582
    invoke-virtual {p3}, Landroid/os/Message;->sendToTarget()V

    .line 621
    :cond_0
    :goto_2
    return-void

    .line 574
    .end local v0           #result:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/internal/telephony/AdnRecord;>;"
    :cond_1
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/AdnRecordCache;->getRecordsIfLoaded(I)Ljava/util/ArrayList;

    move-result-object v0

    .restart local v0       #result:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/internal/telephony/AdnRecord;>;"
    goto :goto_0

    :cond_2
    move v2, v4

    .line 576
    goto :goto_1

    .line 590
    :cond_3
    iget-object v2, p0, Lcom/android/internal/telephony/AdnRecordCache;->adnLikeWaiters:Landroid/util/SparseArray;

    invoke-virtual {v2, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    .line 592
    .local v1, waiters:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/os/Message;>;"
    if-eqz v1, :cond_4

    .line 596
    invoke-virtual {v1, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 602
    :cond_4
    new-instance v1, Ljava/util/ArrayList;

    .end local v1           #waiters:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/os/Message;>;"
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 603
    .restart local v1       #waiters:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/os/Message;>;"
    invoke-virtual {v1, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 605
    iget-object v2, p0, Lcom/android/internal/telephony/AdnRecordCache;->adnLikeWaiters:Landroid/util/SparseArray;

    invoke-virtual {v2, p1, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 607
    if-gez p2, :cond_5

    .line 610
    if-eqz p3, :cond_0

    .line 611
    invoke-static {p3}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;)Landroid/os/AsyncResult;

    move-result-object v2

    new-instance v3, Ljava/lang/RuntimeException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "EF is not known ADN-like EF:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    iput-object v3, v2, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    .line 613
    invoke-virtual {p3}, Landroid/os/Message;->sendToTarget()V

    goto :goto_2

    .line 619
    :cond_5
    new-instance v2, Lcom/android/internal/telephony/AdnRecordLoader;

    iget-object v5, p0, Lcom/android/internal/telephony/AdnRecordCache;->mFh:Lcom/android/internal/telephony/IccFileHandler;

    invoke-direct {v2, v5}, Lcom/android/internal/telephony/AdnRecordLoader;-><init>(Lcom/android/internal/telephony/IccFileHandler;)V

    invoke-virtual {p0, v3, p1, v4}, Lcom/android/internal/telephony/AdnRecordCache;->obtainMessage(III)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v2, p1, p2, v3}, Lcom/android/internal/telephony/AdnRecordLoader;->loadAllFromEF(IILandroid/os/Message;)V

    goto :goto_2
.end method

.method public reset()V
    .locals 1

    .prologue
    .line 152
    const-string v0, "reset"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/AdnRecordCache;->logd(Ljava/lang/String;)V

    .line 153
    iget-object v0, p0, Lcom/android/internal/telephony/AdnRecordCache;->adnLikeFiles:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    .line 154
    iget-object v0, p0, Lcom/android/internal/telephony/AdnRecordCache;->mUsimPhoneBookManager:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;

    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->reset()V

    .line 156
    invoke-direct {p0}, Lcom/android/internal/telephony/AdnRecordCache;->clearWaiters()V

    .line 157
    invoke-direct {p0}, Lcom/android/internal/telephony/AdnRecordCache;->clearUserWriters()V

    .line 159
    return-void
.end method

.method public updateAdnAas(II)Z
    .locals 1
    .parameter "adnIndex"
    .parameter "aasIndex"

    .prologue
    .line 815
    iget-object v0, p0, Lcom/android/internal/telephony/AdnRecordCache;->mUsimPhoneBookManager:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;

    invoke-virtual {v0, p1, p2}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->updateAdnAas(II)Z

    move-result v0

    return v0
.end method

.method public declared-synchronized updateAdnByIndex(ILcom/android/internal/telephony/AdnRecord;ILjava/lang/String;Landroid/os/Message;)V
    .locals 12
    .parameter "efid"
    .parameter "adn"
    .parameter "recordIndex"
    .parameter "pin2"
    .parameter "response"

    .prologue
    .line 244
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/AdnRecordCache;->extensionEfForEf(I)I

    move-result v4

    .line 245
    .local v4, extensionEF:I
    if-gez v4, :cond_1

    .line 246
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "EF is not known ADN-like EF:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    move-object/from16 v0, p5

    invoke-direct {p0, v0, v1}, Lcom/android/internal/telephony/AdnRecordCache;->sendErrorResponse(Landroid/os/Message;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 352
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 290
    :cond_1
    :try_start_1
    iget-object v1, p0, Lcom/android/internal/telephony/AdnRecordCache;->userWriteResponse:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/os/Message;

    .line 291
    .local v9, pendingResponse:Landroid/os/Message;
    if-eqz v9, :cond_2

    .line 292
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Have pending update for EF:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    move-object/from16 v0, p5

    invoke-direct {p0, v0, v1}, Lcom/android/internal/telephony/AdnRecordCache;->sendErrorResponse(Landroid/os/Message;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 244
    .end local v4           #extensionEF:I
    .end local v9           #pendingResponse:Landroid/os/Message;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1

    .line 296
    .restart local v4       #extensionEF:I
    .restart local v9       #pendingResponse:Landroid/os/Message;
    :cond_2
    :try_start_2
    iget-object v1, p0, Lcom/android/internal/telephony/AdnRecordCache;->userWriteResponse:Landroid/util/SparseArray;

    move-object/from16 v0, p5

    invoke-virtual {v1, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 297
    const/16 v1, 0x6f3a

    if-eq p1, v1, :cond_3

    const/16 v1, 0x4f30

    if-ne p1, v1, :cond_4

    .line 298
    :cond_3
    iget-object v1, p2, Lcom/android/internal/telephony/AdnRecord;->alphaTag:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_4

    iget-object v1, p2, Lcom/android/internal/telephony/AdnRecord;->number:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_4

    .line 300
    iget-object v1, p0, Lcom/android/internal/telephony/AdnRecordCache;->mUsimPhoneBookManager:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;

    invoke-virtual {v1, p3}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->removeContactGroup(I)Z

    .line 303
    :cond_4
    iget-object v11, p0, Lcom/android/internal/telephony/AdnRecordCache;->mLock:Ljava/lang/Object;

    monitor-enter v11
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 304
    :try_start_3
    new-instance v1, Lcom/android/internal/telephony/AdnRecordLoader;

    iget-object v2, p0, Lcom/android/internal/telephony/AdnRecordCache;->mFh:Lcom/android/internal/telephony/IccFileHandler;

    invoke-direct {v1, v2}, Lcom/android/internal/telephony/AdnRecordLoader;-><init>(Lcom/android/internal/telephony/IccFileHandler;)V

    const/4 v2, 0x2

    invoke-virtual {p0, v2, p1, p3, p2}, Lcom/android/internal/telephony/AdnRecordCache;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v7

    move-object v2, p2

    move v3, p1

    move v5, p3

    move-object/from16 v6, p4

    invoke-virtual/range {v1 .. v7}, Lcom/android/internal/telephony/AdnRecordLoader;->updateEF(Lcom/android/internal/telephony/AdnRecord;IIILjava/lang/String;Landroid/os/Message;)V

    .line 308
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/internal/telephony/AdnRecordCache;->mLocked:Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 310
    :try_start_4
    iget-object v1, p0, Lcom/android/internal/telephony/AdnRecordCache;->mLock:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->wait()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1
    .catch Ljava/lang/InterruptedException; {:try_start_4 .. :try_end_4} :catch_1

    .line 314
    :try_start_5
    monitor-exit v11
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 315
    :try_start_6
    iget-boolean v1, p0, Lcom/android/internal/telephony/AdnRecordCache;->mSuccess:Z
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    if-eqz v1, :cond_0

    .line 319
    const/16 v1, 0x6f3a

    if-eq p1, v1, :cond_5

    const/16 v1, 0x4f30

    if-ne p1, v1, :cond_9

    .line 321
    :cond_5
    :try_start_7
    iget-object v1, p0, Lcom/android/internal/telephony/AdnRecordCache;->mUsimPhoneBookManager:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;

    iget-object v2, p2, Lcom/android/internal/telephony/AdnRecord;->additionalNumber:Ljava/lang/String;

    invoke-virtual {v1, v2, p3}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->updateAnrByAdnIndex(Ljava/lang/String;I)V

    .line 322
    iget-object v1, p0, Lcom/android/internal/telephony/AdnRecordCache;->mUsimPhoneBookManager:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;

    invoke-virtual {v1}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->supportVodafone()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 323
    iget-object v1, p0, Lcom/android/internal/telephony/AdnRecordCache;->mUsimPhoneBookManager:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;

    iget-object v2, p2, Lcom/android/internal/telephony/AdnRecord;->sne:Ljava/lang/String;

    invoke-virtual {v1, v2, p3}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->updateSneByAdnIndex(Ljava/lang/String;I)V

    .line 325
    :cond_6
    iget-object v1, p0, Lcom/android/internal/telephony/AdnRecordCache;->mUsimPhoneBookManager:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;

    iget-object v2, p2, Lcom/android/internal/telephony/AdnRecord;->emails:[Ljava/lang/String;

    invoke-virtual {v1, v2, p3}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->updateEmailsByAdnIndex([Ljava/lang/String;I)I

    move-result v10

    .line 326
    .local v10, success:I
    const/4 v1, -0x1

    if-ne v1, v10, :cond_7

    .line 327
    const-string v1, "drop the email for the limitation of the SIM card"

    const/16 v2, 0x3ed

    move-object/from16 v0, p5

    invoke-direct {p0, v0, v1, v2}, Lcom/android/internal/telephony/AdnRecordCache;->sendErrorResponse(Landroid/os/Message;Ljava/lang/String;I)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_0

    goto/16 :goto_0

    .line 341
    .end local v10           #success:I
    :catch_0
    move-exception v8

    .line 342
    .local v8, e:Ljava/lang/Exception;
    :try_start_8
    invoke-virtual {v8}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    goto/16 :goto_0

    .line 311
    .end local v8           #e:Ljava/lang/Exception;
    :catch_1
    move-exception v8

    .line 312
    .local v8, e:Ljava/lang/InterruptedException;
    :try_start_9
    monitor-exit v11

    goto/16 :goto_0

    .line 314
    .end local v8           #e:Ljava/lang/InterruptedException;
    :catchall_1
    move-exception v1

    monitor-exit v11
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    :try_start_a
    throw v1
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    .line 331
    .restart local v10       #success:I
    :cond_7
    const/4 v1, -0x2

    if-ne v1, v10, :cond_8

    .line 332
    :try_start_b
    const-string v1, "the email string is too long"

    const/16 v2, 0x3ee

    move-object/from16 v0, p5

    invoke-direct {p0, v0, v1, v2}, Lcom/android/internal/telephony/AdnRecordCache;->sendErrorResponse(Landroid/os/Message;Ljava/lang/String;I)V

    .line 336
    const-string v1, "GSM"

    const-string v2, "haman, by index email too long"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 338
    :cond_8
    const/4 v1, 0x0

    const/4 v2, 0x0

    move-object/from16 v0, p5

    invoke-static {v0, v1, v2}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 339
    invoke-virtual/range {p5 .. p5}, Landroid/os/Message;->sendToTarget()V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_0

    goto/16 :goto_0

    .line 347
    .end local v10           #success:I
    :cond_9
    const/16 v1, 0x6f3b

    if-ne p1, v1, :cond_0

    .line 348
    const/4 v1, 0x0

    const/4 v2, 0x0

    :try_start_c
    move-object/from16 v0, p5

    invoke-static {v0, v1, v2}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 349
    invoke-virtual/range {p5 .. p5}, Landroid/os/Message;->sendToTarget()V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    goto/16 :goto_0
.end method

.method public declared-synchronized updateAdnBySearch(ILcom/android/internal/telephony/AdnRecord;Lcom/android/internal/telephony/AdnRecord;Ljava/lang/String;Landroid/os/Message;)I
    .locals 19
    .parameter "efid"
    .parameter "oldAdn"
    .parameter "newAdn"
    .parameter "pin2"
    .parameter "response"

    .prologue
    .line 371
    monitor-enter p0

    :try_start_0
    sget-boolean v3, Lcom/android/internal/telephony/AdnRecordCache;->ADNRC_ENG:Z

    if-eqz v3, :cond_0

    .line 372
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "updateAdnBySearch efid:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, p1

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "pin2:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p4

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", oldAdn ["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p2

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "], new Adn["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/internal/telephony/AdnRecordCache;->logd(Ljava/lang/String;)V

    .line 376
    :cond_0
    const/4 v7, -0x1

    .line 378
    .local v7, index:I
    invoke-virtual/range {p0 .. p1}, Lcom/android/internal/telephony/AdnRecordCache;->extensionEfForEf(I)I

    move-result v6

    .line 380
    .local v6, extensionEF:I
    if-gez v6, :cond_1

    .line 381
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "EF is not known ADN-like EF:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, p1

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    move-object/from16 v1, p5

    invoke-direct {v0, v1, v3}, Lcom/android/internal/telephony/AdnRecordCache;->sendErrorResponse(Landroid/os/Message;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move v13, v7

    .line 557
    .end local v7           #index:I
    .local v13, index:I
    :goto_0
    monitor-exit p0

    return v13

    .line 440
    .end local v13           #index:I
    .restart local v7       #index:I
    :cond_1
    const/16 v3, 0x4f30

    move/from16 v0, p1

    if-ne v0, v3, :cond_2

    .line 441
    :try_start_1
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/AdnRecordCache;->mUsimPhoneBookManager:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;

    invoke-virtual {v3}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->loadEfFilesFromUsim()Ljava/util/ArrayList;

    move-result-object v15

    .line 446
    .local v15, oldAdnList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/internal/telephony/AdnRecord;>;"
    :goto_1
    if-nez v15, :cond_3

    .line 447
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Adn list not exist for EF:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, p1

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0x3f3

    move-object/from16 v0, p0

    move-object/from16 v1, p5

    invoke-direct {v0, v1, v3, v4}, Lcom/android/internal/telephony/AdnRecordCache;->sendErrorResponse(Landroid/os/Message;Ljava/lang/String;I)V

    move v13, v7

    .line 451
    .end local v7           #index:I
    .restart local v13       #index:I
    goto :goto_0

    .line 443
    .end local v13           #index:I
    .end local v15           #oldAdnList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/internal/telephony/AdnRecord;>;"
    .restart local v7       #index:I
    :cond_2
    invoke-virtual/range {p0 .. p1}, Lcom/android/internal/telephony/AdnRecordCache;->getRecordsIfLoaded(I)Ljava/util/ArrayList;

    move-result-object v15

    .restart local v15       #oldAdnList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/internal/telephony/AdnRecord;>;"
    goto :goto_1

    .line 454
    :cond_3
    const/4 v10, 0x1

    .line 455
    .local v10, count:I
    invoke-virtual {v15}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v14

    .local v14, it:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/android/internal/telephony/AdnRecord;>;"
    :goto_2
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 456
    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/internal/telephony/AdnRecord;

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Lcom/android/internal/telephony/AdnRecord;->isEqual(Lcom/android/internal/telephony/AdnRecord;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 457
    move v7, v10

    .line 462
    :cond_4
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "updateAdnBySearch index "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/internal/telephony/AdnRecordCache;->logd(Ljava/lang/String;)V

    .line 463
    const/4 v3, -0x1

    if-ne v7, v3, :cond_7

    .line 464
    move-object/from16 v0, p2

    iget-object v3, v0, Lcom/android/internal/telephony/AdnRecord;->alphaTag:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_6

    move-object/from16 v0, p2

    iget-object v3, v0, Lcom/android/internal/telephony/AdnRecord;->number:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_6

    .line 465
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Adn record don\'t exist for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p2

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0x3eb

    move-object/from16 v0, p0

    move-object/from16 v1, p5

    invoke-direct {v0, v1, v3, v4}, Lcom/android/internal/telephony/AdnRecordCache;->sendErrorResponse(Landroid/os/Message;Ljava/lang/String;I)V

    :goto_3
    move v13, v7

    .line 472
    .end local v7           #index:I
    .restart local v13       #index:I
    goto/16 :goto_0

    .line 460
    .end local v13           #index:I
    .restart local v7       #index:I
    :cond_5
    add-int/lit8 v10, v10, 0x1

    goto :goto_2

    .line 470
    :cond_6
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Adn record don\'t exist for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p2

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    move-object/from16 v1, p5

    invoke-direct {v0, v1, v3}, Lcom/android/internal/telephony/AdnRecordCache;->sendErrorResponse(Landroid/os/Message;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_3

    .line 371
    .end local v6           #extensionEF:I
    .end local v7           #index:I
    .end local v10           #count:I
    .end local v14           #it:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/android/internal/telephony/AdnRecord;>;"
    .end local v15           #oldAdnList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/internal/telephony/AdnRecord;>;"
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3

    .line 475
    .restart local v6       #extensionEF:I
    .restart local v7       #index:I
    .restart local v10       #count:I
    .restart local v14       #it:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/android/internal/telephony/AdnRecord;>;"
    .restart local v15       #oldAdnList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/internal/telephony/AdnRecord;>;"
    :cond_7
    const/16 v3, 0x4f30

    move/from16 v0, p1

    if-ne v0, v3, :cond_8

    .line 476
    add-int/lit8 v3, v7, -0x1

    :try_start_2
    invoke-virtual {v15, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/android/internal/telephony/AdnRecord;

    .line 477
    .local v12, foundAdn:Lcom/android/internal/telephony/AdnRecord;
    iget v0, v12, Lcom/android/internal/telephony/AdnRecord;->efid:I

    move/from16 p1, v0

    .line 478
    iget v6, v12, Lcom/android/internal/telephony/AdnRecord;->extRecord:I

    .line 479
    iget v7, v12, Lcom/android/internal/telephony/AdnRecord;->recordNumber:I

    .line 481
    move/from16 v0, p1

    move-object/from16 v1, p3

    iput v0, v1, Lcom/android/internal/telephony/AdnRecord;->efid:I

    .line 482
    move-object/from16 v0, p3

    iput v6, v0, Lcom/android/internal/telephony/AdnRecord;->extRecord:I

    .line 483
    move-object/from16 v0, p3

    iput v7, v0, Lcom/android/internal/telephony/AdnRecord;->recordNumber:I

    .line 486
    .end local v12           #foundAdn:Lcom/android/internal/telephony/AdnRecord;
    :cond_8
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/AdnRecordCache;->userWriteResponse:Landroid/util/SparseArray;

    move/from16 v0, p1

    invoke-virtual {v3, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Landroid/os/Message;

    .line 488
    .local v16, pendingResponse:Landroid/os/Message;
    if-eqz v16, :cond_9

    .line 489
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Have pending update for EF:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, p1

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    move-object/from16 v1, p5

    invoke-direct {v0, v1, v3}, Lcom/android/internal/telephony/AdnRecordCache;->sendErrorResponse(Landroid/os/Message;Ljava/lang/String;)V

    move v13, v7

    .line 490
    .end local v7           #index:I
    .restart local v13       #index:I
    goto/16 :goto_0

    .line 492
    .end local v13           #index:I
    .restart local v7       #index:I
    :cond_9
    if-nez p1, :cond_a

    .line 493
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Abnormal efid: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, p1

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    move-object/from16 v1, p5

    invoke-direct {v0, v1, v3}, Lcom/android/internal/telephony/AdnRecordCache;->sendErrorResponse(Landroid/os/Message;Ljava/lang/String;)V

    move v13, v7

    .line 494
    .end local v7           #index:I
    .restart local v13       #index:I
    goto/16 :goto_0

    .line 496
    .end local v13           #index:I
    .restart local v7       #index:I
    :cond_a
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/AdnRecordCache;->mUsimPhoneBookManager:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;

    move-object/from16 v0, p3

    iget-object v4, v0, Lcom/android/internal/telephony/AdnRecord;->emails:[Ljava/lang/String;

    invoke-virtual {v3, v7, v4}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->checkEmailCapacityFree(I[Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_b

    .line 497
    const-string v3, "drop the email for the limitation of the SIM card"

    const/16 v4, 0x3ed

    move-object/from16 v0, p0

    move-object/from16 v1, p5

    invoke-direct {v0, v1, v3, v4}, Lcom/android/internal/telephony/AdnRecordCache;->sendErrorResponse(Landroid/os/Message;Ljava/lang/String;I)V

    move v13, v7

    .line 501
    .end local v7           #index:I
    .restart local v13       #index:I
    goto/16 :goto_0

    .line 515
    .end local v13           #index:I
    .restart local v7       #index:I
    :cond_b
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/AdnRecordCache;->userWriteResponse:Landroid/util/SparseArray;

    move/from16 v0, p1

    move-object/from16 v1, p5

    invoke-virtual {v3, v0, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 517
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/AdnRecordCache;->mLock:Ljava/lang/Object;

    move-object/from16 v18, v0

    monitor-enter v18
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 518
    :try_start_3
    new-instance v3, Lcom/android/internal/telephony/AdnRecordLoader;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/AdnRecordCache;->mFh:Lcom/android/internal/telephony/IccFileHandler;

    invoke-direct {v3, v4}, Lcom/android/internal/telephony/AdnRecordLoader;-><init>(Lcom/android/internal/telephony/IccFileHandler;)V

    const/4 v4, 0x2

    move-object/from16 v0, p0

    move/from16 v1, p1

    move-object/from16 v2, p3

    invoke-virtual {v0, v4, v1, v7, v2}, Lcom/android/internal/telephony/AdnRecordCache;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v9

    move-object/from16 v4, p3

    move/from16 v5, p1

    move-object/from16 v8, p4

    invoke-virtual/range {v3 .. v9}, Lcom/android/internal/telephony/AdnRecordLoader;->updateEF(Lcom/android/internal/telephony/AdnRecord;IIILjava/lang/String;Landroid/os/Message;)V

    .line 522
    const/4 v3, 0x1

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/android/internal/telephony/AdnRecordCache;->mLocked:Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 524
    :try_start_4
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/AdnRecordCache;->mLock:Ljava/lang/Object;

    invoke-virtual {v3}, Ljava/lang/Object;->wait()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1
    .catch Ljava/lang/InterruptedException; {:try_start_4 .. :try_end_4} :catch_0

    .line 528
    :try_start_5
    monitor-exit v18
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 529
    :try_start_6
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/internal/telephony/AdnRecordCache;->mSuccess:Z

    if-nez v3, :cond_c

    .line 530
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "updateAdnBySearch mSuccess:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/android/internal/telephony/AdnRecordCache;->mSuccess:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/internal/telephony/AdnRecordCache;->logd(Ljava/lang/String;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    move v13, v7

    .line 531
    .end local v7           #index:I
    .restart local v13       #index:I
    goto/16 :goto_0

    .line 525
    .end local v13           #index:I
    .restart local v7       #index:I
    :catch_0
    move-exception v11

    .line 526
    .local v11, e:Ljava/lang/InterruptedException;
    :try_start_7
    monitor-exit v18

    move v13, v7

    .end local v7           #index:I
    .restart local v13       #index:I
    goto/16 :goto_0

    .line 528
    .end local v11           #e:Ljava/lang/InterruptedException;
    .end local v13           #index:I
    .restart local v7       #index:I
    :catchall_1
    move-exception v3

    monitor-exit v18
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    :try_start_8
    throw v3

    .line 533
    :cond_c
    const/16 v17, 0x0

    .line 534
    .local v17, success:I
    const/16 v3, 0x6f3a

    move/from16 v0, p1

    if-eq v0, v3, :cond_d

    const/16 v3, 0x4f30

    move/from16 v0, p1

    if-ne v0, v3, :cond_f

    .line 535
    :cond_d
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/AdnRecordCache;->mUsimPhoneBookManager:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;

    invoke-virtual {v3}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->supportVodafone()Z

    move-result v3

    if-eqz v3, :cond_e

    .line 536
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/AdnRecordCache;->mUsimPhoneBookManager:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;

    move-object/from16 v0, p3

    iget-object v4, v0, Lcom/android/internal/telephony/AdnRecord;->sne:Ljava/lang/String;

    invoke-virtual {v3, v4, v7}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->updateSneByAdnIndex(Ljava/lang/String;I)V

    .line 538
    :cond_e
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/AdnRecordCache;->mUsimPhoneBookManager:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;

    move-object/from16 v0, p3

    iget-object v4, v0, Lcom/android/internal/telephony/AdnRecord;->additionalNumber:Ljava/lang/String;

    invoke-virtual {v3, v4, v7}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->updateAnrByAdnIndex(Ljava/lang/String;I)V

    .line 539
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/AdnRecordCache;->mUsimPhoneBookManager:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;

    move-object/from16 v0, p3

    iget-object v4, v0, Lcom/android/internal/telephony/AdnRecord;->emails:[Ljava/lang/String;

    invoke-virtual {v3, v4, v7}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->updateEmailsByAdnIndex([Ljava/lang/String;I)I

    move-result v17

    .line 542
    :cond_f
    const/4 v3, -0x1

    move/from16 v0, v17

    if-ne v3, v0, :cond_10

    .line 543
    const-string v3, "drop the email for the limitation of the SIM card"

    const/16 v4, 0x3ed

    move-object/from16 v0, p0

    move-object/from16 v1, p5

    invoke-direct {v0, v1, v3, v4}, Lcom/android/internal/telephony/AdnRecordCache;->sendErrorResponse(Landroid/os/Message;Ljava/lang/String;I)V

    :goto_4
    move v13, v7

    .line 557
    .end local v7           #index:I
    .restart local v13       #index:I
    goto/16 :goto_0

    .line 546
    .end local v13           #index:I
    .restart local v7       #index:I
    :cond_10
    const/4 v3, -0x2

    move/from16 v0, v17

    if-ne v3, v0, :cond_11

    .line 547
    const-string v3, "the email string is too long"

    const/16 v4, 0x3ee

    move-object/from16 v0, p0

    move-object/from16 v1, p5

    invoke-direct {v0, v1, v3, v4}, Lcom/android/internal/telephony/AdnRecordCache;->sendErrorResponse(Landroid/os/Message;Ljava/lang/String;I)V

    .line 551
    const-string v3, "GSM"

    const-string v4, "haman, by search email too long"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    .line 553
    :cond_11
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "updateAdnBySearch response:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p5

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/internal/telephony/AdnRecordCache;->logd(Ljava/lang/String;)V

    .line 554
    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object/from16 v0, p5

    invoke-static {v0, v3, v4}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 555
    invoke-virtual/range {p5 .. p5}, Landroid/os/Message;->sendToTarget()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    goto :goto_4
.end method

.method public updateContactToGroups(I[I)Z
    .locals 1
    .parameter "adnIndex"
    .parameter "grpIdList"

    .prologue
    .line 748
    iget-object v0, p0, Lcom/android/internal/telephony/AdnRecordCache;->mUsimPhoneBookManager:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;

    invoke-virtual {v0, p1, p2}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->updateContactToGroups(I[I)Z

    move-result v0

    return v0
.end method

.method public updateUsimAas(IILjava/lang/String;)Z
    .locals 1
    .parameter "index"
    .parameter "pbrIndex"
    .parameter "aasName"

    .prologue
    .line 805
    iget-object v0, p0, Lcom/android/internal/telephony/AdnRecordCache;->mUsimPhoneBookManager:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->updateUsimAas(IILjava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public updateUsimGroup(ILjava/lang/String;)I
    .locals 1
    .parameter "nGasId"
    .parameter "grpName"

    .prologue
    .line 736
    iget-object v0, p0, Lcom/android/internal/telephony/AdnRecordCache;->mUsimPhoneBookManager:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;

    invoke-virtual {v0, p1, p2}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->updateUsimGroup(ILjava/lang/String;)I

    move-result v0

    return v0
.end method
