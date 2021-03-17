.class final Lcom/android/systemui/sensorprivacy/SensorUseStartedActivity$onCreate$2;
.super Ljava/lang/Object;
.source "SensorUseStartedActivity.kt"

# interfaces
.implements Landroid/hardware/SensorPrivacyManager$OnSensorPrivacyChangedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/sensorprivacy/SensorUseStartedActivity;->onCreate(Landroid/os/Bundle;)V
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

    iput-object p1, p0, Lcom/android/systemui/sensorprivacy/SensorUseStartedActivity$onCreate$2;->this$0:Lcom/android/systemui/sensorprivacy/SensorUseStartedActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onSensorPrivacyChanged(Z)V
    .locals 0

    if-nez p1, :cond_0

    .line 81
    iget-object p0, p0, Lcom/android/systemui/sensorprivacy/SensorUseStartedActivity$onCreate$2;->this$0:Lcom/android/systemui/sensorprivacy/SensorUseStartedActivity;

    invoke-virtual {p0}, Lcom/android/internal/app/AlertActivity;->dismiss()V

    :cond_0
    return-void
.end method
