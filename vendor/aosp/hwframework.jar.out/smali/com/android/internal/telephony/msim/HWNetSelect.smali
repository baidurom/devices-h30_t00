.class public Lcom/android/internal/telephony/msim/HWNetSelect;
.super Ljava/lang/Object;
.source "HWNetSelect.java"


# static fields
.field public static TIMETOCLOSECARDMANAGER:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 7
    const-string v0, "TIMETOCLOSECARDMANAGER"

    sput-object v0, Lcom/android/internal/telephony/msim/HWNetSelect;->TIMETOCLOSECARDMANAGER:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 6
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/android/internal/telephony/msim/HWNetSelect;
    .locals 2

    .prologue
    .line 10
    new-instance v0, Lcom/huawei/android/util/NoExtAPIException;

    const-string v1, "method not supported."

    invoke-direct {v0, v1}, Lcom/huawei/android/util/NoExtAPIException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public cancelTheTimer()V
    .locals 2

    .prologue
    .line 15
    new-instance v0, Lcom/huawei/android/util/NoExtAPIException;

    const-string v1, "method not supported."

    invoke-direct {v0, v1}, Lcom/huawei/android/util/NoExtAPIException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
