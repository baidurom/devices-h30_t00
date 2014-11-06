.class public final enum Lcom/android/gallery3d/ui/AlbumLabelMaker$StyleType;
.super Ljava/lang/Enum;
.source "AlbumLabelMaker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/gallery3d/ui/AlbumLabelMaker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "StyleType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/android/gallery3d/ui/AlbumLabelMaker$StyleType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/gallery3d/ui/AlbumLabelMaker$StyleType;

.field public static final enum NORMAL_STYLE:Lcom/android/gallery3d/ui/AlbumLabelMaker$StyleType;

.field public static final enum SELECT_STYLE:Lcom/android/gallery3d/ui/AlbumLabelMaker$StyleType;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 59
    new-instance v0, Lcom/android/gallery3d/ui/AlbumLabelMaker$StyleType;

    const-string v1, "NORMAL_STYLE"

    invoke-direct {v0, v1, v2}, Lcom/android/gallery3d/ui/AlbumLabelMaker$StyleType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/gallery3d/ui/AlbumLabelMaker$StyleType;->NORMAL_STYLE:Lcom/android/gallery3d/ui/AlbumLabelMaker$StyleType;

    new-instance v0, Lcom/android/gallery3d/ui/AlbumLabelMaker$StyleType;

    const-string v1, "SELECT_STYLE"

    invoke-direct {v0, v1, v3}, Lcom/android/gallery3d/ui/AlbumLabelMaker$StyleType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/gallery3d/ui/AlbumLabelMaker$StyleType;->SELECT_STYLE:Lcom/android/gallery3d/ui/AlbumLabelMaker$StyleType;

    .line 58
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/android/gallery3d/ui/AlbumLabelMaker$StyleType;

    sget-object v1, Lcom/android/gallery3d/ui/AlbumLabelMaker$StyleType;->NORMAL_STYLE:Lcom/android/gallery3d/ui/AlbumLabelMaker$StyleType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/gallery3d/ui/AlbumLabelMaker$StyleType;->SELECT_STYLE:Lcom/android/gallery3d/ui/AlbumLabelMaker$StyleType;

    aput-object v1, v0, v3

    sput-object v0, Lcom/android/gallery3d/ui/AlbumLabelMaker$StyleType;->$VALUES:[Lcom/android/gallery3d/ui/AlbumLabelMaker$StyleType;

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
    .line 58
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/gallery3d/ui/AlbumLabelMaker$StyleType;
    .locals 1
    .parameter "name"

    .prologue
    .line 58
    const-class v0, Lcom/android/gallery3d/ui/AlbumLabelMaker$StyleType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/android/gallery3d/ui/AlbumLabelMaker$StyleType;

    return-object v0
.end method

.method public static values()[Lcom/android/gallery3d/ui/AlbumLabelMaker$StyleType;
    .locals 1

    .prologue
    .line 58
    sget-object v0, Lcom/android/gallery3d/ui/AlbumLabelMaker$StyleType;->$VALUES:[Lcom/android/gallery3d/ui/AlbumLabelMaker$StyleType;

    invoke-virtual {v0}, [Lcom/android/gallery3d/ui/AlbumLabelMaker$StyleType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/gallery3d/ui/AlbumLabelMaker$StyleType;

    return-object v0
.end method
