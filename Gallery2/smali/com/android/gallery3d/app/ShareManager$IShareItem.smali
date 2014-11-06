.class public interface abstract Lcom/android/gallery3d/app/ShareManager$IShareItem;
.super Ljava/lang/Object;
.source "ShareManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/gallery3d/app/ShareManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "IShareItem"
.end annotation


# virtual methods
.method public abstract getIcon()Landroid/graphics/drawable/Drawable;
.end method

.method public abstract getLabel()Ljava/lang/String;
.end method

.method public abstract onClicked()V
.end method
