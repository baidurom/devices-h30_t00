.class Lcom/android/hwcamera/feature/shot/callback/VoicePhotoFeaturePictureCallback$1;
.super Ljava/lang/Object;
.source "VoicePhotoFeaturePictureCallback.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/hwcamera/feature/shot/callback/VoicePhotoFeaturePictureCallback;->prepareUIForRecording()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/hwcamera/feature/shot/callback/VoicePhotoFeaturePictureCallback;


# direct methods
.method constructor <init>(Lcom/android/hwcamera/feature/shot/callback/VoicePhotoFeaturePictureCallback;)V
    .locals 0
    .parameter

    .prologue
    .line 222
    iput-object p1, p0, Lcom/android/hwcamera/feature/shot/callback/VoicePhotoFeaturePictureCallback$1;->this$0:Lcom/android/hwcamera/feature/shot/callback/VoicePhotoFeaturePictureCallback;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "arg0"

    .prologue
    .line 225
    iget-object v0, p0, Lcom/android/hwcamera/feature/shot/callback/VoicePhotoFeaturePictureCallback$1;->this$0:Lcom/android/hwcamera/feature/shot/callback/VoicePhotoFeaturePictureCallback;

    invoke-virtual {v0}, Lcom/android/hwcamera/feature/shot/callback/VoicePhotoFeaturePictureCallback;->onStopRecording()V

    .line 226
    return-void
.end method
