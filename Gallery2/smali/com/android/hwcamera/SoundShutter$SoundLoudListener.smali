.class Lcom/android/hwcamera/SoundShutter$SoundLoudListener;
.super Ljava/lang/Object;
.source "SoundShutter.java"

# interfaces
.implements Lcom/android/hwcamera/SoundListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/hwcamera/SoundShutter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SoundLoudListener"
.end annotation


# static fields
.field private static final DB_STATE_CHANGE_THRESHOLD:I = 0x9

.field private static final DB_STATE_LENTH:I = 0x6

.field private static final TIME_INTERVAL_THRESHOLD:I = 0x3e8


# instance fields
.field private mDBStatList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field private mlastTriggerTime:J

.field final synthetic this$0:Lcom/android/hwcamera/SoundShutter;


# direct methods
.method private constructor <init>(Lcom/android/hwcamera/SoundShutter;)V
    .locals 2
    .parameter

    .prologue
    .line 78
    iput-object p1, p0, Lcom/android/hwcamera/SoundShutter$SoundLoudListener;->this$0:Lcom/android/hwcamera/SoundShutter;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 79
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x6

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/android/hwcamera/SoundShutter$SoundLoudListener;->mDBStatList:Ljava/util/List;

    .line 83
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/hwcamera/SoundShutter$SoundLoudListener;->mlastTriggerTime:J

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/hwcamera/SoundShutter;Lcom/android/hwcamera/SoundShutter$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 78
    invoke-direct {p0, p1}, Lcom/android/hwcamera/SoundShutter$SoundLoudListener;-><init>(Lcom/android/hwcamera/SoundShutter;)V

    return-void
.end method

.method private changeDBStatValue(F)V
    .locals 2
    .parameter "dbValue"

    .prologue
    .line 112
    iget-object v0, p0, Lcom/android/hwcamera/SoundShutter$SoundLoudListener;->mDBStatList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x6

    if-ge v0, v1, :cond_0

    .line 113
    iget-object v0, p0, Lcom/android/hwcamera/SoundShutter$SoundLoudListener;->mDBStatList:Ljava/util/List;

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 118
    :goto_0
    return-void

    .line 115
    :cond_0
    iget-object v0, p0, Lcom/android/hwcamera/SoundShutter$SoundLoudListener;->mDBStatList:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 116
    iget-object v0, p0, Lcom/android/hwcamera/SoundShutter$SoundLoudListener;->mDBStatList:Ljava/util/List;

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method private getDBThresHold()F
    .locals 5

    .prologue
    const/4 v1, 0x6

    .line 100
    iget-object v3, p0, Lcom/android/hwcamera/SoundShutter$SoundLoudListener;->mDBStatList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-nez v3, :cond_0

    .line 101
    const/4 v3, 0x0

    .line 108
    :goto_0
    return v3

    .line 103
    :cond_0
    iget-object v3, p0, Lcom/android/hwcamera/SoundShutter$SoundLoudListener;->mDBStatList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v3, v1, :cond_1

    iget-object v3, p0, Lcom/android/hwcamera/SoundShutter$SoundLoudListener;->mDBStatList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v1

    .line 104
    .local v1, statNum:I
    :cond_1
    const/4 v2, 0x0

    .line 105
    .local v2, total:F
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    if-ge v0, v1, :cond_2

    .line 106
    iget-object v3, p0, Lcom/android/hwcamera/SoundShutter$SoundLoudListener;->mDBStatList:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Float;

    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result v3

    add-float/2addr v2, v3

    .line 105
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 108
    :cond_2
    int-to-float v3, v1

    div-float v3, v2, v3

    const/high16 v4, 0x4110

    add-float/2addr v3, v4

    goto :goto_0
.end method

.method private getDBValueFromBuffer([S)F
    .locals 7
    .parameter "buffer"

    .prologue
    .line 121
    array-length v4, p1

    if-nez v4, :cond_1

    .line 122
    const/4 v0, 0x0

    .line 135
    :cond_0
    :goto_0
    return v0

    .line 124
    :cond_1
    const-wide/16 v2, 0x0

    .line 125
    .local v2, resultVal:J
    const/4 v0, 0x0

    .line 126
    .local v0, dbValue:F
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    array-length v4, p1

    if-ge v1, v4, :cond_2

    .line 127
    aget-short v4, p1, v1

    invoke-static {v4}, Ljava/lang/Math;->abs(I)I

    move-result v4

    aget-short v5, p1, v1

    invoke-static {v5}, Ljava/lang/Math;->abs(I)I

    move-result v5

    mul-int/2addr v4, v5

    int-to-long v4, v4

    add-long/2addr v2, v4

    .line 128
    add-int/lit8 v1, v1, 0x1

    .line 126
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 131
    :cond_2
    const-wide/16 v4, 0x0

    cmp-long v4, v2, v4

    if-lez v4, :cond_0

    .line 132
    const/high16 v4, 0x4120

    long-to-float v5, v2

    array-length v6, p1

    int-to-float v6, v6

    div-float/2addr v5, v6

    float-to-double v5, v5

    invoke-static {v5, v6}, Ljava/lang/Math;->log10(D)D

    move-result-wide v5

    double-to-float v5, v5

    mul-float v0, v4, v5

    goto :goto_0
.end method


# virtual methods
.method public notify([SLjava/util/Iterator;)V
    .locals 5
    .parameter "buffer"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([S",
            "Ljava/util/Iterator",
            "<",
            "Lcom/android/hwcamera/SoundListener;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 87
    .local p2, it:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/android/hwcamera/SoundListener;>;"
    const/4 v0, 0x0

    .line 88
    .local v0, dbValue:F
    invoke-direct {p0, p1}, Lcom/android/hwcamera/SoundShutter$SoundLoudListener;->getDBValueFromBuffer([S)F

    move-result v0

    .line 89
    iget-object v1, p0, Lcom/android/hwcamera/SoundShutter$SoundLoudListener;->this$0:Lcom/android/hwcamera/SoundShutter;

    #getter for: Lcom/android/hwcamera/SoundShutter;->TAG:Ljava/lang/String;
    invoke-static {v1}, Lcom/android/hwcamera/SoundShutter;->access$200(Lcom/android/hwcamera/SoundShutter;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "dbValue is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " and thresHole is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-direct {p0}, Lcom/android/hwcamera/SoundShutter$SoundLoudListener;->getDBThresHold()F

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 90
    invoke-direct {p0}, Lcom/android/hwcamera/SoundShutter$SoundLoudListener;->getDBThresHold()F

    move-result v1

    cmpl-float v1, v0, v1

    if-lez v1, :cond_0

    iget-object v1, p0, Lcom/android/hwcamera/SoundShutter$SoundLoudListener;->mDBStatList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-eqz v1, :cond_0

    .line 91
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iget-wide v3, p0, Lcom/android/hwcamera/SoundShutter$SoundLoudListener;->mlastTriggerTime:J

    sub-long/2addr v1, v3

    const-wide/16 v3, 0x3e8

    cmp-long v1, v1, v3

    if-lez v1, :cond_0

    .line 92
    iget-object v1, p0, Lcom/android/hwcamera/SoundShutter$SoundLoudListener;->this$0:Lcom/android/hwcamera/SoundShutter;

    #getter for: Lcom/android/hwcamera/SoundShutter;->mSoundShutterLister:Lcom/android/hwcamera/SoundShutter$OnSoundShutterListener;
    invoke-static {v1}, Lcom/android/hwcamera/SoundShutter;->access$300(Lcom/android/hwcamera/SoundShutter;)Lcom/android/hwcamera/SoundShutter$OnSoundShutterListener;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/hwcamera/SoundShutter$OnSoundShutterListener;->onSoundLoud()V

    .line 93
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/android/hwcamera/SoundShutter$SoundLoudListener;->mlastTriggerTime:J

    .line 96
    :cond_0
    invoke-direct {p0, v0}, Lcom/android/hwcamera/SoundShutter$SoundLoudListener;->changeDBStatValue(F)V

    .line 97
    return-void
.end method
