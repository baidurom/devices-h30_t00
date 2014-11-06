.class public Lcom/android/gallery3d/anim/StateTransitionAnimation$SpecX;
.super Ljava/lang/Object;
.source "StateTransitionAnimation.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/gallery3d/anim/StateTransitionAnimation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SpecX"
.end annotation


# static fields
.field public static final ALBUM_PAGE_AS_BACKGROUND_PROGRESS:F = 1.0f

.field public static final ANIMATION_DURATION:I = 0x1c2

.field public static final PHOTO_INCOMING_ANIMATION:Lcom/android/gallery3d/anim/BaseTransition; = null

.field public static final PHOTO_INCOMING_THUMBNAIL_ANIMATION:Lcom/android/gallery3d/anim/BaseTransition; = null

.field public static final PHOTO_PAGE_AS_FOREGROUND_PROGRESS:F = 0.14f

.field public static final THUMBNAIL_SCALE_PROGRESS:F = 0.54f

.field static mTransitionXBg:Lcom/android/gallery3d/anim/BaseTransition;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 102
    new-instance v0, Lcom/android/gallery3d/anim/ClickThumbUpTransitionSmall;

    invoke-direct {v0}, Lcom/android/gallery3d/anim/ClickThumbUpTransitionSmall;-><init>()V

    sput-object v0, Lcom/android/gallery3d/anim/StateTransitionAnimation$SpecX;->PHOTO_INCOMING_THUMBNAIL_ANIMATION:Lcom/android/gallery3d/anim/BaseTransition;

    .line 103
    new-instance v0, Lcom/android/gallery3d/anim/ClickThumbUpTransitionBig;

    invoke-direct {v0}, Lcom/android/gallery3d/anim/ClickThumbUpTransitionBig;-><init>()V

    sput-object v0, Lcom/android/gallery3d/anim/StateTransitionAnimation$SpecX;->PHOTO_INCOMING_ANIMATION:Lcom/android/gallery3d/anim/BaseTransition;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 96
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/gallery3d/anim/StateTransitionAnimation$Transition;)Lcom/android/gallery3d/anim/BaseTransition;
    .locals 1
    .parameter "x0"

    .prologue
    .line 96
    invoke-static {p0}, Lcom/android/gallery3d/anim/StateTransitionAnimation$SpecX;->specForTransitionX(Lcom/android/gallery3d/anim/StateTransitionAnimation$Transition;)Lcom/android/gallery3d/anim/BaseTransition;

    move-result-object v0

    return-object v0
.end method

.method private static specForTransitionX(Lcom/android/gallery3d/anim/StateTransitionAnimation$Transition;)Lcom/android/gallery3d/anim/BaseTransition;
    .locals 2
    .parameter "t"

    .prologue
    .line 108
    sget-object v0, Lcom/android/gallery3d/anim/StateTransitionAnimation$1;->$SwitchMap$com$android$gallery3d$anim$StateTransitionAnimation$Transition:[I

    invoke-virtual {p0}, Lcom/android/gallery3d/anim/StateTransitionAnimation$Transition;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 114
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 110
    :pswitch_0
    sget-object v0, Lcom/android/gallery3d/anim/StateTransitionAnimation$SpecX;->PHOTO_INCOMING_THUMBNAIL_ANIMATION:Lcom/android/gallery3d/anim/BaseTransition;

    sput-object v0, Lcom/android/gallery3d/anim/StateTransitionAnimation$SpecX;->mTransitionXBg:Lcom/android/gallery3d/anim/BaseTransition;

    .line 111
    sget-object v0, Lcom/android/gallery3d/anim/StateTransitionAnimation$SpecX;->PHOTO_INCOMING_ANIMATION:Lcom/android/gallery3d/anim/BaseTransition;

    goto :goto_0

    .line 108
    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_0
    .end packed-switch
.end method
