.class public Lcom/android/systemui/keyguard/WakefulnessLifecycle;
.super Lcom/android/systemui/keyguard/Lifecycle;
.source "WakefulnessLifecycle.java"

# interfaces
.implements Lcom/android/systemui/Dumpable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/keyguard/WakefulnessLifecycle$Observer;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/systemui/keyguard/Lifecycle<",
        "Lcom/android/systemui/keyguard/WakefulnessLifecycle$Observer;",
        ">;",
        "Lcom/android/systemui/Dumpable;"
    }
.end annotation


# instance fields
.field private mLastSleepReason:I

.field private mLastWakeReason:I

.field private mWakefulness:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 60
    invoke-direct {p0}, Lcom/android/systemui/keyguard/Lifecycle;-><init>()V

    const/4 v0, 0x0

    .line 54
    iput v0, p0, Lcom/android/systemui/keyguard/WakefulnessLifecycle;->mWakefulness:I

    .line 55
    iput v0, p0, Lcom/android/systemui/keyguard/WakefulnessLifecycle;->mLastWakeReason:I

    .line 56
    iput v0, p0, Lcom/android/systemui/keyguard/WakefulnessLifecycle;->mLastSleepReason:I

    return-void
.end method

.method private setWakefulness(I)V
    .locals 2

    .line 123
    iput p1, p0, Lcom/android/systemui/keyguard/WakefulnessLifecycle;->mWakefulness:I

    const-wide/16 v0, 0x1000

    const-string/jumbo p0, "wakefulness"

    .line 124
    invoke-static {v0, v1, p0, p1}, Landroid/os/Trace;->traceCounter(JLjava/lang/String;I)V

    return-void
.end method


# virtual methods
.method public dispatchFinishedGoingToSleep()V
    .locals 1

    .line 109
    invoke-virtual {p0}, Lcom/android/systemui/keyguard/WakefulnessLifecycle;->getWakefulness()I

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 112
    invoke-direct {p0, v0}, Lcom/android/systemui/keyguard/WakefulnessLifecycle;->setWakefulness(I)V

    .line 113
    sget-object v0, Lcom/android/systemui/keyguard/WakefulnessLifecycle-$$ExternalSyntheticLambda0;->INSTANCE:Lcom/android/systemui/keyguard/WakefulnessLifecycle-$$ExternalSyntheticLambda0;

    invoke-virtual {p0, v0}, Lcom/android/systemui/keyguard/Lifecycle;->dispatch(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public dispatchFinishedWakingUp()V
    .locals 2

    .line 92
    invoke-virtual {p0}, Lcom/android/systemui/keyguard/WakefulnessLifecycle;->getWakefulness()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    return-void

    .line 95
    :cond_0
    invoke-direct {p0, v1}, Lcom/android/systemui/keyguard/WakefulnessLifecycle;->setWakefulness(I)V

    .line 96
    sget-object v0, Lcom/android/systemui/keyguard/WakefulnessLifecycle-$$ExternalSyntheticLambda1;->INSTANCE:Lcom/android/systemui/keyguard/WakefulnessLifecycle-$$ExternalSyntheticLambda1;

    invoke-virtual {p0, v0}, Lcom/android/systemui/keyguard/Lifecycle;->dispatch(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public dispatchStartedGoingToSleep(I)V
    .locals 2

    .line 100
    invoke-virtual {p0}, Lcom/android/systemui/keyguard/WakefulnessLifecycle;->getWakefulness()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    return-void

    .line 103
    :cond_0
    invoke-direct {p0, v1}, Lcom/android/systemui/keyguard/WakefulnessLifecycle;->setWakefulness(I)V

    .line 104
    iput p1, p0, Lcom/android/systemui/keyguard/WakefulnessLifecycle;->mLastSleepReason:I

    .line 105
    sget-object p1, Lcom/android/systemui/keyguard/WakefulnessLifecycle-$$ExternalSyntheticLambda2;->INSTANCE:Lcom/android/systemui/keyguard/WakefulnessLifecycle-$$ExternalSyntheticLambda2;

    invoke-virtual {p0, p1}, Lcom/android/systemui/keyguard/Lifecycle;->dispatch(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public dispatchStartedWakingUp(I)V
    .locals 2

    .line 83
    invoke-virtual {p0}, Lcom/android/systemui/keyguard/WakefulnessLifecycle;->getWakefulness()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    return-void

    .line 86
    :cond_0
    invoke-direct {p0, v1}, Lcom/android/systemui/keyguard/WakefulnessLifecycle;->setWakefulness(I)V

    .line 87
    iput p1, p0, Lcom/android/systemui/keyguard/WakefulnessLifecycle;->mLastWakeReason:I

    .line 88
    sget-object p1, Lcom/android/systemui/keyguard/WakefulnessLifecycle-$$ExternalSyntheticLambda3;->INSTANCE:Lcom/android/systemui/keyguard/WakefulnessLifecycle-$$ExternalSyntheticLambda3;

    invoke-virtual {p0, p1}, Lcom/android/systemui/keyguard/Lifecycle;->dispatch(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 0

    const-string p1, "WakefulnessLifecycle:"

    .line 118
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 119
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "  mWakefulness="

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/android/systemui/keyguard/WakefulnessLifecycle;->mWakefulness:I

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void
.end method

.method public getLastSleepReason()I
    .locals 0

    .line 79
    iget p0, p0, Lcom/android/systemui/keyguard/WakefulnessLifecycle;->mLastSleepReason:I

    return p0
.end method

.method public getLastWakeReason()I
    .locals 0

    .line 71
    iget p0, p0, Lcom/android/systemui/keyguard/WakefulnessLifecycle;->mLastWakeReason:I

    return p0
.end method

.method public getWakefulness()I
    .locals 0

    .line 64
    iget p0, p0, Lcom/android/systemui/keyguard/WakefulnessLifecycle;->mWakefulness:I

    return p0
.end method
