.class public Lcom/android/gallery3d/filtershow/omron/OkaoHandle;
.super Ljava/lang/Object;
.source "OkaoHandle.java"


# instance fields
.field protected okaoHandle:J


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 3
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 5
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/gallery3d/filtershow/omron/OkaoHandle;->okaoHandle:J

    return-void
.end method


# virtual methods
.method public getOkaoHandle()J
    .locals 2

    .prologue
    .line 8
    iget-wide v0, p0, Lcom/android/gallery3d/filtershow/omron/OkaoHandle;->okaoHandle:J

    return-wide v0
.end method
