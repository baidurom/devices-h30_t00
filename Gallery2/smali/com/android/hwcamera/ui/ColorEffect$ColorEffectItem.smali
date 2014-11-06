.class Lcom/android/hwcamera/ui/ColorEffect$ColorEffectItem;
.super Ljava/lang/Object;
.source "ColorEffect.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/hwcamera/ui/ColorEffect;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ColorEffectItem"
.end annotation


# instance fields
.field private icon:I

.field private largeIcon:I

.field private title:Ljava/lang/String;

.field private value:Ljava/lang/String;


# direct methods
.method public constructor <init>(IILjava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter "icon"
    .parameter "largeIcon"
    .parameter "title"
    .parameter "value"

    .prologue
    .line 469
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 470
    iput p1, p0, Lcom/android/hwcamera/ui/ColorEffect$ColorEffectItem;->icon:I

    .line 471
    iput p2, p0, Lcom/android/hwcamera/ui/ColorEffect$ColorEffectItem;->largeIcon:I

    .line 472
    iput-object p3, p0, Lcom/android/hwcamera/ui/ColorEffect$ColorEffectItem;->title:Ljava/lang/String;

    .line 473
    iput-object p4, p0, Lcom/android/hwcamera/ui/ColorEffect$ColorEffectItem;->value:Ljava/lang/String;

    .line 474
    return-void
.end method


# virtual methods
.method public getIcon()I
    .locals 1

    .prologue
    .line 477
    iget v0, p0, Lcom/android/hwcamera/ui/ColorEffect$ColorEffectItem;->icon:I

    return v0
.end method

.method public getLargeIcon()I
    .locals 1

    .prologue
    .line 480
    iget v0, p0, Lcom/android/hwcamera/ui/ColorEffect$ColorEffectItem;->largeIcon:I

    return v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 483
    iget-object v0, p0, Lcom/android/hwcamera/ui/ColorEffect$ColorEffectItem;->title:Ljava/lang/String;

    return-object v0
.end method

.method public getValue()Ljava/lang/String;
    .locals 1

    .prologue
    .line 486
    iget-object v0, p0, Lcom/android/hwcamera/ui/ColorEffect$ColorEffectItem;->value:Ljava/lang/String;

    return-object v0
.end method
