.class public Lcom/google/android/systemui/elmyra/actions/SnoozeAlarm;
.super Lcom/google/android/systemui/elmyra/actions/DeskClockAction;
.source "SnoozeAlarm.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 11
    invoke-direct {p0, p1}, Lcom/google/android/systemui/elmyra/actions/DeskClockAction;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method protected createDismissIntent()Landroid/content/Intent;
    .locals 1

    .line 26
    new-instance p0, Landroid/content/Intent;

    const-string v0, "android.intent.action.SNOOZE_ALARM"

    invoke-direct {p0, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    return-object p0
.end method

.method protected getAlertAction()Ljava/lang/String;
    .locals 0

    const-string p0, "com.google.android.deskclock.action.ALARM_ALERT"

    return-object p0
.end method

.method protected getDoneAction()Ljava/lang/String;
    .locals 0

    const-string p0, "com.google.android.deskclock.action.ALARM_DONE"

    return-object p0
.end method

.method public bridge synthetic isAvailable()Z
    .locals 0

    .line 8
    invoke-super {p0}, Lcom/google/android/systemui/elmyra/actions/DeskClockAction;->isAvailable()Z

    move-result p0

    return p0
.end method

.method public bridge synthetic onTrigger(Lcom/google/android/systemui/elmyra/sensors/GestureSensor$DetectionProperties;)V
    .locals 0

    .line 8
    invoke-super {p0, p1}, Lcom/google/android/systemui/elmyra/actions/DeskClockAction;->onTrigger(Lcom/google/android/systemui/elmyra/sensors/GestureSensor$DetectionProperties;)V

    return-void
.end method

.method public bridge synthetic toString()Ljava/lang/String;
    .locals 0

    .line 8
    invoke-super {p0}, Lcom/google/android/systemui/elmyra/actions/DeskClockAction;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
