.class public Lcom/android/hwcamera/eventcenter/burstprompt/BurstPromptEvent;
.super Ljava/lang/Object;
.source "BurstPromptEvent.java"

# interfaces
.implements Lcom/android/hwcamera/eventcenter/Event;


# instance fields
.field mIsTurnOn:Z


# direct methods
.method public constructor <init>(Z)V
    .locals 1
    .parameter "bOn"

    .prologue
    .line 11
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 10
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/hwcamera/eventcenter/burstprompt/BurstPromptEvent;->mIsTurnOn:Z

    .line 12
    iput-boolean p1, p0, Lcom/android/hwcamera/eventcenter/burstprompt/BurstPromptEvent;->mIsTurnOn:Z

    .line 13
    return-void
.end method


# virtual methods
.method public getMode()Ljava/lang/String;
    .locals 1

    .prologue
    .line 26
    const-string v0, "SYNCMODE"

    return-object v0
.end method

.method public getOnorOff()Z
    .locals 1

    .prologue
    .line 16
    iget-boolean v0, p0, Lcom/android/hwcamera/eventcenter/burstprompt/BurstPromptEvent;->mIsTurnOn:Z

    return v0
.end method

.method public getType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 21
    const-string v0, "burst_prompt_event_type"

    return-object v0
.end method
