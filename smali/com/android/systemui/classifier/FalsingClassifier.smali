.class public abstract Lcom/android/systemui/classifier/FalsingClassifier;
.super Ljava/lang/Object;
.source "FalsingClassifier.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/classifier/FalsingClassifier$Result;
    }
.end annotation


# instance fields
.field private final mDataProvider:Lcom/android/systemui/classifier/FalsingDataProvider;

.field private final mMotionEventListener:Lcom/android/systemui/classifier/FalsingDataProvider$MotionEventListener;


# direct methods
.method constructor <init>(Lcom/android/systemui/classifier/FalsingDataProvider;)V
    .locals 1

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    new-instance v0, Lcom/android/systemui/classifier/FalsingClassifier-$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/android/systemui/classifier/FalsingClassifier-$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/classifier/FalsingClassifier;)V

    iput-object v0, p0, Lcom/android/systemui/classifier/FalsingClassifier;->mMotionEventListener:Lcom/android/systemui/classifier/FalsingDataProvider$MotionEventListener;

    .line 35
    iput-object p1, p0, Lcom/android/systemui/classifier/FalsingClassifier;->mDataProvider:Lcom/android/systemui/classifier/FalsingDataProvider;

    .line 36
    invoke-virtual {p1, v0}, Lcom/android/systemui/classifier/FalsingDataProvider;->addMotionEventListener(Lcom/android/systemui/classifier/FalsingDataProvider$MotionEventListener;)V

    return-void
.end method

.method public static logDebug(Ljava/lang/String;)V
    .locals 0

    .line 152
    invoke-static {p0}, Lcom/android/systemui/classifier/BrightLineFalsingManager;->logDebug(Ljava/lang/String;)V

    return-void
.end method

.method public static logInfo(Ljava/lang/String;)V
    .locals 0

    .line 157
    invoke-static {p0}, Lcom/android/systemui/classifier/BrightLineFalsingManager;->logInfo(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method abstract calculateFalsingResult(DD)Lcom/android/systemui/classifier/FalsingClassifier$Result;
.end method

.method classifyGesture()Lcom/android/systemui/classifier/FalsingClassifier$Result;
    .locals 2

    const-wide/16 v0, 0x0

    .line 128
    invoke-virtual {p0, v0, v1, v0, v1}, Lcom/android/systemui/classifier/FalsingClassifier;->calculateFalsingResult(DD)Lcom/android/systemui/classifier/FalsingClassifier$Result;

    move-result-object p0

    return-object p0
.end method

.method classifyGesture(DD)Lcom/android/systemui/classifier/FalsingClassifier$Result;
    .locals 0

    .line 140
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/systemui/classifier/FalsingClassifier;->calculateFalsingResult(DD)Lcom/android/systemui/classifier/FalsingClassifier$Result;

    move-result-object p0

    return-object p0
.end method

.method cleanup()V
    .locals 1

    .line 96
    iget-object v0, p0, Lcom/android/systemui/classifier/FalsingClassifier;->mDataProvider:Lcom/android/systemui/classifier/FalsingDataProvider;

    iget-object p0, p0, Lcom/android/systemui/classifier/FalsingClassifier;->mMotionEventListener:Lcom/android/systemui/classifier/FalsingDataProvider$MotionEventListener;

    invoke-virtual {v0, p0}, Lcom/android/systemui/classifier/FalsingDataProvider;->removeMotionEventListener(Lcom/android/systemui/classifier/FalsingDataProvider$MotionEventListener;)V

    return-void
.end method

.method getAngle()F
    .locals 0

    .line 72
    iget-object p0, p0, Lcom/android/systemui/classifier/FalsingClassifier;->mDataProvider:Lcom/android/systemui/classifier/FalsingDataProvider;

    invoke-virtual {p0}, Lcom/android/systemui/classifier/FalsingDataProvider;->getAngle()F

    move-result p0

    return p0
.end method

.method getFirstMotionEvent()Landroid/view/MotionEvent;
    .locals 0

    .line 48
    iget-object p0, p0, Lcom/android/systemui/classifier/FalsingClassifier;->mDataProvider:Lcom/android/systemui/classifier/FalsingDataProvider;

    invoke-virtual {p0}, Lcom/android/systemui/classifier/FalsingDataProvider;->getFirstRecentMotionEvent()Landroid/view/MotionEvent;

    move-result-object p0

    return-object p0
.end method

.method getHeightPixels()I
    .locals 0

    .line 80
    iget-object p0, p0, Lcom/android/systemui/classifier/FalsingClassifier;->mDataProvider:Lcom/android/systemui/classifier/FalsingDataProvider;

    invoke-virtual {p0}, Lcom/android/systemui/classifier/FalsingDataProvider;->getHeightPixels()I

    move-result p0

    return p0
.end method

.method getHistoricalEvents()Ljava/util/Queue;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Queue<",
            "+",
            "Ljava/util/List<",
            "Landroid/view/MotionEvent;",
            ">;>;"
        }
    .end annotation

    .line 44
    iget-object p0, p0, Lcom/android/systemui/classifier/FalsingClassifier;->mDataProvider:Lcom/android/systemui/classifier/FalsingDataProvider;

    invoke-virtual {p0}, Lcom/android/systemui/classifier/FalsingDataProvider;->getHistoricalMotionEvents()Ljava/util/Queue;

    move-result-object p0

    return-object p0
.end method

.method final getInteractionType()I
    .locals 0

    .line 92
    iget-object p0, p0, Lcom/android/systemui/classifier/FalsingClassifier;->mDataProvider:Lcom/android/systemui/classifier/FalsingDataProvider;

    invoke-virtual {p0}, Lcom/android/systemui/classifier/FalsingDataProvider;->getInteractionType()I

    move-result p0

    return p0
.end method

.method getLastMotionEvent()Landroid/view/MotionEvent;
    .locals 0

    .line 52
    iget-object p0, p0, Lcom/android/systemui/classifier/FalsingClassifier;->mDataProvider:Lcom/android/systemui/classifier/FalsingDataProvider;

    invoke-virtual {p0}, Lcom/android/systemui/classifier/FalsingDataProvider;->getLastMotionEvent()Landroid/view/MotionEvent;

    move-result-object p0

    return-object p0
.end method

.method getRecentMotionEvents()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/view/MotionEvent;",
            ">;"
        }
    .end annotation

    .line 40
    iget-object p0, p0, Lcom/android/systemui/classifier/FalsingClassifier;->mDataProvider:Lcom/android/systemui/classifier/FalsingDataProvider;

    invoke-virtual {p0}, Lcom/android/systemui/classifier/FalsingDataProvider;->getRecentMotionEvents()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method getWidthPixels()I
    .locals 0

    .line 76
    iget-object p0, p0, Lcom/android/systemui/classifier/FalsingClassifier;->mDataProvider:Lcom/android/systemui/classifier/FalsingDataProvider;

    invoke-virtual {p0}, Lcom/android/systemui/classifier/FalsingDataProvider;->getWidthPixels()I

    move-result p0

    return p0
.end method

.method getXdpi()F
    .locals 0

    .line 84
    iget-object p0, p0, Lcom/android/systemui/classifier/FalsingClassifier;->mDataProvider:Lcom/android/systemui/classifier/FalsingDataProvider;

    invoke-virtual {p0}, Lcom/android/systemui/classifier/FalsingDataProvider;->getXdpi()F

    move-result p0

    return p0
.end method

.method getYdpi()F
    .locals 0

    .line 88
    iget-object p0, p0, Lcom/android/systemui/classifier/FalsingClassifier;->mDataProvider:Lcom/android/systemui/classifier/FalsingDataProvider;

    invoke-virtual {p0}, Lcom/android/systemui/classifier/FalsingDataProvider;->getYdpi()F

    move-result p0

    return p0
.end method

.method isHorizontal()Z
    .locals 0

    .line 56
    iget-object p0, p0, Lcom/android/systemui/classifier/FalsingClassifier;->mDataProvider:Lcom/android/systemui/classifier/FalsingDataProvider;

    invoke-virtual {p0}, Lcom/android/systemui/classifier/FalsingDataProvider;->isHorizontal()Z

    move-result p0

    return p0
.end method

.method isRight()Z
    .locals 0

    .line 60
    iget-object p0, p0, Lcom/android/systemui/classifier/FalsingClassifier;->mDataProvider:Lcom/android/systemui/classifier/FalsingDataProvider;

    invoke-virtual {p0}, Lcom/android/systemui/classifier/FalsingDataProvider;->isRight()Z

    move-result p0

    return p0
.end method

.method isUp()Z
    .locals 0

    .line 68
    iget-object p0, p0, Lcom/android/systemui/classifier/FalsingClassifier;->mDataProvider:Lcom/android/systemui/classifier/FalsingDataProvider;

    invoke-virtual {p0}, Lcom/android/systemui/classifier/FalsingDataProvider;->isUp()Z

    move-result p0

    return p0
.end method

.method isVertical()Z
    .locals 0

    .line 64
    iget-object p0, p0, Lcom/android/systemui/classifier/FalsingClassifier;->mDataProvider:Lcom/android/systemui/classifier/FalsingDataProvider;

    invoke-virtual {p0}, Lcom/android/systemui/classifier/FalsingDataProvider;->isVertical()Z

    move-result p0

    return p0
.end method

.method onProximityEvent(Lcom/android/systemui/util/sensors/ThresholdSensor$ThresholdSensorEvent;)V
    .locals 0

    return-void
.end method

.method onSessionEnded()V
    .locals 0

    return-void
.end method

.method onSessionStarted()V
    .locals 0

    return-void
.end method

.method onTouchEvent(Landroid/view/MotionEvent;)V
    .locals 0

    return-void
.end method
