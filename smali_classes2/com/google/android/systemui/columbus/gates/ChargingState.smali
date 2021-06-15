.class public final Lcom/google/android/systemui/columbus/gates/ChargingState;
.super Lcom/google/android/systemui/columbus/gates/TransientGate;
.source "ChargingState.kt"


# instance fields
.field private final gateDuration:J

.field private final powerReceiver:Lcom/google/android/systemui/columbus/gates/ChargingState$powerReceiver$1;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/os/Handler;J)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "handler"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 20
    invoke-direct {p0, p1, p2}, Lcom/google/android/systemui/columbus/gates/TransientGate;-><init>(Landroid/content/Context;Landroid/os/Handler;)V

    .line 19
    iput-wide p3, p0, Lcom/google/android/systemui/columbus/gates/ChargingState;->gateDuration:J

    .line 22
    new-instance p1, Lcom/google/android/systemui/columbus/gates/ChargingState$powerReceiver$1;

    invoke-direct {p1, p0}, Lcom/google/android/systemui/columbus/gates/ChargingState$powerReceiver$1;-><init>(Lcom/google/android/systemui/columbus/gates/ChargingState;)V

    iput-object p1, p0, Lcom/google/android/systemui/columbus/gates/ChargingState;->powerReceiver:Lcom/google/android/systemui/columbus/gates/ChargingState$powerReceiver$1;

    return-void
.end method

.method public static final synthetic access$getGateDuration$p(Lcom/google/android/systemui/columbus/gates/ChargingState;)J
    .locals 2

    .line 15
    iget-wide v0, p0, Lcom/google/android/systemui/columbus/gates/ChargingState;->gateDuration:J

    return-wide v0
.end method


# virtual methods
.method protected onActivate()V
    .locals 2

    .line 29
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "android.intent.action.ACTION_POWER_CONNECTED"

    .line 30
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.ACTION_POWER_DISCONNECTED"

    .line 31
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 32
    invoke-virtual {p0}, Lcom/google/android/systemui/columbus/gates/Gate;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object p0, p0, Lcom/google/android/systemui/columbus/gates/ChargingState;->powerReceiver:Lcom/google/android/systemui/columbus/gates/ChargingState$powerReceiver$1;

    invoke-virtual {v1, p0, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method protected onDeactivate()V
    .locals 1

    .line 36
    invoke-virtual {p0}, Lcom/google/android/systemui/columbus/gates/Gate;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object p0, p0, Lcom/google/android/systemui/columbus/gates/ChargingState;->powerReceiver:Lcom/google/android/systemui/columbus/gates/ChargingState$powerReceiver$1;

    invoke-virtual {v0, p0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    return-void
.end method
