.class public Lcom/android/gallery3d/util/GalleryUtils$Params;
.super Ljava/lang/Object;
.source "GalleryUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/gallery3d/util/GalleryUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Params"
.end annotation


# static fields
.field public static final THUMBNAIL_TARGET_SIZE_LARGER:I = 0x3c0


# instance fields
.field public inFirstFrame:Z

.field public inFirstFullFrame:Z

.field public inGifDecoder:Z

.field public inMpoFrames:Z

.field public inMpoTotalCount:Z

.field public inOriginalFrame:Z

.field public inOriginalFullFrame:Z

.field public inOriginalTargetSize:I

.field public inPQEnhance:Z

.field public inSampleDown:Z

.field public inSecondFrame:Z

.field public inSecondFullFrame:Z

.field public inTargetDisplayHeight:I

.field public inTargetDisplayWidth:I

.field public inType:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 911
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 912
    iput-boolean v1, p0, Lcom/android/gallery3d/util/GalleryUtils$Params;->inOriginalFrame:Z

    .line 913
    iput-boolean v1, p0, Lcom/android/gallery3d/util/GalleryUtils$Params;->inOriginalFullFrame:Z

    .line 914
    iput-boolean v1, p0, Lcom/android/gallery3d/util/GalleryUtils$Params;->inFirstFrame:Z

    .line 915
    iput-boolean v1, p0, Lcom/android/gallery3d/util/GalleryUtils$Params;->inSecondFrame:Z

    .line 916
    iput-boolean v1, p0, Lcom/android/gallery3d/util/GalleryUtils$Params;->inFirstFullFrame:Z

    .line 917
    iput-boolean v1, p0, Lcom/android/gallery3d/util/GalleryUtils$Params;->inSecondFullFrame:Z

    .line 918
    iput-boolean v1, p0, Lcom/android/gallery3d/util/GalleryUtils$Params;->inGifDecoder:Z

    .line 919
    iput-boolean v1, p0, Lcom/android/gallery3d/util/GalleryUtils$Params;->inMpoFrames:Z

    .line 920
    iput-boolean v1, p0, Lcom/android/gallery3d/util/GalleryUtils$Params;->inMpoTotalCount:Z

    .line 922
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/gallery3d/util/GalleryUtils$Params;->inType:I

    .line 923
    const/16 v0, 0x280

    iput v0, p0, Lcom/android/gallery3d/util/GalleryUtils$Params;->inOriginalTargetSize:I

    .line 924
    iput-boolean v1, p0, Lcom/android/gallery3d/util/GalleryUtils$Params;->inSampleDown:Z

    .line 925
    iput-boolean v1, p0, Lcom/android/gallery3d/util/GalleryUtils$Params;->inPQEnhance:Z

    .line 926
    iput v1, p0, Lcom/android/gallery3d/util/GalleryUtils$Params;->inTargetDisplayWidth:I

    .line 927
    iput v1, p0, Lcom/android/gallery3d/util/GalleryUtils$Params;->inTargetDisplayHeight:I

    .line 928
    return-void
.end method


# virtual methods
.method public info()V
    .locals 1

    .prologue
    .line 931
    const-string v0, "GalleryUtils"

    invoke-virtual {p0, v0}, Lcom/android/gallery3d/util/GalleryUtils$Params;->info(Ljava/lang/String;)V

    .line 932
    return-void
.end method

.method public info(Ljava/lang/String;)V
    .locals 2
    .parameter "tag"

    .prologue
    .line 935
    iget-boolean v0, p0, Lcom/android/gallery3d/util/GalleryUtils$Params;->inOriginalFrame:Z

    if-eqz v0, :cond_0

    .line 936
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Params:inOriginalFrame="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/gallery3d/util/GalleryUtils$Params;->inOriginalFrame:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 937
    :cond_0
    iget-boolean v0, p0, Lcom/android/gallery3d/util/GalleryUtils$Params;->inFirstFrame:Z

    if-eqz v0, :cond_1

    .line 938
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Params:inFirstFrame="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/gallery3d/util/GalleryUtils$Params;->inFirstFrame:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 939
    :cond_1
    iget-boolean v0, p0, Lcom/android/gallery3d/util/GalleryUtils$Params;->inSecondFrame:Z

    if-eqz v0, :cond_2

    .line 940
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Params:inSecondFrame="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/gallery3d/util/GalleryUtils$Params;->inSecondFrame:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 941
    :cond_2
    iget-boolean v0, p0, Lcom/android/gallery3d/util/GalleryUtils$Params;->inOriginalFullFrame:Z

    if-eqz v0, :cond_3

    .line 942
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Params:inOriginalFullFrame="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/gallery3d/util/GalleryUtils$Params;->inOriginalFullFrame:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 943
    :cond_3
    iget-boolean v0, p0, Lcom/android/gallery3d/util/GalleryUtils$Params;->inFirstFullFrame:Z

    if-eqz v0, :cond_4

    .line 944
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Params:inFirstFullFrame="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/gallery3d/util/GalleryUtils$Params;->inFirstFullFrame:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 945
    :cond_4
    iget-boolean v0, p0, Lcom/android/gallery3d/util/GalleryUtils$Params;->inSecondFullFrame:Z

    if-eqz v0, :cond_5

    .line 946
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Params:inSecondFullFrame="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/gallery3d/util/GalleryUtils$Params;->inSecondFullFrame:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 947
    :cond_5
    iget-boolean v0, p0, Lcom/android/gallery3d/util/GalleryUtils$Params;->inGifDecoder:Z

    if-eqz v0, :cond_6

    .line 948
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Params:inGifDecoder="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/gallery3d/util/GalleryUtils$Params;->inGifDecoder:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 949
    :cond_6
    iget v0, p0, Lcom/android/gallery3d/util/GalleryUtils$Params;->inOriginalTargetSize:I

    if-eqz v0, :cond_7

    .line 950
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Params:inOriginalTargetSize="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/gallery3d/util/GalleryUtils$Params;->inOriginalTargetSize:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 951
    :cond_7
    iget-boolean v0, p0, Lcom/android/gallery3d/util/GalleryUtils$Params;->inSampleDown:Z

    if-eqz v0, :cond_8

    .line 952
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Params:inSampleDown="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/gallery3d/util/GalleryUtils$Params;->inSampleDown:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 953
    :cond_8
    iget-boolean v0, p0, Lcom/android/gallery3d/util/GalleryUtils$Params;->inPQEnhance:Z

    if-eqz v0, :cond_9

    .line 954
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Params:inPQEnhance="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/gallery3d/util/GalleryUtils$Params;->inPQEnhance:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 955
    :cond_9
    iget-boolean v0, p0, Lcom/android/gallery3d/util/GalleryUtils$Params;->inMpoFrames:Z

    if-eqz v0, :cond_a

    .line 956
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Params:inMpoFrames="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/gallery3d/util/GalleryUtils$Params;->inMpoFrames:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 958
    :cond_a
    iget-boolean v0, p0, Lcom/android/gallery3d/util/GalleryUtils$Params;->inMpoTotalCount:Z

    if-eqz v0, :cond_b

    .line 959
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Params:inMpoTotalCount="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/gallery3d/util/GalleryUtils$Params;->inMpoTotalCount:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 961
    :cond_b
    return-void
.end method
