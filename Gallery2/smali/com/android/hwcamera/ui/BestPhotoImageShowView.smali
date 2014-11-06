.class public Lcom/android/hwcamera/ui/BestPhotoImageShowView;
.super Landroid/widget/ImageView;
.source "BestPhotoImageShowView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/hwcamera/ui/BestPhotoImageShowView$OnBestPhotoViewFlingListener;
    }
.end annotation


# instance fields
.field private mGestureDetector:Landroid/view/GestureDetector;

.field private mGestureDetectorListener:Landroid/view/GestureDetector$SimpleOnGestureListener;

.field private mListener:Lcom/android/hwcamera/ui/BestPhotoImageShowView$OnBestPhotoViewFlingListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    .line 32
    invoke-direct {p0, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 36
    new-instance v0, Lcom/android/hwcamera/ui/BestPhotoImageShowView$1;

    invoke-direct {v0, p0}, Lcom/android/hwcamera/ui/BestPhotoImageShowView$1;-><init>(Lcom/android/hwcamera/ui/BestPhotoImageShowView;)V

    iput-object v0, p0, Lcom/android/hwcamera/ui/BestPhotoImageShowView;->mGestureDetectorListener:Landroid/view/GestureDetector$SimpleOnGestureListener;

    .line 33
    new-instance v0, Landroid/view/GestureDetector;

    iget-object v1, p0, Lcom/android/hwcamera/ui/BestPhotoImageShowView;->mGestureDetectorListener:Landroid/view/GestureDetector$SimpleOnGestureListener;

    invoke-direct {v0, p1, v1}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v0, p0, Lcom/android/hwcamera/ui/BestPhotoImageShowView;->mGestureDetector:Landroid/view/GestureDetector;

    .line 34
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 27
    invoke-direct {p0, p1, p2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 36
    new-instance v0, Lcom/android/hwcamera/ui/BestPhotoImageShowView$1;

    invoke-direct {v0, p0}, Lcom/android/hwcamera/ui/BestPhotoImageShowView$1;-><init>(Lcom/android/hwcamera/ui/BestPhotoImageShowView;)V

    iput-object v0, p0, Lcom/android/hwcamera/ui/BestPhotoImageShowView;->mGestureDetectorListener:Landroid/view/GestureDetector$SimpleOnGestureListener;

    .line 28
    new-instance v0, Landroid/view/GestureDetector;

    iget-object v1, p0, Lcom/android/hwcamera/ui/BestPhotoImageShowView;->mGestureDetectorListener:Landroid/view/GestureDetector$SimpleOnGestureListener;

    invoke-direct {v0, p1, v1}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v0, p0, Lcom/android/hwcamera/ui/BestPhotoImageShowView;->mGestureDetector:Landroid/view/GestureDetector;

    .line 29
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 16
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 36
    new-instance v0, Lcom/android/hwcamera/ui/BestPhotoImageShowView$1;

    invoke-direct {v0, p0}, Lcom/android/hwcamera/ui/BestPhotoImageShowView$1;-><init>(Lcom/android/hwcamera/ui/BestPhotoImageShowView;)V

    iput-object v0, p0, Lcom/android/hwcamera/ui/BestPhotoImageShowView;->mGestureDetectorListener:Landroid/view/GestureDetector$SimpleOnGestureListener;

    .line 17
    new-instance v0, Landroid/view/GestureDetector;

    iget-object v1, p0, Lcom/android/hwcamera/ui/BestPhotoImageShowView;->mGestureDetectorListener:Landroid/view/GestureDetector$SimpleOnGestureListener;

    invoke-direct {v0, p1, v1}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v0, p0, Lcom/android/hwcamera/ui/BestPhotoImageShowView;->mGestureDetector:Landroid/view/GestureDetector;

    .line 18
    return-void
.end method

.method static synthetic access$000(Lcom/android/hwcamera/ui/BestPhotoImageShowView;)Lcom/android/hwcamera/ui/BestPhotoImageShowView$OnBestPhotoViewFlingListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 9
    iget-object v0, p0, Lcom/android/hwcamera/ui/BestPhotoImageShowView;->mListener:Lcom/android/hwcamera/ui/BestPhotoImageShowView$OnBestPhotoViewFlingListener;

    return-object v0
.end method


# virtual methods
.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .parameter "event"

    .prologue
    .line 22
    iget-object v0, p0, Lcom/android/hwcamera/ui/BestPhotoImageShowView;->mGestureDetector:Landroid/view/GestureDetector;

    invoke-virtual {v0, p1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 23
    const/4 v0, 0x1

    return v0
.end method

.method public setOnBestPhotoViewFlingListener(Lcom/android/hwcamera/ui/BestPhotoImageShowView$OnBestPhotoViewFlingListener;)V
    .locals 0
    .parameter "mListener"

    .prologue
    .line 62
    iput-object p1, p0, Lcom/android/hwcamera/ui/BestPhotoImageShowView;->mListener:Lcom/android/hwcamera/ui/BestPhotoImageShowView$OnBestPhotoViewFlingListener;

    .line 63
    return-void
.end method
