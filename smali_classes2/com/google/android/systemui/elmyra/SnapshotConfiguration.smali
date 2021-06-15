.class public Lcom/google/android/systemui/elmyra/SnapshotConfiguration;
.super Ljava/lang/Object;
.source "SnapshotConfiguration.java"


# instance fields
.field private final mCompleteGestures:I

.field private final mIncompleteGestures:I

.field private final mSnapshotDelayAfterGesture:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/android/systemui/R$integer;->elmyra_snapshot_logger_gesture_size:I

    .line 31
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iput v0, p0, Lcom/google/android/systemui/elmyra/SnapshotConfiguration;->mCompleteGestures:I

    .line 32
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/android/systemui/R$integer;->elmyra_snapshot_logger_incomplete_gesture_size:I

    .line 33
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iput v0, p0, Lcom/google/android/systemui/elmyra/SnapshotConfiguration;->mIncompleteGestures:I

    .line 34
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Lcom/android/systemui/R$integer;->elmyra_snapshot_gesture_delay_ms:I

    .line 35
    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p1

    iput p1, p0, Lcom/google/android/systemui/elmyra/SnapshotConfiguration;->mSnapshotDelayAfterGesture:I

    return-void
.end method


# virtual methods
.method public getCompleteGestures()I
    .locals 0

    .line 40
    iget p0, p0, Lcom/google/android/systemui/elmyra/SnapshotConfiguration;->mCompleteGestures:I

    return p0
.end method

.method public getIncompleteGestures()I
    .locals 0

    .line 45
    iget p0, p0, Lcom/google/android/systemui/elmyra/SnapshotConfiguration;->mIncompleteGestures:I

    return p0
.end method

.method public getSnapshotDelayAfterGesture()I
    .locals 0

    .line 53
    iget p0, p0, Lcom/google/android/systemui/elmyra/SnapshotConfiguration;->mSnapshotDelayAfterGesture:I

    return p0
.end method
