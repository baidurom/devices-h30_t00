.class public Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/gemini/GeminiDataSubUtil$a;
    }
.end annotation


# static fields
.field private static b:Z


# instance fields
.field private a:[Z

.field private c:Lcom/android/internal/telephony/gemini/GeminiPhone;

.field private d:Lcom/android/internal/telephony/Phone;

.field private e:[Lcom/android/internal/telephony/Phone;

.field private f:[Lcom/android/internal/telephony/gemini/GeminiDataConn;

.field private g:[Lcom/android/internal/telephony/gemini/GeminiDataConnAc;

.field private h:[Landroid/os/Handler;

.field private i:Landroid/content/BroadcastReceiver;

.field private j:[I

.field private k:[I

.field private l:Landroid/os/Handler;

.field private m:Lcom/android/internal/telephony/DefaultPhoneNotifier$IDataStateChangedCallback;

.field protected mApnTypes:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field protected mContext:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 106
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->b:Z

    return-void
.end method

.method public constructor <init>(Lcom/android/internal/telephony/gemini/GeminiPhone;Lcom/android/internal/telephony/Phone;Lcom/android/internal/telephony/Phone;Lcom/android/internal/telephony/Phone;Lcom/android/internal/telephony/Phone;)V
    .locals 9
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x4

    const/4 v0, 0x0

    const/4 v8, 0x0

    const/4 v3, 0x2

    .line 223
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 104
    new-array v1, v2, [Z

    fill-array-data v1, :array_0

    iput-object v1, p0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->a:[Z

    .line 110
    sget v1, Lcom/android/internal/telephony/PhoneConstants;->GEMINI_SIM_NUM:I

    new-array v1, v1, [Lcom/android/internal/telephony/Phone;

    iput-object v1, p0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->e:[Lcom/android/internal/telephony/Phone;

    .line 111
    sget v1, Lcom/android/internal/telephony/PhoneConstants;->GEMINI_SIM_NUM:I

    new-array v1, v1, [Lcom/android/internal/telephony/gemini/GeminiDataConn;

    iput-object v1, p0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->f:[Lcom/android/internal/telephony/gemini/GeminiDataConn;

    .line 112
    sget v1, Lcom/android/internal/telephony/PhoneConstants;->GEMINI_SIM_NUM:I

    new-array v1, v1, [Lcom/android/internal/telephony/gemini/GeminiDataConnAc;

    iput-object v1, p0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->g:[Lcom/android/internal/telephony/gemini/GeminiDataConnAc;

    .line 113
    sget v1, Lcom/android/internal/telephony/PhoneConstants;->GEMINI_SIM_NUM:I

    new-array v1, v1, [Landroid/os/Handler;

    iput-object v1, p0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->h:[Landroid/os/Handler;

    .line 115
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    iput-object v1, p0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->mApnTypes:Ljava/util/HashSet;

    .line 120
    new-array v1, v3, [I

    fill-array-data v1, :array_1

    iput-object v1, p0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->j:[I

    .line 121
    new-array v1, v3, [I

    fill-array-data v1, :array_2

    iput-object v1, p0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->k:[I

    .line 123
    new-instance v1, Lcom/android/internal/telephony/gemini/c;

    invoke-direct {v1, p0}, Lcom/android/internal/telephony/gemini/c;-><init>(Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;)V

    iput-object v1, p0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->l:Landroid/os/Handler;

    .line 159
    new-instance v1, Lcom/android/internal/telephony/gemini/a;

    invoke-direct {v1, p0}, Lcom/android/internal/telephony/gemini/a;-><init>(Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;)V

    iput-object v1, p0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->m:Lcom/android/internal/telephony/DefaultPhoneNotifier$IDataStateChangedCallback;

    .line 224
    iput-object p1, p0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->c:Lcom/android/internal/telephony/gemini/GeminiPhone;

    .line 225
    new-array v2, v2, [Lcom/android/internal/telephony/Phone;

    aput-object p2, v2, v0

    const/4 v1, 0x1

    aput-object p3, v2, v1

    aput-object p4, v2, v3

    const/4 v1, 0x3

    aput-object p5, v2, v1

    .line 228
    check-cast p2, Lcom/android/internal/telephony/PhoneProxy;

    iput-object p2, p0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->d:Lcom/android/internal/telephony/Phone;

    move v1, v0

    .line 230
    :goto_0
    sget v0, Lcom/android/internal/telephony/PhoneConstants;->GEMINI_SIM_NUM:I

    if-ge v1, v0, :cond_1

    .line 231
    add-int/lit8 v3, v1, 0x1

    .line 232
    iget-object v4, p0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->e:[Lcom/android/internal/telephony/Phone;

    aget-object v0, v2, v1

    check-cast v0, Lcom/android/internal/telephony/PhoneProxy;

    aput-object v0, v4, v1

    .line 233
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->f:[Lcom/android/internal/telephony/gemini/GeminiDataConn;

    new-instance v4, Lcom/android/internal/telephony/gemini/GeminiDataConn;

    invoke-virtual {p1, v1}, Lcom/android/internal/telephony/gemini/GeminiPhone;->getPhonebyId(I)Lcom/android/internal/telephony/Phone;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "GeminiDC-"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v5, v6, v3}, Lcom/android/internal/telephony/gemini/GeminiDataConn;-><init>(Lcom/android/internal/telephony/Phone;Ljava/lang/String;I)V

    aput-object v4, v0, v1

    .line 234
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->f:[Lcom/android/internal/telephony/gemini/GeminiDataConn;

    aget-object v0, v0, v1

    invoke-virtual {v0}, Lcom/android/internal/telephony/gemini/GeminiDataConn;->start()V

    .line 235
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->g:[Lcom/android/internal/telephony/gemini/GeminiDataConnAc;

    new-instance v4, Lcom/android/internal/telephony/gemini/GeminiDataConnAc;

    iget-object v5, p0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->f:[Lcom/android/internal/telephony/gemini/GeminiDataConn;

    aget-object v5, v5, v1

    invoke-direct {v4, v5, v3}, Lcom/android/internal/telephony/gemini/GeminiDataConnAc;-><init>(Lcom/android/internal/telephony/gemini/GeminiDataConn;I)V

    aput-object v4, v0, v1

    .line 236
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->h:[Landroid/os/Handler;

    new-instance v3, Landroid/os/Handler;

    invoke-direct {v3}, Landroid/os/Handler;-><init>()V

    aput-object v3, v0, v1

    .line 238
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->g:[Lcom/android/internal/telephony/gemini/GeminiDataConnAc;

    aget-object v0, v0, v1

    aget-object v3, v2, v1

    invoke-interface {v3}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v3

    iget-object v4, p0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->h:[Landroid/os/Handler;

    aget-object v4, v4, v1

    iget-object v5, p0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->f:[Lcom/android/internal/telephony/gemini/GeminiDataConn;

    aget-object v5, v5, v1

    invoke-virtual {v5}, Lcom/android/internal/telephony/gemini/GeminiDataConn;->getHandler()Landroid/os/Handler;

    move-result-object v5

    invoke-virtual {v0, v3, v4, v5}, Lcom/android/internal/telephony/gemini/GeminiDataConnAc;->fullyConnectSync(Landroid/content/Context;Landroid/os/Handler;Landroid/os/Handler;)I

    move-result v0

    .line 239
    if-nez v0, :cond_0

    .line 240
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Connect success: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->b(Ljava/lang/String;)V

    .line 245
    :goto_1
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->f:[Lcom/android/internal/telephony/gemini/GeminiDataConn;

    aget-object v0, v0, v1

    iget-object v3, p0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->l:Landroid/os/Handler;

    add-int/lit8 v4, v1, 0x1

    invoke-virtual {v0, v3, v4, v8}, Lcom/android/internal/telephony/gemini/GeminiDataConn;->registerForIdle(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 248
    invoke-direct {p0, v1}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->b(I)Lcom/android/internal/telephony/PhoneProxy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneProxy;->getActivePhone()Lcom/android/internal/telephony/Phone;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/PhoneBase;

    .line 249
    iget-object v0, v0, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    iget-object v3, p0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->l:Landroid/os/Handler;

    add-int/lit8 v4, v1, 0x5

    invoke-interface {v0, v3, v4, v8}, Lcom/android/internal/telephony/CommandsInterface;->registerForOffOrNotAvailable(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 230
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto/16 :goto_0

    .line 242
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Could not connect to "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->d(Ljava/lang/String;)V

    goto :goto_1

    .line 252
    :cond_1
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->d:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->mContext:Landroid/content/Context;

    .line 254
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 255
    const-string v1, "android.intent.action.DATA_CONNECTION_FAILED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 256
    const-string v1, "android.intent.action.SERVICE_STATE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 259
    new-instance v1, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil$a;

    invoke-direct {v1, p0, v8}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil$a;-><init>(Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;Lcom/android/internal/telephony/gemini/c;)V

    iput-object v1, p0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->i:Landroid/content/BroadcastReceiver;

    .line 260
    iget-object v1, p0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->i:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 262
    return-void

    .line 104
    nop

    :array_0
    .array-data 0x1
        0x1t
        0x1t
        0x1t
        0x1t
    .end array-data

    .line 120
    :array_1
    .array-data 0x4
        0xfft 0xfft 0xfft 0xfft
        0xfft 0xfft 0xfft 0xfft
    .end array-data

    .line 121
    :array_2
    .array-data 0x4
        0xfft 0xfft 0xfft 0xfft
        0xfft 0xfft 0xfft 0xfft
    .end array-data
.end method

.method private a(I)I
    .locals 1
    .parameter

    .prologue
    .line 294
    const/4 v0, 0x0

    return v0
.end method

.method static synthetic a(Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;I)I
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 80
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->a(I)I

    move-result v0

    return v0
.end method

.method private a()V
    .locals 3

    .prologue
    .line 300
    invoke-direct {p0}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->c()I

    move-result v0

    .line 301
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->c(I)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->c:Lcom/android/internal/telephony/gemini/GeminiPhone;

    invoke-virtual {v1, v0}, Lcom/android/internal/telephony/gemini/GeminiPhone;->getIccCardGemini(I)Lcom/android/internal/telephony/IccCard;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/internal/telephony/IccCard;->getState()Lcom/android/internal/telephony/IccCardConstants$State;

    move-result-object v1

    sget-object v2, Lcom/android/internal/telephony/IccCardConstants$State;->READY:Lcom/android/internal/telephony/IccCardConstants$State;

    if-ne v1, v2, :cond_0

    .line 303
    iget-object v1, p0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->e:[Lcom/android/internal/telephony/Phone;

    aget-object v1, v1, v0

    iput-object v1, p0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->d:Lcom/android/internal/telephony/Phone;

    .line 304
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "UAPP_C1: active Phone ="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->b(Ljava/lang/String;)V

    .line 326
    :goto_0
    return-void

    .line 308
    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->c:Lcom/android/internal/telephony/gemini/GeminiPhone;

    invoke-static {}, Lcom/android/internal/telephony/gemini/GeminiPhone;->get3GSimId()I

    move-result v0

    .line 309
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->c(I)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->c:Lcom/android/internal/telephony/gemini/GeminiPhone;

    invoke-virtual {v1, v0}, Lcom/android/internal/telephony/gemini/GeminiPhone;->getIccCardGemini(I)Lcom/android/internal/telephony/IccCard;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/internal/telephony/IccCard;->getState()Lcom/android/internal/telephony/IccCardConstants$State;

    move-result-object v1

    sget-object v2, Lcom/android/internal/telephony/IccCardConstants$State;->READY:Lcom/android/internal/telephony/IccCardConstants$State;

    if-ne v1, v2, :cond_1

    .line 311
    iget-object v1, p0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->e:[Lcom/android/internal/telephony/Phone;

    aget-object v1, v1, v0

    iput-object v1, p0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->d:Lcom/android/internal/telephony/Phone;

    .line 312
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "UAPP_C2: active Phone ="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->b(Ljava/lang/String;)V

    goto :goto_0

    .line 316
    :cond_1
    const/4 v0, 0x0

    :goto_1
    sget v1, Lcom/android/internal/telephony/PhoneConstants;->GEMINI_SIM_NUM:I

    if-ge v0, v1, :cond_3

    .line 317
    iget-object v1, p0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->c:Lcom/android/internal/telephony/gemini/GeminiPhone;

    invoke-virtual {v1, v0}, Lcom/android/internal/telephony/gemini/GeminiPhone;->getIccCardGemini(I)Lcom/android/internal/telephony/IccCard;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/internal/telephony/IccCard;->getState()Lcom/android/internal/telephony/IccCardConstants$State;

    move-result-object v1

    sget-object v2, Lcom/android/internal/telephony/IccCardConstants$State;->READY:Lcom/android/internal/telephony/IccCardConstants$State;

    if-ne v1, v2, :cond_2

    .line 318
    iget-object v1, p0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->e:[Lcom/android/internal/telephony/Phone;

    aget-object v1, v1, v0

    iput-object v1, p0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->d:Lcom/android/internal/telephony/Phone;

    .line 319
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "UAPP_C3: active Phone ="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->b(Ljava/lang/String;)V

    goto :goto_0

    .line 316
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 324
    :cond_3
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->c:Lcom/android/internal/telephony/gemini/GeminiPhone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/gemini/GeminiPhone;->getDefaultPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->d:Lcom/android/internal/telephony/Phone;

    .line 325
    const-string v0, "UAPP_C4: active Phone is default phone"

    invoke-static {v0}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->b(Ljava/lang/String;)V

    goto :goto_0
.end method

.method static synthetic a(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 80
    invoke-static {p0}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->b(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic a(Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;)[I
    .locals 1
    .parameter

    .prologue
    .line 80
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->k:[I

    return-object v0
.end method

.method private b()I
    .locals 3

    .prologue
    .line 547
    invoke-direct {p0}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->c()I

    move-result v0

    .line 548
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "DCDS: defaultSimId = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->b(Ljava/lang/String;)V

    .line 549
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->c(I)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->c:Lcom/android/internal/telephony/gemini/GeminiPhone;

    invoke-virtual {v1, v0}, Lcom/android/internal/telephony/gemini/GeminiPhone;->getIccCardGemini(I)Lcom/android/internal/telephony/IccCard;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/internal/telephony/IccCard;->getState()Lcom/android/internal/telephony/IccCardConstants$State;

    move-result-object v1

    sget-object v2, Lcom/android/internal/telephony/IccCardConstants$State;->READY:Lcom/android/internal/telephony/IccCardConstants$State;

    if-ne v1, v2, :cond_0

    .line 551
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "DCDS_C1: SIM ID ="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->b(Ljava/lang/String;)V

    .line 571
    :goto_0
    return v0

    .line 555
    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->c:Lcom/android/internal/telephony/gemini/GeminiPhone;

    invoke-static {}, Lcom/android/internal/telephony/gemini/GeminiPhone;->get3GSimId()I

    move-result v0

    .line 556
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "DCDS: threeGSimId = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->b(Ljava/lang/String;)V

    .line 557
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->c(I)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->c:Lcom/android/internal/telephony/gemini/GeminiPhone;

    invoke-virtual {v1, v0}, Lcom/android/internal/telephony/gemini/GeminiPhone;->getIccCardGemini(I)Lcom/android/internal/telephony/IccCard;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/internal/telephony/IccCard;->getState()Lcom/android/internal/telephony/IccCardConstants$State;

    move-result-object v1

    sget-object v2, Lcom/android/internal/telephony/IccCardConstants$State;->READY:Lcom/android/internal/telephony/IccCardConstants$State;

    if-ne v1, v2, :cond_1

    .line 559
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "DCDS_C2: SIM ID ="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->b(Ljava/lang/String;)V

    goto :goto_0

    .line 563
    :cond_1
    const/4 v0, 0x0

    :goto_1
    sget v1, Lcom/android/internal/telephony/PhoneConstants;->GEMINI_SIM_NUM:I

    if-ge v0, v1, :cond_3

    .line 564
    iget-object v1, p0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->c:Lcom/android/internal/telephony/gemini/GeminiPhone;

    invoke-virtual {v1, v0}, Lcom/android/internal/telephony/gemini/GeminiPhone;->getIccCardGemini(I)Lcom/android/internal/telephony/IccCard;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/internal/telephony/IccCard;->getState()Lcom/android/internal/telephony/IccCardConstants$State;

    move-result-object v1

    sget-object v2, Lcom/android/internal/telephony/IccCardConstants$State;->READY:Lcom/android/internal/telephony/IccCardConstants$State;

    if-ne v1, v2, :cond_2

    .line 565
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "DCDS_C3: SIM ID ="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->b(Ljava/lang/String;)V

    goto :goto_0

    .line 563
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 570
    :cond_3
    const-string v0, "DCDS_C4: no available SIM"

    invoke-static {v0}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->b(Ljava/lang/String;)V

    .line 571
    const/4 v0, -0x1

    goto :goto_0
.end method

.method private b(I)Lcom/android/internal/telephony/PhoneProxy;
    .locals 2
    .parameter

    .prologue
    .line 329
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->c(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 330
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->e:[Lcom/android/internal/telephony/Phone;

    aget-object v0, v0, p1

    check-cast v0, Lcom/android/internal/telephony/PhoneProxy;

    .line 333
    :goto_0
    return-object v0

    .line 332
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SAPP:Invaild simId=  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->c(Ljava/lang/String;)V

    .line 333
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static b(Ljava/lang/String;)V
    .locals 3
    .parameter

    .prologue
    .line 992
    const-string v0, "PHONE"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[GeminiDataSubUtil] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 993
    return-void
.end method

.method static synthetic b(Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;)[I
    .locals 1
    .parameter

    .prologue
    .line 80
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->j:[I

    return-object v0
.end method

.method private c()I
    .locals 3

    .prologue
    .line 955
    .line 958
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "gprs_connection_setting"

    const/4 v2, -0x4

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .line 960
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Default Data Setting value="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->b(Ljava/lang/String;)V

    .line 962
    return v0
.end method

.method private static c(Ljava/lang/String;)V
    .locals 3
    .parameter

    .prologue
    .line 996
    const-string v0, "PHONE"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[GeminiDataSubUtil] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 997
    return-void
.end method

.method private c(I)Z
    .locals 1
    .parameter

    .prologue
    .line 931
    if-ltz p1, :cond_0

    sget v0, Lcom/android/internal/telephony/PhoneConstants;->GEMINI_SIM_NUM:I

    if-gt p1, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic c(Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;)[Lcom/android/internal/telephony/gemini/GeminiDataConnAc;
    .locals 1
    .parameter

    .prologue
    .line 80
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->g:[Lcom/android/internal/telephony/gemini/GeminiDataConnAc;

    return-object v0
.end method

.method private static d(Ljava/lang/String;)V
    .locals 3
    .parameter

    .prologue
    .line 1000
    const-string v0, "PHONE"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[GeminiDataSubUtil] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1001
    return-void
.end method

.method static synthetic d(Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;)[Z
    .locals 1
    .parameter

    .prologue
    .line 80
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->a:[Z

    return-object v0
.end method

.method static synthetic e(Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;)[Lcom/android/internal/telephony/gemini/GeminiDataConn;
    .locals 1
    .parameter

    .prologue
    .line 80
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->f:[Lcom/android/internal/telephony/gemini/GeminiDataConn;

    return-object v0
.end method

.method static synthetic f(Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;)I
    .locals 1
    .parameter

    .prologue
    .line 80
    invoke-direct {p0}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->c()I

    move-result v0

    return v0
.end method


# virtual methods
.method public disableApnType(Ljava/lang/String;)I
    .locals 3
    .parameter

    .prologue
    .line 596
    .line 599
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "disableApnType():type="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",call Gemini version"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->b(Ljava/lang/String;)V

    .line 612
    invoke-direct {p0}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->b()I

    move-result v0

    .line 614
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "DAT:Select simId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->b(Ljava/lang/String;)V

    .line 616
    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 617
    invoke-virtual {p0, p1, v0}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->disableApnTypeGemini(Ljava/lang/String;I)I

    move-result v0

    .line 622
    :goto_0
    return v0

    .line 619
    :cond_0
    const/4 v0, 0x3

    goto :goto_0
.end method

.method public declared-synchronized disableApnTypeGemini(Ljava/lang/String;I)I
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 871
    monitor-enter p0

    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "disableApnTypeGemini():type="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",simId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",powerOff="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->a:[Z

    aget-boolean v1, v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->b(Ljava/lang/String;)V

    .line 873
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->g:[Lcom/android/internal/telephony/gemini/GeminiDataConnAc;

    aget-object v0, v0, p2

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/gemini/GeminiDataConnAc;->disconnectSync(Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    monitor-exit p0

    return v0

    .line 871
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public disableDataConnectivity()Z
    .locals 1

    .prologue
    .line 543
    const/4 v0, 0x0

    return v0
.end method

.method public disableDataConnectivityGemini(I)I
    .locals 1
    .parameter

    .prologue
    .line 803
    const/4 v0, 0x4

    return v0
.end method

.method public disableDnsCheck(Z)V
    .locals 1
    .parameter

    .prologue
    .line 426
    invoke-direct {p0}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->a()V

    .line 427
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->d:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->disableDnsCheck(Z)V

    .line 429
    return-void
.end method

.method public disableDnsCheckGemini(ZI)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 742
    invoke-direct {p0, p2}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->b(I)Lcom/android/internal/telephony/PhoneProxy;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/PhoneProxy;->disableDnsCheck(Z)V

    .line 743
    return-void
.end method

.method public enableApnType(Ljava/lang/String;)I
    .locals 4
    .parameter

    .prologue
    const/16 v0, 0x63

    .line 575
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "enableApnType():type="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",call Gemini version"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->b(Ljava/lang/String;)V

    .line 576
    invoke-direct {p0}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->b()I

    move-result v1

    .line 577
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "EAT:Select simId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->b(Ljava/lang/String;)V

    .line 578
    invoke-direct {p0, v1}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->c(I)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 581
    const-string v0, "Do not update the data setting"

    invoke-static {v0}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->b(Ljava/lang/String;)V

    .line 583
    invoke-virtual {p0, p1, v1}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->enableApnTypeGemini(Ljava/lang/String;I)I

    move-result v0

    .line 590
    :cond_0
    :goto_0
    return v0

    .line 585
    :cond_1
    if-eq v1, v0, :cond_0

    .line 590
    const/4 v0, 0x3

    goto :goto_0
.end method

.method public declared-synchronized enableApnTypeGemini(Ljava/lang/String;I)I
    .locals 8
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x3

    const/4 v2, 0x0

    const/4 v7, -0x1

    .line 807
    monitor-enter p0

    .line 809
    if-eq p2, v7, :cond_0

    :try_start_0
    invoke-direct {p0, p2}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->c(I)Z

    move-result v1

    if-nez v1, :cond_1

    .line 811
    :cond_0
    const-string v1, "EATG:SIM_NONE or Invalid"

    invoke-static {v1}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->c(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 866
    :goto_0
    monitor-exit p0

    return v0

    .line 815
    :cond_1
    :try_start_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "gemini enableApnTypeGemini():type="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ",simId="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ",powerOff="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, p0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->a:[Z

    aget-boolean v3, v3, p2

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->b(Ljava/lang/String;)V

    move v3, v2

    .line 817
    :goto_1
    sget v1, Lcom/android/internal/telephony/PhoneConstants;->GEMINI_SIM_NUM:I

    if-ge v3, v1, :cond_5

    .line 819
    if-ne p2, v3, :cond_3

    .line 817
    :cond_2
    add-int/lit8 v1, v3, 0x1

    move v3, v1

    goto :goto_1

    .line 823
    :cond_3
    const-string v1, "default"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 824
    invoke-direct {p0, v3}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->b(I)Lcom/android/internal/telephony/PhoneProxy;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/telephony/PhoneProxy;->getActiveApnTypes()[Ljava/lang/String;

    move-result-object v4

    .line 825
    if-eqz v4, :cond_2

    array-length v1, v4

    if-eqz v1, :cond_2

    move v1, v2

    .line 826
    :goto_2
    array-length v5, v4

    if-ge v1, v5, :cond_2

    .line 827
    const-string v5, "default"

    aget-object v6, v4, v1

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_4

    invoke-direct {p0, v3}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->b(I)Lcom/android/internal/telephony/PhoneProxy;

    move-result-object v5

    aget-object v6, v4, v1

    invoke-virtual {v5, v6}, Lcom/android/internal/telephony/PhoneProxy;->getDataConnectionState(Ljava/lang/String;)Lcom/android/internal/telephony/PhoneConstants$DataState;

    move-result-object v5

    sget-object v6, Lcom/android/internal/telephony/PhoneConstants$DataState;->DISCONNECTED:Lcom/android/internal/telephony/PhoneConstants$DataState;

    if-eq v5, v6, :cond_4

    .line 829
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "enableApnTypeGemini():Peer SIM still have non default active APN type: activeApnTypes["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    aget-object v1, v4, v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->b(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_0

    .line 807
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 826
    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 837
    :cond_5
    :try_start_2
    invoke-direct {p0, p2}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->a(I)I

    move-result v0

    .line 838
    iget-object v1, p0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->j:[I

    aget v1, v1, v0

    .line 840
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "enableApnTypeGemini(): activeModem="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", current_use_sim_id="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->j:[I

    aget v3, v3, v0

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", request_use_gprs_sim_id="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->k:[I

    aget v3, v3, v0

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->b(Ljava/lang/String;)V

    .line 843
    if-ne p2, v1, :cond_6

    iget-object v2, p0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->g:[Lcom/android/internal/telephony/gemini/GeminiDataConnAc;

    aget-object v2, v2, v1

    invoke-virtual {v2}, Lcom/android/internal/telephony/gemini/GeminiDataConnAc;->isIdleDeactingSync()Z

    move-result v2

    if-nez v2, :cond_6

    .line 845
    iget-object v1, p0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->k:[I

    const/4 v2, -0x1

    aput v2, v1, v0

    .line 846
    const-string v0, "enableApnTypeGemini(): current_use_sim_id equals request SIM ID."

    invoke-static {v0}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->b(Ljava/lang/String;)V

    .line 847
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->g:[Lcom/android/internal/telephony/gemini/GeminiDataConnAc;

    aget-object v0, v0, p2

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/gemini/GeminiDataConnAc;->connectSync(Ljava/lang/String;)I

    move-result v0

    goto/16 :goto_0

    .line 850
    :cond_6
    if-ne v1, v7, :cond_7

    .line 851
    iget-object v2, p0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->j:[I

    aput p2, v2, v0

    .line 852
    iget-object v2, p0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->k:[I

    const/4 v3, -0x1

    aput v3, v2, v0

    .line 853
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "enableApnTypeGemini(): current SIM is NONE or IDLE, currentSim="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->b(Ljava/lang/String;)V

    .line 854
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->g:[Lcom/android/internal/telephony/gemini/GeminiDataConnAc;

    aget-object v0, v0, p2

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/gemini/GeminiDataConnAc;->connectSync(Ljava/lang/String;)I

    move-result v0

    goto/16 :goto_0

    .line 856
    :cond_7
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "enableApnTypeGemini(): current SIM:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " is active."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->b(Ljava/lang/String;)V

    .line 857
    iget-object v2, p0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->k:[I

    aget v2, v2, v0

    if-eq p2, v2, :cond_8

    .line 858
    iget-object v2, p0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->mApnTypes:Ljava/util/HashSet;

    invoke-virtual {v2}, Ljava/util/HashSet;->clear()V

    .line 860
    :cond_8
    iget-object v2, p0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->mApnTypes:Ljava/util/HashSet;

    invoke-virtual {v2, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 861
    iget-object v2, p0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->k:[I

    aput p2, v2, v0

    .line 862
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->f:[Lcom/android/internal/telephony/gemini/GeminiDataConn;

    aget-object v0, v0, v1

    invoke-virtual {v0}, Lcom/android/internal/telephony/gemini/GeminiDataConn;->cleanupAllConnection()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 866
    const/4 v0, 0x1

    goto/16 :goto_0
.end method

.method public enableDataConnectivity()Z
    .locals 1

    .prologue
    .line 538
    const/4 v0, 0x0

    return v0
.end method

.method public enableDataConnectivityGemini(I)I
    .locals 1
    .parameter

    .prologue
    .line 798
    const/4 v0, 0x4

    return v0
.end method

.method public getActiveApn()Ljava/lang/String;
    .locals 1

    .prologue
    .line 480
    const-string v0, "[DT] getActiveApn"

    invoke-static {v0}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->b(Ljava/lang/String;)V

    .line 481
    invoke-direct {p0}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->a()V

    .line 483
    const-string v0, ""

    return-object v0
.end method

.method public getActiveApnGemini(I)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 761
    const-string v0, ""

    return-object v0
.end method

.method public getActiveApnType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 339
    invoke-direct {p0}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->a()V

    .line 340
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->d:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getActiveApnType()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getActiveApnTypeGemini(I)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 754
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->b(I)Lcom/android/internal/telephony/PhoneProxy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneProxy;->getActiveApnType()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getActiveApnTypes()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 474
    invoke-direct {p0}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->a()V

    .line 475
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->d:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getActiveApnTypes()[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getActiveApnTypesGemini(I)[Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 750
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->b(I)Lcom/android/internal/telephony/PhoneProxy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneProxy;->getActiveApnTypes()[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getApnForType(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 353
    invoke-direct {p0}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->a()V

    .line 354
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->d:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->getApnForType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getApnForTypeGemini(Ljava/lang/String;I)Ljava/lang/String;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 767
    invoke-direct {p0, p2}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->b(I)Lcom/android/internal/telephony/PhoneProxy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneProxy;->getActiveApnType()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getCurrentDataConnectionList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/android/internal/telephony/DataConnection;",
            ">;"
        }
    .end annotation

    .prologue
    .line 505
    invoke-direct {p0}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->a()V

    .line 506
    const/4 v0, 0x0

    return-object v0
.end method

.method public getCurrentDataConnectionListGemini(I)Ljava/util/List;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List",
            "<",
            "Lcom/android/internal/telephony/DataConnection;",
            ">;"
        }
    .end annotation

    .prologue
    .line 783
    const/4 v0, 0x0

    return-object v0
.end method

.method public getDataActivityState()Lcom/android/internal/telephony/Phone$DataActivityState;
    .locals 1

    .prologue
    .line 415
    invoke-direct {p0}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->a()V

    .line 416
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->d:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getDataActivityState()Lcom/android/internal/telephony/Phone$DataActivityState;

    move-result-object v0

    return-object v0
.end method

.method public getDataActivityStateGemini(I)Lcom/android/internal/telephony/Phone$DataActivityState;
    .locals 1
    .parameter

    .prologue
    .line 738
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->b(I)Lcom/android/internal/telephony/PhoneProxy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneProxy;->getDataActivityState()Lcom/android/internal/telephony/Phone$DataActivityState;

    move-result-object v0

    return-object v0
.end method

.method public getDataCallList(Landroid/os/Message;)V
    .locals 1
    .parameter

    .prologue
    .line 495
    const-string v0, "[DT] getDataCallList"

    invoke-static {v0}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->b(Ljava/lang/String;)V

    .line 496
    invoke-direct {p0}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->a()V

    .line 497
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->d:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->getDataCallList(Landroid/os/Message;)V

    .line 498
    return-void
.end method

.method public getDataCallListGemini(Landroid/os/Message;I)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 775
    invoke-direct {p0, p2}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->b(I)Lcom/android/internal/telephony/PhoneProxy;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/PhoneProxy;->getDataCallList(Landroid/os/Message;)V

    .line 776
    return-void
.end method

.method public getDataConnectionState()Lcom/android/internal/telephony/PhoneConstants$DataState;
    .locals 1

    .prologue
    .line 400
    invoke-direct {p0}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->a()V

    .line 401
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->d:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getDataConnectionState()Lcom/android/internal/telephony/PhoneConstants$DataState;

    move-result-object v0

    return-object v0
.end method

.method public getDataConnectionState(Ljava/lang/String;)Lcom/android/internal/telephony/PhoneConstants$DataState;
    .locals 1
    .parameter

    .prologue
    .line 369
    invoke-direct {p0}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->a()V

    .line 370
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->d:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->getDataConnectionState(Ljava/lang/String;)Lcom/android/internal/telephony/PhoneConstants$DataState;

    move-result-object v0

    return-object v0
.end method

.method public getDataConnectionStateGemini(I)Lcom/android/internal/telephony/PhoneConstants$DataState;
    .locals 1
    .parameter

    .prologue
    .line 730
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->b(I)Lcom/android/internal/telephony/PhoneProxy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneProxy;->getDataConnectionState()Lcom/android/internal/telephony/PhoneConstants$DataState;

    move-result-object v0

    return-object v0
.end method

.method public getDataConnectionStateGemini(Ljava/lang/String;I)Lcom/android/internal/telephony/PhoneConstants$DataState;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 734
    invoke-direct {p0, p2}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->b(I)Lcom/android/internal/telephony/PhoneProxy;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/PhoneProxy;->getDataConnectionState(Ljava/lang/String;)Lcom/android/internal/telephony/PhoneConstants$DataState;

    move-result-object v0

    return-object v0
.end method

.method public getDataRoamingEnabled()Z
    .locals 1

    .prologue
    .line 520
    invoke-direct {p0}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->a()V

    .line 521
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->d:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getDataRoamingEnabled()Z

    move-result v0

    return v0
.end method

.method public getDataRoamingEnabledGemini(I)Z
    .locals 1
    .parameter

    .prologue
    .line 789
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->b(I)Lcom/android/internal/telephony/PhoneProxy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneProxy;->getDataRoamingEnabled()Z

    move-result v0

    return v0
.end method

.method public getDataStateChangedCallback()Lcom/android/internal/telephony/DefaultPhoneNotifier$IDataStateChangedCallback;
    .locals 1

    .prologue
    .line 170
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->m:Lcom/android/internal/telephony/DefaultPhoneNotifier$IDataStateChangedCallback;

    return-object v0
.end method

.method public getDnsServers(Ljava/lang/String;)[Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 707
    invoke-direct {p0}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->a()V

    .line 708
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->d:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->getDnsServers(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDnsServersGemini(Ljava/lang/String;I)[Ljava/lang/String;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 906
    invoke-direct {p0, p2}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->b(I)Lcom/android/internal/telephony/PhoneProxy;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/PhoneProxy;->getDnsServers(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getGateway(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 690
    invoke-direct {p0}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->a()V

    .line 691
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->d:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->getGateway(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getGatewayGeminin(Ljava/lang/String;I)Ljava/lang/String;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 902
    invoke-direct {p0, p2}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->b(I)Lcom/android/internal/telephony/PhoneProxy;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/PhoneProxy;->getGateway(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getInterfaceName(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 660
    invoke-direct {p0}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->a()V

    .line 661
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->d:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->getInterfaceName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getInterfaceNameGemini(Ljava/lang/String;I)Ljava/lang/String;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 894
    invoke-direct {p0, p2}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->b(I)Lcom/android/internal/telephony/PhoneProxy;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/PhoneProxy;->getInterfaceName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getIpAddress(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 675
    invoke-direct {p0}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->a()V

    .line 676
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->d:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->getIpAddress(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getIpAddressGemini(Ljava/lang/String;I)Ljava/lang/String;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 898
    invoke-direct {p0, p2}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->b(I)Lcom/android/internal/telephony/PhoneProxy;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/PhoneProxy;->getIpAddress(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPdpContextList(Landroid/os/Message;)V
    .locals 1
    .parameter

    .prologue
    .line 489
    const-string v0, "[DT] getPdpContextList"

    invoke-static {v0}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->b(Ljava/lang/String;)V

    .line 490
    invoke-direct {p0}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->a()V

    .line 491
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->d:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->getPdpContextList(Landroid/os/Message;)V

    .line 492
    return-void
.end method

.method public getPdpContextListGemini(Landroid/os/Message;I)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 771
    invoke-direct {p0, p2}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->b(I)Lcom/android/internal/telephony/PhoneProxy;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/PhoneProxy;->getPdpContextList(Landroid/os/Message;)V

    .line 772
    return-void
.end method

.method public isDataConnectivityEnabled()Z
    .locals 1

    .prologue
    .line 629
    invoke-direct {p0}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->a()V

    .line 630
    const/4 v0, 0x1

    return v0
.end method

.method public isDataConnectivityEnabledGemini(I)Z
    .locals 1
    .parameter

    .prologue
    .line 880
    const/4 v0, 0x1

    return v0
.end method

.method public isDataConnectivityPossible()Z
    .locals 1

    .prologue
    .line 645
    invoke-direct {p0}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->a()V

    .line 646
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->d:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->isDataConnectivityPossible()Z

    move-result v0

    return v0
.end method

.method public isDataConnectivityPossible(Ljava/lang/String;)Z
    .locals 1
    .parameter

    .prologue
    .line 385
    invoke-direct {p0}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->a()V

    .line 386
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->d:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->isDataConnectivityPossible(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public isDataConnectivityPossibleGemini(I)Z
    .locals 1
    .parameter

    .prologue
    .line 886
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->b(I)Lcom/android/internal/telephony/PhoneProxy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneProxy;->isDataConnectivityPossible()Z

    move-result v0

    return v0
.end method

.method public isDataConnectivityPossibleGemini(Ljava/lang/String;I)Z
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 890
    invoke-direct {p0, p2}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->b(I)Lcom/android/internal/telephony/PhoneProxy;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/PhoneProxy;->isDataConnectivityPossible(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public isDnsCheckDisabled()Z
    .locals 1

    .prologue
    .line 441
    invoke-direct {p0}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->a()V

    .line 442
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->d:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->isDnsCheckDisabled()Z

    move-result v0

    return v0
.end method

.method public isDnsCheckDisabledGemini(I)Z
    .locals 1
    .parameter

    .prologue
    .line 746
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->b(I)Lcom/android/internal/telephony/PhoneProxy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneProxy;->isDnsCheckDisabled()Z

    move-result v0

    return v0
.end method

.method public isGprsDetached(I)Z
    .locals 1
    .parameter

    .prologue
    .line 922
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->g:[Lcom/android/internal/telephony/gemini/GeminiDataConnAc;

    aget-object v0, v0, p1

    invoke-virtual {v0}, Lcom/android/internal/telephony/gemini/GeminiDataConnAc;->isIdleSync()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 923
    const/4 v0, 0x1

    .line 925
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isGprsDetachingOrDetached(I)Z
    .locals 1
    .parameter

    .prologue
    .line 914
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->g:[Lcom/android/internal/telephony/gemini/GeminiDataConnAc;

    aget-object v0, v0, p1

    invoke-virtual {v0}, Lcom/android/internal/telephony/gemini/GeminiDataConnAc;->isIdleDeactingSync()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 915
    const/4 v0, 0x1

    .line 917
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public notifyDataActivity()V
    .locals 1

    .prologue
    .line 722
    invoke-direct {p0}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->a()V

    .line 723
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->d:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->notifyDataActivity()V

    .line 725
    return-void
.end method

.method public notifyDataActivityGemini(I)V
    .locals 1
    .parameter

    .prologue
    .line 910
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->b(I)Lcom/android/internal/telephony/PhoneProxy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneProxy;->notifyDataActivity()V

    .line 911
    return-void
.end method

.method public registerForDetached(ILandroid/os/Handler;ILjava/lang/Object;)V
    .locals 1
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 980
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->f:[Lcom/android/internal/telephony/gemini/GeminiDataConn;

    aget-object v0, v0, p1

    invoke-virtual {v0, p2, p3, p4}, Lcom/android/internal/telephony/gemini/GeminiDataConn;->registerForIdle(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 981
    return-void
.end method

.method public resetAsRadioOff(I)V
    .locals 6
    .parameter

    .prologue
    const/4 v1, 0x0

    const/4 v5, -0x1

    .line 265
    move v0, v1

    :goto_0
    sget v2, Lcom/android/internal/telephony/PhoneConstants;->GEMINI_SIM_NUM:I

    if-ge v0, v2, :cond_4

    .line 266
    const/4 v2, 0x1

    shl-int/2addr v2, v0

    and-int/2addr v2, p1

    if-eqz v2, :cond_0

    if-ne p1, v5, :cond_2

    .line 268
    :cond_0
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->a(I)I

    move-result v2

    .line 270
    iget-object v3, p0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->j:[I

    aget v3, v3, v2

    if-ne v0, v3, :cond_1

    .line 271
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "resetAsRadioOff: reset SIM "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " data connection [mode="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "]."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->b(Ljava/lang/String;)V

    .line 275
    if-eq p1, v5, :cond_3

    .line 276
    iget-object v3, p0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->c:Lcom/android/internal/telephony/gemini/GeminiPhone;

    invoke-virtual {v3, v1, v0}, Lcom/android/internal/telephony/gemini/GeminiPhone;->setGprsConnType(II)V

    .line 277
    iget-object v3, p0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->f:[Lcom/android/internal/telephony/gemini/GeminiDataConn;

    aget-object v3, v3, v0

    invoke-virtual {v3}, Lcom/android/internal/telephony/gemini/GeminiDataConn;->cleanupAllConnection()V

    .line 282
    :cond_1
    :goto_1
    iget-object v3, p0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->k:[I

    aget v3, v3, v2

    if-ne v0, v3, :cond_2

    .line 283
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "resetAsRadioOff: reset request SIM "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->b(Ljava/lang/String;)V

    .line 284
    iget-object v3, p0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->k:[I

    aput v5, v3, v2

    .line 265
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 279
    :cond_3
    iget-object v3, p0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->f:[Lcom/android/internal/telephony/gemini/GeminiDataConn;

    aget-object v3, v3, v0

    invoke-virtual {v3}, Lcom/android/internal/telephony/gemini/GeminiDataConn;->transitToIdleState()V

    goto :goto_1

    .line 288
    :cond_4
    return-void
.end method

.method public setDataRoamingEnabled(Z)V
    .locals 1
    .parameter

    .prologue
    .line 531
    invoke-direct {p0}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->a()V

    .line 532
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->d:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->setDataRoamingEnabled(Z)V

    .line 534
    return-void
.end method

.method public setDataRoamingEnabledGemini(ZI)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 793
    invoke-direct {p0, p2}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->b(I)Lcom/android/internal/telephony/PhoneProxy;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/PhoneProxy;->setDataRoamingEnabled(Z)V

    .line 794
    return-void
.end method

.method public unregisterForDetached(ILandroid/os/Handler;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 984
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->f:[Lcom/android/internal/telephony/gemini/GeminiDataConn;

    aget-object v0, v0, p1

    invoke-virtual {v0, p2}, Lcom/android/internal/telephony/gemini/GeminiDataConn;->unregisterForIdle(Landroid/os/Handler;)V

    .line 985
    return-void
.end method
