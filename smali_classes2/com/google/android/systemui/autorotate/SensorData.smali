.class final Lcom/google/android/systemui/autorotate/SensorData;
.super Ljava/lang/Object;
.source "SensorData.java"


# instance fields
.field mSensorIdentifier:I

.field mTimestampMillis:J

.field mValueX:F

.field mValueY:F

.field mValueZ:F


# direct methods
.method constructor <init>(FFFIJ)V
    .locals 0

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    iput p1, p0, Lcom/google/android/systemui/autorotate/SensorData;->mValueX:F

    .line 30
    iput p2, p0, Lcom/google/android/systemui/autorotate/SensorData;->mValueY:F

    .line 31
    iput p3, p0, Lcom/google/android/systemui/autorotate/SensorData;->mValueZ:F

    .line 32
    iput p4, p0, Lcom/google/android/systemui/autorotate/SensorData;->mSensorIdentifier:I

    .line 33
    iput-wide p5, p0, Lcom/google/android/systemui/autorotate/SensorData;->mTimestampMillis:J

    return-void
.end method
