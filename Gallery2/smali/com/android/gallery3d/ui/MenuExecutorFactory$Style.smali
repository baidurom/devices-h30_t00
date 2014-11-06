.class public final enum Lcom/android/gallery3d/ui/MenuExecutorFactory$Style;
.super Ljava/lang/Enum;
.source "MenuExecutorFactory.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/gallery3d/ui/MenuExecutorFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Style"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/android/gallery3d/ui/MenuExecutorFactory$Style;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/gallery3d/ui/MenuExecutorFactory$Style;

.field public static final enum NORMAL_STYLE:Lcom/android/gallery3d/ui/MenuExecutorFactory$Style;

.field public static final enum PASTE_STYLE:Lcom/android/gallery3d/ui/MenuExecutorFactory$Style;

.field public static final enum SHARE_TRANS_STYLE:Lcom/android/gallery3d/ui/MenuExecutorFactory$Style;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 17
    new-instance v0, Lcom/android/gallery3d/ui/MenuExecutorFactory$Style;

    const-string v1, "NORMAL_STYLE"

    invoke-direct {v0, v1, v2}, Lcom/android/gallery3d/ui/MenuExecutorFactory$Style;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/gallery3d/ui/MenuExecutorFactory$Style;->NORMAL_STYLE:Lcom/android/gallery3d/ui/MenuExecutorFactory$Style;

    .line 18
    new-instance v0, Lcom/android/gallery3d/ui/MenuExecutorFactory$Style;

    const-string v1, "PASTE_STYLE"

    invoke-direct {v0, v1, v3}, Lcom/android/gallery3d/ui/MenuExecutorFactory$Style;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/gallery3d/ui/MenuExecutorFactory$Style;->PASTE_STYLE:Lcom/android/gallery3d/ui/MenuExecutorFactory$Style;

    .line 19
    new-instance v0, Lcom/android/gallery3d/ui/MenuExecutorFactory$Style;

    const-string v1, "SHARE_TRANS_STYLE"

    invoke-direct {v0, v1, v4}, Lcom/android/gallery3d/ui/MenuExecutorFactory$Style;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/gallery3d/ui/MenuExecutorFactory$Style;->SHARE_TRANS_STYLE:Lcom/android/gallery3d/ui/MenuExecutorFactory$Style;

    .line 16
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/android/gallery3d/ui/MenuExecutorFactory$Style;

    sget-object v1, Lcom/android/gallery3d/ui/MenuExecutorFactory$Style;->NORMAL_STYLE:Lcom/android/gallery3d/ui/MenuExecutorFactory$Style;

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/gallery3d/ui/MenuExecutorFactory$Style;->PASTE_STYLE:Lcom/android/gallery3d/ui/MenuExecutorFactory$Style;

    aput-object v1, v0, v3

    sget-object v1, Lcom/android/gallery3d/ui/MenuExecutorFactory$Style;->SHARE_TRANS_STYLE:Lcom/android/gallery3d/ui/MenuExecutorFactory$Style;

    aput-object v1, v0, v4

    sput-object v0, Lcom/android/gallery3d/ui/MenuExecutorFactory$Style;->$VALUES:[Lcom/android/gallery3d/ui/MenuExecutorFactory$Style;

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
    .line 16
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/gallery3d/ui/MenuExecutorFactory$Style;
    .locals 1
    .parameter "name"

    .prologue
    .line 16
    const-class v0, Lcom/android/gallery3d/ui/MenuExecutorFactory$Style;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/android/gallery3d/ui/MenuExecutorFactory$Style;

    return-object v0
.end method

.method public static values()[Lcom/android/gallery3d/ui/MenuExecutorFactory$Style;
    .locals 1

    .prologue
    .line 16
    sget-object v0, Lcom/android/gallery3d/ui/MenuExecutorFactory$Style;->$VALUES:[Lcom/android/gallery3d/ui/MenuExecutorFactory$Style;

    invoke-virtual {v0}, [Lcom/android/gallery3d/ui/MenuExecutorFactory$Style;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/gallery3d/ui/MenuExecutorFactory$Style;

    return-object v0
.end method
