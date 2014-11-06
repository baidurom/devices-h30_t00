.class public Lcom/android/gallery3d/anim/BaseTransition$TransformationInfo;
.super Ljava/lang/Object;
.source "BaseTransition.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/gallery3d/anim/BaseTransition;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TransformationInfo"
.end annotation


# instance fields
.field public mAlpha:F

.field public mAlphaDirty:Z

.field public final mBounds:Landroid/graphics/Rect;

.field public final mMatrix:Landroid/graphics/Matrix;

.field public mMatrix3D:[F

.field public mMatrixDirty:Z

.field public mPivotX:F

.field public mPivotY:F

.field public mPivotZ:F

.field public mRotation:F

.field public mRotationX:F

.field public mRotationY:F

.field public mScaleX:F

.field public mScaleY:F

.field public mScaleZ:F

.field public mTranslationX:F

.field public mTranslationY:F

.field public mTranslationZ:F


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v0, 0x0

    const/high16 v2, 0x3f80

    const/4 v1, 0x0

    .line 40
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 46
    iput-boolean v0, p0, Lcom/android/gallery3d/anim/BaseTransition$TransformationInfo;->mMatrixDirty:Z

    .line 47
    iput-boolean v0, p0, Lcom/android/gallery3d/anim/BaseTransition$TransformationInfo;->mAlphaDirty:Z

    .line 53
    iput v2, p0, Lcom/android/gallery3d/anim/BaseTransition$TransformationInfo;->mAlpha:F

    .line 55
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/gallery3d/anim/BaseTransition$TransformationInfo;->mBounds:Landroid/graphics/Rect;

    .line 64
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/android/gallery3d/anim/BaseTransition$TransformationInfo;->mMatrix:Landroid/graphics/Matrix;

    .line 65
    const/16 v0, 0x10

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/android/gallery3d/anim/BaseTransition$TransformationInfo;->mMatrix3D:[F

    .line 71
    iput v1, p0, Lcom/android/gallery3d/anim/BaseTransition$TransformationInfo;->mRotationY:F

    .line 76
    iput v1, p0, Lcom/android/gallery3d/anim/BaseTransition$TransformationInfo;->mRotationX:F

    .line 82
    iput v1, p0, Lcom/android/gallery3d/anim/BaseTransition$TransformationInfo;->mRotation:F

    .line 87
    iput v1, p0, Lcom/android/gallery3d/anim/BaseTransition$TransformationInfo;->mTranslationX:F

    .line 92
    iput v1, p0, Lcom/android/gallery3d/anim/BaseTransition$TransformationInfo;->mTranslationY:F

    .line 94
    iput v1, p0, Lcom/android/gallery3d/anim/BaseTransition$TransformationInfo;->mTranslationZ:F

    .line 99
    iput v2, p0, Lcom/android/gallery3d/anim/BaseTransition$TransformationInfo;->mScaleX:F

    .line 105
    iput v2, p0, Lcom/android/gallery3d/anim/BaseTransition$TransformationInfo;->mScaleY:F

    .line 111
    iput v2, p0, Lcom/android/gallery3d/anim/BaseTransition$TransformationInfo;->mScaleZ:F

    .line 117
    iput v1, p0, Lcom/android/gallery3d/anim/BaseTransition$TransformationInfo;->mPivotX:F

    .line 123
    iput v1, p0, Lcom/android/gallery3d/anim/BaseTransition$TransformationInfo;->mPivotY:F

    .line 125
    iput v1, p0, Lcom/android/gallery3d/anim/BaseTransition$TransformationInfo;->mPivotZ:F

    return-void
.end method

.method static synthetic access$000(Lcom/android/gallery3d/anim/BaseTransition$TransformationInfo;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 40
    invoke-direct {p0}, Lcom/android/gallery3d/anim/BaseTransition$TransformationInfo;->clearDirty()V

    return-void
.end method

.method private clearDirty()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 129
    iput-boolean v1, p0, Lcom/android/gallery3d/anim/BaseTransition$TransformationInfo;->mAlphaDirty:Z

    .line 130
    const/high16 v0, 0x3f80

    iput v0, p0, Lcom/android/gallery3d/anim/BaseTransition$TransformationInfo;->mAlpha:F

    .line 133
    iput-boolean v1, p0, Lcom/android/gallery3d/anim/BaseTransition$TransformationInfo;->mMatrixDirty:Z

    .line 136
    invoke-direct {p0}, Lcom/android/gallery3d/anim/BaseTransition$TransformationInfo;->clearMatrix()V

    .line 137
    return-void
.end method

.method private clearMatrix()V
    .locals 2

    .prologue
    const/high16 v1, 0x3f80

    const/4 v0, 0x0

    .line 140
    iput v0, p0, Lcom/android/gallery3d/anim/BaseTransition$TransformationInfo;->mRotation:F

    .line 141
    iput v0, p0, Lcom/android/gallery3d/anim/BaseTransition$TransformationInfo;->mRotationX:F

    .line 142
    iput v0, p0, Lcom/android/gallery3d/anim/BaseTransition$TransformationInfo;->mRotationY:F

    .line 143
    iput v1, p0, Lcom/android/gallery3d/anim/BaseTransition$TransformationInfo;->mScaleX:F

    .line 144
    iput v1, p0, Lcom/android/gallery3d/anim/BaseTransition$TransformationInfo;->mScaleY:F

    .line 145
    iput v1, p0, Lcom/android/gallery3d/anim/BaseTransition$TransformationInfo;->mScaleZ:F

    .line 146
    iput v0, p0, Lcom/android/gallery3d/anim/BaseTransition$TransformationInfo;->mTranslationX:F

    .line 147
    iput v0, p0, Lcom/android/gallery3d/anim/BaseTransition$TransformationInfo;->mTranslationY:F

    .line 148
    iput v0, p0, Lcom/android/gallery3d/anim/BaseTransition$TransformationInfo;->mTranslationZ:F

    .line 149
    return-void
.end method


# virtual methods
.method public dump()V
    .locals 1

    .prologue
    .line 159
    const-string v0, "BaseTransition"

    invoke-virtual {p0, v0}, Lcom/android/gallery3d/anim/BaseTransition$TransformationInfo;->dump(Ljava/lang/String;)V

    .line 160
    return-void
.end method

.method public dump(Ljava/lang/String;)V
    .locals 2
    .parameter "tag"

    .prologue
    .line 152
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "R["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/gallery3d/anim/BaseTransition$TransformationInfo;->mRotationX:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/gallery3d/anim/BaseTransition$TransformationInfo;->mRotationY:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/gallery3d/anim/BaseTransition$TransformationInfo;->mRotation:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " RP["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/gallery3d/anim/BaseTransition$TransformationInfo;->mPivotX:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/gallery3d/anim/BaseTransition$TransformationInfo;->mPivotY:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/gallery3d/anim/BaseTransition$TransformationInfo;->mPivotZ:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " T["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/gallery3d/anim/BaseTransition$TransformationInfo;->mTranslationX:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/gallery3d/anim/BaseTransition$TransformationInfo;->mTranslationY:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/gallery3d/anim/BaseTransition$TransformationInfo;->mTranslationZ:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "S["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/gallery3d/anim/BaseTransition$TransformationInfo;->mScaleX:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/gallery3d/anim/BaseTransition$TransformationInfo;->mScaleY:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/gallery3d/anim/BaseTransition$TransformationInfo;->mScaleZ:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", a = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/gallery3d/anim/BaseTransition$TransformationInfo;->mAlpha:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 156
    return-void
.end method
