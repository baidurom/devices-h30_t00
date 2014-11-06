.class public Lcom/android/gallery3d/ui/SimpleTabWidget$Tab;
.super Ljava/lang/Object;
.source "SimpleTabWidget.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/gallery3d/ui/SimpleTabWidget;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "Tab"
.end annotation


# static fields
.field public static final INVALID_POSITION:I = -0x1


# instance fields
.field private mCallback:Lcom/android/gallery3d/ui/SimpleTabWidget$TabListener;

.field private mPosition:I

.field private mTag:Ljava/lang/Object;

.field private mText:Ljava/lang/CharSequence;

.field final synthetic this$0:Lcom/android/gallery3d/ui/SimpleTabWidget;


# direct methods
.method public constructor <init>(Lcom/android/gallery3d/ui/SimpleTabWidget;)V
    .locals 1
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 168
    invoke-direct {p0, p1, v0, v0, v0}, Lcom/android/gallery3d/ui/SimpleTabWidget$Tab;-><init>(Lcom/android/gallery3d/ui/SimpleTabWidget;Ljava/lang/CharSequence;Lcom/android/gallery3d/ui/SimpleTabWidget$TabListener;Ljava/lang/Object;)V

    .line 169
    return-void
.end method

.method public constructor <init>(Lcom/android/gallery3d/ui/SimpleTabWidget;Ljava/lang/CharSequence;)V
    .locals 1
    .parameter
    .parameter "text"

    .prologue
    const/4 v0, 0x0

    .line 172
    invoke-direct {p0, p1, p2, v0, v0}, Lcom/android/gallery3d/ui/SimpleTabWidget$Tab;-><init>(Lcom/android/gallery3d/ui/SimpleTabWidget;Ljava/lang/CharSequence;Lcom/android/gallery3d/ui/SimpleTabWidget$TabListener;Ljava/lang/Object;)V

    .line 173
    return-void
.end method

.method public constructor <init>(Lcom/android/gallery3d/ui/SimpleTabWidget;Ljava/lang/CharSequence;Lcom/android/gallery3d/ui/SimpleTabWidget$TabListener;)V
    .locals 1
    .parameter
    .parameter "text"
    .parameter "callback"

    .prologue
    .line 176
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/gallery3d/ui/SimpleTabWidget$Tab;-><init>(Lcom/android/gallery3d/ui/SimpleTabWidget;Ljava/lang/CharSequence;Lcom/android/gallery3d/ui/SimpleTabWidget$TabListener;Ljava/lang/Object;)V

    .line 177
    return-void
.end method

.method public constructor <init>(Lcom/android/gallery3d/ui/SimpleTabWidget;Ljava/lang/CharSequence;Lcom/android/gallery3d/ui/SimpleTabWidget$TabListener;Ljava/lang/Object;)V
    .locals 1
    .parameter
    .parameter "text"
    .parameter "callback"
    .parameter "tag"

    .prologue
    .line 183
    iput-object p1, p0, Lcom/android/gallery3d/ui/SimpleTabWidget$Tab;->this$0:Lcom/android/gallery3d/ui/SimpleTabWidget;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 163
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/gallery3d/ui/SimpleTabWidget$Tab;->mPosition:I

    .line 184
    iput-object p2, p0, Lcom/android/gallery3d/ui/SimpleTabWidget$Tab;->mText:Ljava/lang/CharSequence;

    .line 185
    iput-object p3, p0, Lcom/android/gallery3d/ui/SimpleTabWidget$Tab;->mCallback:Lcom/android/gallery3d/ui/SimpleTabWidget$TabListener;

    .line 186
    iput-object p4, p0, Lcom/android/gallery3d/ui/SimpleTabWidget$Tab;->mTag:Ljava/lang/Object;

    .line 187
    return-void
.end method

.method public constructor <init>(Lcom/android/gallery3d/ui/SimpleTabWidget;Ljava/lang/CharSequence;Ljava/lang/Object;)V
    .locals 1
    .parameter
    .parameter "text"
    .parameter "tag"

    .prologue
    .line 180
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0, p3}, Lcom/android/gallery3d/ui/SimpleTabWidget$Tab;-><init>(Lcom/android/gallery3d/ui/SimpleTabWidget;Ljava/lang/CharSequence;Lcom/android/gallery3d/ui/SimpleTabWidget$TabListener;Ljava/lang/Object;)V

    .line 181
    return-void
.end method


# virtual methods
.method public getCallback()Lcom/android/gallery3d/ui/SimpleTabWidget$TabListener;
    .locals 1

    .prologue
    .line 190
    iget-object v0, p0, Lcom/android/gallery3d/ui/SimpleTabWidget$Tab;->mCallback:Lcom/android/gallery3d/ui/SimpleTabWidget$TabListener;

    return-object v0
.end method

.method public getPosition()I
    .locals 1

    .prologue
    .line 194
    iget v0, p0, Lcom/android/gallery3d/ui/SimpleTabWidget$Tab;->mPosition:I

    return v0
.end method

.method public getTag()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 232
    iget-object v0, p0, Lcom/android/gallery3d/ui/SimpleTabWidget$Tab;->mTag:Ljava/lang/Object;

    return-object v0
.end method

.method public getText()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 198
    iget-object v0, p0, Lcom/android/gallery3d/ui/SimpleTabWidget$Tab;->mText:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public select()V
    .locals 1

    .prologue
    .line 202
    iget-object v0, p0, Lcom/android/gallery3d/ui/SimpleTabWidget$Tab;->this$0:Lcom/android/gallery3d/ui/SimpleTabWidget;

    invoke-virtual {v0, p0}, Lcom/android/gallery3d/ui/SimpleTabWidget;->selectTab(Lcom/android/gallery3d/ui/SimpleTabWidget$Tab;)V

    .line 203
    return-void
.end method

.method public setPosition(I)V
    .locals 0
    .parameter "position"

    .prologue
    .line 206
    iput p1, p0, Lcom/android/gallery3d/ui/SimpleTabWidget$Tab;->mPosition:I

    .line 207
    return-void
.end method

.method public setTabListener(Lcom/android/gallery3d/ui/SimpleTabWidget$TabListener;)Lcom/android/gallery3d/ui/SimpleTabWidget$Tab;
    .locals 0
    .parameter "callback"

    .prologue
    .line 210
    iput-object p1, p0, Lcom/android/gallery3d/ui/SimpleTabWidget$Tab;->mCallback:Lcom/android/gallery3d/ui/SimpleTabWidget$TabListener;

    .line 211
    return-object p0
.end method

.method public setTag(Ljava/lang/Object;)Lcom/android/gallery3d/ui/SimpleTabWidget$Tab;
    .locals 0
    .parameter "obj"

    .prologue
    .line 227
    iput-object p1, p0, Lcom/android/gallery3d/ui/SimpleTabWidget$Tab;->mTag:Ljava/lang/Object;

    .line 228
    return-object p0
.end method

.method public setText(I)Lcom/android/gallery3d/ui/SimpleTabWidget$Tab;
    .locals 1
    .parameter "resId"

    .prologue
    .line 215
    iget-object v0, p0, Lcom/android/gallery3d/ui/SimpleTabWidget$Tab;->this$0:Lcom/android/gallery3d/ui/SimpleTabWidget;

    invoke-virtual {v0}, Lcom/android/gallery3d/ui/SimpleTabWidget;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/gallery3d/ui/SimpleTabWidget$Tab;->setText(Ljava/lang/CharSequence;)Lcom/android/gallery3d/ui/SimpleTabWidget$Tab;

    move-result-object v0

    return-object v0
.end method

.method public setText(Ljava/lang/CharSequence;)Lcom/android/gallery3d/ui/SimpleTabWidget$Tab;
    .locals 2
    .parameter "text"

    .prologue
    .line 219
    iput-object p1, p0, Lcom/android/gallery3d/ui/SimpleTabWidget$Tab;->mText:Ljava/lang/CharSequence;

    .line 220
    iget v0, p0, Lcom/android/gallery3d/ui/SimpleTabWidget$Tab;->mPosition:I

    if-ltz v0, :cond_0

    .line 221
    iget-object v0, p0, Lcom/android/gallery3d/ui/SimpleTabWidget$Tab;->this$0:Lcom/android/gallery3d/ui/SimpleTabWidget;

    iget v1, p0, Lcom/android/gallery3d/ui/SimpleTabWidget$Tab;->mPosition:I

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/ui/SimpleTabWidget;->updateTab(I)V

    .line 223
    :cond_0
    return-object p0
.end method
