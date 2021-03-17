.class public Lcom/android/systemui/classifier/DoubleTapClassifier;
.super Lcom/android/systemui/classifier/FalsingClassifier;
.source "DoubleTapClassifier.java"


# instance fields
.field private final mDoubleTapSlop:F

.field private final mDoubleTapTimeMs:J

.field private final mSingleTapClassifier:Lcom/android/systemui/classifier/SingleTapClassifier;


# direct methods
.method constructor <init>(Lcom/android/systemui/classifier/FalsingDataProvider;Lcom/android/systemui/classifier/SingleTapClassifier;FJ)V
    .locals 0

    .line 43
    invoke-direct {p0, p1}, Lcom/android/systemui/classifier/FalsingClassifier;-><init>(Lcom/android/systemui/classifier/FalsingDataProvider;)V

    .line 44
    iput-object p2, p0, Lcom/android/systemui/classifier/DoubleTapClassifier;->mSingleTapClassifier:Lcom/android/systemui/classifier/SingleTapClassifier;

    .line 45
    iput p3, p0, Lcom/android/systemui/classifier/DoubleTapClassifier;->mDoubleTapSlop:F

    .line 46
    iput-wide p4, p0, Lcom/android/systemui/classifier/DoubleTapClassifier;->mDoubleTapTimeMs:J

    return-void
.end method


# virtual methods
.method calculateFalsingResult(DD)Lcom/android/systemui/classifier/FalsingClassifier$Result;
    .locals 0

    .line 51
    invoke-virtual {p0}, Lcom/android/systemui/classifier/FalsingClassifier;->getRecentMotionEvents()Ljava/util/List;

    move-result-object p1

    .line 52
    invoke-virtual {p0}, Lcom/android/systemui/classifier/FalsingClassifier;->getHistoricalEvents()Ljava/util/Queue;

    move-result-object p2

    .line 53
    invoke-interface {p2}, Ljava/util/Queue;->peek()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/List;

    .line 55
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    if-nez p2, :cond_0

    const-wide/high16 p0, 0x3ff0000000000000L    # 1.0

    const-string p2, "Only one gesture recorded"

    .line 58
    invoke-static {p0, p1, p2}, Lcom/android/systemui/classifier/FalsingClassifier$Result;->falsed(DLjava/lang/String;)Lcom/android/systemui/classifier/FalsingClassifier$Result;

    move-result-object p0

    return-object p0

    .line 61
    :cond_0
    invoke-virtual {p0, p2, p1, p3}, Lcom/android/systemui/classifier/DoubleTapClassifier;->isDoubleTap(Ljava/util/List;Ljava/util/List;Ljava/lang/StringBuilder;)Z

    move-result p0

    const-wide/high16 p1, 0x3fe0000000000000L    # 0.5

    if-nez p0, :cond_1

    .line 62
    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p2, p0}, Lcom/android/systemui/classifier/FalsingClassifier$Result;->falsed(DLjava/lang/String;)Lcom/android/systemui/classifier/FalsingClassifier$Result;

    move-result-object p0

    goto :goto_0

    :cond_1
    invoke-static {p1, p2}, Lcom/android/systemui/classifier/FalsingClassifier$Result;->passed(D)Lcom/android/systemui/classifier/FalsingClassifier$Result;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method public isDoubleTap(Ljava/util/List;Ljava/util/List;Ljava/lang/StringBuilder;)Z
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/view/MotionEvent;",
            ">;",
            "Ljava/util/List<",
            "Landroid/view/MotionEvent;",
            ">;",
            "Ljava/lang/StringBuilder;",
            ")Z"
        }
    .end annotation

    .line 69
    iget-object v0, p0, Lcom/android/systemui/classifier/DoubleTapClassifier;->mSingleTapClassifier:Lcom/android/systemui/classifier/SingleTapClassifier;

    invoke-virtual {v0, p1}, Lcom/android/systemui/classifier/SingleTapClassifier;->isTap(Ljava/util/List;)Lcom/android/systemui/classifier/FalsingClassifier$Result;

    move-result-object v0

    .line 70
    invoke-virtual {v0}, Lcom/android/systemui/classifier/FalsingClassifier$Result;->isFalse()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    const-string p0, "First gesture is not a tap. "

    .line 71
    invoke-virtual {p3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/android/systemui/classifier/FalsingClassifier$Result;->getReason()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return v2

    .line 75
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/classifier/DoubleTapClassifier;->mSingleTapClassifier:Lcom/android/systemui/classifier/SingleTapClassifier;

    invoke-virtual {v0, p2}, Lcom/android/systemui/classifier/SingleTapClassifier;->isTap(Ljava/util/List;)Lcom/android/systemui/classifier/FalsingClassifier$Result;

    move-result-object v0

    .line 76
    invoke-virtual {v0}, Lcom/android/systemui/classifier/FalsingClassifier$Result;->isFalse()Z

    move-result v1

    if-eqz v1, :cond_1

    const-string p0, "Second gesture is not a tap. "

    .line 77
    invoke-virtual {p3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/android/systemui/classifier/FalsingClassifier$Result;->getReason()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return v2

    .line 81
    :cond_1
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/MotionEvent;

    .line 82
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    sub-int/2addr v0, v1

    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/view/MotionEvent;

    .line 84
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v5

    sub-long/2addr v3, v5

    .line 86
    iget-wide v5, p0, Lcom/android/systemui/classifier/DoubleTapClassifier;->mDoubleTapTimeMs:J

    cmp-long v0, v3, v5

    if-lez v0, :cond_2

    const-string p0, "Time between taps too large: "

    .line 87
    invoke-virtual {p3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p0, "ms"

    invoke-virtual {p3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return v2

    .line 91
    :cond_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    sub-float/2addr v0, v3

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    iget v3, p0, Lcom/android/systemui/classifier/DoubleTapClassifier;->mDoubleTapSlop:F

    cmpl-float v0, v0, v3

    const-string v3, " vs "

    if-ltz v0, :cond_3

    const-string v0, "Delta X between taps too large:"

    .line 92
    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 93
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result p1

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result p2

    sub-float/2addr p1, p2

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p1

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 94
    invoke-virtual {p3, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/android/systemui/classifier/DoubleTapClassifier;->mDoubleTapSlop:F

    .line 95
    invoke-virtual {p3, p0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    return v2

    .line 99
    :cond_3
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    sub-float/2addr v0, v4

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    iget v4, p0, Lcom/android/systemui/classifier/DoubleTapClassifier;->mDoubleTapSlop:F

    cmpl-float v0, v0, v4

    if-ltz v0, :cond_4

    const-string v0, "Delta Y between taps too large:"

    .line 100
    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 101
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result p2

    sub-float/2addr p1, p2

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p1

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 102
    invoke-virtual {p3, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/android/systemui/classifier/DoubleTapClassifier;->mDoubleTapSlop:F

    .line 103
    invoke-virtual {p3, p0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    return v2

    :cond_4
    return v1
.end method
