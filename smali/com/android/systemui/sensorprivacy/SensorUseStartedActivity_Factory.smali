.class public final Lcom/android/systemui/sensorprivacy/SensorUseStartedActivity_Factory;
.super Ljava/lang/Object;
.source "SensorUseStartedActivity_Factory.java"

# interfaces
.implements Ldagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/internal/Factory<",
        "Lcom/android/systemui/sensorprivacy/SensorUseStartedActivity;",
        ">;"
    }
.end annotation


# instance fields
.field private final keyguardDismissUtilProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/phone/KeyguardDismissUtil;",
            ">;"
        }
    .end annotation
.end field

.field private final keyguardStateControllerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/policy/KeyguardStateController;",
            ">;"
        }
    .end annotation
.end field

.field private final sensorPrivacyControllerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/policy/IndividualSensorPrivacyController;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/policy/IndividualSensorPrivacyController;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/policy/KeyguardStateController;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/phone/KeyguardDismissUtil;",
            ">;)V"
        }
    .end annotation

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    iput-object p1, p0, Lcom/android/systemui/sensorprivacy/SensorUseStartedActivity_Factory;->sensorPrivacyControllerProvider:Ljavax/inject/Provider;

    .line 30
    iput-object p2, p0, Lcom/android/systemui/sensorprivacy/SensorUseStartedActivity_Factory;->keyguardStateControllerProvider:Ljavax/inject/Provider;

    .line 31
    iput-object p3, p0, Lcom/android/systemui/sensorprivacy/SensorUseStartedActivity_Factory;->keyguardDismissUtilProvider:Ljavax/inject/Provider;

    return-void
.end method

.method public static create(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/android/systemui/sensorprivacy/SensorUseStartedActivity_Factory;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/policy/IndividualSensorPrivacyController;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/policy/KeyguardStateController;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/phone/KeyguardDismissUtil;",
            ">;)",
            "Lcom/android/systemui/sensorprivacy/SensorUseStartedActivity_Factory;"
        }
    .end annotation

    .line 43
    new-instance v0, Lcom/android/systemui/sensorprivacy/SensorUseStartedActivity_Factory;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/systemui/sensorprivacy/SensorUseStartedActivity_Factory;-><init>(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V

    return-object v0
.end method

.method public static newInstance(Lcom/android/systemui/statusbar/policy/IndividualSensorPrivacyController;Lcom/android/systemui/statusbar/policy/KeyguardStateController;Lcom/android/systemui/statusbar/phone/KeyguardDismissUtil;)Lcom/android/systemui/sensorprivacy/SensorUseStartedActivity;
    .locals 1

    .line 49
    new-instance v0, Lcom/android/systemui/sensorprivacy/SensorUseStartedActivity;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/systemui/sensorprivacy/SensorUseStartedActivity;-><init>(Lcom/android/systemui/statusbar/policy/IndividualSensorPrivacyController;Lcom/android/systemui/statusbar/policy/KeyguardStateController;Lcom/android/systemui/statusbar/phone/KeyguardDismissUtil;)V

    return-object v0
.end method


# virtual methods
.method public get()Lcom/android/systemui/sensorprivacy/SensorUseStartedActivity;
    .locals 2

    .line 36
    iget-object v0, p0, Lcom/android/systemui/sensorprivacy/SensorUseStartedActivity_Factory;->sensorPrivacyControllerProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/policy/IndividualSensorPrivacyController;

    iget-object v1, p0, Lcom/android/systemui/sensorprivacy/SensorUseStartedActivity_Factory;->keyguardStateControllerProvider:Ljavax/inject/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/statusbar/policy/KeyguardStateController;

    iget-object p0, p0, Lcom/android/systemui/sensorprivacy/SensorUseStartedActivity_Factory;->keyguardDismissUtilProvider:Ljavax/inject/Provider;

    invoke-interface {p0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/statusbar/phone/KeyguardDismissUtil;

    invoke-static {v0, v1, p0}, Lcom/android/systemui/sensorprivacy/SensorUseStartedActivity_Factory;->newInstance(Lcom/android/systemui/statusbar/policy/IndividualSensorPrivacyController;Lcom/android/systemui/statusbar/policy/KeyguardStateController;Lcom/android/systemui/statusbar/phone/KeyguardDismissUtil;)Lcom/android/systemui/sensorprivacy/SensorUseStartedActivity;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 0

    .line 10
    invoke-virtual {p0}, Lcom/android/systemui/sensorprivacy/SensorUseStartedActivity_Factory;->get()Lcom/android/systemui/sensorprivacy/SensorUseStartedActivity;

    move-result-object p0

    return-object p0
.end method
