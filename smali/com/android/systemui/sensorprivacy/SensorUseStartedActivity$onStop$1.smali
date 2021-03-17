.class final Lcom/android/systemui/sensorprivacy/SensorUseStartedActivity$onStop$1;
.super Ljava/lang/Object;
.source "SensorUseStartedActivity.kt"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/sensorprivacy/SensorUseStartedActivity;->onStop()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/sensorprivacy/SensorUseStartedActivity;


# direct methods
.method constructor <init>(Lcom/android/systemui/sensorprivacy/SensorUseStartedActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/sensorprivacy/SensorUseStartedActivity$onStop$1;->this$0:Lcom/android/systemui/sensorprivacy/SensorUseStartedActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 162
    iget-object v0, p0, Lcom/android/systemui/sensorprivacy/SensorUseStartedActivity$onStop$1;->this$0:Lcom/android/systemui/sensorprivacy/SensorUseStartedActivity;

    invoke-static {v0}, Lcom/android/systemui/sensorprivacy/SensorUseStartedActivity;->access$getSensorPrivacyManager$p(Lcom/android/systemui/sensorprivacy/SensorUseStartedActivity;)Landroid/hardware/SensorPrivacyManager;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 163
    iget-object p0, p0, Lcom/android/systemui/sensorprivacy/SensorUseStartedActivity$onStop$1;->this$0:Lcom/android/systemui/sensorprivacy/SensorUseStartedActivity;

    invoke-static {p0}, Lcom/android/systemui/sensorprivacy/SensorUseStartedActivity;->access$getSensorUsePackageName$p(Lcom/android/systemui/sensorprivacy/SensorUseStartedActivity;)Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_0

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Landroid/hardware/SensorPrivacyManager;->suppressIndividualSensorPrivacyReminders(Ljava/lang/String;Z)V

    return-void

    :cond_0
    const-string p0, "sensorUsePackageName"

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v1

    :cond_1
    const-string p0, "sensorPrivacyManager"

    .line 162
    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v1
.end method
