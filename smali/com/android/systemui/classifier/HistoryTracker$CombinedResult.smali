.class Lcom/android/systemui/classifier/HistoryTracker$CombinedResult;
.super Ljava/lang/Object;
.source "HistoryTracker.java"

# interfaces
.implements Ljava/util/concurrent/Delayed;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/classifier/HistoryTracker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CombinedResult"
.end annotation


# instance fields
.field private final mExpiryMs:J

.field private final mScore:D

.field final synthetic this$0:Lcom/android/systemui/classifier/HistoryTracker;


# direct methods
.method constructor <init>(Lcom/android/systemui/classifier/HistoryTracker;JD)V
    .locals 2

    .line 149
    iput-object p1, p0, Lcom/android/systemui/classifier/HistoryTracker$CombinedResult;->this$0:Lcom/android/systemui/classifier/HistoryTracker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 150
    invoke-static {}, Lcom/android/systemui/classifier/HistoryTracker;->access$000()J

    move-result-wide v0

    add-long/2addr p2, v0

    iput-wide p2, p0, Lcom/android/systemui/classifier/HistoryTracker$CombinedResult;->mExpiryMs:J

    .line 151
    iput-wide p4, p0, Lcom/android/systemui/classifier/HistoryTracker$CombinedResult;->mScore:D

    return-void
.end method


# virtual methods
.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    .line 144
    check-cast p1, Ljava/util/concurrent/Delayed;

    invoke-virtual {p0, p1}, Lcom/android/systemui/classifier/HistoryTracker$CombinedResult;->compareTo(Ljava/util/concurrent/Delayed;)I

    move-result p0

    return p0
.end method

.method public compareTo(Ljava/util/concurrent/Delayed;)I
    .locals 3

    .line 172
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {p0, v0}, Lcom/android/systemui/classifier/HistoryTracker$CombinedResult;->getDelay(Ljava/util/concurrent/TimeUnit;)J

    move-result-wide v1

    .line 173
    invoke-interface {p1, v0}, Ljava/util/concurrent/Delayed;->getDelay(Ljava/util/concurrent/TimeUnit;)J

    move-result-wide p0

    .line 174
    invoke-static {v1, v2, p0, p1}, Ljava/lang/Long;->compare(JJ)I

    move-result p0

    return p0
.end method

.method getDecayedScore(J)D
    .locals 4

    .line 155
    iget-wide v0, p0, Lcom/android/systemui/classifier/HistoryTracker$CombinedResult;->mExpiryMs:J

    sub-long/2addr v0, p1

    .line 156
    invoke-static {}, Lcom/android/systemui/classifier/HistoryTracker;->access$000()J

    move-result-wide p1

    sub-long/2addr p1, v0

    long-to-double p1, p1

    const-wide/high16 v0, 0x4059000000000000L    # 100.0

    div-double/2addr p1, v0

    .line 158
    iget-wide v0, p0, Lcom/android/systemui/classifier/HistoryTracker$CombinedResult;->mScore:D

    const-wide v2, 0x3fe99999a0000000L    # 0.800000011920929

    invoke-static {v2, v3, p1, p2}, Ljava/lang/Math;->pow(DD)D

    move-result-wide p0

    mul-double/2addr v0, p0

    return-wide v0
.end method

.method public getDelay(Ljava/util/concurrent/TimeUnit;)J
    .locals 4

    .line 167
    iget-wide v0, p0, Lcom/android/systemui/classifier/HistoryTracker$CombinedResult;->mExpiryMs:J

    iget-object p0, p0, Lcom/android/systemui/classifier/HistoryTracker$CombinedResult;->this$0:Lcom/android/systemui/classifier/HistoryTracker;

    invoke-static {p0}, Lcom/android/systemui/classifier/HistoryTracker;->access$100(Lcom/android/systemui/classifier/HistoryTracker;)Lcom/android/systemui/util/time/SystemClock;

    move-result-object p0

    invoke-interface {p0}, Lcom/android/systemui/util/time/SystemClock;->uptimeMillis()J

    move-result-wide v2

    sub-long/2addr v0, v2

    sget-object p0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {p1, v0, v1, p0}, Ljava/util/concurrent/TimeUnit;->convert(JLjava/util/concurrent/TimeUnit;)J

    move-result-wide p0

    return-wide p0
.end method

.method getScore()D
    .locals 2

    .line 162
    iget-wide v0, p0, Lcom/android/systemui/classifier/HistoryTracker$CombinedResult;->mScore:D

    return-wide v0
.end method
