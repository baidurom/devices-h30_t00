.class final enum Lcom/android/gallery3d/ui/ToolbarView$PressedState;
.super Ljava/lang/Enum;
.source "ToolbarView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/gallery3d/ui/ToolbarView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "PressedState"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/android/gallery3d/ui/ToolbarView$PressedState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/gallery3d/ui/ToolbarView$PressedState;

.field public static final enum PRESSED_CANCEL_BUTTON:Lcom/android/gallery3d/ui/ToolbarView$PressedState;

.field public static final enum PRESSED_DONE_BUTTON:Lcom/android/gallery3d/ui/ToolbarView$PressedState;

.field public static final enum UN_PRESSED:Lcom/android/gallery3d/ui/ToolbarView$PressedState;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 254
    new-instance v0, Lcom/android/gallery3d/ui/ToolbarView$PressedState;

    const-string v1, "UN_PRESSED"

    invoke-direct {v0, v1, v2}, Lcom/android/gallery3d/ui/ToolbarView$PressedState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/gallery3d/ui/ToolbarView$PressedState;->UN_PRESSED:Lcom/android/gallery3d/ui/ToolbarView$PressedState;

    .line 255
    new-instance v0, Lcom/android/gallery3d/ui/ToolbarView$PressedState;

    const-string v1, "PRESSED_DONE_BUTTON"

    invoke-direct {v0, v1, v3}, Lcom/android/gallery3d/ui/ToolbarView$PressedState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/gallery3d/ui/ToolbarView$PressedState;->PRESSED_DONE_BUTTON:Lcom/android/gallery3d/ui/ToolbarView$PressedState;

    .line 256
    new-instance v0, Lcom/android/gallery3d/ui/ToolbarView$PressedState;

    const-string v1, "PRESSED_CANCEL_BUTTON"

    invoke-direct {v0, v1, v4}, Lcom/android/gallery3d/ui/ToolbarView$PressedState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/gallery3d/ui/ToolbarView$PressedState;->PRESSED_CANCEL_BUTTON:Lcom/android/gallery3d/ui/ToolbarView$PressedState;

    .line 253
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/android/gallery3d/ui/ToolbarView$PressedState;

    sget-object v1, Lcom/android/gallery3d/ui/ToolbarView$PressedState;->UN_PRESSED:Lcom/android/gallery3d/ui/ToolbarView$PressedState;

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/gallery3d/ui/ToolbarView$PressedState;->PRESSED_DONE_BUTTON:Lcom/android/gallery3d/ui/ToolbarView$PressedState;

    aput-object v1, v0, v3

    sget-object v1, Lcom/android/gallery3d/ui/ToolbarView$PressedState;->PRESSED_CANCEL_BUTTON:Lcom/android/gallery3d/ui/ToolbarView$PressedState;

    aput-object v1, v0, v4

    sput-object v0, Lcom/android/gallery3d/ui/ToolbarView$PressedState;->$VALUES:[Lcom/android/gallery3d/ui/ToolbarView$PressedState;

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
    .line 253
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/gallery3d/ui/ToolbarView$PressedState;
    .locals 1
    .parameter "name"

    .prologue
    .line 253
    const-class v0, Lcom/android/gallery3d/ui/ToolbarView$PressedState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/android/gallery3d/ui/ToolbarView$PressedState;

    return-object v0
.end method

.method public static values()[Lcom/android/gallery3d/ui/ToolbarView$PressedState;
    .locals 1

    .prologue
    .line 253
    sget-object v0, Lcom/android/gallery3d/ui/ToolbarView$PressedState;->$VALUES:[Lcom/android/gallery3d/ui/ToolbarView$PressedState;

    invoke-virtual {v0}, [Lcom/android/gallery3d/ui/ToolbarView$PressedState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/gallery3d/ui/ToolbarView$PressedState;

    return-object v0
.end method
