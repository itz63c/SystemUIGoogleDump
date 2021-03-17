.class public Lcom/android/systemui/classifier/BrightLineFalsingManager;
.super Ljava/lang/Object;
.source "BrightLineFalsingManager.java"

# interfaces
.implements Lcom/android/systemui/plugins/FalsingManager;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/classifier/BrightLineFalsingManager$XYDt;,
        Lcom/android/systemui/classifier/BrightLineFalsingManager$DebugSwipeRecord;
    }
.end annotation


# static fields
.field public static final DEBUG:Z

.field private static final RECENT_INFO_LOG:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final RECENT_SWIPES:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue<",
            "Lcom/android/systemui/classifier/BrightLineFalsingManager$DebugSwipeRecord;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final mClassifiers:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection<",
            "Lcom/android/systemui/classifier/FalsingClassifier;",
            ">;"
        }
    .end annotation
.end field

.field private mClassifyAsSingleTap:Z

.field private final mDataProvider:Lcom/android/systemui/classifier/FalsingDataProvider;

.field private final mDelayableExecutor:Lcom/android/systemui/util/concurrency/DelayableExecutor;

.field private final mDockManager:Lcom/android/systemui/dock/DockManager;

.field private final mDoubleTapClassifier:Lcom/android/systemui/classifier/DoubleTapClassifier;

.field private final mDoubleTapTimeMs:J

.field private final mGestureCompleteListener:Lcom/android/systemui/classifier/FalsingDataProvider$GestureCompleteListener;

.field private final mHistoryTracker:Lcom/android/systemui/classifier/HistoryTracker;

.field private mIsFalseTouchCalls:I

.field private final mMetricsLogger:Lcom/android/internal/logging/MetricsLogger;

.field private mPriorResults:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection<",
            "Lcom/android/systemui/classifier/FalsingClassifier$Result;",
            ">;"
        }
    .end annotation
.end field

.field private final mSessionListener:Lcom/android/systemui/classifier/FalsingDataProvider$SessionListener;

.field private final mSingleTapClassifier:Lcom/android/systemui/classifier/SingleTapClassifier;

.field private mSingleTapHistoryCanceller:Ljava/lang/Runnable;

.field private final mTestHarness:Z


# direct methods
.method public static synthetic $r8$lambda$PDe1nH1I5DiqZy_W9N8Mw3Sck5U(Lcom/android/systemui/util/sensors/ThresholdSensor$ThresholdSensorEvent;Lcom/android/systemui/classifier/FalsingClassifier;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/android/systemui/classifier/BrightLineFalsingManager;->lambda$onProximityEvent$3(Lcom/android/systemui/util/sensors/ThresholdSensor$ThresholdSensorEvent;Lcom/android/systemui/classifier/FalsingClassifier;)V

    return-void
.end method

.method public static synthetic $r8$lambda$SQ8zeMtJvLl8D5H1YcX5fdMuIk4(Landroid/view/MotionEvent;)Lcom/android/systemui/classifier/BrightLineFalsingManager$XYDt;
    .locals 0

    invoke-static {p0}, Lcom/android/systemui/classifier/BrightLineFalsingManager;->lambda$isFalseTouch$2(Landroid/view/MotionEvent;)Lcom/android/systemui/classifier/BrightLineFalsingManager$XYDt;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$UEZzb6RjCo7c7mWeIL1czVGfZyI(Lcom/android/systemui/classifier/BrightLineFalsingManager;[ZLcom/android/systemui/classifier/FalsingClassifier$Result;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/systemui/classifier/BrightLineFalsingManager;->lambda$isFalseTouch$1([ZLcom/android/systemui/classifier/FalsingClassifier$Result;)V

    return-void
.end method

.method public static synthetic $r8$lambda$oGjy9oJ8UpcZL76xXFvZZgZHgnc(Lcom/android/systemui/classifier/BrightLineFalsingManager;Lcom/android/systemui/classifier/FalsingClassifier;)Lcom/android/systemui/classifier/FalsingClassifier$Result;
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/classifier/BrightLineFalsingManager;->lambda$isFalseTouch$0(Lcom/android/systemui/classifier/FalsingClassifier;)Lcom/android/systemui/classifier/FalsingClassifier$Result;

    move-result-object p0

    return-object p0
.end method

.method static constructor <clinit>()V
    .locals 2

    const-string v0, "FalsingManager"

    const/4 v1, 0x3

    .line 62
    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Lcom/android/systemui/classifier/BrightLineFalsingManager;->DEBUG:Z

    .line 77
    new-instance v0, Ljava/util/ArrayDeque;

    const/16 v1, 0x29

    invoke-direct {v0, v1}, Ljava/util/ArrayDeque;-><init>(I)V

    sput-object v0, Lcom/android/systemui/classifier/BrightLineFalsingManager;->RECENT_INFO_LOG:Ljava/util/Queue;

    .line 79
    new-instance v0, Ljava/util/ArrayDeque;

    const/16 v1, 0x15

    invoke-direct {v0, v1}, Ljava/util/ArrayDeque;-><init>(I)V

    sput-object v0, Lcom/android/systemui/classifier/BrightLineFalsingManager;->RECENT_SWIPES:Ljava/util/Queue;

    return-void
.end method

.method public constructor <init>(Lcom/android/systemui/classifier/FalsingDataProvider;Lcom/android/systemui/dock/DockManager;Lcom/android/internal/logging/MetricsLogger;Ljava/util/Set;Lcom/android/systemui/classifier/SingleTapClassifier;Lcom/android/systemui/classifier/DoubleTapClassifier;Lcom/android/systemui/classifier/HistoryTracker;Lcom/android/systemui/util/concurrency/DelayableExecutor;JZ)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/systemui/classifier/FalsingDataProvider;",
            "Lcom/android/systemui/dock/DockManager;",
            "Lcom/android/internal/logging/MetricsLogger;",
            "Ljava/util/Set<",
            "Lcom/android/systemui/classifier/FalsingClassifier;",
            ">;",
            "Lcom/android/systemui/classifier/SingleTapClassifier;",
            "Lcom/android/systemui/classifier/DoubleTapClassifier;",
            "Lcom/android/systemui/classifier/HistoryTracker;",
            "Lcom/android/systemui/util/concurrency/DelayableExecutor;",
            "JZ)V"
        }
    .end annotation

    .line 136
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 84
    new-instance v0, Lcom/android/systemui/classifier/BrightLineFalsingManager$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/classifier/BrightLineFalsingManager$1;-><init>(Lcom/android/systemui/classifier/BrightLineFalsingManager;)V

    iput-object v0, p0, Lcom/android/systemui/classifier/BrightLineFalsingManager;->mSessionListener:Lcom/android/systemui/classifier/FalsingDataProvider$SessionListener;

    .line 96
    new-instance v1, Lcom/android/systemui/classifier/BrightLineFalsingManager$2;

    invoke-direct {v1, p0}, Lcom/android/systemui/classifier/BrightLineFalsingManager$2;-><init>(Lcom/android/systemui/classifier/BrightLineFalsingManager;)V

    iput-object v1, p0, Lcom/android/systemui/classifier/BrightLineFalsingManager;->mGestureCompleteListener:Lcom/android/systemui/classifier/FalsingDataProvider$GestureCompleteListener;

    .line 137
    iput-object p1, p0, Lcom/android/systemui/classifier/BrightLineFalsingManager;->mDataProvider:Lcom/android/systemui/classifier/FalsingDataProvider;

    .line 138
    iput-object p2, p0, Lcom/android/systemui/classifier/BrightLineFalsingManager;->mDockManager:Lcom/android/systemui/dock/DockManager;

    .line 139
    iput-object p3, p0, Lcom/android/systemui/classifier/BrightLineFalsingManager;->mMetricsLogger:Lcom/android/internal/logging/MetricsLogger;

    .line 140
    iput-object p4, p0, Lcom/android/systemui/classifier/BrightLineFalsingManager;->mClassifiers:Ljava/util/Collection;

    .line 141
    iput-object p5, p0, Lcom/android/systemui/classifier/BrightLineFalsingManager;->mSingleTapClassifier:Lcom/android/systemui/classifier/SingleTapClassifier;

    .line 142
    iput-object p6, p0, Lcom/android/systemui/classifier/BrightLineFalsingManager;->mDoubleTapClassifier:Lcom/android/systemui/classifier/DoubleTapClassifier;

    .line 143
    iput-object p7, p0, Lcom/android/systemui/classifier/BrightLineFalsingManager;->mHistoryTracker:Lcom/android/systemui/classifier/HistoryTracker;

    .line 144
    iput-object p8, p0, Lcom/android/systemui/classifier/BrightLineFalsingManager;->mDelayableExecutor:Lcom/android/systemui/util/concurrency/DelayableExecutor;

    .line 145
    iput-wide p9, p0, Lcom/android/systemui/classifier/BrightLineFalsingManager;->mDoubleTapTimeMs:J

    .line 146
    iput-boolean p11, p0, Lcom/android/systemui/classifier/BrightLineFalsingManager;->mTestHarness:Z

    .line 148
    invoke-virtual {p1, v0}, Lcom/android/systemui/classifier/FalsingDataProvider;->addSessionListener(Lcom/android/systemui/classifier/FalsingDataProvider$SessionListener;)V

    .line 149
    invoke-virtual {p1, v1}, Lcom/android/systemui/classifier/FalsingDataProvider;->addGestureCompleteListener(Lcom/android/systemui/classifier/FalsingDataProvider$GestureCompleteListener;)V

    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/classifier/BrightLineFalsingManager;)Ljava/util/Collection;
    .locals 0

    .line 59
    iget-object p0, p0, Lcom/android/systemui/classifier/BrightLineFalsingManager;->mClassifiers:Ljava/util/Collection;

    return-object p0
.end method

.method static synthetic access$100(Lcom/android/systemui/classifier/BrightLineFalsingManager;)Ljava/util/Collection;
    .locals 0

    .line 59
    iget-object p0, p0, Lcom/android/systemui/classifier/BrightLineFalsingManager;->mPriorResults:Ljava/util/Collection;

    return-object p0
.end method

.method static synthetic access$102(Lcom/android/systemui/classifier/BrightLineFalsingManager;Ljava/util/Collection;)Ljava/util/Collection;
    .locals 0

    .line 59
    iput-object p1, p0, Lcom/android/systemui/classifier/BrightLineFalsingManager;->mPriorResults:Ljava/util/Collection;

    return-object p1
.end method

.method static synthetic access$200(Lcom/android/systemui/classifier/BrightLineFalsingManager;)Z
    .locals 0

    .line 59
    iget-boolean p0, p0, Lcom/android/systemui/classifier/BrightLineFalsingManager;->mClassifyAsSingleTap:Z

    return p0
.end method

.method static synthetic access$202(Lcom/android/systemui/classifier/BrightLineFalsingManager;Z)Z
    .locals 0

    .line 59
    iput-boolean p1, p0, Lcom/android/systemui/classifier/BrightLineFalsingManager;->mClassifyAsSingleTap:Z

    return p1
.end method

.method static synthetic access$302(Lcom/android/systemui/classifier/BrightLineFalsingManager;Ljava/lang/Runnable;)Ljava/lang/Runnable;
    .locals 0

    .line 59
    iput-object p1, p0, Lcom/android/systemui/classifier/BrightLineFalsingManager;->mSingleTapHistoryCanceller:Ljava/lang/Runnable;

    return-object p1
.end method

.method static synthetic access$400(Lcom/android/systemui/classifier/BrightLineFalsingManager;)J
    .locals 2

    .line 59
    iget-wide v0, p0, Lcom/android/systemui/classifier/BrightLineFalsingManager;->mDoubleTapTimeMs:J

    return-wide v0
.end method

.method static synthetic access$500(Lcom/android/systemui/classifier/BrightLineFalsingManager;)Lcom/android/systemui/util/concurrency/DelayableExecutor;
    .locals 0

    .line 59
    iget-object p0, p0, Lcom/android/systemui/classifier/BrightLineFalsingManager;->mDelayableExecutor:Lcom/android/systemui/util/concurrency/DelayableExecutor;

    return-object p0
.end method

.method static synthetic access$600(Lcom/android/systemui/classifier/BrightLineFalsingManager;)Lcom/android/systemui/classifier/HistoryTracker;
    .locals 0

    .line 59
    iget-object p0, p0, Lcom/android/systemui/classifier/BrightLineFalsingManager;->mHistoryTracker:Lcom/android/systemui/classifier/HistoryTracker;

    return-object p0
.end method

.method private synthetic lambda$isFalseTouch$0(Lcom/android/systemui/classifier/FalsingClassifier;)Lcom/android/systemui/classifier/FalsingClassifier$Result;
    .locals 4

    .line 167
    iget-object v0, p0, Lcom/android/systemui/classifier/BrightLineFalsingManager;->mHistoryTracker:Lcom/android/systemui/classifier/HistoryTracker;

    .line 169
    invoke-virtual {v0}, Lcom/android/systemui/classifier/HistoryTracker;->falsePenalty()D

    move-result-wide v0

    iget-object v2, p0, Lcom/android/systemui/classifier/BrightLineFalsingManager;->mHistoryTracker:Lcom/android/systemui/classifier/HistoryTracker;

    .line 170
    invoke-virtual {v2}, Lcom/android/systemui/classifier/HistoryTracker;->falseConfidence()D

    move-result-wide v2

    .line 168
    invoke-virtual {p1, v0, v1, v2, v3}, Lcom/android/systemui/classifier/FalsingClassifier;->classifyGesture(DD)Lcom/android/systemui/classifier/FalsingClassifier$Result;

    move-result-object v0

    .line 171
    invoke-virtual {v0}, Lcom/android/systemui/classifier/FalsingClassifier$Result;->isFalse()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    .line 175
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    aput-object p1, v2, v3

    const/4 p1, 0x1

    iget-object p0, p0, Lcom/android/systemui/classifier/BrightLineFalsingManager;->mDataProvider:Lcom/android/systemui/classifier/FalsingDataProvider;

    .line 176
    invoke-virtual {p0}, Lcom/android/systemui/classifier/FalsingDataProvider;->getInteractionType()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    aput-object p0, v2, p1

    const-string/jumbo p0, "{classifier=%s, interactionType=%d}"

    .line 172
    invoke-static {v1, p0, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/android/systemui/classifier/BrightLineFalsingManager;->logInfo(Ljava/lang/String;)V

    .line 177
    invoke-virtual {v0}, Lcom/android/systemui/classifier/FalsingClassifier$Result;->getReason()Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 179
    invoke-static {p0}, Lcom/android/systemui/classifier/BrightLineFalsingManager;->logInfo(Ljava/lang/String;)V

    goto :goto_0

    .line 182
    :cond_0
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ": false"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/android/systemui/classifier/BrightLineFalsingManager;->logDebug(Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-object v0
.end method

.method private synthetic lambda$isFalseTouch$1([ZLcom/android/systemui/classifier/FalsingClassifier$Result;)V
    .locals 3

    const/4 v0, 0x0

    .line 189
    aget-boolean v1, p1, v0

    invoke-virtual {p2}, Lcom/android/systemui/classifier/FalsingClassifier$Result;->isFalse()Z

    move-result v2

    or-int/2addr v1, v2

    aput-boolean v1, p1, v0

    .line 190
    iget-object p0, p0, Lcom/android/systemui/classifier/BrightLineFalsingManager;->mPriorResults:Ljava/util/Collection;

    invoke-interface {p0, p2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private static synthetic lambda$isFalseTouch$2(Landroid/view/MotionEvent;)Lcom/android/systemui/classifier/BrightLineFalsingManager$XYDt;
    .locals 7

    .line 206
    new-instance v0, Lcom/android/systemui/classifier/BrightLineFalsingManager$XYDt;

    .line 207
    invoke-virtual {p0}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    float-to-int v1, v1

    .line 208
    invoke-virtual {p0}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    float-to-int v2, v2

    .line 209
    invoke-virtual {p0}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v3

    invoke-virtual {p0}, Landroid/view/MotionEvent;->getDownTime()J

    move-result-wide v5

    sub-long/2addr v3, v5

    long-to-int p0, v3

    invoke-direct {v0, v1, v2, p0}, Lcom/android/systemui/classifier/BrightLineFalsingManager$XYDt;-><init>(III)V

    return-object v0
.end method

.method private static synthetic lambda$onProximityEvent$3(Lcom/android/systemui/util/sensors/ThresholdSensor$ThresholdSensorEvent;Lcom/android/systemui/classifier/FalsingClassifier;)V
    .locals 0

    .line 275
    invoke-virtual {p1, p0}, Lcom/android/systemui/classifier/FalsingClassifier;->onProximityEvent(Lcom/android/systemui/util/sensors/ThresholdSensor$ThresholdSensorEvent;)V

    return-void
.end method

.method static logDebug(Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    .line 349
    invoke-static {p0, v0}, Lcom/android/systemui/classifier/BrightLineFalsingManager;->logDebug(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method static logDebug(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1

    .line 353
    sget-boolean v0, Lcom/android/systemui/classifier/BrightLineFalsingManager;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "FalsingManager"

    .line 354
    invoke-static {v0, p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    return-void
.end method

.method static logInfo(Ljava/lang/String;)V
    .locals 2

    const-string v0, "FalsingManager"

    .line 359
    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 360
    sget-object v0, Lcom/android/systemui/classifier/BrightLineFalsingManager;->RECENT_INFO_LOG:Ljava/util/Queue;

    invoke-interface {v0, p0}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    .line 361
    :goto_0
    sget-object p0, Lcom/android/systemui/classifier/BrightLineFalsingManager;->RECENT_INFO_LOG:Ljava/util/Queue;

    invoke-interface {p0}, Ljava/util/Queue;->size()I

    move-result v0

    const/16 v1, 0x28

    if-le v0, v1, :cond_0

    .line 362
    invoke-interface {p0}, Ljava/util/Queue;->remove()Ljava/lang/Object;

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method public cleanup()V
    .locals 2

    .line 343
    iget-object v0, p0, Lcom/android/systemui/classifier/BrightLineFalsingManager;->mDataProvider:Lcom/android/systemui/classifier/FalsingDataProvider;

    iget-object v1, p0, Lcom/android/systemui/classifier/BrightLineFalsingManager;->mSessionListener:Lcom/android/systemui/classifier/FalsingDataProvider$SessionListener;

    invoke-virtual {v0, v1}, Lcom/android/systemui/classifier/FalsingDataProvider;->removeSessionListener(Lcom/android/systemui/classifier/FalsingDataProvider$SessionListener;)V

    .line 344
    iget-object v0, p0, Lcom/android/systemui/classifier/BrightLineFalsingManager;->mDataProvider:Lcom/android/systemui/classifier/FalsingDataProvider;

    iget-object v1, p0, Lcom/android/systemui/classifier/BrightLineFalsingManager;->mGestureCompleteListener:Lcom/android/systemui/classifier/FalsingDataProvider$GestureCompleteListener;

    invoke-virtual {v0, v1}, Lcom/android/systemui/classifier/FalsingDataProvider;->removeGestureCompleteListener(Lcom/android/systemui/classifier/FalsingDataProvider$GestureCompleteListener;)V

    .line 345
    iget-object p0, p0, Lcom/android/systemui/classifier/BrightLineFalsingManager;->mClassifiers:Ljava/util/Collection;

    sget-object v0, Lcom/android/systemui/classifier/BrightLineFalsingManager-$$ExternalSyntheticLambda2;->INSTANCE:Lcom/android/systemui/classifier/BrightLineFalsingManager-$$ExternalSyntheticLambda2;

    invoke-interface {p0, v0}, Ljava/util/Collection;->forEach(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 0

    .line 308
    new-instance p1, Landroid/util/IndentingPrintWriter;

    const-string p3, "  "

    invoke-direct {p1, p2, p3}, Landroid/util/IndentingPrintWriter;-><init>(Ljava/io/Writer;Ljava/lang/String;)V

    const-string p2, "BRIGHTLINE FALSING MANAGER"

    .line 309
    invoke-virtual {p1, p2}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    const-string p2, "classifierEnabled="

    .line 310
    invoke-virtual {p1, p2}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 311
    invoke-virtual {p0}, Lcom/android/systemui/classifier/BrightLineFalsingManager;->isClassifierEnabled()Z

    move-result p2

    invoke-virtual {p1, p2}, Landroid/util/IndentingPrintWriter;->println(I)V

    const-string p2, "mJustUnlockedWithFace="

    .line 312
    invoke-virtual {p1, p2}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 313
    iget-object p2, p0, Lcom/android/systemui/classifier/BrightLineFalsingManager;->mDataProvider:Lcom/android/systemui/classifier/FalsingDataProvider;

    invoke-virtual {p2}, Lcom/android/systemui/classifier/FalsingDataProvider;->isJustUnlockedWithFace()Z

    move-result p2

    invoke-virtual {p1, p2}, Landroid/util/IndentingPrintWriter;->println(I)V

    const-string p2, "isDocked="

    .line 314
    invoke-virtual {p1, p2}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 315
    iget-object p2, p0, Lcom/android/systemui/classifier/BrightLineFalsingManager;->mDockManager:Lcom/android/systemui/dock/DockManager;

    invoke-interface {p2}, Lcom/android/systemui/dock/DockManager;->isDocked()Z

    move-result p2

    invoke-virtual {p1, p2}, Landroid/util/IndentingPrintWriter;->println(I)V

    const-string/jumbo p2, "width="

    .line 316
    invoke-virtual {p1, p2}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 317
    iget-object p2, p0, Lcom/android/systemui/classifier/BrightLineFalsingManager;->mDataProvider:Lcom/android/systemui/classifier/FalsingDataProvider;

    invoke-virtual {p2}, Lcom/android/systemui/classifier/FalsingDataProvider;->getWidthPixels()I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/util/IndentingPrintWriter;->println(I)V

    const-string p2, "height="

    .line 318
    invoke-virtual {p1, p2}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 319
    iget-object p0, p0, Lcom/android/systemui/classifier/BrightLineFalsingManager;->mDataProvider:Lcom/android/systemui/classifier/FalsingDataProvider;

    invoke-virtual {p0}, Lcom/android/systemui/classifier/FalsingDataProvider;->getHeightPixels()I

    move-result p0

    invoke-virtual {p1, p0}, Landroid/util/IndentingPrintWriter;->println(I)V

    .line 320
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->println()V

    .line 321
    sget-object p0, Lcom/android/systemui/classifier/BrightLineFalsingManager;->RECENT_SWIPES:Ljava/util/Queue;

    invoke-interface {p0}, Ljava/util/Queue;->size()I

    move-result p2

    if-eqz p2, :cond_1

    const-string p2, "Recent swipes:"

    .line 322
    invoke-virtual {p1, p2}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 323
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    .line 324
    invoke-interface {p0}, Ljava/util/Queue;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/systemui/classifier/BrightLineFalsingManager$DebugSwipeRecord;

    .line 325
    invoke-virtual {p2}, Lcom/android/systemui/classifier/BrightLineFalsingManager$DebugSwipeRecord;->getString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 326
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->println()V

    goto :goto_0

    .line 328
    :cond_0
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    goto :goto_1

    :cond_1
    const-string p0, "No recent swipes"

    .line 330
    invoke-virtual {p1, p0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 332
    :goto_1
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->println()V

    const-string p0, "Recent falsing info:"

    .line 333
    invoke-virtual {p1, p0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 334
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    .line 335
    sget-object p0, Lcom/android/systemui/classifier/BrightLineFalsingManager;->RECENT_INFO_LOG:Ljava/util/Queue;

    invoke-interface {p0}, Ljava/util/Queue;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_2
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    .line 336
    invoke-virtual {p1, p2}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    goto :goto_2

    .line 338
    :cond_2
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->println()V

    return-void
.end method

.method public isClassifierEnabled()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public isFalseDoubleTap()Z
    .locals 4

    const/4 v0, 0x0

    .line 251
    iput-boolean v0, p0, Lcom/android/systemui/classifier/BrightLineFalsingManager;->mClassifyAsSingleTap:Z

    .line 252
    iget-object v1, p0, Lcom/android/systemui/classifier/BrightLineFalsingManager;->mDoubleTapClassifier:Lcom/android/systemui/classifier/DoubleTapClassifier;

    invoke-virtual {v1}, Lcom/android/systemui/classifier/FalsingClassifier;->classifyGesture()Lcom/android/systemui/classifier/FalsingClassifier$Result;

    move-result-object v1

    .line 253
    invoke-static {v1}, Ljava/util/Collections;->singleton(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v2

    iput-object v2, p0, Lcom/android/systemui/classifier/BrightLineFalsingManager;->mPriorResults:Ljava/util/Collection;

    .line 254
    invoke-virtual {v1}, Lcom/android/systemui/classifier/FalsingClassifier$Result;->isFalse()Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    .line 255
    iget-object p0, p0, Lcom/android/systemui/classifier/BrightLineFalsingManager;->mDoubleTapClassifier:Lcom/android/systemui/classifier/DoubleTapClassifier;

    .line 256
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    aput-object p0, v2, v0

    const-string/jumbo p0, "{classifier=%s}"

    .line 255
    invoke-static {v3, p0, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/android/systemui/classifier/BrightLineFalsingManager;->logInfo(Ljava/lang/String;)V

    .line 257
    invoke-virtual {v1}, Lcom/android/systemui/classifier/FalsingClassifier$Result;->getReason()Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 259
    invoke-static {p0}, Lcom/android/systemui/classifier/BrightLineFalsingManager;->logInfo(Ljava/lang/String;)V

    goto :goto_0

    .line 263
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/classifier/BrightLineFalsingManager;->mSingleTapHistoryCanceller:Ljava/lang/Runnable;

    if-eqz v0, :cond_1

    .line 264
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 265
    iput-object v3, p0, Lcom/android/systemui/classifier/BrightLineFalsingManager;->mSingleTapHistoryCanceller:Ljava/lang/Runnable;

    .line 268
    :cond_1
    :goto_0
    invoke-virtual {v1}, Lcom/android/systemui/classifier/FalsingClassifier$Result;->isFalse()Z

    move-result p0

    return p0
.end method

.method public isFalseTap(Z)Z
    .locals 4

    const/4 v0, 0x1

    .line 221
    iput-boolean v0, p0, Lcom/android/systemui/classifier/BrightLineFalsingManager;->mClassifyAsSingleTap:Z

    .line 223
    iget-object v1, p0, Lcom/android/systemui/classifier/BrightLineFalsingManager;->mSingleTapClassifier:Lcom/android/systemui/classifier/SingleTapClassifier;

    iget-object v2, p0, Lcom/android/systemui/classifier/BrightLineFalsingManager;->mDataProvider:Lcom/android/systemui/classifier/FalsingDataProvider;

    .line 224
    invoke-virtual {v2}, Lcom/android/systemui/classifier/FalsingDataProvider;->getRecentMotionEvents()Ljava/util/List;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/systemui/classifier/SingleTapClassifier;->isTap(Ljava/util/List;)Lcom/android/systemui/classifier/FalsingClassifier$Result;

    move-result-object v1

    .line 225
    invoke-static {v1}, Ljava/util/Collections;->singleton(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v2

    iput-object v2, p0, Lcom/android/systemui/classifier/BrightLineFalsingManager;->mPriorResults:Ljava/util/Collection;

    .line 226
    invoke-virtual {v1}, Lcom/android/systemui/classifier/FalsingClassifier$Result;->isFalse()Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_1

    const/4 p1, 0x0

    new-array v2, v0, [Ljava/lang/Object;

    .line 227
    iget-object p0, p0, Lcom/android/systemui/classifier/BrightLineFalsingManager;->mSingleTapClassifier:Lcom/android/systemui/classifier/SingleTapClassifier;

    .line 228
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    aput-object p0, v2, v3

    const-string/jumbo p0, "{classifier=%s}"

    .line 227
    invoke-static {p1, p0, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/android/systemui/classifier/BrightLineFalsingManager;->logInfo(Ljava/lang/String;)V

    .line 229
    invoke-virtual {v1}, Lcom/android/systemui/classifier/FalsingClassifier$Result;->getReason()Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 231
    invoke-static {p0}, Lcom/android/systemui/classifier/BrightLineFalsingManager;->logInfo(Ljava/lang/String;)V

    :cond_0
    return v0

    :cond_1
    if-eqz p1, :cond_3

    .line 238
    iget-object p1, p0, Lcom/android/systemui/classifier/BrightLineFalsingManager;->mDataProvider:Lcom/android/systemui/classifier/FalsingDataProvider;

    invoke-virtual {p1}, Lcom/android/systemui/classifier/FalsingDataProvider;->isJustUnlockedWithFace()Z

    move-result p1

    xor-int/2addr p1, v0

    if-eqz p1, :cond_2

    const-wide v0, 0x3fb999999999999aL    # 0.1

    const-string v2, "no face detected"

    .line 240
    invoke-static {v0, v1, v2}, Lcom/android/systemui/classifier/FalsingClassifier$Result;->falsed(DLjava/lang/String;)Lcom/android/systemui/classifier/FalsingClassifier$Result;

    move-result-object v0

    goto :goto_0

    :cond_2
    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    .line 241
    invoke-static {v0, v1}, Lcom/android/systemui/classifier/FalsingClassifier$Result;->passed(D)Lcom/android/systemui/classifier/FalsingClassifier$Result;

    move-result-object v0

    .line 239
    :goto_0
    invoke-static {v0}, Ljava/util/Collections;->singleton(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/classifier/BrightLineFalsingManager;->mPriorResults:Ljava/util/Collection;

    return p1

    :cond_3
    return v3
.end method

.method public isFalseTouch(I)Z
    .locals 4

    const/4 v0, 0x0

    .line 161
    iput-boolean v0, p0, Lcom/android/systemui/classifier/BrightLineFalsingManager;->mClassifyAsSingleTap:Z

    .line 162
    iget-object v1, p0, Lcom/android/systemui/classifier/BrightLineFalsingManager;->mDataProvider:Lcom/android/systemui/classifier/FalsingDataProvider;

    invoke-virtual {v1, p1}, Lcom/android/systemui/classifier/FalsingDataProvider;->setInteractionType(I)V

    .line 164
    iget-boolean p1, p0, Lcom/android/systemui/classifier/BrightLineFalsingManager;->mTestHarness:Z

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/android/systemui/classifier/BrightLineFalsingManager;->mDataProvider:Lcom/android/systemui/classifier/FalsingDataProvider;

    invoke-virtual {p1}, Lcom/android/systemui/classifier/FalsingDataProvider;->isJustUnlockedWithFace()Z

    move-result p1

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/android/systemui/classifier/BrightLineFalsingManager;->mDockManager:Lcom/android/systemui/dock/DockManager;

    invoke-interface {p1}, Lcom/android/systemui/dock/DockManager;->isDocked()Z

    move-result p1

    if-nez p1, :cond_0

    .line 165
    iget-object p1, p0, Lcom/android/systemui/classifier/BrightLineFalsingManager;->mClassifiers:Ljava/util/Collection;

    .line 166
    invoke-interface {p1}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    move-result-object p1

    new-instance v1, Lcom/android/systemui/classifier/BrightLineFalsingManager-$$ExternalSyntheticLambda3;

    invoke-direct {v1, p0}, Lcom/android/systemui/classifier/BrightLineFalsingManager-$$ExternalSyntheticLambda3;-><init>(Lcom/android/systemui/classifier/BrightLineFalsingManager;)V

    invoke-interface {p1, v1}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object p1

    .line 186
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/systemui/classifier/BrightLineFalsingManager;->mPriorResults:Ljava/util/Collection;

    const/4 v1, 0x1

    new-array v1, v1, [Z

    aput-boolean v0, v1, v0

    .line 188
    new-instance v2, Lcom/android/systemui/classifier/BrightLineFalsingManager-$$ExternalSyntheticLambda0;

    invoke-direct {v2, p0, v1}, Lcom/android/systemui/classifier/BrightLineFalsingManager-$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/classifier/BrightLineFalsingManager;[Z)V

    invoke-interface {p1, v2}, Ljava/util/stream/Stream;->forEach(Ljava/util/function/Consumer;)V

    .line 192
    aget-boolean v0, v1, v0

    goto :goto_0

    :cond_0
    const-wide/high16 v1, 0x3ff0000000000000L    # 1.0

    .line 195
    invoke-static {v1, v2}, Lcom/android/systemui/classifier/FalsingClassifier$Result;->passed(D)Lcom/android/systemui/classifier/FalsingClassifier$Result;

    move-result-object p1

    invoke-static {p1}, Ljava/util/Collections;->singleton(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/classifier/BrightLineFalsingManager;->mPriorResults:Ljava/util/Collection;

    .line 198
    :goto_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Is false touch? "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/android/systemui/classifier/BrightLineFalsingManager;->logDebug(Ljava/lang/String;)V

    .line 200
    sget-boolean p1, Landroid/os/Build;->IS_ENG:Z

    if-nez p1, :cond_1

    sget-boolean p1, Landroid/os/Build;->IS_USERDEBUG:Z

    if-eqz p1, :cond_2

    .line 202
    :cond_1
    sget-object p1, Lcom/android/systemui/classifier/BrightLineFalsingManager;->RECENT_SWIPES:Ljava/util/Queue;

    new-instance v1, Lcom/android/systemui/classifier/BrightLineFalsingManager$DebugSwipeRecord;

    iget-object v2, p0, Lcom/android/systemui/classifier/BrightLineFalsingManager;->mDataProvider:Lcom/android/systemui/classifier/FalsingDataProvider;

    .line 204
    invoke-virtual {v2}, Lcom/android/systemui/classifier/FalsingDataProvider;->getInteractionType()I

    move-result v2

    iget-object p0, p0, Lcom/android/systemui/classifier/BrightLineFalsingManager;->mDataProvider:Lcom/android/systemui/classifier/FalsingDataProvider;

    .line 205
    invoke-virtual {p0}, Lcom/android/systemui/classifier/FalsingDataProvider;->getRecentMotionEvents()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object p0

    sget-object v3, Lcom/android/systemui/classifier/BrightLineFalsingManager-$$ExternalSyntheticLambda4;->INSTANCE:Lcom/android/systemui/classifier/BrightLineFalsingManager-$$ExternalSyntheticLambda4;

    invoke-interface {p0, v3}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object p0

    .line 210
    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object v3

    invoke-interface {p0, v3}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    invoke-direct {v1, v0, v2, p0}, Lcom/android/systemui/classifier/BrightLineFalsingManager$DebugSwipeRecord;-><init>(ZILjava/util/List;)V

    .line 202
    invoke-interface {p1, v1}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    .line 211
    :goto_1
    sget-object p0, Lcom/android/systemui/classifier/BrightLineFalsingManager;->RECENT_SWIPES:Ljava/util/Queue;

    invoke-interface {p0}, Ljava/util/Queue;->size()I

    move-result p1

    const/16 v1, 0x28

    if-le p1, v1, :cond_2

    .line 212
    invoke-interface {p0}, Ljava/util/Queue;->remove()Ljava/lang/Object;

    goto :goto_1

    :cond_2
    return v0
.end method

.method public isReportingEnabled()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public isUnlockingDisabled()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public onProximityEvent(Lcom/android/systemui/util/sensors/ThresholdSensor$ThresholdSensorEvent;)V
    .locals 1

    .line 275
    iget-object p0, p0, Lcom/android/systemui/classifier/BrightLineFalsingManager;->mClassifiers:Ljava/util/Collection;

    new-instance v0, Lcom/android/systemui/classifier/BrightLineFalsingManager-$$ExternalSyntheticLambda1;

    invoke-direct {v0, p1}, Lcom/android/systemui/classifier/BrightLineFalsingManager-$$ExternalSyntheticLambda1;-><init>(Lcom/android/systemui/util/sensors/ThresholdSensor$ThresholdSensorEvent;)V

    invoke-interface {p0, v0}, Ljava/util/Collection;->forEach(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public onSuccessfulUnlock()V
    .locals 3

    .line 280
    iget v0, p0, Lcom/android/systemui/classifier/BrightLineFalsingManager;->mIsFalseTouchCalls:I

    if-eqz v0, :cond_0

    .line 281
    iget-object v1, p0, Lcom/android/systemui/classifier/BrightLineFalsingManager;->mMetricsLogger:Lcom/android/internal/logging/MetricsLogger;

    const-string v2, "falsing_success_after_attempts"

    invoke-virtual {v1, v2, v0}, Lcom/android/internal/logging/MetricsLogger;->histogram(Ljava/lang/String;I)V

    const/4 v0, 0x0

    .line 282
    iput v0, p0, Lcom/android/systemui/classifier/BrightLineFalsingManager;->mIsFalseTouchCalls:I

    :cond_0
    return-void
.end method

.method public reportRejectedTouch()Landroid/net/Uri;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public shouldEnforceBouncer()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method
