.class public final enum Landroid/content/res/ResourcesEx$MaskRange;
.super Ljava/lang/Enum;
.source "ResourcesEx.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/content/res/ResourcesEx;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "MaskRange"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Landroid/content/res/ResourcesEx$MaskRange;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Landroid/content/res/ResourcesEx$MaskRange;

.field public static final enum ALL:Landroid/content/res/ResourcesEx$MaskRange;

.field public static final enum THIRD_PARTY:Landroid/content/res/ResourcesEx$MaskRange;

.field public static final enum UNDEFINED:Landroid/content/res/ResourcesEx$MaskRange;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 1070
    new-instance v0, Landroid/content/res/ResourcesEx$MaskRange;

    const-string v1, "UNDEFINED"

    invoke-direct {v0, v1, v2}, Landroid/content/res/ResourcesEx$MaskRange;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/content/res/ResourcesEx$MaskRange;->UNDEFINED:Landroid/content/res/ResourcesEx$MaskRange;

    new-instance v0, Landroid/content/res/ResourcesEx$MaskRange;

    const-string v1, "THIRD_PARTY"

    invoke-direct {v0, v1, v3}, Landroid/content/res/ResourcesEx$MaskRange;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/content/res/ResourcesEx$MaskRange;->THIRD_PARTY:Landroid/content/res/ResourcesEx$MaskRange;

    new-instance v0, Landroid/content/res/ResourcesEx$MaskRange;

    const-string v1, "ALL"

    invoke-direct {v0, v1, v4}, Landroid/content/res/ResourcesEx$MaskRange;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/content/res/ResourcesEx$MaskRange;->ALL:Landroid/content/res/ResourcesEx$MaskRange;

    .line 1069
    const/4 v0, 0x3

    new-array v0, v0, [Landroid/content/res/ResourcesEx$MaskRange;

    sget-object v1, Landroid/content/res/ResourcesEx$MaskRange;->UNDEFINED:Landroid/content/res/ResourcesEx$MaskRange;

    aput-object v1, v0, v2

    sget-object v1, Landroid/content/res/ResourcesEx$MaskRange;->THIRD_PARTY:Landroid/content/res/ResourcesEx$MaskRange;

    aput-object v1, v0, v3

    sget-object v1, Landroid/content/res/ResourcesEx$MaskRange;->ALL:Landroid/content/res/ResourcesEx$MaskRange;

    aput-object v1, v0, v4

    sput-object v0, Landroid/content/res/ResourcesEx$MaskRange;->$VALUES:[Landroid/content/res/ResourcesEx$MaskRange;

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
    .line 1069
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Landroid/content/res/ResourcesEx$MaskRange;
    .locals 1
    .parameter "name"

    .prologue
    .line 1069
    const-class v0, Landroid/content/res/ResourcesEx$MaskRange;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Landroid/content/res/ResourcesEx$MaskRange;

    return-object v0
.end method

.method public static values()[Landroid/content/res/ResourcesEx$MaskRange;
    .locals 1

    .prologue
    .line 1069
    sget-object v0, Landroid/content/res/ResourcesEx$MaskRange;->$VALUES:[Landroid/content/res/ResourcesEx$MaskRange;

    invoke-virtual {v0}, [Landroid/content/res/ResourcesEx$MaskRange;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/content/res/ResourcesEx$MaskRange;

    return-object v0
.end method
