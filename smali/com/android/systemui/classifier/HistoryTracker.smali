.class public Lcom/android/systemui/classifier/HistoryTracker;
.super Ljava/lang/Object;
.source "HistoryTracker.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/classifier/HistoryTracker$CombinedResult;
    }
.end annotation


# static fields
.field private static final TOTAL_DECAY_TIME_MS:J


# instance fields
.field mResults:Ljava/util/concurrent/DelayQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/DelayQueue<",
            "Lcom/android/systemui/classifier/HistoryTracker$CombinedResult;",
            ">;"
        }
    .end annotation
.end field

.field private final mSystemClock:Lcom/android/systemui/util/time/SystemClock;


# direct methods
.method public static synthetic $r8$lambda$WwtY3zwbhol7VVyX6RjxB3V8VW4(JLcom/android/systemui/classifier/HistoryTracker$CombinedResult;)Ljava/lang/Double;
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/android/systemui/classifier/HistoryTracker;->lambda$falsePenalty$0(JLcom/android/systemui/classifier/HistoryTracker$CombinedResult;)Ljava/lang/Double;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$awdJzzZ5zNbQnh4Yvq3ivKGfTnM(DLcom/android/systemui/classifier/HistoryTracker$CombinedResult;)Ljava/lang/Double;
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/android/systemui/classifier/HistoryTracker;->lambda$falseConfidence$1(DLcom/android/systemui/classifier/HistoryTracker$CombinedResult;)Ljava/lang/Double;

    move-result-object p0

    return-object p0
.end method

.method static constructor <clinit>()V
    .locals 4

    const-wide v0, 0x3f50624dd2f1a9fcL    # 0.001

    .line 44
    invoke-static {v0, v1}, Ljava/lang/Math;->log(D)D

    move-result-wide v0

    const-wide v2, 0x3fe99999a0000000L    # 0.800000011920929

    invoke-static {v2, v3}, Ljava/lang/Math;->log(D)D

    move-result-wide v2

    div-double/2addr v0, v2

    double-to-long v0, v0

    const-wide/16 v2, 0x64

    mul-long/2addr v0, v2

    sput-wide v0, Lcom/android/systemui/classifier/HistoryTracker;->TOTAL_DECAY_TIME_MS:J

    return-void
.end method

.method constructor <init>(Lcom/android/systemui/util/time/SystemClock;)V
    .locals 1

    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    new-instance v0, Ljava/util/concurrent/DelayQueue;

    invoke-direct {v0}, Ljava/util/concurrent/DelayQueue;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/classifier/HistoryTracker;->mResults:Ljava/util/concurrent/DelayQueue;

    .line 51
    iput-object p1, p0, Lcom/android/systemui/classifier/HistoryTracker;->mSystemClock:Lcom/android/systemui/util/time/SystemClock;

    return-void
.end method

.method static synthetic access$000()J
    .locals 2

    .line 38
    sget-wide v0, Lcom/android/systemui/classifier/HistoryTracker;->TOTAL_DECAY_TIME_MS:J

    return-wide v0
.end method

.method static synthetic access$100(Lcom/android/systemui/classifier/HistoryTracker;)Lcom/android/systemui/util/time/SystemClock;
    .locals 0

    .line 38
    iget-object p0, p0, Lcom/android/systemui/classifier/HistoryTracker;->mSystemClock:Lcom/android/systemui/util/time/SystemClock;

    return-object p0
.end method

.method private static synthetic lambda$falseConfidence$1(DLcom/android/systemui/classifier/HistoryTracker$CombinedResult;)Ljava/lang/Double;
    .locals 2

    .line 113
    invoke-virtual {p2}, Lcom/android/systemui/classifier/HistoryTracker$CombinedResult;->getScore()D

    move-result-wide v0

    sub-double/2addr v0, p0

    const-wide/high16 p0, 0x4000000000000000L    # 2.0

    invoke-static {v0, v1, p0, p1}, Ljava/lang/Math;->pow(DD)D

    move-result-wide p0

    invoke-static {p0, p1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p0

    return-object p0
.end method

.method private static synthetic lambda$falsePenalty$0(JLcom/android/systemui/classifier/HistoryTracker$CombinedResult;)Ljava/lang/Double;
    .locals 0

    .line 78
    invoke-virtual {p2, p0, p1}, Lcom/android/systemui/classifier/HistoryTracker$CombinedResult;->getDecayedScore(J)D

    move-result-wide p0

    invoke-static {p0, p1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method addResults(Ljava/util/Collection;J)V
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Lcom/android/systemui/classifier/FalsingClassifier$Result;",
            ">;J)V"
        }
    .end annotation

    .line 121
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const-wide/16 v1, 0x0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/classifier/FalsingClassifier$Result;

    .line 124
    invoke-virtual {v3}, Lcom/android/systemui/classifier/FalsingClassifier$Result;->isFalse()Z

    move-result v4

    const-wide/high16 v5, 0x3fe0000000000000L    # 0.5

    if-eqz v4, :cond_0

    move-wide v7, v5

    goto :goto_1

    :cond_0
    const-wide/high16 v7, -0x4020000000000000L    # -0.5

    :goto_1
    invoke-virtual {v3}, Lcom/android/systemui/classifier/FalsingClassifier$Result;->getConfidence()D

    move-result-wide v3

    mul-double/2addr v7, v3

    add-double/2addr v7, v5

    add-double/2addr v1, v7

    goto :goto_0

    .line 127
    :cond_1
    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result p1

    int-to-double v3, p1

    div-double v9, v1, v3

    .line 130
    :goto_2
    iget-object p1, p0, Lcom/android/systemui/classifier/HistoryTracker;->mResults:Ljava/util/concurrent/DelayQueue;

    invoke-virtual {p1}, Ljava/util/concurrent/DelayQueue;->poll()Ljava/util/concurrent/Delayed;

    move-result-object p1

    if-eqz p1, :cond_2

    goto :goto_2

    .line 134
    :cond_2
    iget-object p1, p0, Lcom/android/systemui/classifier/HistoryTracker;->mResults:Ljava/util/concurrent/DelayQueue;

    new-instance v0, Lcom/android/systemui/classifier/HistoryTracker$CombinedResult;

    move-object v5, v0

    move-object v6, p0

    move-wide v7, p2

    invoke-direct/range {v5 .. v10}, Lcom/android/systemui/classifier/HistoryTracker$CombinedResult;-><init>(Lcom/android/systemui/classifier/HistoryTracker;JD)V

    invoke-virtual {p1, v0}, Ljava/util/concurrent/DelayQueue;->add(Ljava/util/concurrent/Delayed;)Z

    return-void
.end method

.method falseConfidence()D
    .locals 7

    .line 98
    :goto_0
    iget-object v0, p0, Lcom/android/systemui/classifier/HistoryTracker;->mResults:Ljava/util/concurrent/DelayQueue;

    invoke-virtual {v0}, Ljava/util/concurrent/DelayQueue;->poll()Ljava/util/concurrent/Delayed;

    move-result-object v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 103
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/classifier/HistoryTracker;->mResults:Ljava/util/concurrent/DelayQueue;

    invoke-virtual {v0}, Ljava/util/concurrent/DelayQueue;->isEmpty()Z

    move-result v0

    const-wide/16 v1, 0x0

    if-eqz v0, :cond_1

    return-wide v1

    .line 107
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/classifier/HistoryTracker;->mResults:Ljava/util/concurrent/DelayQueue;

    invoke-virtual {v0}, Ljava/util/concurrent/DelayQueue;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    sget-object v3, Lcom/android/systemui/classifier/HistoryTracker-$$ExternalSyntheticLambda3;->INSTANCE:Lcom/android/systemui/classifier/HistoryTracker-$$ExternalSyntheticLambda3;

    .line 108
    invoke-interface {v0, v3}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v0

    .line 109
    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    sget-object v4, Lcom/android/systemui/classifier/HistoryTracker-$$ExternalSyntheticLambda0;->INSTANCE:Lcom/android/systemui/classifier/HistoryTracker-$$ExternalSyntheticLambda0;

    invoke-interface {v0, v3, v4}, Ljava/util/stream/Stream;->reduce(Ljava/lang/Object;Ljava/util/function/BinaryOperator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Double;

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v3

    iget-object v0, p0, Lcom/android/systemui/classifier/HistoryTracker;->mResults:Ljava/util/concurrent/DelayQueue;

    invoke-virtual {v0}, Ljava/util/concurrent/DelayQueue;->size()I

    move-result v0

    int-to-double v5, v0

    div-double/2addr v3, v5

    .line 111
    iget-object v0, p0, Lcom/android/systemui/classifier/HistoryTracker;->mResults:Ljava/util/concurrent/DelayQueue;

    .line 112
    invoke-virtual {v0}, Ljava/util/concurrent/DelayQueue;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v5, Lcom/android/systemui/classifier/HistoryTracker-$$ExternalSyntheticLambda1;

    invoke-direct {v5, v3, v4}, Lcom/android/systemui/classifier/HistoryTracker-$$ExternalSyntheticLambda1;-><init>(D)V

    .line 113
    invoke-interface {v0, v5}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v0

    .line 114
    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    sget-object v2, Lcom/android/systemui/classifier/HistoryTracker-$$ExternalSyntheticLambda0;->INSTANCE:Lcom/android/systemui/classifier/HistoryTracker-$$ExternalSyntheticLambda0;

    invoke-interface {v0, v1, v2}, Ljava/util/stream/Stream;->reduce(Ljava/lang/Object;Ljava/util/function/BinaryOperator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Double;

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    iget-object p0, p0, Lcom/android/systemui/classifier/HistoryTracker;->mResults:Ljava/util/concurrent/DelayQueue;

    invoke-virtual {p0}, Ljava/util/concurrent/DelayQueue;->size()I

    move-result p0

    int-to-double v2, p0

    div-double/2addr v0, v2

    .line 111
    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    sub-double/2addr v2, v0

    return-wide v2
.end method

.method falsePenalty()D
    .locals 6

    .line 68
    :goto_0
    iget-object v0, p0, Lcom/android/systemui/classifier/HistoryTracker;->mResults:Ljava/util/concurrent/DelayQueue;

    invoke-virtual {v0}, Ljava/util/concurrent/DelayQueue;->poll()Ljava/util/concurrent/Delayed;

    move-result-object v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 72
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/classifier/HistoryTracker;->mResults:Ljava/util/concurrent/DelayQueue;

    invoke-virtual {v0}, Ljava/util/concurrent/DelayQueue;->isEmpty()Z

    move-result v0

    const-wide/16 v1, 0x0

    if-eqz v0, :cond_1

    return-wide v1

    .line 76
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/classifier/HistoryTracker;->mSystemClock:Lcom/android/systemui/util/time/SystemClock;

    invoke-interface {v0}, Lcom/android/systemui/util/time/SystemClock;->uptimeMillis()J

    move-result-wide v3

    .line 77
    iget-object v0, p0, Lcom/android/systemui/classifier/HistoryTracker;->mResults:Ljava/util/concurrent/DelayQueue;

    invoke-virtual {v0}, Ljava/util/concurrent/DelayQueue;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v5, Lcom/android/systemui/classifier/HistoryTracker-$$ExternalSyntheticLambda2;

    invoke-direct {v5, v3, v4}, Lcom/android/systemui/classifier/HistoryTracker-$$ExternalSyntheticLambda2;-><init>(J)V

    .line 78
    invoke-interface {v0, v5}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v0

    .line 79
    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    sget-object v2, Lcom/android/systemui/classifier/HistoryTracker-$$ExternalSyntheticLambda0;->INSTANCE:Lcom/android/systemui/classifier/HistoryTracker-$$ExternalSyntheticLambda0;

    invoke-interface {v0, v1, v2}, Ljava/util/stream/Stream;->reduce(Ljava/lang/Object;Ljava/util/function/BinaryOperator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Double;

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    iget-object p0, p0, Lcom/android/systemui/classifier/HistoryTracker;->mResults:Ljava/util/concurrent/DelayQueue;

    invoke-virtual {p0}, Ljava/util/concurrent/DelayQueue;->size()I

    move-result p0

    int-to-double v2, p0

    div-double/2addr v0, v2

    return-wide v0
.end method
