.class final enum Lcom/android/gallery3d/filtershow/presets/ImagePreset$FullRotate;
.super Ljava/lang/Enum;
.source "ImagePreset.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/gallery3d/filtershow/presets/ImagePreset;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "FullRotate"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/android/gallery3d/filtershow/presets/ImagePreset$FullRotate;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/gallery3d/filtershow/presets/ImagePreset$FullRotate;

.field public static final enum HUNDRED_EIGHTY:Lcom/android/gallery3d/filtershow/presets/ImagePreset$FullRotate;

.field public static final enum NINETY:Lcom/android/gallery3d/filtershow/presets/ImagePreset$FullRotate;

.field public static final enum TWO_HUNDRED_SEVENTY:Lcom/android/gallery3d/filtershow/presets/ImagePreset$FullRotate;

.field public static final enum ZERO:Lcom/android/gallery3d/filtershow/presets/ImagePreset$FullRotate;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 55
    new-instance v0, Lcom/android/gallery3d/filtershow/presets/ImagePreset$FullRotate;

    const-string v1, "ZERO"

    invoke-direct {v0, v1, v2}, Lcom/android/gallery3d/filtershow/presets/ImagePreset$FullRotate;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/gallery3d/filtershow/presets/ImagePreset$FullRotate;->ZERO:Lcom/android/gallery3d/filtershow/presets/ImagePreset$FullRotate;

    new-instance v0, Lcom/android/gallery3d/filtershow/presets/ImagePreset$FullRotate;

    const-string v1, "NINETY"

    invoke-direct {v0, v1, v3}, Lcom/android/gallery3d/filtershow/presets/ImagePreset$FullRotate;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/gallery3d/filtershow/presets/ImagePreset$FullRotate;->NINETY:Lcom/android/gallery3d/filtershow/presets/ImagePreset$FullRotate;

    new-instance v0, Lcom/android/gallery3d/filtershow/presets/ImagePreset$FullRotate;

    const-string v1, "HUNDRED_EIGHTY"

    invoke-direct {v0, v1, v4}, Lcom/android/gallery3d/filtershow/presets/ImagePreset$FullRotate;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/gallery3d/filtershow/presets/ImagePreset$FullRotate;->HUNDRED_EIGHTY:Lcom/android/gallery3d/filtershow/presets/ImagePreset$FullRotate;

    new-instance v0, Lcom/android/gallery3d/filtershow/presets/ImagePreset$FullRotate;

    const-string v1, "TWO_HUNDRED_SEVENTY"

    invoke-direct {v0, v1, v5}, Lcom/android/gallery3d/filtershow/presets/ImagePreset$FullRotate;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/gallery3d/filtershow/presets/ImagePreset$FullRotate;->TWO_HUNDRED_SEVENTY:Lcom/android/gallery3d/filtershow/presets/ImagePreset$FullRotate;

    .line 54
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/android/gallery3d/filtershow/presets/ImagePreset$FullRotate;

    sget-object v1, Lcom/android/gallery3d/filtershow/presets/ImagePreset$FullRotate;->ZERO:Lcom/android/gallery3d/filtershow/presets/ImagePreset$FullRotate;

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/gallery3d/filtershow/presets/ImagePreset$FullRotate;->NINETY:Lcom/android/gallery3d/filtershow/presets/ImagePreset$FullRotate;

    aput-object v1, v0, v3

    sget-object v1, Lcom/android/gallery3d/filtershow/presets/ImagePreset$FullRotate;->HUNDRED_EIGHTY:Lcom/android/gallery3d/filtershow/presets/ImagePreset$FullRotate;

    aput-object v1, v0, v4

    sget-object v1, Lcom/android/gallery3d/filtershow/presets/ImagePreset$FullRotate;->TWO_HUNDRED_SEVENTY:Lcom/android/gallery3d/filtershow/presets/ImagePreset$FullRotate;

    aput-object v1, v0, v5

    sput-object v0, Lcom/android/gallery3d/filtershow/presets/ImagePreset$FullRotate;->$VALUES:[Lcom/android/gallery3d/filtershow/presets/ImagePreset$FullRotate;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 54
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/gallery3d/filtershow/presets/ImagePreset$FullRotate;
    .locals 1
    .parameter "name"

    .prologue
    .line 54
    const-class v0, Lcom/android/gallery3d/filtershow/presets/ImagePreset$FullRotate;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/android/gallery3d/filtershow/presets/ImagePreset$FullRotate;

    return-object v0
.end method

.method public static values()[Lcom/android/gallery3d/filtershow/presets/ImagePreset$FullRotate;
    .locals 1

    .prologue
    .line 54
    sget-object v0, Lcom/android/gallery3d/filtershow/presets/ImagePreset$FullRotate;->$VALUES:[Lcom/android/gallery3d/filtershow/presets/ImagePreset$FullRotate;

    invoke-virtual {v0}, [Lcom/android/gallery3d/filtershow/presets/ImagePreset$FullRotate;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/gallery3d/filtershow/presets/ImagePreset$FullRotate;

    return-object v0
.end method
