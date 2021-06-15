.class final Lcom/google/android/systemui/autorotate/DataLogger;
.super Ljava/lang/Object;
.source "DataLogger.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/systemui/autorotate/DataLogger$StatsPullAtomCallbackImpl;
    }
.end annotation


# instance fields
.field private mDataQueue:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue<",
            "[",
            "Lcom/google/android/systemui/autorotate/SensorData;",
            ">;"
        }
    .end annotation
.end field

.field private mRotationQueue:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mStatsManager:Landroid/app/StatsManager;


# direct methods
.method constructor <init>(Landroid/app/StatsManager;)V
    .locals 1

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/google/android/systemui/autorotate/DataLogger;->mDataQueue:Ljava/util/Queue;

    .line 40
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/google/android/systemui/autorotate/DataLogger;->mRotationQueue:Ljava/util/Queue;

    .line 46
    iput-object p1, p0, Lcom/google/android/systemui/autorotate/DataLogger;->mStatsManager:Landroid/app/StatsManager;

    return-void
.end method

.method static synthetic access$000(Lcom/google/android/systemui/autorotate/DataLogger;Ljava/util/List;)I
    .locals 0

    .line 38
    invoke-direct {p0, p1}, Lcom/google/android/systemui/autorotate/DataLogger;->pullSensorData(Ljava/util/List;)I

    move-result p0

    return p0
.end method

.method private pullSensorData(Ljava/util/List;)I
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/util/StatsEvent;",
            ">;)I"
        }
    .end annotation

    .line 113
    iget-object v0, p0, Lcom/google/android/systemui/autorotate/DataLogger;->mDataQueue:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/android/systemui/autorotate/SensorData;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    .line 114
    array-length v2, v0

    if-eqz v2, :cond_2

    aget-object v2, v0, v1

    if-nez v2, :cond_0

    goto :goto_1

    .line 117
    :cond_0
    new-instance v2, Lcom/google/android/systemui/autorotate/proto/nano/AutorotateProto$DeviceRotatedSensorData;

    invoke-direct {v2}, Lcom/google/android/systemui/autorotate/proto/nano/AutorotateProto$DeviceRotatedSensorData;-><init>()V

    .line 118
    new-instance v3, Lcom/google/android/systemui/autorotate/proto/nano/AutorotateProto$DeviceRotatedSensorHeader;

    invoke-direct {v3}, Lcom/google/android/systemui/autorotate/proto/nano/AutorotateProto$DeviceRotatedSensorHeader;-><init>()V

    .line 119
    aget-object v4, v0, v1

    iget-wide v4, v4, Lcom/google/android/systemui/autorotate/SensorData;->mTimestampMillis:J

    iput-wide v4, v3, Lcom/google/android/systemui/autorotate/proto/nano/AutorotateProto$DeviceRotatedSensorHeader;->timestampBase:J

    .line 120
    iput-object v3, v2, Lcom/google/android/systemui/autorotate/proto/nano/AutorotateProto$DeviceRotatedSensorData;->header:Lcom/google/android/systemui/autorotate/proto/nano/AutorotateProto$DeviceRotatedSensorHeader;

    .line 122
    array-length v3, v0

    new-array v3, v3, [Lcom/google/android/systemui/autorotate/proto/nano/AutorotateProto$DeviceRotatedSensorSample;

    move v4, v1

    .line 123
    :goto_0
    array-length v5, v0

    if-ge v4, v5, :cond_1

    .line 124
    new-instance v5, Lcom/google/android/systemui/autorotate/proto/nano/AutorotateProto$DeviceRotatedSensorSample;

    invoke-direct {v5}, Lcom/google/android/systemui/autorotate/proto/nano/AutorotateProto$DeviceRotatedSensorSample;-><init>()V

    .line 125
    aget-object v6, v0, v4

    iget-wide v6, v6, Lcom/google/android/systemui/autorotate/SensorData;->mTimestampMillis:J

    aget-object v8, v0, v1

    iget-wide v8, v8, Lcom/google/android/systemui/autorotate/SensorData;->mTimestampMillis:J

    sub-long/2addr v6, v8

    long-to-int v6, v6

    iput v6, v5, Lcom/google/android/systemui/autorotate/proto/nano/AutorotateProto$DeviceRotatedSensorSample;->timestampOffset:I

    .line 127
    aget-object v6, v0, v4

    iget v6, v6, Lcom/google/android/systemui/autorotate/SensorData;->mSensorIdentifier:I

    iput v6, v5, Lcom/google/android/systemui/autorotate/proto/nano/AutorotateProto$DeviceRotatedSensorSample;->sensorType:I

    .line 128
    aget-object v6, v0, v4

    iget v6, v6, Lcom/google/android/systemui/autorotate/SensorData;->mValueX:F

    iput v6, v5, Lcom/google/android/systemui/autorotate/proto/nano/AutorotateProto$DeviceRotatedSensorSample;->xValue:F

    .line 129
    aget-object v6, v0, v4

    iget v6, v6, Lcom/google/android/systemui/autorotate/SensorData;->mValueY:F

    iput v6, v5, Lcom/google/android/systemui/autorotate/proto/nano/AutorotateProto$DeviceRotatedSensorSample;->yValue:F

    .line 130
    aget-object v6, v0, v4

    iget v6, v6, Lcom/google/android/systemui/autorotate/SensorData;->mValueZ:F

    iput v6, v5, Lcom/google/android/systemui/autorotate/proto/nano/AutorotateProto$DeviceRotatedSensorSample;->zValue:F

    .line 131
    aput-object v5, v3, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 133
    :cond_1
    iput-object v3, v2, Lcom/google/android/systemui/autorotate/proto/nano/AutorotateProto$DeviceRotatedSensorData;->sample:[Lcom/google/android/systemui/autorotate/proto/nano/AutorotateProto$DeviceRotatedSensorSample;

    const/16 v0, 0x2771

    .line 137
    invoke-static {v2}, Lcom/google/protobuf/nano/MessageNano;->toByteArray(Lcom/google/protobuf/nano/MessageNano;)[B

    move-result-object v2

    iget-object p0, p0, Lcom/google/android/systemui/autorotate/DataLogger;->mRotationQueue:Ljava/util/Queue;

    .line 138
    invoke-interface {p0}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    .line 135
    invoke-static {v0, v2, p0}, Lcom/android/internal/util/FrameworkStatsLog;->buildStatsEvent(I[BI)Landroid/util/StatsEvent;

    move-result-object p0

    .line 134
    invoke-interface {p1, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_2
    :goto_1
    return v1
.end method

.method private static rotationToLogEnum(I)I
    .locals 2

    const/4 v0, 0x1

    if-eqz p0, :cond_3

    const/4 v1, 0x2

    if-eq p0, v0, :cond_2

    const/4 v0, 0x3

    if-eq p0, v1, :cond_1

    if-eq p0, v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    const/4 p0, 0x4

    return p0

    :cond_1
    return v0

    :cond_2
    return v1

    :cond_3
    return v0
.end method


# virtual methods
.method pushSensorDataReadyEvent(JI)V
    .locals 1

    .line 56
    invoke-static {p3}, Lcom/google/android/systemui/autorotate/DataLogger;->rotationToLogEnum(I)I

    move-result p0

    const/16 p3, 0x14d

    const/4 v0, 0x3

    .line 53
    invoke-static {p3, p1, p2, p0, v0}, Lcom/android/internal/util/FrameworkStatsLog;->write(IJII)V

    return-void
.end method

.method registerPullAtomCallback()V
    .locals 4

    .line 91
    iget-object v0, p0, Lcom/google/android/systemui/autorotate/DataLogger;->mStatsManager:Landroid/app/StatsManager;

    if-eqz v0, :cond_0

    .line 92
    new-instance v0, Lcom/google/android/systemui/autorotate/DataLogger$StatsPullAtomCallbackImpl;

    invoke-direct {v0, p0}, Lcom/google/android/systemui/autorotate/DataLogger$StatsPullAtomCallbackImpl;-><init>(Lcom/google/android/systemui/autorotate/DataLogger;)V

    .line 93
    iget-object p0, p0, Lcom/google/android/systemui/autorotate/DataLogger;->mStatsManager:Landroid/app/StatsManager;

    const/16 v1, 0x2771

    const/4 v2, 0x0

    sget-object v3, Lcom/android/internal/util/ConcurrentUtils;->DIRECT_EXECUTOR:Ljava/util/concurrent/Executor;

    invoke-virtual {p0, v1, v2, v3, v0}, Landroid/app/StatsManager;->setPullAtomCallback(ILandroid/app/StatsManager$PullAtomMetadata;Ljava/util/concurrent/Executor;Landroid/app/StatsManager$StatsPullAtomCallback;)V

    :cond_0
    return-void
.end method

.method setDeviceRotatedData([Lcom/google/android/systemui/autorotate/SensorData;I)V
    .locals 1

    if-eqz p1, :cond_1

    .line 66
    array-length v0, p1

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    aget-object v0, p1, v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 69
    :cond_0
    iget-object v0, p0, Lcom/google/android/systemui/autorotate/DataLogger;->mDataQueue:Ljava/util/Queue;

    invoke-interface {v0, p1}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    .line 70
    iget-object p0, p0, Lcom/google/android/systemui/autorotate/DataLogger;->mRotationQueue:Ljava/util/Queue;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    :cond_1
    :goto_0
    return-void
.end method

.method unregisterPullAtomCallback()V
    .locals 1

    .line 105
    iget-object p0, p0, Lcom/google/android/systemui/autorotate/DataLogger;->mStatsManager:Landroid/app/StatsManager;

    if-eqz p0, :cond_0

    const/16 v0, 0x2771

    .line 106
    invoke-virtual {p0, v0}, Landroid/app/StatsManager;->clearPullAtomCallback(I)V

    :cond_0
    return-void
.end method
