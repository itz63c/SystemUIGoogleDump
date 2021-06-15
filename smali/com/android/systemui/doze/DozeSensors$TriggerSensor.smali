.class Lcom/android/systemui/doze/DozeSensors$TriggerSensor;
.super Landroid/hardware/TriggerEventListener;
.source "DozeSensors.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/doze/DozeSensors;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "TriggerSensor"
.end annotation


# instance fields
.field final mConfigured:Z

.field protected mDisabled:Z

.field protected final mDozeLog:Lcom/android/systemui/doze/DozeLog;

.field protected mIgnoresSetting:Z

.field final mPulseReason:I

.field protected mRegistered:Z

.field private final mReportsTouchCoordinates:Z

.field protected mRequested:Z

.field private final mRequiresProx:Z

.field private final mRequiresTouchscreen:Z

.field final mSensor:Landroid/hardware/Sensor;

.field private final mSetting:Ljava/lang/String;

.field private final mSettingDefault:Z

.field final synthetic this$0:Lcom/android/systemui/doze/DozeSensors;


# direct methods
.method public static synthetic $r8$lambda$a7rwa_WkvE66du18mwcePhKGgLY(Lcom/android/systemui/doze/DozeSensors$TriggerSensor;Landroid/hardware/TriggerEvent;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/doze/DozeSensors$TriggerSensor;->lambda$onTrigger$0(Landroid/hardware/TriggerEvent;)V

    return-void
.end method

.method public constructor <init>(Lcom/android/systemui/doze/DozeSensors;Landroid/hardware/Sensor;Ljava/lang/String;ZIZZLcom/android/systemui/doze/DozeLog;)V
    .locals 10

    const/4 v4, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v5, p4

    move v6, p5

    move/from16 v7, p6

    move/from16 v8, p7

    move-object/from16 v9, p8

    .line 406
    invoke-direct/range {v0 .. v9}, Lcom/android/systemui/doze/DozeSensors$TriggerSensor;-><init>(Lcom/android/systemui/doze/DozeSensors;Landroid/hardware/Sensor;Ljava/lang/String;ZZIZZLcom/android/systemui/doze/DozeLog;)V

    return-void
.end method

.method public constructor <init>(Lcom/android/systemui/doze/DozeSensors;Landroid/hardware/Sensor;Ljava/lang/String;ZZIZZLcom/android/systemui/doze/DozeLog;)V
    .locals 12

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move/from16 v4, p4

    move/from16 v5, p5

    move/from16 v6, p6

    move/from16 v7, p7

    move/from16 v8, p8

    move-object/from16 v11, p9

    .line 413
    invoke-direct/range {v0 .. v11}, Lcom/android/systemui/doze/DozeSensors$TriggerSensor;-><init>(Lcom/android/systemui/doze/DozeSensors;Landroid/hardware/Sensor;Ljava/lang/String;ZZIZZZZLcom/android/systemui/doze/DozeLog;)V

    return-void
.end method

.method private constructor <init>(Lcom/android/systemui/doze/DozeSensors;Landroid/hardware/Sensor;Ljava/lang/String;ZZIZZZZLcom/android/systemui/doze/DozeLog;)V
    .locals 0

    .line 421
    iput-object p1, p0, Lcom/android/systemui/doze/DozeSensors$TriggerSensor;->this$0:Lcom/android/systemui/doze/DozeSensors;

    invoke-direct {p0}, Landroid/hardware/TriggerEventListener;-><init>()V

    .line 422
    iput-object p2, p0, Lcom/android/systemui/doze/DozeSensors$TriggerSensor;->mSensor:Landroid/hardware/Sensor;

    .line 423
    iput-object p3, p0, Lcom/android/systemui/doze/DozeSensors$TriggerSensor;->mSetting:Ljava/lang/String;

    .line 424
    iput-boolean p4, p0, Lcom/android/systemui/doze/DozeSensors$TriggerSensor;->mSettingDefault:Z

    .line 425
    iput-boolean p5, p0, Lcom/android/systemui/doze/DozeSensors$TriggerSensor;->mConfigured:Z

    .line 426
    iput p6, p0, Lcom/android/systemui/doze/DozeSensors$TriggerSensor;->mPulseReason:I

    .line 427
    iput-boolean p7, p0, Lcom/android/systemui/doze/DozeSensors$TriggerSensor;->mReportsTouchCoordinates:Z

    .line 428
    iput-boolean p8, p0, Lcom/android/systemui/doze/DozeSensors$TriggerSensor;->mRequiresTouchscreen:Z

    .line 429
    iput-boolean p9, p0, Lcom/android/systemui/doze/DozeSensors$TriggerSensor;->mIgnoresSetting:Z

    .line 430
    iput-boolean p10, p0, Lcom/android/systemui/doze/DozeSensors$TriggerSensor;->mRequiresProx:Z

    .line 431
    iput-object p11, p0, Lcom/android/systemui/doze/DozeSensors$TriggerSensor;->mDozeLog:Lcom/android/systemui/doze/DozeLog;

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/systemui/doze/DozeSensors;Landroid/hardware/Sensor;Ljava/lang/String;ZZIZZZZLcom/android/systemui/doze/DozeLog;Lcom/android/systemui/doze/DozeSensors$1;)V
    .locals 0

    .line 388
    invoke-direct/range {p0 .. p11}, Lcom/android/systemui/doze/DozeSensors$TriggerSensor;-><init>(Lcom/android/systemui/doze/DozeSensors;Landroid/hardware/Sensor;Ljava/lang/String;ZZIZZZZLcom/android/systemui/doze/DozeLog;)V

    return-void
.end method

.method static synthetic access$100(Lcom/android/systemui/doze/DozeSensors$TriggerSensor;)Z
    .locals 0

    .line 388
    iget-boolean p0, p0, Lcom/android/systemui/doze/DozeSensors$TriggerSensor;->mRequiresTouchscreen:Z

    return p0
.end method

.method static synthetic access$200(Lcom/android/systemui/doze/DozeSensors$TriggerSensor;)Z
    .locals 0

    .line 388
    iget-boolean p0, p0, Lcom/android/systemui/doze/DozeSensors$TriggerSensor;->mRequiresProx:Z

    return p0
.end method

.method private synthetic lambda$onTrigger$0(Landroid/hardware/TriggerEvent;)V
    .locals 5

    .line 490
    invoke-static {}, Lcom/android/systemui/doze/DozeSensors;->access$400()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onTrigger: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Lcom/android/systemui/doze/DozeSensors$TriggerSensor;->triggerEventToString(Landroid/hardware/TriggerEvent;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "DozeSensors"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 491
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/doze/DozeSensors$TriggerSensor;->mSensor:Landroid/hardware/Sensor;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/hardware/Sensor;->getType()I

    move-result v0

    const/16 v1, 0x19

    if-ne v0, v1, :cond_1

    .line 492
    invoke-static {}, Lcom/android/systemui/doze/DozeSensors;->access$1000()Lcom/android/internal/logging/UiEventLogger;

    move-result-object v0

    sget-object v1, Lcom/android/systemui/doze/DozeSensors$DozeSensorsUiEvent;->ACTION_AMBIENT_GESTURE_PICKUP:Lcom/android/systemui/doze/DozeSensors$DozeSensorsUiEvent;

    invoke-interface {v0, v1}, Lcom/android/internal/logging/UiEventLogger;->log(Lcom/android/internal/logging/UiEventLogger$UiEventEnum;)V

    :cond_1
    const/4 v0, 0x0

    .line 495
    iput-boolean v0, p0, Lcom/android/systemui/doze/DozeSensors$TriggerSensor;->mRegistered:Z

    .line 498
    iget-boolean v1, p0, Lcom/android/systemui/doze/DozeSensors$TriggerSensor;->mReportsTouchCoordinates:Z

    const/high16 v2, -0x40800000    # -1.0f

    if-eqz v1, :cond_2

    iget-object v1, p1, Landroid/hardware/TriggerEvent;->values:[F

    array-length v3, v1

    const/4 v4, 0x2

    if-lt v3, v4, :cond_2

    .line 499
    aget v2, v1, v0

    const/4 v0, 0x1

    .line 500
    aget v0, v1, v0

    goto :goto_0

    :cond_2
    move v0, v2

    .line 502
    :goto_0
    iget-object v1, p0, Lcom/android/systemui/doze/DozeSensors$TriggerSensor;->this$0:Lcom/android/systemui/doze/DozeSensors;

    invoke-static {v1}, Lcom/android/systemui/doze/DozeSensors;->access$1100(Lcom/android/systemui/doze/DozeSensors;)Lcom/android/systemui/doze/DozeSensors$Callback;

    move-result-object v1

    iget v3, p0, Lcom/android/systemui/doze/DozeSensors$TriggerSensor;->mPulseReason:I

    iget-object p1, p1, Landroid/hardware/TriggerEvent;->values:[F

    invoke-interface {v1, v3, v2, v0, p1}, Lcom/android/systemui/doze/DozeSensors$Callback;->onSensorPulse(IFF[F)V

    .line 503
    iget-boolean p1, p0, Lcom/android/systemui/doze/DozeSensors$TriggerSensor;->mRegistered:Z

    if-nez p1, :cond_3

    .line 504
    invoke-virtual {p0}, Lcom/android/systemui/doze/DozeSensors$TriggerSensor;->updateListening()V

    :cond_3
    return-void
.end method


# virtual methods
.method protected enabledBySetting()Z
    .locals 5

    .line 466
    iget-object v0, p0, Lcom/android/systemui/doze/DozeSensors$TriggerSensor;->this$0:Lcom/android/systemui/doze/DozeSensors;

    invoke-static {v0}, Lcom/android/systemui/doze/DozeSensors;->access$500(Lcom/android/systemui/doze/DozeSensors;)Landroid/hardware/display/AmbientDisplayConfiguration;

    move-result-object v0

    const/4 v1, -0x2

    invoke-virtual {v0, v1}, Landroid/hardware/display/AmbientDisplayConfiguration;->enabled(I)Z

    move-result v0

    const/4 v2, 0x0

    if-nez v0, :cond_0

    return v2

    .line 468
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/doze/DozeSensors$TriggerSensor;->mSetting:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v3, 0x1

    if-eqz v0, :cond_1

    return v3

    .line 471
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/doze/DozeSensors$TriggerSensor;->this$0:Lcom/android/systemui/doze/DozeSensors;

    invoke-static {v0}, Lcom/android/systemui/doze/DozeSensors;->access$600(Lcom/android/systemui/doze/DozeSensors;)Lcom/android/systemui/util/settings/SecureSettings;

    move-result-object v0

    iget-object v4, p0, Lcom/android/systemui/doze/DozeSensors$TriggerSensor;->mSetting:Ljava/lang/String;

    iget-boolean p0, p0, Lcom/android/systemui/doze/DozeSensors$TriggerSensor;->mSettingDefault:Z

    invoke-interface {v0, v4, p0, v1}, Lcom/android/systemui/util/settings/SettingsProxy;->getIntForUser(Ljava/lang/String;II)I

    move-result p0

    if-eqz p0, :cond_2

    move v2, v3

    :cond_2
    return v2
.end method

.method public ignoreSetting(Z)V
    .locals 1

    .line 447
    iget-boolean v0, p0, Lcom/android/systemui/doze/DozeSensors$TriggerSensor;->mIgnoresSetting:Z

    if-ne v0, p1, :cond_0

    return-void

    .line 448
    :cond_0
    iput-boolean p1, p0, Lcom/android/systemui/doze/DozeSensors$TriggerSensor;->mIgnoresSetting:Z

    .line 449
    invoke-virtual {p0}, Lcom/android/systemui/doze/DozeSensors$TriggerSensor;->updateListening()V

    return-void
.end method

.method public onTrigger(Landroid/hardware/TriggerEvent;)V
    .locals 3

    .line 488
    iget-object v0, p0, Lcom/android/systemui/doze/DozeSensors$TriggerSensor;->mDozeLog:Lcom/android/systemui/doze/DozeLog;

    iget v1, p0, Lcom/android/systemui/doze/DozeSensors$TriggerSensor;->mPulseReason:I

    invoke-virtual {v0, v1}, Lcom/android/systemui/doze/DozeLog;->traceSensor(I)V

    .line 489
    iget-object v0, p0, Lcom/android/systemui/doze/DozeSensors$TriggerSensor;->this$0:Lcom/android/systemui/doze/DozeSensors;

    invoke-static {v0}, Lcom/android/systemui/doze/DozeSensors;->access$800(Lcom/android/systemui/doze/DozeSensors;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/doze/DozeSensors$TriggerSensor;->this$0:Lcom/android/systemui/doze/DozeSensors;

    invoke-static {v1}, Lcom/android/systemui/doze/DozeSensors;->access$700(Lcom/android/systemui/doze/DozeSensors;)Lcom/android/systemui/util/wakelock/WakeLock;

    move-result-object v1

    new-instance v2, Lcom/android/systemui/doze/DozeSensors$TriggerSensor$$ExternalSyntheticLambda0;

    invoke-direct {v2, p0, p1}, Lcom/android/systemui/doze/DozeSensors$TriggerSensor$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/doze/DozeSensors$TriggerSensor;Landroid/hardware/TriggerEvent;)V

    invoke-interface {v1, v2}, Lcom/android/systemui/util/wakelock/WakeLock;->wrap(Ljava/lang/Runnable;)Ljava/lang/Runnable;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public registerSettingsObserver(Landroid/database/ContentObserver;)V
    .locals 2

    .line 510
    iget-boolean p1, p0, Lcom/android/systemui/doze/DozeSensors$TriggerSensor;->mConfigured:Z

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/android/systemui/doze/DozeSensors$TriggerSensor;->mSetting:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 511
    iget-object p1, p0, Lcom/android/systemui/doze/DozeSensors$TriggerSensor;->this$0:Lcom/android/systemui/doze/DozeSensors;

    invoke-static {p1}, Lcom/android/systemui/doze/DozeSensors;->access$600(Lcom/android/systemui/doze/DozeSensors;)Lcom/android/systemui/util/settings/SecureSettings;

    move-result-object p1

    iget-object v0, p0, Lcom/android/systemui/doze/DozeSensors$TriggerSensor;->mSetting:Ljava/lang/String;

    iget-object p0, p0, Lcom/android/systemui/doze/DozeSensors$TriggerSensor;->this$0:Lcom/android/systemui/doze/DozeSensors;

    .line 512
    invoke-static {p0}, Lcom/android/systemui/doze/DozeSensors;->access$900(Lcom/android/systemui/doze/DozeSensors;)Landroid/database/ContentObserver;

    move-result-object p0

    const/4 v1, -0x1

    .line 511
    invoke-interface {p1, v0, p0, v1}, Lcom/android/systemui/util/settings/SettingsProxy;->registerContentObserverForUser(Ljava/lang/String;Landroid/database/ContentObserver;I)V

    :cond_0
    return-void
.end method

.method public setListening(Z)V
    .locals 1

    .line 435
    iget-boolean v0, p0, Lcom/android/systemui/doze/DozeSensors$TriggerSensor;->mRequested:Z

    if-ne v0, p1, :cond_0

    return-void

    .line 436
    :cond_0
    iput-boolean p1, p0, Lcom/android/systemui/doze/DozeSensors$TriggerSensor;->mRequested:Z

    .line 437
    invoke-virtual {p0}, Lcom/android/systemui/doze/DozeSensors$TriggerSensor;->updateListening()V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 477
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "{mRegistered="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v1, p0, Lcom/android/systemui/doze/DozeSensors$TriggerSensor;->mRegistered:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", mRequested="

    .line 478
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/systemui/doze/DozeSensors$TriggerSensor;->mRequested:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", mDisabled="

    .line 479
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/systemui/doze/DozeSensors$TriggerSensor;->mDisabled:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", mConfigured="

    .line 480
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/systemui/doze/DozeSensors$TriggerSensor;->mConfigured:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", mIgnoresSetting="

    .line 481
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/systemui/doze/DozeSensors$TriggerSensor;->mIgnoresSetting:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", mSensor="

    .line 482
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/systemui/doze/DozeSensors$TriggerSensor;->mSensor:Landroid/hardware/Sensor;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string/jumbo p0, "}"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method protected triggerEventToString(Landroid/hardware/TriggerEvent;)Ljava/lang/String;
    .locals 3

    if-nez p1, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 518
    :cond_0
    new-instance p0, Ljava/lang/StringBuilder;

    const-string v0, "SensorEvent["

    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v0, p1, Landroid/hardware/TriggerEvent;->timestamp:J

    .line 519
    invoke-virtual {p0, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const/16 v0, 0x2c

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v1, p1, Landroid/hardware/TriggerEvent;->sensor:Landroid/hardware/Sensor;

    .line 520
    invoke-virtual {v1}, Landroid/hardware/Sensor;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 521
    iget-object v1, p1, Landroid/hardware/TriggerEvent;->values:[F

    if-eqz v1, :cond_1

    const/4 v1, 0x0

    .line 522
    :goto_0
    iget-object v2, p1, Landroid/hardware/TriggerEvent;->values:[F

    array-length v2, v2

    if-ge v1, v2, :cond_1

    .line 523
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v2, p1, Landroid/hardware/TriggerEvent;->values:[F

    aget v2, v2, v1

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/16 p1, 0x5d

    .line 526
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public updateListening()V
    .locals 4

    .line 453
    iget-boolean v0, p0, Lcom/android/systemui/doze/DozeSensors$TriggerSensor;->mConfigured:Z

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/systemui/doze/DozeSensors$TriggerSensor;->mSensor:Landroid/hardware/Sensor;

    if-nez v0, :cond_0

    goto :goto_0

    .line 454
    :cond_0
    iget-boolean v0, p0, Lcom/android/systemui/doze/DozeSensors$TriggerSensor;->mRequested:Z

    const-string v1, "DozeSensors"

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/android/systemui/doze/DozeSensors$TriggerSensor;->mDisabled:Z

    if-nez v0, :cond_2

    invoke-virtual {p0}, Lcom/android/systemui/doze/DozeSensors$TriggerSensor;->enabledBySetting()Z

    move-result v0

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/android/systemui/doze/DozeSensors$TriggerSensor;->mIgnoresSetting:Z

    if-eqz v0, :cond_2

    :cond_1
    iget-boolean v0, p0, Lcom/android/systemui/doze/DozeSensors$TriggerSensor;->mRegistered:Z

    if-nez v0, :cond_2

    .line 456
    iget-object v0, p0, Lcom/android/systemui/doze/DozeSensors$TriggerSensor;->this$0:Lcom/android/systemui/doze/DozeSensors;

    invoke-static {v0}, Lcom/android/systemui/doze/DozeSensors;->access$300(Lcom/android/systemui/doze/DozeSensors;)Lcom/android/systemui/util/sensors/AsyncSensorManager;

    move-result-object v0

    iget-object v2, p0, Lcom/android/systemui/doze/DozeSensors$TriggerSensor;->mSensor:Landroid/hardware/Sensor;

    invoke-virtual {v0, p0, v2}, Landroid/hardware/SensorManager;->requestTriggerSensor(Landroid/hardware/TriggerEventListener;Landroid/hardware/Sensor;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/systemui/doze/DozeSensors$TriggerSensor;->mRegistered:Z

    .line 457
    invoke-static {}, Lcom/android/systemui/doze/DozeSensors;->access$400()Z

    move-result v0

    if-eqz v0, :cond_4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "requestTriggerSensor "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p0, p0, Lcom/android/systemui/doze/DozeSensors$TriggerSensor;->mRegistered:Z

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 458
    :cond_2
    iget-boolean v0, p0, Lcom/android/systemui/doze/DozeSensors$TriggerSensor;->mRegistered:Z

    if-eqz v0, :cond_4

    .line 459
    iget-object v0, p0, Lcom/android/systemui/doze/DozeSensors$TriggerSensor;->this$0:Lcom/android/systemui/doze/DozeSensors;

    invoke-static {v0}, Lcom/android/systemui/doze/DozeSensors;->access$300(Lcom/android/systemui/doze/DozeSensors;)Lcom/android/systemui/util/sensors/AsyncSensorManager;

    move-result-object v0

    iget-object v2, p0, Lcom/android/systemui/doze/DozeSensors$TriggerSensor;->mSensor:Landroid/hardware/Sensor;

    invoke-virtual {v0, p0, v2}, Landroid/hardware/SensorManager;->cancelTriggerSensor(Landroid/hardware/TriggerEventListener;Landroid/hardware/Sensor;)Z

    move-result v0

    .line 460
    invoke-static {}, Lcom/android/systemui/doze/DozeSensors;->access$400()Z

    move-result v2

    if-eqz v2, :cond_3

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "cancelTriggerSensor "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    const/4 v0, 0x0

    .line 461
    iput-boolean v0, p0, Lcom/android/systemui/doze/DozeSensors$TriggerSensor;->mRegistered:Z

    :cond_4
    :goto_0
    return-void
.end method
