.class final enum Lcom/android/gallery3d/util/WaterMarkMaker$WaterMarkPosSetting;
.super Ljava/lang/Enum;
.source "WaterMarkMaker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/gallery3d/util/WaterMarkMaker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "WaterMarkPosSetting"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/android/gallery3d/util/WaterMarkMaker$WaterMarkPosSetting;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/gallery3d/util/WaterMarkMaker$WaterMarkPosSetting; = null

.field private static final DEFAULT_VALUE:Ljava/lang/String; = null

.field private static final KEY:Ljava/lang/String; = "key-share-info-display"

.field public static final enum LEFT:Lcom/android/gallery3d/util/WaterMarkMaker$WaterMarkPosSetting;

.field public static final enum NONE:Lcom/android/gallery3d/util/WaterMarkMaker$WaterMarkPosSetting;

.field public static final enum RIGHT:Lcom/android/gallery3d/util/WaterMarkMaker$WaterMarkPosSetting;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 417
    new-instance v0, Lcom/android/gallery3d/util/WaterMarkMaker$WaterMarkPosSetting;

    const-string v1, "NONE"

    invoke-direct {v0, v1, v2}, Lcom/android/gallery3d/util/WaterMarkMaker$WaterMarkPosSetting;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/gallery3d/util/WaterMarkMaker$WaterMarkPosSetting;->NONE:Lcom/android/gallery3d/util/WaterMarkMaker$WaterMarkPosSetting;

    .line 418
    new-instance v0, Lcom/android/gallery3d/util/WaterMarkMaker$WaterMarkPosSetting;

    const-string v1, "LEFT"

    invoke-direct {v0, v1, v3}, Lcom/android/gallery3d/util/WaterMarkMaker$WaterMarkPosSetting;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/gallery3d/util/WaterMarkMaker$WaterMarkPosSetting;->LEFT:Lcom/android/gallery3d/util/WaterMarkMaker$WaterMarkPosSetting;

    .line 419
    new-instance v0, Lcom/android/gallery3d/util/WaterMarkMaker$WaterMarkPosSetting;

    const-string v1, "RIGHT"

    invoke-direct {v0, v1, v4}, Lcom/android/gallery3d/util/WaterMarkMaker$WaterMarkPosSetting;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/gallery3d/util/WaterMarkMaker$WaterMarkPosSetting;->RIGHT:Lcom/android/gallery3d/util/WaterMarkMaker$WaterMarkPosSetting;

    .line 416
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/android/gallery3d/util/WaterMarkMaker$WaterMarkPosSetting;

    sget-object v1, Lcom/android/gallery3d/util/WaterMarkMaker$WaterMarkPosSetting;->NONE:Lcom/android/gallery3d/util/WaterMarkMaker$WaterMarkPosSetting;

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/gallery3d/util/WaterMarkMaker$WaterMarkPosSetting;->LEFT:Lcom/android/gallery3d/util/WaterMarkMaker$WaterMarkPosSetting;

    aput-object v1, v0, v3

    sget-object v1, Lcom/android/gallery3d/util/WaterMarkMaker$WaterMarkPosSetting;->RIGHT:Lcom/android/gallery3d/util/WaterMarkMaker$WaterMarkPosSetting;

    aput-object v1, v0, v4

    sput-object v0, Lcom/android/gallery3d/util/WaterMarkMaker$WaterMarkPosSetting;->$VALUES:[Lcom/android/gallery3d/util/WaterMarkMaker$WaterMarkPosSetting;

    .line 422
    const/4 v0, -0x1

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/gallery3d/util/WaterMarkMaker$WaterMarkPosSetting;->DEFAULT_VALUE:Ljava/lang/String;

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
    .line 416
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method static getPositionFromSetting(Landroid/content/Context;)Lcom/android/gallery3d/util/WaterMarkMaker$WaterMarkPosSetting;
    .locals 3
    .parameter "context"

    .prologue
    .line 448
    const-string v1, "key-share-info-display"

    sget-object v2, Lcom/android/gallery3d/util/WaterMarkMaker$WaterMarkPosSetting;->DEFAULT_VALUE:Ljava/lang/String;

    invoke-static {p0, v1, v2}, Lcom/android/gallery3d/settings/GallerySettings;->getString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 449
    .local v0, setting:Ljava/lang/String;
    invoke-static {v0}, Lcom/android/gallery3d/util/WaterMarkMaker$WaterMarkPosSetting;->parseString(Ljava/lang/String;)Lcom/android/gallery3d/util/WaterMarkMaker$WaterMarkPosSetting;

    move-result-object v1

    return-object v1
.end method

.method private static parseInt(I)Lcom/android/gallery3d/util/WaterMarkMaker$WaterMarkPosSetting;
    .locals 1
    .parameter "value"

    .prologue
    .line 425
    packed-switch p0, :pswitch_data_0

    .line 434
    sget-object v0, Lcom/android/gallery3d/util/WaterMarkMaker$WaterMarkPosSetting;->NONE:Lcom/android/gallery3d/util/WaterMarkMaker$WaterMarkPosSetting;

    :goto_0
    return-object v0

    .line 427
    :pswitch_0
    sget-object v0, Lcom/android/gallery3d/util/WaterMarkMaker$WaterMarkPosSetting;->LEFT:Lcom/android/gallery3d/util/WaterMarkMaker$WaterMarkPosSetting;

    goto :goto_0

    .line 430
    :pswitch_1
    sget-object v0, Lcom/android/gallery3d/util/WaterMarkMaker$WaterMarkPosSetting;->RIGHT:Lcom/android/gallery3d/util/WaterMarkMaker$WaterMarkPosSetting;

    goto :goto_0

    .line 425
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private static parseString(Ljava/lang/String;)Lcom/android/gallery3d/util/WaterMarkMaker$WaterMarkPosSetting;
    .locals 2
    .parameter "value"

    .prologue
    .line 439
    const/4 v0, -0x1

    .line 441
    .local v0, result:I
    :try_start_0
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 444
    :goto_0
    invoke-static {v0}, Lcom/android/gallery3d/util/WaterMarkMaker$WaterMarkPosSetting;->parseInt(I)Lcom/android/gallery3d/util/WaterMarkMaker$WaterMarkPosSetting;

    move-result-object v1

    return-object v1

    .line 442
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/gallery3d/util/WaterMarkMaker$WaterMarkPosSetting;
    .locals 1
    .parameter "name"

    .prologue
    .line 416
    const-class v0, Lcom/android/gallery3d/util/WaterMarkMaker$WaterMarkPosSetting;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/android/gallery3d/util/WaterMarkMaker$WaterMarkPosSetting;

    return-object v0
.end method

.method public static values()[Lcom/android/gallery3d/util/WaterMarkMaker$WaterMarkPosSetting;
    .locals 1

    .prologue
    .line 416
    sget-object v0, Lcom/android/gallery3d/util/WaterMarkMaker$WaterMarkPosSetting;->$VALUES:[Lcom/android/gallery3d/util/WaterMarkMaker$WaterMarkPosSetting;

    invoke-virtual {v0}, [Lcom/android/gallery3d/util/WaterMarkMaker$WaterMarkPosSetting;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/gallery3d/util/WaterMarkMaker$WaterMarkPosSetting;

    return-object v0
.end method
