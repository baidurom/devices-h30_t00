.class public Lcom/android/hwcamera/tips/TipsService$Tip;
.super Ljava/lang/Object;
.source "TipsService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/hwcamera/tips/TipsService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Tip"
.end annotation


# instance fields
.field private mMessage:Ljava/lang/String;

.field private mTipsResId:I

.field private mTipsType:I


# direct methods
.method public constructor <init>(II)V
    .locals 0
    .parameter "mTipsType"
    .parameter "mTipsResId"

    .prologue
    .line 387
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 388
    iput p1, p0, Lcom/android/hwcamera/tips/TipsService$Tip;->mTipsType:I

    .line 389
    iput p2, p0, Lcom/android/hwcamera/tips/TipsService$Tip;->mTipsResId:I

    .line 390
    return-void
.end method

.method public constructor <init>(ILjava/lang/String;)V
    .locals 0
    .parameter "mTipsType"
    .parameter "message"

    .prologue
    .line 397
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 398
    iput p1, p0, Lcom/android/hwcamera/tips/TipsService$Tip;->mTipsType:I

    .line 399
    iput-object p2, p0, Lcom/android/hwcamera/tips/TipsService$Tip;->mMessage:Ljava/lang/String;

    .line 400
    return-void
.end method


# virtual methods
.method public getMessage()Ljava/lang/String;
    .locals 1

    .prologue
    .line 393
    iget-object v0, p0, Lcom/android/hwcamera/tips/TipsService$Tip;->mMessage:Ljava/lang/String;

    return-object v0
.end method

.method public getTipsResId()I
    .locals 1

    .prologue
    .line 406
    iget v0, p0, Lcom/android/hwcamera/tips/TipsService$Tip;->mTipsResId:I

    return v0
.end method

.method public getTipsType()I
    .locals 1

    .prologue
    .line 403
    iget v0, p0, Lcom/android/hwcamera/tips/TipsService$Tip;->mTipsType:I

    return v0
.end method
