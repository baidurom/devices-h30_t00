.class final enum Lcom/huawei/gallery3d/photoshare/PhotoShareNoPhotoActivity$PhotoShareState;
.super Ljava/lang/Enum;
.source "PhotoShareNoPhotoActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/huawei/gallery3d/photoshare/PhotoShareNoPhotoActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "PhotoShareState"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/huawei/gallery3d/photoshare/PhotoShareNoPhotoActivity$PhotoShareState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/huawei/gallery3d/photoshare/PhotoShareNoPhotoActivity$PhotoShareState;

.field public static final enum EMPTY_TYPE_MYPHOTO_EMPTY:Lcom/huawei/gallery3d/photoshare/PhotoShareNoPhotoActivity$PhotoShareState;

.field public static final enum EMPTY_TYPE_MYRECV_EMPTY:Lcom/huawei/gallery3d/photoshare/PhotoShareNoPhotoActivity$PhotoShareState;

.field public static final enum EMPTY_TYPE_MYSHARE_EMPTY:Lcom/huawei/gallery3d/photoshare/PhotoShareNoPhotoActivity$PhotoShareState;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 49
    new-instance v0, Lcom/huawei/gallery3d/photoshare/PhotoShareNoPhotoActivity$PhotoShareState;

    const-string v1, "EMPTY_TYPE_MYPHOTO_EMPTY"

    invoke-direct {v0, v1, v2}, Lcom/huawei/gallery3d/photoshare/PhotoShareNoPhotoActivity$PhotoShareState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/huawei/gallery3d/photoshare/PhotoShareNoPhotoActivity$PhotoShareState;->EMPTY_TYPE_MYPHOTO_EMPTY:Lcom/huawei/gallery3d/photoshare/PhotoShareNoPhotoActivity$PhotoShareState;

    .line 50
    new-instance v0, Lcom/huawei/gallery3d/photoshare/PhotoShareNoPhotoActivity$PhotoShareState;

    const-string v1, "EMPTY_TYPE_MYSHARE_EMPTY"

    invoke-direct {v0, v1, v3}, Lcom/huawei/gallery3d/photoshare/PhotoShareNoPhotoActivity$PhotoShareState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/huawei/gallery3d/photoshare/PhotoShareNoPhotoActivity$PhotoShareState;->EMPTY_TYPE_MYSHARE_EMPTY:Lcom/huawei/gallery3d/photoshare/PhotoShareNoPhotoActivity$PhotoShareState;

    .line 51
    new-instance v0, Lcom/huawei/gallery3d/photoshare/PhotoShareNoPhotoActivity$PhotoShareState;

    const-string v1, "EMPTY_TYPE_MYRECV_EMPTY"

    invoke-direct {v0, v1, v4}, Lcom/huawei/gallery3d/photoshare/PhotoShareNoPhotoActivity$PhotoShareState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/huawei/gallery3d/photoshare/PhotoShareNoPhotoActivity$PhotoShareState;->EMPTY_TYPE_MYRECV_EMPTY:Lcom/huawei/gallery3d/photoshare/PhotoShareNoPhotoActivity$PhotoShareState;

    .line 48
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/huawei/gallery3d/photoshare/PhotoShareNoPhotoActivity$PhotoShareState;

    sget-object v1, Lcom/huawei/gallery3d/photoshare/PhotoShareNoPhotoActivity$PhotoShareState;->EMPTY_TYPE_MYPHOTO_EMPTY:Lcom/huawei/gallery3d/photoshare/PhotoShareNoPhotoActivity$PhotoShareState;

    aput-object v1, v0, v2

    sget-object v1, Lcom/huawei/gallery3d/photoshare/PhotoShareNoPhotoActivity$PhotoShareState;->EMPTY_TYPE_MYSHARE_EMPTY:Lcom/huawei/gallery3d/photoshare/PhotoShareNoPhotoActivity$PhotoShareState;

    aput-object v1, v0, v3

    sget-object v1, Lcom/huawei/gallery3d/photoshare/PhotoShareNoPhotoActivity$PhotoShareState;->EMPTY_TYPE_MYRECV_EMPTY:Lcom/huawei/gallery3d/photoshare/PhotoShareNoPhotoActivity$PhotoShareState;

    aput-object v1, v0, v4

    sput-object v0, Lcom/huawei/gallery3d/photoshare/PhotoShareNoPhotoActivity$PhotoShareState;->$VALUES:[Lcom/huawei/gallery3d/photoshare/PhotoShareNoPhotoActivity$PhotoShareState;

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
    .line 48
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/huawei/gallery3d/photoshare/PhotoShareNoPhotoActivity$PhotoShareState;
    .locals 1
    .parameter "name"

    .prologue
    .line 48
    const-class v0, Lcom/huawei/gallery3d/photoshare/PhotoShareNoPhotoActivity$PhotoShareState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/huawei/gallery3d/photoshare/PhotoShareNoPhotoActivity$PhotoShareState;

    return-object v0
.end method

.method public static values()[Lcom/huawei/gallery3d/photoshare/PhotoShareNoPhotoActivity$PhotoShareState;
    .locals 1

    .prologue
    .line 48
    sget-object v0, Lcom/huawei/gallery3d/photoshare/PhotoShareNoPhotoActivity$PhotoShareState;->$VALUES:[Lcom/huawei/gallery3d/photoshare/PhotoShareNoPhotoActivity$PhotoShareState;

    invoke-virtual {v0}, [Lcom/huawei/gallery3d/photoshare/PhotoShareNoPhotoActivity$PhotoShareState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/huawei/gallery3d/photoshare/PhotoShareNoPhotoActivity$PhotoShareState;

    return-object v0
.end method
