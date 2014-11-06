.class public Landroid/app/NvramGetSet;
.super Ljava/lang/Object;
.source "NvramGetSet.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "NvramGetSet"


# instance fields
.field mAgent:Landroid/app/NvRAMAgent;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 16
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 17
    const-string v1, "NvRAMAgent"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 18
    .local v0, binder:Landroid/os/IBinder;
    if-eqz v0, :cond_0

    .line 19
    invoke-static {v0}, Landroid/app/NvRAMAgent$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/NvRAMAgent;

    move-result-object v1

    iput-object v1, p0, Landroid/app/NvramGetSet;->mAgent:Landroid/app/NvRAMAgent;

    .line 21
    :cond_0
    return-void
.end method


# virtual methods
.method public readNV([BIII)Z
    .locals 8
    .parameter "subBuff"
    .parameter "fileID"
    .parameter "itemId"
    .parameter "itemSize"

    .prologue
    const/4 v6, 0x0

    .line 68
    move v2, p2

    .line 69
    .local v2, file_lid:I
    const/4 v0, 0x0

    .line 72
    .local v0, buff:[B
    :try_start_0
    iget-object v7, p0, Landroid/app/NvramGetSet;->mAgent:Landroid/app/NvRAMAgent;

    invoke-interface {v7, v2}, Landroid/app/NvRAMAgent;->readFile(I)[B

    move-result-object v0

    .line 73
    const/4 v3, 0x0

    .local v3, i:I
    const/4 v4, 0x0

    .line 74
    .local v4, j:I
    add-int/lit8 v7, p3, -0x1

    mul-int v3, v7, p4

    move v5, v4

    .end local v4           #j:I
    .local v5, j:I
    :goto_0
    mul-int v7, p3, p4

    add-int/lit8 v7, v7, -0x1

    if-gt v3, v7, :cond_0

    .line 76
    add-int/lit8 v4, v5, 0x1

    .end local v5           #j:I
    .restart local v4       #j:I
    aget-byte v7, v0, v3

    aput-byte v7, p1, v5
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 74
    add-int/lit8 v3, v3, 0x1

    move v5, v4

    .end local v4           #j:I
    .restart local v5       #j:I
    goto :goto_0

    .line 79
    .end local v3           #i:I
    .end local v5           #j:I
    :catch_0
    move-exception v1

    .line 81
    .local v1, e:Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    .line 88
    .end local v1           #e:Landroid/os/RemoteException;
    :goto_1
    return v6

    .line 83
    :catch_1
    move-exception v1

    .line 85
    .local v1, e:Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    .line 88
    .end local v1           #e:Ljava/lang/Exception;
    .restart local v3       #i:I
    .restart local v5       #j:I
    :cond_0
    const/4 v6, 0x1

    goto :goto_1
.end method

.method public writeNV([BIII)I
    .locals 8
    .parameter "subBuff"
    .parameter "fileID"
    .parameter "itemId"
    .parameter "itemSize"

    .prologue
    .line 30
    const/4 v0, -0x1

    .line 31
    .local v0, _result:I
    const/4 v3, 0x0

    .local v3, i:I
    const/4 v4, 0x0

    .line 33
    .local v4, j:I
    const/4 v6, 0x0

    .line 34
    .local v6, wholBuff:[B
    move v2, p2

    .line 36
    .local v2, file_lid:I
    :try_start_0
    iget-object v7, p0, Landroid/app/NvramGetSet;->mAgent:Landroid/app/NvRAMAgent;

    invoke-interface {v7, v2}, Landroid/app/NvRAMAgent;->readFile(I)[B
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v6

    .line 43
    :goto_0
    if-eqz v6, :cond_1

    if-eqz p1, :cond_1

    .line 44
    add-int/lit8 v7, p3, -0x1

    mul-int v3, v7, p4

    move v5, v4

    .end local v4           #j:I
    .local v5, j:I
    :goto_1
    mul-int v7, p3, p4

    add-int/lit8 v7, v7, -0x1

    if-gt v3, v7, :cond_0

    .line 45
    add-int/lit8 v4, v5, 0x1

    .end local v5           #j:I
    .restart local v4       #j:I
    aget-byte v7, p1, v5

    aput-byte v7, v6, v3

    .line 44
    add-int/lit8 v3, v3, 0x1

    move v5, v4

    .end local v4           #j:I
    .restart local v5       #j:I
    goto :goto_1

    .line 38
    .end local v5           #j:I
    .restart local v4       #j:I
    :catch_0
    move-exception v1

    .line 40
    .local v1, e:Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0

    .line 49
    .end local v1           #e:Landroid/os/RemoteException;
    .end local v4           #j:I
    .restart local v5       #j:I
    :cond_0
    :try_start_1
    iget-object v7, p0, Landroid/app/NvramGetSet;->mAgent:Landroid/app/NvRAMAgent;

    invoke-interface {v7, v2, v6}, Landroid/app/NvRAMAgent;->writeFile(I[B)I
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    move-result v0

    move v4, v5

    .line 57
    .end local v5           #j:I
    .restart local v4       #j:I
    :cond_1
    :goto_2
    return v0

    .line 50
    .end local v4           #j:I
    .restart local v5       #j:I
    :catch_1
    move-exception v1

    .line 52
    .restart local v1       #e:Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    move v4, v5

    .end local v5           #j:I
    .restart local v4       #j:I
    goto :goto_2
.end method
