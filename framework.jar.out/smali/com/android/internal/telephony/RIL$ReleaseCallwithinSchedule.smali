.class Lcom/android/internal/telephony/RIL$ReleaseCallwithinSchedule;
.super Ljava/util/TimerTask;
.source "RIL.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/RIL;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ReleaseCallwithinSchedule"
.end annotation


# instance fields
.field private callindex:I

.field final synthetic this$0:Lcom/android/internal/telephony/RIL;


# direct methods
.method constructor <init>(Lcom/android/internal/telephony/RIL;I)V
    .locals 2
    .parameter
    .parameter "index"

    .prologue
    .line 6781
    iput-object p1, p0, Lcom/android/internal/telephony/RIL$ReleaseCallwithinSchedule;->this$0:Lcom/android/internal/telephony/RIL;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    .line 6782
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[dwj] new ReleaseCallwithinSchedule, index is "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    #calls: Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V
    invoke-static {p1, v0}, Lcom/android/internal/telephony/RIL;->access$800(Lcom/android/internal/telephony/RIL;Ljava/lang/String;)V

    .line 6783
    iput p2, p0, Lcom/android/internal/telephony/RIL$ReleaseCallwithinSchedule;->callindex:I

    .line 6784
    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 6788
    iget-object v0, p0, Lcom/android/internal/telephony/RIL$ReleaseCallwithinSchedule;->this$0:Lcom/android/internal/telephony/RIL;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[dwj] 1 Second time-out, need to force Release call:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/internal/telephony/RIL$ReleaseCallwithinSchedule;->callindex:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    #calls: Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/android/internal/telephony/RIL;->access$800(Lcom/android/internal/telephony/RIL;Ljava/lang/String;)V

    .line 6790
    iget-object v0, p0, Lcom/android/internal/telephony/RIL$ReleaseCallwithinSchedule;->this$0:Lcom/android/internal/telephony/RIL;

    iget v1, p0, Lcom/android/internal/telephony/RIL$ReleaseCallwithinSchedule;->callindex:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/RIL;->forceReleaseCall(ILandroid/os/Message;)V

    .line 6791
    return-void
.end method
