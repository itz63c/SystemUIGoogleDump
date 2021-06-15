.class Lcom/google/android/systemui/autorotate/AutorotateDataService$SensorListener;
.super Ljava/lang/Object;
.source "AutorotateDataService.java"

# interfaces
.implements Landroid/hardware/SensorEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/systemui/autorotate/AutorotateDataService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SensorListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/systemui/autorotate/AutorotateDataService;


# direct methods
.method private constructor <init>(Lcom/google/android/systemui/autorotate/AutorotateDataService;)V
    .locals 0

    .line 202
    iput-object p1, p0, Lcom/google/android/systemui/autorotate/AutorotateDataService$SensorListener;->this$0:Lcom/google/android/systemui/autorotate/AutorotateDataService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/systemui/autorotate/AutorotateDataService;Lcom/google/android/systemui/autorotate/AutorotateDataService$1;)V
    .locals 0

    .line 202
    invoke-direct {p0, p1}, Lcom/google/android/systemui/autorotate/AutorotateDataService$SensorListener;-><init>(Lcom/google/android/systemui/autorotate/AutorotateDataService;)V

    return-void
.end method


# virtual methods
.method public onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .locals 0

    return-void
.end method

.method public onSensorChanged(Landroid/hardware/SensorEvent;)V
    .locals 12

    .line 206
    iget-object v0, p1, Landroid/hardware/SensorEvent;->sensor:Landroid/hardware/Sensor;

    invoke-virtual {v0}, Landroid/hardware/Sensor;->getType()I

    move-result v0

    const/16 v1, 0x9

    const/4 v2, 0x3

    const/16 v3, 0x320

    const/4 v4, 0x0

    const/16 v5, 0x1b

    if-ne v0, v5, :cond_2

    .line 207
    iget-object v0, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v0, v0, v4

    float-to-int v0, v0

    if-ltz v0, :cond_1

    if-le v0, v2, :cond_0

    goto :goto_0

    .line 211
    :cond_0
    iget-object v2, p0, Lcom/google/android/systemui/autorotate/AutorotateDataService$SensorListener;->this$0:Lcom/google/android/systemui/autorotate/AutorotateDataService;

    invoke-static {v2, v0}, Lcom/google/android/systemui/autorotate/AutorotateDataService;->access$202(Lcom/google/android/systemui/autorotate/AutorotateDataService;I)I

    .line 212
    iget-object v0, p0, Lcom/google/android/systemui/autorotate/AutorotateDataService$SensorListener;->this$0:Lcom/google/android/systemui/autorotate/AutorotateDataService;

    iget-wide v5, p1, Landroid/hardware/SensorEvent;->timestamp:J

    invoke-static {v0, v5, v6}, Lcom/google/android/systemui/autorotate/AutorotateDataService;->access$402(Lcom/google/android/systemui/autorotate/AutorotateDataService;J)J

    .line 214
    iget-object p1, p0, Lcom/google/android/systemui/autorotate/AutorotateDataService$SensorListener;->this$0:Lcom/google/android/systemui/autorotate/AutorotateDataService;

    new-array v0, v3, [Lcom/google/android/systemui/autorotate/SensorData;

    invoke-static {p1, v0}, Lcom/google/android/systemui/autorotate/AutorotateDataService;->access$102(Lcom/google/android/systemui/autorotate/AutorotateDataService;[Lcom/google/android/systemui/autorotate/SensorData;)[Lcom/google/android/systemui/autorotate/SensorData;

    .line 215
    iget-object p1, p0, Lcom/google/android/systemui/autorotate/AutorotateDataService$SensorListener;->this$0:Lcom/google/android/systemui/autorotate/AutorotateDataService;

    invoke-static {p1, v4}, Lcom/google/android/systemui/autorotate/AutorotateDataService;->access$702(Lcom/google/android/systemui/autorotate/AutorotateDataService;I)I

    .line 216
    iget-object p1, p0, Lcom/google/android/systemui/autorotate/AutorotateDataService$SensorListener;->this$0:Lcom/google/android/systemui/autorotate/AutorotateDataService;

    invoke-static {p1}, Lcom/google/android/systemui/autorotate/AutorotateDataService;->access$900(Lcom/google/android/systemui/autorotate/AutorotateDataService;)Lcom/android/systemui/util/concurrency/DelayableExecutor;

    move-result-object p1

    iget-object v0, p0, Lcom/google/android/systemui/autorotate/AutorotateDataService$SensorListener;->this$0:Lcom/google/android/systemui/autorotate/AutorotateDataService;

    invoke-static {v0}, Lcom/google/android/systemui/autorotate/AutorotateDataService;->access$800(Lcom/google/android/systemui/autorotate/AutorotateDataService;)Ljava/lang/Runnable;

    move-result-object v0

    const-wide/16 v2, 0x12c

    sget-object v4, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {p1, v0, v2, v3, v4}, Lcom/android/systemui/util/concurrency/DelayableExecutor;->executeDelayed(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/lang/Runnable;

    .line 218
    iget-object p1, p0, Lcom/google/android/systemui/autorotate/AutorotateDataService$SensorListener;->this$0:Lcom/google/android/systemui/autorotate/AutorotateDataService;

    invoke-static {p1}, Lcom/google/android/systemui/autorotate/AutorotateDataService;->access$1000(Lcom/google/android/systemui/autorotate/AutorotateDataService;)Landroid/hardware/Sensor;

    move-result-object p1

    if-eqz p1, :cond_5

    .line 219
    iget-object p0, p0, Lcom/google/android/systemui/autorotate/AutorotateDataService$SensorListener;->this$0:Lcom/google/android/systemui/autorotate/AutorotateDataService;

    invoke-static {p0}, Lcom/google/android/systemui/autorotate/AutorotateDataService;->access$1100(Lcom/google/android/systemui/autorotate/AutorotateDataService;)Lcom/android/internal/util/LatencyTracker;

    move-result-object p0

    invoke-virtual {p0, v1}, Lcom/android/internal/util/LatencyTracker;->onActionEnd(I)V

    goto :goto_1

    :cond_1
    :goto_0
    return-void

    .line 223
    :cond_2
    iget-object v0, p1, Landroid/hardware/SensorEvent;->sensor:Landroid/hardware/Sensor;

    invoke-virtual {v0}, Landroid/hardware/Sensor;->getType()I

    move-result v0

    const v5, 0x1000c

    if-ne v0, v5, :cond_4

    .line 224
    iget-object v0, p0, Lcom/google/android/systemui/autorotate/AutorotateDataService$SensorListener;->this$0:Lcom/google/android/systemui/autorotate/AutorotateDataService;

    invoke-static {v0}, Lcom/google/android/systemui/autorotate/AutorotateDataService;->access$700(Lcom/google/android/systemui/autorotate/AutorotateDataService;)I

    move-result v0

    if-ge v0, v3, :cond_3

    .line 225
    iget-object v0, p0, Lcom/google/android/systemui/autorotate/AutorotateDataService$SensorListener;->this$0:Lcom/google/android/systemui/autorotate/AutorotateDataService;

    invoke-static {v0}, Lcom/google/android/systemui/autorotate/AutorotateDataService;->access$100(Lcom/google/android/systemui/autorotate/AutorotateDataService;)[Lcom/google/android/systemui/autorotate/SensorData;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/systemui/autorotate/AutorotateDataService$SensorListener;->this$0:Lcom/google/android/systemui/autorotate/AutorotateDataService;

    invoke-static {v1}, Lcom/google/android/systemui/autorotate/AutorotateDataService;->access$700(Lcom/google/android/systemui/autorotate/AutorotateDataService;)I

    move-result v1

    new-instance v3, Lcom/google/android/systemui/autorotate/SensorData;

    iget-object v5, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v6, v5, v4

    const/4 v4, 0x1

    aget v7, v5, v4

    const/4 v4, 0x2

    aget v8, v5, v4

    aget v2, v5, v2

    float-to-int v9, v2

    iget-wide v4, p1, Landroid/hardware/SensorEvent;->timestamp:J

    const-wide/32 v10, 0xf4240

    div-long v10, v4, v10

    move-object v5, v3

    invoke-direct/range {v5 .. v11}, Lcom/google/android/systemui/autorotate/SensorData;-><init>(FFFIJ)V

    aput-object v3, v0, v1

    .line 232
    :cond_3
    iget-object p0, p0, Lcom/google/android/systemui/autorotate/AutorotateDataService$SensorListener;->this$0:Lcom/google/android/systemui/autorotate/AutorotateDataService;

    invoke-static {p0}, Lcom/google/android/systemui/autorotate/AutorotateDataService;->access$708(Lcom/google/android/systemui/autorotate/AutorotateDataService;)I

    goto :goto_1

    .line 233
    :cond_4
    iget-object p1, p1, Landroid/hardware/SensorEvent;->sensor:Landroid/hardware/Sensor;

    invoke-virtual {p1}, Landroid/hardware/Sensor;->getType()I

    move-result p1

    const v0, 0x10011

    if-ne p1, v0, :cond_5

    .line 234
    iget-object p1, p0, Lcom/google/android/systemui/autorotate/AutorotateDataService$SensorListener;->this$0:Lcom/google/android/systemui/autorotate/AutorotateDataService;

    invoke-static {p1}, Lcom/google/android/systemui/autorotate/AutorotateDataService;->access$1000(Lcom/google/android/systemui/autorotate/AutorotateDataService;)Landroid/hardware/Sensor;

    move-result-object p1

    if-eqz p1, :cond_5

    .line 235
    iget-object p0, p0, Lcom/google/android/systemui/autorotate/AutorotateDataService$SensorListener;->this$0:Lcom/google/android/systemui/autorotate/AutorotateDataService;

    invoke-static {p0}, Lcom/google/android/systemui/autorotate/AutorotateDataService;->access$1100(Lcom/google/android/systemui/autorotate/AutorotateDataService;)Lcom/android/internal/util/LatencyTracker;

    move-result-object p0

    invoke-virtual {p0, v1}, Lcom/android/internal/util/LatencyTracker;->onActionStart(I)V

    :cond_5
    :goto_1
    return-void
.end method
