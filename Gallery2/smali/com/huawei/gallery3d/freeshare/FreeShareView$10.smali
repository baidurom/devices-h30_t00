.class Lcom/huawei/gallery3d/freeshare/FreeShareView$10;
.super Ljava/lang/Object;
.source "FreeShareView.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/huawei/gallery3d/freeshare/FreeShareView;->initializeData()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/huawei/gallery3d/freeshare/FreeShareView;


# direct methods
.method constructor <init>(Lcom/huawei/gallery3d/freeshare/FreeShareView;)V
    .locals 0
    .parameter

    .prologue
    .line 460
    iput-object p1, p0, Lcom/huawei/gallery3d/freeshare/FreeShareView$10;->this$0:Lcom/huawei/gallery3d/freeshare/FreeShareView;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 1
    .parameter "buttonView"
    .parameter "isChecked"

    .prologue
    .line 464
    iget-object v0, p0, Lcom/huawei/gallery3d/freeshare/FreeShareView$10;->this$0:Lcom/huawei/gallery3d/freeshare/FreeShareView;

    #getter for: Lcom/huawei/gallery3d/freeshare/FreeShareView;->mCheckBox:Landroid/widget/CheckBox;
    invoke-static {v0}, Lcom/huawei/gallery3d/freeshare/FreeShareView;->access$2200(Lcom/huawei/gallery3d/freeshare/FreeShareView;)Landroid/widget/CheckBox;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 465
    return-void
.end method
