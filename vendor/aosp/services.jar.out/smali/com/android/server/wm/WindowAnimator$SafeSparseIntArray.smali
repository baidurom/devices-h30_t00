.class Lcom/android/server/wm/WindowAnimator$SafeSparseIntArray;
.super Landroid/util/SparseIntArray;
.source "WindowAnimator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wm/WindowAnimator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "SafeSparseIntArray"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 55
    invoke-direct {p0}, Landroid/util/SparseIntArray;-><init>()V

    .line 56
    return-void
.end method


# virtual methods
.method public clear()V
    .locals 1

    .prologue
    .line 95
    monitor-enter p0

    .line 96
    :try_start_0
    invoke-super {p0}, Landroid/util/SparseIntArray;->clear()V

    .line 97
    monitor-exit p0

    .line 98
    return-void

    .line 97
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public bridge synthetic clone()Landroid/util/SparseIntArray;
    .locals 1

    .prologue
    .line 54
    invoke-virtual {p0}, Lcom/android/server/wm/WindowAnimator$SafeSparseIntArray;->clone()Lcom/android/server/wm/WindowAnimator$SafeSparseIntArray;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/android/server/wm/WindowAnimator$SafeSparseIntArray;
    .locals 1

    .prologue
    .line 59
    monitor-enter p0

    .line 60
    :try_start_0
    invoke-super {p0}, Landroid/util/SparseIntArray;->clone()Landroid/util/SparseIntArray;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/WindowAnimator$SafeSparseIntArray;

    monitor-exit p0

    return-object v0

    .line 61
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .prologue
    .line 54
    invoke-virtual {p0}, Lcom/android/server/wm/WindowAnimator$SafeSparseIntArray;->clone()Lcom/android/server/wm/WindowAnimator$SafeSparseIntArray;

    move-result-object v0

    return-object v0
.end method

.method public get(I)I
    .locals 1
    .parameter "key"

    .prologue
    .line 65
    monitor-enter p0

    .line 66
    :try_start_0
    invoke-super {p0, p1}, Landroid/util/SparseIntArray;->get(I)I

    move-result v0

    monitor-exit p0

    return v0

    .line 67
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public keyAt(I)I
    .locals 1
    .parameter "index"

    .prologue
    .line 83
    monitor-enter p0

    .line 84
    :try_start_0
    invoke-super {p0, p1}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v0

    monitor-exit p0

    return v0

    .line 85
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public put(II)V
    .locals 1
    .parameter "key"
    .parameter "value"

    .prologue
    .line 71
    monitor-enter p0

    .line 72
    :try_start_0
    invoke-super {p0, p1, p2}, Landroid/util/SparseIntArray;->put(II)V

    .line 73
    monitor-exit p0

    .line 74
    return-void

    .line 73
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public size()I
    .locals 1

    .prologue
    .line 77
    monitor-enter p0

    .line 78
    :try_start_0
    invoke-super {p0}, Landroid/util/SparseIntArray;->size()I

    move-result v0

    monitor-exit p0

    return v0

    .line 79
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public valueAt(I)I
    .locals 1
    .parameter "index"

    .prologue
    .line 89
    monitor-enter p0

    .line 90
    :try_start_0
    invoke-super {p0, p1}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result v0

    monitor-exit p0

    return v0

    .line 91
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
