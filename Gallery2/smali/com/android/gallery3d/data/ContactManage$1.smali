.class Lcom/android/gallery3d/data/ContactManage$1;
.super Landroid/os/Handler;
.source "ContactManage.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/gallery3d/data/ContactManage;-><init>(Landroid/content/ContentResolver;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/gallery3d/data/ContactManage;


# direct methods
.method constructor <init>(Lcom/android/gallery3d/data/ContactManage;Landroid/os/Looper;)V
    .locals 0
    .parameter
    .parameter "x0"

    .prologue
    .line 69
    iput-object p1, p0, Lcom/android/gallery3d/data/ContactManage$1;->this$0:Lcom/android/gallery3d/data/ContactManage;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 6
    .parameter "msg"

    .prologue
    const/4 v5, 0x1

    .line 72
    sget-boolean v0, Lcom/android/gallery3d/app/FaceRecognitionSettings;->FACE_RECOGNITION_ENABLED:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/gallery3d/data/ContactManage$1;->this$0:Lcom/android/gallery3d/data/ContactManage;

    #getter for: Lcom/android/gallery3d/data/ContactManage;->hasRegister:Z
    invoke-static {v0}, Lcom/android/gallery3d/data/ContactManage;->access$000(Lcom/android/gallery3d/data/ContactManage;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 73
    iget-object v0, p0, Lcom/android/gallery3d/data/ContactManage$1;->this$0:Lcom/android/gallery3d/data/ContactManage;

    #setter for: Lcom/android/gallery3d/data/ContactManage;->hasRegister:Z
    invoke-static {v0, v5}, Lcom/android/gallery3d/data/ContactManage;->access$002(Lcom/android/gallery3d/data/ContactManage;Z)Z

    .line 74
    iget-object v0, p0, Lcom/android/gallery3d/data/ContactManage$1;->this$0:Lcom/android/gallery3d/data/ContactManage;

    invoke-virtual {v0}, Lcom/android/gallery3d/data/ContactManage;->syncContactData()V

    .line 75
    iget-object v0, p0, Lcom/android/gallery3d/data/ContactManage$1;->this$0:Lcom/android/gallery3d/data/ContactManage;

    #getter for: Lcom/android/gallery3d/data/ContactManage;->mContentResolver:Landroid/content/ContentResolver;
    invoke-static {v0}, Lcom/android/gallery3d/data/ContactManage;->access$200(Lcom/android/gallery3d/data/ContactManage;)Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/ContactsContract$RawContactsEntity;->CONTENT_URI:Landroid/net/Uri;

    new-instance v2, Lcom/android/gallery3d/data/ContactManage$ContactContentObserver;

    iget-object v3, p0, Lcom/android/gallery3d/data/ContactManage$1;->this$0:Lcom/android/gallery3d/data/ContactManage;

    iget-object v4, p0, Lcom/android/gallery3d/data/ContactManage$1;->this$0:Lcom/android/gallery3d/data/ContactManage;

    #getter for: Lcom/android/gallery3d/data/ContactManage;->mHandler:Landroid/os/Handler;
    invoke-static {v4}, Lcom/android/gallery3d/data/ContactManage;->access$100(Lcom/android/gallery3d/data/ContactManage;)Landroid/os/Handler;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lcom/android/gallery3d/data/ContactManage$ContactContentObserver;-><init>(Lcom/android/gallery3d/data/ContactManage;Landroid/os/Handler;)V

    invoke-virtual {v0, v1, v5, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 77
    :cond_0
    return-void
.end method
