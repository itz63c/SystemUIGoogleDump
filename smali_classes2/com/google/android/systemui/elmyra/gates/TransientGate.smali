.class abstract Lcom/google/android/systemui/elmyra/gates/TransientGate;
.super Lcom/google/android/systemui/elmyra/gates/Gate;
.source "TransientGate.java"


# instance fields
.field private final mBlockDuration:J

.field private mIsBlocking:Z

.field private final mResetGate:Ljava/lang/Runnable;

.field private final mResetGateHandler:Landroid/os/Handler;


# direct methods
.method constructor <init>(Landroid/content/Context;J)V
    .locals 1

    .line 22
    invoke-direct {p0, p1}, Lcom/google/android/systemui/elmyra/gates/Gate;-><init>(Landroid/content/Context;)V

    .line 11
    new-instance v0, Lcom/google/android/systemui/elmyra/gates/TransientGate$1;

    invoke-direct {v0, p0}, Lcom/google/android/systemui/elmyra/gates/TransientGate$1;-><init>(Lcom/google/android/systemui/elmyra/gates/TransientGate;)V

    iput-object v0, p0, Lcom/google/android/systemui/elmyra/gates/TransientGate;->mResetGate:Ljava/lang/Runnable;

    .line 23
    iput-wide p2, p0, Lcom/google/android/systemui/elmyra/gates/TransientGate;->mBlockDuration:J

    .line 24
    new-instance p2, Landroid/os/Handler;

    invoke-virtual {p1}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object p1

    invoke-direct {p2, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p2, p0, Lcom/google/android/systemui/elmyra/gates/TransientGate;->mResetGateHandler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$002(Lcom/google/android/systemui/elmyra/gates/TransientGate;Z)Z
    .locals 0

    .line 7
    iput-boolean p1, p0, Lcom/google/android/systemui/elmyra/gates/TransientGate;->mIsBlocking:Z

    return p1
.end method


# virtual methods
.method protected block()V
    .locals 4

    const/4 v0, 0x1

    .line 29
    iput-boolean v0, p0, Lcom/google/android/systemui/elmyra/gates/TransientGate;->mIsBlocking:Z

    .line 30
    invoke-virtual {p0}, Lcom/google/android/systemui/elmyra/gates/Gate;->notifyListener()V

    .line 31
    iget-object v0, p0, Lcom/google/android/systemui/elmyra/gates/TransientGate;->mResetGateHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/google/android/systemui/elmyra/gates/TransientGate;->mResetGate:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 32
    iget-object v0, p0, Lcom/google/android/systemui/elmyra/gates/TransientGate;->mResetGateHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/google/android/systemui/elmyra/gates/TransientGate;->mResetGate:Ljava/lang/Runnable;

    iget-wide v2, p0, Lcom/google/android/systemui/elmyra/gates/TransientGate;->mBlockDuration:J

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method protected isBlocked()Z
    .locals 0

    .line 37
    iget-boolean p0, p0, Lcom/google/android/systemui/elmyra/gates/TransientGate;->mIsBlocking:Z

    return p0
.end method
