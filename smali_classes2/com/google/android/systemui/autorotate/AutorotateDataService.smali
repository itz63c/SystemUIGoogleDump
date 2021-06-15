.class public Lcom/google/android/systemui/autorotate/AutorotateDataService;
.super Ljava/lang/Object;
.source "AutorotateDataService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/systemui/autorotate/AutorotateDataService$SensorListener;
    }
.end annotation


# instance fields
.field private final mBroadcastDispatcher:Lcom/android/systemui/broadcast/BroadcastDispatcher;

.field private final mContext:Landroid/content/Context;

.field private mDesiredRotation:I

.field private mDesiredRotationTimestamp:J

.field private final mDeviceConfig:Lcom/android/systemui/util/DeviceConfigProxy;

.field private mLatencyTracker:Lcom/android/internal/util/LatencyTracker;

.field private final mMainExecutor:Lcom/android/systemui/util/concurrency/DelayableExecutor;

.field private mPreindicationSensor:Landroid/hardware/Sensor;

.field private mRawSensorLoggingEnabled:Z

.field private final mScreenEventBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private mSensorData:[Lcom/google/android/systemui/autorotate/SensorData;

.field private mSensorDataIndex:I

.field private final mSensorDataLogger:Lcom/google/android/systemui/autorotate/DataLogger;

.field private mSensorDataReadyForPull:Ljava/lang/Runnable;

.field private final mSensorListener:Lcom/google/android/systemui/autorotate/AutorotateDataService$SensorListener;

.field private final mSensorManager:Landroid/hardware/SensorManager;

.field private mServiceRunning:Z


# direct methods
.method public static synthetic $r8$lambda$u92w7CQ4zB8mDV2TRAAoRRujRrM(Lcom/google/android/systemui/autorotate/AutorotateDataService;Landroid/provider/DeviceConfig$Properties;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/systemui/autorotate/AutorotateDataService;->lambda$init$0(Landroid/provider/DeviceConfig$Properties;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/hardware/SensorManager;Lcom/google/android/systemui/autorotate/DataLogger;Lcom/android/systemui/broadcast/BroadcastDispatcher;Lcom/android/systemui/util/DeviceConfigProxy;Lcom/android/systemui/util/concurrency/DelayableExecutor;)V
    .locals 3

    .line 98
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 58
    iput-boolean v0, p0, Lcom/google/android/systemui/autorotate/AutorotateDataService;->mServiceRunning:Z

    const/4 v1, -0x1

    .line 59
    iput v1, p0, Lcom/google/android/systemui/autorotate/AutorotateDataService;->mDesiredRotation:I

    const-wide/16 v1, -0x1

    .line 60
    iput-wide v1, p0, Lcom/google/android/systemui/autorotate/AutorotateDataService;->mDesiredRotationTimestamp:J

    const/16 v1, 0x320

    new-array v1, v1, [Lcom/google/android/systemui/autorotate/SensorData;

    .line 77
    iput-object v1, p0, Lcom/google/android/systemui/autorotate/AutorotateDataService;->mSensorData:[Lcom/google/android/systemui/autorotate/SensorData;

    .line 85
    iput v0, p0, Lcom/google/android/systemui/autorotate/AutorotateDataService;->mSensorDataIndex:I

    .line 144
    new-instance v0, Lcom/google/android/systemui/autorotate/AutorotateDataService$1;

    invoke-direct {v0, p0}, Lcom/google/android/systemui/autorotate/AutorotateDataService$1;-><init>(Lcom/google/android/systemui/autorotate/AutorotateDataService;)V

    iput-object v0, p0, Lcom/google/android/systemui/autorotate/AutorotateDataService;->mSensorDataReadyForPull:Ljava/lang/Runnable;

    .line 190
    new-instance v0, Lcom/google/android/systemui/autorotate/AutorotateDataService$2;

    invoke-direct {v0, p0}, Lcom/google/android/systemui/autorotate/AutorotateDataService$2;-><init>(Lcom/google/android/systemui/autorotate/AutorotateDataService;)V

    iput-object v0, p0, Lcom/google/android/systemui/autorotate/AutorotateDataService;->mScreenEventBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 99
    iput-object p1, p0, Lcom/google/android/systemui/autorotate/AutorotateDataService;->mContext:Landroid/content/Context;

    .line 100
    iput-object p6, p0, Lcom/google/android/systemui/autorotate/AutorotateDataService;->mMainExecutor:Lcom/android/systemui/util/concurrency/DelayableExecutor;

    .line 101
    iput-object p3, p0, Lcom/google/android/systemui/autorotate/AutorotateDataService;->mSensorDataLogger:Lcom/google/android/systemui/autorotate/DataLogger;

    .line 102
    iput-object p2, p0, Lcom/google/android/systemui/autorotate/AutorotateDataService;->mSensorManager:Landroid/hardware/SensorManager;

    .line 103
    iput-object p4, p0, Lcom/google/android/systemui/autorotate/AutorotateDataService;->mBroadcastDispatcher:Lcom/android/systemui/broadcast/BroadcastDispatcher;

    .line 104
    iput-object p5, p0, Lcom/google/android/systemui/autorotate/AutorotateDataService;->mDeviceConfig:Lcom/android/systemui/util/DeviceConfigProxy;

    .line 105
    new-instance p1, Lcom/google/android/systemui/autorotate/AutorotateDataService$SensorListener;

    const/4 p2, 0x0

    invoke-direct {p1, p0, p2}, Lcom/google/android/systemui/autorotate/AutorotateDataService$SensorListener;-><init>(Lcom/google/android/systemui/autorotate/AutorotateDataService;Lcom/google/android/systemui/autorotate/AutorotateDataService$1;)V

    iput-object p1, p0, Lcom/google/android/systemui/autorotate/AutorotateDataService;->mSensorListener:Lcom/google/android/systemui/autorotate/AutorotateDataService$SensorListener;

    return-void
.end method

.method static synthetic access$100(Lcom/google/android/systemui/autorotate/AutorotateDataService;)[Lcom/google/android/systemui/autorotate/SensorData;
    .locals 0

    .line 46
    iget-object p0, p0, Lcom/google/android/systemui/autorotate/AutorotateDataService;->mSensorData:[Lcom/google/android/systemui/autorotate/SensorData;

    return-object p0
.end method

.method static synthetic access$1000(Lcom/google/android/systemui/autorotate/AutorotateDataService;)Landroid/hardware/Sensor;
    .locals 0

    .line 46
    iget-object p0, p0, Lcom/google/android/systemui/autorotate/AutorotateDataService;->mPreindicationSensor:Landroid/hardware/Sensor;

    return-object p0
.end method

.method static synthetic access$102(Lcom/google/android/systemui/autorotate/AutorotateDataService;[Lcom/google/android/systemui/autorotate/SensorData;)[Lcom/google/android/systemui/autorotate/SensorData;
    .locals 0

    .line 46
    iput-object p1, p0, Lcom/google/android/systemui/autorotate/AutorotateDataService;->mSensorData:[Lcom/google/android/systemui/autorotate/SensorData;

    return-object p1
.end method

.method static synthetic access$1100(Lcom/google/android/systemui/autorotate/AutorotateDataService;)Lcom/android/internal/util/LatencyTracker;
    .locals 0

    .line 46
    iget-object p0, p0, Lcom/google/android/systemui/autorotate/AutorotateDataService;->mLatencyTracker:Lcom/android/internal/util/LatencyTracker;

    return-object p0
.end method

.method static synthetic access$200(Lcom/google/android/systemui/autorotate/AutorotateDataService;)I
    .locals 0

    .line 46
    iget p0, p0, Lcom/google/android/systemui/autorotate/AutorotateDataService;->mDesiredRotation:I

    return p0
.end method

.method static synthetic access$202(Lcom/google/android/systemui/autorotate/AutorotateDataService;I)I
    .locals 0

    .line 46
    iput p1, p0, Lcom/google/android/systemui/autorotate/AutorotateDataService;->mDesiredRotation:I

    return p1
.end method

.method static synthetic access$300(Lcom/google/android/systemui/autorotate/AutorotateDataService;)Lcom/google/android/systemui/autorotate/DataLogger;
    .locals 0

    .line 46
    iget-object p0, p0, Lcom/google/android/systemui/autorotate/AutorotateDataService;->mSensorDataLogger:Lcom/google/android/systemui/autorotate/DataLogger;

    return-object p0
.end method

.method static synthetic access$400(Lcom/google/android/systemui/autorotate/AutorotateDataService;)J
    .locals 2

    .line 46
    iget-wide v0, p0, Lcom/google/android/systemui/autorotate/AutorotateDataService;->mDesiredRotationTimestamp:J

    return-wide v0
.end method

.method static synthetic access$402(Lcom/google/android/systemui/autorotate/AutorotateDataService;J)J
    .locals 0

    .line 46
    iput-wide p1, p0, Lcom/google/android/systemui/autorotate/AutorotateDataService;->mDesiredRotationTimestamp:J

    return-wide p1
.end method

.method static synthetic access$500(Lcom/google/android/systemui/autorotate/AutorotateDataService;)V
    .locals 0

    .line 46
    invoke-direct {p0}, Lcom/google/android/systemui/autorotate/AutorotateDataService;->registerSensors()V

    return-void
.end method

.method static synthetic access$600(Lcom/google/android/systemui/autorotate/AutorotateDataService;)V
    .locals 0

    .line 46
    invoke-direct {p0}, Lcom/google/android/systemui/autorotate/AutorotateDataService;->unregisterSensors()V

    return-void
.end method

.method static synthetic access$700(Lcom/google/android/systemui/autorotate/AutorotateDataService;)I
    .locals 0

    .line 46
    iget p0, p0, Lcom/google/android/systemui/autorotate/AutorotateDataService;->mSensorDataIndex:I

    return p0
.end method

.method static synthetic access$702(Lcom/google/android/systemui/autorotate/AutorotateDataService;I)I
    .locals 0

    .line 46
    iput p1, p0, Lcom/google/android/systemui/autorotate/AutorotateDataService;->mSensorDataIndex:I

    return p1
.end method

.method static synthetic access$708(Lcom/google/android/systemui/autorotate/AutorotateDataService;)I
    .locals 2

    .line 46
    iget v0, p0, Lcom/google/android/systemui/autorotate/AutorotateDataService;->mSensorDataIndex:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/google/android/systemui/autorotate/AutorotateDataService;->mSensorDataIndex:I

    return v0
.end method

.method static synthetic access$800(Lcom/google/android/systemui/autorotate/AutorotateDataService;)Ljava/lang/Runnable;
    .locals 0

    .line 46
    iget-object p0, p0, Lcom/google/android/systemui/autorotate/AutorotateDataService;->mSensorDataReadyForPull:Ljava/lang/Runnable;

    return-object p0
.end method

.method static synthetic access$900(Lcom/google/android/systemui/autorotate/AutorotateDataService;)Lcom/android/systemui/util/concurrency/DelayableExecutor;
    .locals 0

    .line 46
    iget-object p0, p0, Lcom/google/android/systemui/autorotate/AutorotateDataService;->mMainExecutor:Lcom/android/systemui/util/concurrency/DelayableExecutor;

    return-object p0
.end method

.method private synthetic lambda$init$0(Landroid/provider/DeviceConfig$Properties;)V
    .locals 1

    .line 121
    invoke-virtual {p1}, Landroid/provider/DeviceConfig$Properties;->getKeyset()Ljava/util/Set;

    move-result-object p1

    const-string v0, "log_raw_sensor_data"

    .line 122
    invoke-interface {p1, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 123
    invoke-direct {p0}, Lcom/google/android/systemui/autorotate/AutorotateDataService;->readRawSensorDataLoggingFlag()V

    :cond_0
    return-void
.end method

.method private listenForScreenEvents()V
    .locals 3

    .line 184
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.SCREEN_ON"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    const-string v1, "android.intent.action.SCREEN_OFF"

    .line 185
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 186
    iget-object v1, p0, Lcom/google/android/systemui/autorotate/AutorotateDataService;->mBroadcastDispatcher:Lcom/android/systemui/broadcast/BroadcastDispatcher;

    iget-object p0, p0, Lcom/google/android/systemui/autorotate/AutorotateDataService;->mScreenEventBroadcastReceiver:Landroid/content/BroadcastReceiver;

    const/4 v2, 0x0

    invoke-virtual {v1, p0, v0, v2}, Lcom/android/systemui/broadcast/BroadcastDispatcher;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/util/concurrent/Executor;)V

    return-void
.end method

.method private readRawSensorDataLoggingFlag()V
    .locals 3

    const-string v0, "window_manager"

    const-string v1, "log_raw_sensor_data"

    const/4 v2, 0x0

    .line 129
    invoke-static {v0, v1, v2}, Landroid/provider/DeviceConfig;->getBoolean(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/android/systemui/autorotate/AutorotateDataService;->mRawSensorLoggingEnabled:Z

    if-eqz v0, :cond_0

    .line 134
    invoke-direct {p0}, Lcom/google/android/systemui/autorotate/AutorotateDataService;->startService()V

    goto :goto_0

    .line 136
    :cond_0
    iget-boolean v0, p0, Lcom/google/android/systemui/autorotate/AutorotateDataService;->mServiceRunning:Z

    if-eqz v0, :cond_1

    .line 137
    invoke-direct {p0}, Lcom/google/android/systemui/autorotate/AutorotateDataService;->stopService()V

    :cond_1
    :goto_0
    return-void
.end method

.method private registerSensors()V
    .locals 5

    .line 153
    iget-object v0, p0, Lcom/google/android/systemui/autorotate/AutorotateDataService;->mSensorManager:Landroid/hardware/SensorManager;

    const/16 v1, 0x1b

    invoke-virtual {v0, v1}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v0

    .line 154
    iget-object v1, p0, Lcom/google/android/systemui/autorotate/AutorotateDataService;->mSensorManager:Landroid/hardware/SensorManager;

    const v2, 0x1000c

    invoke-virtual {v1, v2}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v1

    .line 155
    iget-object v2, p0, Lcom/google/android/systemui/autorotate/AutorotateDataService;->mSensorManager:Landroid/hardware/SensorManager;

    const v3, 0x10011

    invoke-virtual {v2, v3}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v2

    iput-object v2, p0, Lcom/google/android/systemui/autorotate/AutorotateDataService;->mPreindicationSensor:Landroid/hardware/Sensor;

    .line 156
    iget-object v2, p0, Lcom/google/android/systemui/autorotate/AutorotateDataService;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v3, p0, Lcom/google/android/systemui/autorotate/AutorotateDataService;->mSensorListener:Lcom/google/android/systemui/autorotate/AutorotateDataService$SensorListener;

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v0, v4}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    .line 157
    iget-object v0, p0, Lcom/google/android/systemui/autorotate/AutorotateDataService;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v2, p0, Lcom/google/android/systemui/autorotate/AutorotateDataService;->mSensorListener:Lcom/google/android/systemui/autorotate/AutorotateDataService$SensorListener;

    invoke-virtual {v0, v2, v1, v4}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    .line 159
    iget-object v0, p0, Lcom/google/android/systemui/autorotate/AutorotateDataService;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v1, p0, Lcom/google/android/systemui/autorotate/AutorotateDataService;->mSensorListener:Lcom/google/android/systemui/autorotate/AutorotateDataService$SensorListener;

    iget-object p0, p0, Lcom/google/android/systemui/autorotate/AutorotateDataService;->mPreindicationSensor:Landroid/hardware/Sensor;

    invoke-virtual {v0, v1, p0, v4}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    return-void
.end method

.method private startService()V
    .locals 1

    .line 167
    iget-boolean v0, p0, Lcom/google/android/systemui/autorotate/AutorotateDataService;->mServiceRunning:Z

    if-nez v0, :cond_0

    .line 168
    iget-object v0, p0, Lcom/google/android/systemui/autorotate/AutorotateDataService;->mSensorDataLogger:Lcom/google/android/systemui/autorotate/DataLogger;

    invoke-virtual {v0}, Lcom/google/android/systemui/autorotate/DataLogger;->registerPullAtomCallback()V

    .line 169
    invoke-direct {p0}, Lcom/google/android/systemui/autorotate/AutorotateDataService;->listenForScreenEvents()V

    const/4 v0, 0x1

    .line 170
    iput-boolean v0, p0, Lcom/google/android/systemui/autorotate/AutorotateDataService;->mServiceRunning:Z

    :cond_0
    return-void
.end method

.method private stopService()V
    .locals 2

    .line 175
    iget-boolean v0, p0, Lcom/google/android/systemui/autorotate/AutorotateDataService;->mServiceRunning:Z

    if-eqz v0, :cond_0

    .line 176
    iget-object v0, p0, Lcom/google/android/systemui/autorotate/AutorotateDataService;->mSensorDataLogger:Lcom/google/android/systemui/autorotate/DataLogger;

    invoke-virtual {v0}, Lcom/google/android/systemui/autorotate/DataLogger;->unregisterPullAtomCallback()V

    .line 177
    iget-object v0, p0, Lcom/google/android/systemui/autorotate/AutorotateDataService;->mBroadcastDispatcher:Lcom/android/systemui/broadcast/BroadcastDispatcher;

    iget-object v1, p0, Lcom/google/android/systemui/autorotate/AutorotateDataService;->mScreenEventBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Lcom/android/systemui/broadcast/BroadcastDispatcher;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 178
    invoke-direct {p0}, Lcom/google/android/systemui/autorotate/AutorotateDataService;->unregisterSensors()V

    const/4 v0, 0x0

    .line 179
    iput-boolean v0, p0, Lcom/google/android/systemui/autorotate/AutorotateDataService;->mServiceRunning:Z

    :cond_0
    return-void
.end method

.method private unregisterSensors()V
    .locals 1

    .line 163
    iget-object v0, p0, Lcom/google/android/systemui/autorotate/AutorotateDataService;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object p0, p0, Lcom/google/android/systemui/autorotate/AutorotateDataService;->mSensorListener:Lcom/google/android/systemui/autorotate/AutorotateDataService$SensorListener;

    invoke-virtual {v0, p0}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    return-void
.end method


# virtual methods
.method public init()V
    .locals 4

    .line 110
    iget-object v0, p0, Lcom/google/android/systemui/autorotate/AutorotateDataService;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/internal/util/LatencyTracker;->getInstance(Landroid/content/Context;)Lcom/android/internal/util/LatencyTracker;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/systemui/autorotate/AutorotateDataService;->mLatencyTracker:Lcom/android/internal/util/LatencyTracker;

    const-string v0, "window_manager"

    const-string v1, "log_raw_sensor_data"

    const/4 v2, 0x0

    .line 111
    invoke-static {v0, v1, v2}, Landroid/provider/DeviceConfig;->getBoolean(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/google/android/systemui/autorotate/AutorotateDataService;->mRawSensorLoggingEnabled:Z

    if-eqz v1, :cond_0

    .line 116
    invoke-direct {p0}, Lcom/google/android/systemui/autorotate/AutorotateDataService;->startService()V

    .line 117
    invoke-direct {p0}, Lcom/google/android/systemui/autorotate/AutorotateDataService;->registerSensors()V

    .line 119
    :cond_0
    iget-object v1, p0, Lcom/google/android/systemui/autorotate/AutorotateDataService;->mDeviceConfig:Lcom/android/systemui/util/DeviceConfigProxy;

    iget-object v2, p0, Lcom/google/android/systemui/autorotate/AutorotateDataService;->mMainExecutor:Lcom/android/systemui/util/concurrency/DelayableExecutor;

    new-instance v3, Lcom/google/android/systemui/autorotate/AutorotateDataService$$ExternalSyntheticLambda0;

    invoke-direct {v3, p0}, Lcom/google/android/systemui/autorotate/AutorotateDataService$$ExternalSyntheticLambda0;-><init>(Lcom/google/android/systemui/autorotate/AutorotateDataService;)V

    invoke-virtual {v1, v0, v2, v3}, Lcom/android/systemui/util/DeviceConfigProxy;->addOnPropertiesChangedListener(Ljava/lang/String;Ljava/util/concurrent/Executor;Landroid/provider/DeviceConfig$OnPropertiesChangedListener;)V

    return-void
.end method
