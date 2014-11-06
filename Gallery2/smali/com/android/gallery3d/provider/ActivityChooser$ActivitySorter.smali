.class public interface abstract Lcom/android/gallery3d/provider/ActivityChooser$ActivitySorter;
.super Ljava/lang/Object;
.source "ActivityChooser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/gallery3d/provider/ActivityChooser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "ActivitySorter"
.end annotation


# virtual methods
.method public abstract sort(Landroid/content/Intent;Ljava/util/List;Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Intent;",
            "Ljava/util/List",
            "<",
            "Lcom/android/gallery3d/provider/ActivityChooser$ActivityResolveInfo;",
            ">;",
            "Ljava/util/List",
            "<",
            "Lcom/android/gallery3d/provider/ActivityChooser$HistoricalRecord;",
            ">;)V"
        }
    .end annotation
.end method
