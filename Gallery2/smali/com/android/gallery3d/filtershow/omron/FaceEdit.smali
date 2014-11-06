.class public final Lcom/android/gallery3d/filtershow/omron/FaceEdit;
.super Ljava/lang/Object;
.source "FaceEdit.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 5
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static native CorrectBitmap(Landroid/graphics/Bitmap;Lcom/android/gallery3d/filtershow/omron/FaceBeautifierParamter;)I
.end method

.method public static apply(Landroid/graphics/Bitmap;Lcom/android/gallery3d/filtershow/omron/FaceBeautifierParamter;)Landroid/graphics/Bitmap;
    .locals 0
    .parameter "bitmap"
    .parameter "parameter"

    .prologue
    .line 8
    if-eqz p0, :cond_0

    if-eqz p1, :cond_0

    .line 9
    invoke-virtual {p1}, Lcom/android/gallery3d/filtershow/omron/FaceBeautifierParamter;->convertAllToOmronParameter()V

    .line 10
    invoke-static {p0, p1}, Lcom/android/gallery3d/filtershow/omron/FaceEdit;->CorrectBitmap(Landroid/graphics/Bitmap;Lcom/android/gallery3d/filtershow/omron/FaceBeautifierParamter;)I

    .line 12
    :cond_0
    return-object p0
.end method
