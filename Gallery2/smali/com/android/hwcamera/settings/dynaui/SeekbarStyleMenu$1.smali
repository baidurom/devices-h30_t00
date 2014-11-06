.class Lcom/android/hwcamera/settings/dynaui/SeekbarStyleMenu$1;
.super Ljava/lang/Object;
.source "SeekbarStyleMenu.java"

# interfaces
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/hwcamera/settings/dynaui/SeekbarStyleMenu;->initListener(Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/hwcamera/settings/dynaui/SeekbarStyleMenu;

.field final synthetic val$menuitems:Ljava/util/List;


# direct methods
.method constructor <init>(Lcom/android/hwcamera/settings/dynaui/SeekbarStyleMenu;Ljava/util/List;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 70
    iput-object p1, p0, Lcom/android/hwcamera/settings/dynaui/SeekbarStyleMenu$1;->this$0:Lcom/android/hwcamera/settings/dynaui/SeekbarStyleMenu;

    iput-object p2, p0, Lcom/android/hwcamera/settings/dynaui/SeekbarStyleMenu$1;->val$menuitems:Ljava/util/List;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .locals 3
    .parameter "arg0"
    .parameter "progress"
    .parameter "arg2"

    .prologue
    .line 74
    iget-object v0, p0, Lcom/android/hwcamera/settings/dynaui/SeekbarStyleMenu$1;->this$0:Lcom/android/hwcamera/settings/dynaui/SeekbarStyleMenu;

    int-to-float v1, p2

    const/high16 v2, 0x42c8

    div-float/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    #setter for: Lcom/android/hwcamera/settings/dynaui/SeekbarStyleMenu;->mCurrentValue:I
    invoke-static {v0, v1}, Lcom/android/hwcamera/settings/dynaui/SeekbarStyleMenu;->access$002(Lcom/android/hwcamera/settings/dynaui/SeekbarStyleMenu;I)I

    .line 75
    iget-object v0, p0, Lcom/android/hwcamera/settings/dynaui/SeekbarStyleMenu$1;->this$0:Lcom/android/hwcamera/settings/dynaui/SeekbarStyleMenu;

    #getter for: Lcom/android/hwcamera/settings/dynaui/SeekbarStyleMenu;->mCurrentValue:I
    invoke-static {v0}, Lcom/android/hwcamera/settings/dynaui/SeekbarStyleMenu;->access$000(Lcom/android/hwcamera/settings/dynaui/SeekbarStyleMenu;)I

    move-result v0

    iget-object v1, p0, Lcom/android/hwcamera/settings/dynaui/SeekbarStyleMenu$1;->val$menuitems:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-gt v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/hwcamera/settings/dynaui/SeekbarStyleMenu$1;->this$0:Lcom/android/hwcamera/settings/dynaui/SeekbarStyleMenu;

    #getter for: Lcom/android/hwcamera/settings/dynaui/SeekbarStyleMenu;->mCurrentValue:I
    invoke-static {v0}, Lcom/android/hwcamera/settings/dynaui/SeekbarStyleMenu;->access$000(Lcom/android/hwcamera/settings/dynaui/SeekbarStyleMenu;)I

    move-result v0

    if-gez v0, :cond_1

    .line 83
    :cond_0
    :goto_0
    return-void

    .line 79
    :cond_1
    rem-int/lit8 v0, p2, 0x64

    if-nez v0, :cond_0

    .line 80
    iget-object v0, p0, Lcom/android/hwcamera/settings/dynaui/SeekbarStyleMenu$1;->val$menuitems:Ljava/util/List;

    iget-object v1, p0, Lcom/android/hwcamera/settings/dynaui/SeekbarStyleMenu$1;->this$0:Lcom/android/hwcamera/settings/dynaui/SeekbarStyleMenu;

    #getter for: Lcom/android/hwcamera/settings/dynaui/SeekbarStyleMenu;->mCurrentValue:I
    invoke-static {v1}, Lcom/android/hwcamera/settings/dynaui/SeekbarStyleMenu;->access$000(Lcom/android/hwcamera/settings/dynaui/SeekbarStyleMenu;)I

    move-result v1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/hwcamera/settings/MenuItem;

    invoke-virtual {v0}, Lcom/android/hwcamera/settings/MenuItem;->onClick()V

    goto :goto_0
.end method

.method public onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 0
    .parameter "arg0"

    .prologue
    .line 87
    return-void
.end method

.method public onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 2
    .parameter "arg0"

    .prologue
    .line 91
    iget-object v0, p0, Lcom/android/hwcamera/settings/dynaui/SeekbarStyleMenu$1;->this$0:Lcom/android/hwcamera/settings/dynaui/SeekbarStyleMenu;

    #getter for: Lcom/android/hwcamera/settings/dynaui/SeekbarStyleMenu;->mSeekBar:Landroid/widget/SeekBar;
    invoke-static {v0}, Lcom/android/hwcamera/settings/dynaui/SeekbarStyleMenu;->access$100(Lcom/android/hwcamera/settings/dynaui/SeekbarStyleMenu;)Landroid/widget/SeekBar;

    move-result-object v0

    iget-object v1, p0, Lcom/android/hwcamera/settings/dynaui/SeekbarStyleMenu$1;->this$0:Lcom/android/hwcamera/settings/dynaui/SeekbarStyleMenu;

    #getter for: Lcom/android/hwcamera/settings/dynaui/SeekbarStyleMenu;->mCurrentValue:I
    invoke-static {v1}, Lcom/android/hwcamera/settings/dynaui/SeekbarStyleMenu;->access$000(Lcom/android/hwcamera/settings/dynaui/SeekbarStyleMenu;)I

    move-result v1

    mul-int/lit8 v1, v1, 0x64

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 92
    return-void
.end method
