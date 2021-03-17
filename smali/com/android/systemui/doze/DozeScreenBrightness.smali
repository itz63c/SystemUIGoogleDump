.class public Lcom/android/systemui/doze/DozeScreenBrightness;
.super Landroid/content/BroadcastReceiver;
.source "DozeScreenBrightness.java"

# interfaces
.implements Lcom/android/systemui/doze/DozeMachine$Part;
.implements Landroid/hardware/SensorEventListener;


# static fields
.field private static final DEBUG_AOD_BRIGHTNESS:Z


# instance fields
.field private final mContext:Landroid/content/Context;

.field private mDebugBrightnessBucket:I

.field private mDefaultDozeBrightness:I

.field private final mDozeHost:Lcom/android/systemui/doze/DozeHost;

.field private final mDozeService:Lcom/android/systemui/doze/DozeMachine$Service;

.field private final mHandler:Landroid/os/Handler;

.field private mLastSensorValue:I

.field private final mLightSensorOptional:Ljava/util/Optional;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Optional<",
            "Landroid/hardware/Sensor;",
            ">;"
        }
    .end annotation
.end field

.field private mPaused:Z

.field private mRegistered:Z

.field private mScreenOff:Z

.field private final mSensorManager:Landroid/hardware/SensorManager;

.field private final mSensorToBrightness:[I

.field private final mSensorToScrimOpacity:[I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-string v0, "debug.aod_brightness"

    const/4 v1, 0x0

    .line 50
    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/android/systemui/doze/DozeScreenBrightness;->DEBUG_AOD_BRIGHTNESS:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/systemui/doze/DozeMachine$Service;Lcom/android/systemui/util/sensors/AsyncSensorManager;Ljava/util/Optional;Lcom/android/systemui/doze/DozeHost;Landroid/os/Handler;Lcom/android/systemui/doze/AlwaysOnDisplayPolicy;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/android/systemui/doze/DozeMachine$Service;",
            "Lcom/android/systemui/util/sensors/AsyncSensorManager;",
            "Ljava/util/Optional<",
            "Landroid/hardware/Sensor;",
            ">;",
            "Lcom/android/systemui/doze/DozeHost;",
            "Landroid/os/Handler;",
            "Lcom/android/systemui/doze/AlwaysOnDisplayPolicy;",
            ")V"
        }
    .end annotation

    .line 82
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    const/4 v0, 0x0

    .line 66
    iput-boolean v0, p0, Lcom/android/systemui/doze/DozeScreenBrightness;->mPaused:Z

    .line 67
    iput-boolean v0, p0, Lcom/android/systemui/doze/DozeScreenBrightness;->mScreenOff:Z

    const/4 v0, -0x1

    .line 68
    iput v0, p0, Lcom/android/systemui/doze/DozeScreenBrightness;->mLastSensorValue:I

    .line 76
    iput v0, p0, Lcom/android/systemui/doze/DozeScreenBrightness;->mDebugBrightnessBucket:I

    .line 83
    iput-object p1, p0, Lcom/android/systemui/doze/DozeScreenBrightness;->mContext:Landroid/content/Context;

    .line 84
    iput-object p2, p0, Lcom/android/systemui/doze/DozeScreenBrightness;->mDozeService:Lcom/android/systemui/doze/DozeMachine$Service;

    .line 85
    iput-object p3, p0, Lcom/android/systemui/doze/DozeScreenBrightness;->mSensorManager:Landroid/hardware/SensorManager;

    .line 86
    iput-object p4, p0, Lcom/android/systemui/doze/DozeScreenBrightness;->mLightSensorOptional:Ljava/util/Optional;

    .line 87
    iput-object p5, p0, Lcom/android/systemui/doze/DozeScreenBrightness;->mDozeHost:Lcom/android/systemui/doze/DozeHost;

    .line 88
    iput-object p6, p0, Lcom/android/systemui/doze/DozeScreenBrightness;->mHandler:Landroid/os/Handler;

    .line 90
    iget p1, p7, Lcom/android/systemui/doze/AlwaysOnDisplayPolicy;->defaultDozeBrightness:I

    iput p1, p0, Lcom/android/systemui/doze/DozeScreenBrightness;->mDefaultDozeBrightness:I

    .line 91
    iget-object p1, p7, Lcom/android/systemui/doze/AlwaysOnDisplayPolicy;->screenBrightnessArray:[I

    iput-object p1, p0, Lcom/android/systemui/doze/DozeScreenBrightness;->mSensorToBrightness:[I

    .line 92
    iget-object p1, p7, Lcom/android/systemui/doze/AlwaysOnDisplayPolicy;->dimmingScrimArray:[I

    iput-object p1, p0, Lcom/android/systemui/doze/DozeScreenBrightness;->mSensorToScrimOpacity:[I

    return-void
.end method

.method private clampToUserSetting(I)I
    .locals 3

    .line 186
    iget-object p0, p0, Lcom/android/systemui/doze/DozeScreenBrightness;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "screen_brightness"

    const v1, 0x7fffffff

    const/4 v2, -0x2

    invoke-static {p0, v0, v1, v2}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result p0

    .line 189
    invoke-static {p1, p0}, Ljava/lang/Math;->min(II)I

    move-result p0

    return p0
.end method

.method private computeBrightness(I)I
    .locals 1

    if-ltz p1, :cond_1

    .line 170
    iget-object p0, p0, Lcom/android/systemui/doze/DozeScreenBrightness;->mSensorToBrightness:[I

    array-length v0, p0

    if-lt p1, v0, :cond_0

    goto :goto_0

    .line 173
    :cond_0
    aget p0, p0, p1

    return p0

    :cond_1
    :goto_0
    const/4 p0, -0x1

    return p0
.end method

.method private computeScrimOpacity(I)I
    .locals 1

    if-ltz p1, :cond_1

    .line 163
    iget-object p0, p0, Lcom/android/systemui/doze/DozeScreenBrightness;->mSensorToScrimOpacity:[I

    array-length v0, p0

    if-lt p1, v0, :cond_0

    goto :goto_0

    .line 166
    :cond_0
    aget p0, p0, p1

    return p0

    :cond_1
    :goto_0
    const/4 p0, -0x1

    return p0
.end method

.method private onDestroy()V
    .locals 1

    const/4 v0, 0x0

    .line 122
    invoke-direct {p0, v0}, Lcom/android/systemui/doze/DozeScreenBrightness;->setLightSensorEnabled(Z)V

    return-void
.end method

.method private resetBrightnessToDefault()V
    .locals 2

    .line 181
    iget-object v0, p0, Lcom/android/systemui/doze/DozeScreenBrightness;->mDozeService:Lcom/android/systemui/doze/DozeMachine$Service;

    iget v1, p0, Lcom/android/systemui/doze/DozeScreenBrightness;->mDefaultDozeBrightness:I

    invoke-direct {p0, v1}, Lcom/android/systemui/doze/DozeScreenBrightness;->clampToUserSetting(I)I

    move-result v1

    invoke-interface {v0, v1}, Lcom/android/systemui/doze/DozeMachine$Service;->setDozeScreenBrightness(I)V

    .line 182
    iget-object p0, p0, Lcom/android/systemui/doze/DozeScreenBrightness;->mDozeHost:Lcom/android/systemui/doze/DozeHost;

    const/4 v0, 0x0

    invoke-interface {p0, v0}, Lcom/android/systemui/doze/DozeHost;->setAodDimmingScrim(F)V

    return-void
.end method

.method private setLightSensorEnabled(Z)V
    .locals 4

    const/4 v0, -0x1

    if-eqz p1, :cond_0

    .line 193
    iget-boolean v1, p0, Lcom/android/systemui/doze/DozeScreenBrightness;->mRegistered:Z

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/systemui/doze/DozeScreenBrightness;->mLightSensorOptional:Ljava/util/Optional;

    invoke-virtual {v1}, Ljava/util/Optional;->isPresent()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 195
    iget-object p1, p0, Lcom/android/systemui/doze/DozeScreenBrightness;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v1, p0, Lcom/android/systemui/doze/DozeScreenBrightness;->mLightSensorOptional:Ljava/util/Optional;

    invoke-virtual {v1}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/Sensor;

    const/4 v2, 0x3

    iget-object v3, p0, Lcom/android/systemui/doze/DozeScreenBrightness;->mHandler:Landroid/os/Handler;

    invoke-virtual {p1, p0, v1, v2, v3}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;ILandroid/os/Handler;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/systemui/doze/DozeScreenBrightness;->mRegistered:Z

    .line 197
    iput v0, p0, Lcom/android/systemui/doze/DozeScreenBrightness;->mLastSensorValue:I

    goto :goto_0

    :cond_0
    if-nez p1, :cond_1

    .line 198
    iget-boolean p1, p0, Lcom/android/systemui/doze/DozeScreenBrightness;->mRegistered:Z

    if-eqz p1, :cond_1

    .line 199
    iget-object p1, p0, Lcom/android/systemui/doze/DozeScreenBrightness;->mSensorManager:Landroid/hardware/SensorManager;

    invoke-virtual {p1, p0}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    const/4 p1, 0x0

    .line 200
    iput-boolean p1, p0, Lcom/android/systemui/doze/DozeScreenBrightness;->mRegistered:Z

    .line 201
    iput v0, p0, Lcom/android/systemui/doze/DozeScreenBrightness;->mLastSensorValue:I

    :cond_1
    :goto_0
    return-void
.end method

.method private setPaused(Z)V
    .locals 1

    .line 207
    iget-boolean v0, p0, Lcom/android/systemui/doze/DozeScreenBrightness;->mPaused:Z

    if-eq v0, p1, :cond_0

    .line 208
    iput-boolean p1, p0, Lcom/android/systemui/doze/DozeScreenBrightness;->mPaused:Z

    const/4 p1, 0x0

    .line 209
    invoke-direct {p0, p1}, Lcom/android/systemui/doze/DozeScreenBrightness;->updateBrightnessAndReady(Z)V

    :cond_0
    return-void
.end method

.method private setScreenOff(Z)V
    .locals 1

    .line 214
    iget-boolean v0, p0, Lcom/android/systemui/doze/DozeScreenBrightness;->mScreenOff:Z

    if-eq v0, p1, :cond_0

    .line 215
    iput-boolean p1, p0, Lcom/android/systemui/doze/DozeScreenBrightness;->mScreenOff:Z

    const/4 p1, 0x1

    .line 216
    invoke-direct {p0, p1}, Lcom/android/systemui/doze/DozeScreenBrightness;->updateBrightnessAndReady(Z)V

    :cond_0
    return-void
.end method

.method private updateBrightnessAndReady(Z)V
    .locals 5

    const/4 v0, -0x1

    if-nez p1, :cond_0

    .line 139
    iget-boolean p1, p0, Lcom/android/systemui/doze/DozeScreenBrightness;->mRegistered:Z

    if-nez p1, :cond_0

    iget p1, p0, Lcom/android/systemui/doze/DozeScreenBrightness;->mDebugBrightnessBucket:I

    if-eq p1, v0, :cond_6

    .line 140
    :cond_0
    iget p1, p0, Lcom/android/systemui/doze/DozeScreenBrightness;->mDebugBrightnessBucket:I

    if-ne p1, v0, :cond_1

    .line 141
    iget p1, p0, Lcom/android/systemui/doze/DozeScreenBrightness;->mLastSensorValue:I

    .line 142
    :cond_1
    invoke-direct {p0, p1}, Lcom/android/systemui/doze/DozeScreenBrightness;->computeBrightness(I)I

    move-result v1

    const/4 v2, 0x0

    if-lez v1, :cond_2

    const/4 v3, 0x1

    goto :goto_0

    :cond_2
    move v3, v2

    :goto_0
    if-eqz v3, :cond_3

    .line 145
    iget-object v4, p0, Lcom/android/systemui/doze/DozeScreenBrightness;->mDozeService:Lcom/android/systemui/doze/DozeMachine$Service;

    invoke-direct {p0, v1}, Lcom/android/systemui/doze/DozeScreenBrightness;->clampToUserSetting(I)I

    move-result v1

    invoke-interface {v4, v1}, Lcom/android/systemui/doze/DozeMachine$Service;->setDozeScreenBrightness(I)V

    .line 149
    :cond_3
    iget-object v1, p0, Lcom/android/systemui/doze/DozeScreenBrightness;->mLightSensorOptional:Ljava/util/Optional;

    invoke-virtual {v1}, Ljava/util/Optional;->isPresent()Z

    move-result v1

    if-nez v1, :cond_4

    move v0, v2

    goto :goto_1

    :cond_4
    if-eqz v3, :cond_5

    .line 154
    invoke-direct {p0, p1}, Lcom/android/systemui/doze/DozeScreenBrightness;->computeScrimOpacity(I)I

    move-result v0

    :cond_5
    :goto_1
    if-ltz v0, :cond_6

    .line 157
    iget-object p0, p0, Lcom/android/systemui/doze/DozeScreenBrightness;->mDozeHost:Lcom/android/systemui/doze/DozeHost;

    int-to-float p1, v0

    const/high16 v0, 0x437f0000    # 255.0f

    div-float/2addr p1, v0

    invoke-interface {p0, p1}, Lcom/android/systemui/doze/DozeHost;->setAodDimmingScrim(F)V

    :cond_6
    return-void
.end method


# virtual methods
.method public dump(Ljava/io/PrintWriter;)V
    .locals 2

    .line 228
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "DozeScreenBrightnessSensorRegistered="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p0, p0, Lcom/android/systemui/doze/DozeScreenBrightness;->mRegistered:Z

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void
.end method

.method public onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .locals 0

    return-void
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    const-string p1, "brightness_bucket"

    const/4 v0, -0x1

    .line 222
    invoke-virtual {p2, p1, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    iput p1, p0, Lcom/android/systemui/doze/DozeScreenBrightness;->mDebugBrightnessBucket:I

    const/4 p1, 0x0

    .line 223
    invoke-direct {p0, p1}, Lcom/android/systemui/doze/DozeScreenBrightness;->updateBrightnessAndReady(Z)V

    return-void
.end method

.method public onScreenState(I)V
    .locals 1

    const/4 v0, 0x3

    if-eq p1, v0, :cond_1

    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 117
    invoke-direct {p0, p1}, Lcom/android/systemui/doze/DozeScreenBrightness;->setLightSensorEnabled(Z)V

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    .line 115
    invoke-direct {p0, p1}, Lcom/android/systemui/doze/DozeScreenBrightness;->setLightSensorEnabled(Z)V

    :goto_1
    return-void
.end method

.method public onSensorChanged(Landroid/hardware/SensorEvent;)V
    .locals 3

    .line 127
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "DozeScreenBrightness.onSensorChanged"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p1, Landroid/hardware/SensorEvent;->values:[F

    const/4 v2, 0x0

    aget v1, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    .line 129
    :try_start_0
    iget-boolean v0, p0, Lcom/android/systemui/doze/DozeScreenBrightness;->mRegistered:Z

    if-eqz v0, :cond_0

    .line 130
    iget-object p1, p1, Landroid/hardware/SensorEvent;->values:[F

    aget p1, p1, v2

    float-to-int p1, p1

    iput p1, p0, Lcom/android/systemui/doze/DozeScreenBrightness;->mLastSensorValue:I

    .line 131
    invoke-direct {p0, v2}, Lcom/android/systemui/doze/DozeScreenBrightness;->updateBrightnessAndReady(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 134
    :cond_0
    invoke-static {}, Landroid/os/Trace;->endSection()V

    return-void

    :catchall_0
    move-exception p0

    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 135
    throw p0
.end method

.method public transitionTo(Lcom/android/systemui/doze/DozeMachine$State;Lcom/android/systemui/doze/DozeMachine$State;)V
    .locals 2

    .line 97
    sget-object p1, Lcom/android/systemui/doze/DozeScreenBrightness$1;->$SwitchMap$com$android$systemui$doze$DozeMachine$State:[I

    invoke-virtual {p2}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    aget p1, p1, v0

    const/4 v0, 0x1

    if-eq p1, v0, :cond_1

    const/4 v1, 0x2

    if-eq p1, v1, :cond_1

    const/4 v1, 0x3

    if-eq p1, v1, :cond_0

    goto :goto_0

    .line 103
    :cond_0
    invoke-direct {p0}, Lcom/android/systemui/doze/DozeScreenBrightness;->onDestroy()V

    goto :goto_0

    .line 100
    :cond_1
    invoke-direct {p0}, Lcom/android/systemui/doze/DozeScreenBrightness;->resetBrightnessToDefault()V

    .line 106
    :goto_0
    sget-object p1, Lcom/android/systemui/doze/DozeMachine$State;->FINISH:Lcom/android/systemui/doze/DozeMachine$State;

    if-eq p2, p1, :cond_4

    .line 107
    sget-object p1, Lcom/android/systemui/doze/DozeMachine$State;->DOZE:Lcom/android/systemui/doze/DozeMachine$State;

    const/4 v1, 0x0

    if-ne p2, p1, :cond_2

    move p1, v0

    goto :goto_1

    :cond_2
    move p1, v1

    :goto_1
    invoke-direct {p0, p1}, Lcom/android/systemui/doze/DozeScreenBrightness;->setScreenOff(Z)V

    .line 108
    sget-object p1, Lcom/android/systemui/doze/DozeMachine$State;->DOZE_AOD_PAUSED:Lcom/android/systemui/doze/DozeMachine$State;

    if-ne p2, p1, :cond_3

    goto :goto_2

    :cond_3
    move v0, v1

    :goto_2
    invoke-direct {p0, v0}, Lcom/android/systemui/doze/DozeScreenBrightness;->setPaused(Z)V

    :cond_4
    return-void
.end method
