.class public Lcom/android/hwcamera/eventcenter/targettraking/TargetInfo;
.super Ljava/lang/Object;
.source "TargetInfo.java"


# instance fields
.field private mFocusStatus:I

.field private rect:Landroid/graphics/Rect;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 6
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 7
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/hwcamera/eventcenter/targettraking/TargetInfo;->mFocusStatus:I

    return-void
.end method


# virtual methods
.method public getFocusStatus()I
    .locals 1

    .prologue
    .line 10
    iget v0, p0, Lcom/android/hwcamera/eventcenter/targettraking/TargetInfo;->mFocusStatus:I

    return v0
.end method

.method public getTargetRect()Landroid/graphics/Rect;
    .locals 1

    .prologue
    .line 17
    iget-object v0, p0, Lcom/android/hwcamera/eventcenter/targettraking/TargetInfo;->rect:Landroid/graphics/Rect;

    return-object v0
.end method

.method public setFocusStatus(I)V
    .locals 0
    .parameter "status"

    .prologue
    .line 12
    iput p1, p0, Lcom/android/hwcamera/eventcenter/targettraking/TargetInfo;->mFocusStatus:I

    return-void
.end method

.method public setTargetRect(Landroid/graphics/Rect;)V
    .locals 0
    .parameter "rect"

    .prologue
    .line 14
    iput-object p1, p0, Lcom/android/hwcamera/eventcenter/targettraking/TargetInfo;->rect:Landroid/graphics/Rect;

    return-void
.end method
