.class public Lcom/android/hwcamera/settings/MenuMutexConfigs$MenuMutexInfo;
.super Ljava/lang/Object;
.source "MenuMutexConfigs.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/hwcamera/settings/MenuMutexConfigs;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "MenuMutexInfo"
.end annotation


# static fields
.field public static final MUTEXTYPE_GRAY:I = 0x1

.field public static final MUTEXTYPE_HIDE:I = 0x2

.field public static final MUTEXTYPE_NORMAL:I = 0x3


# instance fields
.field private mutexType:I

.field private mutexValue:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .parameter "mutexValue"

    .prologue
    .line 209
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 210
    iput-object p1, p0, Lcom/android/hwcamera/settings/MenuMutexConfigs$MenuMutexInfo;->mutexValue:Ljava/lang/String;

    .line 211
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/hwcamera/settings/MenuMutexConfigs$MenuMutexInfo;->mutexType:I

    .line 212
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .parameter "mutexValue"
    .parameter "mutexType"

    .prologue
    .line 215
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 216
    iput-object p1, p0, Lcom/android/hwcamera/settings/MenuMutexConfigs$MenuMutexInfo;->mutexValue:Ljava/lang/String;

    .line 217
    iput p2, p0, Lcom/android/hwcamera/settings/MenuMutexConfigs$MenuMutexInfo;->mutexType:I

    .line 218
    return-void
.end method


# virtual methods
.method public getMutexType()I
    .locals 1

    .prologue
    .line 225
    iget v0, p0, Lcom/android/hwcamera/settings/MenuMutexConfigs$MenuMutexInfo;->mutexType:I

    return v0
.end method

.method public getMutexValue()Ljava/lang/String;
    .locals 1

    .prologue
    .line 221
    iget-object v0, p0, Lcom/android/hwcamera/settings/MenuMutexConfigs$MenuMutexInfo;->mutexValue:Ljava/lang/String;

    return-object v0
.end method

.method public setMutexType(I)V
    .locals 0
    .parameter "mutexType"

    .prologue
    .line 234
    iput p1, p0, Lcom/android/hwcamera/settings/MenuMutexConfigs$MenuMutexInfo;->mutexType:I

    .line 235
    return-void
.end method

.method public setMutexValue(Ljava/lang/String;)V
    .locals 0
    .parameter "mutexValue"

    .prologue
    .line 230
    iput-object p1, p0, Lcom/android/hwcamera/settings/MenuMutexConfigs$MenuMutexInfo;->mutexValue:Ljava/lang/String;

    .line 231
    return-void
.end method
