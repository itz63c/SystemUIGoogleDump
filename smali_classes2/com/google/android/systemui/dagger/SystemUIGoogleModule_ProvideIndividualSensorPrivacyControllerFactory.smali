.class public final Lcom/google/android/systemui/dagger/SystemUIGoogleModule_ProvideIndividualSensorPrivacyControllerFactory;
.super Ljava/lang/Object;
.source "SystemUIGoogleModule_ProvideIndividualSensorPrivacyControllerFactory.java"

# interfaces
.implements Ldagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/internal/Factory<",
        "Lcom/android/systemui/statusbar/policy/IndividualSensorPrivacyController;",
        ">;"
    }
.end annotation


# instance fields
.field private final sensorPrivacyManagerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Landroid/hardware/SensorPrivacyManager;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljavax/inject/Provider;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Landroid/hardware/SensorPrivacyManager;",
            ">;)V"
        }
    .end annotation

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    iput-object p1, p0, Lcom/google/android/systemui/dagger/SystemUIGoogleModule_ProvideIndividualSensorPrivacyControllerFactory;->sensorPrivacyManagerProvider:Ljavax/inject/Provider;

    return-void
.end method

.method public static create(Ljavax/inject/Provider;)Lcom/google/android/systemui/dagger/SystemUIGoogleModule_ProvideIndividualSensorPrivacyControllerFactory;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Landroid/hardware/SensorPrivacyManager;",
            ">;)",
            "Lcom/google/android/systemui/dagger/SystemUIGoogleModule_ProvideIndividualSensorPrivacyControllerFactory;"
        }
    .end annotation

    .line 33
    new-instance v0, Lcom/google/android/systemui/dagger/SystemUIGoogleModule_ProvideIndividualSensorPrivacyControllerFactory;

    invoke-direct {v0, p0}, Lcom/google/android/systemui/dagger/SystemUIGoogleModule_ProvideIndividualSensorPrivacyControllerFactory;-><init>(Ljavax/inject/Provider;)V

    return-object v0
.end method

.method public static provideIndividualSensorPrivacyController(Landroid/hardware/SensorPrivacyManager;)Lcom/android/systemui/statusbar/policy/IndividualSensorPrivacyController;
    .locals 0

    .line 38
    invoke-static {p0}, Lcom/google/android/systemui/dagger/SystemUIGoogleModule;->provideIndividualSensorPrivacyController(Landroid/hardware/SensorPrivacyManager;)Lcom/android/systemui/statusbar/policy/IndividualSensorPrivacyController;

    move-result-object p0

    invoke-static {p0}, Ldagger/internal/Preconditions;->checkNotNullFromProvides(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/statusbar/policy/IndividualSensorPrivacyController;

    return-object p0
.end method


# virtual methods
.method public get()Lcom/android/systemui/statusbar/policy/IndividualSensorPrivacyController;
    .locals 0

    .line 28
    iget-object p0, p0, Lcom/google/android/systemui/dagger/SystemUIGoogleModule_ProvideIndividualSensorPrivacyControllerFactory;->sensorPrivacyManagerProvider:Ljavax/inject/Provider;

    invoke-interface {p0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/hardware/SensorPrivacyManager;

    invoke-static {p0}, Lcom/google/android/systemui/dagger/SystemUIGoogleModule_ProvideIndividualSensorPrivacyControllerFactory;->provideIndividualSensorPrivacyController(Landroid/hardware/SensorPrivacyManager;)Lcom/android/systemui/statusbar/policy/IndividualSensorPrivacyController;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 0

    .line 10
    invoke-virtual {p0}, Lcom/google/android/systemui/dagger/SystemUIGoogleModule_ProvideIndividualSensorPrivacyControllerFactory;->get()Lcom/android/systemui/statusbar/policy/IndividualSensorPrivacyController;

    move-result-object p0

    return-object p0
.end method
