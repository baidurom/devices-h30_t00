.class Lcom/android/gallery3d/ui/DetailsAddressResolver$1;
.super Ljava/lang/Object;
.source "DetailsAddressResolver.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/gallery3d/ui/DetailsAddressResolver;->resolveAddressDone(Lcom/android/gallery3d/ui/DetailsAddressResolver$GalleryAddress;Landroid/location/Address;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/gallery3d/ui/DetailsAddressResolver;

.field final synthetic val$address:Lcom/android/gallery3d/ui/DetailsAddressResolver$GalleryAddress;

.field final synthetic val$resolvedAddress:Landroid/location/Address;


# direct methods
.method constructor <init>(Lcom/android/gallery3d/ui/DetailsAddressResolver;Landroid/location/Address;Lcom/android/gallery3d/ui/DetailsAddressResolver$GalleryAddress;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 197
    iput-object p1, p0, Lcom/android/gallery3d/ui/DetailsAddressResolver$1;->this$0:Lcom/android/gallery3d/ui/DetailsAddressResolver;

    iput-object p2, p0, Lcom/android/gallery3d/ui/DetailsAddressResolver$1;->val$resolvedAddress:Landroid/location/Address;

    iput-object p3, p0, Lcom/android/gallery3d/ui/DetailsAddressResolver$1;->val$address:Lcom/android/gallery3d/ui/DetailsAddressResolver$GalleryAddress;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 200
    iget-object v0, p0, Lcom/android/gallery3d/ui/DetailsAddressResolver$1;->this$0:Lcom/android/gallery3d/ui/DetailsAddressResolver;

    iget-object v1, p0, Lcom/android/gallery3d/ui/DetailsAddressResolver$1;->val$resolvedAddress:Landroid/location/Address;

    iget-object v2, p0, Lcom/android/gallery3d/ui/DetailsAddressResolver$1;->val$address:Lcom/android/gallery3d/ui/DetailsAddressResolver$GalleryAddress;

    const/4 v3, 0x0

    #calls: Lcom/android/gallery3d/ui/DetailsAddressResolver;->updateLocation(Landroid/location/Address;Lcom/android/gallery3d/ui/DetailsAddressResolver$GalleryAddress;Z)V
    invoke-static {v0, v1, v2, v3}, Lcom/android/gallery3d/ui/DetailsAddressResolver;->access$300(Lcom/android/gallery3d/ui/DetailsAddressResolver;Landroid/location/Address;Lcom/android/gallery3d/ui/DetailsAddressResolver$GalleryAddress;Z)V

    .line 201
    return-void
.end method
