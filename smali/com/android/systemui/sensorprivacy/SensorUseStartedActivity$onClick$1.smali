.class public final Lcom/android/systemui/sensorprivacy/SensorUseStartedActivity$onClick$1;
.super Landroid/app/KeyguardManager$KeyguardDismissCallback;
.source "SensorUseStartedActivity.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/sensorprivacy/SensorUseStartedActivity;->onClick(Landroid/content/DialogInterface;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/sensorprivacy/SensorUseStartedActivity;


# direct methods
.method constructor <init>(Lcom/android/systemui/sensorprivacy/SensorUseStartedActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/sensorprivacy/SensorUseStartedActivity$onClick$1;->this$0:Lcom/android/systemui/sensorprivacy/SensorUseStartedActivity;

    .line 133
    invoke-direct {p0}, Landroid/app/KeyguardManager$KeyguardDismissCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismissError()V
    .locals 1

    .line 135
    invoke-static {}, Lcom/android/systemui/sensorprivacy/SensorUseStartedActivity;->access$getLOG_TAG$cp()Ljava/lang/String;

    move-result-object p0

    const-string v0, "Cannot dismiss keyguard"

    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onDismissSucceeded()V
    .locals 0

    .line 139
    iget-object p0, p0, Lcom/android/systemui/sensorprivacy/SensorUseStartedActivity$onClick$1;->this$0:Lcom/android/systemui/sensorprivacy/SensorUseStartedActivity;

    invoke-static {p0}, Lcom/android/systemui/sensorprivacy/SensorUseStartedActivity;->access$disableSensorPrivacy(Lcom/android/systemui/sensorprivacy/SensorUseStartedActivity;)V

    return-void
.end method
