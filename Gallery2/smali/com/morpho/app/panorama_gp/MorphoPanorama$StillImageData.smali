.class Lcom/morpho/app/panorama_gp/MorphoPanorama$StillImageData;
.super Ljava/lang/Object;
.source "MorphoPanorama.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/morpho/app/panorama_gp/MorphoPanorama;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "StillImageData"
.end annotation


# instance fields
.field public mId:I

.field public mImage:Ljava/nio/ByteBuffer;

.field public mMotionData:Ljava/nio/ByteBuffer;

.field public mPreviewCnt:I

.field final synthetic this$0:Lcom/morpho/app/panorama_gp/MorphoPanorama;


# direct methods
.method constructor <init>(Lcom/morpho/app/panorama_gp/MorphoPanorama;II[B[B)V
    .locals 1
    .parameter
    .parameter "image_id"
    .parameter "preview_cnt"
    .parameter "still_image"
    .parameter "motion_data"

    .prologue
    .line 1791
    iput-object p1, p0, Lcom/morpho/app/panorama_gp/MorphoPanorama$StillImageData;->this$0:Lcom/morpho/app/panorama_gp/MorphoPanorama;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 1792
    iput p2, p0, Lcom/morpho/app/panorama_gp/MorphoPanorama$StillImageData;->mId:I

    .line 1793
    iput p3, p0, Lcom/morpho/app/panorama_gp/MorphoPanorama$StillImageData;->mPreviewCnt:I

    .line 1794
    #calls: Lcom/morpho/app/panorama_gp/MorphoPanorama;->createByteBuffer([B)Ljava/nio/ByteBuffer;
    invoke-static {p1, p4}, Lcom/morpho/app/panorama_gp/MorphoPanorama;->access$1600(Lcom/morpho/app/panorama_gp/MorphoPanorama;[B)Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/morpho/app/panorama_gp/MorphoPanorama$StillImageData;->mImage:Ljava/nio/ByteBuffer;

    .line 1795
    #calls: Lcom/morpho/app/panorama_gp/MorphoPanorama;->createByteBuffer([B)Ljava/nio/ByteBuffer;
    invoke-static {p1, p5}, Lcom/morpho/app/panorama_gp/MorphoPanorama;->access$1600(Lcom/morpho/app/panorama_gp/MorphoPanorama;[B)Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/morpho/app/panorama_gp/MorphoPanorama$StillImageData;->mMotionData:Ljava/nio/ByteBuffer;

    .line 1796
    return-void
.end method
