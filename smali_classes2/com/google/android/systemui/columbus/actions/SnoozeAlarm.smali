.class public final Lcom/google/android/systemui/columbus/actions/SnoozeAlarm;
.super Lcom/google/android/systemui/columbus/actions/DeskClockAction;
.source "SnoozeAlarm.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/systemui/columbus/actions/SnoozeAlarm$Companion;
    }
.end annotation


# static fields
.field public static final Companion:Lcom/google/android/systemui/columbus/actions/SnoozeAlarm$Companion;


# instance fields
.field private final tag:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/google/android/systemui/columbus/actions/SnoozeAlarm$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/android/systemui/columbus/actions/SnoozeAlarm$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/google/android/systemui/columbus/actions/SnoozeAlarm;->Companion:Lcom/google/android/systemui/columbus/actions/SnoozeAlarm$Companion;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/google/android/systemui/columbus/gates/SilenceAlertsDisabled;Landroid/app/IActivityManager;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "silenceAlertsDisabled"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "activityManagerService"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 18
    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/systemui/columbus/actions/DeskClockAction;-><init>(Landroid/content/Context;Lcom/google/android/systemui/columbus/gates/SilenceAlertsDisabled;Landroid/app/IActivityManager;)V

    const-string p1, "Columbus/SnoozeAlarm"

    .line 20
    iput-object p1, p0, Lcom/google/android/systemui/columbus/actions/SnoozeAlarm;->tag:Ljava/lang/String;

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

.method public getTag$vendor__unbundled_google__packages__SystemUIGoogle__android_common__sysuig()Ljava/lang/String;
    .locals 0

    .line 20
    iget-object p0, p0, Lcom/google/android/systemui/columbus/actions/SnoozeAlarm;->tag:Ljava/lang/String;

    return-object p0
.end method
