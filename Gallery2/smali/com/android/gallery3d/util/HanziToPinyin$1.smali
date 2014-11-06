.class Lcom/android/gallery3d/util/HanziToPinyin$1;
.super Ljava/util/HashMap;
.source "HanziToPinyin.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/gallery3d/util/HanziToPinyin;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/HashMap",
        "<",
        "Ljava/lang/String;",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/gallery3d/util/HanziToPinyin;


# direct methods
.method constructor <init>(Lcom/android/gallery3d/util/HanziToPinyin;)V
    .locals 2
    .parameter

    .prologue
    .line 442
    iput-object p1, p0, Lcom/android/gallery3d/util/HanziToPinyin$1;->this$0:Lcom/android/gallery3d/util/HanziToPinyin;

    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    .line 444
    const-string v0, "\u6c88"

    const-string v1, "SHEN"

    invoke-virtual {p0, v0, v1}, Lcom/android/gallery3d/util/HanziToPinyin$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 445
    const-string v0, "\u66fe"

    const-string v1, "ZENG"

    invoke-virtual {p0, v0, v1}, Lcom/android/gallery3d/util/HanziToPinyin$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 446
    const-string v0, "\u8d3e"

    const-string v1, "JIA"

    invoke-virtual {p0, v0, v1}, Lcom/android/gallery3d/util/HanziToPinyin$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 447
    const-string v0, "\u4fde"

    const-string v1, "YU"

    invoke-virtual {p0, v0, v1}, Lcom/android/gallery3d/util/HanziToPinyin$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 448
    const-string v0, "\u513f"

    const-string v1, "ER"

    invoke-virtual {p0, v0, v1}, Lcom/android/gallery3d/util/HanziToPinyin$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 449
    const-string v0, "\u5475"

    const-string v1, "HE"

    invoke-virtual {p0, v0, v1}, Lcom/android/gallery3d/util/HanziToPinyin$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 450
    const-string v0, "\u957f"

    const-string v1, "CHANG"

    invoke-virtual {p0, v0, v1}, Lcom/android/gallery3d/util/HanziToPinyin$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 451
    const-string v0, "\u7565"

    const-string v1, "LUE"

    invoke-virtual {p0, v0, v1}, Lcom/android/gallery3d/util/HanziToPinyin$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 452
    const-string v0, "\u63a0"

    const-string v1, "LUE"

    invoke-virtual {p0, v0, v1}, Lcom/android/gallery3d/util/HanziToPinyin$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 453
    return-void
.end method
