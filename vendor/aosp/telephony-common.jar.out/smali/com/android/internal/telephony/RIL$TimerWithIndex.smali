.class Lcom/android/internal/telephony/RIL$TimerWithIndex;
.super Ljava/util/Timer;
.source "RIL.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/RIL;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "TimerWithIndex"
.end annotation


# instance fields
.field private callindex:I

.field final synthetic this$0:Lcom/android/internal/telephony/RIL;


# direct methods
.method constructor <init>(Lcom/android/internal/telephony/RIL;I)V
    .locals 0
    .parameter
    .parameter "index"

    .prologue
    .line 6800
    iput-object p1, p0, Lcom/android/internal/telephony/RIL$TimerWithIndex;->this$0:Lcom/android/internal/telephony/RIL;

    invoke-direct {p0}, Ljava/util/Timer;-><init>()V

    .line 6801
    iput p2, p0, Lcom/android/internal/telephony/RIL$TimerWithIndex;->callindex:I

    .line 6802
    return-void
.end method


# virtual methods
.method public getCallIndex()I
    .locals 1

    .prologue
    .line 6804
    iget v0, p0, Lcom/android/internal/telephony/RIL$TimerWithIndex;->callindex:I

    return v0
.end method
